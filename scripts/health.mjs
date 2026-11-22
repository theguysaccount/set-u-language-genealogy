// Weekly self-test of the live edition: pages answer, data files parse and agree with the manifest, each page type
// carries the right indexing signal, and the weekly data is fresh (dispatches weekly.yml when it is not).
//   node scripts/health.mjs [base_url]
import { appendFileSync } from "node:fs";
import { execFileSync } from "node:child_process";

const base = (process.argv[2] || process.env.SITE_URL || "https://theguysaccount.github.io/set-u-language-genealogy").replace(/\/$/, "");
const live = (process.env.LIVE_URL || "https://www.set-u.org").replace(/\/$/, "");
const archiveIndexable = String(process.env.ARCHIVE_INDEXABLE || "false").toLowerCase() === "true";
const UA = "set-u-language-genealogy-selftest/1.0 (+https://github.com/theguysaccount/set-u-language-genealogy)";
const lines = ["## Live edition", ""];
let failed = false, stale = false;
const ok = (good, text) => { lines.push(`- ${good ? "ok  " : "FAIL"} ${text}`); if (!good) failed = true; };
const bust = `?selftest=${Date.now()}`;

async function get(path) {
  for (let i = 0; i < 3; i++) {
    try {
      const res = await fetch(base + path + (path.includes("?") ? "" : bust), { headers: { "User-Agent": UA } });
      return { status: res.status, text: await res.text() };
    } catch (err) { if (i === 2) return { status: 0, text: String(err) }; }
    await new Promise((r) => setTimeout(r, 3000 * (i + 1)));
  }
}

const manifestRes = await get("/data/manifest.json");
let manifest = null;
try { manifest = JSON.parse(manifestRes.text); } catch { /* reported below */ }
ok(manifest && manifest.datasets?.length > 0, `manifest.json (${manifest ? manifest.datasets.length + " datasets, schema " + manifest.schemaVersion : manifestRes.status})`);
for (const name of ["entries", "edges", "sources"]) {
  const r = await get(`/data/${name}.json`);
  let rows = -1;
  try { rows = JSON.parse(r.text).data.length; } catch { /* reported below */ }
  const want = manifest?.datasets.find((d) => d.name === name)?.rows;
  ok(rows > 0 && rows === want, `data/${name}.json has ${rows} rows (manifest ${want})`);
}
const home = await get("/");
const data = await get("/data/");
const cites = await get("/data/citations/");
const word = await get("/word/salary/");
const robots = await get("/robots.txt");
const sitemap = await get("/sitemap.xml");
for (const [p, r] of [["/", home], ["/data/", data], ["/data/citations/", cites], ["/word/salary/", word], ["/robots.txt", robots], ["/sitemap.xml", sitemap]]) ok(r.status === 200, `${p} (${r.status})`);
const noindex = (html) => /<meta name="robots" content="noindex">/.test(html);
ok(!noindex(home.text) && !noindex(data.text) && !noindex(cites.text), "home, data and citation pages are indexable (they add to the live atlas)");
if (archiveIndexable) ok(!noindex(word.text), "archive dossiers are indexable (ARCHIVE_INDEXABLE=true)");
else ok(noindex(word.text) && word.text.includes(`<link rel="canonical" href="${live}/word/salary">`), "archive dossiers are noindex with the live page as canonical");
ok(!/^Disallow:\s*\/\s*$/m.test(robots.text), "robots.txt allows crawling");
ok(sitemap.text.includes(`<loc>${base}/</loc>`) && (archiveIndexable || !sitemap.text.includes("/word/")), "sitemap lists only the indexable pages");

const today = new Date().toISOString().slice(0, 10);
const age = (iso) => (iso ? (Date.parse(today) - Date.parse(iso)) / 86400000 : Infinity);
let checked = null;
try { checked = JSON.parse((await get("/data/link-health.json")).text).checked; } catch { /* never ran */ }
if (age(checked) > 30) { failed = stale = true; lines.push(`- FAIL citation check last ran ${checked || "never"}`); }
else if (age(checked) > 15) { stale = true; lines.push(`- warn citation check last ran ${checked}`); }
else lines.push(`- ok   citation check ran ${checked}`);
if (stale && process.env.GH_TOKEN) {
  try { execFileSync("gh", ["workflow", "run", "weekly.yml", "-R", process.env.GITHUB_REPOSITORY, "--ref", "main"]); lines.push("- dispatched weekly.yml"); }
  catch (err) { lines.push(`- could not dispatch weekly.yml: ${err.message.slice(0, 120)}`); }
}
const text = lines.join("\n");
console.log(text);
if (process.env.GITHUB_STEP_SUMMARY) appendFileSync(process.env.GITHUB_STEP_SUMMARY, text + "\n");
process.exitCode = failed ? 1 : 0;
