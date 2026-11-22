INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(6,'disaster','disaster','disaster','/dɪˈzæstər/','noun','A catastrophe whose name preserves an astrological model of misfortune: an unfavorable star.','Disaster is fossilized astrology. Its ancestry records a “bad star,” not a generic accident.','reviewed'),
(7,'candidate','candidate','candidate','/ˈkændɪdət/','noun','A person seeking selection or office; ultimately the Roman office-seeker dressed in a bright white toga.','A candidate was literally the white-clad person. The clothing is historical; its supposed moral purity is an interpretation.','reviewed'),
(8,'quarantine','quarantine','quarantine','/ˈkwɔːrənˌtiːn/','noun · verb','Isolation used to prevent contagion, named through a Romance expression for a period of forty.','Quarantine preserves forty—but the first documented Dubrovnik isolation law required thirty days, not forty.','reviewed');
--> statement-breakpoint
INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(13,'italian','Italian / early Italian','Indo-European','Romance',0,900,NULL,'Includes historically relevant Italian and Venetian forms; local variety is stated on the form when known.');
--> statement-breakpoint
INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(22,'mw-disaster','Disaster — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/disaster',NULL,'historical_dictionary'),
(23,'logeion-astrum','Logeion: astrum','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/astrum',NULL,'lexical_database'),
(24,'cld-candidatus','Corpus of Latin Dictionaries: candidatus','Berlin-Brandenburg Academy of Sciences and Humanities',NULL,'BBAW','https://cld.bbaw.de/lemma/lat/candidatus',NULL,'lexical_database'),
(25,'cnrtl-candidate','Étymologie: candidat / candidate','CNRTL Editors',NULL,'CNRTL','https://www.cnrtl.fr/etymologie/candidate//0',NULL,'historical_dictionary'),
(26,'logeion-candidus','Logeion: candidus','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/candidus',NULL,'lexical_database'),
(27,'logeion-candeo','Logeion: candeo','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/candeo',NULL,'lexical_database'),
(28,'cdc-quarantine','Quarantine and Isolation: Lessons Learned from SARS','Giancarlo Gensini, Magdi Yacoub & Andrea Conti',2004,'Emerging Infectious Diseases / CDC','https://wwwnc.cdc.gov/eid/article/19/2/et-1902_article',NULL,'journal_article'),
(29,'oxford-quarantine-history','The shifting meanings of “quarantine”','Bioscience editorial record',2021,'Oxford University Press','https://academic.oup.com/bioscience/article/71/9/899/6359320',NULL,'journal_article'),
(30,'mw-quarantine','Quarantine — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/quarantine',NULL,'historical_dictionary'),
(31,'logeion-quadraginta','Logeion: quadraginta','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/quadraginta',NULL,'lexical_database'),
(32,'logeion-quattuor','Logeion: quattuor','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/quattuor',NULL,'lexical_database'),
(33,'mw-candidate','Candidate — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/candidate',NULL,'historical_dictionary');
--> statement-breakpoint
INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`transliteration`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(29,6,1,1,'disaster','disaster',NULL,'attested','1567–today',1567,NULL,'a sudden calamitous event','Earliest English use dated by Merriam-Webster.'),
(30,6,11,2,'désastre','desastre',NULL,'attested','16th century',1500,1600,'misfortune; calamity','French transmission belongs to a wider French–Italian borrowing history.'),
(31,6,13,3,'disastro','disastro',NULL,'attested','early modern Italian',1400,1700,'calamity; unfavorable star','Morphologically dis- plus astro.'),
(32,6,13,4,'astro','astro',NULL,'attested','Italian',1200,NULL,'star; celestial body',NULL),
(33,6,9,5,'astrum','astrum',NULL,'attested','Latin antiquity',-200,500,'star; constellation',NULL),
(34,6,6,6,'*h₂ster-','hster',NULL,'reconstructed','c. 4500–2500 BCE',-4500,-2500,'star','The exact prehistory is reconstructed through the Indo-European star family.'),
(35,6,7,7,'UNKNOWN','unknown',NULL,'boundary','before secure reconstruction',NULL,NULL,'No securely reconstructed ancestor is represented beyond the star root.','Evidence horizon.'),
(36,7,1,1,'candidate','candidate',NULL,'attested','c. 1600–today',1600,NULL,'a person seeking office, selection, or appointment',NULL),
(37,7,9,2,'candidātus','candidatus',NULL,'attested','Roman antiquity',-100,500,'a person standing for office; the white-clad one','Office-seekers were identified by the toga candida.'),
(38,7,9,3,'candidus','candidus',NULL,'attested','Latin antiquity',-300,500,'bright white; shining; clear',NULL),
(39,7,9,4,'candēre','candere',NULL,'attested','Latin antiquity',-300,500,'to shine; glow; be white',NULL),
(40,7,6,5,'*kand-','kand',NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to shine; glow','A proposed deeper root; treatment and root shape vary across references.'),
(41,7,7,6,'UNKNOWN','unknown',NULL,'boundary','beyond the proposed root',NULL,NULL,'No deeper ancestor is presented as secure.','Evidence horizon.'),
(42,8,1,1,'quarantine','quarantine',NULL,'attested','1663–today',1663,NULL,'isolation imposed to prevent the spread of disease',NULL),
(43,8,11,2,'quarantaine','quarantaine',NULL,'attested','Middle / early modern French',1300,1700,'a period or group of forty; later health isolation','Part of the layered path by which the health term entered English.'),
(44,8,13,3,'quarantena','quarantena',NULL,'attested','Italian / Venetian',1400,1700,'a period of forty days; isolation period','The public-health term crystallized around a forty-day period.'),
(45,8,13,4,'quaranta','quaranta',NULL,'attested','Italian',1200,NULL,'forty',NULL),
(46,8,9,5,'quadrāgintā','quadraginta',NULL,'attested','Latin antiquity',-300,500,'forty',NULL),
(47,8,9,6,'quattuor','quattuor',NULL,'attested','Latin antiquity',-700,500,'four',NULL),
(48,8,6,7,'*kʷetwóres','kwetwores',NULL,'reconstructed','c. 4500–2500 BCE',-4500,-2500,'four',NULL),
(49,8,7,8,'UNKNOWN','unknown',NULL,'boundary','before secure reconstruction',NULL,NULL,'No deeper numeral ancestor is represented as secure.','Evidence horizon.');
--> statement-breakpoint
INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(24,6,29,30,'borrowing','English adapted the French form, including stress and final syllable.','The inherited calamity sense became the general modern category of disaster.','Merriam-Webster editors','established',NULL,'English first known use: 1567.','reviewed'),
(25,6,30,31,'borrowing','French désastre and Italian disastro belong to the same Romance formation and transmission history.','Astrologically unfavorable influence generalized to severe misfortune.','Romance historical lexicography','probable','The exact immediate donor sequence is represented cautiously.',NULL,'reviewed'),
(26,6,31,32,'derivation','Italian disastro combines the negative prefix dis- with astro “star.”','An unfavorable star or astral influence became calamity.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(27,6,32,33,'inheritance','Italian astro continues Latin astrum through regular Romance development.','The celestial-body meaning remains stable.','Latin and Romance lexicography','established',NULL,NULL,'reviewed'),
(28,6,33,34,'inheritance','Latin astrum belongs to the inherited Indo-European star family; details of formation and Greek contact require care.','The referent remains a star or celestial body.','Comparative Indo-European lexicography','probable','The graph does not collapse every ancient star-form into one undifferentiated route.',NULL,'reviewed'),
(29,6,34,35,'knowledge_boundary','Comparative reconstruction reaches its stated horizon.','Anything deeper would exceed the reviewed evidence.','Open research boundary','boundary',NULL,NULL,'reviewed'),
(30,7,36,37,'borrowing','English borrowed the learned Latin office term with regular adaptation of ending and stress.','An office-seeker remained an office-seeker, later broadening to any person under selection.','Merriam-Webster · CNRTL editors','established',NULL,'English evidence begins around 1600.','reviewed'),
(31,7,37,38,'derivation','Latin candidātus is built from candidus and identifies the person clothed in shining white.','The white-clad Roman office-seeker became the lexical category for a person seeking office.','Corpus of Latin Dictionaries editors','established',NULL,NULL,'reviewed'),
(32,7,38,39,'derivation','candidus belongs to the candēre family of shining and whiteness.','Physical brightness and whiteness extended to clarity and unblemished quality.','Latin lexicography','established',NULL,NULL,'reviewed'),
(33,7,39,40,'proposed_inheritance','The Latin shining family has been compared with a reconstructed *kand- root.','Shining and glowing remain the proposed semantic core.','Indo-European etymological tradition','proposed','Published analyses differ on the deeper formation and cognate set.',NULL,'reviewed'),
(34,7,40,41,'knowledge_boundary','No older form is promoted beyond proposal status.','The trail stops where comparative agreement stops.','Open research boundary','boundary',NULL,NULL,'reviewed'),
(35,8,42,43,'borrowing','English quarantine reflects a French and Italian Romance transmission with adapted spelling and stress.','A defined period of isolation became the general act or state of protective isolation.','Merriam-Webster editors','probable','References weight French and Italian stages differently.',NULL,'reviewed'),
(36,8,43,44,'borrowing','French quarantaine and Italian quarantena are parallel Romance formations around forty.','A group or period of forty specialized as a disease-control interval.','French and Italian historical lexicography','probable','The health sense developed within Mediterranean practice, not in a single clean handoff.',NULL,'reviewed'),
(37,8,44,45,'derivation','quarantena is transparently built on the Italian numeral quaranta.','Forty becomes a conventional duration, then names the isolation itself.','CDC · Oxford historical accounts','established',NULL,'The forty-day practice followed an earlier thirty-day regime.','reviewed'),
(38,8,45,46,'inheritance','Italian quaranta regularly continues Latin quadrāgintā.','The numeral meaning remains forty.','Romance and Latin lexicography','established',NULL,NULL,'reviewed'),
(39,8,46,47,'derivation','Latin quadrāgintā is the inherited decimal formation based on four.','Four is multiplied into the decade numeral forty.','Latin lexicography','established',NULL,NULL,'reviewed'),
(40,8,47,48,'inheritance','Latin quattuor continues the Proto-Indo-European four numeral through Italic sound change.','The numeral meaning remains four.','Comparative Indo-European lexicography','probable',NULL,NULL,'reviewed'),
(41,8,48,49,'knowledge_boundary','The reviewed numeral lineage reaches its stated reconstruction boundary.','Anything deeper is outside the present secure graph.','Open research boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint
INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(24,22,'Word History and First Known Use','supports','English date and French–Italian transmission.'),
(25,22,'Word History','supports','Romance transmission.'),
(26,22,'Etymology','supports','Italian dis- plus astro analysis.'),
(27,23,'astrum','supports','Latin star lexeme and Romance base.'),
(28,23,'astrum','supports','Latin lexical evidence.'),(28,15,'star lexeme','supports','Comparative Indo-European context.'),(29,15,'methodological horizon','supports',NULL),
(30,33,'Word History','supports','English borrowing and date.'),(30,25,'Étymologie','supports','Latin source form.'),
(31,24,'candidatus','supports','Office-seeker identified by glittering white clothing.'),(31,25,'Étymologie','supports','Toga candida explanation.'),
(32,26,'candidus','supports','Bright-white adjective.'),(32,27,'candeo','supports','Shining verbal family.'),
(33,27,'candeo','supports','Latin base; deeper reconstruction remains proposed.'),(34,27,'etymological notes','supports','No deeper consensus promoted.'),
(35,30,'Word History','supports','Romance transmission and English sense.'),
(36,28,'historical overview','supports','Italian forty-day origin.'),(36,29,'quarantine history','supports','Mediterranean practice and terminology.'),
(37,28,'History of quarantine','supports','quaranta and forty-day practice.'),(37,29,'Dubrovnik legislation','supports','Thirty-day rule preceded forty-day quarantine.'),
(38,31,'quadraginta','supports','Latin forty.'),(39,31,'quadraginta','supports','Decimal formation.'),(39,32,'quattuor','supports','Latin four.'),
(40,32,'quattuor','supports','Latin numeral evidence.'),(40,15,'numeral system','supports','Comparative Indo-European reconstruction.'),(41,15,'comparative horizon','supports',NULL);
--> statement-breakpoint
INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`) VALUES
(9,29,22,'1567',1567,'English lexical record','First Known Use',NULL,'established'),
(10,36,33,'c. 1600',1600,'English lexical record','Word History',NULL,'established'),
(11,37,24,'Roman antiquity',-50,'Latin political and lexical record','candidatus',NULL,'established'),
(12,42,30,'1663',1663,'English lexical record','First Known Use',NULL,'established');
--> statement-breakpoint
INSERT INTO `relatives` (`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(6,'astral','English','learned descendant of Latin astrum',23),(6,'astre','French','Romance star relative',23),(6,'astro','Italian','direct morphological base',22),(6,'aster','Greek / learned science','wider ancient star family',15),
(7,'candid','English','learned descendant of candidus',26),(7,'candor','English','learned descendant of candidus',26),(7,'incandescent','English','learned member of the candēre family',27),(7,'toga candida','Latin cultural phrase','historical clothing behind the office term',24),
(8,'quarante','French','numeral relative: forty',30),(8,'cuarenta','Spanish','Romance numeral cousin',31),(8,'quattro','Italian','Romance descendant of Latin four',32),(8,'four','English','distant Indo-European numeral cognate',15);
--> statement-breakpoint
INSERT INTO `places` (`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(6,1,'Roman and Mediterranean worlds','antiquity','Latin astrum names a star; astrological interpretation later supplies the semantic frame.',41900000,12500000,'regional'),
(6,2,'Italy','late medieval–early modern','Italian disastro packages an unfavorable star into a calamity word.',41900000,12500000,'regional'),
(6,3,'France','16th century','The Romance calamity form circulates as désastre.',46500000,2500000,'regional'),
(6,4,'England and global English','1567–today','disaster enters English and loses any required belief in astrological causation.',52500000,-1500000,'global'),
(7,1,'Roman Republic','1st century BCE','An office-seeker in the toga candida is candidātus—the white-clad one.',41900000,12500000,'regional'),
(7,2,'Learned Europe','medieval–early modern','The Latin political term remains available to scholarly and legal vocabularies.',48000000,10000000,'regional'),
(7,3,'England','c. 1600','candidate enters English political vocabulary.',52500000,-1500000,'regional'),
(7,4,'Global institutional language','today','The word expands beyond elections to jobs, awards, tests, and scientific possibilities.',NULL,NULL,'global'),
(8,1,'Dubrovnik / Ragusa','1377','The first documented civic isolation law required thirty days: a trentino, not yet forty.',42650000,18100000,'regional'),
(8,2,'Adriatic and Italian port systems','15th century','The isolation interval was extended to forty days and the forty-based name took hold.',44000000,12300000,'regional'),
(8,3,'France and England','17th century','Romance forms carried the public-health term into English.',49000000,2000000,'regional'),
(8,4,'Global public health','today','quarantine now names many durations and controls, even when they are not forty days.',NULL,NULL,'global');
--> statement-breakpoint
INSERT INTO `disputes` (`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(6,'Is the “bad star” composition real?','Yes. Italian disastro is analyzed as a negative prefix plus astro “star,” reflecting an astrological frame for misfortune.','established','Merriam-Webster, Disaster — Word History','resolved','Represented as morphology and semantic history, not as modern causal science.'),
(6,'Exactly which Romance language handed the word to English?','French and Italian stages are both central in reference accounts; a single linear donor route can overstate the surviving evidence.','probable','Merriam-Webster and Romance historical lexicography','open',NULL),
(7,'Did candidates claim moral purity?','The whitened toga is historical and lexical. Reading it as a guaranteed moral-purity claim goes beyond what the word formation alone proves.','probable','Corpus of Latin Dictionaries; CNRTL','open',NULL),
(7,'Is *kand- a secure endpoint?','No. The Latin candēre family is attested, but its deeper reconstructed root and cognate set remain analysis-dependent.','proposed','Latin and Indo-European etymological dictionaries','open',NULL),
(8,'Was the first quarantine forty days?','No. Dubrovnik’s 1377 law required thirty days; the interval was later extended to forty, which supplied the enduring name.','established','Oxford BioScience; CDC historical accounts','resolved','The timeline explicitly separates the first isolation law from the forty-based word.'),
(8,'Why forty?','Religious symbolism, inherited medical theory, logistics, and observation have all been proposed; no single motivation is treated as proven here.','proposed','CDC and historical scholarship','open',NULL);
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `entry_id`=6, `editorial_note`='Reviewed dossier: Romance star morphology is secure; exact donor chain is graded probable.' WHERE `word`='disaster';
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `entry_id`=7, `editorial_note`='Reviewed dossier: white clothing is secure; moral-purity symbolism remains interpretive.' WHERE `word`='candidate';
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `entry_id`=8, `editorial_note`='Reviewed dossier: forty-based word is secure; the earlier thirty-day law is preserved separately.' WHERE `word`='quarantine';
