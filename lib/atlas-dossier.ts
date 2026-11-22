export type AtlasSource = {
  id?: number;
  citationKey?: string;
  title?: string;
  author?: string;
  year?: number;
  url?: string;
  locator?: string;
  stance?: string;
  evidenceNote?: string;
};

export type AtlasRelation = {
  id: number;
  canonicalEdgeId: number;
  childFormId: number;
  parentFormId: number;
  relationType: string;
  soundChange: string;
  semanticChange: string;
  scholar: string;
  confidence: string;
  confidenceNote?: string;
  chronologyNote?: string;
  sources?: AtlasSource[];
};

export type AtlasDossier = {
  entry: {
    id: number;
    slug: string;
    headword: string;
    pronunciation: string;
    partOfSpeech: string;
    summary: string;
    contrarianTruth: string;
    editorialStatus: string;
  };
  forms: Array<{
    id: number;
    canonicalNodeId: number;
    stepOrder: number;
    form: string;
    normalizedForm: string;
    senseKey: string;
    transliteration?: string;
    pronunciation?: string;
    status: "attested" | "reconstructed" | "boundary";
    dateLabel: string;
    dateStart?: number;
    dateEnd?: number;
    gloss: string;
    notes?: string;
    languageSlug: string;
    language: string;
    family?: string;
    branch?: string;
    languageReconstructed: number | boolean;
  }>;
  relations: AtlasRelation[];
  relatives: Array<{ form: string; language: string; relation: string; source?: string; sourceUrl?: string; sourceCitationKey?: string }>;
  places: Array<{
    stepOrder: number;
    place: string;
    dateLabel: string;
    note: string;
    latitudeE6?: number;
    longitudeE6?: number;
    geographicConfidence: string;
  }>;
  disputes: Array<{
    id: number;
    title: string;
    position: string;
    confidence: string;
    sourceSummary: string;
    status: string;
    resolutionNote?: string;
    citations: AtlasSource[];
  }>;
  attestations: Array<{
    id: number;
    formId: number;
    dateLabel: string;
    year?: number;
    witness: string;
    locator?: string;
    excerpt?: string;
    confidence: string;
    source: string;
    sourceUrl?: string;
    sourceCitationKey?: string;
    witnessType: string;
    repository?: string;
    shelfmark?: string;
    facsimileUrl?: string;
    directlyInspected: number | boolean;
    editorialNote?: string;
  }>;
};

type EntryRow = {
  id: number;
  slug: string;
  headword: string;
  pronunciation: string;
  part_of_speech: string;
  summary: string;
  contrarian_truth: string;
  editorial_status: string;
};

export async function loadDossier(db: D1Database, word: string): Promise<AtlasDossier | null> {
  const entry = await db.prepare(`
    SELECT id, slug, headword, pronunciation, part_of_speech,
      summary, contrarian_truth, editorial_status
    FROM entries
    WHERE slug = ?1 AND editorial_status = 'reviewed'
  `).bind(word).first<EntryRow>();

  if (!entry) return null;

  const [formsResult, relationsResult, relativesResult, placesResult, disputesResult, attestationsResult] = await Promise.all([
    db.prepare(`
      SELECT f.id, node_link.node_id AS canonicalNodeId,
        f.step_order AS stepOrder, f.form, f.normalized_form AS normalizedForm,
        f.sense_key AS senseKey,
        f.transliteration, f.pronunciation, f.status, f.date_label AS dateLabel,
        f.date_start AS dateStart, f.date_end AS dateEnd, f.gloss, f.notes,
        l.slug AS languageSlug, l.name AS language, l.family, l.branch,
        l.reconstructed AS languageReconstructed
      FROM forms f JOIN languages l ON l.id = f.language_id
      JOIN form_node_links node_link ON node_link.form_id = f.id
      WHERE f.entry_id = ?1 ORDER BY f.step_order
    `).bind(entry.id).all(),
    db.prepare(`
      SELECT r.id, edge_link.edge_id AS canonicalEdgeId,
        r.child_form_id AS childFormId, r.parent_form_id AS parentFormId,
        r.relation_type AS relationType, r.sound_change AS soundChange,
        r.semantic_change AS semanticChange, r.scholar, r.confidence,
        r.confidence_note AS confidenceNote, r.chronology_note AS chronologyNote,
        s.id AS sourceId, s.citation_key AS sourceCitationKey,
        s.title AS source, s.author AS sourceAuthor,
        s.year AS sourceYear, s.url AS sourceUrl, rs.locator, rs.stance,
        rs.evidence_note AS evidenceNote
      FROM relations r
      JOIN relation_edge_links edge_link ON edge_link.relation_id = r.id
      LEFT JOIN relation_sources rs ON rs.relation_id = r.id
      LEFT JOIN sources s ON s.id = rs.source_id
      WHERE r.entry_id = ?1 AND r.editorial_status = 'reviewed'
      ORDER BY r.id, s.id
    `).bind(entry.id).all(),
    db.prepare(`
      SELECT rel.form, rel.language, rel.relation, s.title AS source,
        s.url AS sourceUrl, s.citation_key AS sourceCitationKey
      FROM relatives rel LEFT JOIN sources s ON s.id = rel.source_id
      WHERE rel.entry_id = ?1 ORDER BY rel.id
    `).bind(entry.id).all(),
    db.prepare(`
      SELECT step_order AS stepOrder, place, date_label AS dateLabel, note,
        latitude_e6 AS latitudeE6, longitude_e6 AS longitudeE6,
        geographic_confidence AS geographicConfidence
      FROM places WHERE entry_id = ?1 ORDER BY step_order
    `).bind(entry.id).all(),
    db.prepare(`
      SELECT dispute.id, dispute.title, dispute.position, dispute.confidence,
        dispute.source_summary AS sourceSummary, dispute.status,
        dispute.resolution_note AS resolutionNote,
        source.id AS sourceId, source.citation_key AS sourceCitationKey,
        source.title AS source, source.author AS sourceAuthor,
        source.year AS sourceYear, source.url AS sourceUrl,
        citation.locator, citation.stance, citation.evidence_note AS evidenceNote
      FROM disputes dispute
      LEFT JOIN dispute_sources citation ON citation.dispute_id = dispute.id
      LEFT JOIN sources source ON source.id = citation.source_id
      WHERE dispute.entry_id = ?1
      ORDER BY dispute.id,
        CASE citation.stance WHEN 'supports' THEN 0 WHEN 'challenges' THEN 1 ELSE 2 END,
        source.id
    `).bind(entry.id).all(),
    db.prepare(`
      SELECT a.id, a.form_id AS formId, a.date_label AS dateLabel, a.year,
        a.witness, a.locator, a.excerpt, a.confidence,
        a.witness_type AS witnessType, a.repository, a.shelfmark,
        a.facsimile_url AS facsimileUrl, a.directly_inspected AS directlyInspected,
        a.editorial_note AS editorialNote,
        s.title AS source, s.url AS sourceUrl, s.citation_key AS sourceCitationKey
      FROM attestations a JOIN sources s ON s.id = a.source_id
      JOIN forms f ON f.id = a.form_id
      WHERE f.entry_id = ?1 ORDER BY a.year, a.id
    `).bind(entry.id).all(),
  ]);

  const relationMap = new Map<number, Record<string, unknown>>();
  for (const row of relationsResult.results as Array<Record<string, unknown>>) {
    const id = Number(row.id);
    const source = row.sourceId ? {
      id: row.sourceId,
      citationKey: row.sourceCitationKey,
      title: row.source,
      author: row.sourceAuthor,
      year: row.sourceYear,
      url: row.sourceUrl,
      locator: row.locator,
      stance: row.stance,
      evidenceNote: row.evidenceNote,
    } : null;
    if (!relationMap.has(id)) relationMap.set(id, { ...row, sources: source ? [source] : [] });
    else if (source) (relationMap.get(id)?.sources as unknown[]).push(source);
  }

  const disputeMap = new Map<number, Record<string, unknown>>();
  for (const row of disputesResult.results as Array<Record<string, unknown>>) {
    const id = Number(row.id);
    const citation = row.sourceId ? {
      id: row.sourceId,
      citationKey: row.sourceCitationKey,
      title: row.source,
      author: row.sourceAuthor,
      year: row.sourceYear,
      url: row.sourceUrl,
      locator: row.locator,
      stance: row.stance,
      evidenceNote: row.evidenceNote,
    } : null;
    if (!disputeMap.has(id)) disputeMap.set(id, { ...row, citations: citation ? [citation] : [] });
    else if (citation) (disputeMap.get(id)?.citations as unknown[]).push(citation);
  }

  return {
    entry: {
      id: entry.id,
      slug: entry.slug,
      headword: entry.headword,
      pronunciation: entry.pronunciation,
      partOfSpeech: entry.part_of_speech,
      summary: entry.summary,
      contrarianTruth: entry.contrarian_truth,
      editorialStatus: entry.editorial_status,
    },
    forms: formsResult.results as unknown as AtlasDossier["forms"],
    relations: Array.from(relationMap.values()) as unknown as AtlasDossier["relations"],
    relatives: relativesResult.results as unknown as AtlasDossier["relatives"],
    places: placesResult.results as unknown as AtlasDossier["places"],
    disputes: Array.from(disputeMap.values()) as unknown as AtlasDossier["disputes"],
    attestations: attestationsResult.results as unknown as AtlasDossier["attestations"],
  };
}
