# *SET-U open data & archive edition

**Live:** https://data.set-u.org/ · **The live atlas:** https://www.set-u.org/

*SET-U is an evidence-backed genealogy of human language: every reviewed word traced through attested and reconstructed
ancestors, with the sound change, meaning change, scholar, confidence and citations for each step, back to the point
where secure knowledge ends. The interactive atlas runs at set-u.org. This repository builds a static companion that
**sits beside it and replaces nothing**:

- **Open data** (indexed): all 27 datasets of the atlas's export contract in full, as JSON and CSV, plus the whole atlas
  as one SQLite file. The live API pages results 1,000 rows at a time; here each dataset is one file.
- **Citation health** (indexed): a weekly check of every cited source link, so dead references get noticed.
- **Archive dossiers** (`noindex`, canonical to set-u.org): every reviewed dossier as a plain static page, so the
  research survives any hosting change. Search engines are pointed at the live pages.

Everything is rebuilt from the reviewed migrations in `drizzle/` with SET-U's own code: the 73-check evidence gate
(`scripts/verify-atlas.sh`), the export contract (`lib/export-datasets.ts`, from the live site's `/api/export`) and the
dossier loader (`lib/atlas-dossier.ts`).

## Run

```bash
bash scripts/verify-atlas.sh        # rebuild SQLite from every migration and enforce 73 editorial invariants (needs sqlite3)
node static/build.mjs               # build dist/ (Node 23.6+ runs the TypeScript loaders directly; no npm install)
python3 -m http.server 8881 --directory dist
```

## Test

```bash
node --test tests/*.test.mjs        # build completeness, indexing rules, redaction, link and drift logic, search
scripts/e2e.sh                      # headless Chrome: home page, search by an ancestor form, one dossier
node scripts/screens.mjs http://127.0.0.1:8881   # screenshots into docs/screens/
```

## Deploy

Pushes to `main` that touch the data or the build run `.github/workflows/deploy.yml`. `weekly.yml` checks citations and
compares with the live atlas; `selftest.yml` checks the live edition. Details, settings and keys: [OPERATIONS.md](OPERATIONS.md).

## What is not here

The live site's server code, the authenticated evidence-intake desk, the private review desk and its reviewer identities
stay out of this public repository. Migration `0034` seeds the review desk's owner; its account ID is redacted here.

## Rights

Code in `static/`, `scripts/`, `site/`, `tests/` and `.github/`: MIT (see LICENSE). SET-U has **not yet declared reuse
terms** for its original editorial data (`drizzle/`, `lib/`, and the generated datasets); quoted source works keep their
own rights.
