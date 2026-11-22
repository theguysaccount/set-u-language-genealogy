// Weekly check of every source URL cited by the graph. One request at a time per site, sites in parallel.
//   node scripts/linkcheck.mjs [--today YYYY-MM-DD]
// Writes data/link-health.json and adds to refresh-report.json. A link only counts as broken when it fails on two
// separate weekly runs; a site that refuses scripts (401/403/405/429) is "blocked", not broken.
import { existsSync, readFileSync, writeFileSync } from "node:fs";
import path from "node:path";
import { ROOT, openAtlas } from "../static/db.mjs";
import { addAlert, saveReport } from "./report.mjs";

export const UA = "set-u-language-genealogy-linkcheck/1.0 (+https://github.com/theguysaccount/set-u-language-genealogy)";
const BOT_WALLS = new Set([401, 403, 405, 406, 429, 451, 999]);
const DNS = /ENOTFOUND|EAI_AGAIN|getaddrinfo/i;
const PER_HOST_PAUSE_MS = 1500;
const HOSTS_AT_ONCE = 8;
const UNREACHABLE_ALERT_DAYS = 28;

export function classify(status, error = "") {
  if (status >= 200 && status < 400) return "ok";
  if (BOT_WALLS.has(status)) return "blocked";
  if (status === 0 && !DNS.test(error)) return "unreachable";
  return "broken";
}

// Carry "since" forward while a link keeps failing; a recovered link forgets it.
export function since(prev, status, today) {
  if (status !== "broken" && status !== "unreachable") return null;
  return prev && (prev.status === "broken" || prev.status === "unreachable") && prev.since ? prev.since : today;
}

export function needsAttention(r, today) {
  if (!r.since) return false;
  const days = (Date.parse(today) - Date.parse(r.since)) / 86400000;
  return (r.status === "broken" && days >= 1) || (r.status === "unreachable" && days >= UNREACHABLE_ALERT_DAYS);
}

async function probe(url) {
  for (const method of ["HEAD", "GET"]) {
    try {
      const res = await fetch(url, { method, redirect: "follow", signal: AbortSignal.timeout(25000), headers: { "User-Agent": UA, Accept: "text/html,*/*;q=0.8" } });
      if (method === "GET") await res.body?.cancel();
      if ((res.status >= 200 && res.status < 400) || method === "GET") return { http: res.status, error: "" };
    } catch (err) {
      if (method === "GET") return { http: 0, error: String(err.cause?.code || err.cause?.message || err.message).slice(0, 120) };
    }
  }
  return { http: 0, error: "no answer" };
}

export async function main({ today = new Date().toISOString().slice(0, 10), out = path.join(ROOT, "data", "link-health.json") } = {}) {
  const { db } = openAtlas();
  const rows = db.prepare("SELECT url, citation_key AS key FROM sources WHERE url IS NOT NULL AND TRIM(url) <> '' ORDER BY url").all();
  db.close();
  const byUrl = new Map();
  for (const r of rows) byUrl.set(r.url, [...(byUrl.get(r.url) || []), r.key]);
  const prev = existsSync(out) ? JSON.parse(readFileSync(out, "utf8")) : { results: [] };
  const prevBy = new Map(prev.results.map((r) => [r.url, r]));
  const hosts = new Map();
  for (const url of byUrl.keys()) {
    let host = "invalid";
    try { host = new URL(url).hostname.replace(/^www\./, ""); } catch { /* counted as broken below */ }
    hosts.set(host, [...(hosts.get(host) || []), url]);
  }
  const results = [];
  const queue = [...hosts.entries()].sort((a, b) => b[1].length - a[1].length);
  async function worker() {
    for (let item = queue.shift(); item; item = queue.shift()) {
      const [host, urls] = item;
      for (const url of urls) {
        const res = host === "invalid" ? { http: 0, error: "ENOTFOUND invalid URL" } : await probe(url);
        const status = classify(res.http, res.error);
        results.push({ url, keys: byUrl.get(url), status, http: res.http, error: res.error, since: since(prevBy.get(url), status, today) });
        await new Promise((r) => setTimeout(r, PER_HOST_PAUSE_MS));
      }
    }
  }
  await Promise.all(Array.from({ length: HOSTS_AT_ONCE }, worker));
  results.sort((a, b) => a.url.localeCompare(b.url));
  const count = (s) => results.filter((r) => r.status === s).length;
  const summary = { total: results.length, ok: count("ok"), blocked: count("blocked"), unreachable: count("unreachable"), broken: count("broken") };
  if (summary.ok === 0) {   // the runner itself is offline: keep the last good report
    console.log("linkcheck: no link answered at all; keeping the previous report");
    saveReport({ step: "linkcheck", ok: false });
    return 1;
  }
  writeFileSync(out, JSON.stringify({ checked: today, summary, results }, null, 1) + "\n");
  const attention = results.filter((r) => needsAttention(r, today));
  if (attention.length) {
    addAlert({ key: "citation-links", title: `${attention.length} cited source link(s) need a look`,
      body: "These links failed on separate weekly checks. Update the source URL in a new migration (never edit an applied one), or confirm the site moved:\n\n"
        + attention.map((r) => `- ${r.url} (${r.status}, ${r.http || r.error}, since ${r.since}) used by ${r.keys.join(", ")}`).join("\n") });
  }
  saveReport({ step: "linkcheck", ok: true, line: `citation links: ${summary.ok} ok, ${summary.blocked} blocked to scripts, ${summary.unreachable} not answering, ${summary.broken} broken (of ${summary.total})` });
  console.log(JSON.stringify(summary));
  return 0;
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const i = process.argv.indexOf("--today");
  process.exitCode = await main(i > 0 ? { today: process.argv[i + 1] } : {});
}
