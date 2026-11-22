// Copied from SET-U's app/api/export/route.ts (the live set-u.org export contract) without the Workers GET handler.
// The static build calls exportFromDatabase() with a D1-compatible wrapper over node:sqlite.
import { FRONTIER_COUNT_SQL, FRONTIER_PAGE_SQL } from "./atlas-frontier.ts";
import { DOSSIER_AUDIT_COUNT_SQL, DOSSIER_AUDIT_SELECT } from "./atlas-audit.ts";

const SCHEMA_VERSION = "2026-08-28.107";
const DEFAULT_LIMIT = 250;
const MAX_LIMIT = 1000;

type DatasetName = keyof typeof DATASETS;
type DatasetDefinition = {
  description: string;
  countSql: string;
  pageSql: string;
};

const DATASETS = {
  entries: {
    description: "Reviewed word dossiers and their editorial claims.",
    countSql: "SELECT COUNT(*) AS count FROM entries WHERE editorial_status = 'reviewed'",
    pageSql: `
      SELECT id AS cursor, id, slug, headword, normalized_headword AS normalizedHeadword,
        pronunciation, part_of_speech AS partOfSpeech, summary,
        contrarian_truth AS contrarianTruth, editorial_status AS editorialStatus,
        'https://set-u.org/word/' || slug AS canonicalUrl, updated_at AS updatedAt
      FROM entries
      WHERE editorial_status = 'reviewed' AND id > ?1
      ORDER BY id LIMIT ?2
    `,
  },
  languages: {
    description: "Language and reconstructed-language identities used by canonical nodes.",
    countSql: "SELECT COUNT(*) AS count FROM languages",
    pageSql: `
      SELECT id AS cursor, id, slug, name, family, branch, reconstructed,
        date_start AS dateStart, date_end AS dateEnd, notes
      FROM languages WHERE id > ?1 ORDER BY id LIMIT ?2
    `,
  },
  nodes: {
    description: "Canonical attested, reconstructed, and knowledge-boundary lexeme nodes.",
    countSql: "SELECT COUNT(*) AS count FROM lexeme_nodes WHERE editorial_status = 'reviewed'",
    pageSql: `
      SELECT node.id AS cursor, node.id, node.canonical_key AS canonicalKey,
        node.form, node.normalized_form AS normalizedForm, node.sense_key AS senseKey,
        node.transliteration,
        node.pronunciation, node.status, node.date_label AS dateLabel,
        node.date_start AS dateStart, node.date_end AS dateEnd, node.gloss, node.notes,
        language.id AS languageId, language.slug AS languageSlug, language.name AS language,
        language.family, language.branch, language.reconstructed AS languageReconstructed,
        node.editorial_status AS editorialStatus
      FROM lexeme_nodes node JOIN languages language ON language.id = node.language_id
      WHERE node.editorial_status = 'reviewed' AND node.id > ?1
      ORDER BY node.id LIMIT ?2
    `,
  },
  edges: {
    description: "Canonical directed historical relationships, with sound, meaning, scholar, and confidence claims.",
    countSql: "SELECT COUNT(*) AS count FROM lexeme_edges WHERE editorial_status = 'reviewed'",
    pageSql: `
      SELECT id AS cursor, id, child_node_id AS childNodeId, parent_node_id AS parentNodeId,
        relation_type AS relationType, sound_change AS soundChange,
        semantic_change AS semanticChange, scholar, confidence,
        confidence_note AS confidenceNote, chronology_note AS chronologyNote,
        editorial_status AS editorialStatus
      FROM lexeme_edges
      WHERE editorial_status = 'reviewed' AND id > ?1
      ORDER BY id LIMIT ?2
    `,
  },
  changes: {
    description: "A discovery-ready change ledger of every reviewed canonical transformation, preserving endpoint forms, languages, relation type, sound history, semantic history, scholar, confidence, chronology, and citation totals.",
    countSql: "SELECT COUNT(*) AS count FROM lexeme_edges WHERE editorial_status = 'reviewed'",
    pageSql: `
      SELECT edge.id AS cursor, edge.id,
        edge.child_node_id AS childNodeId, child.form AS childForm,
        child.status AS childStatus, child.gloss AS childGloss,
        child_language.id AS childLanguageId, child_language.name AS childLanguage,
        child_language.family AS childLanguageFamily,
        edge.parent_node_id AS parentNodeId, parent.form AS parentForm,
        parent.status AS parentStatus, parent.gloss AS parentGloss,
        parent_language.id AS parentLanguageId, parent_language.name AS parentLanguage,
        parent_language.family AS parentLanguageFamily,
        edge.relation_type AS relationType, edge.sound_change AS soundChange,
        edge.semantic_change AS semanticChange, edge.scholar, edge.confidence,
        edge.confidence_note AS confidenceNote, edge.chronology_note AS chronologyNote,
        (SELECT COUNT(*) FROM lexeme_edge_sources citation WHERE citation.edge_id = edge.id) AS citationCount,
        (SELECT COUNT(DISTINCT source_id) FROM lexeme_edge_sources citation WHERE citation.edge_id = edge.id) AS distinctSourceCount,
        (SELECT COUNT(DISTINCT relation.entry_id) FROM relation_edge_links link
          JOIN relations relation ON relation.id = link.relation_id WHERE link.edge_id = edge.id) AS dossierCount,
        'https://set-u.org/edge/' || edge.id AS canonicalUrl,
        'https://set-u.org/node/' || child.id AS childCanonicalUrl,
        'https://set-u.org/node/' || parent.id AS parentCanonicalUrl
      FROM lexeme_edges edge
      JOIN lexeme_nodes child ON child.id = edge.child_node_id
      JOIN languages child_language ON child_language.id = child.language_id
      JOIN lexeme_nodes parent ON parent.id = edge.parent_node_id
      JOIN languages parent_language ON parent_language.id = parent.language_id
      WHERE edge.editorial_status = 'reviewed' AND edge.id > ?1
      ORDER BY edge.id LIMIT ?2
    `,
  },
  "edge-citations": {
    description: "Source-level support, challenge, or context attached to canonical graph edges.",
    countSql: "SELECT COUNT(*) AS count FROM lexeme_edge_sources",
    pageSql: `
      SELECT citation.edge_id * 1000000 + citation.source_id AS cursor,
        citation.edge_id AS edgeId, citation.source_id AS sourceId,
        source.citation_key AS sourceCitationKey,
        citation.locator, citation.stance, citation.evidence_note AS evidenceNote,
        'https://set-u.org/edge/' || citation.edge_id AS edgeCanonicalUrl,
        'https://set-u.org/source/' || source.citation_key AS sourceCanonicalUrl
      FROM lexeme_edge_sources citation
      JOIN sources source ON source.id = citation.source_id
      WHERE citation.edge_id * 1000000 + citation.source_id > ?1
      ORDER BY citation.edge_id, citation.source_id LIMIT ?2
    `,
  },
  "descendant-closure": {
    description: "Every reviewed root-to-downstream-edge reachability record, with shortest historical depth; join edgeId to edges and edge-citations for the full evidence chain.",
    countSql: `
      WITH RECURSIVE reachable(root_node_id, node_id, depth) AS (
        SELECT node.id, node.id, 0
        FROM lexeme_nodes node WHERE node.editorial_status = 'reviewed'
        UNION
        SELECT reachable.root_node_id, edge.child_node_id, reachable.depth + 1
        FROM reachable
        JOIN lexeme_edges edge ON edge.parent_node_id = reachable.node_id
        WHERE edge.editorial_status = 'reviewed' AND reachable.depth < 64
      ), closure AS (
        SELECT reachable.root_node_id, edge.id AS edge_id,
          edge.child_node_id AS descendant_node_id, MIN(reachable.depth + 1) AS depth
        FROM reachable
        JOIN lexeme_edges edge ON edge.parent_node_id = reachable.node_id
        WHERE edge.editorial_status = 'reviewed'
        GROUP BY reachable.root_node_id, edge.id
      ) SELECT COUNT(*) AS count FROM closure
    `,
    pageSql: `
      WITH RECURSIVE reachable(root_node_id, node_id, depth) AS (
        SELECT node.id, node.id, 0
        FROM lexeme_nodes node WHERE node.editorial_status = 'reviewed'
        UNION
        SELECT reachable.root_node_id, edge.child_node_id, reachable.depth + 1
        FROM reachable
        JOIN lexeme_edges edge ON edge.parent_node_id = reachable.node_id
        WHERE edge.editorial_status = 'reviewed' AND reachable.depth < 64
      ), closure AS (
        SELECT reachable.root_node_id, edge.id AS edge_id,
          edge.child_node_id AS descendant_node_id, MIN(reachable.depth + 1) AS depth
        FROM reachable
        JOIN lexeme_edges edge ON edge.parent_node_id = reachable.node_id
        WHERE edge.editorial_status = 'reviewed'
        GROUP BY reachable.root_node_id, edge.id
      ), numbered AS (
        SELECT ROW_NUMBER() OVER (ORDER BY closure.root_node_id, closure.edge_id) AS cursor,
          closure.root_node_id AS rootNodeId, root.form AS rootForm,
          closure.edge_id AS edgeId, edge.parent_node_id AS parentNodeId,
          edge.child_node_id AS childNodeId, descendant.form AS descendantForm,
          closure.depth, edge.confidence,
          'https://set-u.org/node/' || closure.root_node_id AS rootUrl,
          'https://set-u.org/node/' || edge.child_node_id AS descendantUrl,
          'https://set-u.org/edge/' || closure.edge_id AS edgeUrl
        FROM closure
        JOIN lexeme_edges edge ON edge.id = closure.edge_id
        JOIN lexeme_nodes root ON root.id = closure.root_node_id
        JOIN lexeme_nodes descendant ON descendant.id = edge.child_node_id
      )
      SELECT cursor, rootNodeId, rootForm, edgeId, parentNodeId, childNodeId,
        descendantForm, depth, confidence, rootUrl, descendantUrl, edgeUrl
      FROM numbered WHERE cursor > ?1 ORDER BY cursor LIMIT ?2
    `,
  },
  families: {
    description: "Every connected component in the reviewed lexical graph, with dossier, node, edge, citation, language, dispute, witness, and truth totals. Historical-context links are excluded.",
    countSql: `
      WITH RECURSIVE reach(origin, node_id) AS (
        SELECT id, id FROM lexeme_nodes WHERE editorial_status = 'reviewed'
        UNION
        SELECT reach.origin,
          CASE WHEN edge.child_node_id = reach.node_id THEN edge.parent_node_id ELSE edge.child_node_id END
        FROM reach JOIN lexeme_edges edge
          ON edge.editorial_status = 'reviewed'
          AND (edge.child_node_id = reach.node_id OR edge.parent_node_id = reach.node_id)
      ), labels AS (
        SELECT origin AS node_id, MIN(node_id) AS family_id FROM reach GROUP BY origin
      ) SELECT COUNT(DISTINCT family_id) AS count FROM labels
    `,
    pageSql: `
      WITH RECURSIVE reach(origin, node_id) AS (
        SELECT id, id FROM lexeme_nodes WHERE editorial_status = 'reviewed'
        UNION
        SELECT reach.origin,
          CASE WHEN edge.child_node_id = reach.node_id THEN edge.parent_node_id ELSE edge.child_node_id END
        FROM reach JOIN lexeme_edges edge
          ON edge.editorial_status = 'reviewed'
          AND (edge.child_node_id = reach.node_id OR edge.parent_node_id = reach.node_id)
      ), labels AS (
        SELECT origin AS node_id, MIN(node_id) AS family_id FROM reach GROUP BY origin
      ), memberships AS (
        SELECT entry.id AS entry_id, entry.slug, entry.headword, label.family_id
        FROM entries entry
        JOIN forms form ON form.entry_id = entry.id AND form.step_order = 1
        JOIN form_node_links link ON link.form_id = form.id
        JOIN labels label ON label.node_id = link.node_id
        WHERE entry.editorial_status = 'reviewed'
      ), family_ids AS (
        SELECT DISTINCT family_id FROM labels
      )
      SELECT family.family_id AS cursor, family.family_id AS familyId,
        'family-' || family.family_id AS familyKey,
        (SELECT COUNT(*) FROM memberships member WHERE member.family_id = family.family_id) AS dossierCount,
        (SELECT GROUP_CONCAT(ordered.headword, ' · ') FROM (
          SELECT member.headword FROM memberships member
          WHERE member.family_id = family.family_id ORDER BY member.headword
        ) ordered) AS memberWords,
        (SELECT COUNT(*) FROM labels label WHERE label.family_id = family.family_id) AS nodeCount,
        (SELECT COUNT(*) FROM lexeme_edges edge JOIN labels label ON label.node_id = edge.child_node_id
          WHERE edge.editorial_status = 'reviewed' AND label.family_id = family.family_id) AS edgeCount,
        (SELECT COUNT(*) FROM lexeme_edge_sources citation JOIN lexeme_edges edge ON edge.id = citation.edge_id
          JOIN labels label ON label.node_id = edge.child_node_id WHERE label.family_id = family.family_id) AS edgeCitationCount,
        (SELECT COUNT(DISTINCT citation.source_id) FROM lexeme_edge_sources citation JOIN lexeme_edges edge ON edge.id = citation.edge_id
          JOIN labels label ON label.node_id = edge.child_node_id WHERE label.family_id = family.family_id) AS distinctSourceCount,
        (SELECT COUNT(DISTINCT node.language_id) FROM labels label JOIN lexeme_nodes node ON node.id = label.node_id
          WHERE label.family_id = family.family_id AND node.status <> 'boundary') AS languageCount,
        (SELECT COUNT(DISTINCT language.family) FROM labels label JOIN lexeme_nodes node ON node.id = label.node_id
          JOIN languages language ON language.id = node.language_id WHERE label.family_id = family.family_id
          AND language.family IS NOT NULL AND TRIM(language.family) <> '') AS languageFamilyCount,
        (SELECT COUNT(*) FROM labels label JOIN lexeme_nodes node ON node.id = label.node_id
          WHERE label.family_id = family.family_id AND node.status = 'attested') AS attestedNodeCount,
        (SELECT COUNT(*) FROM labels label JOIN lexeme_nodes node ON node.id = label.node_id
          WHERE label.family_id = family.family_id AND node.status = 'reconstructed') AS reconstructedNodeCount,
        (SELECT COUNT(*) FROM labels label JOIN lexeme_nodes node ON node.id = label.node_id
          WHERE label.family_id = family.family_id AND node.status = 'boundary') AS boundaryCount,
        (SELECT COUNT(*) FROM disputes dispute JOIN memberships member ON member.entry_id = dispute.entry_id
          WHERE member.family_id = family.family_id AND dispute.status = 'open') AS openDisputeCount,
        (SELECT COUNT(*) FROM attestations attestation JOIN forms form ON form.id = attestation.form_id
          JOIN memberships member ON member.entry_id = form.entry_id WHERE member.family_id = family.family_id) AS attestationCount,
        (SELECT COUNT(*) FROM leaderboard_entries truth JOIN memberships member ON member.entry_id = truth.entry_id
          WHERE member.family_id = family.family_id) AS truthClaimCount,
        'https://set-u.org/families#family-' || family.family_id AS canonicalUrl
      FROM family_ids family WHERE family.family_id > ?1
      ORDER BY family.family_id LIMIT ?2
    `,
  },
  "family-memberships": {
    description: "The exact assignment of every reviewed modern-word dossier to its graph-derived evidence family.",
    countSql: "SELECT COUNT(*) AS count FROM entries WHERE editorial_status = 'reviewed'",
    pageSql: `
      WITH RECURSIVE reach(origin, node_id) AS (
        SELECT id, id FROM lexeme_nodes WHERE editorial_status = 'reviewed'
        UNION
        SELECT reach.origin,
          CASE WHEN edge.child_node_id = reach.node_id THEN edge.parent_node_id ELSE edge.child_node_id END
        FROM reach JOIN lexeme_edges edge
          ON edge.editorial_status = 'reviewed'
          AND (edge.child_node_id = reach.node_id OR edge.parent_node_id = reach.node_id)
      ), labels AS (
        SELECT origin AS node_id, MIN(node_id) AS family_id FROM reach GROUP BY origin
      )
      SELECT entry.id AS cursor, entry.id AS entryId, entry.slug AS entrySlug,
        entry.headword, link.node_id AS headwordNodeId, label.family_id AS familyId,
        'family-' || label.family_id AS familyKey,
        (SELECT COUNT(*) FROM entries peer
          JOIN forms peer_form ON peer_form.entry_id = peer.id AND peer_form.step_order = 1
          JOIN form_node_links peer_link ON peer_link.form_id = peer_form.id
          JOIN labels peer_label ON peer_label.node_id = peer_link.node_id
          WHERE peer.editorial_status = 'reviewed' AND peer_label.family_id = label.family_id) AS familyDossierCount,
        'https://set-u.org/word/' || entry.slug AS dossierCanonicalUrl,
        'https://set-u.org/families#family-' || label.family_id AS familyCanonicalUrl
      FROM entries entry
      JOIN forms form ON form.entry_id = entry.id AND form.step_order = 1
      JOIN form_node_links link ON link.form_id = form.id
      JOIN labels label ON label.node_id = link.node_id
      WHERE entry.editorial_status = 'reviewed' AND entry.id > ?1
      ORDER BY entry.id LIMIT ?2
    `,
  },
  dossiers: {
    description: "Reviewed entry-scoped paths that map editorial dossier forms onto canonical nodes.",
    countSql: "SELECT COUNT(*) AS count FROM forms",
    pageSql: `
      SELECT form.id AS cursor, form.id AS formId, form.entry_id AS entryId,
        entry.slug AS entrySlug, form.step_order AS stepOrder, form.form,
        form.normalized_form AS normalizedForm, form.sense_key AS senseKey,
        form.status, form.date_label AS dateLabel,
        form.date_start AS dateStart, form.date_end AS dateEnd, form.gloss, form.notes,
        form.language_id AS languageId, link.node_id AS canonicalNodeId,
        link.confidence AS canonicalLinkConfidence, link.editorial_note AS canonicalLinkNote
      FROM forms form
      JOIN entries entry ON entry.id = form.entry_id AND entry.editorial_status = 'reviewed'
      JOIN form_node_links link ON link.form_id = form.id
      WHERE form.id > ?1 ORDER BY form.id LIMIT ?2
    `,
  },
  journeys: {
    description: "Ordered geographic and temporal stages behind dossier journey views, including honest null coordinates and placement confidence.",
    countSql: "SELECT COUNT(*) AS count FROM places place JOIN entries entry ON entry.id = place.entry_id WHERE entry.editorial_status = 'reviewed'",
    pageSql: `
      SELECT place.id AS cursor, place.id, place.entry_id AS entryId,
        entry.slug AS entrySlug, place.step_order AS stepOrder,
        place.place, place.date_label AS dateLabel, place.note,
        place.date_start AS dateStart, place.date_end AS dateEnd,
        place.temporal_precision AS temporalPrecision, place.temporal_note AS temporalNote,
        place.latitude_e6 AS latitudeE6, place.longitude_e6 AS longitudeE6,
        place.geographic_confidence AS geographicConfidence,
        CASE WHEN place.date_start IS NULL AND place.date_end IS NULL THEN 0 ELSE 1 END AS hasTemporalBounds,
        CASE WHEN place.latitude_e6 IS NULL OR place.longitude_e6 IS NULL THEN 0 ELSE 1 END AS hasCoordinates,
        CASE WHEN place.latitude_e6 IS NULL OR place.longitude_e6 IS NULL OR place.geographic_confidence = 'global' THEN 0 ELSE 1 END AS hasMapPoint,
        (SELECT COUNT(*) FROM place_sources citation WHERE citation.place_id = place.id) AS citationCount,
        'https://set-u.org/journey/' || place.id AS canonicalUrl,
        'https://set-u.org/word/' || entry.slug AS dossierCanonicalUrl
      FROM places place
      JOIN entries entry ON entry.id = place.entry_id AND entry.editorial_status = 'reviewed'
      WHERE place.id > ?1 ORDER BY place.id LIMIT ?2
    `,
  },
  "timeline-events": {
    description: "Cross-word chronology of reviewed canonical forms and directly cited journey stages with explicit numeric bounds; the two evidence classes remain distinguishable.",
    countSql: `
      SELECT
        (SELECT COUNT(*) FROM lexeme_nodes WHERE editorial_status = 'reviewed' AND date_start IS NOT NULL)
        + (SELECT COUNT(*) FROM places place JOIN entries entry ON entry.id = place.entry_id
          WHERE entry.editorial_status = 'reviewed' AND (place.date_start IS NOT NULL OR place.date_end IS NOT NULL)) AS count
    `,
    pageSql: `
      WITH timeline_events AS (
        SELECT node.id * 2 AS cursor, 'form' AS eventType, node.id AS recordId,
          NULL AS entryId, NULL AS entrySlug, node.form AS title, language.name AS context,
          node.date_label AS dateLabel, node.date_start AS dateStart, node.date_end AS dateEnd,
          CASE WHEN node.date_end IS NULL THEN 'open' WHEN node.date_start = node.date_end THEN 'exact' ELSE 'range' END AS temporalPrecision,
          'Canonical form chronology encoded in the reviewed lexical graph.' AS temporalNote,
          node.gloss AS description, node.status,
          (SELECT COUNT(*) FROM lexeme_edge_sources citation JOIN lexeme_edges edge ON edge.id = citation.edge_id
            WHERE edge.child_node_id = node.id OR edge.parent_node_id = node.id)
          + (SELECT COUNT(*) FROM attestations attestation JOIN form_node_links link ON link.form_id = attestation.form_id
            WHERE link.node_id = node.id) AS evidenceCount,
          'https://set-u.org/node/' || node.id AS canonicalUrl
        FROM lexeme_nodes node JOIN languages language ON language.id = node.language_id
        WHERE node.editorial_status = 'reviewed' AND node.date_start IS NOT NULL

        UNION ALL

        SELECT place.id * 2 + 1 AS cursor, 'journey' AS eventType, place.id AS recordId,
          entry.id AS entryId, entry.slug AS entrySlug, entry.headword AS title, place.place AS context,
          place.date_label AS dateLabel, place.date_start AS dateStart, place.date_end AS dateEnd,
          place.temporal_precision AS temporalPrecision, place.temporal_note AS temporalNote,
          place.note AS description, 'route_stage' AS status,
          (SELECT COUNT(*) FROM place_sources citation WHERE citation.place_id = place.id) AS evidenceCount,
          'https://set-u.org/journey/' || place.id AS canonicalUrl
        FROM places place JOIN entries entry ON entry.id = place.entry_id
        WHERE entry.editorial_status = 'reviewed' AND (place.date_start IS NOT NULL OR place.date_end IS NOT NULL)
      )
      SELECT cursor, eventType, recordId, entryId, entrySlug, title, context, dateLabel,
        dateStart, dateEnd, temporalPrecision, temporalNote, description, status, evidenceCount, canonicalUrl
      FROM timeline_events WHERE cursor > ?1 ORDER BY cursor LIMIT ?2
    `,
  },
  "journey-citations": {
    description: "Direct source stances, locators, and evidence notes attached to geographic and temporal journey-stage claims.",
    countSql: "SELECT COUNT(*) AS count FROM place_sources",
    pageSql: `
      SELECT citation.place_id * 1000000 + citation.source_id AS cursor,
        citation.place_id AS journeyStageId, place.entry_id AS entryId,
        entry.slug AS entrySlug, place.step_order AS stepOrder,
        place.place, place.date_label AS dateLabel,
        citation.source_id AS sourceId, source.citation_key AS sourceCitationKey,
        citation.locator, citation.stance, citation.evidence_note AS evidenceNote,
        'https://set-u.org/journey/' || citation.place_id AS journeyStageCanonicalUrl,
        'https://set-u.org/source/' || source.citation_key AS sourceCanonicalUrl
      FROM place_sources citation
      JOIN places place ON place.id = citation.place_id
      JOIN entries entry ON entry.id = place.entry_id
      JOIN sources source ON source.id = citation.source_id
      WHERE citation.place_id * 1000000 + citation.source_id > ?1
      ORDER BY citation.place_id, citation.source_id LIMIT ?2
    `,
  },
  claims: {
    description: "Entry-scoped reviewed ancestry claims and their canonical-edge mappings.",
    countSql: "SELECT COUNT(*) AS count FROM relations WHERE editorial_status = 'reviewed'",
    pageSql: `
      SELECT relation.id AS cursor, relation.id, relation.entry_id AS entryId,
        entry.slug AS entrySlug, relation.child_form_id AS childFormId,
        relation.parent_form_id AS parentFormId, edge_link.edge_id AS canonicalEdgeId,
        relation.relation_type AS relationType, relation.sound_change AS soundChange,
        relation.semantic_change AS semanticChange, relation.scholar, relation.confidence,
        relation.confidence_note AS confidenceNote, relation.chronology_note AS chronologyNote,
        relation.editorial_status AS editorialStatus
      FROM relations relation
      JOIN entries entry ON entry.id = relation.entry_id
      JOIN relation_edge_links edge_link ON edge_link.relation_id = relation.id
      WHERE relation.editorial_status = 'reviewed' AND relation.id > ?1
      ORDER BY relation.id LIMIT ?2
    `,
  },
  truths: {
    description: "Ranked word revelations with an explicit root, root gloss, transformation path, unveiling rationale, reveal type, evidence grade, and permanent record URLs.",
    countSql: "SELECT COUNT(*) AS count FROM leaderboard_entries",
    pageSql: `
      SELECT board.id AS cursor, board.id, board.rank, board.entry_id AS entryId,
        entry.slug AS entrySlug, board.word, board.claim, board.reveal,
        board.evidence_grade AS evidenceGrade, board.myth_gap_score AS mythGapScore,
        board.unveiling_score AS unveilingScore, board.featured_rank AS featuredRank,
        board.root_form AS rootForm, board.root_language AS rootLanguage,
        board.root_gloss AS rootGloss, board.root_status AS rootStatus,
        board.transformation_path AS transformationPath,
        board.unveiling_reason AS unveilingReason, board.reveal_type AS revealType,
        board.editorial_note AS editorialNote,
        'https://set-u.org/truths#truth-' || board.id AS canonicalUrl,
        'https://set-u.org/word/' || entry.slug AS dossierCanonicalUrl
      FROM leaderboard_entries board
      JOIN entries entry ON entry.id = board.entry_id AND entry.editorial_status = 'reviewed'
      WHERE board.id > ?1 ORDER BY board.id LIMIT ?2
    `,
  },
  "truth-citations": {
    description: "Direct source-level support or context attached to each ranked contrarian reveal.",
    countSql: "SELECT COUNT(*) AS count FROM leaderboard_claim_sources",
    pageSql: `
      SELECT citation.leaderboard_entry_id * 1000000 + citation.source_id AS cursor,
        citation.leaderboard_entry_id AS truthId, board.rank, board.word,
        citation.source_id AS sourceId, source.citation_key AS sourceCitationKey,
        citation.locator, citation.stance, citation.evidence_note AS evidenceNote,
        'https://set-u.org/truths#truth-' || citation.leaderboard_entry_id AS truthCanonicalUrl,
        'https://set-u.org/source/' || source.citation_key AS sourceCanonicalUrl
      FROM leaderboard_claim_sources citation
      JOIN leaderboard_entries board ON board.id = citation.leaderboard_entry_id
      JOIN sources source ON source.id = citation.source_id
      WHERE citation.leaderboard_entry_id * 1000000 + citation.source_id > ?1
      ORDER BY citation.leaderboard_entry_id, citation.source_id LIMIT ?2
    `,
  },
  sources: {
    description: "Bibliographic source register with live usage counts. Linked works retain their own rights and terms.",
    countSql: "SELECT COUNT(*) AS count FROM sources",
    pageSql: `
      SELECT source.id AS cursor, source.id, source.citation_key AS citationKey,
        source.title, source.author, source.year, source.publisher, source.url,
        source.doi, source.source_type AS sourceType,
        (SELECT COUNT(*) FROM lexeme_edge_sources citation WHERE citation.source_id = source.id) AS edgeCitations,
        (SELECT COUNT(*) FROM relation_sources citation WHERE citation.source_id = source.id) AS dossierCitations,
        (SELECT COUNT(*) FROM attestations attestation WHERE attestation.source_id = source.id) AS witnessCitations,
        (SELECT COUNT(*) FROM relatives relative WHERE relative.source_id = source.id) AS relativeCitations,
        (SELECT COUNT(*) FROM context_link_sources citation WHERE citation.source_id = source.id) AS contextCitations,
        (SELECT COUNT(*) FROM leaderboard_claim_sources citation WHERE citation.source_id = source.id) AS truthCitations,
        (SELECT COUNT(*) FROM dispute_sources citation WHERE citation.source_id = source.id) AS disputeCitations,
        (SELECT COUNT(*) FROM place_sources citation WHERE citation.source_id = source.id) AS journeyCitations,
        'https://set-u.org/source/' || source.citation_key AS canonicalUrl
      FROM sources source WHERE source.id > ?1 ORDER BY source.id LIMIT ?2
    `,
  },
  attestations: {
    description: "Source-reported and directly inspected lexical witnesses with explicit provenance status, named sources, and permanent audit URLs.",
    countSql: "SELECT COUNT(*) AS count FROM attestations",
    pageSql: `
      SELECT attestation.id AS cursor, attestation.id, attestation.form_id AS formId,
        link.node_id AS canonicalNodeId, form.entry_id AS entryId,
        entry.slug AS entrySlug, entry.headword AS entryHeadword,
        form.form AS entryForm, language.name AS language,
        attestation.source_id AS sourceId, attestation.date_label AS dateLabel,
        attestation.year, attestation.witness, attestation.locator, attestation.excerpt,
        attestation.confidence, attestation.witness_type AS witnessType,
        attestation.repository, attestation.shelfmark,
        attestation.facsimile_url AS facsimileUrl,
        attestation.directly_inspected AS directlyInspected,
        CASE WHEN attestation.directly_inspected = 1 THEN 'directly_inspected' ELSE 'source_reported' END AS evidenceStatus,
        (SELECT COUNT(*) FROM witness_inspections inspection WHERE inspection.attestation_id = attestation.id AND inspection.editorial_status = 'reviewed') AS inspectionCount,
        attestation.editorial_note AS editorialNote,
        source.citation_key AS sourceCitationKey, source.title AS sourceTitle,
        source.url AS sourceUrl, source.source_type AS sourceType,
        'https://set-u.org/witness/' || attestation.id AS canonicalUrl,
        'https://set-u.org/source/' || source.citation_key AS sourceCanonicalUrl
      FROM attestations attestation
      JOIN forms form ON form.id = attestation.form_id
      JOIN entries entry ON entry.id = form.entry_id AND entry.editorial_status = 'reviewed'
      JOIN languages language ON language.id = form.language_id
      JOIN form_node_links link ON link.form_id = form.id
      JOIN sources source ON source.id = attestation.source_id
      WHERE attestation.id > ?1 ORDER BY attestation.id LIMIT ?2
    `,
  },
  "witness-inspections": {
    description: "Repeatable visual-inspection records for directly inspected primary witnesses, preserving the observed token, context, exact locator, artifact, method, date, role, and claim limit.",
    countSql: "SELECT COUNT(*) AS count FROM witness_inspections WHERE editorial_status = 'reviewed'",
    pageSql: `
      SELECT inspection.id AS cursor, inspection.id,
        inspection.attestation_id AS attestationId,
        entry.id AS entryId, entry.slug AS entrySlug, entry.headword AS entryHeadword,
        form.form AS dossierForm, language.name AS language,
        inspection.inspection_date AS inspectionDate,
        inspection.inspector_role AS inspectorRole, inspection.method,
        inspection.observed_form AS observedForm,
        inspection.observed_context AS observedContext,
        inspection.exact_locator AS exactLocator,
        inspection.artifact_url AS artifactUrl,
        inspection.claim_scope AS claimScope,
        inspection.editorial_status AS editorialStatus,
        'https://set-u.org/witness/' || inspection.attestation_id AS canonicalUrl,
        'https://set-u.org/word/' || entry.slug AS dossierCanonicalUrl
      FROM witness_inspections inspection
      JOIN attestations attestation ON attestation.id = inspection.attestation_id
      JOIN forms form ON form.id = attestation.form_id
      JOIN entries entry ON entry.id = form.entry_id AND entry.editorial_status = 'reviewed'
      JOIN languages language ON language.id = form.language_id
      WHERE inspection.editorial_status = 'reviewed' AND inspection.id > ?1
      ORDER BY inspection.id LIMIT ?2
    `,
  },
  disputes: {
    description: "Competing or unresolved scholarly analyses preserved without false convergence, with permanent audit URLs.",
    countSql: "SELECT COUNT(*) AS count FROM disputes",
    pageSql: `
      SELECT dispute.id AS cursor, dispute.id, dispute.entry_id AS entryId,
        entry.slug AS entrySlug, dispute.title, dispute.position, dispute.confidence,
        dispute.source_summary AS sourceSummary, dispute.status,
        dispute.resolution_note AS resolutionNote,
        (SELECT COUNT(*) FROM dispute_sources citation WHERE citation.dispute_id = dispute.id) AS citationCount,
        'https://set-u.org/dispute/' || dispute.id AS canonicalUrl,
        'https://set-u.org/word/' || entry.slug AS dossierCanonicalUrl
      FROM disputes dispute JOIN entries entry ON entry.id = dispute.entry_id
      WHERE dispute.id > ?1 ORDER BY dispute.id LIMIT ?2
    `,
  },
  "dispute-citations": {
    description: "Direct source stances, locators, and evidence notes attached to scholarly-dispute positions.",
    countSql: "SELECT COUNT(*) AS count FROM dispute_sources",
    pageSql: `
      SELECT citation.dispute_id * 1000000 + citation.source_id AS cursor,
        citation.dispute_id AS disputeId, dispute.entry_id AS entryId,
        entry.slug AS entrySlug, dispute.status, dispute.confidence,
        citation.source_id AS sourceId, source.citation_key AS sourceCitationKey,
        citation.locator, citation.stance, citation.evidence_note AS evidenceNote,
        'https://set-u.org/dispute/' || citation.dispute_id AS disputeCanonicalUrl,
        'https://set-u.org/source/' || source.citation_key AS sourceCanonicalUrl
      FROM dispute_sources citation
      JOIN disputes dispute ON dispute.id = citation.dispute_id
      JOIN entries entry ON entry.id = dispute.entry_id
      JOIN sources source ON source.id = citation.source_id
      WHERE citation.dispute_id * 1000000 + citation.source_id > ?1
      ORDER BY citation.dispute_id, citation.source_id LIMIT ?2
    `,
  },
  "context-links": {
    description: "Sourced historical connections that are explicitly not lexical descent or cognacy.",
    countSql: "SELECT COUNT(*) AS count FROM context_links WHERE editorial_status = 'reviewed'",
    pageSql: `
      SELECT link.id AS cursor, link.id, link.from_entry_id AS fromEntryId,
        source_entry.slug AS fromEntrySlug, link.to_entry_id AS toEntryId,
        target_entry.slug AS toEntrySlug, link.link_type AS linkType,
        link.title, link.explanation, link.scholar, link.confidence,
        link.editorial_status AS editorialStatus
      FROM context_links link
      JOIN entries source_entry ON source_entry.id = link.from_entry_id
      JOIN entries target_entry ON target_entry.id = link.to_entry_id
      WHERE link.editorial_status = 'reviewed' AND link.id > ?1
      ORDER BY link.id LIMIT ?2
    `,
  },
  "context-link-sources": {
    description: "Source-level evidence attached to non-genealogical historical context links.",
    countSql: "SELECT COUNT(*) AS count FROM context_link_sources",
    pageSql: `
      SELECT citation.context_link_id * 1000000 + citation.source_id AS cursor,
        citation.context_link_id AS contextLinkId, citation.source_id AS sourceId,
        source.citation_key AS sourceCitationKey,
        citation.locator, citation.stance, citation.evidence_note AS evidenceNote,
        'https://set-u.org/source/' || source.citation_key AS sourceCanonicalUrl
      FROM context_link_sources citation
      JOIN sources source ON source.id = citation.source_id
      WHERE citation.context_link_id * 1000000 + citation.source_id > ?1
      ORDER BY citation.context_link_id, citation.source_id LIMIT ?2
    `,
  },
  "dossier-audit": {
    description: "A non-composite evidence audit of every reviewed word across lineage, change claims, witnesses, journeys, disputes, network depth, linked sources, and open research tasks.",
    countSql: DOSSIER_AUDIT_COUNT_SQL,
    pageSql: `
      SELECT audit.*,
        'https://set-u.org/audit#dossier-' || audit.slug AS canonicalUrl,
        'https://set-u.org/word/' || audit.slug AS dossierCanonicalUrl
      FROM (${DOSSIER_AUDIT_SELECT}) audit
      WHERE audit.cursor > ?1 ORDER BY audit.cursor LIMIT ?2
    `,
  },
  "lexical-candidates": {
    description: "Evidence-seeded attested or bound forms that appear as cited relatives in the reviewed graph but do not yet have complete dossiers.",
    countSql: `
      WITH candidates AS (
        SELECT MIN(relative.id) AS id
        FROM relatives relative
        JOIN entries entry ON entry.id = relative.entry_id AND entry.editorial_status = 'reviewed'
        JOIN sources source ON source.id = relative.source_id
        WHERE NOT EXISTS (
          SELECT 1 FROM entries existing
          JOIN forms headword_form ON headword_form.entry_id = existing.id AND headword_form.step_order = 1
          JOIN languages headword_language ON headword_language.id = headword_form.language_id
          WHERE existing.editorial_status = 'reviewed'
            AND (
              LOWER(TRIM(existing.headword)) = LOWER(TRIM(relative.form))
              OR LOWER(TRIM(existing.normalized_headword)) = LOWER(TRIM(relative.form))
            )
            AND (
              LOWER(TRIM(headword_language.name)) = LOWER(TRIM(relative.language))
              OR (LOWER(relative.language) LIKE '%english%' AND LOWER(headword_language.name) LIKE '%english%')
              OR (LOWER(TRIM(relative.language)) = 'greek' AND LOWER(headword_language.name) LIKE '%greek%')
            )
        )
        AND NOT EXISTS (
          SELECT 1 FROM lexeme_nodes represented_root
          JOIN languages represented_language ON represented_language.id = represented_root.language_id
          WHERE represented_root.editorial_status = 'reviewed'
            AND represented_root.status = 'reconstructed'
            AND LOWER(TRIM(represented_root.form)) = LOWER(TRIM(relative.form))
            AND (
              LOWER(TRIM(represented_language.name)) = LOWER(TRIM(relative.language))
              OR (LOWER(TRIM(relative.language)) = 'greek' AND LOWER(represented_language.name) LIKE '%greek%')
            )
        )
        AND NOT EXISTS (
          SELECT 1 FROM candidate_resolutions resolution
          WHERE resolution.editorial_status = 'reviewed'
            AND resolution.normalized_form = LOWER(TRIM(relative.form))
            AND LOWER(TRIM(resolution.language)) = LOWER(TRIM(relative.language))
        )
        GROUP BY LOWER(TRIM(relative.form)), relative.language
      ) SELECT COUNT(*) AS count FROM candidates
    `,
    pageSql: `
      WITH candidates AS (
        SELECT MIN(relative.id) AS id, MIN(relative.form) AS form,
          LOWER(TRIM(relative.form)) AS normalizedKey, relative.language,
          COUNT(*) AS evidenceLinks,
          COUNT(DISTINCT relative.entry_id) AS dossierCount,
          COUNT(DISTINCT relative.source_id) AS sourceCount,
          GROUP_CONCAT(DISTINCT relative.relation) AS relationSummary,
          GROUP_CONCAT(DISTINCT entry.slug) AS linkedDossierSlugs,
          GROUP_CONCAT(DISTINCT entry.headword) AS linkedDossiers,
          GROUP_CONCAT(DISTINCT source.citation_key) AS sourceCitationKeys
        FROM relatives relative
        JOIN entries entry ON entry.id = relative.entry_id AND entry.editorial_status = 'reviewed'
        JOIN sources source ON source.id = relative.source_id
        WHERE NOT EXISTS (
          SELECT 1 FROM entries existing
          JOIN forms headword_form ON headword_form.entry_id = existing.id AND headword_form.step_order = 1
          JOIN languages headword_language ON headword_language.id = headword_form.language_id
          WHERE existing.editorial_status = 'reviewed'
            AND (
              LOWER(TRIM(existing.headword)) = LOWER(TRIM(relative.form))
              OR LOWER(TRIM(existing.normalized_headword)) = LOWER(TRIM(relative.form))
            )
            AND (
              LOWER(TRIM(headword_language.name)) = LOWER(TRIM(relative.language))
              OR (LOWER(relative.language) LIKE '%english%' AND LOWER(headword_language.name) LIKE '%english%')
              OR (LOWER(TRIM(relative.language)) = 'greek' AND LOWER(headword_language.name) LIKE '%greek%')
            )
        )
        AND NOT EXISTS (
          SELECT 1 FROM lexeme_nodes represented_root
          JOIN languages represented_language ON represented_language.id = represented_root.language_id
          WHERE represented_root.editorial_status = 'reviewed'
            AND represented_root.status = 'reconstructed'
            AND LOWER(TRIM(represented_root.form)) = LOWER(TRIM(relative.form))
            AND (
              LOWER(TRIM(represented_language.name)) = LOWER(TRIM(relative.language))
              OR (LOWER(TRIM(relative.language)) = 'greek' AND LOWER(represented_language.name) LIKE '%greek%')
            )
        )
        AND NOT EXISTS (
          SELECT 1 FROM candidate_resolutions resolution
          WHERE resolution.editorial_status = 'reviewed'
            AND resolution.normalized_form = LOWER(TRIM(relative.form))
            AND LOWER(TRIM(resolution.language)) = LOWER(TRIM(relative.language))
        )
        GROUP BY LOWER(TRIM(relative.form)), relative.language
      )
      SELECT id AS cursor, id, form, normalizedKey, language,
        CASE WHEN sourceCount >= 2 OR dossierCount >= 2
          THEN 'promotion_ready' ELSE 'evidence_seeded' END AS status,
        70 + MIN(20, sourceCount * 5 + dossierCount * 3) AS priority,
        evidenceLinks, dossierCount, sourceCount, relationSummary,
        linkedDossierSlugs, linkedDossiers, sourceCitationKeys,
        'https://set-u.org/candidates#candidate-' || id AS canonicalUrl
      FROM candidates WHERE id > ?1 ORDER BY id LIMIT ?2
    `,
  },
  "candidate-resolutions": {
    description: "Source-cited editorial decisions that a graph-visible candidate is a represented variant, merged identity, non-lexeme, or duplicate rather than a separate dossier.",
    countSql: "SELECT COUNT(*) AS count FROM candidate_resolutions WHERE editorial_status = 'reviewed'",
    pageSql: `
      SELECT resolution.id AS cursor, resolution.id, resolution.form,
        resolution.normalized_form AS normalizedForm, resolution.language,
        resolution.disposition, resolution.explanation,
        node.id AS canonicalNodeId, node.form AS canonicalNodeForm,
        node.status AS canonicalNodeStatus,
        COUNT(citation.source_id) AS sourceCount,
        GROUP_CONCAT(source.citation_key) AS sourceCitationKeys,
        GROUP_CONCAT(citation.locator) AS sourceLocators,
        'https://set-u.org/node/' || node.id AS canonicalUrl,
        'https://set-u.org/candidates#candidate-resolution-' || resolution.id AS resolutionUrl
      FROM candidate_resolutions resolution
      JOIN lexeme_nodes node ON node.id = resolution.canonical_node_id
      JOIN candidate_resolution_sources citation ON citation.resolution_id = resolution.id
      JOIN sources source ON source.id = citation.source_id
      WHERE resolution.editorial_status = 'reviewed' AND resolution.id > ?1
      GROUP BY resolution.id
      ORDER BY resolution.id LIMIT ?2
    `,
  },
  "research-frontier": {
    description: "A live work queue derived from open disputes, uninspected witnesses, knowledge boundaries, low-confidence edges, thin language representation, and evidence-seeded words awaiting complete dossiers.",
    countSql: FRONTIER_COUNT_SQL,
    pageSql: FRONTIER_PAGE_SQL,
  },
} satisfies Record<string, DatasetDefinition>;

function integerParameter(value: string | null, fallback: number, maximum = Number.MAX_SAFE_INTEGER) {
  const parsed = Number.parseInt(value ?? "", 10);
  if (!Number.isFinite(parsed) || parsed < 0) return fallback;
  return Math.min(parsed, maximum);
}

function csvCell(value: unknown) {
  if (value === null || value === undefined) return "";
  const text = typeof value === "object" ? JSON.stringify(value) : String(value);
  return /[",\r\n]/.test(text) ? `"${text.replaceAll('"', '""')}"` : text;
}

function toCsv(rows: Array<Record<string, unknown>>) {
  if (!rows.length) return "";
  const columns = Object.keys(rows[0]);
  return `${columns.map(csvCell).join(",")}\n${rows.map((row) => columns.map((column) => csvCell(row[column])).join(",")).join("\n")}\n`;
}

function commonHeaders() {
  return {
    "Access-Control-Allow-Origin": "*",
    "Cache-Control": "public, max-age=300, stale-while-revalidate=3600",
    "X-SETU-Schema-Version": SCHEMA_VERSION,
  };
}

function json(data: unknown, status = 200, headers: Record<string, string> = {}) {
  return Response.json(data, { status, headers: { ...commonHeaders(), ...headers } });
}

async function manifest(requestUrl: URL, db: D1Database) {
  const datasets = await Promise.all(Object.entries(DATASETS).map(async ([name, definition]) => {
    const count = await db.prepare(definition.countSql).first<{ count: number }>();
    const base = new URL("/api/export", requestUrl.origin);
    base.searchParams.set("dataset", name);
    return {
      name,
      description: definition.description,
      rows: count?.count ?? 0,
      json: base.toString(),
      csv: `${base.toString()}&format=csv`,
    };
  }));

  return json({
    title: "*SET-U reviewed etymology graph",
    description: "An evidence-backed, traversable genealogy of attested and reconstructed word forms.",
    schemaVersion: SCHEMA_VERSION,
    generatedAt: new Date().toISOString(),
    canonicalSite: "https://set-u.org",
    evidenceContract: "Every reviewed edge carries sound change, semantic change, scholar, confidence, and at least one cited source; every ranked reveal and scholarly dispute has direct claim-level citations; every direct primary-witness claim has a repeatable inspection record; every dossier-audit dimension, frontier task, and lexical-candidate record is derived from authoritative reviewed evidence.",
    license: null,
    licenseNote: "A reuse license for SET-U's original editorial data has not yet been declared. Linked source works retain their own rights and terms.",
    formats: ["json", "csv"],
    pagination: { cursorParameter: "after", defaultLimit: DEFAULT_LIMIT, maximumLimit: MAX_LIMIT },
    datasets,
  });
}

export async function exportFromDatabase(request: Request, db: D1Database) {
  try {
    const requestUrl = new URL(request.url);
    const datasetName = requestUrl.searchParams.get("dataset");
    if (!datasetName) return manifest(requestUrl, db);
    if (!(datasetName in DATASETS)) {
      return json({ error: "Unknown dataset.", available: Object.keys(DATASETS) }, 400);
    }

    const dataset = DATASETS[datasetName as DatasetName];
    const format = requestUrl.searchParams.get("format")?.toLowerCase() ?? "json";
    if (format !== "json" && format !== "csv") return json({ error: "Format must be json or csv." }, 400);

    const after = integerParameter(requestUrl.searchParams.get("after"), 0);
    const limit = integerParameter(requestUrl.searchParams.get("limit"), DEFAULT_LIMIT, MAX_LIMIT) || DEFAULT_LIMIT;
    const result = await db.prepare(dataset.pageSql).bind(after, limit + 1).all<Record<string, unknown>>();
    const hasMore = result.results.length > limit;
    const rows = result.results.slice(0, limit);
    const next = hasMore && rows.length ? Number(rows.at(-1)?.cursor) : null;
    const nextUrl = next === null ? null : new URL(requestUrl.toString());
    if (nextUrl) nextUrl.searchParams.set("after", String(next));
    const paginationHeaders = nextUrl ? { Link: `<${nextUrl.toString()}>; rel="next"` } : {};

    if (format === "csv") {
      return new Response(toCsv(rows), {
        headers: {
          ...commonHeaders(),
          ...paginationHeaders,
          "Content-Type": "text/csv; charset=utf-8",
          "Content-Disposition": `attachment; filename="set-u-${datasetName}-${SCHEMA_VERSION}.csv"`,
        },
      });
    }

    const count = await db.prepare(dataset.countSql).first<{ count: number }>();
    return json({
      schemaVersion: SCHEMA_VERSION,
      dataset: datasetName,
      description: dataset.description,
      generatedAt: new Date().toISOString(),
      totalRows: count?.count ?? 0,
      license: null,
      licenseNote: "Reuse terms for SET-U editorial data are not yet declared. Source works retain their own rights.",
      page: { after, limit, returned: rows.length, hasMore, next },
      data: rows,
    }, 200, paginationHeaders);
  } catch (error) {
    const message = error instanceof Error ? error.message : "The export service is unavailable.";
    return json({ error: message }, 500);
  }
}

export { DATASETS, SCHEMA_VERSION };
