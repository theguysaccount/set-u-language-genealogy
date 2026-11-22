INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(9,'logic','logic','logic','/ˈlɒdʒɪk/','noun','The discipline and practice of valid reasoning, inherited through French and Latin from a Greek family of word, account, speech, and reason.','Logic and -logy are branches of the same Greek λόγος family. Their deeper “gather” root is a serious reconstruction with a live dispute over whether it began *leǵ- or *sleǵ-.','reviewed');
--> statement-breakpoint
INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(34,'mw-logic','Logic — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/logic',NULL,'historical_dictionary'),
(35,'logeion-logos','Logeion: λόγος','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/%CE%BB%CF%8C%CE%B3%CE%BF%CF%82',NULL,'lexical_database'),
(36,'logeion-lego','Logeion: λέγω','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/%CE%BB%CE%AD%CE%B3%CF%89',NULL,'lexical_database'),
(37,'uta-pie-leg','Indo-European Lexicon: *leg-','Linguistics Research Center',NULL,'University of Texas at Austin','https://lrc.la.utexas.edu/lex/master/1131',NULL,'research_database'),
(38,'kaczynska-2013-lex','The Indo-European Origin of Latin lex','Elwira Kaczyńska',2013,'University of Seville repository','https://idus.us.es/server/api/core/bitstreams/a0de61e5-85d2-4867-96f6-2ca8a30402c3/content',NULL,'journal_article'),
(39,'iecor-1529','IE-CoR Cognate Set 1529: λέγω','IE-CoR Editors',2026,'Cross-Linguistic Linked Data','https://iecor.clld.org/cognatesets/1529',NULL,'research_database'),
(40,'logeion-logikos','Logeion: λογικός','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/%CE%BB%CE%BF%CE%B3%CE%B9%CE%BA%CF%8C%CF%82',NULL,'lexical_database');
--> statement-breakpoint
INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`transliteration`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(50,9,1,1,'logic','logic',NULL,'attested','12th century–today',1100,NULL,'the study or use of valid reasoning',NULL),
(51,9,2,2,'logik','logik',NULL,'attested','Middle English',1100,1500,'the science of reasoning',NULL),
(52,9,12,3,'logique','logique',NULL,'attested','Anglo-French / medieval French',1066,1500,'logic; rational art',NULL),
(53,9,9,4,'logica','logica',NULL,'attested','Latin scholarly tradition',-100,1500,'logic; the logical art',NULL),
(54,9,10,5,'λογική','logike','logikḗ','attested','Ancient Greek',-400,500,'the logical art or science','A substantivized feminine form associated with τέχνη “art.”'),
(55,9,10,6,'λογικός','logikos','logikós','attested','Ancient Greek',-500,500,'of speech, reason, or reasoning',NULL),
(56,9,10,7,'λόγος','logos','lógos','attested','Ancient Greek',-700,600,'word, speech, account, reckoning, reason','A highly polysemous verbal noun; no one English gloss exhausts it.'),
(57,9,10,8,'λέγω','lego','légō','attested','Ancient Greek',-800,600,'gather; count; recount; say','Greek lexicography separates historically related sense groups with care.'),
(58,9,6,9,'*leǵ-','leg',NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to collect, gather; with descendants involving speaking','Traditional root notation; *sleǵ- has been argued as an alternative reconstruction.'),
(59,9,7,10,'UNKNOWN','unknown',NULL,'boundary','before the disputed reconstruction',NULL,NULL,'No deeper ancestor is presented as secure.','Evidence horizon.');
--> statement-breakpoint
INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(42,9,50,51,'inheritance','Middle English final consonant and vowel pattern stabilized as modern logic with later pronunciation change.','The technical discipline broadened into everyday “reasoning” and, later, computational circuitry.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(43,9,51,52,'borrowing','Middle English adapted the Anglo-French form and spelling.','The scholastic discipline retained its core reference.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(44,9,52,53,'borrowing','French transmitted the learned Latin form with Romance phonology.','The name of the rational art remained technical.','French and Latin historical lexicography','established',NULL,NULL,'reviewed'),
(45,9,53,54,'borrowing','Latin logica borrowed and adapted Greek λογική.','The Greek “logical art” became the Latin discipline.','Merriam-Webster · Greek lexicography','established',NULL,NULL,'reviewed'),
(46,9,54,55,'derivation','Greek λογική is the substantivized feminine of λογικός, conventionally with an understood noun such as τέχνη.','“Pertaining to reasoning” becomes the name of the art itself.','Ancient Greek lexicography','established',NULL,NULL,'reviewed'),
(47,9,55,56,'derivation','λογικός is formed on λόγος with the adjectival suffix -ικός.','The broad λόγος family narrows to what pertains to account, reason, or discourse.','Ancient Greek lexicography','established',NULL,NULL,'reviewed'),
(48,9,56,57,'derivation','λόγος is a verbal noun in the λέγω family, with an o-grade formation represented in traditional analysis.','Gathering, counting, recounting, speech, account, and reason form a historically layered semantic network.','Logeion · comparative Greek lexicography','probable','The semantic sequence should not be reduced to a single just-so story.',NULL,'reviewed'),
(49,9,57,58,'inheritance','Greek λέγω is traditionally derived from PIE *leǵ-; some scholarship argues that an initial *s should be reconstructed.','The daughter evidence spans collecting and speaking, but the exact semantic path remains reconstructed.','UT Austin LRC · IE-CoR · Kaczyńska','proposed','The competing *sleǵ- analysis prevents an unqualified grade.',NULL,'reviewed'),
(50,9,58,59,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops rather than laundering a contested root into certainty.','Open research boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint
INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(42,34,'Word History and modern senses','supports','Middle English continuity and expanded modern senses.'),(43,34,'Etymology','supports','Anglo-French transmission.'),(44,34,'Etymology','supports','Latin stage.'),(45,34,'Etymology','supports','Greek λογική source.'),
(46,40,'λογικός','supports','Adjectival base of λογική.'),(47,40,'λογικός','supports','Derivation from λόγος.'),(47,35,'λόγος','supports','Greek base and semantic range.'),
(48,35,'λόγος','supports','Identifies λόγος as a verbal noun of λέγω.'),(48,36,'λέγω','supports','Greek verbal sense families.'),
(49,37,'root *leg-','supports','Traditional reconstruction and Greek reflexes.'),(49,39,'Cognate set 1529','supports','Greek reflex and PIE *leg-.'),(49,38,'argument for *sleg-','challenges','Argues that initial *s belongs in the reconstruction.'),
(50,38,'reconstruction limits','supports','The root shape itself remains disputed.');
--> statement-breakpoint
INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`) VALUES
(13,50,34,'12th century',1150,'Middle English lexical record','First Known Use',NULL,'established'),
(14,56,35,'Archaic / Classical Greek',-500,'Ancient Greek literary and documentary record','λόγος',NULL,'established'),
(15,57,36,'Archaic Greek',-700,'Ancient Greek literary record','λέγω',NULL,'established');
--> statement-breakpoint
INSERT INTO `relatives` (`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(9,'-logy','English combining form','Greek λόγος descendant',34),(9,'dialogue','English','Greek λόγος family',35),(9,'prologue','English','Greek λόγος family',35),(9,'logistics','English','Greek λόγος family through a separate French route',34),(9,'collect','English','Latin branch traditionally compared under the same PIE root',37),(9,'lecture','English','Latin legere branch traditionally compared under the same PIE root',37);
--> statement-breakpoint
INSERT INTO `places` (`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(9,1,'Indo-European prehistory','prehistoric','A gather/collect root is reconstructed, but its initial consonant and exact semantic history remain disputed.',NULL,NULL,'approximate'),
(9,2,'Ancient Greece','1st millennium BCE','λέγω, λόγος, λογικός, and λογική create a dense family spanning gathering, account, speech, and reason.',39000000,22000000,'regional'),
(9,3,'Latin and medieval French scholarship','antiquity–12th century','The name of the logical art travels through Latin and French teaching traditions.',46000000,8000000,'regional'),
(9,4,'England and global technical culture','12th century–today','logic expands from scholastic discipline to everyday reasoning and computing.',52500000,-1500000,'global');
--> statement-breakpoint
INSERT INTO `disputes` (`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(9,'Is the deepest root *leǵ- or *sleǵ-?','The traditional *leǵ- reconstruction remains widely represented, while published scholarship argues that the gather/collect root began with *s. The graph preserves both analyses.','proposed','UT Austin LRC; IE-CoR; Kaczyńska 2013','open',NULL),
(9,'Does λόγος simply mean “logic”?','No. λόγος ranges across account, reckoning, explanation, speech, discourse, word, and reason; “logic” is one specialized descendant.','established','Logeion: λόγος; Merriam-Webster','resolved','The node keeps a semantic field rather than a one-word gloss.'),
(9,'Did “gather” straightforwardly become “speak”?','The collect/say comparison is old and substantial, but a neat story about “gathering words” exceeds what the comparative forms alone can prove.','probable','Comparative Greek and Indo-European lexicography','open',NULL);
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(9,7,'logic','Logic and -logy are the same word family.','Both return to Greek λόγος; even the deeper “gather” root has a live reconstruction dispute.','A−',82,'Ranks semantic surprise while visibly grading the *leǵ- / *sleǵ- disagreement.');
--> statement-breakpoint
WITH keyed_forms AS (
	SELECT f.*,
		CASE WHEN f.status = 'boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
		ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status END AS canonical_key
	FROM forms f WHERE f.entry_id = 9
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT canonical_key, language_id, form, normalized_form, transliteration, pronunciation, status,
	date_label, date_start, date_end, gloss, notes, 'reviewed' FROM keyed_forms;
--> statement-breakpoint
INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id, n.id, 'established',
	CASE WHEN f.status = 'boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key = CASE
	WHEN f.status = 'boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
	ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status END
WHERE f.entry_id = 9;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id, parent_link.node_id, r.relation_type, r.sound_change, r.semantic_change,
	r.scholar, r.confidence, r.confidence_note, r.chronology_note, r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id = r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id = r.parent_form_id
WHERE r.entry_id = 9;
--> statement-breakpoint
INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id, edge.id FROM relations r
JOIN form_node_links child_link ON child_link.form_id = r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id = r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id = child_link.node_id AND edge.parent_node_id = parent_link.node_id AND edge.relation_type = r.relation_type
WHERE r.entry_id = 9;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id, source.source_id, source.locator, source.stance, source.evidence_note
FROM relation_sources source JOIN relation_edge_links link ON link.relation_id = source.relation_id
JOIN relations relation ON relation.id = source.relation_id WHERE relation.entry_id = 9;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT etymologia.id, logos.id, 'compound_member',
	'Greek ἐτυμολογία contains the -λογία formation belonging to the λόγος family.',
	'The “account / study” member combines with ἔτυμος “true, real” to form etymology.',
	'Ancient Greek lexicography', 'established', NULL, 'This is a branching compound analysis, not the direct ancestor chain through ἔτυμος.', 'reviewed'
FROM lexeme_nodes etymologia, lexeme_nodes logos
WHERE etymologia.canonical_key = 'node:10:etymologia:attested' AND logos.canonical_key = 'node:10:logos:attested';
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id, source_id, locator, 'supports', evidence_note FROM lexeme_edges edge
JOIN (
	SELECT 10 AS source_id, 'ἐτυμολογία' AS locator, 'Greek compound evidence.' AS evidence_note
	UNION ALL SELECT 35, 'λόγος', 'The -λογία member belongs to the λόγος family.'
) bridge_sources
WHERE edge.child_node_id = (SELECT id FROM lexeme_nodes WHERE canonical_key = 'node:10:etymologia:attested')
	AND edge.parent_node_id = (SELECT id FROM lexeme_nodes WHERE canonical_key = 'node:10:logos:attested')
	AND edge.relation_type = 'compound_member';
