// Build the SET-U atlas in memory from the drizzle/ migrations (exactly as scripts/verify-atlas.sh and the live D1
// database do) and wrap it in the small part of the Cloudflare D1 API that SET-U's loaders use.
import { readdirSync, readFileSync } from "node:fs";
import { DatabaseSync } from "node:sqlite";
import { fileURLToPath } from "node:url";
import path from "node:path";

export const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");

class Statement {
  constructor(db, sql, bindings = []) { this.db = db; this.sql = sql; this.bindings = bindings; }
  bind(...bindings) { return new Statement(this.db, this.sql, bindings); }
  async all() { return { results: this.db.prepare(this.sql).all(...this.bindings), success: true }; }
  async first(column) {
    const row = this.db.prepare(this.sql).get(...this.bindings) ?? null;
    return column && row ? row[column] : row;
  }
  async raw() {
    const st = this.db.prepare(this.sql);
    return st.all(...this.bindings).map((row) => Object.values(row));
  }
  async run() {
    const r = this.db.prepare(this.sql).run(...this.bindings);
    return { success: true, results: [], meta: { changes: Number(r.changes) } };
  }
}

export class D1 {
  constructor(db) { this.db = db; }
  prepare(sql) { return new Statement(this.db, sql); }
  async batch(statements) { return Promise.all(statements.map((s) => s.all())); }
}

export function migrations(root = ROOT) {
  return readdirSync(path.join(root, "drizzle")).filter((n) => /^\d{4}_.*\.sql$/.test(n)).sort();
}

export function openAtlas(root = ROOT) {
  const db = new DatabaseSync(":memory:");
  for (const name of migrations(root)) {
    db.exec("BEGIN");
    try {
      db.exec(readFileSync(path.join(root, "drizzle", name), "utf8"));
      db.exec("COMMIT");
    } catch (error) {
      db.exec("ROLLBACK");
      throw new Error(`migration ${name} failed: ${error.message}`);
    }
  }
  return { db, d1: new D1(db) };
}
