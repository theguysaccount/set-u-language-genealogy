-- The next graph-derived promotion-ready candidate becomes a complete dossier.
-- HUMILITY keeps physical, social, and moral senses of Latin HUMILITAS
-- separate, preserves the French and Middle English transmission, and reuses
-- the reviewed HUMILIS, HUMUS, and reconstructed earth-family nodes.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(166,'humility','humility','humility','/hjuːˈmɪləti/','noun','Freedom from pride or arrogance; the quality or condition of being humble.','Humility did not begin as modern advice to think less of yourself. Classical Latin humilitās named literal lowness, low stature, social insignificance, and even abjectness. Ecclesiastical Latin recast the same noun as the positive virtue opposed to pride before French and English inherited it.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(391,'mw-humility','Humility — Definition, Use, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/humility',NULL,'historical_dictionary'),
(392,'ahd-humility','Humility — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=humility',NULL,'historical_dictionary'),
(393,'cnrtl-humilite','Humilité — étymologie et histoire','CNRTL · ATILF Editors',2026,'CNRS · Université de Lorraine','https://www.cnrtl.fr/etymologie/humilit%C3%A9',NULL,'historical_dictionary'),
(394,'scaife-ls-humilitas','Humilitas — Lewis and Short Latin Dictionary','Charlton T. Lewis · Charles Short · Scaife ATLAS Editors',1879,'Tufts University Scaife ATLAS','https://atlas.perseus.tufts.edu/dictionaries/entry/urn%3Acite2%3Ascaife-viewer%3Adictionary-entries.atlas_v1%3Alat.ls.perseus-eng2-n21059/',NULL,'scholarly_lexicon'),
(395,'med-humblen','Humblen — Middle English Dictionary entry and citations','Middle English Dictionary Editors',2026,'University of Michigan Library','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED21451',NULL,'historical_dictionary'),
(396,'mw-humiliation','Humiliation — Definition and Etymology','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/humiliation',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1053,166,1,1,'humility','humility','freedom-from-pride-noun','humility','/hjuːˈmɪləti/','attested','14th century–today',1300,NULL,'freedom from pride or arrogance; the quality or state of being humble','Merriam-Webster centers the current virtue sense and reports a fourteenth-century English horizon.'),
(1054,166,2,2,'humilite','humilite','humble-quality-noun','humilite',NULL,'attested','Middle English, 14th–15th centuries',1300,1500,'humility; humble disposition or conduct','American Heritage names the Middle English form; the Middle English Dictionary reports humylitee in a Chaucer citation.'),
(1055,166,8,3,'humilité','humilite','humble-quality-noun','humilité',NULL,'attested','Old French, attested from the later 10th century',950,1400,'quality of one who is humble; abasement before God','CNRTL reports the Old French family from the second half of the tenth century.'),
(1056,166,77,4,'humilitās','humilitas','virtue-opposed-pride','humilitās',NULL,'attested','Ecclesiastical Latin',200,600,'lowness in a positive moral sense; humility opposed to pride','Lewis and Short explicitly distinguishes this good ecclesiastical sense from the older Latin fields.'),
(1057,166,9,5,'humilitās','humilitas','physical-social-lowness','humilitās',NULL,'attested','Classical Latin',-100,200,'literal low height or stature; low rank, insignificance, meanness, or abjectness','The classical record is semantically broader and often less positive than the later virtue sense.'),
(1058,166,9,6,'humilis','humilis','low-ground-adjective','humilis',NULL,'attested','Latin antiquity',-700,700,'near the ground; low; lowly; humble','The exact canonical adjective already shared by humble and humiliate.'),
(1059,166,9,7,'humus','humus','earth-soil','humus',NULL,'attested','Latin antiquity',-700,700,'earth; soil; ground','The exact canonical Latin earth noun shared across the reviewed family.'),
(1060,166,6,8,'*(dh)ghom-o-','dhghom-o','earth-o-grade-formation','*(dh)ghom-o-',NULL,'reconstructed','Proto-Indo-European suffixed o-grade formation',-4500,-2500,'earth; ground','The specific formation printed behind Latin humus.'),
(1061,166,6,9,'*dhghem-','dhghem','earth-root','*dhghem-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'earth','The canonical earth root shared across the reviewed family.'),
(1062,166,6,10,'*dhg̑hem-','dhghem-oldest','earth-oldest-root','*dhg̑hem-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'earth','The oldest printed form in the reviewed root appendix.'),
(1063,166,7,11,'UNKNOWN','unknown','humility-deep-boundary',NULL,NULL,'boundary','before the reviewed *dhg̑hem- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed earth root.','The history of a moral term does not reduce moral worth to physical height, class, or soil.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(888,166,1053,1054,'orthographic_continuation','Middle English humilite continues as humility with modern English -ity spelling and pronunciation.','The inherited humble-quality sense continues into the current freedom-from-pride center.','American Heritage Dictionary Editors · Merriam-Webster Editors','established','The sources identify the form sequence but do not date one exact spelling replacement.','Merriam-Webster reports English use in the fourteenth century.','reviewed'),
(889,166,1054,1055,'borrowing','Middle English humilite adapts the French form without its written accent and within English phonology.','The French humble-quality and religious-abasement field enters Middle English.','American Heritage Dictionary Editors','established',NULL,'The broad fourteenth-century horizon is lexicographic, not an exact borrowing event.','reviewed'),
(890,166,1055,1056,'borrowing','Old French humilité adapts Latin humilitās with the Romance noun ending represented as -ité.','The ecclesiastical virtue and abasement senses continue in French.','CNRTL · ATILF Editors · American Heritage Dictionary Editors','established','CNRTL treats the French noun as borrowed from Latin; this edge does not invent an unattested intermediate form.','CNRTL reports a later-tenth-century French record.','reviewed'),
(891,166,1056,1057,'semantic_specialization','The Latin form humilitās remains segmentally continuous across the modeled sense boundary.','Literal and social lowness is positively specialized in ecclesiastical Latin as humility opposed to pride.','Charlton T. Lewis · Charles Short','established','This is a sense-specific graph split, not a claim that two unrelated Latin nouns existed.','Lewis and Short labels the positive sense ecclesiastical Latin.','reviewed'),
(892,166,1057,1058,'derivation','Latin humilitās is formed from humilis with the abstract noun suffix -itās.','The property of being low names physical lowness, low station, insignificance, and related abstractions.','Charlton T. Lewis · Charles Short','established',NULL,NULL,'reviewed'),
(893,166,1058,1059,'derivation','Latin humilis is formed from humus, earth or ground, with adjectival morphology and vowel adjustment.','Near-the-ground or low develops into low in rank and humble.','Merriam-Webster Editors · Calvert Watkins and American Heritage Dictionary Editors','established','The etymology establishes the formation, not one datable instant of metaphorical change.',NULL,'reviewed'),
(894,166,1059,1060,'inheritance','Latin humus reflects the suffixed o-grade formation *(dh)ghom-o-.','Earth and soil preserve the reconstructed meaning.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(895,166,1060,1061,'morphological_derivation','The suffixed o-grade *(dh)ghom-o- is built on *dhghem-, earth.','The earth meaning remains stable.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(896,166,1061,1062,'root_extension','The appendix identifies *dhg̑hem- as the oldest shape behind centum *dhghem-.','The earth field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(897,166,1062,1063,'knowledge_boundary','No older form is promoted beyond reviewed *dhg̑hem-.','The humility trail ends where the published comparative earth root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(888,392,'Etymology: Middle English humilite','supports','Publishes the immediate Middle English form.'),
(888,391,'Definition and First Known Use: 14th century','context','Documents the current sense and broad English horizon.'),
(889,392,'Middle English humilite, from Old French','supports','Publishes the French-to-Middle-English route.'),
(890,392,'Old French, from Late Latin humilitās','supports','Publishes the French-to-Latin route.'),
(890,393,'Emprunt au latin humilitas; later 10th-century humilitiet','supports','Publishes the Latin source and early French record.'),
(891,394,'Classical literal and figurative senses; ecclesiastical good sense opposed to pride','supports','Directly distinguishes the older lowness fields from the positive ecclesiastical specialization.'),
(891,393,'Classical low elevation, modest state, abasement; Christian humility and modesty','supports','Independently documents the same Latin semantic chronology.'),
(892,394,'Humilitas, humilis: lowness','supports','Publishes the adjective-to-abstract-noun derivation.'),
(893,391,'Humility and humble originate in Latin humilis, low','context','Documents the low semantic base.'),
(893,371,'Etymology: Latin humilis from humus earth','supports','Publishes the adjective formation.'),
(893,390,'Humilis: near the ground, low down, and figuratively low or lowly','context','Documents the physical and social Latin adjective fields.'),
(894,337,'dhghem- item 4: *(dh)ghom-o- to Latin humus, humble, and humility','supports','Publishes the exact Latin earth formation.'),
(895,337,'dhghem- root heading and item 4','supports','Analyzes the suffixed o-grade under the earth root.'),
(896,337,'dhghem- heading: oldest *dhg̑hem- to centum *dhghem-','supports','Publishes the oldest printed root shape.'),
(897,337,'dhghem- entry endpoint','supports','Defines the deepest reviewed comparative horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(202,1053,391,'14th century first known use',NULL,'Merriam-Webster first-known-use report','Word History: First Known Use','14th century, in the current freedom-from-pride sense','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying medieval object was directly inspected, and the horizon is not treated as a coinage date.'),
(203,1054,395,'circa 1390 reported quotation',1390,'Middle English Dictionary citation to Chaucer’s Parson’s Tale','c1390 Chaucer CT.Pars. I.989','Right as he hath humylitee to god in his herte','established','lexical_corpus_record','Middle English Dictionary',NULL,NULL,0,'The dictionary citation and short excerpt were inspected; the underlying manuscript object was not, so this remains source-reported.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(554,166,'humble','English / Latin route','adjective sibling through the same Latin humilis base',391),
(555,166,'humiliate','English / Latin route','verb-family relative through Late Latin humiliare and Latin humilis',337),
(556,166,'humus','English / Latin route','modern soil noun reusing the Latin earth base',337),
(557,166,'exhume','English / Latin route','deep cousin through a separately prefixed humus formation',337),
(558,166,'humiliation','English / Latin route','action and state noun in the parallel humiliatus and humiliatio branch',396);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(625,166,1,'Indo-European linguistic horizon','*(dh)ghom-o-, *dhghem-, and *dhg̑hem-','The reviewed comparison reaches a reconstructed earth family without assigning it one homeland point.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The source supplies comparative forms but no unique place or first date.'),
(626,166,2,'Classical and Ecclesiastical Latin record','humilitās from lowness to virtue','The same Latin noun spans physical height, social rank, abjectness, and the later positive opposition to pride.',NULL,NULL,'broad',-100,600,'range','The interval locates cited Latin sense records rather than one datable semantic switch.'),
(627,166,3,'Northern France','later 10th century–1400 Old French','French humilité carries the Christian virtue and abasement fields from Latin.',49000000,2500000,'regional',950,1400,'range','The range begins with CNRTL’s later-tenth-century lexical report and does not claim one exact borrowing year.'),
(628,166,4,'England','14th-century Middle English and English','Middle English humilite and reported humylitee attest the noun before the modern spelling.',52200000,-1500000,'regional',1300,1399,'century','The bounds preserve the source-reported century; the circa-1390 citation is evidence within it, not proof of the first use.'),
(629,166,5,'Global English','modern humility','The current noun centers freedom from pride or arrogance and the quality of being humble.',NULL,NULL,'global',NULL,NULL,'unresolved','Current distribution is not assigned a fabricated first year or single map point.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(625,337,'dhghem- heading and item 4','supports','Publishes the reconstructed earth forms.'),
(626,394,'Humilitas: literal, social, abject, and ecclesiastical senses','supports','Documents the Latin semantic span.'),
(626,393,'Latin classical and Christian sense chronology','supports','Independently documents the semantic sequence.'),
(627,393,'Later 10th-century humilitiet; borrowing from Latin humilitas','supports','Publishes the early French horizon and Latin source.'),
(627,392,'Old French from Late Latin humilitās','context','Publishes the named French transmission stage.'),
(628,392,'Middle English humilite','supports','Publishes the Middle English form.'),
(628,395,'c1390 Chaucer CT.Pars. I.989: humylitee','supports','Publishes a located Middle English lexical occurrence.'),
(629,391,'Current definition','supports','Documents the current freedom-from-pride center.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(314,166,'Was humility originally a positive moral virtue?','Not in every recorded Latin sense. Classical humilitās names physical lowness and low stature, then low rank, insignificance, meanness, or abjectness. Lewis and Short separately marks the good sense opposed to pride as ecclesiastical Latin.','established','Lewis and Short supplies the sense sequence; CNRTL independently distinguishes classical physical and social lowness from the Christian virtue sense.','resolved','The graph preserves classical and ecclesiastical sense nodes instead of projecting the later virtue backward onto every Latin occurrence.'),
(315,166,'What is the earliest secure English humility witness?','Merriam-Webster reports the fourteenth century broadly. The Middle English Dictionary supplies a circa-1390 Chaucer citation with humylitee, but this review did not inspect its underlying manuscript witness, and the located citation does not prove that no earlier English occurrence survives.','probable','The sources support a fourteenth-century horizon and a specific reported occurrence, not one verified first object.','open','Promote an exact earlier manuscript or edition witness only after direct facsimile inspection and textual-location verification.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(314,394,'Humilitas: classical literal and figurative senses; ecclesiastical good sense opposed to pride','supports','Publishes the semantic distinction.'),
(314,393,'Classical low elevation and abasement; Christian humility and modesty','supports','Independently confirms the chronology.'),
(314,391,'Use note: lowness in humility is typically chosen by oneself','context','Documents the current positive framing without projecting it backward.'),
(315,391,'First Known Use: 14th century','supports','Publishes the broad English horizon.'),
(315,395,'c1390 Chaucer CT.Pars. I.989','context','Supplies one located Middle English dictionary citation but not a directly inspected manuscript object.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(166,166,2077,'humility','Humility first meant lowness before it became a virtue.','Classical Latin humilitās could mean low height, low stature, low rank, insignificance, or abjectness. Ecclesiastical Latin positively specialized the same noun as the virtue opposed to pride; French and English inherit that transformed moral history.','A',100,'The reveal distinguishes recorded sense chronology from the appealing but incomplete modern slogan that humility simply means being grounded.');
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
(166,394,'Humilitas: classical lowness fields and ecclesiastical good sense opposed to pride','supports','Publishes the semantic transformation at the center of the reveal.'),
(166,393,'Latin classical and Christian sense chronology','supports','Independently confirms the classical-to-Christian distinction.'),
(166,392,'Middle English humilite from Old French from Late Latin humilitās','context','Publishes the transmission into English.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(121,166,165,'THE SAME LOW BECAME A VIRTUE AND A WOUND','Humility and humiliate meet at Latin humilis, low: one branch becomes a freely chosen virtue opposed to pride, while the other becomes the act of lowering someone into shame.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1053 AND 1063
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
WHERE f.id BETWEEN 1053 AND 1063;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 888 AND 897;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 888 AND 897;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 888 AND 897;
