-- The first graph-derived promotion-ready candidate becomes a complete dossier.
-- HUMILIATE preserves Merriam-Webster's participial route and American
-- Heritage's compatible verb-stem summary, then reuses the reviewed HUMILIS,
-- HUMUS, and reconstructed earth-family nodes instead of duplicating history.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(165,'humiliate','humiliate','humiliate','/hjuːˈmɪlieɪt/','verb','To reduce someone in their own or others’ estimation, causing shame or loss of dignity; from Late Latin forms meaning to make low or humble.','Humiliate is historically a lowering word. Its Latin route passes through humiliāre, to make low or humble, and humilis, low or near the ground, before reaching humus, earth. It does not descend from modern English humus.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(388,'mw-humiliate','Humiliate — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/humiliate',NULL,'historical_dictionary'),
(389,'ahd-humiliate','Humiliate — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://ahdictionary.com/word/search.html?q=humiliated',NULL,'historical_dictionary'),
(390,'logeion-humilis','Humilis — Logeion lexical record','University of Chicago Logeion · Lewis and Short Editors',2026,'University of Chicago','https://logeion.uchicago.edu/humilis',NULL,'scholarly_lexicon');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1044,165,1,1,'humiliate','humiliate','make-low-shame-verb','humiliate','/hjuːˈmɪlieɪt/','attested','circa 1534–today',1534,NULL,'reduce to a lower position in one’s own or others’ eyes; cause shame or embarrassment','The current psychological and social senses retain the inherited lowering structure.'),
(1045,165,77,2,'humiliātus','humiliatus','made-low-participle','humiliātus',NULL,'attested','Late Latin',200,600,'made low or humble','Merriam-Webster names this past participle as the immediate source form.'),
(1046,165,77,3,'humiliāre','humiliare','make-low-verb','humiliāre',NULL,'attested','Late Latin',200,600,'to make low or humble','The denominative verb printed by both reviewed headword dictionaries.'),
(1047,165,9,4,'humilis','humilis','low-ground-adjective','humilis',NULL,'attested','Latin antiquity',-700,700,'near the ground; low; lowly; humble','The exact canonical adjective already exposed by the humble dossier.'),
(1048,165,9,5,'humus','humus','earth-soil','humus',NULL,'attested','Latin antiquity',-700,700,'earth; soil; ground','The exact canonical Latin earth noun shared with humble, humus, and exhume.'),
(1049,165,6,6,'*(dh)ghom-o-','dhghom-o','earth-o-grade-formation','*(dh)ghom-o-',NULL,'reconstructed','Proto-Indo-European suffixed o-grade formation',-4500,-2500,'earth; ground','The specific formation printed behind Latin humus.'),
(1050,165,6,7,'*dhghem-','dhghem','earth-root','*dhghem-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'earth','The canonical earth root shared across the reviewed family.'),
(1051,165,6,8,'*dhg̑hem-','dhghem-oldest','earth-oldest-root','*dhg̑hem-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'earth','The oldest printed form in the reviewed root appendix.'),
(1052,165,7,9,'UNKNOWN','unknown','humiliate-deep-boundary',NULL,NULL,'boundary','before the reviewed *dhg̑hem- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed earth root.','A ground metaphor in the ancestry does not define the moral worth of any person.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(880,165,1044,1045,'borrowing','English humiliate adapts the stem of Late Latin humiliātus, dropping Latin inflection and developing the English -ate pronunciation.','Made low or humble develops into reduction in status, dignity, or self-estimation and the causing of shame.','Merriam-Webster Editors','established',NULL,'Merriam-Webster reports English use circa 1534.','reviewed'),
(881,165,1045,1046,'inflection','Late Latin humiliātus is the past participle of humiliāre.','The completed state of being made low preserves the causative verb meaning.','Merriam-Webster Editors','established',NULL,'A Late Latin inflectional relation.','reviewed'),
(882,165,1046,1047,'derivation','Late Latin humiliāre is formed from Latin humilis with verbal morphology.','Low or humble becomes the causative action to make low or humble.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(883,165,1047,1048,'derivation','Latin humilis is formed from humus, earth or ground, with adjectival morphology and vowel adjustment.','Near-the-ground or low develops into low in rank and humble.','Merriam-Webster Editors · Calvert Watkins and American Heritage Dictionary Editors','established','The etymology establishes the formation, not one datable instant of metaphorical change.',NULL,'reviewed'),
(884,165,1048,1049,'inheritance','Latin humus reflects the suffixed o-grade formation *(dh)ghom-o-.','Earth and soil preserve the reconstructed meaning.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(885,165,1049,1050,'morphological_derivation','The suffixed o-grade *(dh)ghom-o- is built on *dhghem-, earth.','The earth meaning remains stable.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(886,165,1050,1051,'root_extension','The appendix identifies *dhg̑hem- as the oldest shape behind centum *dhghem-.','The earth field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(887,165,1051,1052,'knowledge_boundary','No older form is promoted beyond reviewed *dhg̑hem-.','The humiliate trail ends where the published comparative earth root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(880,388,'Word History: Late Latin humiliatus; First Known Use circa 1534','supports','Publishes the immediate participial source and English horizon.'),
(880,389,'Late Latin humiliāre, humiliāt-, to humble','context','Publishes the compatible verb-and-stem summary.'),
(881,388,'Humiliatus, past participle of humiliare','supports','Publishes the inflectional relation.'),
(882,388,'Humiliare from Latin humilis low','supports','Publishes the adjective-to-verb formation.'),
(882,389,'Humiliāre, humiliāt-, from humilis','supports','Independently publishes the Late Latin formation.'),
(883,388,'Word Origin: humiliare from humilis low or humble, from humus earth','supports','Publishes the ground-to-low chain.'),
(883,371,'Etymology: Latin humilis from humus earth','supports','Independently publishes the adjective formation.'),
(883,390,'Humilis: near the ground, low down, and figuratively low or lowly','context','Documents both physical and social Latin sense fields.'),
(884,337,'dhghem- item 4: *(dh)ghom-o- to Latin humus and humiliate','supports','Publishes the exact Latin earth formation.'),
(885,337,'dhghem- root heading and item 4','supports','Analyzes the suffixed o-grade under the earth root.'),
(886,337,'dhghem- heading: oldest *dhg̑hem- to centum *dhghem-','supports','Publishes the oldest printed root shape.'),
(887,337,'dhghem- entry endpoint','supports','Defines the deepest reviewed comparative horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(201,1044,388,'circa 1534 first known use',1534,'Merriam-Webster first-known-use report','Word History: First Known Use','circa 1534, in the meaning defined above','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported first-use horizon; no underlying 1534 object was directly inspected, and the date is not treated as proof of coinage.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(549,165,'humble','English / Latin route','sibling English continuation of Latin humilis through French',388),
(550,165,'humility','English / Latin route','abstract quality noun in the humilis family',337),
(551,165,'humiliation','English / Latin route','action and state noun formed through Late Latin humiliatio',388),
(552,165,'humus','English / Latin route','modern soil noun reusing the Latin earth base',388),
(553,165,'exhume','English / Latin route','deep cousin through a separately prefixed humus formation',337);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(621,165,1,'Indo-European linguistic horizon','*(dh)ghom-o-, *dhghem-, and *dhg̑hem-','The reviewed comparison reaches a reconstructed earth family without assigning it one homeland point.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The source supplies comparative forms but no unique place or first date.'),
(622,165,2,'Latin and Late Latin linguistic record','humus through humiliāre','Physical ground and lowness, social lowliness, and the causative verb coexist across Latin stages.',NULL,NULL,'broad',-700,600,'range','The interval locates attested lexical stages rather than one coinage or semantic-change event.'),
(623,165,3,'England','circa 1534 English record','Merriam-Webster reports humiliate in English circa 1534 in the current reduction-and-shame sense.',52200000,-1500000,'regional',1534,1534,'circa','The central year is a source-reported first-known-use horizon, not an exact borrowing event.'),
(624,165,4,'Global English','modern humiliate','The verb now centers reduction of dignity, status, pride, or self-respect across global English.',NULL,NULL,'global',NULL,NULL,'unresolved','Current distribution is not assigned a fabricated first year or single map point.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(621,337,'dhghem- heading and item 4','supports','Publishes the reconstructed earth forms.'),
(622,390,'Humilis: literal near-ground and figurative low or lowly senses','supports','Documents the physical and social Latin semantic field.'),
(622,388,'Word History: humiliatus from humiliare from humilis','supports','Publishes the Late Latin continuation.'),
(623,388,'First Known Use: circa 1534','supports','Publishes the conservative English horizon.'),
(624,388,'Current transitive definition','supports','Documents the current reduction, shame, and embarrassment center.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(312,165,'Is the immediate Latin source a participle or a verb stem?','Merriam-Webster names Late Latin humiliatus, the past participle of humiliare; American Heritage summarizes Late Latin humiliāre, humiliāt-. These are compatible levels of the same formation, not evidence for two unrelated ancestries.','established','The sources differ in entry granularity while agreeing on the Late Latin verb family.','resolved','The dossier spine preserves the participle and the graph exposes the AHD verb-stem summary as a separately cited compatible route.'),
(313,165,'Does English humiliate descend directly from dirt or English humus?','No. English humiliate passes through Late Latin humiliatus and humiliare, then Latin humilis. Humilis is formed from Latin humus; the modern English soil word is a separate later borrowing.','established','Merriam-Webster publishes the full Latin sequence, Logeion preserves the physical and social senses of humilis, and the root appendix places humiliate in the Latin earth branch.','resolved','The graph reuses the Latin humus node but draws no edge from English humus to English humiliate.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(312,388,'Etymology: Late Latin humiliatus, past participle of humiliare','supports','Publishes the participial presentation.'),
(312,389,'Etymology: Late Latin humiliāre, humiliāt-','context','Publishes the compatible verb-and-stem presentation.'),
(313,388,'Word Origin: humus to humilis to humiliare to humiliate','supports','Publishes the mediated Latin route.'),
(313,390,'Humilis literal and figurative senses','context','Shows that ground, lowness, and status senses belong to the Latin adjective.'),
(313,337,'dhghem- item 4: humiliate and humus from Latin humus','supports','Places both words in the same deep branch without making the English words parent and child.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(165,165,2076,'humiliate','Humiliate is historically to make low.','Late Latin humiliāre means to make low or humble and grows from humilis, low or near the ground, which is formed from humus, earth. Modern shame and loss of dignity sit on that lowering history.','A',100,'The reveal follows the complete mediated route and does not claim direct descent from modern English dirt or humus.');
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
(165,388,'Word Origin: humiliare to make low or humble from humilis low from humus earth','supports','Publishes the complete lowering sequence.'),
(165,390,'Humilis: near the ground, low down, lowly','context','Documents the literal and figurative Latin bridge.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(120,165,154,'THE GROUND BENEATH HUMILIATION','Follow humiliate through the act of making low to humilis and humus; humble joins at the exact same Latin adjective before both trails reach earth.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1044 AND 1052
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
WHERE f.id BETWEEN 1044 AND 1052;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 880 AND 887;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 880 AND 887;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 880 AND 887;
--> statement-breakpoint

-- American Heritage compresses the participial detail into a direct
-- verb-and-stem route. Preserve that compatible presentation as a cited graph
-- alternative rather than rewriting either dictionary into the other.
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:humiliate:attested:sense:make-low-shame-verb'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:77:humiliare:attested:sense:make-low-verb'),'competing_borrowing','American Heritage summarizes English humiliate from Late Latin humiliāre and the stem humiliāt-, without promoting the participle as a separate node.','To humble or make low develops into causing loss of pride, dignity, or self-respect.','American Heritage Dictionary Editors','proposed','This is compatible source granularity, not a claim of unrelated borrowing.','AHD supplies no separately dated transfer event.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:humiliate:attested:sense:make-low-shame-verb' AND p.canonical_key='node:77:humiliare:attested:sense:make-low-verb' AND e.relation_type='competing_borrowing'),389,'Late Latin humiliāre, humiliāt-, to humble','supports','Publishes the compressed verb-and-stem route.');
