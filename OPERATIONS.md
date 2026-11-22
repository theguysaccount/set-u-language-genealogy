# Operations

Live at https://data.set-u.org/, a companion to the live atlas at https://www.set-u.org/ (which this repo never
touches). The first address, https://theguysaccount.github.io/set-u-language-genealogy/, redirects there. Everything
below runs on GitHub Actions in this repo.

## Automated jobs

| Workflow | When | What it does | How it fails safe |
|---|---|---|---|
| `deploy.yml` | Pushes to `main` that change `drizzle/`, `lib/`, `static/`, `site/`, `data/` or `scripts/`; dispatched by `weekly.yml` | The 73-check evidence gate on a database rebuilt from every migration, the tests, the static build (27 datasets, SQLite, every dossier), a headless-Chrome run on the built site, the Pages deploy (retried once), the same run on the live site, IndexNow for the indexable pages. | A failed gate, test, build or local run stops before deploying; the last good deploy stays live. |
| `weekly.yml` | Tuesdays 06:19 UTC, or by hand | `scripts/linkcheck.mjs` opens every cited source URL (one request at a time per site); `scripts/drift.mjs` compares this edition with the live atlas's export API. Commits `data/`, dispatches the deploy, opens or closes `ops-alert` issues. Keep-alive afterwards. | If no link answers at all (runner offline), the last report is kept and the run ends red. A link counts as broken only on its second failing week; sites that refuse scripts are "blocked", not broken; a site that drops connections is reported after four weeks. |
| `selftest.yml` | Fridays 07:41 UTC, or by hand | `scripts/health.mjs`: data files parse and match the manifest, home/data/citation pages are indexable, archive pages are `noindex` with set-u.org as canonical, the sitemap lists only indexable pages, the citation check is fresh (dispatches `weekly.yml` if not). Then the live end-to-end run and the keep-alive. | Read-only. |
| `ci.yml` | Every push and pull request | Gate and tests. | — |

**Keep-alive.** `scripts/keepalive.sh` runs after every scheduled job: it re-enables scheduled workflows (never one
disabled by hand) and pushes an empty commit after 40 quiet days. **Late schedules.** GitHub starts this account's crons
hours late; every job is safe to re-run and the self-test dispatches the weekly check when it is stale.

## What to watch

| Signal | Where | Healthy |
|---|---|---|
| Runs | Actions tab; failure emails to the account owner | Weekly checks and self-test green |
| `ops-alert` issues | Issues tab | None open |
| Citation health | `/data/citations/` | Broken links trending down |
| Drift | Home page line "Compared with the live atlas…" | "same reviewed data" |

### When an alert opens

- **The live atlas has newer reviewed data** (`live-ahead`): copy the new `drizzle/NNNN_*.sql` migrations from the SET-U
  project into `drizzle/` (replace any reviewer account ID with `redacted-owner-account`), copy `lib/atlas-dossier.ts`
  and the export contract into `lib/` if they changed (keep `lib/export-datasets.ts` without the Workers GET handler),
  run `bash scripts/verify-atlas.sh` and `node --test tests/*.test.mjs`, push. The deploy rebuilds everything.
- **The live atlas has not answered for two weeks** (`live-down`): check www.set-u.org. If it is gone for good:
  `gh variable set ARCHIVE_INDEXABLE -R theguysaccount/set-u-language-genealogy -b true` and run `deploy.yml`. Archive pages
  then become indexable and self-canonical, and enter the sitemap.
- **Cited source links need a look** (`citation-links`): the issue lists each link, its status and the citation keys
  that use it. Fix sources in a new migration (never edit an applied one), then push.

## Scheduled Claude routine (optional, set up once by a person)

Monthly, in a checkout of this repo and of the SET-U project:

> In ~/code/set-u-language-genealogy (git pull first):
> 1. If an `ops-alert` issue says the live atlas is ahead, copy the new migrations as OPERATIONS.md describes; redact
>    reviewer account IDs. Never publish anything from the intake or review desks.
> 2. For each link in the open `citation-links` alert, find the publisher's current URL for the same work and write a new
>    migration that updates `sources.url` for that citation key. Do not change any claim.
> 3. Run `bash scripts/verify-atlas.sh` and `node --test tests/*.test.mjs`, commit and push. Do not post anywhere.

## Keys Jack can turn later

| Key | Why | Exact steps |
|---|---|---|
| **Custom domain** (turned 2026-11-22) | The open data on SET-U's own domain beside the live atlas | In place since the domain rollout on 2026-11-22: Namecheap → set-u.org → Advanced DNS has `CNAME data → theguysaccount.github.io.`, the Pages custom domain is `data.set-u.org` with HTTPS enforced, and the repo variable `SITE_URL` is `https://data.set-u.org`, the one setting every page, sitemap and check reads. The www.set-u.org and apex records are untouched. **To move to another host:** add its CNAME, then `~/.local/bin/gh api -X PUT repos/theguysaccount/set-u-language-genealogy/pages -f cname=<host>`, `~/.local/bin/gh variable set SITE_URL -R theguysaccount/set-u-language-genealogy -b https://<host>`, `~/.local/bin/gh workflow run deploy.yml -R theguysaccount/set-u-language-genealogy`, and once the certificate is issued `~/.local/bin/gh api -X PUT repos/theguysaccount/set-u-language-genealogy/pages -F https_enforced=true`; then delete the old CNAME. **To go back to github.io:** `~/.local/bin/gh api -X PUT repos/theguysaccount/set-u-language-genealogy/pages --input - <<< '{"cname":null}'`, `~/.local/bin/gh variable delete SITE_URL -R theguysaccount/set-u-language-genealogy`, `~/.local/bin/gh workflow run deploy.yml -R theguysaccount/set-u-language-genealogy`, then delete `CNAME data` at Namecheap straight away: a CNAME left pointing at GitHub Pages with no site claiming it can be taken over. |
| **Declare reuse terms** | The data is readable but not yet reusable | Decide a licence for the editorial data (CC BY-SA 4.0 suits attribution and share-alike). Then update the `licenseNote` text in `lib/export-datasets.ts` and `static/build.mjs`, the Reuse section in `static/render.mjs` and LICENSE, and push. The live atlas's own export should say the same. |
| **Money: support or data licensing** | First revenue without breaking GitHub Pages' non-commercial terms | `gh variable set SUPPORT_URL -b <url>` (and optionally `SUPPORT_LABEL`), run `deploy.yml`: a footer link appears. Paid API or bulk licensing needs hosting off Pages. |
| **Analytics** | Count dataset downloads | Create a GoatCounter site, `gh variable set GOATCOUNTER_URL -b https://<code>.goatcounter.com/count`, run `deploy.yml`. |
| **Archive indexing** | Only if the live atlas is retired | `ARCHIVE_INDEXABLE=true`, as above. |
