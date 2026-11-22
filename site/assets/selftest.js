// Loaded only with ?selftest=1 on the home page; scripts/e2e.sh reads <body data-selftest="...">.
const wait = (ms) => new Promise((r) => setTimeout(r, ms));
async function until(fn, what, ms = 8000) {
  const t0 = Date.now();
  while (Date.now() - t0 < ms) { const v = fn(); if (v) return v; await wait(25); }
  throw new Error("timed out waiting for " + what);
}
export async function run() {
  const log = [];
  try {
    const listed = document.querySelectorAll("[data-entry]").length;
    const index = await (await fetch(new URL("search-index.json", import.meta.url))).json();
    if (listed !== index.length || listed < 1) throw new Error(`home lists ${listed} dossiers, index has ${index.length}`);
    log.push(`home lists all ${listed} dossiers`);
    // Search by a reconstructed ancestor, which only appears deep inside a lineage.
    const target = index.find((r) => r.f.some(([form]) => form.startsWith("*")));
    const ancestor = target.f.find(([form]) => form.startsWith("*"))[0];
    const input = document.getElementById("q");
    input.value = ancestor;
    input.dispatchEvent(new Event("input"));
    await until(() => [...document.querySelectorAll("#results a")].some((a) => a.getAttribute("href") === `word/${encodeURIComponent(target.s)}/`), `"${target.h}" for ${ancestor}`);
    log.push(`searching ${ancestor} finds ${target.h}`);
    const page = await (await fetch(`word/${encodeURIComponent(target.s)}/`)).text();
    const doc = new DOMParser().parseFromString(page, "text/html");
    const art = doc.querySelector("[data-dossier]");
    const forms = Number(art.dataset.forms);
    if (doc.querySelectorAll(".lineage .form").length !== forms || forms !== target.f.length) throw new Error("lineage step count mismatch");
    if (!doc.querySelector(".lineage .relation .cites a[href^='http']")) throw new Error("no cited source in the lineage");
    log.push(`${target.h}: ${forms} lineage steps with citations`);
    document.body.dataset.selftest = "pass";
  } catch (err) {
    log.push("FAIL: " + err.message);
    document.body.dataset.selftest = "fail: " + err.message;
  }
  const pre = document.createElement("pre");
  pre.id = "selftest";
  pre.textContent = log.join("\n");
  document.body.appendChild(pre);
}
