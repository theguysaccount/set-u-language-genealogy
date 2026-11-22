INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(84,'mw-nice','Nice — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/nice',NULL,'historical_dictionary'),
(85,'mw-nice-meanings','What Does Nice Mean, Anyway?','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/wordplay/nice-multiple-meanings',NULL,'editorial_reference'),
(86,'mw-science','Science — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/science',NULL,'historical_dictionary'),
(87,'ahd-ie-skei','Indo-European Root skei-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(88,'mw-decimate','Decimate — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/decimate',NULL,'historical_dictionary'),
(89,'mw-decimate-usage','The Original Definition of Decimate','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/grammar/the-original-definition-of-decimate',NULL,'editorial_reference'),
(90,'mw-decimal','Decimal — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/decimal',NULL,'historical_dictionary'),
(91,'mw-december','December — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/December',NULL,'historical_dictionary'),
(92,'ahd-ie-dekm','Indo-European Root dekm̥','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(27,'nice','nice','nice','/naɪs/','adjective','Pleasant, kind, or precise today; a fourteenth-century borrowing whose early senses included foolish, simple, wanton, and fastidious.','Nice began in English near the opposite of nice: foolish and wanton, from Latin nescius “ignorant”—the negative knowing family that also produced science.','reviewed'),
(28,'science','science','science','/ˈsaɪəns/','noun','Systematic knowledge today; inherited through French from Latin scientia, a much broader word for knowledge, awareness, and understanding.','Science did not begin as laboratory method. It meant knowledge—and its uncertain deepest comparison may connect knowing with cutting apart or discerning.','reviewed'),
(29,'decimate','decimate','decimate','/ˈdɛsəˌmeɪt/','verb','To destroy or reduce drastically; borrowed from a Latin verb built on “tenth” and first used in English for killing every tenth member of a group.','Decimate really did begin with one in ten—but its broader destructive meaning is not a modern mistake; English developed it within decades.','reviewed'),
(30,'decimal','decimal','decimal','/ˈdɛsəməl/','adjective · noun','Based on ten or tenths; borrowed through French and Medieval Latin from the Latin family of decem, “ten.”','A decimal is not named for the dot. The word means “of tenths” and belongs to the same ten-family as decimate and December.','reviewed'),
(31,'december','December','december','/dɪˈsɛmbər/','noun','The twelfth month in the modern calendar; its inherited Latin name literally identifies it as the tenth month.','December is the twelfth month with a name meaning tenth because it preserves a Roman calendar that began the year in March.','reviewed');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(176,27,1,1,'nice','nice','pleasant-kind',NULL,'/naɪs/','attested','19th century–today',1800,2026,'pleasant, agreeable, kind; also precise or discriminating','The familiar positive senses become dominant only after centuries of semantic movement.'),
(177,27,2,2,'nice','nice','foolish-wanton',NULL,NULL,'attested','14th–16th centuries',1300,1600,'foolish, simple, wanton; later fastidious or precise','Merriam-Webster reports multiple senses already present by the end of the fourteenth century.'),
(178,27,12,3,'nice','nice','foolish-simple',NULL,NULL,'attested','Anglo-French period',1100,1400,'silly, simple','The English word is borrowed through Anglo-French.'),
(179,27,9,4,'nescius','nescius','ignorant-adjective',NULL,NULL,'attested','Latin antiquity',-200,500,'ignorant; not knowing','Latin adjective derived within the negative knowing family.'),
(180,27,9,5,'nescīre','nescire','not-know',NULL,NULL,'attested','Latin antiquity',-200,500,'not to know; to be unfamiliar with','A negative formation containing the verb scīre “to know.”'),
(181,27,9,6,'scīre','scire','know-discern',NULL,NULL,'attested','Latin antiquity',-200,500,'to know','The deeper comparison with cutting or separating is plausible but explicitly uncertain.'),
(182,27,6,7,'*skei-','skei','cut-separate-discern',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'cut, split; proposed source of a discern > know development','American Heritage publishes this root; Merriam-Webster records competing morphological analyses and says the semantic comparison is questionable.'),
(183,27,7,8,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the proposed *skei- analysis',NULL,NULL,'No securely reviewed ancestor beyond this disputed comparison','The trail stops rather than treating the prehistory of Latin scīre as settled.'),

(184,28,1,1,'science','science','systematic-knowledge',NULL,'/ˈsaɪəns/','attested','19th century–today',1800,2026,'systematic knowledge, especially knowledge tested through scientific method','The modern natural-science center is narrower than the word’s earlier knowledge senses.'),
(185,28,2,2,'science / cience','science-cience','general-knowledge',NULL,NULL,'attested','14th–15th centuries',1300,1500,'knowledge, learning, the ability to know, a branch of knowledge','Merriam-Webster reports the first English use in the older general-knowledge sense.'),
(186,28,12,3,'science / cience','science-cience','general-knowledge',NULL,NULL,'attested','Anglo-French period',1100,1400,'knowledge, learning','The French forms transmit the Latin learned noun.'),
(187,28,9,4,'scientia','scientia','knowledge-awareness',NULL,NULL,'attested','Latin antiquity',-200,500,'knowledge, awareness, understanding, branch of knowledge','A noun derived from the stem of sciens.'),
(188,28,9,5,'sciens','sciens','knowing-participle',NULL,NULL,'attested','Latin antiquity',-200,500,'knowing','Present participle of sciō, scīre.'),
(189,28,9,6,'scīre','scire','know-discern',NULL,NULL,'attested','Latin antiquity',-200,500,'to know','Canonical Latin node shared with the nice dossier.'),
(190,28,6,7,'*skei-','skei','cut-separate-discern',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'cut, split; proposed source of a discern > know development','Canonical reconstruction shared with the nice dossier.'),
(191,28,7,8,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the proposed *skei- analysis',NULL,NULL,'No securely reviewed ancestor beyond this disputed comparison','The comparative route remains explicitly proposed.'),

(192,29,1,1,'decimate','decimate','destroy-or-reduce',NULL,'/ˈdɛsəˌmeɪt/','attested','1660–today',1660,2026,'kill every tenth member historically; later destroy or reduce drastically','The broader English sense appears by the seventeenth century and is established usage.'),
(193,29,9,2,'decimāre','decimare','take-a-tenth',NULL,NULL,'attested','Latin antiquity',-200,500,'take a tenth; select every tenth person, including for punishment','Latin verb formed from the ordinal/tenth family.'),
(194,29,9,3,'decimus','decimus','tenth-ordinal',NULL,NULL,'attested','Latin antiquity',-200,500,'tenth','Ordinal derivative of decem.'),
(195,29,9,4,'decem','decem','ten-cardinal',NULL,NULL,'attested','Latin antiquity',-200,500,'ten','Latin continuation of the Indo-European numeral.'),
(196,29,6,5,'*dekm̥','dekm','ten-cardinal',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'ten','American Heritage identifies Latin decem, English ten, December, decimal, and decimate in this family.'),
(197,29,7,6,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before *dekm̥',NULL,NULL,'No deeper numeral ancestor asserted','The reviewed numeral lineage stops at the published Indo-European root.'),

(198,30,1,1,'decimal','decimal','base-ten',NULL,'/ˈdɛsəməl/','attested','1608–today',1608,2026,'based on ten or tenths; a base-ten number','The adjective predates the noun in Merriam-Webster’s source-reported chronology.'),
(199,30,11,2,'décimal','decimal','of-tenths',NULL,NULL,'attested','Early Modern French',1500,1700,'of tenths; decimal','French transmission of the learned Latin adjective.'),
(200,30,14,3,'decimālis','decimalis','of-a-tenth',NULL,NULL,'attested','Medieval Latin',500,1500,'of a tenth part; of a tithe','The direct source of French décimal.'),
(201,30,9,4,'decima','decima','tenth-part-tithe',NULL,NULL,'attested','Latin antiquity',-200,500,'a tenth part; tithe','Feminine substantivized form in the tenth family.'),
(202,30,9,5,'decem','decem','ten-cardinal',NULL,NULL,'attested','Latin antiquity',-200,500,'ten','Canonical Latin numeral shared across the ten-family dossiers.'),
(203,30,6,6,'*dekm̥','dekm','ten-cardinal',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'ten','Canonical Indo-European numeral shared across the ten-family dossiers.'),
(204,30,7,7,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before *dekm̥',NULL,NULL,'No deeper numeral ancestor asserted','The reviewed numeral lineage stops here.'),

(205,31,1,1,'December','december','twelfth-month',NULL,'/dɪˈsɛmbər/','attested','before the 12th century–today',700,2026,'the twelfth month of the Gregorian calendar','This English headword node spans the source-reported Old English period through current use; the calendar position changed, but the inherited name did not.'),
(206,31,2,2,'Decembre','decembre','calendar-month',NULL,NULL,'attested','Middle English',1100,1500,'the last month of the year','Merriam-Webster allows Old English or Anglo-French transmission from Latin.'),
(207,31,9,3,'December','december','tenth-month',NULL,NULL,'attested','Latin antiquity',-200,500,'the tenth month','Named when the Roman year was reckoned from March.'),
(208,31,9,4,'decem','decem','ten-cardinal',NULL,NULL,'attested','Latin antiquity',-200,500,'ten','The lexical base of the month name.'),
(209,31,6,5,'*dekm̥','dekm','ten-cardinal',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'ten','Canonical Indo-European numeral shared with decimate and decimal.'),
(210,31,7,6,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before *dekm̥',NULL,NULL,'No deeper numeral ancestor asserted','The reviewed numeral lineage stops here.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(150,27,176,177,'semantic_continuation','The inherited spelling and /aɪ/ pronunciation remain stable as the modern sense profile settles.','Foolish, wanton, and fastidious senses move through precise and discriminating toward pleasant, agreeable, and kind.','Merriam-Webster Editors','established','The semantic history is multiply attested; no claim is made that one instantaneous shift produced the modern sense.','Positive pleasant/agreeable senses become prominent in the nineteenth century.','reviewed'),
(151,27,177,178,'borrowing','Anglo-French nice enters Middle English with spelling preserved and pronunciation adapted to English.','Silly or simple expands into foolish, wanton, coy, fastidious, and precise senses.','Merriam-Webster Editors','established',NULL,'Borrowed in the fourteenth century.','reviewed'),
(152,27,178,179,'borrowing','Latin nescius passes through Romance without preserving the full Latin ending.','Ignorance becomes foolishness or simplicity in the French adjective.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(153,27,179,180,'derivation','The adjective nescius is built within the nescīre “not know” family.','Not knowing is lexicalized as ignorant.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(154,27,180,181,'negative_compound','Latin nescīre contains the negative element ne- plus scīre “to know.”','Knowing is negated: “know” becomes “not know, be unfamiliar with.”','Merriam-Webster Editors','established','The internal Latin negative relationship is secure even though the deeper prehistory of scīre is disputed.',NULL,'reviewed'),
(155,27,181,182,'proposed_derivation','Latin scīre has been compared with an Indo-European cutting/separating base; the exact formation and even the semantic bridge remain disputed.','A proposed development moves from cutting or separating to distinguishing and then knowing.','Merriam-Webster Editors · de Vaan · Ernout and Meillet · American Heritage','proposed','Merriam-Webster records competing morphological analyses and calls the semantic progression questionable; Ernout and Meillet call the comparison uncertain.','The comparison belongs to prehistory, not a directly attested change.','reviewed'),
(156,27,182,183,'knowledge_boundary','No older form is promoted beyond the disputed *skei- comparison.','The graph stops where the reviewed comparative analysis stops.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(157,28,184,185,'semantic_specialization','The spelling stabilizes as the pronunciation develops into modern /ˈsaɪəns/.','General knowledge and learning narrow in prominent modern use toward systematic and especially natural knowledge.','Merriam-Webster Editors','established','Older general senses remain available; specialization is not total replacement.','The natural-science center becomes dominant in the modern period.','reviewed'),
(158,28,185,186,'borrowing','Anglo-French science/cience is adopted into Middle English learned vocabulary.','The broad knowledge and learning senses remain central.','Merriam-Webster Editors','established',NULL,'First-known English use is reported in the fourteenth century.','reviewed'),
(159,28,186,187,'borrowing','Latin scientia passes into Anglo-French with regular Romance phonological development.','Knowledge, awareness, and a branch of learning remain the core meanings.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(160,28,187,188,'derivation','The noun scientia is formed from the participial stem scient- / sciens.','A knowing person/state supplies an abstract noun for knowledge.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(161,28,188,189,'inflectional_derivation','Sciens is the present participle of sciō, scīre.','The activity of knowing is expressed as “knowing.”','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(162,28,189,190,'proposed_derivation','Latin scīre has been compared with an Indo-European cutting/separating base; the exact formation and even the semantic bridge remain disputed.','A proposed development moves from cutting or separating to distinguishing and then knowing.','Merriam-Webster Editors · de Vaan · Ernout and Meillet · American Heritage','proposed','Merriam-Webster records competing morphological analyses and calls the semantic progression questionable; Ernout and Meillet call the comparison uncertain.','The comparison belongs to prehistory, not a directly attested change.','reviewed'),
(163,28,190,191,'knowledge_boundary','No older form is promoted beyond the disputed *skei- comparison.','The graph stops where the reviewed comparative analysis stops.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(164,29,192,193,'borrowing','English decimate is formed on the Latin past-participial stem decimāt-.','The exact selection or taxation of a tenth broadens within English to drastic reduction or destruction.','Merriam-Webster Editors','established','The broader sense is established English usage, not an etymological error.','First-known English use is reported in 1660; broader use follows within decades.','reviewed'),
(165,29,193,194,'derivation','Latin decimāre is derived from the tenth/ordinal family.','“Tenth” becomes the action “take or select a tenth.”','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(166,29,194,195,'ordinal_derivation','Latin decimus is the ordinal formation corresponding to decem.','The cardinal “ten” becomes ordinal “tenth.”','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(167,29,195,196,'inherited','Latin decem regularly continues the centum-language form of Indo-European *dekm̥.','The numeral meaning “ten” remains stable.','American Heritage Indo-European Roots','established','The Latin and Indo-European numeral relationship is securely comparative.','Proto-Indo-European prehistory to attested Latin.','reviewed'),
(168,29,196,197,'knowledge_boundary','No deeper numeral form is asserted beyond *dekm̥.','The reviewed trail ends at the published Indo-European root.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(169,30,198,199,'borrowing','French décimal is adapted into English as decimal.','The “of tenths/base ten” meaning remains transparent.','Merriam-Webster Editors','established',NULL,'English adjective reported from 1608; noun from 1623.','reviewed'),
(170,30,199,200,'borrowing','Medieval Latin decimālis passes into French décimal with Romance sound development.','The learned mathematical and proportional sense remains tied to tenths.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(171,30,200,201,'derivation','Medieval Latin decimālis is formed from Latin decima with an adjectival suffix.','A tenth part or tithe becomes “pertaining to tenths.”','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(172,30,201,202,'derivation','Latin decima is a substantivized feminine form in the decimus/decem family.','The cardinal “ten” supplies a named tenth part or tithe.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(173,30,202,203,'inherited','Latin decem regularly continues the centum-language form of Indo-European *dekm̥.','The numeral meaning “ten” remains stable.','American Heritage Indo-European Roots','established','The Latin and Indo-European numeral relationship is securely comparative.','Proto-Indo-European prehistory to attested Latin.','reviewed'),
(174,30,203,204,'knowledge_boundary','No deeper numeral form is asserted beyond *dekm̥.','The reviewed trail ends at the published Indo-European root.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(175,31,205,206,'orthographic_continuation','Middle English Decembre is respelled December under renewed Latin influence and standardized capitalization.','The month identity remains while its calendar position is twelfth.','Merriam-Webster Editors','established',NULL,'Modern spelling follows the medieval transmission.','reviewed'),
(176,31,206,207,'borrowing_via_competing_routes','The Latin month name reaches Middle English through Old English or Anglo-French transmission; the exact route is not resolved by the reviewed source.','The named tenth month is retained as the last/twelfth month after calendar reordering.','Merriam-Webster Editors','probable','Merriam-Webster explicitly gives Old English or Anglo-French as alternatives rather than selecting one.','Middle English period.','reviewed'),
(177,31,207,208,'compound_derivation','Latin December is formed on decem “ten” as a month name.','The numeral ten identifies the tenth month in the early Roman year.','Merriam-Webster Editors','established',NULL,'The name predates its later position as month twelve.','reviewed'),
(178,31,208,209,'inherited','Latin decem regularly continues the centum-language form of Indo-European *dekm̥.','The numeral meaning “ten” remains stable.','American Heritage Indo-European Roots','established','The Latin and Indo-European numeral relationship is securely comparative.','Proto-Indo-European prehistory to attested Latin.','reviewed'),
(179,31,209,210,'knowledge_boundary','No deeper numeral form is asserted beyond *dekm̥.','The reviewed trail ends at the published Indo-European root.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(150,84,'Word History; senses and etymology','supports','Records modern and obsolete senses and the Latin/French transmission.'),(150,85,'Semantic history of nice','supports','Explains the long polysemous path from ignorant/foolish toward modern positive senses.'),
(151,84,'Etymology; First Known Use','supports','Reports the fourteenth-century English borrowing from Anglo-French.'),
(152,84,'Etymology','supports','Connects Anglo-French nice with Latin nescius.'),
(153,84,'Etymology and Kids Word Origin','supports','Connects nescius with nescīre, not to know.'),
(154,84,'Kids Etymology','supports','Explicitly analyzes nescīre as ne- “not” plus scīre “to know.”'),
(155,86,'Etymology notes on the prehistory of scīre','supports','Records the *skeh₂/*skh₂ and negative-compound analyses while emphasizing uncertainty.'),(155,87,'Root skei-, section 2','supports','Publishes the cutting/separating root and the proposed discern > know bridge.'),
(156,86,'Etymology notes','context','The source’s explicit uncertainty defines the evidence boundary.'),
(157,86,'Definitions and etymology','supports','Contrasts earlier general knowledge with the modern systematic/natural-science center.'),
(158,86,'Etymology; First Known Use','supports','Reports Anglo-French transmission and a fourteenth-century first use.'),
(159,86,'Etymology','supports','Connects Anglo-French science/cience with Latin scientia.'),
(160,86,'Etymology','supports','Derives scientia from scient-, sciens.'),
(161,86,'Etymology','supports','Identifies sciens as the present participle of sciō, scīre.'),
(162,86,'Etymology notes on the prehistory of scīre','supports','Records competing analyses and semantic doubt.'),(162,87,'Root skei-, section 2','supports','Publishes science and nice in the same proposed discern/know family.'),
(163,86,'Etymology notes','context','The uncertainty defines the point where the reviewed trail stops.'),
(164,88,'Did You Know; Word History','supports','Records exact Roman/English tenth-member sense, first use, and early broadening.'),(164,89,'Regarding the Incorrect Use of Decimate','supports','Explains why the broader English sense is established rather than erroneous.'),
(165,88,'Etymology','supports','Derives decimāre from decimus.'),
(166,88,'Etymology','supports','Derives decimus from decem.'),
(167,92,'Root dekm̥, section 1.3','supports','Lists decimate, decimal, and December under Latin decem from the Indo-European numeral.'),
(168,92,'Root dekm̥','context','The reviewed root entry is the published stopping point.'),
(169,90,'Etymology; First Known Use','supports','Reports French borrowing and the 1608 adjective / 1623 noun chronology.'),
(170,90,'Etymology','supports','Connects French décimal with Medieval Latin decimālis.'),
(171,90,'Etymology','supports','Connects decimālis with Latin decima.'),
(172,90,'Kids Etymology','supports','Connects the tenth-part family with decem “ten.”'),
(173,92,'Root dekm̥, section 1.3','supports','Lists decimal under Latin decem from the Indo-European numeral.'),
(174,92,'Root dekm̥','context','The root entry defines the current evidence horizon.'),
(175,91,'Word Origin','supports','Explains the Middle English spelling and later restoration toward Latin.'),
(176,91,'Etymology','supports','Explicitly gives Old English or Anglo-French as alternative routes from Latin.'),
(177,91,'Word Origin','supports','Explains December as Latin “tenth month” from decem and the March-starting Roman year.'),
(178,92,'Root dekm̥, section 1.3','supports','Lists December under Latin decem from the Indo-European numeral.'),
(179,92,'Root dekm̥','context','The root entry defines the current evidence horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(40,177,84,'14th century',1350,'English lexicographic first-use report for nice','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use century; no underlying manuscript witness was directly inspected.'),
(41,185,86,'14th century',1350,'English lexicographic first-use report for science','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use century; no underlying manuscript witness was directly inspected.'),
(42,192,88,'1660',1660,'English lexicographic first-use record for decimate','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use year; no underlying printed witness was directly inspected.'),
(43,198,90,'1608',1608,'English lexicographic first-use record for decimal as an adjective','First Known Use — adjective',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use year; no underlying printed witness was directly inspected.'),
(44,205,91,'before the 12th century',1050,'English lexicographic first-use report for December','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported Old English period; 1050 is only a sorting midpoint and no manuscript witness was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(107,27,'science','English','cousin through Latin scīre and proposed *skei-',87),(108,27,'nescience','English','learned relative preserving “ignorance”',84),(109,27,'omniscient','English','knowing-family relative',87),(110,27,'conscience','English','knowing-family relative',87),
(111,28,'nice','English','negative-knowing cousin through Latin nescīre',87),(112,28,'conscious','English','knowing-family relative',86),(113,28,'prescient','English','knowing-family relative',87),(114,28,'nescience','English','negative-knowing relative',87),
(115,29,'decimal','English','Latin ten-family cousin',92),(116,29,'December','English','Latin ten-family cousin',92),(117,29,'dime','English','Latin tenth-family cousin',92),(118,29,'ten','English','Germanic cognate from the same Indo-European numeral',92),
(119,30,'decimate','English','Latin ten-family cousin',92),(120,30,'December','English','Latin ten-family cousin',92),(121,30,'dime','English','Latin tenth-family cousin',90),(122,30,'ten','English','Germanic cognate from the same Indo-European numeral',92),
(123,31,'decimal','English','Latin ten-family cousin',91),(124,31,'decimate','English','Latin ten-family cousin',92),(125,31,'dime','English','Latin tenth-family cousin',91),(126,31,'ten','English','Germanic cognate from the same Indo-European numeral',92);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(104,27,1,'Reconstructed Indo-European speech communities','Proto-Indo-European prehistory','The proposed cutting/separating comparison is reconstructed and disputed, not a point on a map.',NULL,NULL,'uncertain'),
(105,27,2,'Latin-speaking Roman world','Latin antiquity','The knowing family produces scīre, nescīre, and nescius.',NULL,NULL,'broad'),
(106,27,3,'Anglo-French England','14th century','The adjective enters Middle English with foolish and wanton senses.',NULL,NULL,'broad'),
(107,27,4,'Global English','19th century–today','Pleasant, kind, and agreeable become dominant while precision senses survive.',NULL,NULL,'global'),
(108,28,1,'Reconstructed Indo-European speech communities','Proto-Indo-European prehistory','The proposed discern-from-cutting comparison remains an uncertain reconstruction.',NULL,NULL,'uncertain'),
(109,28,2,'Latin-speaking Roman world','Latin antiquity','Scientia names knowledge, awareness, and branches of learning.',NULL,NULL,'broad'),
(110,28,3,'Anglo-French and medieval England','14th century','The learned noun enters English as general knowledge or learning.',NULL,NULL,'broad'),
(111,28,4,'Global research cultures','19th century–today','Systematic and natural knowledge become the dominant modern center.',NULL,NULL,'global'),
(112,29,1,'Reconstructed Indo-European speech communities','Proto-Indo-European prehistory','The numeral *dekm̥ is reconstructed by comparison.',NULL,NULL,'uncertain'),
(113,29,2,'Roman world','Latin antiquity','Decimāre names taking or selecting a tenth, including military punishment.',NULL,NULL,'broad'),
(114,29,3,'England','1660–17th century','English first records the tenth-member sense and quickly broadens it.',NULL,NULL,'approximate'),
(115,29,4,'Global English','17th century–today','Drastic reduction and destruction are established alongside the historical sense.',NULL,NULL,'global'),
(116,30,1,'Reconstructed Indo-European speech communities','Proto-Indo-European prehistory','The shared numeral root is reconstructed comparative evidence.',NULL,NULL,'uncertain'),
(117,30,2,'Latin-speaking and medieval European scholarly worlds','Antiquity–medieval period','Tenth-part and tithe formations produce decimālis.',NULL,NULL,'broad'),
(118,30,3,'France and England','16th–17th centuries','The learned adjective passes through French and enters mathematical English.',NULL,NULL,'broad'),
(119,30,4,'Global mathematical practice','17th century–today','Decimal becomes a central base-ten adjective and noun.',NULL,NULL,'global'),
(120,31,1,'Reconstructed Indo-European speech communities','Proto-Indo-European prehistory','The numeral ancestor is reconstructed rather than directly recorded.',NULL,NULL,'uncertain'),
(121,31,2,'Roman world','Latin antiquity','December is named as the tenth month of a March-starting year.',NULL,NULL,'broad'),
(122,31,3,'Medieval England and northern France','before the 12th–15th centuries','Old English or Anglo-French transmission carries the Latin month name into Middle English.',NULL,NULL,'broad'),
(123,31,4,'Global Gregorian-calendar use','Modern period','The inherited tenth-month name labels month twelve.',NULL,NULL,'global');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(57,27,'Did nice originally mean pleasant?','No. Merriam-Webster reports early foolish, wanton, silly, and simple senses; pleasant or agreeable becomes prominent much later.','established','Merriam-Webster’s dictionary and semantic-history essay preserve the sequence without pretending it was one clean jump.','resolved','The graph separates the medieval and modern sense profiles.'),
(58,27,'Is nice securely related to a root meaning cut?','The Latin knowing family is secure, but the further comparison of scīre with a cutting/separating root is only proposed.','proposed','Merriam-Webster records rival formations and calls the semantic progression questionable; Ernout and Meillet call the comparison uncertain, while American Heritage publishes *skei-.','open',NULL),
(59,28,'Did science always mean modern natural science?','No. Its earliest English and Latin histories center on knowledge, learning, awareness, and branches of knowledge.','established','Merriam-Webster reports a fourteenth-century knowledge sense and the broader Latin scientia range.','resolved','The semantic timeline shows later specialization without erasing surviving broad senses.'),
(60,28,'Does Latin scīre securely descend from *skei- “cut, split”?','No single analysis is secure. A discern-from-separating bridge is plausible, but the formation and semantic development remain disputed.','proposed','Merriam-Webster summarizes the Lexikon der indogermanischen Verben, de Vaan, and Ernout-Meillet disagreements; American Heritage publishes the comparison.','open',NULL),
(61,29,'Must decimate mean only kill one in ten?','No. That was its earliest English historical sense, but drastic reduction and destruction have been established since the seventeenth century.','established','Merriam-Webster dates the exact sense to 1660 and documents broadening within decades.','resolved','The graph preserves both the numerical origin and legitimate semantic change.'),
(62,29,'Is the Roman tenth-member story invented?','No. The Latin and historical punishment sense is real; the error is using etymology to ban later English meanings.','established','Merriam-Webster distinguishes the genuine Roman/Latin history from prescriptive folklore about current usage.','resolved','The contrarian truth retains both halves rather than choosing a pedantic myth.'),
(63,30,'Is decimal named after the decimal point?','No. The adjective and noun come from the Latin tenth/ten family; the visible point is part of later notation, not the word’s ancestor.','established','Merriam-Webster derives decimal through French and Medieval Latin from decima and decem.','resolved','The graph terminates in the numeral family, not punctuation.'),
(64,30,'Did the decimal noun and adjective enter together?','Merriam-Webster reports the adjective in 1608 and the noun in 1623. These are lexicographic first-use reports, not inspected objects.','established','Merriam-Webster supplies separate first-known-use dates for the two parts of speech.','resolved','The headword witness records the earlier adjective date and discloses its evidence limit.'),
(65,31,'Why does the twelfth month mean tenth?','The Latin name belongs to an early Roman year beginning in March, when December occupied the tenth position. Calendar reform changed the position while the name persisted.','established','Merriam-Webster explicitly explains the March-starting calendar and literal tenth-month name.','resolved','The contradiction is historical layering, not a mistranslation.'),
(66,31,'Did English receive December through Old English or French?','The reviewed source allows either Old English or Anglo-French transmission from Latin and does not choose between them.','probable','Merriam-Webster’s etymology states “from Old English or Anglo-French, both from Latin.”','open',NULL);
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`-97;
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(18,27,1,'nice','Nice began as foolish and ignorant.','English borrowed a foolish/wanton adjective from Anglo-French and Latin nescius “ignorant.” Pleasant and kind are late outcomes of a long semantic migration.','A',100,'The Latin and medieval path is established; the deeper *skei- comparison is separately graded proposed.'),
(19,31,2,'December','The twelfth month literally means tenth.','The name preserves a Roman year that began in March. The calendar position moved; the inherited Latin name did not.','A',99,'The calendar explanation and Latin decem relationship are directly supported by Merriam-Webster and American Heritage.'),
(20,29,3,'decimate','The one-in-ten origin is real—and the usage scold is still wrong.','English began with the tenth-member punishment sense, then broadened the word within decades. Etymology records change; it does not veto it.','A',98,'Both the exact historical sense and the legitimacy of the broader English sense are documented by Merriam-Webster.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(14,27,28,'NICE IS THE NEGATIVE SHADOW OF SCIENCE','Nice comes through Latin nescius and nescīre, “not knowing”; science comes through scientia and scīre, “knowing.” Their secure paths meet at Latin scīre, while the deeper *skei- comparison remains proposed.',100,'A','reviewed'),
(15,29,31,'THE PUNISHMENT AND THE MONTH BOTH COUNT TO TEN','Decimate reaches Latin decimāre and decimus; December reaches Latin December. Both converge at decem “ten” and Indo-European *dekm̥.',99,'A','reviewed'),
(16,30,31,'THE DECIMAL POINT AND THE WINTER MONTH SHARE TEN','Decimal comes from tenths; December was the tenth month. Their paths converge at Latin decem and reconstructed *dekm̥, not at modern notation or winter.',97,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
	SELECT f.*, CASE
		WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
		ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
	END AS canonical_key
	FROM forms f WHERE f.entry_id BETWEEN 27 AND 31
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
WHERE f.entry_id BETWEEN 27 AND 31;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 27 AND 31;
--> statement-breakpoint
INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 27 AND 31;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 27 AND 31;
