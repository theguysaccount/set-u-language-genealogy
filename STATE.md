# State (2026-11-22)

- **Original:** a vinext (Next.js-compatible) app on Cloudflare Workers via ChatGPT Sites, D1 database built from 142
  Drizzle migrations, Sign in with ChatGPT for the intake and review desks. **Live at www.set-u.org** (it was parked when
  the brief was written; it is now deployed, schema 2026-08-28.107, the same data as the local source).
- **Works:** the evidence gate (73 checks, all pass), every loader in `lib/` (they run unchanged under Node's type stripping
  and node:sqlite), the export contract (27 datasets).
- **Broken on the live site:** the export manifest (`/api/export` with no dataset) answers HTTP 500; individual datasets
  work. This edition publishes a working manifest and full files.
- **Reused here:** migrations (owner reviewer ID redacted), the gate, the export SQL, the dossier loader, the palette and
  the share image. Not reused: server routes, auth, intake/review desks, the 20 interactive atlases (they stay on set-u.org).
- **Added:** bulk datasets + SQLite download, weekly citation link check, weekly drift check against the live atlas,
  static archive dossiers that defer to the live pages.
- **Machines:** the first schedule-triggered runs, on 22 November 2026, passed: `selftest.yml` (run 45047290399) and `weekly.yml`
  (run 45052536071). The temporary proof schedules that forced them were then removed; the regular schedules in
  `OPERATIONS.md` remain.
