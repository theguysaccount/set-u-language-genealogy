// Build the static *SET-U edition into dist/.
//
//   node static/build.mjs [--out dist]
//
// Settings (environment, all optional):
//   SITE_URL            public base URL, no trailing slash (default: the GitHub Pages URL)
//   SITE_REPO           owner/name (default: theguysaccount/set-u-language-genealogy)
//   LIVE_URL            the live atlas (default: https://www.set-u.org); archive pages point their canonical there
//   ARCHIVE_INDEXABLE   "true" only if the live atlas is ever retired: archive pages become indexable and self-canonical
//   GOATCOUNTER_URL, SUPPORT_URL, SUPPORT_LABEL, BUILD_DATE
//
// The build runs the same SQL the live atlas runs (lib/export-datasets.ts, lib/atlas-dossier.ts) against a database
// rebuilt from drizzle/. It refuses to publish if any dataset or dossier comes back incomplete.
import { existsSync, mkdirSync, readFileSync, rmSync, statSync, writeFileSync, copyFileSync, cpSync } from "node:fs";
import path from "node:path";
import { ROOT, openAtlas } from "./db.mjs";
import { citationsPage, dataPage, dossierPage, esc, homePage, page } from "./render.mjs";

const { exportFromDatabase, SCHEMA_VERSION } = await import("../lib/export-datasets.ts");
const { loadDossier } = await import("../lib/atlas-dossier.ts");

export function config(env = process.env) {
  const repo = env.SITE_REPO || "theguysaccount/set-u-language-genealogy";
  return {
    url: (env.SITE_URL || "https://theguysaccount.github.io/set-u-language-genealogy").replace(/\/$/, ""),
    repo, repoUrl: `https://github.com/${repo}`,
    live: (env.LIVE_URL || "https://www.set-u.org").replace(/\/$/, ""),
    archiveIndexable: String(env.ARCHIVE_INDEXABLE || "false").toLowerCase() === "true",
    goatcounter: (env.GOATCOUNTER_URL || "").trim(),
    supportUrl: (env.SUPPORT_URL || "").trim(),
    supportLabel: (env.SUPPORT_LABEL || "Support *SET-U").trim(),
    built: env.BUILD_DATE || new Date().toISOString().slice(0, 10),
    schema: SCHEMA_VERSION,
  };
}

async function call(d1, query) {
  const res = await exportFromDatabase(new Request("https://set-u.org/api/export" + query), d1);
  if (res.status !== 200) throw new Error(`export ${query} answered ${res.status}: ${(await res.text()).slice(0, 200)}`);
  return res;
}

// Every row of one dataset, following the export's own cursor pagination.
export async function fullDataset(d1, name) {
  const rows = [];
  let after = 0, total = null, description = "", csv = "";
  for (;;) {
    const res = await (await call(d1, `?dataset=${name}&limit=1000&after=${after}`)).json();
    total = res.totalRows;
    description = res.description;
    rows.push(...res.data);
    const csvRes = await (await call(d1, `?dataset=${name}&format=csv&limit=1000&after=${after}`)).text();
    const lines = csvRes.replace(/\r?\n$/, "");
    csv += csv ? lines.slice(lines.indexOf("\n") + 1) + "\n" : lines + "\n";
    if (!res.page.hasMore) break;
    after = res.page.next;
  }
  if (rows.length !== total) throw new Error(`dataset ${name}: ${rows.length} rows exported, ${total} counted`);
  return { rows, total, description, csv };
}

const readJson = (p, fallback) => (existsSync(p) ? JSON.parse(readFileSync(p, "utf8")) : fallback);
const humanSize = (n) => (n > 1e6 ? (n / 1e6).toFixed(1) + " MB" : Math.round(n / 1e3) + " KB");

export async function build({ out = path.join(ROOT, "dist"), env = process.env } = {}) {
  const cfg = config(env);
  const { db, d1 } = openAtlas();
  rmSync(out, { recursive: true, force: true });
  mkdirSync(path.join(out, "data"), { recursive: true });
  const write = (rel, text) => {
    const full = path.join(out, rel);
    mkdirSync(path.dirname(full), { recursive: true });
    writeFileSync(full, text);
  };

  // 1. Datasets, exactly as the live export defines them.
  const manifestRes = await (await call(d1, "")).json();
  const datasets = [];
  for (const d of manifestRes.datasets) {
    const name = d.name || d.dataset;
    const full = await fullDataset(d1, name);
    write(`data/${name}.json`, JSON.stringify({ schemaVersion: SCHEMA_VERSION, dataset: name, description: full.description,
      totalRows: full.total, license: null, licenseNote: "Reuse terms for SET-U editorial data are not yet declared. Source works retain their own rights.",
      data: full.rows }) + "\n");
    write(`data/${name}.csv`, full.csv);
    datasets.push({ name, description: full.description, rows: full.total, json: `data/${name}.json`, csv: `data/${name}.csv` });
  }
  const sqlitePath = path.join(out, "data", "set-u-atlas.sqlite");
  db.exec(`VACUUM INTO '${sqlitePath.replace(/'/g, "''")}'`);
  // The published copy carries no review-desk rows: those tables exist in the schema but hold nothing public.
  const { DatabaseSync } = await import("node:sqlite");
  const copy = new DatabaseSync(sqlitePath);
  for (const t of ["contribution_reviews", "contribution_submissions", "editorial_reviewers"]) {
    try { copy.exec(`DELETE FROM ${t}`); } catch { /* table absent in an older schema */ }
  }
  copy.exec("VACUUM");
  copy.close();
  const manifest = { title: manifestRes.title, schemaVersion: SCHEMA_VERSION, built: cfg.built, liveAtlas: cfg.live,
    sqlite: "data/set-u-atlas.sqlite", sqliteSize: humanSize(statSync(sqlitePath).size), datasets };
  write("data/manifest.json", JSON.stringify(manifest, null, 1) + "\n");

  // 2. Dossiers.
  const entries = (await fullDataset(d1, "entries")).rows.sort((a, b) => a.headword.localeCompare(b.headword));
  const index = [];
  for (let i = 0; i < entries.length; i++) {
    const e = entries[i];
    const dossier = await loadDossier(d1, e.slug);
    if (!dossier || !dossier.forms?.length) throw new Error(`dossier ${e.slug} did not load`);
    write(`word/${e.slug}/index.html`, dossierPage(cfg, dossier, { prev: entries[i - 1], next: entries[i + 1] }));
    index.push({ s: e.slug, h: e.headword, d: e.summary, f: dossier.forms.map((f) => [f.form, f.language]) });
  }
  write("assets/search-index.json", JSON.stringify(index) + "\n");

  // 3. Pages.
  const linkHealth = readJson(path.join(ROOT, "data", "link-health.json"), null);
  const drift = readJson(path.join(ROOT, "data", "live-drift.json"), null);
  if (linkHealth) write("data/link-health.json", JSON.stringify(linkHealth) + "\n");
  if (drift) write("data/live-drift.json", JSON.stringify(drift) + "\n");
  write("index.html", homePage(cfg, { entries, manifest, linkHealth, drift }));
  write("data/index.html", dataPage(cfg, manifest));
  write("data/citations/index.html", citationsPage(cfg, linkHealth));
  write("404.html", page(cfg, { path: "404.html", depth: 0, index: false, title: "Not found | *SET-U open data",
    description: "Page not found.", body: `<h1>Not found</h1><p class="lede">That page is not in this edition. <a href="${esc(cfg.url)}/">All words</a> &middot; <a href="${esc(cfg.live)}/">the live atlas</a></p>` }));

  // 4. Assets, robots, sitemap, IndexNow key. Only pages that add something to the live atlas go in the sitemap.
  cpSync(path.join(ROOT, "site", "assets"), path.join(out, "assets"), { recursive: true });
  copyFileSync(path.join(ROOT, "site", "og.png"), path.join(out, "og.png"));
  const key = readFileSync(path.join(ROOT, "site", "indexnow-key.txt"), "utf8").trim();
  write(`${key}.txt`, key + "\n");
  const indexable = ["", "data/", "data/citations/"].concat(cfg.archiveIndexable ? entries.map((e) => `word/${e.slug}/`) : []);
  write("sitemap.xml", `<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n${
    indexable.map((p) => `<url><loc>${esc(cfg.url + "/" + p)}</loc><lastmod>${cfg.built}</lastmod></url>`).join("\n")}\n</urlset>\n`);
  write("robots.txt", `User-agent: *\nAllow: /\n\nSitemap: ${cfg.url}/sitemap.xml\n`);
  write("llms.txt", [
    "# *SET-U Open Data",
    "",
    `> Evidence-backed static etymology open-data edition of *SET-U (${entries.length} reviewed word dossiers across ${manifest.datasets.length} structured datasets, schema ${manifest.schemaVersion}).`,
    "",
    "Last reviewed: 2026-11-27",
    "",
    "## Key Pages",
    "",
    `- [Home & Word Search](${cfg.url}/): Search all ${entries.length} reviewed word etymologies by headword or historical form.`,
    `- [Open Data Downloads](${cfg.url}/data/): Download all ${manifest.datasets.length} datasets as JSON, CSV, and full SQLite (${manifest.sqliteSize}).`,
    `- [Citation Health](${cfg.url}/data/citations/): Weekly link-health audit of cited scholarly sources.`,
    `- [Live Interactive Atlas](${cfg.live}/): Interactive *SET-U genealogy explorer.`,
    "",
    "## Bulk Endpoints",
    "",
    `- [Export Manifest (JSON)](${cfg.url}/data/manifest.json)`,
    `- [Full SQLite Database](${cfg.url}/${manifest.sqlite})`,
    `- [Sitemap](${cfg.url}/sitemap.xml)`,
    "",
  ].join("\n"));
  mkdirSync(path.join(ROOT, "build"), { recursive: true });
  writeFileSync(path.join(ROOT, "build", "urls.txt"), indexable.map((p) => cfg.url + "/" + p).join("\n") + "\n");
  db.close();
  return { cfg, manifest, entries: entries.length };
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const i = process.argv.indexOf("--out");
  const res = await build(i > 0 ? { out: path.resolve(process.argv[i + 1]) } : {});
  console.log(`built ${res.entries} dossiers and ${res.manifest.datasets.length} datasets (schema ${res.manifest.schemaVersion}) for ${res.cfg.url}`);
}
