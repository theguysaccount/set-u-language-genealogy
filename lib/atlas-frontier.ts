export type ResearchLane = "dispute" | "witness" | "boundary" | "edge" | "representation" | "journey" | "promotion";

export type ResearchTask = {
  cursor: number;
  taskId: string;
  lane: ResearchLane;
  priority: number;
  title: string;
  subject: string;
  nextAction: string;
  evidenceCount: number;
  canonicalUrl: string;
  confidence: string;
  detail: string;
};

export type ResearchFrontier = {
  metrics: {
    total: number;
    highPriority: number;
    disputes: number;
    witnesses: number;
    boundaries: number;
    edges: number;
    representation: number;
    journeys: number;
    promotions: number;
  };
  tasks: ResearchTask[];
};

export const FRONTIER_TASK_SELECT = `
  SELECT 1000000000 + dispute.id AS cursor,
    'dispute-' || dispute.id AS taskId, 'dispute' AS lane,
    CASE dispute.confidence
      WHEN 'speculative' THEN 99 WHEN 'proposed' THEN 94
      WHEN 'probable' THEN 89 ELSE 84 END AS priority,
    dispute.title AS title, entry.headword AS subject,
    'Compare the located positions, add missing counterevidence, and resolve only when the record warrants convergence.' AS nextAction,
    (SELECT COUNT(*) FROM dispute_sources citation WHERE citation.dispute_id = dispute.id) AS evidenceCount,
    'https://set-u.org/dispute/' || dispute.id AS canonicalUrl,
    dispute.confidence AS confidence, dispute.position AS detail
  FROM disputes dispute
  JOIN entries entry ON entry.id = dispute.entry_id AND entry.editorial_status = 'reviewed'
  WHERE dispute.status = 'open'

  UNION ALL

  SELECT 2000000000 + attestation.id AS cursor,
    'witness-' || attestation.id AS taskId, 'witness' AS lane,
    CASE
      WHEN attestation.facsimile_url IS NOT NULL AND TRIM(attestation.facsimile_url) <> '' THEN 100
      WHEN attestation.witness_type IN ('manuscript','inscription','printed_book','periodical','newspaper','playbill') THEN 96
      WHEN attestation.witness_type = 'lexicographic_first_use' THEN 88
      ELSE 80 END AS priority,
    'Inspect ' || attestation.witness AS title,
    entry.headword || ' / ' || form.form AS subject,
    CASE
      WHEN attestation.facsimile_url IS NOT NULL AND TRIM(attestation.facsimile_url) <> ''
        THEN 'Open the located facsimile, verify the exact object and excerpt, then record what was directly inspected.'
      ELSE 'Locate a stable primary-object facsimile, verify the occurrence, and preserve repository, shelfmark, locator, and claim limits.' END AS nextAction,
    1 AS evidenceCount,
    'https://set-u.org/witness/' || attestation.id AS canonicalUrl,
    attestation.confidence AS confidence,
    COALESCE(attestation.editorial_note, 'The occurrence is currently reported by a source rather than verified against the historical object.') AS detail
  FROM attestations attestation
  JOIN forms form ON form.id = attestation.form_id
  JOIN entries entry ON entry.id = form.entry_id AND entry.editorial_status = 'reviewed'
  WHERE attestation.directly_inspected = 0

  UNION ALL

  SELECT 3000000000 + node.id AS cursor,
    'boundary-' || node.id AS taskId, 'boundary' AS lane,
    82 + MIN(10, (SELECT COUNT(DISTINCT form.entry_id)
      FROM form_node_links link JOIN forms form ON form.id = link.form_id
      WHERE link.node_id = node.id)) AS priority,
    node.form || ' — the trail currently ends' AS title,
    language.name AS subject,
    'Test published deeper reconstructions and competing comparanda; extend the graph only when a cited edge can survive review.' AS nextAction,
    (SELECT COUNT(*) FROM lexeme_edges edge
      JOIN lexeme_edge_sources citation ON citation.edge_id = edge.id
      WHERE edge.child_node_id = node.id OR edge.parent_node_id = node.id) AS evidenceCount,
    'https://set-u.org/node/' || node.id AS canonicalUrl,
    'boundary' AS confidence, node.gloss AS detail
  FROM lexeme_nodes node
  JOIN languages language ON language.id = node.language_id
  WHERE node.editorial_status = 'reviewed' AND node.status = 'boundary'

  UNION ALL

  SELECT 4000000000 + edge.id AS cursor,
    'edge-' || edge.id AS taskId, 'edge' AS lane,
    CASE edge.confidence WHEN 'speculative' THEN 98 ELSE 90 END AS priority,
    child.form || ' → ' || parent.form AS title,
    edge.relation_type AS subject,
    'Find independent comparative support or a published challenge; preserve both positions and revise confidence rather than forcing certainty.' AS nextAction,
    (SELECT COUNT(*) FROM lexeme_edge_sources citation WHERE citation.edge_id = edge.id) AS evidenceCount,
    'https://set-u.org/edge/' || edge.id AS canonicalUrl,
    edge.confidence AS confidence,
    edge.sound_change || ' ' || edge.semantic_change AS detail
  FROM lexeme_edges edge
  JOIN lexeme_nodes child ON child.id = edge.child_node_id
  JOIN lexeme_nodes parent ON parent.id = edge.parent_node_id
  WHERE edge.editorial_status = 'reviewed' AND edge.confidence IN ('proposed','speculative')

  UNION ALL

  SELECT 5000000000 AS cursor,
    'representation-global' AS taskId, 'representation' AS lane,
    95 AS priority,
    'Only ' || COUNT(DISTINCT language.family) || ' attested language families are represented' AS title,
    'world-language coverage' AS subject,
    'Commission reviewed word families from unrelated language families, beginning with expert-led sources and native-language evidence rather than English-only borrowing lists.' AS nextAction,
    COUNT(DISTINCT entry.id) AS evidenceCount,
    'https://set-u.org/coverage' AS canonicalUrl,
    'coverage_gap' AS confidence,
    'The current graph contains attested forms from ' || COUNT(DISTINCT language.id) ||
      ' languages across ' || COUNT(DISTINCT language.family) || ' named families.' AS detail
  FROM languages language
  JOIN forms form ON form.language_id = language.id
  JOIN entries entry ON entry.id = form.entry_id AND entry.editorial_status = 'reviewed'
  WHERE language.reconstructed = 0 AND language.name NOT LIKE 'Beyond secure reconstruction%'

  UNION ALL

  SELECT 5000000000 + language.id AS cursor,
    'representation-' || language.id AS taskId, 'representation' AS lane,
    74 AS priority,
    language.name || ' is represented by only ' || COUNT(DISTINCT entry.id) ||
      CASE COUNT(DISTINCT entry.id) WHEN 1 THEN ' dossier' ELSE ' dossiers' END AS title,
    COALESCE(language.family, 'unclassified') || COALESCE(' / ' || language.branch, '') AS subject,
    'Commission additional reviewed word families and sources from specialists in this language; do not infer balance from raw form counts.' AS nextAction,
    COUNT(DISTINCT form.id) AS evidenceCount,
    'https://set-u.org/search?q=' || REPLACE(language.name, ' ', '%20') AS canonicalUrl,
    'coverage_gap' AS confidence,
    'Current coverage contains ' || COUNT(DISTINCT form.id) || ' entry forms across ' ||
      COUNT(DISTINCT entry.id) || ' reviewed dossiers.' AS detail
  FROM languages language
  JOIN forms form ON form.language_id = language.id
  JOIN entries entry ON entry.id = form.entry_id AND entry.editorial_status = 'reviewed'
  WHERE language.reconstructed = 0 AND language.name NOT LIKE 'Beyond secure reconstruction%'
  GROUP BY language.id
  HAVING COUNT(DISTINCT entry.id) <= 2

  UNION ALL

  SELECT 6000000000 + place.id AS cursor,
    'journey-' || place.id AS taskId, 'journey' AS lane,
    CASE WHEN place.latitude_e6 IS NOT NULL AND place.longitude_e6 IS NOT NULL
      AND place.geographic_confidence <> 'global' THEN 93 ELSE 88 END AS priority,
    'Source ' || place.place || ' as a route stage' AS title,
    entry.headword || ' / ' || place.date_label AS subject,
    'Locate a source that directly supports or qualifies this geographic and temporal stage; record its exact locator, stance, and evidentiary contribution.' AS nextAction,
    1 AS evidenceCount,
    'https://set-u.org/journey/' || place.id AS canonicalUrl,
    'provenance_gap' AS confidence,
    place.note || ' Placement mode: ' || place.geographic_confidence || '.' AS detail
  FROM places place
  JOIN entries entry ON entry.id = place.entry_id AND entry.editorial_status = 'reviewed'
  WHERE NOT EXISTS (SELECT 1 FROM place_sources citation WHERE citation.place_id = place.id)

  UNION ALL

  SELECT 7000000000 + candidate.id AS cursor,
    'promotion-' || candidate.id AS taskId, 'promotion' AS lane,
    70 + MIN(20, candidate.sourceCount * 5 + candidate.dossierCount * 3) AS priority,
    'Build the full ' || candidate.form || ' dossier' AS title,
    candidate.language || ' / ' || candidate.dossierCount ||
      CASE candidate.dossierCount WHEN 1 THEN ' connected dossier' ELSE ' connected dossiers' END AS subject,
    'Verify a dedicated headword source and historical witness, then add the ordered ancestry, route, disputes, relatives, confidence claims, and knowledge boundary required for a full dossier.' AS nextAction,
    candidate.evidenceLinks AS evidenceCount,
    'https://set-u.org/candidates#candidate-' || candidate.id AS canonicalUrl,
    CASE WHEN candidate.sourceCount >= 2 OR candidate.dossierCount >= 2
      THEN 'promotion_ready' ELSE 'evidence_seeded' END AS confidence,
    'Already linked through ' || candidate.relations || ' to ' || candidate.dossiers ||
      '. Existing anchors: ' || candidate.sourceCount ||
      CASE candidate.sourceCount WHEN 1 THEN ' source.' ELSE ' sources.' END AS detail
  FROM (
    SELECT MIN(relative.id) AS id, MIN(relative.form) AS form, relative.language,
      COUNT(*) AS evidenceLinks,
      COUNT(DISTINCT relative.entry_id) AS dossierCount,
      COUNT(DISTINCT relative.source_id) AS sourceCount,
      GROUP_CONCAT(DISTINCT relative.relation) AS relations,
      GROUP_CONCAT(DISTINCT entry.headword) AS dossiers
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
  ) candidate
`;

export const FRONTIER_COUNT_SQL = `SELECT COUNT(*) AS count FROM (${FRONTIER_TASK_SELECT}) frontier`;

export const FRONTIER_PAGE_SQL = `
  SELECT * FROM (${FRONTIER_TASK_SELECT}) frontier
  WHERE cursor > ?1 ORDER BY cursor LIMIT ?2
`;

export async function loadResearchFrontier(db: D1Database): Promise<ResearchFrontier> {
  const rows = await db.prepare(`
    SELECT * FROM (${FRONTIER_TASK_SELECT}) frontier
    ORDER BY priority DESC, cursor
  `).all<ResearchTask>();
  const tasks = rows.results.map((task) => ({
    ...task,
    cursor: Number(task.cursor),
    priority: Number(task.priority),
    evidenceCount: Number(task.evidenceCount),
  }));
  const count = (lane: ResearchLane) => tasks.filter((task) => task.lane === lane).length;
  return {
    metrics: {
      total: tasks.length,
      highPriority: tasks.filter((task) => task.priority >= 90).length,
      disputes: count("dispute"),
      witnesses: count("witness"),
      boundaries: count("boundary"),
      edges: count("edge"),
      representation: count("representation"),
      journeys: count("journey"),
      promotions: count("promotion"),
    },
    tasks,
  };
}
