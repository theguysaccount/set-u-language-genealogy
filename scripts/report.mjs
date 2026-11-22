// A tiny shared run report (refresh-report.json) that scripts/alerts.mjs turns into ops-alert issues.
import { existsSync, readFileSync, writeFileSync, appendFileSync } from "node:fs";
import path from "node:path";
import { ROOT } from "../static/db.mjs";

export const REPORT = path.join(ROOT, "refresh-report.json");
const read = () => (existsSync(REPORT) ? JSON.parse(readFileSync(REPORT, "utf8")) : { steps: {}, alerts: [], lines: [] });

export function addAlert(alert) {
  const r = read();
  r.alerts = r.alerts.filter((a) => a.key !== alert.key).concat(alert);
  writeFileSync(REPORT, JSON.stringify(r, null, 1));
  if (process.env.GITHUB_ACTIONS) console.log(`::warning::${alert.title}`);
}

export function saveReport({ step, ok, line }) {
  const r = read();
  r.steps[step] = ok;
  if (line) r.lines.push(line);
  writeFileSync(REPORT, JSON.stringify(r, null, 1));
  if (line && process.env.GITHUB_STEP_SUMMARY) appendFileSync(process.env.GITHUB_STEP_SUMMARY, `- ${line}\n`);
}
