-- Promote Old English hete as the attested noun at the center of the modern
-- hate dispute. The dossier reuses the reviewed *hatiz- and qualified PIE
-- route, but its reveal comes from Old English itself: hete was productive
-- inside a wide vocabulary of compounds for kinds and instruments of enmity.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(177,'hete','hete','hete','/ˈhe.te/','Old English masculine noun','An attested Old English noun for hate, enmity, malice, spite, hostility, and persecution, productive in compounds and securely aligned with the Germanic hate family; whether Middle English hate directly continues it remains disputed, and the proposed deeper Indo-European route remains semantically opaque.','Old English did not keep hate inside one abstract noun. Hete built a vocabulary of people-hate, murder-hate, weapon-hate, war-hate, hostile speech, hostile blows, and even a charm for producing hate.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(444,'bosworth-toller-hete','HETE — An Anglo-Saxon Dictionary Online','Joseph Bosworth · Thomas Northcote Toller · Christ Sean · Ondřej Tichý',2014,'Faculty of Arts, Charles University','https://bosworthtoller.com/18957',NULL,'historical_dictionary'),
(445,'clark-hall-hete','A Concise Anglo-Saxon Dictionary — hete and related entries','John R. Clark Hall',1916,'Project Gutenberg digital edition','https://www.gutenberg.org/files/31543/old/files/dict_hn.html',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1145,177,3,1,'hete','hete','hate-anger-hostility-noun','hete','/ˈhe.te/','attested','Old English',450,1150,'hate, hatred, enmity, malignity, malice, spite, hostility, or persecution','Bosworth–Toller identifies a masculine noun and supplies located examples across gospel gloss, poetry, prose, homily, psalm, and biblical translation traditions. Clark Hall independently records the variant heate and the hostility and persecution range.'),
(1146,177,5,2,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','The reconstructed i-stem is supported by Old English hete, Gothic hatis, Old Saxon heti, Old Norse hatr, Old High German haz, and related Germanic material.'),
(1147,177,6,3,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified: semantic relations among the proposed forms are far from transparent.'),
(1148,177,6,4,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','This is not an attested word or a uniquely recovered original meaning. The pursuit and persecution account remains a competing semantic hypothesis.'),
(1149,177,7,5,'UNKNOWN','unknown','hete-deep-boundary',NULL,NULL,'boundary','before the disputed Indo-European comparison',NULL,NULL,'No securely accepted ancestor or uniquely recoverable original meaning is known beyond the Germanic hate family.','The trail stops before the formal PIE proposal is turned into one tidy story about grief, care, love, pursuit, or hate.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(969,177,1145,1146,'inheritance','The Germanic i-stem *hatiz- yields Old English hete; the exact intermediate West Germanic paradigm is not independently promoted here.','The Germanic hate, anger, enmity, and spite field continues in the Old English noun.','Merriam-Webster Editors · Anatoly Liberman','established','Merriam-Webster directly aligns the i-stem with Old English hete; Liberman supplies the Germanic cognate set.','Proto-Germanic reconstruction into attested Old English.','reviewed'),
(970,177,1146,1147,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(971,177,1147,1148,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(972,177,1148,1149,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail ends before Old English hostility is reverse-engineered into one unevidenced prehistoric feeling or action.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends at Germanic; the displayed PIE route remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(969,436,'Noun etymology: Germanic *hatiz- and Old English hete','supports','Publishes the reconstructed i-stem ancestry.'),
(969,439,'Germanic cognate paragraph','context','Places hete beside Old Saxon heti, Old Icelandic hatr, and Old High German haz.'),
(969,444,'HETE entry, etymology section','supports','Supplies the Old English form and attested Germanic comparisons.'),
(969,445,'Lines 2968–2985, hete and compounds','context','Independently documents the form, semantic range, and related formations.'),
(970,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal proposal while flagging semantic opacity.'),
(970,439,'Discussion of proposed non-Germanic cognates','challenges','Warns that formal candidates need not all belong together.'),
(971,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(972,436,'Etymology note: semantic relations are far from transparent','supports','Defines the limit of the deep comparison.'),
(972,439,'Conclusion: pursuit is promising, broader comparisons remain murky','supports','Supports an explicit endpoint rather than an invented first meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(232,1145,444,'Old English gospel-gloss record',NULL,'Rushworth Gospel gloss reported by Bosworth–Toller','Mt. Kmbl. Rush. 22, 18','Hete — nequitia','established','lexical_corpus','Bosworth–Toller citation index',NULL,NULL,0,'A located dictionary report, not a directly inspected manuscript token or earliest-use claim.'),
(233,1145,444,'Old English prose record',NULL,'Old English reader occurrence reported by Bosworth–Toller','Swt. A. S. Rdr. 106, 70','Ús hól and hete derede swíðe þearle','established','lexical_corpus','Bosworth–Toller citation index',NULL,NULL,0,'The edited occurrence is source-reported; no underlying manuscript image was inspected.'),
(234,1145,444,'Old English poetic record',NULL,'Beowulf occurrence reported by Bosworth–Toller','B. 2554','Wæs his hete grim','established','lexical_corpus','Bosworth–Toller citation index · Beowulf','Cotton MS Vitellius A XV, edition line 2554',NULL,0,'The dictionary supplies the quotation and line locator. The unique manuscript leaf was not directly inspected for this record.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(636,177,'hate','English','the later noun whose direct continuation from hete versus remodeling from the verb remains disputed',437),
(637,177,'hatred','English','a younger Middle English compound built from hate plus a condition suffix',434),
(638,177,'hatian','Old English','the related verb meaning hate or treat as an enemy, central to the remodeled-noun alternative',445),
(639,177,'hetenīþ','Old English','a compound for hostility, spite, or wickedness',445),
(640,177,'heterūn','Old English','a charm said to produce hate',445),
(641,177,'hetesprǣc','Old English','hostile or defiant speech',445),
(642,177,'hetesweng','Old English','a hostile blow',445),
(643,177,'heteðanc','Old English','a hostile design or thought',445),
(644,177,'hatis','Gothic','a Germanic noun cognate meaning anger or enmity',444),
(645,177,'hatr','Old Norse','a Germanic noun cognate meaning hatred or spite',444),
(646,177,'Hass','German','the modern German continuation of Old High German haz',444);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(680,177,1,'Proto-Germanic linguistic horizon','*hatiz-','The reconstructed noun is supported by attested Germanic comparanda; no archaeological point or single tribal speech community is asserted.',NULL,NULL,'uncertain',-500,200,'range','A conventional comparative-linguistic interval.'),
(681,177,2,'Old English textual traditions','hete and its compounds','Gospel gloss, poetry, prose, homily, psalm, and biblical translation records preserve the noun and a productive compound family.',NULL,NULL,'broad',450,1150,'range','A language-period range, not the date of one first token.'),
(682,177,3,'Middle English lexical transition','hete beside hate and haten','Published dictionaries disagree on whether later hate directly continues hete or was remodeled from the verb and replaced it.',NULL,NULL,'broad',1150,1500,'range','The lexical competition is gradual and not assigned to one year.'),
(683,177,4,'Knowledge boundary','beyond secure Germanic reconstruction','The qualified PIE comparison remains visible, but no single grief, care, pursuit, love, or hate origin is promoted.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(680,436,'Noun etymology: Germanic *hatiz-','supports','Publishes the Germanic reconstruction.'),
(680,444,'HETE entry, etymology section','context','Supplies the attested comparison set behind the reconstruction.'),
(681,444,'HETE entry, examples and derived forms','supports','Documents the form across multiple textual traditions and the productive compound inventory.'),
(681,445,'Lines 2968–3002','context','Independently records hete, its semantic range, and related formations.'),
(682,436,'Noun etymology: probably derivative of haten, replacing hete','supports','States the remodeled replacement analysis.'),
(682,437,'Noun etymology: Middle English from Old English hete','challenges','States the direct-continuation analysis.'),
(683,436,'Semantic-transparency note','supports','Marks the deep comparison as semantically opaque.'),
(683,439,'Qualified conclusion and comparison discussion','supports','Supports stopping beyond the secure Germanic family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(361,177,'Did Middle English hate directly continue Old English hete?','Possibly, but the immediate route is disputed. American Heritage gives direct descent; Merriam-Webster says the noun was probably derived from haten and replaced hete.','proposed','Two major historical dictionaries publish different analyses.','open',NULL),
(362,177,'Did hete name only an inward feeling?','No. Historical dictionaries include enmity, malignity, malice, spite, hostility, and persecution, and they document compounds for hostile speech, hostile blows, hostile designs, and other enacted or categorized hostility.','established','Bosworth–Toller and Clark Hall independently document the wider range.','resolved','The dossier preserves the attested semantic field and compound evidence instead of projecting one modern gloss backward.'),
(363,177,'Was hete an isolated noun rather than a word-building base?','No. Bosworth–Toller lists eleven derived first elements ending in -hete; Clark Hall separately records hetenīþ, heterūn, hetesprǣc, hetesweng, and heteðanc.','established','Two historical dictionaries expose a productive lexical neighborhood.','resolved','The relatives and leaderboard cite the compounds directly.'),
(364,177,'Does *hatiz- securely descend from *ḱeh₂d-?','Only probably. The formal comparison is published, but the grief, care, mourning, love, and hatred meanings do not form a transparent sequence and some proposed cognates may not belong together.','probable','Merriam-Webster qualifies the proposal; Liberman challenges semantic and membership assumptions.','open',NULL),
(365,177,'Does the Beowulf quotation establish the first use of hete?','No. It is one located edited occurrence among many textual traditions listed by the dictionaries. Without a complete witness comparison and direct manuscript inspection, it cannot be promoted as the first surviving token.','established','Bosworth–Toller lists gospel, poetry, prose, homily, psalm, and biblical examples rather than one privileged first record.','resolved','The attestation is labeled source-reported and makes no earliest-use claim.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(361,436,'Noun etymology: probably derivative of haten, replacing hete','supports','States the remodeled-noun analysis.'),
(361,437,'Noun etymology: from Old English hete','challenges','States the direct-continuation analysis.'),
(362,444,'HETE headword gloss and examples','supports','Documents hate, enmity, malignity, malice, and spite in context.'),
(362,445,'Lines 2968–2989','supports','Adds hostility, persecution, hostile speech, blow, and design.'),
(363,444,'Derived forms list','supports','Lists bil-, cumbol-, ecg-, leód-, mód-, morþor-, níþ-, scyld-, teón-, wǽpen-, and wíg-hete.'),
(363,445,'Lines 2970–2989','supports','Independently records multiple hete compounds and derivatives.'),
(364,436,'Noun etymology and semantic note','supports','Publishes the PIE proposal with an explicit qualification.'),
(364,439,'Non-Germanic comparison and conclusion','challenges','Questions semantic unity and candidate membership.'),
(365,444,'HETE examples, including B. 2554','supports','Shows that the Beowulf line is one of numerous located records.'),
(365,445,'Hete entry and corpus abbreviations','context','Confirms distribution across several edited text classes without claiming a first token.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(177,177,2088,'hete','Old English turned hate into people-hate, murder-hate, weapon-hate, and war-hate.','Bosworth–Toller lists leód-, morþor-, wǽpen-, and wíg-hete among eleven derived formations. Clark Hall adds hostile speech, a hostile blow, a hostile design, and a charm for producing hate. The noun was a word-building base, not merely a private feeling label.','A',100,'The compound inventory is directly enumerated by the dictionaries. The reveal does not claim that every listed form was equally frequent or that one modern emotion explains every Old English context.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id,ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,evidence_grade ASC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT ranked.new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(177,444,'HETE examples and Derived forms list','supports','Lists eleven first elements forming compounds in -hete, including leód-, morþor-, wǽpen-, and wíg-, and shows the simplex noun across several hostile contexts.'),
(177,445,'Lines 2970–2989','supports','Independently records hostility and persecution plus hostile speech, hostile blow, hostile design, and hate-producing charm formations.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(133,177,176,'HATE MAY HAVE REPLACED ITS OWN NOUN ANCESTOR','American Heritage sends Middle English hate directly back to Old English hete. Merriam-Webster instead says the noun was probably remade from haten and replaced hete. The descendant relationship is real enough to graph, but not clean enough to hide the fork.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1145 AND 1149
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1147,1148) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1145 AND 1149;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 969 AND 972;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 969 AND 972;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 969 AND 972;
