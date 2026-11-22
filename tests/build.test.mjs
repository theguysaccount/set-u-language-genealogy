// The static edition: every dossier, every dataset, indexing per page type, and nothing private.
import assert from "node:assert/strict";
import { existsSync, mkdtempSync, readFileSync, readdirSync, rmSync, statSync } from "node:fs";
import { DatabaseSync } from "node:sqlite";
import { createHash } from "node:crypto";
import os from "node:os";
import path from "node:path";
import { after, before, test } from "node:test";
import { build } from "../static/build.mjs";

const live = "https://www.set-u.org";
let out, res, flipped;
const read = (dir, rel) => readFileSync(path.join(dir, rel), "utf8");
const noindex = (html) => html.includes('<meta name="robots" content="noindex">');

before(async () => {
  out = mkdtempSync(path.join(os.tmpdir(), "setu-build-"));
  res = await build({ out: path.join(out, "a"), env: { SITE_URL: "https://example.org/setu", BUILD_DATE: "2026-11-22" } });
  flipped = await build({ out: path.join(out, "b"), env: { SITE_URL: "https://example.org/setu", ARCHIVE_INDEXABLE: "true", BUILD_DATE: "2026-11-22" } });
});
after(() => rmSync(out, { recursive: true, force: true }));

test("every reviewed entry has an archive page that defers to the live dossier", () => {
  const dir = path.join(out, "a");
  const entries = JSON.parse(read(dir, "data/entries.json")).data;
  assert.equal(entries.length, res.entries);
  for (const e of entries) {
    const html = read(dir, `word/${e.slug}/index.html`);
    assert.ok(noindex(html), e.slug);
    assert.ok(html.includes(`<link rel="canonical" href="${live}/word/${encodeURIComponent(e.slug)}">`), e.slug);
    assert.ok(html.includes(`href="${live}/word/${encodeURIComponent(e.slug)}"`), e.slug);
  }
});

test("pages that add something new are indexable and are the only ones in the sitemap", () => {
  const dir = path.join(out, "a");
  for (const rel of ["index.html", "data/index.html", "data/citations/index.html"]) assert.ok(!noindex(read(dir, rel)), rel);
  const sitemap = read(dir, "sitemap.xml");
  const locs = [...sitemap.matchAll(/<loc>(.*?)<\/loc>/g)].map((m) => m[1]);
  assert.deepEqual(locs, ["https://example.org/setu/", "https://example.org/setu/data/", "https://example.org/setu/data/citations/"]);
  assert.match(read(dir, "robots.txt"), /Sitemap: https:\/\/example.org\/setu\/sitemap.xml/);
});

test("ARCHIVE_INDEXABLE=true makes the archive self-canonical and indexable", () => {
  const dir = path.join(out, "b");
  const html = read(dir, "word/salary/index.html");
  assert.ok(!noindex(html));
  assert.ok(html.includes('<link rel="canonical" href="https://example.org/setu/word/salary/">'));
  assert.ok(read(dir, "sitemap.xml").includes("/word/salary/"));
});

test("every dataset is complete and matches the manifest", () => {
  const dir = path.join(out, "a");
  const manifest = JSON.parse(read(dir, "data/manifest.json"));
  assert.ok(manifest.datasets.length >= 20);
  for (const d of manifest.datasets) {
    const json = JSON.parse(read(dir, d.json));
    assert.equal(json.data.length, d.rows, d.name);
    assert.equal(json.totalRows, d.rows, d.name);
    const csv = read(dir, d.csv);
    assert.ok(csv.startsWith("cursor,") || csv.split("\n")[0].includes(","), d.name);
  }
});

test("the SQLite download opens and carries no review-desk rows", () => {
  const db = new DatabaseSync(path.join(out, "a", "data", "set-u-atlas.sqlite"), { readOnly: true });
  assert.equal(db.prepare("SELECT COUNT(*) AS n FROM editorial_reviewers").get().n, 0);
  assert.ok(db.prepare("SELECT COUNT(*) AS n FROM entries WHERE editorial_status='reviewed'").get().n === res.entries);
  db.close();
});

// The live review desk's owner account ID must never be published. The test holds only its SHA-256, and hashes every
// UUID-shaped string it finds (public source URLs contain harmless UUIDs).
const UUID = /[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/gi;
const OWNER_SHA256 = "ad7159e0570ecc4d24ef8bfa23f1af29c7d6a42d1459114a1a1778a2a5e50277";
const sha256 = (s) => createHash("sha256").update(s).digest("hex");

test("no account identifiers anywhere in the build or the repo's migrations", () => {
  assert.match(readFileSync(new URL("../drizzle/0034_editorial-review-desk.sql", import.meta.url), "utf8"), /'redacted-owner-account'/);
  const scan = (dir) => {
    for (const name of readdirSync(dir)) {
      const full = path.join(dir, name);
      if (statSync(full).isDirectory()) scan(full);
      else if (/\.(html|json|csv|txt|xml|sql)$/.test(name)) {
        for (const id of readFileSync(full, "utf8").match(UUID) || []) assert.notEqual(sha256(id.toLowerCase()), OWNER_SHA256, full);
      }
    }
  };
  scan(path.join(out, "a"));
  scan(new URL("../drizzle/", import.meta.url).pathname);
});

test("the home page lists every dossier and the search index covers every form", () => {
  const dir = path.join(out, "a");
  const home = read(dir, "index.html");
  const index = JSON.parse(read(dir, "assets/search-index.json"));
  assert.equal((home.match(/data-entry>/g) || []).length, res.entries);
  assert.equal(index.length, res.entries);
  const forms = JSON.parse(read(dir, "data/dossiers.json")).data.length;
  assert.equal(index.reduce((n, r) => n + r.f.length, 0), forms);
});

const parseJsonLd = (html) =>
  [...html.matchAll(/<script type="application\/ld\+json">([\s\S]*?)<\/script>/g)].map((m) => JSON.parse(m[1]));

const metaTag = (html, name) => {
  const m = html.match(new RegExp(`<meta name="${name}" content="([^"]*)">`));
  return m ? m[1] : null;
};

const pageTitle = (html) => {
  const m = html.match(/<title>([^<]*)<\/title>/);
  return m ? m[1] : null;
};

test("indexable pages emit valid JSON-LD, search-intent titles, concise descriptions, and social cards", () => {
  const dir = path.join(out, "a");
  const home = read(dir, "index.html");
  const data = read(dir, "data/index.html");
  const cites = read(dir, "data/citations/index.html");

  for (const [label, html] of [["home", home], ["data", data], ["citations", cites]]) {
    const title = pageTitle(html);
    const desc = metaTag(html, "description");
    assert.ok(title && title.length <= 65, `${label} title too long: ${title}`);
    assert.ok(desc && desc.length >= 60 && desc.length <= 165, `${label} desc length: ${desc?.length}`);
    assert.ok(html.includes('<meta name="twitter:title"'), `${label} twitter:title`);
    assert.ok(html.includes('<meta name="twitter:description"'), `${label} twitter:description`);
    assert.ok(html.includes('<meta name="twitter:image"'), `${label} twitter:image`);
    assert.equal(parseJsonLd(html).length, 1, `${label} should emit JSON-LD`);
  }

  const homeGraph = parseJsonLd(home)[0]["@graph"];
  const org = homeGraph.find((n) => n["@type"] === "Organization");
  const website = homeGraph.find((n) => n["@type"] === "WebSite");
  const dataset = homeGraph.find((n) => n["@type"] === "Dataset");
  assert.equal(org.url, `${live}/`);
  assert.equal(website.potentialAction["@type"], "SearchAction");
  assert.equal(website.potentialAction.target.urlTemplate, "https://example.org/setu/?q={search_term_string}");
  assert.equal(dataset.isAccessibleForFree, true);
  assert.equal("license" in dataset, false, "must not fabricate an undeclared license");
  assert.ok(dataset.distribution.some((d) => d.encodingFormat === "application/x-sqlite3"));

  const dataGraph = parseJsonLd(data)[0]["@graph"];
  const catalog = dataGraph.find((n) => n["@type"] === "DataCatalog");
  const manifest = JSON.parse(read(dir, "data/manifest.json"));
  assert.ok(dataGraph.some((n) => n["@type"] === "BreadcrumbList"));
  assert.equal(catalog.dataset.length, manifest.datasets.length);

  const citesGraph = parseJsonLd(cites)[0]["@graph"];
  assert.ok(citesGraph.some((n) => n["@type"] === "BreadcrumbList"));
});

test("dossier JSON-LD DefinedTerm follows live canonical by default and self-canonical when ARCHIVE_INDEXABLE=true", () => {
  const archiveHtml = read(path.join(out, "a"), "word/salary/index.html");
  const archiveGraph = parseJsonLd(archiveHtml)[0]["@graph"];
  const archiveTerm = archiveGraph.find((n) => n["@type"] === "DefinedTerm");
  assert.equal(archiveTerm.name, "salary");
  assert.equal(archiveTerm.url, `${live}/word/salary`);
  assert.ok(pageTitle(archiveHtml).includes("Etymology"));

  const selfHtml = read(path.join(out, "b"), "word/salary/index.html");
  const selfGraph = parseJsonLd(selfHtml)[0]["@graph"];
  const selfTerm = selfGraph.find((n) => n["@type"] === "DefinedTerm");
  assert.equal(selfTerm.url, "https://example.org/setu/word/salary/");
  assert.ok(!pageTitle(selfHtml).includes("(Archive)"));
});
