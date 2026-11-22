-- Promote the two candidates that reached the evidence threshold in the live
-- research frontier. LOAF extends the shared hlāf node already exposed by LORD
-- and LADY, while Old High German WĪB meets Old English wīf only at an explicit
-- unknown horizon. No unattested common parent is invented for the latter pair.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(152,'loaf','loaf','loaf','/loʊf/','noun','A shaped mass of bread; the inherited noun continues Old English hlāf through Middle English lof and a reconstructed Germanic bread word.','Loaf is the word hidden inside both lord and lady. Its own secure trail reaches reconstructed *hlaibaz, then stops before a merely proposed European substrate comparison.','reviewed'),
(153,'wib-old-high-german','wīb','wib','/wiːp/','noun','An Old High German word occurring in woman and wife expressions; it continues into Middle High German wīp and modern German Weib, whose usage has changed sharply.','The modern stigma of German Weib cannot simply be projected backward onto Old High German wīb, and the older word still has no securely reconstructed parent.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(364,'mw-loaf','Loaf — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/loaf',NULL,'historical_dictionary'),
(365,'ahd-loaf','Loaf — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://ahdictionary.com/word/search.html?q=loaf',NULL,'historical_dictionary'),
(366,'bosworth-toller-hlaf','Hláf — Bosworth-Toller Anglo-Saxon Dictionary online','Joseph Bosworth and T. Northcote Toller; digital editors',2026,'Bosworth-Toller Anglo-Saxon Dictionary online','https://bosworthtoller.com/52655',NULL,'historical_dictionary'),
(367,'duden-weib','Weib — Rechtschreibung, Bedeutung, Definition, Herkunft','Duden Editors',2026,'Cornelsen Verlag','https://www.duden.de/rechtschreibung/Weib',NULL,'historical_dictionary'),
(368,'ewa-altwib','Altwîb — Etymologisches Wörterbuch des Althochdeutschen I','Albert L. Lloyd and Otto Springer',1988,'Vandenhoeck & Ruprecht','https://ewa.saw-leipzig.de/articles/3500/de',NULL,'historical_dictionary'),
(369,'ewa-hiwa1','Hî(w)a¹ — Etymologisches Wörterbuch des Althochdeutschen IV','Albert L. Lloyd and Rosemarie Lühr',2009,'Vandenhoeck & Ruprecht','https://ewa.saw-leipzig.de/articles/71810/de',NULL,'historical_dictionary'),
(370,'fu-berlin-weib-sprachwandel','Sprachwandel — Ältere deutsche Literatur und Sprache','Freie Universität Berlin Editors',2026,'Freie Universität Berlin','https://www.osa.fu-berlin.de/germanistik/beispielaufgaben/sprachwandel/index.html',NULL,'scholarly_reference');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(952,152,1,1,'loaf','loaf','bread-shaped-mass','loaf','/loʊf/','attested','before the 12th century–today',1000,NULL,'shaped mass of bread','The inherited bread noun is distinct from the later verb meaning to idle.'),
(953,152,2,2,'lof','lof','bread-loaf','lof',NULL,'attested','Middle English',1150,1500,'loaf of bread','Merriam-Webster prints lof as the Middle English stage.'),
(954,152,3,3,'hlāf','hlaf','bread-loaf','hlāf',NULL,'attested','Old English',450,1150,'bread; loaf of bread','The exact canonical node already shared by the historical formations of lord and lady.'),
(955,152,5,4,'*hlaibaz','hlaibaz','bread-loaf-germanic','*hlaibaz',NULL,'reconstructed','Proto-Germanic',-500,200,'loaf of bread','American Heritage reconstructs this Germanic bread word; the asterisk marks inference, not attestation.'),
(956,152,7,5,'UNKNOWN','unknown','loaf-deep-boundary',NULL,NULL,'boundary','before the reviewed *hlaibaz reconstruction',NULL,NULL,'No securely reconstructed ancestor is currently promoted beyond *hlaibaz.','A possible shared European substrate source with Greek baking-vessel words remains a proposed graph branch.'),

(957,153,32,1,'wīb','wib','woman-wife-noun','wīb',NULL,'attested','Old High German',750,1050,'woman; wife in recorded expressions','The dossier starts at the attested Old High German horizon and does not manufacture a deeper form.'),
(958,153,7,2,'UNKNOWN','unknown','wib-deep-boundary',NULL,NULL,'boundary','before the reviewed Old High German wīb horizon',NULL,NULL,'No securely reconstructed direct ancestor is currently promoted beyond Old High German wīb.','Old English wīf meets this dossier at a cited cognate horizon rather than through an invented parent.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(801,152,952,953,'continuation','Middle English lof develops into modern loaf with later spelling and pronunciation stabilization.','The shaped bread mass remains the lexical center.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded before the twelfth century in English.','reviewed'),
(802,152,953,954,'continuation','Middle English lof continues Old English hlāf through the recorded English sound and spelling history.','Bread and loaf senses remain continuous.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(803,152,954,955,'inheritance','Old English hlāf reflects reconstructed Proto-Germanic *hlaibaz.','The Germanic bread and loaf meaning is retained.','American Heritage Dictionary Editors','established','The parent is a comparative reconstruction, visibly marked with an asterisk.',NULL,'reviewed'),
(804,152,955,956,'knowledge_boundary','No securely established parent is promoted beyond reconstructed *hlaibaz.','The Germanic bread word reaches an evidential boundary; a possible substrate comparison remains separately graded proposed.','SET-U editorial boundary · American Heritage Dictionary Editors','boundary','American Heritage says perhaps when comparing a common European substrate source.',NULL,'reviewed'),
(805,153,957,958,'knowledge_boundary','No reconstructed direct parent is promoted beyond attested Old High German wīb.','The historical woman and wife word reaches an unresolved origin rather than a fabricated proto-form.','SET-U editorial boundary · Duden Editors','boundary','Duden explicitly labels the origin unclear and offers two possibilities only as perhaps.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(801,364,'Etymology: Middle English lof; First Known Use','supports','Publishes the Middle English form and the pre-twelfth-century horizon.'),
(801,365,'Headword etymology and noun definition','context','Independently identifies the inherited bread noun.'),
(802,364,'Etymology: Middle English lof from Old English hlāf','supports','Publishes the recorded English continuation.'),
(802,365,'Etymology: Middle English lof from Old English hlāf','context','Independently confirms the step.'),
(803,365,'Etymology: Old English hlāf from Proto-Germanic *hlaibaz','supports','Publishes the comparative reconstruction.'),
(804,365,'Etymology: perhaps from the same European substrate source as Greek klībanos and krībanos','supports','Defines both the secure reconstruction endpoint and the lower-confidence substrate proposal.'),
(805,367,'Herkunft: mittelhochdeutsch wīp, althochdeutsch wīb, Herkunft ungeklärt','supports','Explicitly states the Old High German form and unresolved origin.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(187,952,364,'before the 12th century',NULL,'Merriam-Webster first-known-use report for the loaf noun','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported horizon; no underlying medieval object was directly inspected.'),
(188,954,366,'Old English lexical record',NULL,'Bosworth-Toller hlāf lexical record','Ex. 29, 23','Þú nymst ánne holne hláf','established','lexical_corpus_record','Bosworth-Toller Anglo-Saxon Dictionary online',NULL,NULL,0,'Dictionary-reported Old English example and locator; the underlying manuscript object was not directly inspected.'),
(189,957,369,'Old High German lexical record',NULL,'EWA hî(w)a¹ lexical record','Band IV, column 1077; gihî(w)it wîb','gihî(w)it wîb — wife; uxor','established','lexical_corpus_record','Etymologisches Wörterbuch des Althochdeutschen',NULL,NULL,0,'Dictionary-reported phrase containing wīb; the underlying gloss manuscript was not directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(493,152,'lord','English','historical compound descendant containing the same Old English hlāf node',365),
(494,152,'lady','English','historical compound descendant containing the same Old English hlāf node',365),
(495,152,'hlaifs','Gothic','Germanic cognate meaning loaf of bread',365),
(496,152,'hleifr','Old Norse','Germanic cognate meaning loaf of bread',365),
(497,152,'hleib','Old High German','Germanic cognate reported beside Old English hlāf',364),
(498,152,'Laib','German','Germanic cognate meaning loaf of bread',365),
(499,152,'κλίβανος / κρίβανος','Ancient Greek','possible shared European substrate comparison, not an ancestor',365),
(500,153,'wīf','Old English','Germanic cognate at the same unresolved deep horizon',345),
(501,153,'wife','English','modern descendant of the Old English cognate branch',345),
(502,153,'wīp','Middle High German','recorded continuation of Old High German wīb',367),
(503,153,'Weib','German','modern continuation with increasingly discriminatory usage',367),
(504,153,'altwîb','Old High German','compound attested with the sense old woman',368);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(569,152,1,'Germanic linguistic horizon','reconstructed *hlaibaz','Comparative evidence reconstructs a Germanic bread word without identifying one archaeological point.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstruction is a linguistic horizon, not one dated token or mapped homeland.'),
(570,152,2,'Early English linguistic horizon','Old English hlāf','The Germanic bread word is attested as Old English hlāf and later reused inside the lord and lady families.',NULL,NULL,'broad',NULL,NULL,'unresolved','No single manuscript, coinage place, or year is assigned to the entire language stage.'),
(571,152,3,'English-speaking world','loaf before the 12th century','Middle English lof continues into the modern noun.',NULL,NULL,'global',NULL,1099,'before','The endpoint preserves only Merriam-Webster’s source-reported first-use horizon.'),
(572,152,4,'Global English','modern loaf','The inherited bread noun travels with English while the unrelated idle verb remains a separate history.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),

(573,153,1,'Old High German linguistic region','Old High German wīb','The word occurs in Old High German woman and wife expressions.',NULL,NULL,'broad',NULL,NULL,'unresolved','The cited lexical records do not identify one coinage place or first token.'),
(574,153,2,'Middle High German linguistic region','Middle High German wīp','The form continues into the Middle High German period.',NULL,NULL,'broad',NULL,NULL,'unresolved','Duden identifies the language stage without dating one transition event.'),
(575,153,3,'German-speaking world','modern German Weib','The descendant survives with obsolete, jocular, ironic, and increasingly discriminatory usage.',NULL,NULL,'global',NULL,NULL,'unresolved','The source describes present usage without assigning one date to the semantic shift.'),
(576,153,4,'Beyond secure reconstruction','origin unresolved','The trail ends before Duden’s two tentative interpretations can become ancestor nodes.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','An evidential boundary has no geographic coordinate or fabricated date.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(569,365,'Proto-Germanic *hlaibaz reconstruction','supports','Publishes the comparative Germanic horizon.'),
(570,364,'Etymology: Old English hlāf','supports','Publishes the early English form.'),
(570,366,'Hláf headword and Old English examples','context','Documents the word in Old English lexical records.'),
(571,364,'First Known Use: before the 12th century','supports','Supplies the open-ended temporal boundary.'),
(572,364,'Modern noun headword and definitions','supports','Documents continuation as the modern English noun.'),
(573,369,'Band IV, column 1077: gihî(w)it wîb','supports','Documents wīb inside an Old High German wife expression.'),
(573,368,'Band I, column 183: altwîb','context','Documents the component inside an Old High German woman compound.'),
(574,367,'Herkunft: mittelhochdeutsch wīp','supports','Publishes the Middle High German continuation.'),
(575,367,'Bedeutungen; Besonderer Hinweis','supports','Documents the modern senses and usage warning.'),
(576,367,'Herkunft ungeklärt; vielleicht','supports','Defines the unresolved evidential boundary.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(286,152,'Does the bread noun loaf come from the verb meaning to idle?','No. The inherited noun continues Middle English lof and Old English hlāf; the idle verb is a later probable back-formation from loafer.','established','Merriam-Webster and American Heritage publish separate histories for the noun and verb.','resolved','The dossier promotes only the inherited bread noun and keeps the homonymous verb in the dispute record.'),
(287,152,'Does loaf have a securely established Indo-European root?','Not in the reviewed evidence. *Hlaibaz is reconstructed as Proto-Germanic, while a shared European substrate source with Greek baking-vessel words is introduced only as perhaps.','proposed','American Heritage distinguishes the Germanic reconstruction from a tentative substrate comparison.','open','The main spine ends at an explicit boundary; the Greek forms remain graph-only proposed comparisons.'),
(288,153,'Was Old High German wīb already the modern German insult?','The sources do not license that projection. Duden marks modern Weib increasingly discriminatory, while Old High German records preserve wīb in ordinary old-woman and married-woman expressions.','established','Duden time-stamps the modern usage state; EWA preserves historical compounds and phrases with woman and wife senses.','resolved','The dossier separates stages of semantic history instead of turning a current judgment into an ancient essence.'),
(289,153,'Is the deeper origin of wīb securely known?','No. Duden labels the origin unclear and offers a veiled bride or busy housewife interpretation only as possibilities.','proposed','The historical continuation is secure, but the two deeper explanations are explicitly tentative.','open','Neither interpretation becomes a node or ancestry edge until stronger comparative evidence is promoted.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(286,364,'Word History: noun from Old English hlāf; verb probably back-formation from loafer','supports','Separates the inherited noun from the later verb.'),
(286,365,'Loaf 1 and loaf 2 etymologies','context','Independently publishes two histories.'),
(287,365,'Proto-Germanic *hlaibaz; perhaps same European substrate source as Greek klībanos and krībanos','supports','Grades the substrate analysis below the Germanic reconstruction.'),
(288,367,'Besonderer Hinweis; Bedeutungen; Herkunft','supports','Documents the modern discriminatory warning and the historical wīp / wīb chain.'),
(288,368,'Band I, column 183: altwîb, old woman','context','Preserves wīb in an Old High German woman compound.'),
(288,369,'Band IV, column 1077: gihî(w)it wîb, wife','context','Preserves wīb in an Old High German married-woman expression.'),
(289,367,'Herkunft ungeklärt; vielleicht','supports','Explicitly labels the origin unclear and both interpretations tentative.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(152,152,2063,'loaf','Loaf is the word inside both lord and lady.','Old English hlāf continues as loaf and is also the exact historical bread component shared by hlāford and hlǣfdige.','A',100,'The reveal is based on a shared canonical node; the deeper substrate proposal remains separately graded proposed.'),
(153,153,2064,'wīb','The modern stigma of Weib is not the timeless nature of wīb.','Duden marks modern Weib increasingly discriminatory, while Old High German records preserve wīb in old-woman and wife expressions; the deeper origin remains unresolved.','A',100,'The reveal is semantic history, not a defense of modern derogatory usage or a claim that every historical occurrence was neutral.');
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
(152,365,'Word History: loaf, lord, and lady','supports','Publishes the shared Old English loaf component and the distinct compounds.'),
(152,364,'Old English hlāf; related to lady and lord','context','Independently links the inherited noun to both titles.'),
(153,367,'Modern usage warning; Herkunft: wīp, wīb, origin unclear','supports','Documents the modern semantic status and historical form chain.'),
(153,368,'Altwîb, old woman','context','Preserves historical woman reference.'),
(153,369,'Gihî(w)it wîb, wife','context','Preserves historical spouse reference.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(107,152,146,'THE LOAF INSIDE THE LORD','Follow loaf backward to Old English hlāf, then sideways into hlāford: the bread word becomes one component of lord.',100,'A','reviewed'),
(108,153,149,'TWO WOMAN WORDS MEET WHERE KNOWLEDGE STOPS','Old High German wīb and Old English wīf are cognates, but the reviewed evidence supplies no reconstructed common parent; the path meets at an explicit unknown horizon.',100,'A','reviewed');
--> statement-breakpoint

-- Canonicalize both linear dossiers. LOAF reuses the existing Old English hlāf
-- node, each boundary remains dossier-specific and carries its own evidence.
WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 952 AND 958
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
WHERE f.id BETWEEN 952 AND 958;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 801 AND 805;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 801 AND 805;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 801 AND 805;
--> statement-breakpoint

-- Keep the tentative Greek substrate comparison and the later German semantic
-- stages graph-only. Their direction and confidence must never turn them into
-- direct ancestors in the linear dossiers.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:10:klibanos:attested:sense:baking-vessel-substrate-comparison',10,'κλίβανος','klibanos','baking-vessel-substrate-comparison','klíbanos',NULL,'attested','Ancient Greek',-1400,600,'earthen baking vessel; tandoor','American Heritage proposes only a possible shared European substrate source with Germanic *hlaibaz; this is not a Greek ancestor of loaf.','reviewed'),
('node:10:kribanos:attested:sense:baking-vessel-substrate-comparison',10,'κρίβανος','kribanos','baking-vessel-substrate-comparison','kríbanos',NULL,'attested','Ancient Greek',-1400,600,'earthen baking vessel; tandoor','A Greek variant preserved in the same tentative substrate comparison; direction and parentage remain unresolved.','reviewed'),
('node:31:wip:attested:sense:woman-wife-noun',31,'wīp','wip','woman-wife-noun','wīp',NULL,'attested','Middle High German',1050,1350,'woman; wife','Duden gives this as the Middle High German continuation of Old High German wīb.','reviewed'),
('node:30:weib:attested:sense:deprecated-woman-wife-term',30,'Weib','weib','deprecated-woman-wife-term','Weib','[vaɪ̯p]','attested','Modern German',1650,NULL,'woman; wife; increasingly discriminatory term','Duden documents obsolete spouse use and modern discriminatory or derogatory force; those present senses are not projected backward.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:klibanos:attested:sense:baking-vessel-substrate-comparison'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:152:5'),'proposed_substrate_comparison','No direct sound derivation is asserted; the comparison is attributed to a possible shared European substrate source.','A baking-vessel term is compared with a bread-loaf word through a possible shared substrate setting.','American Heritage Dictionary Editors','proposed','The source says perhaps and does not identify direction or a reconstructible common form.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:kribanos:attested:sense:baking-vessel-substrate-comparison'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:152:5'),'proposed_substrate_comparison','No direct sound derivation is asserted; the Greek variant participates in the same possible substrate comparison.','A baking-vessel term is compared with a bread-loaf word through a possible shared substrate setting.','American Heritage Dictionary Editors','proposed','The source says perhaps and does not identify direction or a reconstructible common form.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:30:weib:attested:sense:deprecated-woman-wife-term'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:31:wip:attested:sense:woman-wife-noun'),'historical_continuation','Freie Universität Berlin places Middle High German WÎP before Early New High German WEYB and Modern German WEIB: the long vowel î diphthongizes to ei, while final devoicing remains pronounced but is no longer marked by p in modern spelling.','Woman and wife senses continue while current usage becomes obsolete, jocular, ironic, discriminatory, or derogatory.','Duden Editors · Freie Universität Berlin Editors','established','The edge summarizes a published multi-stage continuation; it does not claim one instantaneous jump.','Middle High German through Early New High German to modern German.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:31:wip:attested:sense:woman-wife-noun'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:32:wib:attested:sense:woman-wife-noun'),'continuation','Freie Universität Berlin orders Old High German WĪB before Middle High German WÎP and explains that word-final b was pronounced voiceless and represented as p in Middle High German spelling.','The woman and wife field continues across the language stages.','Duden Editors · Freie Universität Berlin Editors','established',NULL,'Old High German to Middle High German.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:wif:attested:sense:woman-wife-noun'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:153:2'),'cognate_horizon','Merriam-Webster identifies Old English wīf as akin to Old High German wīb but supplies no directional derivation or common reconstructed form.','The English woman and wife noun meets the Old High German field at an unresolved comparative horizon.','Merriam-Webster Editors · Duden Editors','probable','Cognacy is reported, but the common parent is intentionally left UNKNOWN.',NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:klibanos:attested:sense:baking-vessel-substrate-comparison' AND p.canonical_key='boundary:152:5' AND e.relation_type='proposed_substrate_comparison'),365,'Perhaps from the same European substrate source as Greek klībanos','supports','Publishes the comparison with explicit uncertainty.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:kribanos:attested:sense:baking-vessel-substrate-comparison' AND p.canonical_key='boundary:152:5' AND e.relation_type='proposed_substrate_comparison'),365,'Perhaps from the same European substrate source as Greek krībanos','supports','Publishes the variant comparison with explicit uncertainty.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:30:weib:attested:sense:deprecated-woman-wife-term' AND p.canonical_key='node:31:wip:attested:sense:woman-wife-noun' AND e.relation_type='historical_continuation'),367,'Bedeutungen; Herkunft: mittelhochdeutsch wīp','supports','Publishes both the historical form and the modern usage state.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:30:weib:attested:sense:deprecated-woman-wife-term' AND p.canonical_key='node:31:wip:attested:sense:woman-wife-noun' AND e.relation_type='historical_continuation'),370,'Chronological sequence WĪB, WÎP, WEYB, WEIB; explanations of final devoicing and diphthongization','supports','Publishes the intervening written stages and the two named sound changes.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:31:wip:attested:sense:woman-wife-noun' AND p.canonical_key='node:32:wib:attested:sense:woman-wife-noun' AND e.relation_type='continuation'),367,'Herkunft: mittelhochdeutsch wīp, althochdeutsch wīb','supports','Publishes the recorded German continuation.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:31:wip:attested:sense:woman-wife-noun' AND p.canonical_key='node:32:wib:attested:sense:woman-wife-noun' AND e.relation_type='continuation'),370,'WĪB → WÎP; explanation of Auslautverhärtung','supports','Explains why Middle High German spelling marks the word-final voiceless pronunciation with p.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:wif:attested:sense:woman-wife-noun' AND p.canonical_key='boundary:153:2' AND e.relation_type='cognate_horizon'),345,'Old English wīf, akin to Old High German wīb','supports','Publishes cognacy without a directional ancestor.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:wif:attested:sense:woman-wife-noun' AND p.canonical_key='boundary:153:2' AND e.relation_type='cognate_horizon'),367,'Herkunft ungeklärt','context','Keeps the shared deep horizon explicitly unresolved.');
