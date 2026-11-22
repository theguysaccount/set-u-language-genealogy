#!/usr/bin/env bash
set -euo pipefail

atlas_project="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
atlas_verify_db="$(mktemp /tmp/setu-atlas-verify.XXXXXX)"
trap 'rm -f "$atlas_verify_db"' EXIT

command -v sqlite3 >/dev/null 2>&1 || {
  echo "SET-U evidence gate requires sqlite3." >&2
  exit 2
}

atlas_migrations=()
while IFS= read -r atlas_migration; do
  atlas_migrations+=("$atlas_migration")
done < <(find "$atlas_project/drizzle" -maxdepth 1 -type f -name '[0-9][0-9][0-9][0-9]_*.sql' | sort)
if [[ ${#atlas_migrations[@]} -eq 0 ]]; then
  echo "No atlas migrations found." >&2
  exit 2
fi

for atlas_migration in "${atlas_migrations[@]}"; do
  sqlite3 "$atlas_verify_db" < "$atlas_migration"
done

atlas_checks=0

check_zero() {
  local label="$1"
  local query="$2"
  local failures
  failures="$(sqlite3 "$atlas_verify_db" "$query")"
  atlas_checks=$((atlas_checks + 1))
  if [[ "$failures" != "0" ]]; then
    printf 'FAIL  %s (%s violations)\n' "$label" "$failures" >&2
    exit 1
  fi
  printf 'PASS  %s\n' "$label"
}

check_zero "foreign keys resolve" \
  "SELECT COUNT(*) FROM pragma_foreign_key_check;"

check_zero "each reviewed dossier has one modern headword node" \
  "SELECT COUNT(*) FROM entries e WHERE e.editorial_status='reviewed' AND (SELECT COUNT(*) FROM forms f WHERE f.entry_id=e.id AND f.step_order=1)<>1;"

check_zero "headword nodes match normalized entry names" \
  "SELECT COUNT(*) FROM entries e JOIN forms f ON f.entry_id=e.id AND f.step_order=1 WHERE e.normalized_headword<>f.normalized_form;"

check_zero "each reviewed dossier ends at one explicit boundary" \
  "SELECT COUNT(*) FROM entries e WHERE e.editorial_status='reviewed' AND (SELECT COUNT(*) FROM forms f WHERE f.entry_id=e.id AND f.status='boundary')<>1;"

check_zero "knowledge boundaries are the final dossier step" \
  "SELECT COUNT(*) FROM forms f WHERE f.status='boundary' AND f.step_order<>(SELECT MAX(last.step_order) FROM forms last WHERE last.entry_id=f.entry_id);"

check_zero "every adjacent dossier step has a reviewed relation" \
  "SELECT COUNT(*) FROM forms child JOIN forms parent ON parent.entry_id=child.entry_id AND parent.step_order=child.step_order+1 WHERE NOT EXISTS (SELECT 1 FROM relations r WHERE r.entry_id=child.entry_id AND r.child_form_id=child.id AND r.parent_form_id=parent.id AND r.editorial_status='reviewed');"

check_zero "every entry form resolves to one canonical node" \
  "SELECT COUNT(*) FROM forms f LEFT JOIN form_node_links link ON link.form_id=f.id WHERE link.node_id IS NULL;"

check_zero "canonical node links preserve form identity" \
  "SELECT COUNT(*) FROM forms f JOIN form_node_links link ON link.form_id=f.id JOIN lexeme_nodes node ON node.id=link.node_id WHERE f.status<>'boundary' AND (f.language_id<>node.language_id OR f.normalized_form<>node.normalized_form OR f.sense_key<>node.sense_key OR f.status<>node.status);"

check_zero "sense keys are nonempty controlled identifiers" \
  "SELECT (SELECT COUNT(*) FROM forms WHERE TRIM(sense_key)='' OR sense_key GLOB '*[^a-z0-9_-]*') + (SELECT COUNT(*) FROM lexeme_nodes WHERE TRIM(sense_key)='' OR sense_key GLOB '*[^a-z0-9_-]*');"

check_zero "every dossier relation resolves to a canonical edge" \
  "SELECT COUNT(*) FROM relations r LEFT JOIN relation_edge_links link ON link.relation_id=r.id WHERE link.edge_id IS NULL;"

check_zero "canonical edge links preserve relation endpoints and type" \
  "SELECT COUNT(*) FROM relations r JOIN relation_edge_links relink ON relink.relation_id=r.id JOIN lexeme_edges edge ON edge.id=relink.edge_id JOIN form_node_links child ON child.form_id=r.child_form_id JOIN form_node_links parent ON parent.form_id=r.parent_form_id WHERE edge.child_node_id<>child.node_id OR edge.parent_node_id<>parent.node_id OR edge.relation_type<>r.relation_type;"

check_zero "canonical edges preserve every mapped dossier claim" \
  "SELECT COUNT(*) FROM relations r JOIN relation_edge_links relink ON relink.relation_id=r.id JOIN lexeme_edges edge ON edge.id=relink.edge_id WHERE edge.sound_change<>r.sound_change OR edge.semantic_change<>r.semantic_change OR edge.scholar<>r.scholar OR edge.confidence<>r.confidence OR COALESCE(edge.confidence_note,'')<>COALESCE(r.confidence_note,'') OR COALESCE(edge.chronology_note,'')<>COALESCE(r.chronology_note,'') OR edge.editorial_status<>r.editorial_status;"

check_zero "competing graph routes remain explicitly uncertain" \
  "SELECT COUNT(*) FROM lexeme_edges WHERE relation_type LIKE 'competing_%' AND confidence NOT IN ('proposed','speculative');"

check_zero "modeled compound nodes expose at least two component parents" \
  "SELECT COUNT(*) FROM lexeme_nodes node WHERE node.sense_key LIKE '%compound%' AND (SELECT COUNT(*) FROM lexeme_edges edge WHERE edge.child_node_id=node.id AND edge.relation_type IN ('compound_member','compound_component'))<2;"

check_zero "reviewed descendant direction is acyclic" \
  "WITH RECURSIVE walk(origin_node_id,node_id,path,cycle) AS (SELECT node.id,node.id,','||node.id||',',0 FROM lexeme_nodes node WHERE node.editorial_status='reviewed' UNION ALL SELECT walk.origin_node_id,edge.child_node_id,walk.path||edge.child_node_id||',',CASE WHEN instr(walk.path,','||edge.child_node_id||',')>0 THEN 1 ELSE 0 END FROM walk JOIN lexeme_edges edge ON edge.parent_node_id=walk.node_id AND edge.editorial_status='reviewed' WHERE walk.cycle=0) SELECT COUNT(*) FROM walk WHERE cycle=1;"

check_zero "every reviewed relation cites at least one source" \
  "SELECT COUNT(*) FROM relations r WHERE r.editorial_status='reviewed' AND NOT EXISTS (SELECT 1 FROM relation_sources source WHERE source.relation_id=r.id);"

check_zero "every reviewed canonical edge cites at least one source" \
  "SELECT COUNT(*) FROM lexeme_edges edge WHERE edge.editorial_status='reviewed' AND NOT EXISTS (SELECT 1 FROM lexeme_edge_sources source WHERE source.edge_id=edge.id);"

check_zero "every reviewed canonical node is connected to a reviewed dossier" \
  "WITH RECURSIVE connected(node_id) AS (SELECT DISTINCT link.node_id FROM form_node_links link JOIN forms form ON form.id=link.form_id JOIN entries entry ON entry.id=form.entry_id WHERE entry.editorial_status='reviewed' UNION SELECT CASE WHEN edge.child_node_id=connected.node_id THEN edge.parent_node_id ELSE edge.child_node_id END FROM connected JOIN lexeme_edges edge ON edge.child_node_id=connected.node_id OR edge.parent_node_id=connected.node_id WHERE edge.editorial_status='reviewed') SELECT COUNT(*) FROM lexeme_nodes node WHERE node.editorial_status='reviewed' AND NOT EXISTS (SELECT 1 FROM connected WHERE connected.node_id=node.id);"

check_zero "every reviewed dossier occupies one connected lexical family" \
  "WITH RECURSIVE headword(entry_id,node_id) AS (SELECT entry.id,link.node_id FROM entries entry JOIN forms form ON form.entry_id=entry.id AND form.step_order=1 JOIN form_node_links link ON link.form_id=form.id WHERE entry.editorial_status='reviewed'), reach(entry_id,node_id) AS (SELECT entry_id,node_id FROM headword UNION SELECT reach.entry_id,CASE WHEN edge.child_node_id=reach.node_id THEN edge.parent_node_id ELSE edge.child_node_id END FROM reach JOIN lexeme_edges edge ON edge.editorial_status='reviewed' AND (edge.child_node_id=reach.node_id OR edge.parent_node_id=reach.node_id)) SELECT COUNT(*) FROM forms form JOIN entries entry ON entry.id=form.entry_id AND entry.editorial_status='reviewed' JOIN form_node_links link ON link.form_id=form.id WHERE NOT EXISTS (SELECT 1 FROM reach WHERE reach.entry_id=entry.id AND reach.node_id=link.node_id);"

check_zero "every knowledge boundary has directly cited adjacency" \
  "SELECT COUNT(*) FROM lexeme_nodes node WHERE node.editorial_status='reviewed' AND node.status='boundary' AND NOT EXISTS (SELECT 1 FROM lexeme_edges edge JOIN lexeme_edge_sources citation ON citation.edge_id=edge.id WHERE edge.editorial_status='reviewed' AND (edge.child_node_id=node.id OR edge.parent_node_id=node.id));"

check_zero "graph-only nodes disclose provenance and cited adjacency" \
  "SELECT COUNT(*) FROM lexeme_nodes node WHERE node.editorial_status='reviewed' AND NOT EXISTS (SELECT 1 FROM form_node_links link WHERE link.node_id=node.id) AND ((node.notes IS NULL OR TRIM(node.notes)='') OR NOT EXISTS (SELECT 1 FROM lexeme_edges edge JOIN lexeme_edge_sources citation ON citation.edge_id=edge.id WHERE edge.child_node_id=node.id OR edge.parent_node_id=node.id));"

check_zero "edge claims include sound, meaning, scholar, and confidence" \
  "SELECT COUNT(*) FROM relations WHERE TRIM(sound_change)='' OR TRIM(semantic_change)='' OR TRIM(scholar)='' OR TRIM(confidence)='';"

check_zero "every reviewed canonical transformation has complete sound and semantic claims" \
  "SELECT COUNT(*) FROM lexeme_edges WHERE editorial_status='reviewed' AND (TRIM(sound_change)='' OR TRIM(semantic_change)='' OR TRIM(scholar)='' OR TRIM(confidence)='');"

check_zero "confidence vocabulary is controlled" \
  "SELECT (SELECT COUNT(*) FROM relations WHERE confidence NOT IN ('established','probable','proposed','speculative','boundary')) + (SELECT COUNT(*) FROM disputes WHERE confidence NOT IN ('established','probable','proposed','speculative','boundary')) + (SELECT COUNT(*) FROM attestations WHERE confidence NOT IN ('established','probable','proposed','speculative','boundary')) + (SELECT COUNT(*) FROM context_links WHERE confidence NOT IN ('established','probable','proposed','speculative','boundary'));"

check_zero "source stances are controlled" \
  "SELECT (SELECT COUNT(*) FROM relation_sources WHERE stance NOT IN ('supports','challenges','context','contradicts')) + (SELECT COUNT(*) FROM lexeme_edge_sources WHERE stance NOT IN ('supports','challenges','context','contradicts')) + (SELECT COUNT(*) FROM context_link_sources WHERE stance NOT IN ('supports','challenges','context','contradicts')) + (SELECT COUNT(*) FROM leaderboard_claim_sources WHERE stance NOT IN ('supports','challenges','context','contradicts')) + (SELECT COUNT(*) FROM dispute_sources WHERE stance NOT IN ('supports','challenges','context','contradicts')) + (SELECT COUNT(*) FROM place_sources WHERE stance NOT IN ('supports','challenges','context','contradicts')) + (SELECT COUNT(*) FROM candidate_resolution_sources WHERE stance NOT IN ('supports','challenges','context','contradicts'));"

check_zero "candidate resolutions use controlled, complete decisions" \
  "SELECT COUNT(*) FROM candidate_resolutions WHERE disposition NOT IN ('represented_variant','merged_with_existing_lexeme','not_a_lexeme','duplicate_candidate') OR TRIM(form)='' OR normalized_form<>LOWER(TRIM(form)) OR TRIM(language)='' OR TRIM(explanation)='' OR editorial_status NOT IN ('reviewed','draft');"

check_zero "reviewed candidate resolutions match their canonical identity" \
  "SELECT COUNT(*) FROM candidate_resolutions resolution JOIN lexeme_nodes node ON node.id=resolution.canonical_node_id JOIN languages language ON language.id=node.language_id WHERE resolution.editorial_status='reviewed' AND (LOWER(TRIM(node.form))<>resolution.normalized_form OR LOWER(TRIM(language.name))<>LOWER(TRIM(resolution.language)) OR node.editorial_status<>'reviewed');"

check_zero "reviewed candidate resolutions have multiple located sources" \
  "SELECT COUNT(*) FROM candidate_resolutions resolution WHERE resolution.editorial_status='reviewed' AND ((SELECT COUNT(DISTINCT source_id) FROM candidate_resolution_sources citation WHERE citation.resolution_id=resolution.id)<2 OR EXISTS (SELECT 1 FROM candidate_resolution_sources citation WHERE citation.resolution_id=resolution.id AND (TRIM(citation.locator)='' OR TRIM(citation.evidence_note)='')));"

check_zero "reconstructed forms visibly carry an asterisk" \
  "SELECT COUNT(*) FROM forms WHERE status='reconstructed' AND form NOT LIKE '*%';"

check_zero "attested forms do not masquerade as reconstructions" \
  "SELECT COUNT(*) FROM forms WHERE status='attested' AND form LIKE '*%';"

check_zero "non-boundary forms have ordered numeric chronology" \
  "SELECT COUNT(*) FROM forms WHERE (status<>'boundary' AND date_start IS NULL) OR (date_start IS NOT NULL AND date_end IS NOT NULL AND date_start>date_end);"

check_zero "geographic coordinates are paired and bounded" \
  "SELECT COUNT(*) FROM places WHERE (latitude_e6 IS NULL)<>(longitude_e6 IS NULL) OR latitude_e6 NOT BETWEEN -90000000 AND 90000000 OR longitude_e6 NOT BETWEEN -180000000 AND 180000000;"

check_zero "journey records use controlled placement confidence" \
  "SELECT COUNT(*) FROM places WHERE geographic_confidence NOT IN ('regional','approximate','broad','global','uncertain') OR TRIM(place)='' OR TRIM(date_label)='' OR TRIM(note)='';"

check_zero "every dossier journey is a contiguous sequence from one" \
  "SELECT COUNT(*) FROM (SELECT entry_id, COUNT(*) AS stages, MIN(step_order) AS first_step, MAX(step_order) AS last_step, COUNT(DISTINCT step_order) AS distinct_steps FROM places GROUP BY entry_id HAVING first_step<>1 OR last_step<>stages OR distinct_steps<>stages);"

check_zero "journey citations carry an exact locator and evidence note" \
  "SELECT COUNT(*) FROM place_sources WHERE TRIM(locator)='' OR TRIM(evidence_note)='';"

check_zero "journey temporal precision uses the controlled vocabulary" \
  "SELECT COUNT(*) FROM places WHERE temporal_precision NOT IN ('exact','range','century','circa','open','before','unresolved') OR TRIM(temporal_note)='';"

check_zero "journey temporal bounds agree with their precision" \
  "SELECT COUNT(*) FROM places WHERE (temporal_precision='exact' AND (date_start IS NULL OR date_end IS NULL OR date_start<>date_end)) OR (temporal_precision IN ('range','century') AND (date_start IS NULL OR date_end IS NULL OR date_start>=date_end)) OR (temporal_precision='circa' AND (date_start IS NULL OR date_end IS NULL OR date_start>date_end)) OR (temporal_precision='open' AND (date_start IS NULL OR date_end IS NOT NULL)) OR (temporal_precision='before' AND (date_start IS NOT NULL OR date_end IS NULL)) OR (temporal_precision='unresolved' AND (date_start IS NOT NULL OR date_end IS NOT NULL));"

check_zero "journey temporal intervals are ordered" \
  "SELECT COUNT(*) FROM places WHERE date_start IS NOT NULL AND date_end IS NOT NULL AND date_start>date_end;"

check_zero "numeric journey chronology is directly cited" \
  "SELECT COUNT(*) FROM places place WHERE (place.date_start IS NOT NULL OR place.date_end IS NOT NULL) AND NOT EXISTS (SELECT 1 FROM place_sources citation WHERE citation.place_id=place.id);"

check_zero "attestations attach only to attested forms and named sources" \
  "SELECT COUNT(*) FROM attestations a JOIN forms f ON f.id=a.form_id WHERE f.status<>'attested' OR a.source_id IS NULL;"

check_zero "attestation years fall within their attached form chronology" \
  "SELECT COUNT(*) FROM attestations a JOIN forms f ON f.id=a.form_id WHERE a.year IS NOT NULL AND ((f.date_start IS NOT NULL AND a.year<f.date_start) OR (f.date_end IS NOT NULL AND a.year>f.date_end));"

check_zero "witness types use the controlled evidence vocabulary" \
  "SELECT COUNT(*) FROM attestations WHERE witness_type NOT IN ('lexicographic_first_use','lexical_corpus_record','lexical_corpus','manuscript','inscription','printed_book','periodical','newspaper','playbill');"

check_zero "direct primary claims require object type, exact locator, repository, shelfmark, excerpt, and facsimile" \
  "SELECT COUNT(*) FROM attestations WHERE directly_inspected=1 AND (witness_type NOT IN ('manuscript','inscription','printed_book','periodical','newspaper','playbill') OR repository IS NULL OR TRIM(repository)='' OR shelfmark IS NULL OR TRIM(shelfmark)='' OR locator IS NULL OR TRIM(locator)='' OR excerpt IS NULL OR TRIM(excerpt)='' OR facsimile_url NOT LIKE 'https://%');"

check_zero "primary-object records use dedicated digitized sources and linked facsimiles" \
  "SELECT COUNT(*) FROM attestations attestation JOIN sources source ON source.id=attestation.source_id WHERE attestation.witness_type IN ('manuscript','inscription','printed_book','periodical','newspaper','playbill') AND (source.source_type<>'digitized_primary_source' OR attestation.facsimile_url NOT LIKE 'https://%');"

check_zero "direct inspections separate the catalog from the facsimile and disclose claim limits" \
  "SELECT COUNT(*) FROM attestations attestation JOIN sources source ON source.id=attestation.source_id WHERE attestation.directly_inspected=1 AND (attestation.editorial_note IS NULL OR TRIM(attestation.editorial_note)='' OR source.url=attestation.facsimile_url);"

check_zero "every directly inspected witness has one reviewed inspection record" \
  "SELECT COUNT(*) FROM attestations attestation WHERE attestation.directly_inspected=1 AND (SELECT COUNT(*) FROM witness_inspections inspection WHERE inspection.attestation_id=attestation.id AND inspection.editorial_status='reviewed')<>1;"

check_zero "inspection records never promote an uninspected witness" \
  "SELECT COUNT(*) FROM witness_inspections inspection JOIN attestations attestation ON attestation.id=inspection.attestation_id WHERE attestation.directly_inspected<>1;"

check_zero "inspection records preserve method, observation, locator, artifact, role, date, and claim limit" \
  "SELECT COUNT(*) FROM witness_inspections WHERE method NOT IN ('visual_facsimile') OR TRIM(observed_form)='' OR TRIM(observed_context)='' OR TRIM(exact_locator)='' OR artifact_url NOT LIKE 'https://%' OR TRIM(inspector_role)='' OR inspection_date NOT GLOB '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]' OR TRIM(claim_scope)='' OR editorial_status<>'reviewed';"

check_zero "inspection artifacts match the directly inspected facsimiles" \
  "SELECT COUNT(*) FROM witness_inspections inspection JOIN attestations attestation ON attestation.id=inspection.attestation_id WHERE inspection.artifact_url<>attestation.facsimile_url;"

check_zero "source-reported attestations disclose their evidence limit" \
  "SELECT COUNT(*) FROM attestations WHERE directly_inspected=0 AND (editorial_note IS NULL OR TRIM(editorial_note)='');"

check_zero "reviewed dossiers have disputes, places, relatives, and attestations" \
  "SELECT COUNT(*) FROM entries e WHERE e.editorial_status='reviewed' AND ((SELECT COUNT(*) FROM disputes d WHERE d.entry_id=e.id)=0 OR (SELECT COUNT(*) FROM places p WHERE p.entry_id=e.id)=0 OR (SELECT COUNT(*) FROM relatives r WHERE r.entry_id=e.id)=0 OR (SELECT COUNT(*) FROM attestations a JOIN forms f ON f.id=a.form_id WHERE f.entry_id=e.id)=0);"

check_zero "citations use secure web URLs" \
  "SELECT COUNT(*) FROM sources WHERE url NOT LIKE 'https://%';"

check_zero "source citation keys are permanent URL-safe identifiers" \
  "SELECT COUNT(*) FROM sources WHERE TRIM(citation_key)='' OR citation_key GLOB '*[^a-z0-9-]*' OR citation_key LIKE '-%' OR citation_key LIKE '%-' OR citation_key LIKE '%--%';"

check_zero "every source has at least one live evidence link" \
  "SELECT COUNT(*) FROM sources source WHERE NOT EXISTS (SELECT 1 FROM lexeme_edge_sources citation WHERE citation.source_id=source.id) AND NOT EXISTS (SELECT 1 FROM relation_sources citation WHERE citation.source_id=source.id) AND NOT EXISTS (SELECT 1 FROM attestations attestation WHERE attestation.source_id=source.id) AND NOT EXISTS (SELECT 1 FROM relatives relative WHERE relative.source_id=source.id) AND NOT EXISTS (SELECT 1 FROM context_link_sources citation WHERE citation.source_id=source.id) AND NOT EXISTS (SELECT 1 FROM leaderboard_claim_sources citation WHERE citation.source_id=source.id) AND NOT EXISTS (SELECT 1 FROM dispute_sources citation WHERE citation.source_id=source.id) AND NOT EXISTS (SELECT 1 FROM place_sources citation WHERE citation.source_id=source.id) AND NOT EXISTS (SELECT 1 FROM candidate_resolution_sources citation WHERE citation.source_id=source.id);"

check_zero "every dispute has direct located evidence" \
  "SELECT COUNT(*) FROM disputes dispute WHERE NOT EXISTS (SELECT 1 FROM dispute_sources citation WHERE citation.dispute_id=dispute.id AND citation.stance='supports') OR EXISTS (SELECT 1 FROM dispute_sources citation WHERE citation.dispute_id=dispute.id AND (TRIM(citation.locator)='' OR TRIM(citation.evidence_note)=''));"

check_zero "leaderboard ranks descend by unveiling score" \
  "SELECT COUNT(*) FROM leaderboard_entries current JOIN leaderboard_entries previous ON previous.rank=current.rank-1 WHERE current.unveiling_score>previous.unveiling_score;"

check_zero "leaderboard ranks are contiguous from one" \
  "SELECT CASE WHEN COUNT(*)=0 THEN 0 WHEN MIN(rank)=1 AND MAX(rank)=COUNT(*) AND COUNT(DISTINCT rank)=COUNT(*) THEN 0 ELSE 1 END FROM leaderboard_entries;"

check_zero "leaderboard reveals name a root, path, reason, type, and valid featured order" \
  "SELECT (SELECT COUNT(*) FROM leaderboard_entries WHERE TRIM(root_form)='' OR TRIM(root_language)='' OR TRIM(root_gloss)='' OR root_status NOT IN ('attested','reconstructed') OR TRIM(transformation_path)='' OR TRIM(unveiling_reason)='' OR reveal_type NOT IN ('root_revelation','semantic_migration','semantic_history','myth_correction') OR unveiling_score NOT BETWEEN 0 AND 100) + (SELECT CASE WHEN COUNT(*)=0 THEN 1 WHEN MIN(featured_rank)=1 AND MAX(featured_rank)=COUNT(*) AND COUNT(DISTINCT featured_rank)=COUNT(*) THEN 0 ELSE 1 END FROM leaderboard_entries WHERE featured_rank IS NOT NULL) + (SELECT COUNT(*) FROM leaderboard_entries WHERE featured_rank IS NOT NULL AND reveal_type='myth_correction');"

check_zero "leaderboard entries resolve to reviewed dossiers" \
  "SELECT COUNT(*) FROM leaderboard_entries board LEFT JOIN entries e ON e.id=board.entry_id WHERE e.id IS NULL OR e.editorial_status<>'reviewed';"

check_zero "every leaderboard reveal has direct claim-level evidence" \
  "SELECT COUNT(*) FROM leaderboard_entries board WHERE NOT EXISTS (SELECT 1 FROM leaderboard_claim_sources citation WHERE citation.leaderboard_entry_id=board.id) OR EXISTS (SELECT 1 FROM leaderboard_claim_sources citation WHERE citation.leaderboard_entry_id=board.id AND (TRIM(citation.evidence_note)='' OR citation.locator IS NULL OR TRIM(citation.locator)=''));"

check_zero "rabbit holes use distinct reviewed endpoints and bounded scores" \
  "SELECT COUNT(*) FROM rabbit_holes rabbit JOIN entries source ON source.id=rabbit.from_entry_id JOIN entries target ON target.id=rabbit.to_entry_id WHERE rabbit.from_entry_id=rabbit.to_entry_id OR source.editorial_status<>'reviewed' OR target.editorial_status<>'reviewed' OR rabbit.surprise_score<0 OR rabbit.surprise_score>100 OR TRIM(rabbit.evidence_grade)='';"

check_zero "context links use distinct reviewed endpoints and complete claims" \
  "SELECT COUNT(*) FROM context_links link JOIN entries source ON source.id=link.from_entry_id JOIN entries target ON target.id=link.to_entry_id WHERE link.from_entry_id=link.to_entry_id OR source.editorial_status<>'reviewed' OR target.editorial_status<>'reviewed' OR TRIM(link.link_type)='' OR TRIM(link.title)='' OR TRIM(link.explanation)='' OR TRIM(link.scholar)='';"

check_zero "every reviewed context link cites at least one source" \
  "SELECT COUNT(*) FROM context_links link WHERE link.editorial_status='reviewed' AND NOT EXISTS (SELECT 1 FROM context_link_sources source WHERE source.context_link_id=link.id);"

check_zero "each rabbit hole has a lexical path or explicit context link" \
  "WITH RECURSIVE endpoints AS (SELECT rabbit.id AS pair_id, rabbit.from_entry_id AS source_entry, rabbit.to_entry_id AS target_entry, source_link.node_id AS source_node, target_link.node_id AS target_node FROM rabbit_holes rabbit JOIN forms source_form ON source_form.entry_id=rabbit.from_entry_id AND source_form.step_order=1 JOIN form_node_links source_link ON source_link.form_id=source_form.id JOIN forms target_form ON target_form.entry_id=rabbit.to_entry_id AND target_form.step_order=1 JOIN form_node_links target_link ON target_link.form_id=target_form.id WHERE rabbit.editorial_status='reviewed'), walk(pair_id,node_id,target_node,node_path,depth) AS (SELECT pair_id,source_node,target_node,','||source_node||',',0 FROM endpoints UNION ALL SELECT walk.pair_id,CASE WHEN edge.child_node_id=walk.node_id THEN edge.parent_node_id ELSE edge.child_node_id END,walk.target_node,walk.node_path||CASE WHEN edge.child_node_id=walk.node_id THEN edge.parent_node_id ELSE edge.child_node_id END||',',walk.depth+1 FROM walk JOIN lexeme_edges edge ON edge.child_node_id=walk.node_id OR edge.parent_node_id=walk.node_id WHERE walk.depth<12 AND instr(walk.node_path,','||CASE WHEN edge.child_node_id=walk.node_id THEN edge.parent_node_id ELSE edge.child_node_id END||',')=0) SELECT COUNT(*) FROM endpoints WHERE NOT EXISTS (SELECT 1 FROM walk WHERE walk.pair_id=endpoints.pair_id AND walk.node_id=endpoints.target_node) AND NOT EXISTS (SELECT 1 FROM context_links link WHERE link.editorial_status='reviewed' AND ((link.from_entry_id=endpoints.source_entry AND link.to_entry_id=endpoints.target_entry) OR (link.from_entry_id=endpoints.target_entry AND link.to_entry_id=endpoints.source_entry)));"

check_zero "evidence intake uses controlled workflow vocabularies" \
  "SELECT COUNT(*) FROM contribution_submissions WHERE proposal_type NOT IN ('new_dossier','ancestry_edge','sound_change','semantic_change','attestation','dispute','correction') OR confidence_suggestion NOT IN ('established','probable','proposed','speculative','unknown') OR status NOT IN ('submitted','triaged','researching','accepted','rejected');"

check_zero "evidence packets preserve source locations, claim limits, and secure URLs" \
  "SELECT COUNT(*) FROM contribution_submissions WHERE TRIM(claim_text)='' OR TRIM(source_locator)='' OR TRIM(evidence_note)='' OR TRIM(limits_note)='' OR source_url NOT LIKE 'https://%' OR TRIM(normalized_subject)='';"

check_zero "contribution receipts and contributor fingerprints remain unique" \
  "SELECT (SELECT COUNT(*) FROM (SELECT receipt_key FROM contribution_submissions GROUP BY receipt_key HAVING COUNT(*)>1)) + (SELECT COUNT(*) FROM (SELECT contributor_user_id,fingerprint FROM contribution_submissions GROUP BY contributor_user_id,fingerprint HAVING COUNT(*)>1));"

check_zero "evidence intake has no foreign-key path into the reviewed graph" \
  "SELECT COUNT(*) FROM pragma_foreign_key_list('contribution_submissions');"

check_zero "editorial reviewer authority is explicit and controlled" \
  "SELECT (SELECT COUNT(*) FROM editorial_reviewers WHERE role NOT IN ('owner','reviewer') OR active NOT IN (0,1) OR TRIM(user_id)='') + CASE WHEN (SELECT COUNT(*) FROM editorial_reviewers WHERE role='owner' AND active=1)=0 THEN 1 ELSE 0 END;"

check_zero "review events follow the permitted workflow" \
  "SELECT COUNT(*) FROM contribution_reviews WHERE NOT ((prior_status='submitted' AND next_status IN ('triaged','rejected')) OR (prior_status='triaged' AND next_status IN ('researching','rejected')) OR (prior_status='researching' AND next_status IN ('accepted','rejected')));"

check_zero "accepted intake records all three verification checks" \
  "SELECT COUNT(*) FROM contribution_reviews WHERE next_status='accepted' AND (source_reproduced<>1 OR locator_verified<>1 OR alternatives_checked<>1);"

check_zero "current packet status resolves to its immutable latest review event" \
  "SELECT COUNT(*) FROM contribution_submissions packet WHERE (packet.status='submitted' AND packet.last_review_key IS NOT NULL) OR (packet.status<>'submitted' AND NOT EXISTS (SELECT 1 FROM contribution_reviews review WHERE review.review_key=packet.last_review_key AND review.submission_id=packet.id AND review.next_status=packet.status AND review.reviewer_user_id=packet.reviewed_by_user_id AND review.review_note=packet.review_note));"

check_zero "editorial review foreign keys stay inside the intake quarantine" \
  "SELECT COUNT(*) FROM (SELECT \"table\" AS target FROM pragma_foreign_key_list('contribution_reviews')) WHERE target NOT IN ('contribution_submissions','editorial_reviewers');"

printf '\nSET-U EVIDENCE GATE: %s invariant checks passed across %s migrations.\n' "$atlas_checks" "${#atlas_migrations[@]}"
sqlite3 -header -column "$atlas_verify_db" "
SELECT 'reviewed dossiers' AS metric, COUNT(*) AS value FROM entries WHERE editorial_status='reviewed'
UNION ALL SELECT 'entry forms', COUNT(*) FROM forms
UNION ALL SELECT 'canonical nodes', COUNT(*) FROM lexeme_nodes
UNION ALL SELECT 'canonical edges', COUNT(*) FROM lexeme_edges
UNION ALL SELECT 'source records', COUNT(*) FROM sources
UNION ALL SELECT 'edge citations', COUNT(*) FROM lexeme_edge_sources
UNION ALL SELECT 'attestations', COUNT(*) FROM attestations
UNION ALL SELECT 'directly inspected witnesses', COUNT(*) FROM attestations WHERE directly_inspected=1
UNION ALL SELECT 'open disputes', COUNT(*) FROM disputes WHERE status='open'
UNION ALL SELECT 'reviewed rabbit holes', COUNT(*) FROM rabbit_holes WHERE editorial_status='reviewed'
UNION ALL SELECT 'reviewed context links', COUNT(*) FROM context_links WHERE editorial_status='reviewed'
UNION ALL SELECT 'truth-ledger citations', COUNT(*) FROM leaderboard_claim_sources
UNION ALL SELECT 'dispute citations', COUNT(*) FROM dispute_sources
UNION ALL SELECT 'quarantined evidence packets', COUNT(*) FROM contribution_submissions
UNION ALL SELECT 'active editorial reviewers', COUNT(*) FROM editorial_reviewers WHERE active=1
UNION ALL SELECT 'immutable intake reviews', COUNT(*) FROM contribution_reviews;
"
