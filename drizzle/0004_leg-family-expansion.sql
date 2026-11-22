INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(10,'legal','legal','legal','/ˈliːɡəl/','adjective · noun','Of law or permitted by law; borrowed through Anglo-French from Latin lēgālis and lēx.','Legal is not descended from English law. Legal is a Latin borrowing; law belongs to a different Germanic and Scandinavian history.','reviewed'),
(11,'lecture','lecture','lecture','/ˈlɛktʃər/','noun · verb','A formal instructional talk, named through a Latin lineage whose central action was reading.','A lecture was an act of reading before it was a spoken presentation—and long before it became a scolding.','reviewed'),
(12,'legend','legend','legend','/ˈlɛdʒənd/','noun','A traditional story or explanatory inscription, descended from Latin “things to be read.”','A legend was not originally a dubious story. It was reading material—especially material appointed to be read.','reviewed'),
(13,'intelligence','intelligence','intelligence','/ɪnˈtɛlɪdʒəns/','noun','Capacity for understanding, information, or the organizations that gather it; inherited through French from Latin intelligentia.','Intelligence belongs to the same gather-and-select family as lecture and collect—but “choosing between” is a morphological clue, not a complete theory of mind.','reviewed'),
(14,'collect','collect','collect','/kəˈlɛkt/','verb · noun · adjective','To bring together, accumulate, infer, or receive; from Latin colligere, literally built with a together-prefix and legere.','Collect is the family reunion hiding in plain sight: its modern “gather together” sense stays remarkably close to its Latin construction.','reviewed');
--> statement-breakpoint
INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(41,'mw-legal','Legal — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/legal',NULL,'historical_dictionary'),
(42,'mw-lecture','Lecture — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/lecture',NULL,'historical_dictionary'),
(43,'mw-legend','Legend — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/legend',NULL,'historical_dictionary'),
(44,'mw-intelligence','Intelligence — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/intelligence',NULL,'historical_dictionary'),
(45,'mw-intelligent','Intelligent — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/intelligent',NULL,'historical_dictionary'),
(46,'mw-collect','Collect — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/collect',NULL,'historical_dictionary'),
(47,'mw-law','Law — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/law',NULL,'historical_dictionary'),
(48,'logeion-lex','Logeion: lex','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/lex',NULL,'lexical_database'),
(49,'logeion-lego-latin','Logeion: legō / legere','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/lego',NULL,'lexical_database'),
(50,'logeion-intellego','Logeion: intellegō','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/intellego',NULL,'lexical_database'),
(51,'logeion-colligo','Logeion: colligō','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/colligo',NULL,'lexical_database'),
(52,'logeion-legalis','Logeion: lēgālis','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/legalis',NULL,'lexical_database');
--> statement-breakpoint
INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`transliteration`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(60,10,1,1,'legal','legal',NULL,'attested','15th century–today',1400,NULL,'of, founded on, or permitted by law',NULL),
(61,10,12,2,'legal','legal',NULL,'attested','Anglo-French',1066,1500,'of law',NULL),
(62,10,9,3,'lēgālis','legalis',NULL,'attested','Latin antiquity',-100,500,'legal; pertaining to law',NULL),
(63,10,9,4,'lēx','lex',NULL,'attested','Latin antiquity',-700,500,'law, statute, rule, agreement',NULL),
(64,10,6,5,'*leǵ-','leg',NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'traditional gather / collect root','The relation of Latin lēx to this root is disputed; *sleǵ- has been argued.'),
(65,10,7,6,'UNKNOWN','unknown',NULL,'boundary','before the disputed reconstruction',NULL,NULL,'No deeper ancestor is presented as secure.','Evidence horizon.'),
(66,11,1,1,'lecture','lecture',NULL,'attested','15th century–today',1400,NULL,'an instructional discourse; later a formal reproof',NULL),
(67,11,9,2,'lectūra','lectura',NULL,'attested','Late / Medieval Latin',300,1500,'a reading; act of reading',NULL),
(68,11,9,3,'lēctus','lectus',NULL,'attested','Latin antiquity',-300,500,'read; gathered; chosen','Past participle of legere.'),
(69,11,9,4,'legere','legere',NULL,'attested','Latin antiquity',-700,500,'to gather, select, choose; to read',NULL),
(70,11,6,5,'*leǵ-','leg',NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to collect, gather','Traditional root notation; *sleǵ- is a published alternative.'),
(71,11,7,6,'UNKNOWN','unknown',NULL,'boundary','before the disputed reconstruction',NULL,NULL,'No deeper ancestor is presented as secure.','Evidence horizon.'),
(72,12,1,1,'legend','legend',NULL,'attested','c. 1500–today',1500,NULL,'traditional story; inscription; explanatory key',NULL),
(73,12,2,2,'legende','legende',NULL,'attested','Middle English',1300,1500,'a saint’s life or reading; inscription',NULL),
(74,12,12,3,'legende','legende',NULL,'attested','Anglo-French',1100,1500,'reading matter; saint’s life',NULL),
(75,12,9,4,'legenda','legenda',NULL,'attested','Medieval Latin',500,1500,'things to be read',NULL),
(76,12,9,5,'legendus','legendus',NULL,'attested','Latin',-100,500,'that which is to be read','Gerundive of legere.'),
(77,12,9,6,'legere','legere',NULL,'attested','Latin antiquity',-700,500,'to gather, select, choose; to read',NULL),
(78,12,6,7,'*leǵ-','leg',NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to collect, gather','Traditional root notation; *sleǵ- is a published alternative.'),
(79,12,7,8,'UNKNOWN','unknown',NULL,'boundary','before the disputed reconstruction',NULL,NULL,'No deeper ancestor is presented as secure.','Evidence horizon.'),
(80,13,1,1,'intelligence','intelligence',NULL,'attested','14th century–today',1300,NULL,'capacity to understand; information; an information service',NULL),
(81,13,11,2,'intelligence','intelligence',NULL,'attested','Middle French',1300,1600,'understanding; knowledge',NULL),
(82,13,9,3,'intelligentia','intelligentia',NULL,'attested','Latin antiquity / Late Latin',-100,700,'understanding, discernment',NULL),
(83,13,9,4,'intelligēns','intelligens',NULL,'attested','Latin antiquity',-100,500,'understanding, discerning','Present participial formation.'),
(84,13,9,5,'intellegere / intelligere','intellegere intelligere',NULL,'attested','Latin antiquity',-300,500,'to understand, perceive, discern','Traditionally analyzed with inter- and legere.'),
(85,13,9,6,'legere','legere',NULL,'attested','Latin antiquity',-700,500,'to gather, select, choose; to read',NULL),
(86,13,6,7,'*leǵ-','leg',NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to collect, gather','Traditional root notation; *sleǵ- is a published alternative.'),
(87,13,7,8,'UNKNOWN','unknown',NULL,'boundary','before the disputed reconstruction',NULL,NULL,'No deeper ancestor is presented as secure.','Evidence horizon.'),
(88,14,1,1,'collect','collect',NULL,'attested','before 12th century–today',1100,NULL,'to bring together; a prayer; payable by recipient',NULL),
(89,14,2,2,'collecten','collecten',NULL,'attested','Middle English',1100,1500,'to accumulate, infer, calculate',NULL),
(90,14,12,3,'collecter','collecter',NULL,'attested','Anglo-French',1100,1500,'to collect, accumulate',NULL),
(91,14,9,4,'collēctus','collectus',NULL,'attested','Latin antiquity',-200,500,'gathered together','Past participle of colligere.'),
(92,14,9,5,'colligere','colligere',NULL,'attested','Latin antiquity',-300,500,'to gather together, assemble, accumulate',NULL),
(93,14,9,6,'legere','legere',NULL,'attested','Latin antiquity',-700,500,'to gather, select, choose; to read',NULL),
(94,14,6,7,'*leǵ-','leg',NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to collect, gather','Traditional root notation; *sleǵ- is a published alternative.'),
(95,14,7,8,'UNKNOWN','unknown',NULL,'boundary','before the disputed reconstruction',NULL,NULL,'No deeper ancestor is presented as secure.','Evidence horizon.');
--> statement-breakpoint
INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(51,10,60,61,'borrowing','English preserved the learned form with later English vowel and stress development.','The adjective broadened from juridical status to rule-conformity more generally.','Merriam-Webster editors','established',NULL,'First known English use: 15th century.','reviewed'),
(52,10,61,62,'borrowing','Anglo-French borrowed Latin lēgālis through regular Romance adaptation.','Pertaining to law remained the core sense.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(53,10,62,63,'derivation','Latin lēgālis is formed on lēx, leg- “law.”','The law noun becomes a relational adjective.','Latin lexicography','established',NULL,NULL,'reviewed'),
(54,10,63,64,'proposed_inheritance','Latin lēx has traditionally been connected with the gather / collect family; published work argues for a root with initial *s.','A collection or selection of rules is a proposed semantic bridge, not an uncontested fact.','Kaczyńska · Indo-European lexicography','proposed','Both the root shape and exact semantic derivation remain disputed.',NULL,'reviewed'),
(55,10,64,65,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops at the live reconstruction dispute.','Open research boundary','boundary',NULL,NULL,'reviewed'),
(56,11,66,67,'borrowing','English adapted Late Latin lectūra through the medieval learned tradition.','An act of reading became an instructional discourse and later a scolding.','Merriam-Webster editors','established',NULL,'First known English use: 15th century.','reviewed'),
(57,11,67,68,'derivation','lectūra is a deverbal noun built from the participial stem lēct-.','Reading is nominalized as an act or practice.','Latin lexicography','established',NULL,NULL,'reviewed'),
(58,11,68,69,'inflection','lēctus is the suppletive-looking past participle used with legere.','What has been gathered or selected becomes what has been read.','Latin lexicography','established',NULL,NULL,'reviewed'),
(59,11,69,70,'inheritance','Latin legere is traditionally assigned to the *leǵ- family; *sleǵ- remains a published alternative.','Gathering and selecting extend into reading.','Indo-European lexicography','probable','Root shape is disputed.',NULL,'reviewed'),
(60,11,70,71,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops at the live reconstruction dispute.','Open research boundary','boundary',NULL,NULL,'reviewed'),
(61,12,72,73,'inheritance','Final unstressed -e was lost and spelling stabilized as legend.','Saintly reading matter expanded to inherited story, inscription, and explanatory key.','Merriam-Webster editors','established',NULL,'First known use for the inscription sense: c. 1500.','reviewed'),
(62,12,73,74,'borrowing','Middle English adapted the Anglo-French form.','The reading and saint’s-life senses continued.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(63,12,74,75,'borrowing','Anglo-French transmitted Medieval Latin legenda.','Materials appointed for reading became a category of devotional narrative.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(64,12,75,76,'inflection','legenda is the feminine singular or neuter plural gerundive formation represented in medieval use.','“Things to be read” becomes a lexical category.','Latin and medieval lexicography','established',NULL,NULL,'reviewed'),
(65,12,76,77,'inflection','legendus is the gerundive of legere.','Obligation or appointment to read supplies the literal formation.','Latin lexicography','established',NULL,NULL,'reviewed'),
(66,12,77,78,'inheritance','Latin legere is traditionally assigned to *leǵ-; *sleǵ- remains a published alternative.','Gathering and selecting extend into reading.','Indo-European lexicography','probable','Root shape is disputed.',NULL,'reviewed'),
(67,12,78,79,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops at the live reconstruction dispute.','Open research boundary','boundary',NULL,NULL,'reviewed'),
(68,13,80,81,'borrowing','English borrowed the French abstract noun with later pronunciation change.','Understanding expands into news, strategic information, and the organizations that obtain it.','Merriam-Webster editors','established',NULL,'First known English use: 14th century.','reviewed'),
(69,13,81,82,'borrowing','French transmitted Latin intelligentia.','Understanding and discernment remain central.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(70,13,82,83,'derivation','The abstract noun intelligentia is formed on the participial stem intelligent-.','A discerning or understanding quality becomes an abstract capacity.','Latin lexicography','established',NULL,NULL,'reviewed'),
(71,13,83,84,'inflection','intelligēns is the present participial formation of intellegere / intelligere.','The one understanding supplies the adjective and abstract noun family.','Latin lexicography','established',NULL,NULL,'reviewed'),
(72,13,84,85,'derivation','Latin intellegere is traditionally analyzed as inter- plus legere, with phonological assimilation.','Selecting or discerning among becomes understanding; the exact semantic bridge should not be over-literalized.','Merriam-Webster · Latin lexicography','probable','The morphology is strong; a slogan such as “choose between” is not a full semantic history.',NULL,'reviewed'),
(73,13,85,86,'inheritance','Latin legere is traditionally assigned to *leǵ-; *sleǵ- remains a published alternative.','Gathering, selecting, and reading occupy the ancestral semantic field.','Indo-European lexicography','probable','Root shape is disputed.',NULL,'reviewed'),
(74,13,86,87,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops at the live reconstruction dispute.','Open research boundary','boundary',NULL,NULL,'reviewed'),
(75,14,88,89,'inheritance','Middle English inflection was lost and the learned spelling stabilized.','Accumulating and inferring broadened into the modern family of gathering, receiving, and regaining control.','Merriam-Webster editors','established',NULL,'The prayer noun has an earlier English record than the verb.','reviewed'),
(76,14,89,90,'borrowing','Middle English borrowed the Anglo-French verb.','Accumulating, inferring, and calculating are recorded early senses.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(77,14,90,91,'borrowing','Anglo-French transmitted the Latin participial stem.','The gathered-together sense remains transparent.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(78,14,91,92,'inflection','collēctus is the past participle of colligere.','A completed gathering becomes the collected state.','Latin lexicography','established',NULL,NULL,'reviewed'),
(79,14,92,93,'derivation','colligere combines the assimilated com- / col- “together” prefix with legere.','Gathering becomes explicitly gathering together.','Merriam-Webster · Latin lexicography','established',NULL,NULL,'reviewed'),
(80,14,93,94,'inheritance','Latin legere is traditionally assigned to *leǵ-; *sleǵ- remains a published alternative.','Gathering and selecting preserve the proposed ancestral core.','Indo-European lexicography','probable','Root shape is disputed.',NULL,'reviewed'),
(81,14,94,95,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops at the live reconstruction dispute.','Open research boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint
INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(51,41,'Etymology and First Known Use','supports',NULL),(52,41,'Etymology','supports',NULL),(53,41,'Latin leg-, lex','supports',NULL),(53,52,'lēgālis','supports',NULL),(54,48,'lex','supports','Latin lexical evidence.'),(54,38,'*sleg- argument','challenges','Challenges the traditional root shape and supplies an alternative.'),(55,38,'reconstruction boundary','supports',NULL),
(56,42,'Etymology and First Known Use','supports',NULL),(57,42,'lectura','supports',NULL),(58,42,'lectus / legere','supports',NULL),(58,49,'legō / legere','supports',NULL),(59,37,'root *leg-','supports',NULL),(59,38,'*sleg- argument','challenges',NULL),(60,38,'reconstruction boundary','supports',NULL),
(61,43,'Etymology and senses','supports',NULL),(62,43,'Middle English and Anglo-French stages','supports',NULL),(63,43,'Medieval Latin legenda','supports',NULL),(64,43,'legenda','supports','Literally things to be read.'),(65,43,'legendus / legere','supports',NULL),(66,37,'root *leg-','supports',NULL),(66,38,'*sleg- argument','challenges',NULL),(67,38,'reconstruction boundary','supports',NULL),
(68,44,'Etymology and First Known Use','supports',NULL),(69,44,'French and Latin stages','supports',NULL),(70,44,'intelligentia','supports',NULL),(71,45,'intelligens','supports',NULL),(72,45,'inter- + legere','supports','Morphological analysis.'),(72,50,'intellegō','supports','Latin lexical evidence.'),(73,37,'root *leg-','supports',NULL),(73,38,'*sleg- argument','challenges',NULL),(74,38,'reconstruction boundary','supports',NULL),
(75,46,'Etymology and First Known Use','supports','Distinguishes the early prayer noun from the later verb.'),(76,46,'Middle English verb','supports',NULL),(77,46,'Anglo-French and Latin stages','supports',NULL),(78,46,'collēctus','supports',NULL),(79,46,'com- + legere','supports',NULL),(79,51,'colligō','supports','Latin lexical evidence.'),(80,37,'root *leg-','supports',NULL),(80,38,'*sleg- argument','challenges',NULL),(81,38,'reconstruction boundary','supports',NULL);
--> statement-breakpoint
INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`) VALUES
(16,60,41,'15th century',1450,'English lexical record','First Known Use',NULL,'established'),
(17,66,42,'15th century',1450,'English lexical record','First Known Use',NULL,'established'),
(18,72,43,'c. 1500',1500,'English lexical record','First Known Use',NULL,'established'),
(19,80,44,'14th century',1350,'Middle English lexical record','First Known Use',NULL,'established'),
(20,88,46,'before 12th century',1100,'English lexical record for the prayer noun','First Known Use',NULL,'established'),
(21,63,48,'Roman antiquity',-450,'Latin legal and literary record','lex',NULL,'established'),
(22,69,49,'Latin antiquity',-200,'Latin literary record','legō / legere',NULL,'established');
--> statement-breakpoint
INSERT INTO `relatives` (`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(10,'legality','English','direct derivative of legal',41),(10,'legalize','English','direct derivative of legal',41),(10,'legislation','English','Latin lēx family',48),(10,'law','English','semantic neighbor with unrelated ancestry',47),
(11,'lector','English','Latin reading-family descendant',42),(11,'lesson','English','Latin legere family through lectio',42),(11,'select','English','Latin legere family with a prefix',49),(11,'reading','English','semantic equivalent, not a cognate',42),
(12,'legendary','English','direct derivative of legend',43),(12,'legible','English','Latin reading-family relative',43),(12,'lesson','English','Latin legere family',43),(12,'logology','English','distant Greek branch through λόγος',37),
(13,'intelligent','English','same immediate Latin family',45),(13,'intellect','English','Latin intellegere family',50),(13,'counterintelligence','English','modern compound descendant',44),(13,'lecture','English','Latin legere cousin',49),
(14,'collection','English','direct derivative of collect',46),(14,'collective','English','direct derivative of collect',46),(14,'recollect','English','prefixed Latin-family descendant',46),(14,'select','English','Latin legere cousin',49);
--> statement-breakpoint
INSERT INTO `places` (`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(10,1,'Indo-European prehistory','prehistoric','A gather-root relationship is proposed for lēx, with *leǵ- and *sleǵ- analyses competing.',NULL,NULL,'approximate'),(10,2,'Roman world','antiquity','lēx names law and lēgālis names what pertains to it.',41900000,12500000,'regional'),(10,3,'Anglo-French England','medieval','The Latin adjective travels through Anglo-French.',52000000,-1000000,'regional'),(10,4,'Global English','15th century–today','legal expands through law, institutions, and rule-governed domains.',NULL,NULL,'global'),
(11,1,'Indo-European prehistory','prehistoric','A gather/select root is reconstructed with a disputed initial consonant.',NULL,NULL,'approximate'),(11,2,'Roman and medieval scholarly worlds','antiquity–medieval','legere “read” yields lectus and lectūra “a reading.”',45000000,10000000,'regional'),(11,3,'England','15th century','lecture enters English as an instructional discourse.',52500000,-1500000,'regional'),(11,4,'Global education','today','The word names spoken teaching and, figuratively, formal reproof.',NULL,NULL,'global'),
(12,1,'Indo-European prehistory','prehistoric','A gather/select root is reconstructed with a disputed initial consonant.',NULL,NULL,'approximate'),(12,2,'Medieval Latin Christendom','medieval','legenda names materials to be read, especially edifying narratives.',48000000,10000000,'regional'),(12,3,'England','c. 1500','legend enters English reading and inscription traditions.',52500000,-1500000,'regional'),(12,4,'Global storytelling and graphics','today','The word spans traditional tales, famous people, inscriptions, and map keys.',NULL,NULL,'global'),
(13,1,'Indo-European prehistory','prehistoric','A gather/select root is reconstructed with a disputed initial consonant.',NULL,NULL,'approximate'),(13,2,'Roman world','antiquity','intellegere and intelligentia name discernment and understanding.',41900000,12500000,'regional'),(13,3,'France and England','14th century','The abstract noun travels through French into English.',49000000,1000000,'regional'),(13,4,'Global cognitive and state systems','today','The word expands across psychology, information, espionage, and computing.',NULL,NULL,'global'),
(14,1,'Indo-European prehistory','prehistoric','A gather/select root is reconstructed with a disputed initial consonant.',NULL,NULL,'approximate'),(14,2,'Roman world','antiquity','colligere literally builds gathering-together into the verb.',41900000,12500000,'regional'),(14,3,'Anglo-French and Middle English','medieval','Prayer and accumulation senses arrive through related but distinct transmission histories.',50000000,0,'regional'),(14,4,'Global English','today','collect spans gathering objects, money, information, people, and oneself.',NULL,NULL,'global');
--> statement-breakpoint
INSERT INTO `disputes` (`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(10,'Is legal descended from English law?','No. legal is borrowed through Anglo-French from Latin lēgālis and lēx; English law has a separate Germanic and Scandinavian ancestry.','established','Merriam-Webster: legal; Merriam-Webster: law','resolved','The graph models semantic neighbors separately from historical ancestors.'),
(10,'Did Latin lēx originally mean a “collection of rules”?','That semantic bridge and the deeper gather-root connection are plausible published analyses, not an uncontested fact. The root shape *leǵ- versus *sleǵ- is also disputed.','proposed','Logeion: lex; Kaczyńska 2013; Indo-European lexicography','open',NULL),
(11,'Was a lecture originally spoken?','The immediate Latin ancestor lectūra meant an act of reading. The instructional spoken discourse is a later semantic development.','established','Merriam-Webster: lecture','resolved',NULL),
(11,'Does the root prove that reading is “gathering letters”?','No. Latin legere covers gathering, selecting, and reading, but the precise semantic steps cannot be recovered from a slogan alone.','probable','Latin and Indo-European lexicography','open',NULL),
(12,'Did legend originally mean a false story?','No. Medieval Latin legenda meant things to be read. The uncertainty or fictionality of a traditional story is a later development.','established','Merriam-Webster: legend','resolved',NULL),
(12,'Why did appointed readings become unverifiable stories?','Association with saints’ lives and inherited narratives supplies the historical environment, but the semantic expansion was gradual rather than one datable pivot.','probable','Historical lexicography','open',NULL),
(13,'Does intelligence literally mean “choosing between”?','The Latin form is traditionally analyzed through inter- and legere, and selection or discernment informs the semantic history. A literal gloss is not a complete account of cognition.','probable','Merriam-Webster: intelligent; Logeion: intellegō','open',NULL),
(13,'How did intelligence become secret information?','The word already meant understanding and knowledge; news and strategic information developed from that information sense, later naming the services that gather it.','established','Merriam-Webster historical senses','resolved',NULL),
(14,'Are the prayer and gathering senses identical histories?','They converge on Latin collēctus / colligere, but the prayer noun may refer specifically to a congregation’s gathering place; the immediate motivation is qualified as “perhaps.”','proposed','Merriam-Webster: collect','open',NULL),
(14,'Is collect really com- plus legere?','Yes. Latin colligere contains the assimilated together-prefix com- / col- and legere “gather, select.”','established','Merriam-Webster: collect; Logeion: colligō','resolved',NULL);
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(10,8,'legal','Legal is not descended from English law.','The meanings meet; the family trees do not. legal is Latin, while law is Germanic and Scandinavian.','A',80,'Strong contrast between semantic synonymy and unrelated ancestry.'),
(12,9,'legend','A legend was “something to be read.”','The dubious-story sense came later than the Medieval Latin reading category.','A',79,'Transparent gerundive formation with strong historical record.'),
(11,10,'lecture','A lecture began as reading, not speaking.','Latin lectūra named an act of reading before English made it a discourse.','A',77,'Secure borrowing and semantic shift.'),
(13,11,'intelligence','Intelligence belongs to the gather-and-select family.','Latin morphology links discernment to inter- plus legere—but the root is not a theory of mind.','A−',74,'Strong morphology with an explicit warning against root essentialism.');
--> statement-breakpoint
WITH keyed_forms AS (
	SELECT f.*, CASE WHEN f.status = 'boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
		ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status END AS canonical_key
	FROM forms f WHERE f.entry_id BETWEEN 10 AND 14
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT canonical_key, language_id, form, normalized_form, transliteration, pronunciation, status, date_label, date_start, date_end, gloss, notes, 'reviewed' FROM keyed_forms;
--> statement-breakpoint
INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id, n.id, 'established', CASE WHEN f.status = 'boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key = CASE WHEN f.status = 'boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status END
WHERE f.entry_id BETWEEN 10 AND 14;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id, parent_link.node_id, r.relation_type, r.sound_change, r.semantic_change, r.scholar, r.confidence, r.confidence_note, r.chronology_note, r.editorial_status
FROM relations r JOIN form_node_links child_link ON child_link.form_id = r.child_form_id JOIN form_node_links parent_link ON parent_link.form_id = r.parent_form_id
WHERE r.entry_id BETWEEN 10 AND 14;
--> statement-breakpoint
INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id, edge.id FROM relations r JOIN form_node_links child_link ON child_link.form_id = r.child_form_id JOIN form_node_links parent_link ON parent_link.form_id = r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id = child_link.node_id AND edge.parent_node_id = parent_link.node_id AND edge.relation_type = r.relation_type
WHERE r.entry_id BETWEEN 10 AND 14;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id, source.source_id, source.locator, source.stance, source.evidence_note
FROM relation_sources source JOIN relation_edge_links link ON link.relation_id = source.relation_id JOIN relations relation ON relation.id = source.relation_id
WHERE relation.entry_id BETWEEN 10 AND 14;
