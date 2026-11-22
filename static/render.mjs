// HTML templates for the static SET-U edition. Pure functions of data, so tests can render any state.

export const esc = (v) => String(v ?? "").replace(/[&<>"']/g, (c) => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" })[c]);
export const fmt = (n) => Number(n).toLocaleString("en-US");

const MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
export function longDate(iso) {
  if (!iso) return "";
  const [y, m, d] = iso.slice(0, 10).split("-").map(Number);
  return `${d} ${MONTHS[m - 1]} ${y}`;
}

export function page(cfg, { path, title, description, body, index, canonical, depth, scripts = [], og = "og.png" }) {
  const root = "../".repeat(depth);
  const robots = index ? "" : '<meta name="robots" content="noindex">\n';
  const gc = cfg.goatcounter ? `<script data-goatcounter="${esc(cfg.goatcounter)}" async src="https://gc.zgo.at/count.js"></script>\n` : "";
  return `<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>${esc(title)}</title>
<meta name="description" content="${esc(description)}">
${robots}<link rel="canonical" href="${esc(canonical || cfg.url + "/" + path)}">
<meta property="og:type" content="website">
<meta property="og:site_name" content="*SET-U open data">
<meta property="og:title" content="${esc(title)}">
<meta property="og:description" content="${esc(description)}">
<meta property="og:url" content="${esc(cfg.url + "/" + path)}">
<meta property="og:image" content="${esc(cfg.url + "/" + og)}">
<meta name="twitter:card" content="summary_large_image">
<link rel="icon" href="${root}assets/favicon.svg" type="image/svg+xml">
<link rel="stylesheet" href="${root}assets/style.css">
${gc}</head>
<body>
<a class="skip" href="#main">Skip to content</a>
<header class="top"><a class="wordmark" href="${root}"><span>*</span>SET-U <small>open data &amp; archive</small></a>
<nav aria-label="Site"><a href="${root}">Words</a><a href="${root}data/">Data</a><a href="${root}data/citations/">Citation health</a><a href="${esc(cfg.live)}/" rel="noopener">Live atlas &rarr;</a></nav></header>
<main id="main">
${body}
</main>
<footer class="foot">
<p><b>*SET-U</b> is an evidence-backed genealogy of human language. The live, interactive atlas is at
<a href="${esc(cfg.live)}/">${esc(cfg.live.replace(/^https?:\/\//, ""))}</a>. This edition is a static copy rebuilt from the same reviewed migrations
(schema ${esc(cfg.schema)}), plus bulk open data and a weekly citation check.</p>
<p>Reuse terms for SET-U's editorial data are not yet declared; quoted sources keep their own rights. Code: MIT.
<a href="${esc(cfg.repoUrl)}">Source on GitHub</a> &middot; <a href="${esc(cfg.repoUrl)}/issues/new?template=correction.yml">Report an error</a> &middot; built ${esc(longDate(cfg.built))}</p>
${cfg.supportUrl ? `<p class="support-slot"><a href="${esc(cfg.supportUrl)}" rel="noopener">${esc(cfg.supportLabel)}</a></p>` : ""}
</footer>
${scripts.map((s) => `<script type="module" src="${root}assets/${s}"></script>`).join("\n")}
</body>
</html>
`;
}

const STATUS_LABEL = { attested: "attested", reconstructed: "reconstructed", boundary: "knowledge boundary" };

function citation(c) {
  const who = [c.author, c.year].filter(Boolean).join(", ");
  const title = c.url ? `<a href="${esc(c.url)}" rel="noopener">${esc(c.title)}</a>` : esc(c.title);
  return `<li class="cite"><span class="stance stance-${esc(c.stance || "context")}">${esc(c.stance || "context")}</span> ${title}${who ? ` <span class="muted">(${esc(who)})</span>` : ""}${c.locator ? `, <span class="loc">${esc(c.locator)}</span>` : ""}${c.evidenceNote ? `<div class="note">${esc(c.evidenceNote)}</div>` : ""}</li>`;
}

function formCard(f) {
  const status = STATUS_LABEL[f.status] || f.status;
  return `<div class="form form-${esc(f.status)}" id="form-${f.id}">
  <div class="form-head"><span class="form-text">${esc(f.form)}</span>${f.transliteration ? ` <span class="translit">${esc(f.transliteration)}</span>` : ""}</div>
  <div class="form-meta"><span class="lang">${esc(f.language)}</span>${f.dateLabel ? ` &middot; ${esc(f.dateLabel)}` : ""} &middot; <span class="badge badge-${esc(f.status)}">${esc(status)}</span></div>
  ${f.gloss ? `<div class="gloss">&ldquo;${esc(f.gloss)}&rdquo;</div>` : ""}
  ${f.notes ? `<div class="note">${esc(f.notes)}</div>` : ""}
</div>`;
}

function relationCard(r) {
  const sources = (r.sources && r.sources.length ? r.sources : [{ title: r.source, author: r.sourceAuthor, year: r.sourceYear, url: r.sourceUrl, locator: r.locator, stance: r.stance, evidenceNote: r.evidenceNote }]);
  return `<div class="relation">
  <div class="rel-type">&uarr; ${esc(r.relationType)} &middot; <span class="conf conf-${esc(r.confidence)}">${esc(r.confidence)}</span></div>
  <dl>
    ${r.soundChange ? `<dt>Sound</dt><dd>${esc(r.soundChange)}</dd>` : ""}
    ${r.semanticChange ? `<dt>Meaning</dt><dd>${esc(r.semanticChange)}</dd>` : ""}
    ${r.scholar ? `<dt>Authority</dt><dd>${esc(r.scholar)}</dd>` : ""}
    ${r.confidenceNote ? `<dt>Confidence</dt><dd>${esc(r.confidenceNote)}</dd>` : ""}
    ${r.chronologyNote ? `<dt>Chronology</dt><dd>${esc(r.chronologyNote)}</dd>` : ""}
  </dl>
  <ul class="cites">${sources.map(citation).join("")}</ul>
</div>`;
}

// The lineage reads from today's word back to the edge of knowledge: form, then the relation to its parent, and so on.
export function lineage(dossier) {
  const forms = [...dossier.forms].sort((a, b) => a.stepOrder - b.stepOrder);
  const byChild = new Map(dossier.relations.map((r) => [r.childFormId, r]));
  return forms.map((f) => formCard(f) + (byChild.has(f.id) ? relationCard(byChild.get(f.id)) : "")).join("\n");
}

export function dossierPage(cfg, dossier, neighbours) {
  const e = dossier.entry;
  const live = `${cfg.live}/word/${encodeURIComponent(e.slug)}`;
  const forms = [...dossier.forms].sort((a, b) => a.stepOrder - b.stepOrder);
  const oldest = forms.filter((f) => f.status !== "boundary").at(-1);
  const relatives = dossier.relatives.length ? `<h2>Relatives</h2><div class="tablewrap"><table><thead><tr><th>Form</th><th>Language</th><th>Relation</th><th>Source</th></tr></thead><tbody>${
    dossier.relatives.map((r) => `<tr><td class="form-text">${esc(r.form)}</td><td>${esc(r.language)}</td><td>${esc(r.relation)}</td><td>${r.sourceUrl ? `<a href="${esc(r.sourceUrl)}" rel="noopener">${esc(r.source)}</a>` : esc(r.source || "")}</td></tr>`).join("")}</tbody></table></div>` : "";
  const places = dossier.places.length ? `<h2>Journey</h2><ol class="journey">${dossier.places.map((p) => `<li><b>${esc(p.place)}</b>${p.dateLabel ? ` &middot; ${esc(p.dateLabel)}` : ""}${p.note ? `<div class="note">${esc(p.note)}</div>` : ""}</li>`).join("")}</ol>` : "";
  const disputes = dossier.disputes.length ? `<h2>Disputes</h2>${dossier.disputes.map((d) => `<div class="dispute"><h3>${esc(d.title)}</h3><p>${esc(d.position)}</p>
    <p class="muted">${esc(d.status)} &middot; confidence: ${esc(d.confidence)}${d.resolutionNote ? ` &middot; ${esc(d.resolutionNote)}` : ""}</p>
    <ul class="cites">${(d.citations && d.citations.length ? d.citations : [{ title: d.source, author: d.sourceAuthor, year: d.sourceYear, url: d.sourceUrl, locator: d.locator, stance: d.stance, evidenceNote: d.evidenceNote }]).map(citation).join("")}</ul></div>`).join("")}` : "";
  const witnesses = dossier.attestations.length ? `<h2>Witnesses</h2><ul class="witnesses">${dossier.attestations.map((a) => `<li><b>${esc(a.dateLabel || a.year || "")}</b> ${esc(a.witness || "")}${a.locator ? `, <span class="loc">${esc(a.locator)}</span>` : ""}
    <span class="badge">${a.directlyInspected ? "directly inspected" : "source-reported"}</span>${a.excerpt ? `<div class="excerpt">&ldquo;${esc(a.excerpt)}&rdquo;</div>` : ""}
    <div class="muted">${[a.witnessType, a.repository, a.shelfmark].filter(Boolean).map(esc).join(" &middot; ")}${a.facsimileUrl ? ` &middot; <a href="${esc(a.facsimileUrl)}" rel="noopener">facsimile</a>` : ""}${a.sourceUrl ? ` &middot; <a href="${esc(a.sourceUrl)}" rel="noopener">${esc(a.source || "source")}</a>` : ""}</div></li>`).join("")}</ul>` : "";
  const nav = [neighbours.prev ? `<a href="../${encodeURIComponent(neighbours.prev.slug)}/">&larr; ${esc(neighbours.prev.headword)}</a>` : "", neighbours.next ? `<a href="../${encodeURIComponent(neighbours.next.slug)}/">${esc(neighbours.next.headword)} &rarr;</a>` : ""].join(" ");
  const body = `
<p class="archive-note">Archive copy of a reviewed *SET-U dossier, rebuilt from schema ${esc(cfg.schema)}.
The live, interactive dossier is at <a href="${esc(live)}">${esc(live.replace(/^https?:\/\//, ""))}</a>.</p>
<article class="dossier" data-dossier="${esc(e.slug)}" data-forms="${forms.length}">
  <h1>${esc(e.headword)}</h1>
  <p class="pron">${[e.pronunciation, e.partOfSpeech].filter(Boolean).map(esc).join(" &middot; ")}</p>
  <p class="lede">${esc(e.summary)}</p>
  ${e.contrarianTruth ? `<aside class="truth"><b>The contrarian truth</b><p>${esc(e.contrarianTruth)}</p></aside>` : ""}
  <h2>Lineage, to the limit of knowledge</h2>
  <p class="muted">${forms.length} steps from today back to ${oldest ? esc(oldest.form) + " (" + esc(oldest.language) + ")" : "the evidence horizon"}. An asterisk marks a form reconstructed by comparison, never found written.</p>
  <div class="lineage">${lineage(dossier)}</div>
  ${relatives}${places}${disputes}${witnesses}
  <p class="muted">Data for this word: <a href="../../data/">every dataset</a> (JSON, CSV, SQLite).</p>
</article>
<nav class="neighbours" aria-label="Neighbouring words">${nav}</nav>`;
  return page(cfg, {
    path: `word/${encodeURIComponent(e.slug)}/`, depth: 2, index: cfg.archiveIndexable,
    canonical: cfg.archiveIndexable ? null : live,
    title: `${e.headword}: etymology and word history (archive copy) | *SET-U`,
    description: `${e.summary} ${forms.length} cited steps back to ${oldest ? oldest.form : "the evidence horizon"}, with sound and meaning changes, scholars, disputes and sources.`,
    body,
  });
}

export function homePage(cfg, { entries, manifest, linkHealth, drift }) {
  const counts = Object.fromEntries(manifest.datasets.map((d) => [d.name, d.rows]));
  const letters = new Map();
  for (const e of entries) {
    const k = (e.headword.normalize("NFD").replace(/[̀-ͯ]/g, "")[0] || "#").toUpperCase();
    const key = /[A-Z]/.test(k) ? k : "Other scripts";
    if (!letters.has(key)) letters.set(key, []);
    letters.get(key).push(e);
  }
  const groups = [...letters.entries()].sort(([a], [b]) => (a === "Other scripts") - (b === "Other scripts") || a.localeCompare(b));
  const list = groups.map(([k, es]) => `<section class="letter"><h3>${esc(k)}</h3><ul>${es.sort((a, b) => a.headword.localeCompare(b.headword)).map((e) =>
    `<li data-entry><a href="word/${encodeURIComponent(e.slug)}/">${esc(e.headword)}</a> <span class="muted">${esc(e.summary)}</span></li>`).join("")}</ul></section>`).join("");
  const lh = linkHealth && linkHealth.checked ? `<p>Weekly citation check, ${esc(longDate(linkHealth.checked))}: <b>${fmt(linkHealth.summary.ok)}</b> of ${fmt(linkHealth.summary.total)} cited source links answer, ${fmt(linkHealth.summary.blocked)} refuse scripts, ${fmt(linkHealth.summary.broken)} look broken. <a href="data/citations/">Details</a>.</p>` : "";
  const driftLine = drift && drift.checked ? `<p class="muted">Compared with the live atlas on ${esc(longDate(drift.checked))}: ${drift.same ? "same reviewed data." : "the live atlas has newer reviewed data; this edition will catch up when its migrations are copied."}</p>` : "";
  const body = `
<section class="intro">
  <h1><span class="ast">*</span>SET-U open data</h1>
  <p class="lede">Every reviewed word history in the *SET-U etymology graph, as plain pages and bulk downloads:
  <b>${fmt(counts.entries)}</b> word dossiers, <b>${fmt(counts.nodes)}</b> historical forms, <b>${fmt(counts.edges)}</b> cited
  relationships, <b>${fmt(counts.sources)}</b> sources and <b>${fmt(counts.disputes)}</b> recorded disputes. Each relationship carries its sound
  change, meaning change, scholar, confidence and citations, back to the point where secure knowledge ends.</p>
  <p>The live, interactive atlas is <a href="${esc(cfg.live)}/">${esc(cfg.live.replace(/^https?:\/\//, ""))}</a>. This edition is static, so it keeps working
  anywhere, and it adds <a href="data/">complete downloads</a> of all ${manifest.datasets.length} datasets plus a weekly check of every cited link.</p>
  ${lh}${driftLine}
</section>
<section aria-labelledby="find">
  <h2 id="find">Find a word, or any ancestor of one</h2>
  <form class="search" role="search" onsubmit="return false"><label class="sr" for="q">Search words and historical forms</label>
  <input id="q" type="search" placeholder="love, salary, *séh₂l-, chai…" autocomplete="off" spellcheck="false"></form>
  <ol id="results" class="results" aria-live="polite"></ol>
</section>
<section aria-labelledby="all">
  <h2 id="all">All ${fmt(entries.length)} reviewed dossiers</h2>
  <div class="letters">${list}</div>
</section>`;
  return page(cfg, {
    path: "", depth: 0, index: true, scripts: ["search.js"],
    title: "*SET-U open data: cited word histories and the etymology graph, free to download",
    description: `${fmt(counts.entries)} reviewed etymology dossiers with ${fmt(counts.edges)} cited relationships back to the limits of knowledge, plus every *SET-U dataset as JSON, CSV and SQLite.`,
    body,
  });
}

export function dataPage(cfg, manifest) {
  const rows = manifest.datasets.map((d) => `<tr><td><b>${esc(d.name)}</b><div class="muted">${esc(d.description)}</div></td><td class="num">${fmt(d.rows)}</td>
    <td><a href="${esc(d.name)}.json">JSON</a> &middot; <a href="${esc(d.name)}.csv" download>CSV</a></td></tr>`).join("");
  const body = `
<h1>Open data</h1>
<p class="lede">All ${manifest.datasets.length} *SET-U datasets in full, unpaginated, as published by the live atlas's export contract (schema
${esc(manifest.schemaVersion)}). Rebuilt from the reviewed migrations whenever they change.</p>
<p><a class="button" href="set-u-atlas.sqlite" download>Download the whole atlas as SQLite</a> <span class="muted">${esc(manifest.sqliteSize)}</span>
&middot; <a href="manifest.json">manifest.json</a></p>
<div class="tablewrap"><table><thead><tr><th>Dataset</th><th>Rows</th><th>Files</th></tr></thead><tbody>${rows}</tbody></table></div>
<h2>Reuse</h2>
<p>SET-U has not yet declared reuse terms for its original editorial data, so ask before republishing it wholesale. Every cited source
work keeps its own rights; quotations are short and attributed. Code that builds this edition is MIT-licensed.</p>
<h2>How the files relate</h2>
<p>Nodes are historical forms; edges connect a child form to its parent with the sound and meaning change and a confidence grade;
<code>edge-citations</code> link each edge to its sources with a locator and stance. Dossiers (<code>entries</code>) follow an editorial path
through the graph (<code>dossiers</code>). Full field notes: <a href="${esc(cfg.repoUrl)}/blob/main/docs/public-data.md">docs/public-data.md</a>.</p>`;
  return page(cfg, {
    path: "data/", depth: 1, index: true,
    title: "*SET-U datasets: download the etymology graph (JSON, CSV, SQLite)",
    description: `Download all ${manifest.datasets.length} *SET-U etymology datasets in full: word dossiers, historical forms, cited edges, sources, disputes and witnesses, as JSON, CSV and SQLite.`,
    body,
  });
}

export function citationsPage(cfg, linkHealth) {
  if (!linkHealth || !linkHealth.checked) {
    return page(cfg, { path: "data/citations/", depth: 2, index: true, title: "*SET-U citation health", description: "Weekly check of every source cited by the *SET-U etymology graph.",
      body: `<h1>Citation health</h1><p class="lede">The first weekly check of every cited source link has not run yet.</p>` });
  }
  const s = linkHealth.summary;
  const bad = linkHealth.results.filter((r) => r.status === "broken" || r.status === "unreachable");
  const rows = bad.map((r) => `<tr><td><a href="${esc(r.url)}" rel="noopener">${esc(r.url)}</a><div class="muted">${r.keys.map(esc).join(", ")}</div></td><td>${esc(r.status)}</td><td>${esc(r.http || r.error || "")}</td><td>${esc(r.since ? longDate(r.since) : "")}</td></tr>`).join("");
  const body = `
<h1>Citation health</h1>
<p class="lede">Every week a job opens each source URL cited by the graph (${fmt(s.total)} links), politely, one request at a time per site.
Last check: ${esc(longDate(linkHealth.checked))}.</p>
<div class="stats"><div><b>${fmt(s.ok)}</b> answer</div><div><b>${fmt(s.blocked)}</b> refuse scripts (fine for a person)</div><div><b>${fmt(s.unreachable)}</b> did not answer</div><div><b>${fmt(s.broken)}</b> broken</div></div>
${bad.length ? `<h2>Links to look at</h2><div class="tablewrap"><table><thead><tr><th>Link and the citations that use it</th><th>Status</th><th>Answer</th><th>Since</th></tr></thead><tbody>${rows}</tbody></table></div>` : "<p>No broken links in the latest check.</p>"}
<p class="muted">"Refuse scripts" means the site answered 401, 403, 405 or 429 to an automated request; a person can still open it.</p>`;
  return page(cfg, {
    path: "data/citations/", depth: 2, index: true,
    title: "*SET-U citation health: weekly check of every cited source",
    description: `Weekly status of the ${fmt(s.total)} source links cited by the *SET-U etymology graph.`,
    body,
  });
}
