# Decisions

1. **Build on top, replace nothing.** set-u.org is live, so this edition adds only what the live site lacks (bulk data,
   citation health) as indexable pages, and keeps its copies of the dossiers `noindex` with the live page as canonical.
   One setting (`ARCHIVE_INDEXABLE=true`) makes the archive indexable if the live atlas is ever retired.
2. **Reuse the original code instead of rewriting it.** The loaders and export SQL run unchanged under Node 24 (type
   stripping + node:sqlite) through a 40-line D1 wrapper, so the static files are exactly what the live API returns.
3. **No npm install.** The build needs Node and sqlite3 only, so a scheduled job cannot break on a dependency.
4. **Redact, don't drop, the review-desk seed.** Migration 0034's owner account ID is replaced with a placeholder so the
   gate's "an owner exists" check still holds; the SQLite download empties the review tables.
5. **No licence declared.** The original says reuse terms are not yet declared; this edition says the same rather than
   choosing one for Jack (key in OPERATIONS.md).
6. **Citation check from runners, not from Jack's Mac.** 600 links across 150 sites, one request at a time per site,
   weekly. Sites that refuse scripts count as "blocked", not broken; a link must fail twice before anyone is asked.
7. **Drift watch.** A weekly comparison with the live export API opens an issue when set-u.org has newer reviewed data,
   and another if it stops answering for two weeks.
