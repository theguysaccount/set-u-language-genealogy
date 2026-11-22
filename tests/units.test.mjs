import assert from "node:assert/strict";
import { test } from "node:test";
import { classify, needsAttention, since } from "../scripts/linkcheck.mjs";
import { compare } from "../scripts/drift.mjs";
import { esc, jsonLdScript, lineage, truncateDesc } from "../static/render.mjs";
import { rank } from "../site/assets/search.js";

test("link classification", () => {
  assert.equal(classify(200), "ok");
  assert.equal(classify(301), "ok");
  assert.equal(classify(403), "blocked");
  assert.equal(classify(429), "blocked");
  assert.equal(classify(404), "broken");
  assert.equal(classify(0, "ENOTFOUND example.invalid"), "broken");
  assert.equal(classify(0, "UND_ERR_CONNECT_TIMEOUT"), "unreachable");
});

test("a link must fail on two runs before it needs a look; silence needs four weeks", () => {
  assert.equal(since(null, "ok", "2026-11-22"), null);
  assert.equal(since(null, "broken", "2026-11-22"), "2026-11-22");
  assert.equal(since({ status: "broken", since: "2026-11-15" }, "broken", "2026-11-22"), "2026-11-15");
  assert.equal(needsAttention({ status: "broken", since: "2026-11-22" }, "2026-11-22"), false);
  assert.equal(needsAttention({ status: "broken", since: "2026-11-15" }, "2026-11-22"), true);
  assert.equal(needsAttention({ status: "unreachable", since: "2026-11-15" }, "2026-11-22"), false);
  assert.equal(needsAttention({ status: "unreachable", since: "2026-10-20" }, "2026-11-22"), true);
});

test("drift comparison", () => {
  const a = { schema: "x", counts: { entries: 1, nodes: 2, edges: 3, sources: 4, disputes: 5, attestations: 6 } };
  assert.deepEqual(compare(a, structuredClone(a)), { same: true, differences: [] });
  const b = structuredClone(a); b.counts.entries = 2; b.schema = "y";
  const r = compare(a, b);
  assert.equal(r.same, false);
  assert.equal(r.differences.length, 2);
  assert.deepEqual(compare(a, null), { same: null, differences: [] });
});

test("lineage reads from today's word to the boundary, each step with its relation", () => {
  const forms = [{ id: 2, stepOrder: 2, form: "*old", language: "Proto-X", status: "reconstructed" },
    { id: 1, stepOrder: 1, form: "new<b>", language: "English", status: "attested" },
    { id: 3, stepOrder: 3, form: "UNKNOWN", language: "Beyond", status: "boundary" }];
  const relations = [{ childFormId: 1, parentFormId: 2, relationType: "inheritance", confidence: "probable", sources: [{ title: "T", url: "https://s", stance: "supports" }] }];
  const html = lineage({ forms, relations });
  assert.ok(html.indexOf("new&lt;b&gt;") < html.indexOf("*old"));
  assert.ok(html.indexOf("*old") < html.indexOf("UNKNOWN"));
  assert.equal((html.match(/class="relation"/g) || []).length, 1);
  assert.equal(esc(`"<&>'`), "&quot;&lt;&amp;&gt;&#39;");
});

test("search finds words by any historical form, ignoring diacritics and asterisks", () => {
  const rows = [{ s: "salary", h: "salary", d: "", hf: "salary", ff: [["salary", "salary", "English"], ["sehl", "*séh₂l-", "PIE"]] },
    { s: "salt", h: "salt", d: "", hf: "salt", ff: [["salt", "salt", "English"]] }];
  assert.deepEqual(rank(rows, "séh₂l").map((h) => h.r.s), ["salary"]);
  assert.deepEqual(rank(rows, "sal").map((h) => h.r.s), ["salary", "salt"]);
  assert.deepEqual(rank(rows, "salt").map((h) => h.r.s), ["salt"]);
});

test("jsonLdScript escapes closing script tags safely and truncateDesc respects word boundaries", () => {
  const out = jsonLdScript({ text: "</script><img src=x>&" });
  assert.ok(out.startsWith('<script type="application/ld+json">'));
  assert.ok(!out.includes("</script><img"));
  assert.ok(out.includes("\\u003c/script\\u003e"));
  assert.equal(jsonLdScript(null), "");
  const short = truncateDesc("Short summary.", 160);
  assert.equal(short, "Short summary.");
  const long = truncateDesc("word ".repeat(50), 60);
  assert.ok(long.length <= 60);
  assert.ok(long.endsWith("…"));
});
