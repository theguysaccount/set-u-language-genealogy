# *SET-U public data interface

The export interface makes the reviewed graph inspectable without scraping the visual application.

Authenticated evidence-intake submissions are deliberately absent from this interface. `/contribute` stores source-located leads in a quarantined table, while `/api/export` contains reviewed atlas data only. Submission, triage, research, or acceptance never makes an intake packet public; publication requires a separate reviewed graph migration.

The protected `/review` workflow is also excluded. Its reviewer allowlist, contributor identities, packet text, source locators, verification flags, rationales, and immutable decision journal are operational records rather than published linguistic claims. Even an accepted intake packet contributes zero rows to every public dataset until a separate reviewed migration satisfies the graph’s evidence contract.

The human-facing `/graph` route renders the same `nodes`, `edges`, `edge-citations`, `families`, and `family-memberships` datasets as the complete canonical Language Graph. Its layers are topological claim depth, not equal time intervals. Components are kept separate unless a reviewed canonical edge actually connects them; visual proximity never creates a cognate or ancestry claim.

## Manifest

```text
GET /api/export
```

The manifest reports the schema version, evidence contract, rights status, available datasets, row counts, formats, and pagination rules.

## Datasets

| Dataset | Unit | Primary relationships |
| --- | --- | --- |
| `entries` | Reviewed word dossier | `entries.id` → `dossiers.entryId`, `journeys.entryId`, `claims.entryId`, `disputes.entryId` |
| `languages` | Attested or reconstructed language identity | `languages.id` → `nodes.languageId` |
| `nodes` | Sense-aware canonical historical form or knowledge boundary | `nodes.id` → `edges.childNodeId`, `edges.parentNodeId` |
| `edges` | Canonical directed historical claim | `edges.id` → `edge-citations.edgeId` |
| `changes` | Discovery-ready canonical transformation | one enriched row per edge with both endpoint forms and languages, sound and semantic histories, scholar, confidence, chronology, evidence totals, and permanent URLs |
| `edge-citations` | Source stance on one canonical edge | joins `edges` to `sources`; includes permanent edge and source URLs |
| `descendant-closure` | Root-to-downstream-edge reachability record | joins `rootNodeId` to every reachable `edgeId`; join onward to `edges` and `edge-citations` |
| `families` | Complete reviewed lexical-graph component | aggregates dossiers, nodes, edges, citations, languages, disputes, witnesses, and truths under a stable derived `familyId` and `/families#family-{id}` URL |
| `family-memberships` | One reviewed modern dossier assigned to one evidence family | joins `entryId` and `headwordNodeId` to `familyId`; includes permanent dossier and family URLs |
| `dossiers` | Entry-scoped ordered form and sense | maps an editorial path to `canonicalNodeId` |
| `journeys` | Ordered geographic and temporal stage | drives the evidence-aware map; distinguishes stored coordinate pairs from points honest enough to plot and includes the dossier URL |
| `timeline-events` | Bounded canonical form or journey-stage event | combines graph-form chronology and directly cited route chronology while preserving `eventType`, precision, evidence count, and permanent audit URL |
| `journey-citations` | Direct source stance on one journey-stage claim | joins `journeys` to `sources` with locator, stance, evidence note, and permanent journey-stage and source URLs; all 214 reviewed dossiers now have complete routes |
| `claims` | Entry-scoped ancestry relationship | maps a dossier claim to `canonicalEdgeId` |
| `truths` | Ranked root or semantic reveal | includes the revealing root, language, gloss, evidential status, transformation path, reveal type, unveiling rationale and score, evidence grade, dossier URL, and permanent `/truths#truth-{id}` record; every reviewed dossier has exactly one reveal |
| `truth-citations` | Direct source stance on one ranked reveal | joins `truths` to `sources` with a locator, stance, evidence note, and permanent truth and source URLs; every current reveal has direct located evidence |
| `sources` | Bibliographic record identified by `citationKey` | includes usage counts and a permanent `/source/{citationKey}` audit URL; several located records may share one external URL |
| `attestations` | Lexical witness or first-use report | joins dossiers, canonical nodes, languages, and named sources; distinguishes source-reported from directly inspected evidence and supplies permanent witness and source audit URLs |
| `witness-inspections` | Repeatable visual-inspection record | publishes the observed token and context, inspection date and method, exact locator, artifact URL, editorial role, claim limit, and permanent witness URL for every directly inspected primary object |
| `disputes` | Competing scholarly position | remains open until evidence warrants resolution; includes its permanent `/dispute/{id}` audit URL and direct-citation count |
| `dispute-citations` | Direct source stance on one dispute | joins `disputes` to `sources` with locator, stance, evidence note, and permanent dispute and source URLs |
| `context-links` | Sourced historical association | connects words through a person, text, institution, or contact event without claiming shared ancestry |
| `context-link-sources` | Source stance on a context link | joins `context-links` to `sources` and supplies the permanent source URL |
| `dossier-audit` | One reviewed word measured across independent evidence dimensions | reports lineage and change completeness, witness status, route provenance, temporal and map coverage, disputes, network depth, linked sources, open research tasks, and permanent dossier/audit URLs without collapsing them into a composite score |
| `lexical-candidates` | Evidence-seeded attested or bound form awaiting a full dossier | derives 505 distinct form-and-language candidates; twenty-eight records currently meet the preliminary `promotion_ready` threshold after Old Saxon `heti`, Old Saxon `hōti`, Ancient Greek `κῆδος`, English `friend`, German `Freund`, Dutch `vriend`, Old Norse `frændi`, and Old English `frēond` graduated, so none of those exact form-and-language identities appears as unfinished; the source-labeled Old Icelandic `frændi` record remains a separate seed pending language-label adjudication; exact `hatan` remains a cited manuscript-variant node rather than a duplicate dossier and Latin-script `kêdos` is resolved as a representation of `κῆδος`; exact reconstructed forms already represented by reviewed canonical nodes remain in the Root Atlas, while source-cited candidate resolutions exclude represented variants such as Gothic `fian`, Old Saxon `hatan`, and Ancient Greek `kêdos`; every candidate preserves source counts, connected dossiers, relationship summaries, priority, status, and a permanent `/candidates#candidate-{id}` URL |
| `candidate-resolutions` | Source-cited decision that a candidate is not a separate dossier identity | publishes the disposition, explanation, canonical node, two or more located sources, permanent node URL, and `/candidates#candidate-resolution-{id}` audit fragment for every reviewed variant, merged identity, non-lexeme, or duplicate decision |
| `research-frontier` | Derived open research task | unifies unresolved disputes, uninspected witnesses, knowledge boundaries, low-confidence edges, thin language representation, and lexical-candidate promotions with stable task IDs and permanent evidence URLs |

## JSON

```text
GET /api/export?dataset=nodes&limit=250&after=0
```

The response includes a `page.next` cursor when more rows exist. Pass it as the next request's `after` value. The server caps a page at 1,000 rows and emits an HTTP `Link: <…>; rel="next"` header when applicable.

`senseKey` is part of canonical identity. It prevents same-spelled forms with different lexical senses from collapsing into one node, while allowing genuinely polysemous or shared ancestors to be reused deliberately. `default` preserves the original identity for records that do not require a narrower distinction.

`citationKey`, not `url`, is the source-record identity. A single long reference page can contain several independently located root entries, so multiple bibliographic records may intentionally share a URL while retaining different titles, locators, and edge-level evidence notes.

An attestation's `evidenceStatus` is either `source_reported` or `directly_inspected`. Direct inspection is not inferred from a quotation, date, or facsimile link. A directly inspected record must identify a primary-object witness type, repository, shelfmark or object ID, exact locator, excerpt, and secure facsimile URL, and it must resolve to exactly one reviewed `witness-inspections` row. That row records what the reviewer actually saw and the precise limit of the object-level claim. `canonicalUrl` opens the corresponding human-auditable witness record.

`descendant-closure` is the transitive closure of the reviewed directed graph. Each row says that `edgeId` is downstream of `rootNodeId` and reports its shortest edge depth from that root. The dataset does not duplicate claims or citations: join `edgeId` to `edges`, then to `edge-citations` and `sources`. The evidence gate rejects directed cycles; the export traversal deduplicates reachable root, node, and depth states and retains a defensive depth ceiling.

`families` uses the reviewed canonical graph as an undirected connectivity graph while preserving the direction and type of every underlying `edge`. This answers “which dossiers are connected at all?” without converting borrowing, compounds, historical context, or a distant shared path into a false cognate claim. Context links are deliberately excluded. `familyId` is the smallest canonical node ID currently present in the component; it is deterministic for a graph version, but two IDs can merge when new reviewed evidence joins formerly separate islands. `family-memberships` is the exact dossier-level assignment for reproducible joins and coverage audits.

`changes` is a denormalized discovery view of the same canonical `edges`, not a second claim source. It places both endpoints, languages, form history, meaning history, scholar, confidence, chronology, evidence totals, and permanent record URLs in one row for search and analysis. Join `changes.id` to `edge-citations.edgeId` for every exact source stance, locator, and evidence note. Sound and semantic prose are preserved as reviewed claims rather than heuristically classified into unsupported universal categories.

Journey coordinates are signed millionths of a degree in `latitudeE6` and `longitudeE6`. They are either both present or both null. `hasCoordinates` reports that storage fact; `hasMapPoint` is stricter and remains false for `global` stages even when a legacy coordinate identifies a point of departure. `geographicConfidence` is one of `regional`, `approximate`, `broad`, `global`, or `uncertain`; the interface does not draw `global` records as single points and breaks route lines wherever a stage has no defensible point. `stepOrder` is contiguous inside a dossier and supports a route sequence timeline. `journeys.citationCount` and `journey-citations` measure direct stage-level provenance rather than treating a dossier bibliography as blanket support. All 959 stages across all 214 reviewed dossiers now carry 1,324 direct stage-level citations, so the derived frontier currently contains zero uncited-journey tasks. That is a completeness claim about this reviewed 214-dossier corpus—not about all words or all future route stages. Competing root analyses and source disagreements can attach to the same stage with distinct stances rather than being flattened into one answer. A linguistic source does not automatically justify a geographic point: 729 stages remain deliberately unpinned, including reconstructed and disputed prehistoric stages and source-language regions that the reviewed evidence does not reduce to one coordinate.

Journey time uses `dateStart`, `dateEnd`, `temporalPrecision`, `temporalNote`, and `hasTemporalBounds`. Precision is one of `exact`, `range`, `century`, `circa`, `open`, `before`, or `unresolved`. An unresolved record has no numeric bound; no consumer should parse its prose `dateLabel` into one. Five hundred seventy-eight directly cited stages currently have conservative numeric bounds and enter `timeline-events`; 381 remain explicitly unbounded. The evidence gate rejects numeric journey chronology without a direct stage citation.

`timeline-events` is a discovery union, not a merger of claims. `eventType=form` dates a reviewed canonical lexeme node; `eventType=journey` dates a reviewed route stage. Both expose their original record ID, label, numeric bounds, precision, description, evidence count, and permanent `canonicalUrl`, but consumers must preserve the event type. The visual Timeline Atlas groups events into era bands rather than implying that an approximate reconstruction and an exact attestation have equivalent precision.

The truth ledger deliberately separates ranking from proof. `truths.unveilingScore` is an editorial discovery score based on semantic distance, conceptual force, and evidence strength; `truths.mythGapScore` remains as a deprecated legacy field for export continuity and is not the current ranking contract. `rootForm`, `rootLanguage`, `rootGloss`, `rootStatus`, `transformationPath`, `unveilingReason`, and `revealType` make the reason for inclusion inspectable. `featuredRank` identifies the small hand-reviewed set shown on the home page, where `myth_correction` records cannot appear. `truth-citations` contains the source-level support or context that makes any reveal publishable. A claim without at least one located citation fails the evidence gate. Join onward to `claims`, `edges`, and `edge-citations` through the truth's `entryId` when the full ancestry argument is needed.

Disputes are source graphs rather than prose footnotes. `disputes` preserves the editorial question, position, status, confidence, and resolution state. `dispute-citations` identifies exactly which work supports, challenges, contradicts, or contextualizes that position and supplies the locus and evidence note. The evidence gate rejects any dispute without at least one located supporting citation.

`dossier-audit` is the corpus-depth ledger. It deliberately publishes no overall quality percentage. Each word remains a vector: ordered lineage and its knowledge boundary; complete and cited change claims; source-reported, facsimile-located, and directly inspected witnesses; cited, temporally normalized, and mappable journey stages; open and resolved disputes; connected modern dossiers, relatives, rabbit holes, and truth citations; distinct linked sources; and derived open research tasks. A strong lineage therefore cannot hide a weak primary-witness layer, and a mapped journey cannot erase unresolved dates.

`research-frontier` is derived rather than independently hand-maintained. Its task lanes are `dispute`, `witness`, `boundary`, `edge`, `journey`, `representation`, and `promotion`. Completing work means changing the authoritative dispute, attestation, node, edge, journey citation, language-coverage record, or cited relative; the next export then recomputes the queue. `priority` is an editorial work-order score, not linguistic importance, and `canonicalUrl` always points back to the evidence record that controls the task.

The Unbuilt Lexicon exposes corpus growth as data rather than aspiration. `lexical-candidates` groups every cited `relatives` record whose form and language do not already resolve to a reviewed modern-word dossier. A candidate is `promotion_ready` when it is already supported by at least two source records or connected to at least two reviewed dossiers; all other records remain `evidence_seeded`. Neither status implies that a dossier is complete. Promotion still requires a resolved headword identity, complete cited ancestry, a historical witness, a fully cited journey, explicit disputes and confidence, relatives, and a knowledge boundary. The corresponding `promotion` frontier lane turns every candidate into a stable next action.

## CSV

```text
GET /api/export?dataset=edges&format=csv&limit=1000&after=0
```

CSV uses the same cursor and limit parameters. It returns the next-page URL in the `Link` header and a downloadable filename.

## Stability and rights

`X-SETU-Schema-Version` identifies the export contract. Fields may be added within a version; incompatible changes require a new version.

The export is a public review surface, not an implied blanket license. SET-U has not yet declared reuse terms for its original editorial data. Bibliographic and linked source materials retain their own rights and terms. Direct quotations should be traced to and attributed to the named source.
