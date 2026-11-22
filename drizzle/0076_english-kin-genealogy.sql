-- Promote English kin as the inherited lexical base beside the Germanic title
-- formation behind king. The dossier keeps Middle and Old English attestations,
-- models the documented *kunja- > cynn gemination and umlaut sequence, reuses
-- the exact birth-and-generation spine already reviewed under king, and adds
-- Runic kunni as a graph-only collateral witness rather than an English parent.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(172,'kin','kin','kin','/kɪn/','noun · adjective','The inherited English family word continuing Middle English kin and Old English cynn, from the Germanic lineage formation *kunja- and ultimately the birth-and-generation root *ǵenh₁-.','Kin is not a shortening of king. The historical direction runs the other way at the morphological level: the Germanic king title is built on the older kin or lineage base.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(418,'mw-kin','Kin — definition, etymology, and first known use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/kin',NULL,'historical_dictionary'),
(419,'med-kin','Kin n. — Middle English Dictionary','Robert E. Lewis et al. · Frances McSparran et al.',2001,'University of Michigan Library','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED24246',NULL,'historical_dictionary'),
(420,'bt-cynn','Cyn, cynn — Bosworth–Toller Anglo-Saxon Dictionary','Joseph Bosworth · T. Northcote Toller · online editors',1898,'Bosworth–Toller Anglo-Saxon Dictionary Online','https://bosworthtoller.com/7096',NULL,'historical_dictionary'),
(421,'fulk-comparative-germanic','A Comparative Grammar of the Early Germanic Languages','R. D. Fulk',2018,'John Benjamins Publishing Company · Library of Congress','https://tile.loc.gov/storage-services/master/gdc/gdcebookspublic/20/18/03/18/62/2018031862/2018031862.pdf','10.1075/sigl.3','monograph'),
(422,'adamczyk-sievers-law','Old English Reflexes of Sievers’ Law','Elżbieta Adamczyk',2001,'Studia Anglica Posnaniensia · Adam Mickiewicz University Repository','https://repozytorium.amu.edu.pl/items/62b4e495-6162-4255-8371-12da515ac82f',NULL,'scholarly_article');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1106,172,1,1,'kin','kin','family-relatives','kin','/kɪn/','attested','before the 12th century–today',450,NULL,'a group of common ancestry; relatives; kindred','Merriam-Webster records the noun before the twelfth century and the later attributive adjective. This is distinct from the unrelated diminutive suffix -kin.'),
(1107,172,2,2,'kin / kyn / kun','kin-kyn-kun','family-lineage','kin / kyn / kun',NULL,'attested','Middle English',1150,1500,'race, people, tribe, family, relatives, ancestry, kind, or category','The Middle English Dictionary records a much larger form inventory, including kin, kine, kinne, cinne, kunne, cunne, kenne, and early inflected spellings. The display is representative, not exhaustive.'),
(1108,172,3,3,'cynn','cynn','kindred-race-kind','cynn',NULL,'attested','Old English',450,1150,'kindred, kind, race, nation, people, tribe, family, lineage, generation, or progeny','Bosworth–Toller documents a wide semantic field extending beyond the modern relatives sense. The spelling preserves the umlauted vowel and historically geminated n.'),
(1109,172,5,4,'*kunja-','kunja','kin-lineage-base','*kunja-',NULL,'reconstructed','Proto-Germanic',-500,200,'lineage, family, kin, descent, people, kind, or generation','This is the same canonical Germanic base already exposed as the first component of *kuninga- in the king dossier.'),
(1110,172,6,5,'*gn̥ə-yo-','gneh-yo','kin-generation-formation','*gn̥ə-yo-',NULL,'reconstructed','Proto-Indo-European suffixed zero grade',-4500,-2500,'generation, lineage, or kin formation','American Heritage publishes the suffixed zero-grade formation behind Germanic *kunjam; EWA gives the corresponding laryngeal analysis.'),
(1111,172,6,6,'*ǵenh₁-','genh1','beget-birth-root','*ǵenh₁-',NULL,'reconstructed','oldest reviewed Proto-Indo-European form',-4500,-2500,'give birth; beget; produce, with derivatives for family and tribal groups','The spelling follows current laryngeal notation; American Heritage prints the oldest form as *g̑enh₁- and the centum development as *genh₁-.'),
(1112,172,7,7,'UNKNOWN','unknown','kin-deep-boundary',NULL,NULL,'boundary','before the reviewed birth-and-generation root',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed *ǵenh₁- root.','The trail stops before a reconstructed begetting root is mistaken for an attested first kin group, a biological theory, or a complete account of human social organization.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(935,172,1106,1107,'historical_continuation','Middle English kin survives as the modern spelling and pronunciation after competing medieval variants recede; no unsupported single dialect is treated as the sole donor.','The broad race, people, family, ancestry, kind, and category field narrows in ordinary modern use toward relatives, common ancestry, and kindred relationship.','Merriam-Webster Editors · Middle English Dictionary Editors','established','The form continuity and semantic inventories are directly documented; the edge does not assign every sense loss an invented exact date.','Middle English into modern English.','reviewed'),
(936,172,1107,1108,'inheritance','Middle English kin, kyn, kinne, and related forms continue Old English cynn; y is commonly unrounded toward i and the inherited long consonant ceases to be contrastively represented in the modern monosyllable.','Old English kindred, race, people, tribe, family, lineage, generation, kind, and gender senses continue unevenly into the medieval kin family.','Middle English Dictionary Editors · Joseph Bosworth · T. Northcote Toller','established','The dictionaries publish the direct ancestry and form inventories; the graph does not pretend one spelling changed everywhere at once.','Old English into Middle English.','reviewed'),
(937,172,1108,1109,'inheritance','The published prehistoric sequence is *kunjō > *kunnjō > *kynni > cynn: West Germanic gemination doubles n before j, i-umlaut fronts u to y, and the glide and ending are lost.','The Germanic generation, lineage, kind, and family formation continues as the wide Old English cynn semantic field.','Elżbieta Adamczyk · R. D. Fulk · Rosemarie Lühr','established','Adamczyk prints the exact sequence; Fulk independently identifies Runic kunni as evidence for gemination. The precise dating and analysis of Sievers’ Law remain open.','Proto-Germanic through West Germanic prehistory into attested Old English.','reviewed'),
(938,172,1109,1110,'inheritance','Proto-Germanic k reflects the Indo-European palatal stop under Grimm’s Law, while the suffixed zero-grade formation develops into Germanic *kunja-.','A birth or generation formation develops the lineage, family, and kin field.','Calvert Watkins and American Heritage Dictionary Editors · Rosemarie Lühr','established','American Heritage directly places Germanic *kunjam under *gn̥ə-yo-; EWA publishes the laryngeal correspondence.','Proto-Indo-European to Proto-Germanic reconstruction.','reviewed'),
(939,172,1110,1111,'derivation','The suffixed zero grade suppresses the root e and combines the reduced root with *-yo-; the full oldest root is reconstructed as *ǵenh₁-.','Give birth and beget supply derivatives for generation, lineage, family, and tribal groups.','Calvert Watkins and American Heritage Dictionary Editors · Rosemarie Lühr','established',NULL,'Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(940,172,1111,1112,'knowledge_boundary','No older form is promoted beyond the reviewed *ǵenh₁- root.','The graph stops before comparative reconstruction becomes an origin story for kinship or human society.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word or a universal theory of relatedness.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(935,418,'Kin noun senses, etymology, and first-known-use section','supports','Documents the modern noun and adjective, direct Old English ancestry, and before-twelfth-century horizon.'),
(935,419,'MED24246, Forms and senses 1–5','context','Documents the medieval spelling and semantic range inherited into modern English.'),
(936,419,'MED24246, Forms, Etymology: OE cyn, and senses 1–5','supports','Publishes the Middle English variants, direct Old English ancestry, and broad sense inventory.'),
(936,420,'Headword CYN, cynn and semantic inventory','supports','Publishes the Old English form and source semantic field.'),
(937,422,'Studia Anglica Posnaniensia 36, pp. 64–65, derivation (2b)','supports','Prints *kunjan > *kunnjan > *kynni > cynn with gemination, umlaut, and glide loss.'),
(937,421,'Section 6.15, p. 128; PDF p. 144','supports','Identifies Runic kunni as evidence for West Germanic gemination and equates it with Old English cynn.'),
(937,413,'Column 892: Proto-Germanic *kunja- and Old English cynn','context','Independently aligns the reconstructed Germanic base with the Old English form.'),
(938,414,'genə-, zero-grade *gn̥ə-yo- section','supports','Publishes Germanic *kunjam under the suffixed Indo-European zero grade.'),
(938,413,'Column 892: *kunja- < Indo-European suffixed formation','supports','Gives the corresponding laryngeal derivation for the Germanic kin noun.'),
(939,414,'genə- heading and zero-grade *gn̥ə-yo- section','supports','Publishes the full oldest root, its meaning, and the suffixed zero grade.'),
(939,413,'Column 892: derivation from verbal root *ǵenh₁- “beget”','supports','Independently derives the kin formation from the birth-and-generation root.'),
(940,414,'genə- entry endpoint','supports','Defines the deepest reviewed root horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(216,1106,418,'before the 12th century',1050,'Merriam-Webster first-known-use record for kin','First Known Use','before the 12th century','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported written-use horizon. The sorting year 1050 is a midpoint inside the stated period, not an exact token date or first spoken use.'),
(217,1107,419,'circa 1175 quotation reported by the Middle English Dictionary',1175,'Ormulum kin quotation in the Middle English Dictionary','MED24246, sense 1a, Ormulum line 2069','Baþe wærenn off an kinn, Josæp & Sannte Marȝe','established','lexical_corpus_record','Middle English Compendium · University of Michigan Library','MED24246 · Ormulum (Jun 1) 2069',NULL,0,'The dictionary record and edited quotation were inspected, not the underlying Junius 1 manuscript object. This verifies a located medieval use, not the earliest surviving token.'),
(218,1108,420,'Old English dictionary record',NULL,'Bosworth–Toller lexical record for cynn','Headword CYN, cynn; Exodus 351 example','Fór cynn æfter cynne — tribe went after tribe','established','lexical_corpus_record','Bosworth–Toller Anglo-Saxon Dictionary Online','CYN, entry 7096',NULL,0,'A digitized historical-lexicon record with located Old English examples. No manuscript object was directly inspected and this is not promoted as the earliest surviving occurrence.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(590,172,'kind','English','inherited birth, nature, class, and family relative under the same Germanic base',413),
(591,172,'king','English','derived Germanic title built on the *kunja- lineage base rather than the source of kin',412),
(592,172,'kunni','Runic West Germanic','fourth- or fifth-century collateral witness to West Germanic gemination',421),
(593,172,'kunni','Old High German','Germanic cognate meaning family, kinship, descent, generation, people, kind, or gender',413),
(594,172,'kyn','Old Norse','North Germanic cognate in the family, descent, kind, and gender field',413),
(595,172,'kuni','Gothic','East Germanic cognate meaning race or tribe',413),
(596,172,'genus','Latin','birth, race, and kind cognate under the Indo-European generation root',418),
(597,172,'genos','Greek','birth and race cognate under the Indo-European generation root',418);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(653,172,1,'Indo-European comparative horizon','*ǵenh₁- and suffixed zero grade','The reviewed trail begins in a reconstructed begetting and generation family whose derivatives name lineages, kinds, and kin groups.',NULL,NULL,'uncertain',-4500,-2500,'range','The interval is the project’s comparative horizon, not a point homeland, first word, or biological population claim.'),
(654,172,2,'Proto-Germanic and West Germanic linguistic horizon','*kunja- through geminated *kunnj-','The lineage formation develops West Germanic consonant gemination; Runic kunni makes the doubled n visible before Old English records.',NULL,NULL,'uncertain',-500,500,'range','The broad interval brackets reconstructed development and a fourth- or fifth-century runic witness; it does not assign one exact year to every sound change.'),
(655,172,3,'Old English records','cynn','Umlauted cynn carries kindred, race, people, tribe, family, lineage, generation, kind, gender, and progeny senses.',NULL,NULL,'broad',450,1150,'range','The interval is the conventional Old English period; the cited dictionary record is not a claim that every token spans it.'),
(656,172,4,'Middle English records','kin, kyn, kinne, cunne, and related forms','A large spelling inventory preserves family, people, ancestry, relative, kind, and category senses while the modern form emerges.',NULL,NULL,'broad',1150,1500,'range','The Middle English Dictionary supplies forms and dated quotations but not one simultaneous change across every dialect.'),
(657,172,5,'Global English','kin as relatives, common ancestry, and kindred relation','The surviving noun narrows toward relatives and common ancestry; attributive adjective use is separately reported from 1597.',NULL,NULL,'global',1500,NULL,'open','The modern-language anchor is conventional and does not assign exact dates to every semantic restriction or phrase.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(653,414,'genə- heading and zero-grade *gn̥ə-yo- section','supports','Publishes the reconstructed birth root and family-forming derivative.'),
(653,413,'Column 892: *kunja- from *ǵenh₁-','context','Independently links the Germanic kin base to the birth-and-generation root.'),
(654,413,'Column 892: Proto-Germanic *kunja- and Germanic cognates','supports','Publishes the reconstructed Germanic form and comparative family.'),
(654,421,'Section 6.15, p. 128; PDF p. 144','supports','Dates Runic kunni probably to the fourth or fifth century and identifies it as evidence for gemination.'),
(655,420,'Headword CYN, cynn and examples','supports','Supplies the attested Old English lexical and semantic record.'),
(655,422,'Studia Anglica Posnaniensia 36, pp. 64–65','context','Explains the prehistoric gemination, umlaut, and glide-loss path into cynn.'),
(656,419,'MED24246, Forms, Etymology, and dated quotations','supports','Publishes the medieval forms, direct Old English ancestry, senses, and located quotations.'),
(656,418,'Kin etymology and first-known-use section','context','Places modern kin after Middle English and reports the before-twelfth-century horizon.'),
(657,418,'Kin noun and adjective senses, etymology, and first known use','supports','Documents the modern semantic center and later adjective.'),
(657,419,'MED24246, senses 1–5','context','Documents the broader medieval field against which the modern semantic narrowing is measured.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(335,172,'Is kin a shortened form of king?','No. Kin continues Old English cynn and Proto-Germanic *kunja-. The Germanic king title *kuninga- is morphologically derived from that lineage base plus a person-forming suffix; neither modern English word directly descends from the other.','established','EWA publishes *kunja- as the kin base and *kuninga- as its suffixed title formation; American Heritage independently groups king and kin under the birth root.','resolved','The dossiers share the canonical *kunja- node. No king-to-kin ancestry edge is drawn.'),
(336,172,'Did kin always mean only blood relatives?','No. Old and Middle English records include kind, race, people, tribe, nation, lineage, generation, progeny, gender, species, category, and family. The modern relatives sense is a semantic narrowing, not the whole ancestral meaning.','established','Bosworth–Toller and the Middle English Dictionary publish the broader historical inventories; Merriam-Webster documents the modern center.','resolved','The semantic change remains visible on the Old-to-Middle and Middle-to-modern edges.'),
(337,172,'Are the family noun kin and diminutive suffix -kin the same morpheme?','No. Merriam-Webster gives the family noun through Middle English from Old English cynn, but derives the diminutive suffix through Middle English from Middle Dutch -kin and Old High German -chīn.','established','Merriam-Webster prints the noun and suffix as separate entries with separate etymologies.','resolved','The suffix is not attached to this family graph and the dossier labels the homography explicitly.'),
(338,172,'Can the exact date and phonological staging of cynn be treated as settled?','The main sequence—gemination, umlaut, glide loss, and ending loss—is strongly evidenced, but the exact dating of West Germanic gemination and the analysis and chronology of Sievers’ Law remain debated.','proposed','Adamczyk prints the *kunjan > *kunnjan > *kynni > cynn sequence while describing Sievers’ Law as contentious; Fulk reports proposed dates from about 200 CE to the fourth century and favors the runic fourth- or fifth-century evidence.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(335,413,'Column 892: *kunja- and Old English cynn','supports','Publishes kin’s direct Germanic base.'),
(335,412,'Column 885: *kuninga- from *kunja- plus *-inga-/*-unga-','supports','Publishes the separate suffixed formation behind king.'),
(335,414,'genə- entry: Germanic *kunjam and *kuningaz','context','Independently groups the two formations under one birth-and-family root.'),
(336,420,'Headword CYN, cynn semantic inventory','supports','Documents the broad Old English kindred, kind, race, people, tribe, family, lineage, generation, and progeny field.'),
(336,419,'MED24246, senses 1–5','supports','Documents medieval race, people, family, ancestry, relative, kind, category, and manner senses.'),
(336,418,'Modern noun senses','context','Documents the current relatives and common-ancestry center.'),
(337,418,'Separate noun and noun-suffix etymologies','supports','Directly assigns the two homographs to Old English cynn and Middle Dutch -kin respectively.'),
(338,422,'Studia Anglica Posnaniensia 36, pp. 61–65','supports','Prints the derivation while foregrounding disputes over the law’s scope, dating, and recoverability.'),
(338,421,'Section 6.15, pp. 126–129; PDF pp. 142–145','context','Uses Runic kunni as evidence and reports competing dates for West Germanic gemination.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(172,172,2083,'kin','King comes from the kin family; kin does not come from king.','English kin independently continues Old English cynn and Germanic *kunja-. The royal title is a separate suffixed formation on that lineage base, so the shared letters preserve real morphology without making either modern word the parent of the other.','A',100,'EWA directly analyzes both formations; American Heritage supplies the deeper shared birth root; the exact prehistoric phonological timing remains open.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id, ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT ranked.new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(172,413,'Column 892: *kunja-, Old English cynn, and modern kin','supports','Publishes kin’s inherited Germanic lineage.'),
(172,412,'Column 885: *kuninga- formed from *kunja- plus suffix','supports','Publishes king as a separate formation built on the kin base.'),
(172,414,'genə-: Germanic *kunjam and *kuningaz','supports','Independently places kin and king in one birth-and-family root family.'),
(172,422,'Studia Anglica Posnaniensia 36, pp. 64–65','context','Makes the cynn sound history explicit without pretending its exact prehistoric dating is uncontested.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(127,172,171,'THE KING SITS ON A KIN WORD','Kin preserves the Germanic lineage base *kunja-. King reaches that same base only after its title suffix is removed, so the family word is structurally inside the royal title without either modern word descending from the other.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1106 AND 1112
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1106 AND 1112;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 935 AND 940;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 935 AND 940;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 935 AND 940;
--> statement-breakpoint

-- Runic kunni is an attested collateral witness to West Germanic gemination,
-- not an ancestor of English cynn. It remains graph-only and discloses that
-- provenance in the node note while its one edge carries direct citations.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:4:kunni:attested:sense:runic-kin-witness',4,'kunni','kunni','runic-kin-witness','kunni',NULL,'attested','Runic West Germanic, probably fourth or fifth century',300,500,'kin or lineage form','Graph-only attested collateral form: Fulk identifies Runic kunni on a Weser rune-bone as evidence for West Germanic gemination and equates it with Old English cynn. It is not placed on the direct English spine.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:4:kunni:attested:sense:runic-kin-witness'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:kunja:reconstructed:sense:kin-lineage-base'),'inheritance','Runic kunni displays West Germanic n-gemination before the historical j of *kunja- and a reduced final vowel.','The attested form remains in the kin, lineage, and generation field.','R. D. Fulk · Elżbieta Adamczyk','established','The runic form is collateral evidence for the sound development, not the direct parent of Old English cynn.','Probably fourth or fifth century, with the wider change dated less precisely.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:4:kunni:attested:sense:runic-kin-witness' AND p.canonical_key='node:5:kunja:reconstructed:sense:kin-lineage-base' AND e.relation_type='inheritance'),421,'Section 6.15, p. 128; PDF p. 144','supports','Identifies Runic kunni as a fourth- or fifth-century witness to West Germanic gemination and equates it with Old English cynn.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:4:kunni:attested:sense:runic-kin-witness' AND p.canonical_key='node:5:kunja:reconstructed:sense:kin-lineage-base' AND e.relation_type='inheritance'),422,'Studia Anglica Posnaniensia 36, pp. 64–65','context','Prints the parallel *kunjan > *kunnjan stage that explains the runic doubled consonant.');
