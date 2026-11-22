-- Promote the only two candidates already supported by multiple reviewed dossiers.
-- This migration also repairs the intellect dossier's Old French language identity:
-- migration 0047 described intellecte as Old French but accidentally assigned the
-- Classical Arabic language id. Both the dossier form and its canonical node are
-- corrected together so canonical identity remains exact.

UPDATE `forms`
SET `language_id`=8
WHERE `id`=433;
--> statement-breakpoint

UPDATE `lexeme_nodes`
SET `language_id`=8,
  `canonical_key`='node:8:intellecte:attested:sense:perception-understanding'
WHERE `canonical_key`='node:15:intellecte:attested:sense:perception-understanding';
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(77,'calculator','calculator','calculator','/ˈkælkjəˌleɪtər/','noun','A person or device that calculates, inherited from a medieval human-reckoner word and the Latin counting-pebble family.','A calculator was a person before it was a device. The medieval word named someone who counted or computed; the electronic machine inherited the human agent''s title.','reviewed'),
(78,'intelligent','intelligent','intelligent','/ɪnˈtɛlɪdʒənt/','adjective','Having or showing understanding, judgment, or mental capacity; borrowed from the Latin participle of intellegere.','English intelligent was not built from English intelligence. The adjective enters from Latin intelligens, while the English noun follows its own French and Latin abstract-noun route.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(190,'mw-calculator','Calculator — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/calculator',NULL,'historical_dictionary'),
(191,'ahd-intelligent','American Heritage Dictionary: intelligent','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=intelligent',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(448,77,1,1,'calculator','calculator','person-and-device',NULL,'/ˈkælkjəˌleɪtər/','attested','14th century–today',1300,NULL,'one who calculates; later especially a calculating machine or electronic device','The source reports the word first for a human reckoner. The device sense is later, but no unsupported first-machine date is assigned.'),
(449,77,2,2,'calkelatour','calkelatour','human-reckoner',NULL,NULL,'attested','Middle English, 14th–15th centuries',1300,1500,'one who counts or computes; a mathematician',NULL),
(450,77,9,3,'calculātor','calculator','arithmetic-teacher',NULL,NULL,'attested','Latin antiquity and Late Latin',0,600,'a teacher of arithmetic; a calculating person',NULL),
(451,77,9,4,'calculāre','calculare','default',NULL,NULL,'attested','Latin antiquity and Late Latin',-100,600,'to count, reckon, or compute',NULL),
(452,77,9,5,'calculus','calculus','default',NULL,NULL,'attested','Latin antiquity',-300,500,'pebble; counting-board pebble; calculation or account',NULL),
(453,77,9,6,'calx','calx','default',NULL,NULL,'attested','Latin antiquity',-500,500,'lime or limestone','The traditional calculus-to-calx route is proposed rather than settled.'),
(454,77,7,7,'UNKNOWN','unknown','calculator-deep-boundary',NULL,NULL,'boundary','before the disputed Latin stone route',NULL,NULL,'No single deeper ancestor is selected beyond the disputed calculus and calx analysis.','The possible shared Mediterranean substrate route remains visible in the canonical calculus graph.'),

(455,78,1,1,'intelligent','intelligent','mental-capacity-and-judgment',NULL,'/ɪnˈtɛlɪdʒənt/','attested','circa 1540–today',1540,NULL,'having or showing understanding, judgment, or mental capacity; later also computer-guided',NULL),
(456,78,9,2,'intelligent-, intelligēns','intelligens','default',NULL,NULL,'attested','Latin antiquity',-100,500,'understanding or discerning; present participle of intellegere',NULL),
(457,78,9,3,'intellegere / intelligere','intellegere intelligere','default',NULL,NULL,'attested','Latin antiquity',-300,500,'to understand, perceive, or discern',NULL),
(458,78,9,4,'legere','legere','default',NULL,NULL,'attested','Latin antiquity',-700,500,'to gather, select, choose, or read',NULL),
(459,78,6,5,'*leǵ-','leg','default',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'to collect or gather','The competing *sleǵ- root shape remains a published challenge.'),
(460,78,7,6,'UNKNOWN','unknown','intelligent-deep-boundary',NULL,NULL,'boundary','before the disputed gather reconstruction',NULL,NULL,'No deeper ancestor is promoted beyond the live *leǵ- / *sleǵ- dispute.',NULL);
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(372,77,448,449,'inheritance','Middle English calkelatour loses unstressed material and stabilizes with the learned agent ending -or as calculator.','The human reckoner sense survives while the agent label later transfers to mechanical and electronic calculating devices.','Merriam-Webster editors','established',NULL,'The word is reported from the 14th century; the source does not assign one first date to the machine sense.','reviewed'),
(373,77,449,450,'borrowing','Middle English calkelatour adapts Latin calculātor with vernacular vowel and consonant spelling.','The Latin arithmetic teacher or reckoner remains a person who counts or computes.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(374,77,450,451,'derivation','Latin calculātor is an agent noun in -tor formed from the stem calculā- of calculāre.','The act of counting or computing is recast as the person who performs it.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(375,77,451,452,'derivation','Calculāre is derived from calculus.','Manipulating counting pebbles becomes the general act of computation.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(376,77,452,453,'proposed_derivation','Calculus has traditionally been treated as an irregular diminutive of calx, but the phonology and meanings are problematic and a shared non-Indo-European source with a Greek stone-word has been proposed.','A small stone or pebble may connect to lime or limestone; the route is unsettled.','Merriam-Webster editors summarizing Festus and Beekes','proposed','The calculus-to-calx derivation is not secure.',NULL,'reviewed'),
(377,77,453,454,'knowledge_boundary','The traditional limestone route and substrate alternatives do not yield a single secure deeper chain.','The graph stops at the live etymological dispute.','SET-U editorial boundary','boundary','The canonical calculus node preserves the separate common-substrate proposal.',NULL,'reviewed'),

(378,78,455,456,'borrowing','English intelligent adapts the Latin participial stem intelligent- with English stress, vowel, and final-consonant treatment.','Latin understanding and discernment become the English adjective for mental capacity, judgment, and later computer-guided behavior.','Merriam-Webster · American Heritage editors','established',NULL,'Merriam-Webster reports first known English use circa 1540.','reviewed'),
(379,78,456,457,'inflection','intelligēns is the present participial formation of intellegere / intelligere.','The one understanding supplies the adjective and abstract noun family.','Latin lexicography','established',NULL,NULL,'reviewed'),
(380,78,457,458,'derivation','Latin intellegere is traditionally analyzed as inter- plus legere, with phonological assimilation.','Selecting or discerning among becomes understanding; the exact semantic bridge should not be over-literalized.','Merriam-Webster · Latin lexicography','probable','The morphology is strong; a slogan such as “choose between” is not a full semantic history.',NULL,'reviewed'),
(381,78,458,459,'inheritance','Latin legere is traditionally assigned to the *leǵ- family; *sleǵ- remains a published alternative.','Gathering and selecting extend into reading.','Indo-European lexicography','probable','Root shape is disputed.',NULL,'reviewed'),
(382,78,459,460,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops at the live reconstruction dispute.','SET-U editorial boundary','boundary','The boundary prevents either reconstructed root shape from being treated as an attested word.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(372,190,'Word History: Middle English calkelatour; definitions','supports','Documents the medieval human-reckoner form and the modern person and device senses.'),
(373,190,'Word History: borrowed from Latin calculātor','supports','Documents the Latin-to-Middle-English borrowing.'),
(374,190,'Word History: calculā- plus the agent suffix -tor','supports','Documents the agent-noun formation.'),
(375,59,'Word History: calculāre from calculus','supports','Documents the counting-pebble verb formation.'),
(376,60,'Etymology note','supports','Documents the traditional irregular diminutive analysis and the alternative substrate proposal.'),
(376,61,'Etymology note','challenges','Documents problems with a simple secure calx derivation.'),
(377,60,'Unresolved calculus etymology','supports','Supports stopping the linear path rather than choosing one deeper source.'),
(378,45,'Word History and First Known Use','supports','Documents direct Latin participial ancestry and circa-1540 English use.'),
(378,191,'Headword etymology and definitions','supports','Independently documents the Latin participle and the understanding and judgment senses.'),
(379,45,'Word History: present participle of intelligere / intellegere','supports','Documents the participial formation.'),
(379,191,'Headword etymology: Latin intelligēns','supports','Independently documents the Latin present participle.'),
(380,45,'Word History: inter- plus legere','supports','Documents the traditional morphological analysis.'),
(380,50,'Headword intellegō','context','Supplies Latin lexical evidence without turning morphology into a complete theory of cognition.'),
(381,37,'Root *leg- and listed Latin reflexes','supports','Places Latin legere and intellegere in the traditional gather-and-select family.'),
(381,38,'Argument for *sleg-','challenges','Preserves the published alternative root shape.'),
(382,38,'Reconstruction boundary','supports','Supports withholding a single deeper ancestor beyond the disputed reconstruction.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(112,448,190,'14th century',1350,'Merriam-Webster source-reported Middle English record','Word History and First Known Use','Middle English calkelatour, one who counted or computed.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected medieval object or proof of coinage.'),
(113,455,45,'circa 1540',1540,'Merriam-Webster source-reported English record','First Known Use','Intelligent in the mental-capacity sense.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected historical object or proof of first speech.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(247,77,'calculate','English','immediate verb in the same computation family',59),
(248,77,'calculus','Latin / English','counting-pebble and mathematical family',60),
(249,78,'intelligence','English','sibling abstract noun from the same Latin participial family',44),
(250,78,'intellect','English','same Latin understanding-verb family',187),
(251,78,'legend','English','more distant Latin legere descendant',45),
(252,78,'select','English','gather-and-choose family relative',37);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(284,77,1,'Roman world','Latin antiquity and Late Latin','Calculus, calculāre, and calculātor connect counting pebbles, computation, and the human arithmetic teacher.',41900000,12500000,'broad',-300,600,'range','The broad interval locates the reviewed Latin lexical family rather than one coinage event.'),
(285,77,2,'Medieval England','14th-century English record','Middle English calkelatour names a person who counts or computes.',52200000,-1500000,'regional',1300,1399,'century','The bounds encode the reported century, not a directly inspected earliest object.'),
(286,77,3,'English technical culture','machine specialization, date unresolved','The human agent label transfers to calculating devices; the reviewed headword source does not assign one first-machine year.',NULL,NULL,'broad',NULL,NULL,'unresolved','The machine-sense transition remains unbounded until a directly located historical source is added.'),
(287,77,4,'Global English','14th century–today','Calculator now names both a calculating person and, predominantly, a mechanical, electronic, or software device.',NULL,NULL,'global',1300,NULL,'open','The open interval begins with the reported English century and does not date every later device class.'),

(288,78,1,'Indo-European linguistic horizon','reconstructed gather-and-select family','Comparative evidence reconstructs a gather root while *leǵ- and *sleǵ- analyses remain in dispute.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','A linguistic reconstruction does not establish one archaeological point or exact date.'),
(289,78,2,'Roman world','Latin antiquity','Intelligēns and intellegere name understanding, perception, and discernment.',41900000,12500000,'broad',-300,500,'range','The broad interval locates the reviewed Latin lexical horizon rather than one first occurrence.'),
(290,78,3,'England','circa 1540 English record','English intelligent appears in the reviewed lexicographic record for mental capacity.',52200000,-1500000,'regional',1535,1545,'circa','The ten-year interval encodes circa 1540 as an approximate lexicographic horizon, not proof of coinage.'),
(291,78,4,'Global English','circa 1540–today','The adjective expands across judgment, rationality, life, systems, machines, and computer-guided devices.',NULL,NULL,'global',1540,NULL,'open','The open interval begins at the reviewed English horizon without assigning invented dates to later technical senses.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(284,190,'Word History: Latin calculātor and Late Latin calculāre','supports','Documents the Latin arithmetic-agent and computation stages.'),
(284,60,'Word History and etymology note: Latin calculus','context','Supplies the counting-pebble and account family behind the verb.'),
(285,190,'Word History and First Known Use','supports','Reports the Middle English human reckoner and 14th-century horizon.'),
(286,190,'Definitions: person and electronic device','supports','Documents both senses while leaving their transition date unresolved.'),
(287,190,'Definitions and First Known Use','supports','Documents the continuing person and device senses from the reviewed English horizon.'),
(288,37,'Root *leg- and intelligence reflexes','supports','Supplies the reconstructed family without a precise point location.'),
(288,38,'Argument for *sleg-','challenges','Preserves the competing root shape.'),
(289,45,'Word History: Latin intelligens and intellegere','supports','Documents the Latin understanding family.'),
(290,45,'First Known Use','supports','Reports circa 1540 for English intelligent.'),
(291,45,'Definitions and First Known Use','supports','Documents the English horizon and modern mental and computer-guided senses.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(124,77,'Was a calculator originally a machine?','No. The reviewed English history begins with Middle English calkelatour, a person who counted or computed; the machine inherits that human agent label.','established','Merriam-Webster documents the medieval human meaning, Latin agent noun, modern device definition, and 14th-century horizon.','resolved','The dossier places the human reckoner before the undated machine specialization.'),
(125,77,'Does calculator securely descend beyond Latin calculus to calx?','The calculator-to-calculare-to-calculus chain is established, but the traditional calculus-to-calx derivation is proposed. A possible shared Mediterranean substrate source remains a competing route.','proposed','Merriam-Webster records both the traditional limestone analysis and the Greek or common-substrate objections.','open',NULL),
(126,78,'Was English intelligent formed from English intelligence?','No. The adjective is borrowed from Latin intelligent-, intelligens; the English noun intelligence follows its own abstract-noun transmission through French and Latin intelligentia.','established','Merriam-Webster publishes different immediate histories for the adjective and noun.','resolved','The graph connects both words at their Latin family without inventing an English noun-to-adjective derivation.'),
(127,78,'Is *leǵ- the only published root shape behind intelligent?','No. The traditional *leǵ- analysis remains probable, while *sleǵ- is a published alternative. Neither reconstructed shape is treated as an attested word.','proposed','The UT Austin Indo-European Lexicon supplies *leg-; Kaczyńska argues for *sleg-.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(124,190,'Word History; definitions; First Known Use','supports','Documents the human reckoner before the modern device sense.'),
(125,60,'Etymology note','supports','Documents the traditional calx route and the possible common-source alternative.'),
(125,61,'Etymology note','challenges','Documents the irregularity of treating calculus as a straightforward diminutive of calx.'),
(126,45,'Word History: Latin intelligent-, intelligens','supports','Documents the adjective''s direct Latin participial ancestry.'),
(126,44,'Word History: French and Latin intelligentia','context','Documents the English noun''s distinct abstract-noun transmission route.'),
(127,37,'Root *leg- and Latin reflexes','supports','Supplies the traditional gather-root analysis.'),
(127,38,'Argument for *sleg-','challenges','Supplies the published alternative root shape.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(62,77,2001,'calculator','A calculator was a person before it was a device.','Middle English calkelatour named someone who counted or computed. The machine later inherited the human arithmetic agent''s title.','A',98,'The human-first sequence is directly published; the first machine-sense date remains deliberately unclaimed.'),
(63,78,2002,'intelligent','Intelligent did not descend from English intelligence.','English intelligent is borrowed from a Latin present participle. Intelligence follows a sibling French and Latin abstract-noun route; the words meet deeper than modern English.','A',97,'Both immediate histories are directly published; the remote reconstructed root shape remains disputed.');
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
(62,190,'Word History; definitions; First Known Use','supports','Documents the medieval human reckoner, the modern device sense, and the chronology boundary.'),
(63,45,'Word History: Latin intelligent-, intelligens','supports','Documents direct Latin participial ancestry for the adjective.'),
(63,44,'Word History: French and Latin intelligentia','context','Documents the sibling abstract-noun route for English intelligence.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(40,77,74,'THE DEVICE STILL CARRIES THE COUNTING PEBBLE','Calculator reaches Latin calculus through calculātor and calculāre: the electronic tool still carries the name of a human reckoner and, deeper, a counting pebble.',100,'A','reviewed'),
(41,78,13,'THE ADJECTIVE AND THE INTELLIGENCE SERVICE MEET IN LATIN','Intelligent enters English from the Latin participle; intelligence arrives through the related abstract noun before expanding into information and institutions.',98,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id BETWEEN 77 AND 78
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
WHERE f.entry_id BETWEEN 77 AND 78;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 77 AND 78;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 77 AND 78;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 77 AND 78;
