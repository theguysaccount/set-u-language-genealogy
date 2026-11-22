export type AuditGap = "witness" | "facsimile" | "time" | "map" | "dispute" | "island" | "truth";
export type AuditSort = "headword" | "frontier" | "witness" | "time" | "sources" | "family";

export type DossierAudit = {
  cursor: number;
  id: number;
  slug: string;
  headword: string;
  forms: number;
  reconstructedForms: number;
  boundaryForms: number;
  relationships: number;
  completeCitedRelationships: number;
  relationshipCitations: number;
  relationshipSources: number;
  attestations: number;
  directlyInspectedWitnesses: number;
  facsimileWitnesses: number;
  journeyStages: number;
  citedJourneyStages: number;
  journeyCitations: number;
  normalizedJourneyStages: number;
  mappableJourneyPoints: number;
  disputes: number;
  openDisputes: number;
  disputeCitations: number;
  relatives: number;
  rabbitHoles: number;
  truthClaims: number;
  truthCitations: number;
  connectedDossiers: number;
  linkedSources: number;
  frontierTasks: number;
};

export type DossierAuditAtlas = {
  metrics: {
    totalDossiers: number;
    lineageComplete: number;
    changeClaimsComplete: number;
    fullyCitedRoutes: number;
    withDirectWitness: number;
    withFacsimile: number;
    inSharedFamilies: number;
    withContrarianTruth: number;
    filteredDossiers: number;
  };
  dossiers: DossierAudit[];
  gapCounts: Record<AuditGap, number>;
  filters: {
    query: string;
    gap?: AuditGap;
    sort: AuditSort;
  };
};

export type AuditFilters = {
  query?: string;
  gap?: AuditGap;
  sort?: AuditSort;
};

export const DOSSIER_AUDIT_SELECT = `
  WITH RECURSIVE family_reach(origin, node_id) AS (
    SELECT id, id FROM lexeme_nodes WHERE editorial_status = 'reviewed'
    UNION
    SELECT family_reach.origin,
      CASE WHEN edge.child_node_id = family_reach.node_id THEN edge.parent_node_id ELSE edge.child_node_id END
    FROM family_reach JOIN lexeme_edges edge
      ON edge.editorial_status = 'reviewed'
      AND (edge.child_node_id = family_reach.node_id OR edge.parent_node_id = family_reach.node_id)
  ), family_labels AS (
    SELECT origin AS node_id, MIN(node_id) AS family_id
    FROM family_reach GROUP BY origin
  ), entry_families AS (
    SELECT entry.id AS entry_id, label.family_id
    FROM entries entry
    JOIN forms headword_form ON headword_form.entry_id = entry.id AND headword_form.step_order = 1
    JOIN form_node_links link ON link.form_id = headword_form.id
    JOIN family_labels label ON label.node_id = link.node_id
    WHERE entry.editorial_status = 'reviewed'
  )
  SELECT entry.id AS cursor, entry.id, entry.slug, entry.headword,
    (SELECT COUNT(*) FROM forms form WHERE form.entry_id = entry.id) AS forms,
    (SELECT COUNT(*) FROM forms form WHERE form.entry_id = entry.id AND form.status = 'reconstructed') AS reconstructedForms,
    (SELECT COUNT(*) FROM forms form WHERE form.entry_id = entry.id AND form.status = 'boundary') AS boundaryForms,
    (SELECT COUNT(*) FROM relations relation WHERE relation.entry_id = entry.id AND relation.editorial_status = 'reviewed') AS relationships,
    (SELECT COUNT(*) FROM relations relation
      WHERE relation.entry_id = entry.id AND relation.editorial_status = 'reviewed'
        AND TRIM(relation.sound_change) <> '' AND TRIM(relation.semantic_change) <> ''
        AND TRIM(relation.scholar) <> '' AND TRIM(relation.confidence) <> ''
        AND EXISTS (
          SELECT 1 FROM relation_edge_links link
          JOIN lexeme_edge_sources citation ON citation.edge_id = link.edge_id
          WHERE link.relation_id = relation.id
        )
    ) AS completeCitedRelationships,
    (SELECT COUNT(*) FROM lexeme_edge_sources citation
      JOIN relation_edge_links link ON link.edge_id = citation.edge_id
      JOIN relations relation ON relation.id = link.relation_id
      WHERE relation.entry_id = entry.id AND relation.editorial_status = 'reviewed') AS relationshipCitations,
    (SELECT COUNT(DISTINCT citation.source_id) FROM lexeme_edge_sources citation
      JOIN relation_edge_links link ON link.edge_id = citation.edge_id
      JOIN relations relation ON relation.id = link.relation_id
      WHERE relation.entry_id = entry.id AND relation.editorial_status = 'reviewed') AS relationshipSources,
    (SELECT COUNT(*) FROM attestations witness JOIN forms form ON form.id = witness.form_id
      WHERE form.entry_id = entry.id) AS attestations,
    (SELECT COUNT(*) FROM attestations witness JOIN forms form ON form.id = witness.form_id
      WHERE form.entry_id = entry.id AND witness.directly_inspected = 1) AS directlyInspectedWitnesses,
    (SELECT COUNT(*) FROM attestations witness JOIN forms form ON form.id = witness.form_id
      WHERE form.entry_id = entry.id AND witness.facsimile_url IS NOT NULL AND TRIM(witness.facsimile_url) <> '') AS facsimileWitnesses,
    (SELECT COUNT(*) FROM places place WHERE place.entry_id = entry.id) AS journeyStages,
    (SELECT COUNT(*) FROM places place WHERE place.entry_id = entry.id
      AND EXISTS (SELECT 1 FROM place_sources citation WHERE citation.place_id = place.id)) AS citedJourneyStages,
    (SELECT COUNT(*) FROM place_sources citation JOIN places place ON place.id = citation.place_id
      WHERE place.entry_id = entry.id) AS journeyCitations,
    (SELECT COUNT(*) FROM places place WHERE place.entry_id = entry.id
      AND (place.date_start IS NOT NULL OR place.date_end IS NOT NULL)) AS normalizedJourneyStages,
    (SELECT COUNT(*) FROM places place WHERE place.entry_id = entry.id
      AND place.latitude_e6 IS NOT NULL AND place.longitude_e6 IS NOT NULL
      AND place.geographic_confidence <> 'global') AS mappableJourneyPoints,
    (SELECT COUNT(*) FROM disputes dispute WHERE dispute.entry_id = entry.id) AS disputes,
    (SELECT COUNT(*) FROM disputes dispute WHERE dispute.entry_id = entry.id AND dispute.status = 'open') AS openDisputes,
    (SELECT COUNT(*) FROM dispute_sources citation JOIN disputes dispute ON dispute.id = citation.dispute_id
      WHERE dispute.entry_id = entry.id) AS disputeCitations,
    (SELECT COUNT(*) FROM relatives relative WHERE relative.entry_id = entry.id) AS relatives,
    (SELECT COUNT(*) FROM rabbit_holes rabbit WHERE rabbit.editorial_status = 'reviewed'
      AND (rabbit.from_entry_id = entry.id OR rabbit.to_entry_id = entry.id)) AS rabbitHoles,
    (SELECT COUNT(*) FROM leaderboard_entries truth WHERE truth.entry_id = entry.id) AS truthClaims,
    (SELECT COUNT(*) FROM leaderboard_claim_sources citation
      JOIN leaderboard_entries truth ON truth.id = citation.leaderboard_entry_id
      WHERE truth.entry_id = entry.id) AS truthCitations,
    (SELECT COUNT(*) FROM entry_families peer
      WHERE peer.family_id = (SELECT family_id FROM entry_families own WHERE own.entry_id = entry.id)) AS connectedDossiers,
    (SELECT COUNT(*) FROM sources source WHERE
      EXISTS (SELECT 1 FROM relation_sources citation JOIN relations relation ON relation.id = citation.relation_id
        WHERE relation.entry_id = entry.id AND citation.source_id = source.id)
      OR EXISTS (SELECT 1 FROM lexeme_edge_sources citation
        JOIN relation_edge_links link ON link.edge_id = citation.edge_id
        JOIN relations relation ON relation.id = link.relation_id
        WHERE relation.entry_id = entry.id AND citation.source_id = source.id)
      OR EXISTS (SELECT 1 FROM attestations witness JOIN forms form ON form.id = witness.form_id
        WHERE form.entry_id = entry.id AND witness.source_id = source.id)
      OR EXISTS (SELECT 1 FROM relatives relative WHERE relative.entry_id = entry.id AND relative.source_id = source.id)
      OR EXISTS (SELECT 1 FROM dispute_sources citation JOIN disputes dispute ON dispute.id = citation.dispute_id
        WHERE dispute.entry_id = entry.id AND citation.source_id = source.id)
      OR EXISTS (SELECT 1 FROM place_sources citation JOIN places place ON place.id = citation.place_id
        WHERE place.entry_id = entry.id AND citation.source_id = source.id)
      OR EXISTS (SELECT 1 FROM leaderboard_claim_sources citation JOIN leaderboard_entries truth ON truth.id = citation.leaderboard_entry_id
        WHERE truth.entry_id = entry.id AND citation.source_id = source.id)
      OR EXISTS (SELECT 1 FROM context_link_sources citation
        JOIN context_links context ON context.id = citation.context_link_id
        WHERE (context.from_entry_id = entry.id OR context.to_entry_id = entry.id)
          AND citation.source_id = source.id)
    ) AS linkedSources,
    (SELECT COUNT(*) FROM disputes dispute WHERE dispute.entry_id = entry.id AND dispute.status = 'open')
      + (SELECT COUNT(*) FROM attestations witness JOIN forms form ON form.id = witness.form_id
          WHERE form.entry_id = entry.id AND witness.directly_inspected = 0)
      + (SELECT COUNT(*) FROM forms form WHERE form.entry_id = entry.id AND form.status = 'boundary')
      + (SELECT COUNT(*) FROM relations relation WHERE relation.entry_id = entry.id
          AND relation.editorial_status = 'reviewed' AND relation.confidence IN ('proposed','speculative'))
      + (SELECT COUNT(*) FROM places place WHERE place.entry_id = entry.id
          AND NOT EXISTS (SELECT 1 FROM place_sources citation WHERE citation.place_id = place.id)) AS frontierTasks
  FROM entries entry
  WHERE entry.editorial_status = 'reviewed'
`;

export const DOSSIER_AUDIT_COUNT_SQL = `SELECT COUNT(*) AS count FROM (${DOSSIER_AUDIT_SELECT}) audit`;
export const DOSSIER_AUDIT_PAGE_SQL = `SELECT * FROM (${DOSSIER_AUDIT_SELECT}) audit WHERE cursor > ?1 ORDER BY cursor LIMIT ?2`;

function numericAudit(row: DossierAudit): DossierAudit {
  return Object.fromEntries(Object.entries(row).map(([key, value]) => [key, typeof value === "number" || key === "slug" || key === "headword" ? value : Number(value)])) as DossierAudit;
}

function hasCompleteLineage(dossier: DossierAudit) {
  return dossier.boundaryForms === 1 && dossier.relationships === dossier.forms - 1;
}

function hasCompleteChanges(dossier: DossierAudit) {
  return dossier.relationships > 0 && dossier.completeCitedRelationships === dossier.relationships;
}

function matchesGap(dossier: DossierAudit, gap?: AuditGap) {
  if (!gap) return true;
  if (gap === "witness") return dossier.directlyInspectedWitnesses === 0;
  if (gap === "facsimile") return dossier.facsimileWitnesses === 0;
  if (gap === "time") return dossier.normalizedJourneyStages < dossier.journeyStages;
  if (gap === "map") return dossier.mappableJourneyPoints === 0;
  if (gap === "dispute") return dossier.openDisputes > 0;
  if (gap === "island") return dossier.connectedDossiers === 1;
  return dossier.truthClaims === 0;
}

export async function loadDossierAudit(db: D1Database, filters: AuditFilters = {}): Promise<DossierAuditAtlas> {
  const rows = await db.prepare(`${DOSSIER_AUDIT_SELECT} ORDER BY entry.headword COLLATE NOCASE`).all<DossierAudit>();
  const all = rows.results.map(numericAudit);
  const query = filters.query?.trim().toLocaleLowerCase() ?? "";
  const gap = filters.gap;
  const sort = filters.sort ?? "frontier";
  const filtered = all.filter((dossier) => matchesGap(dossier, gap)
    && (!query || `${dossier.headword} ${dossier.slug}`.toLocaleLowerCase().includes(query)));

  filtered.sort((left, right) => {
    if (sort === "headword") return left.headword.localeCompare(right.headword);
    if (sort === "witness") return left.directlyInspectedWitnesses - right.directlyInspectedWitnesses || right.attestations - left.attestations || left.headword.localeCompare(right.headword);
    if (sort === "time") return (left.normalizedJourneyStages / left.journeyStages) - (right.normalizedJourneyStages / right.journeyStages) || left.headword.localeCompare(right.headword);
    if (sort === "sources") return left.linkedSources - right.linkedSources || left.headword.localeCompare(right.headword);
    if (sort === "family") return left.connectedDossiers - right.connectedDossiers || left.headword.localeCompare(right.headword);
    return right.frontierTasks - left.frontierTasks || left.headword.localeCompare(right.headword);
  });

  return {
    metrics: {
      totalDossiers: all.length,
      lineageComplete: all.filter(hasCompleteLineage).length,
      changeClaimsComplete: all.filter(hasCompleteChanges).length,
      fullyCitedRoutes: all.filter((dossier) => dossier.journeyStages > 0 && dossier.citedJourneyStages === dossier.journeyStages).length,
      withDirectWitness: all.filter((dossier) => dossier.directlyInspectedWitnesses > 0).length,
      withFacsimile: all.filter((dossier) => dossier.facsimileWitnesses > 0).length,
      inSharedFamilies: all.filter((dossier) => dossier.connectedDossiers > 1).length,
      withContrarianTruth: all.filter((dossier) => dossier.truthClaims > 0).length,
      filteredDossiers: filtered.length,
    },
    dossiers: filtered,
    gapCounts: {
      witness: all.filter((dossier) => matchesGap(dossier, "witness")).length,
      facsimile: all.filter((dossier) => matchesGap(dossier, "facsimile")).length,
      time: all.filter((dossier) => matchesGap(dossier, "time")).length,
      map: all.filter((dossier) => matchesGap(dossier, "map")).length,
      dispute: all.filter((dossier) => matchesGap(dossier, "dispute")).length,
      island: all.filter((dossier) => matchesGap(dossier, "island")).length,
      truth: all.filter((dossier) => matchesGap(dossier, "truth")).length,
    },
    filters: { query, gap, sort },
  };
}
