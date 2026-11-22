// Compare this edition with the live atlas (www.set-u.org) through its public export API.
//   node scripts/drift.mjs [--today YYYY-MM-DD]
// Writes data/live-drift.json. Raises "live-ahead" when the live atlas has newer reviewed data, and "live-down" when it
// has not answered for 14 days (then this edition is the only copy online: see OPERATIONS.md, ARCHIVE_INDEXABLE).
import { existsSync, readFileSync, writeFileSync } from "node:fs";
import path from "node:path";
import { ROOT, openAtlas } from "../static/db.mjs";
import { addAlert, saveReport } from "./report.mjs";
import { UA } from "./linkcheck.mjs";

export const DATASETS = ["entries", "nodes", "edges", "sources", "disputes", "attestations"];
const LIVE = (process.env.LIVE_URL || "https://www.set-u.org").replace(/\/$/, "");

export function compare(archive, live) {
  if (!live) return { same: null, differences: [] };
  const differences = [];
  if (archive.schema !== live.schema) differences.push(`schema ${archive.schema} here, ${live.schema} live`);
  for (const d of DATASETS) if (archive.counts[d] !== live.counts[d]) differences.push(`${d}: ${archive.counts[d]} here, ${live.counts[d]} live`);
  return { same: differences.length === 0, differences };
}

async function liveCounts() {
  const counts = {};
  let schema = null;
  for (const d of DATASETS) {
    const res = await fetch(`${LIVE}/api/export?dataset=${d}&limit=1`, { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(30000) });
    if (!res.ok) throw new Error(`${d}: HTTP ${res.status}`);
    const body = await res.json();
    counts[d] = body.totalRows;
    schema = body.schemaVersion;
    await new Promise((r) => setTimeout(r, 1000));
  }
  return { schema, counts };
}

export async function main({ today = new Date().toISOString().slice(0, 10), out = path.join(ROOT, "data", "live-drift.json") } = {}) {
  const { exportFromDatabase, SCHEMA_VERSION } = await import("../lib/export-datasets.ts");
  const { d1, db } = openAtlas();
  const counts = {};
  for (const d of DATASETS) {
    const res = await (await exportFromDatabase(new Request(`https://set-u.org/api/export?dataset=${d}&limit=1`), d1)).json();
    counts[d] = res.totalRows;
  }
  db.close();
  const archive = { schema: SCHEMA_VERSION, counts };
  const prev = existsSync(out) ? JSON.parse(readFileSync(out, "utf8")) : {};
  let live = null, error = "";
  try { live = await liveCounts(); } catch (err) { error = err.message; }
  const { same, differences } = compare(archive, live);
  const downSince = live ? null : prev.downSince || today;
  writeFileSync(out, JSON.stringify({ checked: today, live: live || prev.live || null, reachable: Boolean(live), error, downSince,
    archive, same: live ? same : prev.same ?? null, differences: live ? differences : prev.differences || [] }, null, 1) + "\n");
  if (live && !same) {
    addAlert({ key: "live-ahead", title: "The live atlas has newer reviewed data than this edition",
      body: `Compared on ${today}:\n\n${differences.map((d) => `- ${d}`).join("\n")}\n\nCopy the new migrations from the SET-U project's drizzle/ folder into this repo's drizzle/ (redact any reviewer account IDs), update lib/ if the export contract changed, run the tests and push. The deploy rebuilds everything.` });
  }
  if (!live && (Date.parse(today) - Date.parse(downSince)) / 86400000 >= 14) {
    addAlert({ key: "live-down", title: "The live atlas has not answered for two weeks",
      body: `${LIVE} has not answered the export API since ${downSince} (${error}). This edition is still online. If the live atlas is gone for good, set the repository variable ARCHIVE_INDEXABLE=true and run the deploy so search engines index these pages instead (OPERATIONS.md).` });
  }
  saveReport({ step: "drift", ok: true, line: live ? `live atlas: ${same ? "same reviewed data" : differences.join("; ")}` : `live atlas did not answer (${error})` });
  console.log(live ? (same ? "same" : differences.join("; ")) : `live unreachable: ${error}`);
  return 0;
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const i = process.argv.indexOf("--today");
  process.exitCode = await main(i > 0 ? { today: process.argv[i + 1] } : {});
}
