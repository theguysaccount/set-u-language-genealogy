CREATE TABLE `context_link_sources` (
	`context_link_id` integer NOT NULL,
	`source_id` integer NOT NULL,
	`locator` text,
	`stance` text DEFAULT 'supports' NOT NULL,
	`evidence_note` text,
	PRIMARY KEY(`context_link_id`, `source_id`),
	FOREIGN KEY (`context_link_id`) REFERENCES `context_links`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`source_id`) REFERENCES `sources`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE INDEX `idx_context_link_sources_source` ON `context_link_sources` (`source_id`);--> statement-breakpoint
CREATE TABLE `context_links` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`from_entry_id` integer NOT NULL,
	`to_entry_id` integer NOT NULL,
	`link_type` text NOT NULL,
	`title` text NOT NULL,
	`explanation` text NOT NULL,
	`scholar` text NOT NULL,
	`confidence` text NOT NULL,
	`editorial_status` text DEFAULT 'reviewed' NOT NULL,
	FOREIGN KEY (`from_entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`to_entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_context_links_pair_type` ON `context_links` (`from_entry_id`,`to_entry_id`,`link_type`);--> statement-breakpoint
CREATE INDEX `idx_context_links_from` ON `context_links` (`from_entry_id`);--> statement-breakpoint
CREATE INDEX `idx_context_links_to` ON `context_links` (`to_entry_id`);
--> statement-breakpoint
INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(14,'medieval-latin','Medieval Latin','Indo-European','Italic',0,500,1500,'Learned and documentary Latin of medieval Europe.'),
(15,'classical-arabic','Classical Arabic','Afro-Asiatic','Semitic',0,500,1500,'The written Arabic tradition represented in early scientific texts and names.'),
(16,'czech','Czech','Indo-European','West Slavic',0,1000,NULL,'Czech, including historically marked lexical material.'),
(17,'proto-slavic','Proto-Slavic','Indo-European','Slavic',1,-1500,600,'Reconstructed common ancestor of the Slavic languages.');
--> statement-breakpoint
INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(15,'algorithm','algorithm','algorithm','/ˈælɡəˌrɪðəm/','noun','A finite or stepwise procedure, descended through medieval arithmetic vocabulary from the Latinized name of al-Khwārizmī.','Algorithm did not begin as a machine instruction. It began as a person''s geographic name: al-Khwārizmī, “the man from Khwārizm.”','reviewed'),
(16,'algebra','algebra','algebra','/ˈældʒəbrə/','noun','A mathematical discipline whose English name travels through Medieval Latin from Arabic al-jabr, restoration or completion.','Algebra is not a Greek label for symbols. Its name is Arabic and originally named an operation of restoring or completing an equation.','reviewed'),
(17,'calculate','calculate','calculate','/ˈkælkjəˌleɪt/','verb','To determine mathematically or estimate, borrowed from a Latin family built around counting with pebbles.','Calculation was physical before it was abstract: Latin calculus was a pebble used on a counting board.','reviewed'),
(18,'robot','robot','robot','/ˈroʊbɑːt/','noun','A programmable or autonomous machine, named in English through Karel Čapek''s R.U.R. from Czech robota, compulsory labor.','Robot did not originally name metal machinery. Josef Čapek proposed a word built from forced labor for artificial workers—and its remote family reaches toward slavery, bereavement, and changed social status.','reviewed');
--> statement-breakpoint
INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(53,'mw-algorithm','Algorithm — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/algorithm',NULL,'historical_dictionary'),
(54,'mw-algorism','Algorism — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/algorism',NULL,'historical_dictionary'),
(55,'mw-algebra','Algebra — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/algebra',NULL,'historical_dictionary'),
(56,'mw-math-word-origins','The Word Origins of Algebra, Calculus, and Other Math Terms','Merriam-Webster Editors',2017,'Merriam-Webster','https://www.merriam-webster.com/wordplay/algebra-calculus-other-types-of-math',NULL,'editorial_reference'),
(57,'oxford-algebra','Algebra — Word Origin','Oxford University Press Editors',2026,'Oxford University Press','https://www.oxfordlearnersdictionaries.com/us/definition/english/algebra',NULL,'historical_dictionary'),
(58,'mactutor-a-words','Earliest Known Uses of Some of the Words of Mathematics: A','John Aldrich et al.',2026,'University of St Andrews','https://mathshistory.st-andrews.ac.uk/Miller/a/',NULL,'scholarly_reference'),
(59,'mw-calculate','Calculate — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/calculate',NULL,'historical_dictionary'),
(60,'mw-calculus','Calculus — Word History and Etymology Note','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/calculus',NULL,'historical_dictionary'),
(61,'mw-chalk','Chalk — Word History and Etymology Note','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/chalk',NULL,'historical_dictionary'),
(62,'mw-robot','Robot — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/robot',NULL,'historical_dictionary'),
(63,'mw-orphan','Orphan — Indo-European Etymology','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/orphan',NULL,'historical_dictionary'),
(64,'uw-robota','robota — Słownik etymologiczny','University of Warsaw Editors',2026,'University of Warsaw','https://slowniketymologiczny.uw.edu.pl/entry/126',NULL,'etymological_dictionary');
--> statement-breakpoint
INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`transliteration`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(96,15,1,1,'algorithm','algorithm',NULL,'attested','1699–today',1699,NULL,'a numeral procedure; later a finite stepwise procedure','The spelling is reported in 1699; Merriam-Webster dates its currently defined technical sense to 1926.'),
(97,15,2,2,'algorisme / augrim','algorisme augrim',NULL,'attested','14th–15th centuries',1300,1500,'arithmetic using Hindu-Arabic numerals','The older English word is algorism; the modern -thm spelling is a later reshaping.'),
(98,15,14,3,'algorismus','algorismus',NULL,'attested','12th–15th centuries',1100,1500,'arithmetic; computation with Hindu-Arabic numerals','A Medieval Latin adaptation of the scholar''s name.'),
(99,15,15,4,'al-Khwārizmī','al-khwarizmi','al-Khwārizmī','attested','9th century',780,850,'the Khwārizmian; name of Muḥammad ibn Mūsā al-Khwārizmī','A personal nisba, not a reconstructed root.'),
(100,15,15,5,'Khwārizm','khwarizm','Khwārizm','attested','early medieval and older geographic record',500,900,'Khwārizm, a region south of the Aral Sea','The deeper origin of the toponym is not promoted here.'),
(101,15,7,6,'UNKNOWN','unknown',NULL,'boundary','before the recoverable toponym',NULL,NULL,'No securely demonstrated lexical ancestor of the place name is presented.','Evidence horizon.'),
(102,16,1,1,'algebra','algebra',NULL,'attested','1551–today',1551,NULL,'a mathematical discipline of symbolic and structural relations',NULL),
(103,16,14,2,'algebra','algebra',NULL,'attested','12th–16th centuries',1100,1600,'restoration; bone-setting; the mathematical art','Transmission also involved Italian and Spanish forms.'),
(104,16,15,3,'al-jabr','al-jabr','al-jabr','attested','9th century',800,900,'restoration, completion; an operation in equation solving','The definite article al- became part of the borrowed word.'),
(105,16,15,4,'jabara','jabara','jabara','attested','Classical Arabic',500,1500,'to restore, reunite, set or mend','Lexical verb represented in scholarly dictionary summaries.'),
(106,16,7,5,'UNKNOWN','unknown',NULL,'boundary','before the reviewed Arabic derivation',NULL,NULL,'No Proto-Semitic reconstruction is asserted in this dossier.','Evidence horizon.'),
(107,17,1,1,'calculate','calculate',NULL,'attested','1542–today',1542,NULL,'to compute, determine, estimate, or plan',NULL),
(108,17,14,2,'calculātus','calculatus',NULL,'attested','Late Latin',300,800,'counted, reckoned, computed','Past participle of calculāre.'),
(109,17,9,3,'calculāre','calculare',NULL,'attested','Latin antiquity and Late Latin',-100,600,'to count, reckon, compute',NULL),
(110,17,9,4,'calculus','calculus',NULL,'attested','Latin antiquity',-300,500,'pebble; counting-board pebble; calculation; account','Also a stone or concretion in medical usage.'),
(111,17,9,5,'calx','calx',NULL,'attested','Latin antiquity',-500,500,'lime, limestone','A proposed base for calculus; the derivation is explicitly disputed.'),
(112,17,7,6,'UNKNOWN','unknown',NULL,'boundary','before the disputed stone-word connection',NULL,NULL,'The route beyond calculus remains unsettled.','Evidence horizon.'),
(113,18,1,1,'robot','robot',NULL,'attested','1922–today',1922,NULL,'an artificial worker; later an automatic or programmable machine',NULL),
(114,18,16,2,'robota','robota',NULL,'attested','Czech historical vocabulary',1400,NULL,'compulsory labor, corvée, drudgery',NULL),
(115,18,17,3,'*orbota','orbota',NULL,'reconstructed','Proto-Slavic prehistory',-1500,600,'work; hard or obligatory labor','Reconstructed from Slavic comparanda.'),
(116,18,6,4,'*h₃órbʰos','h3orbhos',NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'person or property transferred; bereaved person, orphan, or dependent','The exact semantic path into labor and servitude is reconstructed, not attested as a sentence.'),
(117,18,7,5,'UNKNOWN','unknown',NULL,'boundary','before the proposed Indo-European family',NULL,NULL,'No deeper ancestor is presented as secure.','Evidence horizon.');
--> statement-breakpoint
INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(82,15,96,97,'alteration','The older ending -ism was reshaped to -ithm, commonly explained through association with Greek arithmos “number.”','Arithmetic or numeral procedure narrowed and generalized into a finite stepwise procedure.','Merriam-Webster · MacTutor editors','probable','The descent from algorism is secure; the exact force of Greek influence is reported rather than independently demonstrated here.','The spelling is reported in 1699; Merriam-Webster dates its currently defined technical sense to 1926.','reviewed'),
(83,15,97,98,'borrowing','Middle English and French forms adapted Medieval Latin algorismus with variable vowels and endings.','The art of reckoning with Hindu-Arabic numerals remained central.','Merriam-Webster editors','established',NULL,'Algorism is recorded in English in the 14th century.','reviewed'),
(84,15,98,99,'eponymic_borrowing','The Arabic name al-Khwārizmī was heavily Latinized as Algoritmi / algorismus; the initial article was absorbed into the form.','A scholar''s geographic name came to denote the arithmetic associated with transmitted texts.','Merriam-Webster · MacTutor editors','established',NULL,'Latin arithmetic texts circulated from the 12th century.','reviewed'),
(85,15,99,100,'nisba_derivation','Arabic al- plus Khwārizm plus the relational suffix -ī forms “the Khwārizmian.”','A place of origin becomes a personal identifier.','Arabic onomastic analysis · Merriam-Webster editors','established',NULL,'Name attested for the 9th-century scholar.','reviewed'),
(86,15,100,101,'knowledge_boundary','No deeper analysis of the toponym is promoted without dedicated Iranian and Central Asian onomastic review.','The graph stops at the geographic name rather than inventing a lexical root.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(87,16,102,103,'borrowing','English borrowed the learned form through Medieval Latin and Romance channels, with stress and vowel adaptation.','A named mathematical art developed into the broad modern discipline.','Merriam-Webster · Oxford editors','established',NULL,'First known English mathematical use: 1551.','reviewed'),
(88,16,103,104,'borrowing','Arabic al-jabr was adapted into Medieval Latin algebra, retaining the article as part of the word.','An operation of restoring a subtracted term—and a title phrase—came to name the mathematical discipline; a bone-setting sense also circulated.','Oxford · MacTutor editors','established',NULL,'Latin translations circulated from the 12th century.','reviewed'),
(89,16,104,105,'derivation','The Arabic verbal noun jabr is derived from jabara; the definite article al- is prefixed.','Restoring, reuniting, or mending is specialized as a mathematical operation.','Oxford University Press editors','established',NULL,'The term appears in al-Khwārizmī''s 9th-century title.','reviewed'),
(90,16,105,106,'knowledge_boundary','This dossier does not promote a deeper Semitic reconstruction without a reviewed specialist source.','The attested Arabic verb is the current evidentiary horizon.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(91,17,107,108,'borrowing','English borrowed the learned participial stem with regular English stress and suffix treatment.','Counting and reckoning broadened into estimation, intention, and deliberate planning.','Merriam-Webster editors','established',NULL,'First known English use: 1542.','reviewed'),
(92,17,108,109,'inflection','Calculātus is the past participle of calculāre.','The completed act of reckoning supplies the borrowed form.','Latin morphology · Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(93,17,109,110,'derivation','Calculāre is derived from calculus.','Manipulating counting pebbles becomes the general act of computation.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(94,17,110,111,'proposed_derivation','Calculus has traditionally been treated as an irregular diminutive of calx, but the phonology and meanings are problematic and a shared non-Indo-European source with a Greek stone-word has been proposed.','A small stone or pebble may connect to lime or limestone; the route is unsettled.','Merriam-Webster editors summarizing Festus and Beekes','proposed','The calculus-to-calx derivation is not secure.',NULL,'reviewed'),
(95,17,111,112,'knowledge_boundary','The traditional limestone route and substrate alternatives do not yield a single secure deeper chain.','The graph stops at the live etymological dispute.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(96,18,113,114,'creative_coinage','Josef Čapek suggested robot from Czech robota; English received the coined form through Karel Čapek''s R.U.R. and its translation.','Compulsory human labor was reassigned to artificial workers, then generalized to automatic machines.','Merriam-Webster editors','established',NULL,'R.U.R. appeared in 1920; English first known use is 1922.','reviewed'),
(97,18,114,115,'inheritance','Czech robota continues the reconstructed Slavic form with loss of the initial vowel and regular West Slavic development.','Obligatory work and drudgery preserve the inherited labor field.','Slavic etymological lexicography','probable','The Proto-Slavic form is reconstructed from multiple Slavic languages.',NULL,'reviewed'),
(98,18,115,116,'derivation','Proto-Slavic *orbota is analyzed within the *orb- family with an abstract noun suffix; comparison reaches the Indo-European *h₃orbʰ- family.','Transfer of social status, dependency, bereavement, slavery, and obligatory labor form a reconstructed semantic network—not a single literal definition.','Merriam-Webster · Slavic etymological lexicography','probable','The family connection is strong; individual semantic bridges remain reconstructed.',NULL,'reviewed'),
(99,18,116,117,'knowledge_boundary','No deeper form is promoted beyond the proposed Indo-European base.','The graph stops where the comparative evidence currently stops.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint
INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(82,53,'Etymology and First Known Use','supports','Algorithm as an alteration of algorism.'),(82,58,'ALGORITHM entry','supports','Reports influence from Greek arithmos.'),(83,54,'Etymology and First Known Use','supports',NULL),(84,53,'Arabic al-Khwārizmī','supports',NULL),(84,58,'ALGORITHM entry','supports','Latin arithmetic transmission.'),(85,53,'al-Khwārizmī','supports',NULL),(86,53,'toponym boundary','supports','The source identifies the name but does not provide a deeper toponymic etymology.'),
(87,55,'Etymology and First Known Use','supports',NULL),(87,57,'Word Origin','supports','Specifies Italian, Spanish, and Medieval Latin transmission.'),(88,55,'Arabic al-jabr','supports',NULL),(88,57,'Word Origin','supports','Includes mathematical and bone-setting histories.'),(88,58,'ALGEBRA entry','supports','Explains the equation operation.'),(89,57,'jabara “reunite, restore”','supports',NULL),(90,57,'Arabic derivation boundary','supports',NULL),
(91,59,'Etymology and First Known Use','supports',NULL),(92,59,'Late Latin calculātus','supports',NULL),(93,59,'calculāre from calculus','supports',NULL),(94,60,'Etymology note','supports','Traditional irregular diminutive analysis.'),(94,61,'Etymology note','challenges','Notes irregularity and possible independent borrowing.'),(95,60,'unresolved calculus etymology','supports',NULL),
(96,62,'Did You Know and Word History','supports','Josef Čapek suggestion, robota, 1920 play, and 1922 English record.'),(97,64,'*orbota','supports','Slavic etymological reconstruction.'),(98,63,'Indo-European *h₃órbhos family','supports','Connects Old Church Slavic rabŭ and the wider status-transfer family.'),(98,64,'*orbota','supports','Proto-Slavic labor noun.'),(99,63,'Indo-European boundary','supports',NULL);
--> statement-breakpoint
INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(23,96,58,'1699',1699,'Source-reported English record for the algorithm spelling','ALGORITHM entry','The Algorithm or Numeral Figures now in use','established','lexical_corpus',NULL,NULL,NULL,0,'Source-reported quotation attributed to the OED by MacTutor; the original Philosophical Transactions page was not directly inspected.'),
(24,97,54,'14th century',1350,'Middle English lexicographic first-use record for algorism','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use date; no underlying manuscript witness was directly inspected.'),
(25,102,55,'1551',1551,'English lexicographic first-use record','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use date; no underlying quotation or facsimile was directly inspected for this record.'),
(26,104,58,'c. 825',825,'Source-reported title phrase in al-Khwārizmī''s mathematical work','ALGEBRA entry',NULL,'probable','lexical_corpus',NULL,NULL,NULL,0,'Source-reported historical-text record; the Arabic manuscript tradition and facsimiles were not directly inspected.'),
(27,107,59,'1542',1542,'English lexicographic first-use record','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use date; no underlying quotation or facsimile was directly inspected for this record.'),
(28,110,60,'Latin antiquity',-100,'Source-reported Latin lexical record','Word History',NULL,'established','lexical_corpus',NULL,NULL,NULL,0,'Source-reported lexical record; no manuscript or inscription facsimile was directly inspected.'),
(29,113,62,'1922',1922,'English lexicographic first-use record','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use date; no underlying quotation or facsimile was directly inspected for this record.'),
(30,114,62,'1920',1920,'Source-reported coinage context in R.U.R.','Did You Know?',NULL,'established','lexical_corpus',NULL,NULL,NULL,0,'Source-reported literary coinage context; no first-edition page facsimile was directly inspected.'),
(31,96,53,'1926',1926,'Lexicographic first-use record for Merriam-Webster''s currently defined technical sense','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Sense-specific source-reported first-use date; it does not erase earlier records of the spelling with the numeral-system sense.');
--> statement-breakpoint
INSERT INTO `relatives` (`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(15,'algorism','English','direct historical predecessor',54),(15,'al-Khwārizmī','Arabic personal name','eponymic source',53),(15,'arithmetic','English / Greek lineage','spelling influence, not a cognate',58),(15,'algebra','English','shared scholarly history, not shared lexical ancestry',56),
(16,'al-jabr','Arabic','direct lexical ancestor',57),(16,'jabara','Arabic','derivational base',57),(16,'algorithm','English','shared scholarly history, not a cognate',56),(16,'algebrista','Medieval Romance','bone-setter family',57),
(17,'calculus','Latin / English','same pebble-and-computation family',60),(17,'calculator','English','direct derivative',59),(17,'calcium','English','possible calx family, not direct descendant',61),(17,'chalk','English','remote borrowing from Latin calx family',61),
(18,'robota','Czech','direct lexical source',62),(18,'rabŭ','Old Church Slavic','Slavic family member',63),(18,'orphan','English / Greek lineage','distant Indo-European cousin',63),(18,'Arbeit','German','distant labor-family comparison',62);
--> statement-breakpoint
INSERT INTO `places` (`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(15,1,'Khwārizm','8th–9th centuries','The scholar''s nisba identifies a connection to Khwārizm, south of the Aral Sea.',41000000,60000000,'regional'),(15,2,'Baghdad','9th century','Al-Khwārizmī worked in the Abbasid scholarly world; his name became attached to arithmetic transmission.',33315000,44366000,'regional'),(15,3,'Medieval Latin Europe','12th–15th centuries','Latinized name forms become terms for arithmetic with Hindu-Arabic numerals.',48000000,8000000,'regional'),(15,4,'Global computing','20th century–today','Algorithm generalizes from mathematical procedure into a central term of computing and public life.',NULL,NULL,'global'),
(16,1,'Baghdad','c. 825','Al-jabr appears in the title and method vocabulary of al-Khwārizmī''s work.',33315000,44366000,'regional'),(16,2,'Iberian and Latin translation worlds','12th century','Arabic mathematical vocabulary moves through translation into Medieval Latin and Romance.',38000000,-4000000,'regional'),(16,3,'England','1551','The mathematical word enters the English lexicographic record.',52500000,-1500000,'regional'),(16,4,'Global mathematics','today','Algebra expands far beyond equation restoration into structures and abstract systems.',NULL,NULL,'global'),
(17,1,'Roman world','antiquity','Calculus names a pebble and a counting-board counter as well as a calculation.',41900000,12500000,'regional'),(17,2,'Late Latin scholarly Europe','late antiquity–medieval','Calculāre and calculātus transmit the act and result of reckoning.',46000000,8000000,'regional'),(17,3,'England','1542','Calculate enters English as a learned mathematical verb.',52500000,-1500000,'regional'),(17,4,'Global computation','today','The word spans exact arithmetic, estimation, risk, and strategic planning.',NULL,NULL,'global'),
(18,1,'Proto-Slavic speech area','prehistoric','The labor noun *orbota is reconstructed from later Slavic forms.',50000000,25000000,'approximate'),(18,2,'Prague','1920','R.U.R. introduces artificial workers named from Czech compulsory labor.',50075000,14438000,'regional'),(18,3,'English-language theatre and print','1922','The word enters English through translation and performance.',51500000,-100000,'regional'),(18,4,'Global technology','20th century–today','Robot shifts from fictional artificial worker to machines, software, and automation.',NULL,NULL,'global');
--> statement-breakpoint
INSERT INTO `disputes` (`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(15,'Is algorithm originally a Greek mathematical word?','No. The lexical line reaches the Arabic name al-Khwārizmī through Medieval Latin. Greek arithmos likely influenced the later spelling, but it is not the source of the name.','probable','Merriam-Webster: algorithm and algorism; MacTutor ALGORITHM entry','resolved','The graph separates ancestry from later spelling influence.'),
(15,'Does the word commemorate an abstract concept or a person?','It ultimately reflects a geographic personal name, “the Khwārizmian,” which became attached to transmitted arithmetic.','established','Merriam-Webster; MacTutor','resolved',NULL),
(15,'Was algorithm first used in 1699 or 1926?','Both dates describe different editorial claims. Oxford/MacTutor reports the spelling in 1699 for numeral calculation; Merriam-Webster gives 1926 for the currently defined finite-procedure sense.','established','MacTutor citing OED; Merriam-Webster First Known Use','resolved','SET-U stores both attestations and labels the sense boundary.'),
(16,'Did algebra originally mean symbols and variables?','No. Al-jabr named restoration or completion, including a specific equation-solving operation; the word later expanded to the discipline.','established','Oxford Word Origin; MacTutor ALGEBRA entry','resolved',NULL),
(16,'Is the bone-setting sense a fake folk story?','No. Arabic and Romance transmission includes reunion of broken parts and bone-setting. That real medical sense should not be confused with the mathematical title history.','established','Oxford Word Origin','resolved',NULL),
(17,'Is calculus securely a diminutive of calx “limestone”?','Not securely. The traditional analysis is morphologically and semantically irregular; an alternative links Latin calculus and Greek stone words through a possible shared substrate source.','proposed','Merriam-Webster calculus and chalk etymology notes','open',NULL),
(17,'Were Roman calculations literally made with stones?','Latin calculus did name a pebble used on a counting board, and the computation sense developed from that practice.','established','Merriam-Webster calculate and calculus','resolved',NULL),
(18,'Did Karel Čapek personally invent robot?','Karel introduced and popularized it in R.U.R., but Merriam-Webster reports that his brother Josef suggested the name from robota.','established','Merriam-Webster robot, Did You Know?','resolved',NULL),
(18,'Does robot literally mean orphan?','No. Robot descends immediately from Czech compulsory labor. Orphan belongs to a remote comparative family around transferred status, dependency, and bereavement; a distant root relationship is not a modern definition.','probable','Merriam-Webster robot and orphan; University of Warsaw robota','resolved',NULL);
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`+100 WHERE `rank`>=3;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=CASE WHEN `rank`-100 BETWEEN 3 AND 4 THEN (`rank`-100)+2 WHEN `rank`-100=5 THEN 8 ELSE (`rank`-100)+4 END WHERE `rank`>=103;
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(15,3,'algorithm','Algorithm began as a person''s geographic name.','Al-Khwārizmī—“the man from Khwārizm”—became Medieval Latin arithmetic, then modern procedure.','A',95,'Secure eponymic line; exact Greek influence on the modern spelling remains qualified.'),
(18,4,'robot','Robot first named forced labor, not machinery.','A Czech labor word named artificial workers; its remote family reaches slavery, bereavement, and transferred status.','A−',94,'Immediate coinage is secure; deep semantic reconstruction is carefully qualified.'),
(16,7,'algebra','Algebra named restoration before it named symbols.','Arabic al-jabr was an operation of restoring or completing an equation—and also had a real bone-setting history.','A',90,'Arabic derivation and mathematical title history are well established.'),
(17,9,'calculate','To calculate was to work with pebbles.','Latin calculus was a counting-board stone before computation became abstract.','A',87,'The pebble-to-computation bridge is secure; the deeper calx derivation is disputed.');
--> statement-breakpoint
INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(1,15,16,'shared_historical_agent','ONE SCHOLAR, TWO DIFFERENT WORD HISTORIES','Algorithm descends from the Latinized personal name of al-Khwārizmī. Algebra descends from al-jabr in the title and terminology of his mathematical work. The words share a historical agent, not a lexical ancestor.','Merriam-Webster · MacTutor history of mathematics','established','reviewed');
--> statement-breakpoint
INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1,56,'Algebra and Algorithm sections','supports','Distinguishes the title-word al-jabr from the Latinized personal name.'),(1,58,'ALGEBRA and ALGORITHM entries','supports','Documents the shared al-Khwārizmī history without claiming cognacy.');
--> statement-breakpoint
INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(7,15,16,'ONE SCHOLAR ENTERED ENGLISH TWICE','Algorithm carries al-Khwārizmī''s name; algebra carries a technical word from his book title. Their connection is historical, not genealogical.',100,'A','reviewed');
--> statement-breakpoint
WITH keyed_forms AS (
	SELECT f.*, CASE WHEN f.status = 'boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
		ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status END AS canonical_key
	FROM forms f WHERE f.entry_id BETWEEN 15 AND 18
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT canonical_key, language_id, form, normalized_form, transliteration, pronunciation, status, date_label, date_start, date_end, gloss, notes, 'reviewed' FROM keyed_forms;
--> statement-breakpoint
INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id, n.id, 'established', CASE WHEN f.status = 'boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key = CASE WHEN f.status = 'boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status END
WHERE f.entry_id BETWEEN 15 AND 18;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id, parent_link.node_id, r.relation_type, r.sound_change, r.semantic_change, r.scholar, r.confidence, r.confidence_note, r.chronology_note, r.editorial_status
FROM relations r JOIN form_node_links child_link ON child_link.form_id = r.child_form_id JOIN form_node_links parent_link ON parent_link.form_id = r.parent_form_id
WHERE r.entry_id BETWEEN 15 AND 18;
--> statement-breakpoint
INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id, edge.id FROM relations r JOIN form_node_links child_link ON child_link.form_id = r.child_form_id JOIN form_node_links parent_link ON parent_link.form_id = r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id = child_link.node_id AND edge.parent_node_id = parent_link.node_id AND edge.relation_type = r.relation_type
WHERE r.entry_id BETWEEN 15 AND 18;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id, source.source_id, source.locator, source.stance, source.evidence_note
FROM relation_sources source JOIN relation_edge_links link ON link.relation_id = source.relation_id JOIN relations relation ON relation.id = source.relation_id
WHERE relation.entry_id BETWEEN 15 AND 18;
