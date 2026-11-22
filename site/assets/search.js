// Client-side search over every reviewed headword and every historical form in its lineage.
const browser = typeof document !== "undefined";
const input = browser ? document.getElementById("q") : null;
const out = browser ? document.getElementById("results") : null;
const fold = (s) => String(s).normalize("NFD").replace(/[̀-ͯ]/g, "").replace(/[*₀-₉ʰʷ·]/g, "").toLowerCase().trim();
const esc = (s) => String(s).replace(/[&<>"']/g, (c) => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" })[c]);
let index = null;

async function load() {
  if (!index) {
    const rows = await (await fetch(new URL("search-index.json", import.meta.url))).json();
    index = rows.map((r) => ({ ...r, hf: fold(r.h), ff: r.f.map(([form, lang]) => [fold(form), form, lang]) }));
  }
  return index;
}

export function rank(rows, query) {
  const q = fold(query);
  if (!q) return [];
  const hits = [];
  for (const r of rows) {
    let score = 0, via = null;
    if (r.hf === q) score = 100;
    else if (r.hf.startsWith(q)) score = 60;
    else if (r.hf.includes(q)) score = 40;
    for (const [f, form, lang] of r.ff) {
      const s = f === q ? 50 : f.startsWith(q) ? 30 : f.includes(q) ? 15 : 0;
      if (s > score) { score = s; via = `${form} (${lang})`; }
    }
    if (score) hits.push({ r, score, via });
  }
  return hits.sort((a, b) => b.score - a.score || a.r.h.localeCompare(b.r.h)).slice(0, 25);
}

async function run() {
  const rows = await load();
  const hits = rank(rows, input.value);
  out.innerHTML = hits.map(({ r, via }) => `<li><b><a href="word/${encodeURIComponent(r.s)}/">${esc(r.h)}</a></b>${via ? ` <span class="muted">via ${esc(via)}</span>` : ""}<div class="muted">${esc(r.d)}</div></li>`).join("")
    || (input.value.trim() ? `<li class="muted">No reviewed dossier contains that form yet.</li>` : "");
}

if (input) {
  input.addEventListener("input", run);
  const q = new URLSearchParams(location.search).get("q");
  if (q) { input.value = q; run(); }
}
if (browser && new URLSearchParams(location.search).has("selftest")) import("./selftest.js").then((m) => m.run());
