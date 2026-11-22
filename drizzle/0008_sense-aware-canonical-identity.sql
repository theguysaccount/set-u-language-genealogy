ALTER TABLE `forms` ADD `sense_key` text DEFAULT 'default' NOT NULL;
--> statement-breakpoint
ALTER TABLE `lexeme_nodes` ADD `sense_key` text DEFAULT 'default' NOT NULL;
--> statement-breakpoint
UPDATE `relations`
SET `sound_change`='Latin legere is traditionally assigned to the *leǵ- family; *sleǵ- remains a published alternative.',
    `semantic_change`='Gathering and selecting extend into reading.'
WHERE `id` IN (66,73,80);
--> statement-breakpoint
INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(19,'muscle','muscle','muscle','/ˈmʌsəl/','noun','A body tissue or organ whose English name descends through French from Latin musculus, a diminutive of mūs “mouse.”','A muscle was a “little mouse.” The Latin name compares the moving form beneath the skin to a mouse, although the exact visual mechanism is not securely fixed.','reviewed'),
(20,'mussel','mussel','mussel','/ˈmʌsəl/','noun','A bivalve mollusk whose English history runs through Middle English muscle and Old English muscelle into the same Latin mouse family as muscle.','Mussel and muscle were once both spelled muscle in English, and both ultimately belong to Latin''s mouse-derived musculus family.','reviewed'),
(21,'mouse','mouse','mouse','/maʊs/','noun','The inherited English name of the small rodent, continued from Old English mūs and the reconstructed Indo-European *mūs- family.','Mouse was not borrowed from Latin mūs. English and Latin inherited cognate branches of an older reconstructed mouse word.','reviewed');
--> statement-breakpoint
INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(65,'mw-muscle','Muscle — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/muscle',NULL,'historical_dictionary'),
(66,'mw-mussel','Mussel — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/mussel',NULL,'historical_dictionary'),
(67,'mw-mouse','Mouse — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/mouse',NULL,'historical_dictionary'),
(68,'ahd-muscle','Muscle — Word History','American Heritage Dictionary Editors',2026,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=muscle',NULL,'historical_dictionary'),
(69,'ahd-mussel','Mussel — Word History','American Heritage Dictionary Editors',2026,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=mussel',NULL,'historical_dictionary'),
(70,'ahd-mouse','Mouse — Word History','American Heritage Dictionary Editors',2026,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=mouse',NULL,'historical_dictionary'),
(71,'ahd-ie-mus','Indo-European Root mūs-','Calvert Watkins and American Heritage Dictionary Editors',2026,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(72,'ut-lrc-mus','Indo-European Lexicon: mūs-','University of Texas Linguistics Research Center',2026,'University of Texas at Austin','https://lrc.la.utexas.edu/lex/master/1344',NULL,'scholarly_lexicon'),
(73,'mw-muscle-mussel','Muscle and Mussel — Homophones with More Than One Syllable','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/grammar/homophones-with-more-than-one-syllable',NULL,'editorial_reference');
--> statement-breakpoint
INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(118,19,1,1,'muscle','muscle','anatomical',NULL,'/ˈmʌsəl/','attested','14th century–today',1300,NULL,'contractile body tissue; later strength or coercive power','Merriam-Webster reports first known use in the 14th century.'),
(119,19,2,2,'muscle','muscle','anatomical',NULL,NULL,'attested','Middle English',1100,1500,'a muscle or muscular organ','This spelling also named the mollusk in Middle English; the sense key prevents those histories from being collapsed.'),
(120,19,8,3,'muscle','muscle','anatomical',NULL,NULL,'attested','Old French',800,1400,'muscle','The anatomical borrowing channel reported by American Heritage.'),
(121,19,9,4,'musculus','musculus','mouse-derived-polysemy',NULL,NULL,'attested','Latin antiquity',-500,500,'little mouse; muscle; also a mussel name','A diminutive of mūs. The Latin form participates in both the anatomical and mollusk histories.'),
(122,19,9,5,'mūs','mus','animal',NULL,NULL,'attested','Latin antiquity',-500,500,'mouse','The base of the Latin diminutive musculus.'),
(123,19,6,6,'*mūs-','mus','mouse-family',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'mouse; also the family behind specialized muscle words','Reconstructed from multiple Indo-European branches.'),
(124,19,7,7,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the reviewed Indo-European reconstruction',NULL,NULL,'No securely reviewed ancestor beyond *mūs- is asserted.','Evidence horizon.'),
(125,20,1,1,'mussel','mussel','mollusk',NULL,'/ˈmʌsəl/','attested','before the 12th century–today',900,NULL,'a marine or freshwater bivalve mollusk','Merriam-Webster reports first known use before the 12th century.'),
(126,20,2,2,'muscle','muscle','mollusk',NULL,NULL,'attested','Middle English',1100,1500,'a mussel','An exact spelling match with the anatomical word, but a different sense-specific historical node.'),
(127,20,3,3,'muscelle','muscelle','mollusk',NULL,NULL,'attested','Old English',700,1100,'a mussel','The inherited English mollusk form reported by Merriam-Webster and American Heritage.'),
(128,20,14,4,'mūscula','muscula','mollusk',NULL,NULL,'attested','Medieval or Vulgar Latin',300,1200,'a mussel','American Heritage labels the source Medieval Latin mūscula; Merriam-Webster reports Vulgar Latin *muscula.'),
(129,20,9,5,'musculus','musculus','mouse-derived-polysemy',NULL,NULL,'attested','Latin antiquity',-500,500,'little mouse; muscle; also a mussel name','Shared canonical Latin node with the muscle dossier.'),
(130,20,9,6,'mūs','mus','animal',NULL,NULL,'attested','Latin antiquity',-500,500,'mouse','The base of the Latin diminutive musculus.'),
(131,20,6,7,'*mūs-','mus','mouse-family',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'mouse; also the family behind specialized muscle words','Shared reconstructed family with mouse and muscle.'),
(132,20,7,8,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the reviewed Indo-European reconstruction',NULL,NULL,'No securely reviewed ancestor beyond *mūs- is asserted.','Evidence horizon.'),
(133,21,1,1,'mouse','mouse','animal',NULL,'/maʊs/','attested','before the 12th century–today',900,NULL,'a small rodent; later many transferred senses','Merriam-Webster reports first known use before the 12th century.'),
(134,21,2,2,'mous','mous','animal',NULL,NULL,'attested','Middle English',1100,1500,'mouse','Continues Old English mūs.'),
(135,21,3,3,'mūs','mus','animal',NULL,NULL,'attested','Old English',700,1100,'mouse','The inherited Old English rodent word.'),
(136,21,5,4,'*mūs','mus','animal',NULL,NULL,'reconstructed','Proto-Germanic prehistory',-1500,500,'mouse','Reconstructed Germanic ancestor of Old English mūs and continental cognates.'),
(137,21,6,5,'*mūs-','mus','mouse-family',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'mouse; also the family behind specialized muscle words','Shared reconstructed family with Latin mūs and Germanic *mūs.'),
(138,21,7,6,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the reviewed Indo-European reconstruction',NULL,NULL,'No securely reviewed ancestor beyond *mūs- is asserted.','Evidence horizon.');
--> statement-breakpoint
INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(100,19,118,119,'continuation','Middle English muscle continued into modern English with regular orthographic and phonological development.','The anatomical meaning remained central and later extended to strength and coercive power.','Merriam-Webster · American Heritage editors','established',NULL,'Merriam-Webster reports English muscle from the 14th century.','reviewed'),
(101,19,119,120,'borrowing','Middle English muscle borrowed the Old French form with English pronunciation and spelling adaptation.','The anatomical name remained a muscle term.','American Heritage Dictionary editors','established',NULL,'Borrowing belongs to the Middle English period.','reviewed'),
(102,19,120,121,'borrowing','Old French muscle continues Latin musculus through the Romance transmission channel.','The Latin anatomical name remained a muscle term.','American Heritage Dictionary editors','established',NULL,NULL,'reviewed'),
(103,19,121,122,'diminutive_derivation','Latin musculus is the diminutive formation built from mūs with the suffix -culus.','“Little mouse” named a muscle and also supplied a Latin name for the mussel; the anatomical resemblance mechanism is not fixed here.','American Heritage · Merriam-Webster editors','established','The morphological derivation is secure; the precise resemblance that motivated the anatomical sense remains uncertain.',NULL,'reviewed'),
(104,19,122,123,'inheritance','Latin mūs continues the Indo-European *mūs- mouse word; the family also includes Germanic *mūs- and Greek mūs.','The inherited mouse word also generated specialized muscle and mussel terms in Latin.','American Heritage Indo-European Roots · University of Texas LRC','probable','The Proto-Indo-European form is reconstructed from cross-branch comparison.',NULL,'reviewed'),
(105,19,123,124,'knowledge_boundary','No deeper form is promoted beyond the reviewed Indo-European *mūs- reconstruction.','The graph stops rather than fabricating an ancestor for the mouse word.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(106,20,125,126,'alteration','Modern mussel replaces Middle English muscle; American Heritage says the current spelling was perhaps influenced by Dutch mossel.','The mollusk meaning remained stable while spelling separated it from anatomical muscle.','American Heritage · Merriam-Webster editors','probable','Descent from Middle English muscle is secure; Dutch influence on the modern spelling is possible rather than established.','The changed spelling is post-Middle English.','reviewed'),
(107,20,126,127,'inheritance','Middle English muscle continues Old English muscelle with reduction and remodeling of the final syllables.','The word continues to denote the bivalve mollusk.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(108,20,127,128,'borrowing','Old English muscelle was borrowed from the Latin mussel form represented as Medieval Latin mūscula or Vulgar Latin *muscula.','The Latin mollusk name entered Old English without a major semantic change.','Merriam-Webster · American Heritage editors','probable','The borrowing is secure; the sources differ on whether to label the immediate Latin register Medieval or Vulgar Latin.',NULL,'reviewed'),
(109,20,128,129,'derivation','Medieval or Vulgar Latin mūscula is the feminine variant of Latin musculus.','The mouse-derived Latin word was used as a name for the bivalve mollusk.','American Heritage · Merriam-Webster editors','probable','The exact chronological register of mūscula is source-dependent.',NULL,'reviewed'),
(110,20,129,130,'diminutive_derivation','Latin musculus is the diminutive formation built from mūs with the suffix -culus.','“Little mouse” named a muscle and also supplied a Latin name for the mussel; the anatomical resemblance mechanism is not fixed here.','American Heritage · Merriam-Webster editors','established','The morphological derivation is secure; the precise resemblance that motivated the anatomical sense remains uncertain.',NULL,'reviewed'),
(111,20,130,131,'inheritance','Latin mūs continues the Indo-European *mūs- mouse word; the family also includes Germanic *mūs- and Greek mūs.','The inherited mouse word also generated specialized muscle and mussel terms in Latin.','American Heritage Indo-European Roots · University of Texas LRC','probable','The Proto-Indo-European form is reconstructed from cross-branch comparison.',NULL,'reviewed'),
(112,20,131,132,'knowledge_boundary','No deeper form is promoted beyond the reviewed Indo-European *mūs- reconstruction.','The graph stops rather than fabricating an ancestor for the mouse word.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(113,21,133,134,'continuation','Middle English mous developed into modern mouse with the later spelling convention marking the diphthong.','The central rodent meaning remained stable while transferred senses accumulated.','Merriam-Webster · American Heritage editors','established',NULL,'Merriam-Webster reports first known use before the 12th century.','reviewed'),
(114,21,134,135,'inheritance','Middle English mous continues Old English mūs.','The inherited word retained the meaning “mouse.”','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(115,21,135,136,'inheritance','Old English mūs continues reconstructed Proto-Germanic *mūs, with cognates including German Maus and Dutch muis.','The rodent meaning remained stable across the Germanic branch.','American Heritage Indo-European Roots · University of Texas LRC','probable','Proto-Germanic *mūs is reconstructed from the attested Germanic forms.',NULL,'reviewed'),
(116,21,136,137,'inheritance','Proto-Germanic *mūs continues Proto-Indo-European *mūs-, reconstructed from Germanic, Latin, Greek, and other comparanda.','The inherited meaning remains “mouse.”','American Heritage Indo-European Roots · University of Texas LRC','probable','Both endpoints are reconstructed; the cross-branch comparison supports the deeper form.',NULL,'reviewed'),
(117,21,137,138,'knowledge_boundary','No deeper form is promoted beyond the reviewed Indo-European *mūs- reconstruction.','The graph stops rather than fabricating an ancestor for the mouse word.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint
INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(100,65,'Etymology and First Known Use','supports',NULL),(100,68,'Word History','supports',NULL),
(101,68,'Middle English and Old French ancestry','supports',NULL),(102,68,'Old French from Latin musculus','supports',NULL),
(103,65,'Latin musculus, diminutive of mūs','supports','Documents the little-mouse derivation.'),(103,68,'Latin musculus from mūs','supports',NULL),(103,73,'Muscle and mussel history','context','Discusses possible resemblance mechanisms without selecting one.'),
(104,71,'mūs- root entry','supports','Connects Latin mūs with Germanic and Greek comparanda.'),(104,72,'Pokorny etymon mūs','supports','Cross-branch lexical reconstruction.'),(105,71,'mūs- root horizon','supports',NULL),
(106,66,'Etymology and First Known Use','supports','Middle English muscle to modern mussel.'),(106,69,'Word History','supports','Reports possible Dutch mossel influence.'),(106,73,'Muscle and mussel history','context','Documents the former spelling overlap.'),
(107,66,'Old English muscelle','supports',NULL),(107,69,'Middle English muscle from Old English muscelle','supports',NULL),
(108,66,'Vulgar Latin *muscula','supports',NULL),(108,69,'Medieval Latin mūscula','supports','Sources use different labels for the Latin register.'),
(109,66,'Latin musculus / *muscula family','supports',NULL),(109,69,'mūscula from musculus','supports',NULL),
(110,66,'Latin musculus, muscle and mussel','supports',NULL),(110,69,'Latin musculus “sea mussel”','supports',NULL),(110,71,'mūs- derivatives','supports',NULL),(110,73,'Muscle and mussel history','context',NULL),
(111,71,'mūs- root entry','supports',NULL),(111,72,'Pokorny etymon mūs','supports',NULL),(112,71,'mūs- root horizon','supports',NULL),
(113,67,'Etymology and First Known Use','supports',NULL),(113,70,'Word History','supports',NULL),
(114,67,'Middle English from Old English mūs','supports',NULL),(114,70,'Middle English mous from Old English mūs','supports',NULL),
(115,70,'Germanic origin and cognates','supports',NULL),(115,71,'Germanic *mūs-','supports',NULL),(115,72,'Germanic comparanda','supports',NULL),
(116,71,'mūs- root entry','supports',NULL),(116,72,'Pokorny etymon mūs','supports',NULL),(117,71,'mūs- root horizon','supports',NULL);
--> statement-breakpoint
INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(32,118,65,'14th century',1350,'English lexicographic first-use record for muscle','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use period; no underlying manuscript witness was directly inspected.'),
(33,125,66,'before the 12th century',1050,'English lexicographic first-use record for mussel','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use period; no underlying manuscript witness was directly inspected.'),
(34,133,67,'before the 12th century',1050,'English lexicographic first-use record for mouse','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use period; no underlying manuscript witness was directly inspected.');
--> statement-breakpoint
INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(75,19,'muscular','English','derivative built from the muscle family',65),(76,19,'muscle','French','Romance continuation of Latin musculus',68),(77,19,'mūs','Greek','cognate mouse-and-muscle word in another Indo-European branch',71),(78,19,'mussel','English','historical cousin through the polysemous Latin musculus family',73),
(79,20,'mossel','Dutch','Germanic cognate and possible influence on modern spelling',69),(80,20,'Muschel','German','Germanic cognate in the mussel family',72),(81,20,'muscelle','Old English','direct ancestor',66),(82,20,'musculus','Latin','shared mouse-derived source of muscle and mussel terms',71),
(83,21,'Maus','German','Germanic cognate',71),(84,21,'muis','Dutch','Germanic cognate',70),(85,21,'mūs','Latin','Indo-European cognate, not an English ancestor',71),(86,21,'mūs','Greek','Indo-European cognate with mouse and muscle senses',72);
--> statement-breakpoint
INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(72,19,1,'Latin-speaking Roman world','Latin antiquity','Latin musculus develops the little-mouse, muscle, and mussel word family.',NULL,NULL,'broad'),
(73,19,2,'Northern France','Old French period','The anatomical Latin word continues into Old French muscle.',NULL,NULL,'approximate'),
(74,19,3,'England','Middle English period','French muscle enters the Middle English anatomical vocabulary.',NULL,NULL,'approximate'),
(75,19,4,'Global English','14th century–today','Muscle retains its anatomical core and gains figurative senses of strength and force.',NULL,NULL,'broad'),
(76,20,1,'Latin-speaking Europe','Late antique and medieval transmission','The Latin mouse-derived family supplies a mollusk name.',NULL,NULL,'broad'),
(77,20,2,'Anglo-Saxon England','Old English period','Borrowed muscelle names the bivalve mollusk.',NULL,NULL,'approximate'),
(78,20,3,'England','Middle English period','The mollusk word is spelled muscle, overlapping the anatomical spelling.',NULL,NULL,'approximate'),
(79,20,4,'Global English','Modern English','The spelling mussel distinguishes the mollusk; possible Dutch influence remains disputed.',NULL,NULL,'broad'),
(80,21,1,'Reconstructed Indo-European speech community','Proto-Indo-European prehistory','Comparative evidence reconstructs *mūs-; no single exact homeland point is asserted.',NULL,NULL,'uncertain'),
(81,21,2,'Germanic-speaking northern Europe','Proto-Germanic prehistory','The reconstructed Germanic branch continues the inherited mouse word.',NULL,NULL,'broad'),
(82,21,3,'Anglo-Saxon England','Old English period','Old English mūs is the direct recorded ancestor of English mouse.',NULL,NULL,'approximate'),
(83,21,4,'Global English','before the 12th century–today','Mouse remains the animal name and develops later transferred technological and figurative senses.',NULL,NULL,'broad');
--> statement-breakpoint
INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(38,19,'Is musculus really a “little mouse”?','Latin musculus is morphologically the diminutive of mūs “mouse.”','established','Merriam-Webster and American Heritage independently report the diminutive derivation.','resolved','The morphological derivation is treated as established; this does not settle the exact visual analogy.'),
(39,19,'What exactly resembled a mouse?','The naming may refer to the shape of a muscle, a tendon, or movement visible beneath the skin; the reviewed sources do not select one mechanism as secure.','probable','Merriam-Webster’s homophone history presents resemblance explanations cautiously.','open',NULL),
(40,19,'Did anatomical muscle reach English through French?','The anatomical English word passed through Middle English and Old French from Latin musculus.','established','American Heritage gives the Old French channel; Merriam-Webster gives the Latin diminutive base.','resolved','The French borrowing path is retained for the anatomical dossier.'),
(41,20,'Do mussel and muscle share the Latin mouse family?','The English words have distinct immediate histories but converge in the Latin musculus / mūscula family derived from mūs.','established','Merriam-Webster, American Heritage, and the American Heritage Indo-European root appendix align on the family.','resolved','The graph shares the Latin musculus, Latin mūs, and PIE *mūs- nodes while keeping the English and Middle English senses separate.'),
(42,20,'Did Dutch mossel reshape the spelling mussel?','Dutch mossel may have influenced the current English spelling.','proposed','American Heritage labels the Dutch influence as possible rather than certain.','open',NULL),
(43,20,'Why was a shellfish named through the mouse family?','The exact resemblance that carried the mouse-derived Latin word to a mussel is not securely identified in the reviewed record.','proposed','Merriam-Webster documents the shared forms but cautions against overclaiming the naming mechanism.','open',NULL),
(44,21,'Was English mouse borrowed from Latin mūs?','No. Old English mūs continues a Germanic branch; Latin mūs is a cognate parallel branch.','established','American Heritage and the University of Texas lexicon place the English and Latin forms in parallel branches of the same reconstructed family.','resolved','The graph joins English and Latin only at PIE *mūs-, never by a false Latin-to-English edge.'),
(45,21,'How secure is Proto-Indo-European *mūs-?','The cross-branch mouse word is reconstructed as PIE *mūs-, while any deeper ancestor remains outside the reviewed evidence.','probable','The American Heritage Indo-European root appendix and the University of Texas LRC lexicon both publish the reconstruction.','resolved','The reconstruction is admitted as probable and ends at an explicit UNKNOWN boundary.');
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`+100 WHERE `rank`>=5;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`-99 WHERE `rank`>=105;
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(16,19,5,'muscle','A muscle was a “little mouse.”','Latin musculus is a diminutive of mūs “mouse.” The derivation is secure; the exact resemblance mechanism remains qualified.','A',93,'High-confidence morphological reveal with an explicitly open semantic-mechanism dispute.');
--> statement-breakpoint
INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(8,19,20,'THE BODY AND THE SHELL SHARED A MOUSE','Muscle and mussel split into different English senses and spellings, but their reviewed trails converge in Latin musculus and ultimately *mūs-.',99,'A','reviewed'),
(9,21,19,'THE MOUSE UNDER THE SKIN','English mouse and English muscle are not one descended from the other; their evidence-backed paths converge at the reconstructed *mūs- family through Germanic and Latin branches.',97,'A','reviewed');
--> statement-breakpoint
WITH keyed_forms AS (
	SELECT f.*, CASE
		WHEN f.status = 'boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
		ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
	END AS canonical_key
	FROM forms f WHERE f.entry_id BETWEEN 19 AND 21
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key, k.language_id, k.form, k.normalized_form, k.sense_key, k.transliteration, k.pronunciation, k.status, k.date_label, k.date_start, k.date_end, k.gloss, k.notes, 'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint
INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id, n.id, 'established', CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
	WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
	ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.entry_id BETWEEN 19 AND 21;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id, parent_link.node_id, r.relation_type, r.sound_change, r.semantic_change, r.scholar, r.confidence, r.confidence_note, r.chronology_note, r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 19 AND 21;
--> statement-breakpoint
INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id, edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 19 AND 21;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id, citation.source_id, citation.locator, citation.stance, citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 19 AND 21;
