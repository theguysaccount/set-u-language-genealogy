// Open an ops-alert issue for each alert in refresh-report.json, and close alerts whose step ran clean.
//   node scripts/alerts.mjs   (needs GITHUB_TOKEN with issues: write, and GITHUB_REPOSITORY)
import { existsSync, readFileSync } from "node:fs";
import { REPORT } from "./report.mjs";

const STEP_OF = { "citation-links": "linkcheck", "live-ahead": "drift", "live-down": "drift" };
const token = process.env.GITHUB_TOKEN, repo = process.env.GITHUB_REPOSITORY;

async function gh(method, path, body) {
  const res = await fetch(`https://api.github.com${path}`, { method, body: body ? JSON.stringify(body) : undefined,
    headers: { Authorization: `Bearer ${token}`, Accept: "application/vnd.github+json", "User-Agent": "set-u-alerts", "Content-Type": "application/json" } });
  if (!res.ok && !(method === "POST" && path.endsWith("/labels"))) throw new Error(`${method} ${path}: ${res.status}`);
  return res.status === 204 ? {} : res.json();
}

if (!token || !repo || !existsSync(REPORT)) {
  console.log("alerts: nothing to do");
} else {
  try {
    const report = JSON.parse(readFileSync(REPORT, "utf8"));
    const ran = new Set(Object.entries(report.steps).filter(([, ok]) => ok).map(([s]) => s));
    const wanted = new Map(report.alerts.map((a) => [a.key, a]));
    await gh("POST", `/repos/${repo}/labels`, { name: "ops-alert", color: "d93f0b", description: "Raised by a scheduled job; needs a person" });
    const open = await gh("GET", `/repos/${repo}/issues?labels=ops-alert&state=open&per_page=100`);
    const openBy = new Map();
    for (const issue of open) {
      const m = (issue.body || "").match(/<!-- alert:(.+?) -->/);
      if (m) openBy.set(m[1], issue);
    }
    for (const [key, a] of wanted) {
      if (openBy.has(key)) {
        await gh("PATCH", `/repos/${repo}/issues/${openBy.get(key).number}`, { title: a.title, body: `${a.body}\n\n<!-- alert:${key} -->\n_Updated by the weekly job. It closes itself when the problem clears._` });
      } else {
        const issue = await gh("POST", `/repos/${repo}/issues`, { title: a.title, labels: ["ops-alert"], body: `${a.body}\n\n<!-- alert:${key} -->\n_Opened by the weekly job. It closes itself when the problem clears._` });
        console.log(`opened #${issue.number}: ${a.title}`);
      }
    }
    for (const [key, issue] of openBy) {
      if (!wanted.has(key) && ran.has(STEP_OF[key])) {
        await gh("POST", `/repos/${repo}/issues/${issue.number}/comments`, { body: "The latest weekly run no longer sees this problem. Closing." });
        await gh("PATCH", `/repos/${repo}/issues/${issue.number}`, { state: "closed", state_reason: "completed" });
        console.log(`closed #${issue.number}`);
      }
    }
  } catch (err) {
    console.log(`::warning::alerts: ${err.message}`);
  }
}
