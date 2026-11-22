CREATE TABLE `attestations` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`form_id` integer NOT NULL,
	`source_id` integer,
	`date_label` text NOT NULL,
	`year` integer,
	`witness` text NOT NULL,
	`locator` text,
	`excerpt` text,
	`confidence` text DEFAULT 'established' NOT NULL,
	FOREIGN KEY (`form_id`) REFERENCES `forms`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`source_id`) REFERENCES `sources`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE INDEX `idx_attestations_form_year` ON `attestations` (`form_id`,`year`);--> statement-breakpoint
CREATE TABLE `disputes` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`entry_id` integer NOT NULL,
	`title` text NOT NULL,
	`position` text NOT NULL,
	`confidence` text NOT NULL,
	`source_summary` text NOT NULL,
	`status` text DEFAULT 'open' NOT NULL,
	`resolution_note` text,
	FOREIGN KEY (`entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `idx_disputes_entry_status` ON `disputes` (`entry_id`,`status`);--> statement-breakpoint
CREATE TABLE `entries` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`slug` text NOT NULL,
	`headword` text NOT NULL,
	`normalized_headword` text NOT NULL,
	`pronunciation` text NOT NULL,
	`part_of_speech` text NOT NULL,
	`summary` text NOT NULL,
	`contrarian_truth` text NOT NULL,
	`editorial_status` text DEFAULT 'reviewed' NOT NULL,
	`created_at` text DEFAULT (CURRENT_TIMESTAMP) NOT NULL,
	`updated_at` text DEFAULT (CURRENT_TIMESTAMP) NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_entries_slug` ON `entries` (`slug`);--> statement-breakpoint
CREATE INDEX `idx_entries_normalized_headword` ON `entries` (`normalized_headword`);--> statement-breakpoint
CREATE TABLE `forms` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`entry_id` integer NOT NULL,
	`language_id` integer NOT NULL,
	`step_order` integer NOT NULL,
	`form` text NOT NULL,
	`normalized_form` text NOT NULL,
	`transliteration` text,
	`pronunciation` text,
	`status` text NOT NULL,
	`date_label` text NOT NULL,
	`date_start` integer,
	`date_end` integer,
	`gloss` text NOT NULL,
	`notes` text,
	FOREIGN KEY (`entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`language_id`) REFERENCES `languages`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_forms_entry_step` ON `forms` (`entry_id`,`step_order`);--> statement-breakpoint
CREATE INDEX `idx_forms_normalized_form` ON `forms` (`normalized_form`);--> statement-breakpoint
CREATE INDEX `idx_forms_language` ON `forms` (`language_id`);--> statement-breakpoint
CREATE TABLE `languages` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`slug` text NOT NULL,
	`name` text NOT NULL,
	`family` text,
	`branch` text,
	`reconstructed` integer DEFAULT false NOT NULL,
	`date_start` integer,
	`date_end` integer,
	`notes` text
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_languages_slug` ON `languages` (`slug`);--> statement-breakpoint
CREATE INDEX `idx_languages_family_branch` ON `languages` (`family`,`branch`);--> statement-breakpoint
CREATE TABLE `leaderboard_entries` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`entry_id` integer,
	`rank` integer NOT NULL,
	`word` text NOT NULL,
	`claim` text NOT NULL,
	`reveal` text NOT NULL,
	`evidence_grade` text NOT NULL,
	`myth_gap_score` integer NOT NULL,
	`editorial_note` text,
	FOREIGN KEY (`entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE set null
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_leaderboard_rank` ON `leaderboard_entries` (`rank`);--> statement-breakpoint
CREATE INDEX `idx_leaderboard_score` ON `leaderboard_entries` (`myth_gap_score`);--> statement-breakpoint
CREATE TABLE `places` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`entry_id` integer NOT NULL,
	`step_order` integer NOT NULL,
	`place` text NOT NULL,
	`date_label` text NOT NULL,
	`note` text NOT NULL,
	`latitude_e6` integer,
	`longitude_e6` integer,
	`geographic_confidence` text DEFAULT 'approximate' NOT NULL,
	FOREIGN KEY (`entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_places_entry_step` ON `places` (`entry_id`,`step_order`);--> statement-breakpoint
CREATE TABLE `relation_sources` (
	`relation_id` integer NOT NULL,
	`source_id` integer NOT NULL,
	`locator` text,
	`stance` text DEFAULT 'supports' NOT NULL,
	`evidence_note` text,
	PRIMARY KEY(`relation_id`, `source_id`),
	FOREIGN KEY (`relation_id`) REFERENCES `relations`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`source_id`) REFERENCES `sources`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE INDEX `idx_relation_sources_source` ON `relation_sources` (`source_id`);--> statement-breakpoint
CREATE TABLE `relations` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`entry_id` integer NOT NULL,
	`child_form_id` integer NOT NULL,
	`parent_form_id` integer NOT NULL,
	`relation_type` text NOT NULL,
	`sound_change` text NOT NULL,
	`semantic_change` text NOT NULL,
	`scholar` text NOT NULL,
	`confidence` text NOT NULL,
	`confidence_note` text,
	`chronology_note` text,
	`editorial_status` text DEFAULT 'reviewed' NOT NULL,
	FOREIGN KEY (`entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`child_form_id`) REFERENCES `forms`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`parent_form_id`) REFERENCES `forms`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_relations_child_parent_type` ON `relations` (`child_form_id`,`parent_form_id`,`relation_type`);--> statement-breakpoint
CREATE INDEX `idx_relations_entry` ON `relations` (`entry_id`);--> statement-breakpoint
CREATE INDEX `idx_relations_parent` ON `relations` (`parent_form_id`);--> statement-breakpoint
CREATE TABLE `relatives` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`entry_id` integer NOT NULL,
	`form` text NOT NULL,
	`language` text NOT NULL,
	`relation` text NOT NULL,
	`source_id` integer,
	FOREIGN KEY (`entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`source_id`) REFERENCES `sources`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE INDEX `idx_relatives_entry` ON `relatives` (`entry_id`);--> statement-breakpoint
CREATE TABLE `sources` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`citation_key` text NOT NULL,
	`title` text NOT NULL,
	`author` text,
	`year` integer,
	`publisher` text,
	`url` text NOT NULL,
	`doi` text,
	`source_type` text DEFAULT 'reference' NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_sources_citation_key` ON `sources` (`citation_key`);--> statement-breakpoint
CREATE UNIQUE INDEX `idx_sources_url` ON `sources` (`url`);
--> statement-breakpoint
INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(1,'love','love','love','/lʌv/','noun · verb','Deep affection; an unusually durable Germanic word whose emotional core survived more than a millennium of sound change.','Love did not begin as romance. Its deepest reconstructable family ranges across care, desire, pleasure, and longing.','reviewed'),
(2,'etymology','etymology','etymology','/ˌɛtɪˈmɒlədʒi/','noun','The study of the true or original sense of a word—and of the changes that made it what it is.','The name of etymology is itself an etymology: Greek “true” + “account.” Its own “true root” remains a reconstruction, not a certainty.','reviewed'),
(3,'salary','salary','salary','/ˈsæləri/','noun','Fixed compensation, inherited through French from a Latin term associated with salt.','Roman soldiers were not “paid in salt.” The Latin word is related to salt; the exact historical reason remains unresolved.','reviewed'),
(4,'sincere','sincere','sincere','/sɪnˈsɪr/','adjective','Genuine, honest, and free from pretense; borrowed from a Latin adjective of uncertain origin.','Sincere does not mean “without wax.” That beautiful story has no etymological basis.','reviewed'),
(5,'clue','clue','clue','/kluː/','noun · verb','A fact that guides discovery—once literally a ball of thread.','A clue became evidence because a thread could guide someone out of a maze. The semantic pivot was literary, not a sound change.','reviewed');
--> statement-breakpoint
INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(1,'present-day-english','Present-Day English','Indo-European','Germanic',0,1500,NULL,'Modern global English.'),
(2,'middle-english','Middle English','Indo-European','West Germanic',0,1150,1500,'Conventionally dated transitional stage.'),
(3,'old-english','Old English','Indo-European','West Germanic',0,450,1150,'Attested early English varieties.'),
(4,'proto-west-germanic','Proto-West Germanic','Indo-European','West Germanic',1,-200,600,'Reconstructed ancestor of West Germanic languages.'),
(5,'proto-germanic','Proto-Germanic','Indo-European','Germanic',1,-500,200,'Reconstructed common Germanic.'),
(6,'proto-indo-european','Proto-Indo-European','Indo-European',NULL,1,-4500,-2500,'Reconstructed protolanguage; dates are approximate.'),
(7,'knowledge-boundary','Beyond secure reconstruction',NULL,NULL,1,NULL,NULL,'Editorial stopping point, not a language.'),
(8,'old-french','Old French','Indo-European','Romance',0,842,1400,'Medieval varieties of northern Gallo-Romance.'),
(9,'latin','Latin','Indo-European','Italic',0,-700,700,'Attested Italic language.'),
(10,'ancient-greek','Ancient Greek','Indo-European','Hellenic',0,-1400,600,'Attested Greek varieties of antiquity.'),
(11,'french','French','Indo-European','Romance',0,1400,NULL,'Modern and early modern French.'),
(12,'anglo-french','Anglo-French','Indo-European','Romance',0,1066,1500,'French varieties used in medieval England.');
--> statement-breakpoint
INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(1,'mw-love','Love — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/love',NULL,'historical_dictionary'),
(2,'med-love','Middle English Dictionary: love n.','Middle English Dictionary Editors',NULL,'University of Michigan','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED26060',NULL,'historical_dictionary'),
(3,'bt-lufu','Bosworth–Toller: lufu','Bosworth & Toller',NULL,'Bosworth–Toller Anglo-Saxon Dictionary','https://bosworthtoller.com/search?q=lufu',NULL,'historical_dictionary'),
(4,'kroonen-2013','Etymological Dictionary of Proto-Germanic','Guus Kroonen',2013,'Brill','https://brill.com/display/title/17785',NULL,'scholarly_dictionary'),
(5,'leiden-ieed','Leiden Indo-European Etymological Dictionary Series','Various',NULL,'Brill','https://brill.com/display/serial/LEIE',NULL,'scholarly_series'),
(6,'uta-pie-love','Indo-European Lexicon: *leubh-','Linguistics Research Center',NULL,'University of Texas at Austin','https://lrc.la.utexas.edu/lex/semantic/field/EM_LO',NULL,'research_database'),
(7,'mw-etymology','Etymology — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/etymology',NULL,'historical_dictionary'),
(8,'cnrtl-etymologie','Étymologie: étymologie','CNRTL Editors',NULL,'CNRTL','https://www.cnrtl.fr/etymologie/%C3%A9tymologie',NULL,'historical_dictionary'),
(9,'logeion-etymologia','Logeion: etymologia','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/etymologia',NULL,'lexical_database'),
(10,'logeion-greek-etymologia','Logeion: ἐτυμολογία','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/%E1%BC%90%CF%84%CF%85%CE%BC%CE%BF%CE%BB%CE%BF%CE%B3%CE%AF%CE%B1',NULL,'lexical_database'),
(11,'etygram-etos','Etygram: ἐτός / ἔτυμος dossier','Etygram Editors',NULL,'Université Côte d’Azur','https://appsweb-cepam.unice.fr/etygram/node/1999',NULL,'research_database'),
(12,'beekes-2010','Etymological Dictionary of Greek','Robert S. P. Beekes',2010,'Brill','https://www.degruyterbrill.com/document/doi/10.1515/9783110223354/html','10.1515/9783110223354','scholarly_dictionary'),
(13,'mw-salary','Salary — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/salary',NULL,'historical_dictionary'),
(14,'logeion-salarium','Logeion: salarium','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/salarium',NULL,'lexical_database'),
(15,'mallory-adams-2006','The Oxford Introduction to Proto-Indo-European and the Proto-Indo-European World','J. P. Mallory & D. Q. Adams',2006,'Oxford University Press','https://global.oup.com/academic/product/the-oxford-introduction-to-proto-indo-european-and-the-proto-indo-european-world-9780199296682',NULL,'monograph'),
(16,'oed-sincere','Oxford English Dictionary: sincere, adj.','Oxford English Dictionary Editors',NULL,'Oxford University Press','https://www.oed.com/dictionary/sincere_adj',NULL,'historical_dictionary'),
(17,'cnrtl-sincere','Étymologie: sincère','CNRTL Editors',NULL,'CNRTL','https://www.cnrtl.fr/etymologie/sinc%C3%A8re',NULL,'historical_dictionary'),
(18,'logeion-sincerus','Logeion: sincerus','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/sincerus',NULL,'lexical_database'),
(19,'mw-clue','Clue — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/clue',NULL,'historical_dictionary'),
(20,'oed-clue','Oxford English Dictionary: clue, n.','Oxford English Dictionary Editors',NULL,'Oxford University Press','https://www.oed.com/dictionary/clue_n',NULL,'historical_dictionary'),
(21,'bt-cliewen','Bosworth–Toller: cliewen','Bosworth & Toller',NULL,'Bosworth–Toller Anglo-Saxon Dictionary','https://bosworthtoller.com/search?q=cliewen',NULL,'historical_dictionary');
--> statement-breakpoint
INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`transliteration`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1,1,1,1,'love','love',NULL,'attested','c. 1500–today',1500,NULL,'deep affection; to feel deep affection',NULL),
(2,1,2,2,'love / luve','love luve',NULL,'attested','c. 1150–1500',1150,1500,'love, affection, beloved person',NULL),
(3,1,3,3,'lufu','lufu',NULL,'attested','before 725–c. 1150',725,1150,'love, affection, friendliness',NULL),
(4,1,4,4,'*lubu','lubu',NULL,'reconstructed','c. 200 BCE–600 CE',-200,600,'love',NULL),
(5,1,5,5,'*lubō','lubo',NULL,'reconstructed','c. 500 BCE',-500,200,'love',NULL),
(6,1,6,6,'*lewbʰ-','leubh',NULL,'reconstructed','c. 4500–2500 BCE',-4500,-2500,'to love, desire, care for',NULL),
(7,1,7,7,'UNKNOWN','unknown',NULL,'boundary','before c. 4500 BCE',NULL,NULL,'No securely reconstructed ancestor is currently known.','Evidence horizon.'),
(8,2,1,1,'etymology','etymology',NULL,'attested','late 14th c.–today',1350,NULL,'the history and origin of a word',NULL),
(9,2,8,2,'ethimologie','ethimologie',NULL,'attested','14th c.',1300,1400,'derivation of a word',NULL),
(10,2,9,3,'etymologia','etymologia',NULL,'attested','antiquity–medieval',-100,1400,'explanation of a word by its origin',NULL),
(11,2,10,4,'ἐτυμολογία','etymologia','etymología','attested','classical / Hellenistic',-400,200,'analysis of a word’s true sense',NULL),
(12,2,10,5,'ἔτυμος','etymos','étymos','attested','archaic Greek',-800,-400,'true, real, genuine',NULL),
(13,2,6,6,'*set-u-','set-u',NULL,'reconstructed','prehistoric',-4500,-2500,'true; real; in true order','Published reconstruction; morphology remains debated.'),
(14,2,7,7,'UNKNOWN','unknown',NULL,'boundary','prehistoric',NULL,NULL,'The trail ends in competing analyses.','Evidence horizon.'),
(15,3,1,1,'salary','salary',NULL,'attested','13th c.–today',1200,NULL,'fixed regular compensation',NULL),
(16,3,12,2,'salarie / salaire','salarie salaire',NULL,'attested','medieval',1100,1400,'compensation, payment',NULL),
(17,3,9,3,'salārium','salarium',NULL,'attested','Roman imperial period',-27,400,'official payment or allowance',NULL),
(18,3,9,4,'sāl','sal',NULL,'attested','antiquity',-700,500,'salt',NULL),
(19,3,6,5,'*séh₂l-','sehl',NULL,'reconstructed','c. 4500–2500 BCE',-4500,-2500,'salt',NULL),
(20,3,7,6,'UNKNOWN','unknown',NULL,'boundary','prehistoric',NULL,NULL,'No secure older ancestor.','Evidence horizon.'),
(21,4,1,1,'sincere','sincere',NULL,'attested','1530s–today',1530,NULL,'genuine; honest',NULL),
(22,4,11,2,'sincère','sincere',NULL,'attested','16th c.',1500,1600,'pure; genuine',NULL),
(23,4,9,3,'sincerus','sincerus',NULL,'attested','antiquity',-200,500,'whole, clean, pure, sound, genuine',NULL),
(24,4,7,4,'UNKNOWN','unknown',NULL,'boundary','unresolved Latin prehistory',NULL,NULL,'No proposed derivation has secured consensus.','The sine cera story is excluded.'),
(25,5,1,1,'clue','clue',NULL,'attested','17th c.–today',1600,NULL,'a fact that guides a solution',NULL),
(26,5,2,2,'clew','clew',NULL,'attested','c. 1300–1600s',1300,1700,'a ball of thread or yarn',NULL),
(27,5,3,3,'cliewen','cliewen',NULL,'attested','before 1150',700,1150,'ball, sphere, ball of thread',NULL),
(28,5,7,4,'UNKNOWN','unknown',NULL,'boundary','deeper Germanic prehistory',NULL,NULL,'Remote ancestry withheld pending adjudication.','Evidence horizon.');
--> statement-breakpoint
INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1,1,1,2,'inheritance','Spelling stabilized around love while the short stressed vowel continued into modern English.','Inherited noun and verb expanded into preference, devotion, and address.','OED · Merriam-Webster','established',NULL,NULL,'reviewed'),
(2,1,2,3,'inheritance','Final unstressed -u was lost; Old English intervocalic ⟨f⟩ had a voiced realization [v].','Religious, familial, erotic, and social senses continued.','Middle English Dictionary editors','established',NULL,NULL,'reviewed'),
(3,1,3,4,'inheritance','West Germanic medial /b/ developed a fricative realization represented by Old English ⟨f⟩.','The affective core remained stable.','Kroonen · comparative Germanic evidence','probable','Exact intermediate phonetic detail depends on reconstruction.',NULL,'reviewed'),
(4,1,4,5,'inheritance','A regular West Germanic continuation with final-vowel and inflectional reshaping.','The central sense remained stable.','Kroonen 2013','probable',NULL,NULL,'reviewed'),
(5,1,5,6,'inheritance','Germanic reflects the inherited root with regular treatment of PIE *bʰ and a different vowel grade.','Desire, approval, care, and affection overlap across daughter languages.','Pokorny · Mallory & Adams','probable','The breadth of the reconstructed gloss is debated.',NULL,'reviewed'),
(6,1,6,7,'knowledge_boundary','The comparative method has reached its evidentiary horizon.','Anything deeper would exceed the securely recoverable record.','Open research boundary','boundary',NULL,NULL,'reviewed'),
(7,2,8,9,'borrowing','English adapted the learned French form and later aligned spelling with the classical model.','The technical term broadened into the modern historical discipline.','OED · historical lexicography','established',NULL,NULL,'reviewed'),
(8,2,9,10,'borrowing','Old French transmitted the learned Latin form.','Scholarly explanation of a word’s origin continued.','French historical lexicography','established',NULL,NULL,'reviewed'),
(9,2,10,11,'borrowing','Latin borrowed Greek ἐτυμολογία.','A Greek technical concept entered Latin grammatical tradition.','Latin and Greek lexicography','established',NULL,NULL,'reviewed'),
(10,2,11,12,'derivation','The compound joins ἔτυμος “true, real” and -λογία “account, study.”','A word’s “true sense” becomes an object of analysis.','Ancient Greek lexicography','established',NULL,NULL,'reviewed'),
(11,2,12,13,'inheritance','The attested Greek adjective is analyzed through an earlier *setu-mo- formation; initial *s is lost in the proposed path.','Truth, actuality, and proper order form the reconstructed semantic field.','Beekes 2010 · Pinault · de Lamberterie','proposed','The exact morphology and wider family have competing analyses.',NULL,'reviewed'),
(12,2,13,14,'knowledge_boundary','No older form commands secure consensus.','The brand preserves this uncertainty instead of erasing it.','Open research boundary','boundary',NULL,NULL,'reviewed'),
(13,3,15,16,'borrowing','French stress and vowels were adapted into English.','The word narrowed toward fixed regular compensation.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(14,3,16,17,'inheritance','A regular Romance continuation of Latin salārium.','Official payment became general compensation.','Romance historical lexicography','established',NULL,NULL,'reviewed'),
(15,3,17,18,'derivation','salārium is morphologically related to salārius “pertaining to salt,” from sāl.','The precise bridge from salt to official compensation is not preserved.','Latin lexicography · Pliny','established','Morphology is secure; the historical motivation is not.',NULL,'reviewed'),
(16,3,18,19,'inheritance','Latin sāl continues the inherited salt word through Italic development.','Material salt; no wage sense is reconstructed at this stage.','Mallory & Adams','probable',NULL,NULL,'reviewed'),
(17,3,19,20,'knowledge_boundary','The trail ends beyond the reconstructable salt root.','The salt-to-pay semantic bridge also remains partly unknown.','Open research boundary','boundary',NULL,NULL,'reviewed'),
(18,4,21,22,'borrowing','English borrowed the learned French adjective with later vowel development.','Material purity shifted toward honesty of feeling and expression.','OED editors','established',NULL,NULL,'reviewed'),
(19,4,22,23,'borrowing','French borrowed Latin sincerus.','Physical intactness and moral genuineness continued together.','French and Latin historical lexicography','established',NULL,NULL,'reviewed'),
(20,4,23,24,'knowledge_boundary','sine cera cannot regularly yield sincerus and lacks documentary support.','“Without wax” is a later folk story, not an ancestor.','OED · Ernout & Meillet','boundary','Alternative Latin analyses remain proposed, not settled.',NULL,'reviewed'),
(21,5,25,26,'semantic_specialization','The spelling clue became standard for the figurative sense while clew remained literal.','A guiding thread became a fact that guides reasoning.','OED editors','established',NULL,NULL,'reviewed'),
(22,5,26,27,'inheritance','Old English vowel sequence and inflection simplified in Middle English.','A concrete ball or wound thread was retained.','Bosworth–Toller · historical lexicography','established',NULL,NULL,'reviewed'),
(23,5,27,28,'knowledge_boundary','Competing remote Germanic reconstructions are withheld.','The site stops before false certainty begins.','Editorial evidence boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint
INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1,1,'Word History','supports','Modern continuation and senses.'),(2,2,'love n.','supports','Middle English forms and senses.'),(2,3,'lufu','supports','Old English parent form.'),
(3,3,'lufu','supports','Attested Old English form.'),(3,4,'Germanic love family','supports','Comparative reconstruction.'),(4,4,'Germanic love family','supports','Proto-Germanic reconstruction.'),
(5,5,'Germanic volume','supports','Comparative Germanic evidence.'),(5,6,'Emotion 16.27','supports','PIE root and reflexes.'),(6,6,'Method statement','supports','Comparative-method boundary.'),
(7,7,'Word History','supports',NULL),(8,8,'Étymologie','supports',NULL),(9,9,'etymologia','supports',NULL),(10,10,'ἐτυμολογία','supports',NULL),
(11,11,'ἐτός / ἔτυμος dossier','supports','Records *set-u- analysis and competing discussion.'),(11,12,'s.v. ἔτυμος / ἐτεός','supports','Published reconstruction.'),(12,11,'dossier bibliography','supports','No older consensus represented.'),
(13,13,'Word History','supports',NULL),(14,13,'Word History','supports',NULL),(15,13,'Etymology note','supports','Explicitly rejects the soldiers-paid-in-salt story.'),(15,14,'salarium','supports','Latin lexical evidence.'),(16,15,'salt lexeme','supports',NULL),(17,13,'Etymology note','supports','Historical motivation remains uncertain.'),
(18,16,'sincere, adj.','supports',NULL),(19,17,'sincère','supports',NULL),(19,18,'sincerus','supports',NULL),(20,16,'Etymology section','supports','Rejects sine cera.'),
(21,19,'Word History','supports',NULL),(21,20,'Historical senses','supports','Documents figurative development.'),(22,21,'cliewen','supports',NULL),(23,20,'Etymology','supports','Remote proposals do not command consensus.');
--> statement-breakpoint
INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`) VALUES
(1,3,3,'Old English period',725,'Old English lexical record','lufu',NULL,'established'),
(2,2,2,'Middle English period',1200,'Middle English textual corpus','love n.',NULL,'established'),
(3,8,7,'late 14th century',1375,'English lexical record','Word History',NULL,'established'),
(4,11,10,'Ancient Greek',-300,'Greek lexical and grammatical tradition','ἐτυμολογία',NULL,'established'),
(5,17,14,'Roman imperial period',100,'Latin literary and epigraphic record','salarium',NULL,'established'),
(6,21,16,'1530s',1530,'English printed record','sincere, adj.',NULL,'established'),
(7,25,20,'late 16th to 17th century',1600,'English literary record','figurative senses',NULL,'established'),
(8,27,21,'Old English period',900,'Old English lexical record','cliewen',NULL,'established');
--> statement-breakpoint
INSERT INTO `relatives` (`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1,'Liebe','German','Germanic cousin',4),(1,'lief','Dutch','Germanic cousin',4),(1,'liufs','Gothic','early Germanic cousin',4),(1,'libet','Latin','distant PIE cognate',6),(1,'lubhyati','Sanskrit','distant PIE cognate',6),(1,'любо (ljubo)','Slavic','distant PIE cognate',6),
(2,'stoyg','Armenian','proposed cognate: “real”',11),(2,'ἐτεός','Ancient Greek','same Greek family',11),(2,'etymon','English','learned descendant',7),(2,'étymologie','French','learned descendant',8),
(3,'sel','French','salt cognate',15),(3,'sale','Italian','salt cognate',15),(3,'salt','English','distant PIE cognate',15),(3,'saline','English','Latin descendant',13),
(4,'sincerity','English','English derivative',16),(4,'sinceridad','Spanish','Latin descendant',18),(4,'sincerità','Italian','Latin descendant',18),
(5,'clew','English','literal surviving doublet',20),(5,'Klüngel','German','proposed Germanic relation',20),(5,'Ariadne’s thread','Greek myth','semantic catalyst, not ancestor',20);
--> statement-breakpoint
INSERT INTO `places` (`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(1,1,'Pontic–Caspian horizon','c. 4500–2500 BCE','A conventional homeland range for PIE; the word-form is reconstructed, not excavated.',47000000,39000000,'approximate'),
(1,2,'Northern Europe','c. 500 BCE','The Germanic branch develops *lubō.',55000000,10000000,'approximate'),
(1,3,'Anglo-Saxon England','before 725','lufu appears in the written record.',52500000,-1500000,'regional'),
(1,4,'Global English','1500–today','love spreads through print, empire, migration, and media.',NULL,NULL,'global'),
(2,1,'Indo-European prehistory','prehistoric','*set-u- is reconstructed, not written.',NULL,NULL,'approximate'),
(2,2,'Ancient Greece','1st millennium BCE','ἔτυμος and its family are attested.',39000000,22000000,'regional'),
(2,3,'Rome and medieval Europe','antiquity–14th c.','The learned compound travels through Latin and French.',46000000,8000000,'regional'),
(2,4,'Global scholarship','today','Etymology becomes a comparative historical discipline.',NULL,NULL,'global'),
(3,1,'Indo-European prehistory','prehistoric','A common word for salt is reconstructed.',NULL,NULL,'approximate'),
(3,2,'Roman world','imperial period','salārium denotes official payments.',42000000,12500000,'regional'),
(3,3,'Medieval France','12th–13th c.','The payment term enters French.',46500000,2500000,'regional'),
(3,4,'England','13th c.','salary enters English.',52500000,-1500000,'regional'),
(4,1,'Roman world','antiquity','sincerus is attested; its deeper formation is unclear.',42000000,12500000,'regional'),
(4,2,'France','16th c.','A learned French form develops.',46500000,2500000,'regional'),
(4,3,'England','1530s','The adjective enters English.',52500000,-1500000,'regional'),
(4,4,'Popular culture','modern era','The unsupported “without wax” story spreads widely.',NULL,NULL,'global'),
(5,1,'Anglo-Saxon England','before 1150','cliewen names a ball or wound thread.',52500000,-1500000,'regional'),
(5,2,'English literature','late 16th c.','The labyrinth-guiding metaphor emerges.',52000000,-1000000,'regional'),
(5,3,'Modern English','17th c.–today','clue specializes as evidence or guidance.',NULL,NULL,'global');
--> statement-breakpoint
INSERT INTO `disputes` (`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(1,'How wide was the PIE meaning?','“Love” is a convenient gloss, but daughter languages point to a field including desire, pleasure, approval, and care.','probable','Mallory & Adams; Pokorny data','open',NULL),
(1,'One word for one feeling?','Proto-Indo-European did not preserve a single lexeme matching the entire modern English category LOVE.','established','Comparative lexical evidence','resolved','The graph uses a semantic field rather than a one-word equivalence.'),
(2,'Is *set-u- certain?','No. It is a serious published reconstruction, but the exact morphology and wider family are analyzed differently by scholars.','proposed','Beekes 2010; de Lamberterie; Etygram dossier','open',NULL),
(2,'Did etymology originally mean modern science?','No. Ancient etymology pursued a word’s “true sense”; the modern comparative discipline developed much later.','established','History of linguistics','resolved',NULL),
(3,'Were soldiers paid in salt?','No ancient source supports the familiar claim. Pliny notes only an undefined connection between salt and military honors or payments.','established','Merriam-Webster etymology note; Pliny, Natural History 31.89','resolved','The viral payment-in-salt story is excluded.'),
(3,'What was the original salt connection?','Unknown. A salt allowance, purchase money, and euphemistic honorarium have all been proposed without decisive evidence.','speculative','Historical lexicography','open',NULL),
(4,'sine cera — “without wax”','Rejected. The phonology, morphology, and documentary record do not support it.','established','Oxford English Dictionary','resolved','Excluded as a folk etymology.'),
(4,'A secure alternative','Not yet. The Latin word is clear, but its formation has attracted competing proposals.','proposed','Latin etymological dictionaries','open',NULL),
(5,'Is clue borrowed from Greek?','No. Greek myth influenced the English word’s meaning; the word itself is inherited from Old English.','established','OED historical senses','resolved','Model as semantic influence, not lexical borrowing.');
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(3,1,'salary','Roman soldiers were not paid in salt.','The salt relationship is real. The viral payroll story is not.','A',98,'Ranked for widespread myth plus direct lexicographic rejection.'),
(4,2,'sincere','It never meant “without wax.”','Latin sincerus is real; sine cera is beautiful nonsense.','A',96,'Strong rejection and unusually persistent folk story.'),
(5,3,'clue','Evidence began as a ball of thread.','Ariadne’s thread turned a physical object into a guide through uncertainty.','A',93,'Well-attested semantic development.'),
(NULL,4,'disaster','A disaster was once a “bad star.”','Italian disastro joins a negative prefix to the word for star.','A−',91,'Full dossier queued for editorial review.'),
(NULL,5,'candidate','A candidate was “dressed in white.”','Roman office-seekers signaled purity and visibility with a whitened toga.','A−',88,'Full dossier queued for editorial review.'),
(NULL,6,'quarantine','Quarantine is literally a period of forty.','The public-health sense preserves Italian quaranta: forty.','A',86,'Full dossier queued for editorial review.');
