# Launch and distribution

Live since 2026-11-22 at https://data.set-u.org/ (first at theguysaccount.github.io/set-u-language-genealogy/, which
redirects there), beside the live atlas at https://www.set-u.org/. Machine channels only; nothing is posted by or as a
person.

| Channel | How |
|---|---|
| Search | Indexed: the home page ("SET-U open data", "etymology dataset download", "etymology graph dataset"), `/data/` and `/data/citations/`. Word pages are `noindex` and point at set-u.org, so this edition never competes with it. |
| IndexNow | Every deploy submits the indexable URLs. |
| robots.txt | `data.set-u.org/robots.txt` lists the sitemap, and so does the account root (`theguysaccount.github.io/robots.txt`). |
| Developers | Stable file URLs (`/data/<dataset>.json`, `.csv`, `set-u-atlas.sqlite`, `manifest.json`) to cite and script against. |
| GitHub | Public repo with description, topics and README. |

## Domain

`data.set-u.org` since 2026-11-22: one CNAME at Namecheap, added by the domain rollout session. www.set-u.org and the
apex are untouched. The settings, and how to move or roll back, are in OPERATIONS.md ("Custom domain").
