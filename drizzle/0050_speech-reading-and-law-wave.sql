-- Promote four cited *leg- satellites into complete dossiers.
-- Dialogue and prologue reuse the Greek logos → lego → *leg- chain, legible
-- reuses Latin legere → *leg-, legislation branches from lex into the separately
-- cited Latin carrying family so its compound does not collapse into one parent.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(83,'dialogue','dialogue','dialogue','/ˈdaɪəˌlɒɡ/','noun · verb','Conversation, represented speech, or an exchange of ideas; inherited through medieval French and Latin from a Greek speaking-family.','Dialogue does not etymologically mean speech between exactly two people. Greek dia- means through or across; the two-person restriction is a later false parsing.','reviewed'),
(84,'prologue','prologue','prologue','/ˈproʊˌlɒɡ/','noun','An introductory speech, section, or event; inherited through medieval French and Latin from Greek prologos.','A prologue is structurally speech-before: Greek pro- “before” plus logos “speech or discourse.” The -logue element does not mean a field of study.','reviewed'),
(85,'legible','legible','legible','/ˈlɛdʒəbəl/','adjective','Capable of being read or deciphered; from Late Latin legibilis and Latin legere “to read.”','Legible is a reading word whose deeper family also means gather and select. Its history runs through Latin legere, not the English body-part word leg.','reviewed'),
(86,'legislation','legislation','legislation','/ˌlɛdʒɪˈsleɪʃən/','noun','The making of laws or laws collectively; from French and Late Latin legislatio, a law-proposing or law-bearing formation.','Legislation is older in English than legislate. The noun preserves Latin legis latio—law-bearing or law-proposing—and the English verb was later back-formed from this family.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(201,'mw-dialogue','Dialogue — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/dialogue',NULL,'historical_dictionary'),
(202,'etymonline-dialogue','Dialogue — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/dialogue',NULL,'historical_dictionary'),
(203,'mw-prologue','Prologue — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/prologue',NULL,'historical_dictionary'),
(204,'etymonline-prologue','Prologue — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/prologue',NULL,'historical_dictionary'),
(205,'mw-legible','Legible — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/legible',NULL,'historical_dictionary'),
(206,'ahd-legible','American Heritage Dictionary: legible','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=legible',NULL,'historical_dictionary'),
(207,'etymonline-legible','Legible — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/legible',NULL,'historical_dictionary'),
(208,'mw-legislation','Legislation — Definition and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/legislation',NULL,'historical_dictionary'),
(209,'mw-legislator','Legislator — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/legislator',NULL,'historical_dictionary'),
(210,'etymonline-legislation','Legislation — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/legislation',NULL,'historical_dictionary'),
(211,'cnrtl-legislation','CNRTL / TLFi: législation — Étymologie et histoire','Centre national de ressources textuelles et lexicales Editors',NULL,'CNRTL / ATILF','https://www.cnrtl.fr/etymologie/l%C3%A9gislation',NULL,'historical_dictionary'),
(212,'ahd-ie-bher','American Heritage Indo-European Roots: bher-1','Calvert Watkins · American Heritage Dictionary Editors',2011,'Houghton Mifflin Harcourt','https://www.ahdictionary.com/word/indoeurop.html',NULL,'research_database'),
(213,'logeion-fero','Logeion: ferō / ferre','Classics Department Editors',NULL,'University of Chicago','https://logeion.uchicago.edu/fero',NULL,'lexical_database');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(490,83,1,1,'dialogue','dialogue','conversation-exchange',NULL,'/ˈdaɪəˌlɒɡ/','attested','13th century–today',1200,NULL,'conversation, represented speech, or exchange of ideas','Merriam-Webster dates the noun to the thirteenth century; Etymonline gives circa 1200.'),
(491,83,2,2,'dialoge','dialoge','represented-conversation',NULL,NULL,'attested','Middle English, circa 1200 onward',1200,1500,'a literary work representing conversation',NULL),
(492,83,12,3,'dialogue','dialogue','conversation',NULL,NULL,'attested','Anglo-French period',1100,1400,'conversation or a work in conversational form',NULL),
(493,83,9,4,'dialogus','dialogus','conversation',NULL,NULL,'attested','Latin antiquity and Late Latin',-200,600,'dialogue or conversational work',NULL),
(494,83,10,5,'διάλογος','dialogos','conversation-discourse','dialogos',NULL,'attested','Ancient Greek',-700,600,'conversation, dialogue, or discourse',NULL),
(495,83,10,6,'διαλέγεσθαι','dialegesthai','converse-through','dialegesthai',NULL,'attested','Ancient Greek',-700,600,'to converse or discuss; a formation with dia- and legein',NULL),
(496,83,10,7,'λέγω','lego','default','légō',NULL,'attested','Ancient Greek',-700,600,'to gather, count, recount, say, or speak','Reuses the canonical Greek verb node.'),
(497,83,6,8,'*leǵ-','leg','default',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to collect or gather, with descendants involving speech','The competing *sleǵ- reconstruction remains published.'),
(498,83,7,9,'UNKNOWN','unknown','dialogue-deep-boundary',NULL,NULL,'boundary','before the disputed gather reconstruction',NULL,NULL,'No deeper ancestor is promoted beyond the live *leǵ- / *sleǵ- dispute.',NULL),

(499,84,1,1,'prologue','prologue','introductory-speech',NULL,'/ˈproʊˌlɒɡ/','attested','14th century–today',1300,NULL,'an introductory speech, section, or preceding event',NULL),
(500,84,2,2,'prolog','prolog','introductory-speech',NULL,NULL,'attested','Middle English, 14th century',1300,1500,'an introduction or prefatory speech',NULL),
(501,84,12,3,'prologue','prologue','introductory-speech',NULL,NULL,'attested','Anglo-French period',1100,1400,'a prologue or prefatory discourse',NULL),
(502,84,9,4,'prologus','prologus','play-preface',NULL,NULL,'attested','Latin antiquity and Late Latin',-200,600,'preface to a play or introductory discourse',NULL),
(503,84,10,5,'πρόλογος','prologos','speech-before','prologos',NULL,'attested','Ancient Greek',-700,600,'speech before; portion of a play before the chorus',NULL),
(504,84,10,6,'λόγος','logos','default','lógos',NULL,'attested','Ancient Greek',-700,600,'word, speech, account, reckoning, or reason','Reuses the canonical Greek logos node.'),
(505,84,10,7,'λέγω','lego','default','légō',NULL,'attested','Ancient Greek',-700,600,'to gather, count, recount, say, or speak','Reuses the canonical Greek verb node.'),
(506,84,6,8,'*leǵ-','leg','default',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to collect or gather, with descendants involving speech','The competing *sleǵ- reconstruction remains published.'),
(507,84,7,9,'UNKNOWN','unknown','prologue-deep-boundary',NULL,NULL,'boundary','before the disputed gather reconstruction',NULL,NULL,'No deeper ancestor is promoted beyond the live *leǵ- / *sleǵ- dispute.',NULL),

(508,85,1,1,'legible','legible','readable-discernible',NULL,'/ˈlɛdʒəbəl/','attested','15th century–today',1400,NULL,'capable of being read or deciphered; later also discernible or understandable',NULL),
(509,85,2,2,'legible','legible','readable',NULL,NULL,'attested','Middle English, late 14th–15th century',1350,1500,'capable of being read',NULL),
(510,85,9,3,'legibilis','legibilis','able-to-be-read',NULL,NULL,'attested','Late Latin',200,700,'that can be read',NULL),
(511,85,9,4,'legere','legere','default',NULL,NULL,'attested','Latin antiquity',-700,500,'to gather, select, choose, or read','Reuses the canonical Latin reading verb.'),
(512,85,6,5,'*leǵ-','leg','default',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to collect or gather','The competing *sleǵ- reconstruction remains published.'),
(513,85,7,6,'UNKNOWN','unknown','legible-deep-boundary',NULL,NULL,'boundary','before the disputed gather reconstruction',NULL,NULL,'No deeper ancestor is promoted beyond the live *leǵ- / *sleǵ- dispute.',NULL),

(514,86,1,1,'legislation','legislation','law-making-and-enactments',NULL,'/ˌlɛdʒɪˈsleɪʃən/','attested','1606–today',1606,NULL,'the making of laws, laws collectively, or business before a legislative body','Merriam-Webster reports 1606; Etymonline gives the 1650s.'),
(515,86,11,2,'législation','legislation','law-making-and-laws',NULL,NULL,'attested','French, 14th century onward',1300,NULL,'law-making authority, action, or body of laws',NULL),
(516,86,14,3,'lēgislātiō, lēgislātiōnem','legislatio legislationem','law-bearing-compound',NULL,NULL,'attested','Medieval and Late Latin',500,1500,'proposal or bearing of a law; later a body of laws','The compound contains legis, genitive of lēx, and lātio, bearing or proposing.'),
(517,86,9,4,'lēx','lex','default',NULL,NULL,'attested','Latin antiquity',-700,500,'law, statute, rule, or formal proposal','Reuses the canonical Latin law node; lēgis is its genitive.'),
(518,86,6,5,'*leǵ-','leg','default',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'traditional gather or collect root','The relation of Latin lēx to this root and the root shape remain disputed.'),
(519,86,7,6,'UNKNOWN','unknown','legislation-deep-boundary',NULL,NULL,'boundary','before the disputed law-and-gather comparison',NULL,NULL,'No deeper ancestor is promoted beyond the disputed comparison of lēx with *leǵ- / *sleǵ-.',NULL);
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(408,83,490,491,'historical_continuation','Middle English dialoge develops the modern -ue spelling and later English pronunciation.','The literary conversation sense broadens to ordinary exchange, dramatic speech, and institutional discussion.','Merriam-Webster · Etymonline editors','established',NULL,'English evidence begins around 1200 or in the thirteenth century.','reviewed'),
(409,83,491,492,'borrowing','Middle English adopts Anglo-French dialogue / dialoge with English spelling and pronunciation.','A represented conversation remains the central meaning.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(410,83,492,493,'borrowing','Anglo-French dialogue continues Latin dialogus through Romance transmission.','Conversation and the literary dialogue remain linked.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(411,83,493,494,'borrowing','Latin dialogus borrows and phonologically adapts Greek dialogos.','The Greek conversation and discourse term becomes a Latin literary form.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(412,83,494,495,'derivation','Greek dialogos belongs to the verbal family of dialegesthai “to converse.”','The act of speaking through or across becomes conversation and a represented exchange.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(413,83,495,496,'prefixed_derivation','Greek dialegesthai contains dia- “through, across, between” plus legein / legesthai “to speak.”','Speaking across or through supplies conversation; the prefix does not encode the numeral two.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(414,83,496,497,'inheritance','Greek λέγω is traditionally derived from PIE *leǵ-; some scholarship argues that an initial *s should be reconstructed.','The daughter evidence spans collecting and speaking, but the exact semantic path remains reconstructed.','UT Austin LRC · IE-CoR · Kaczyńska','proposed','The competing *sleǵ- analysis prevents an unqualified grade.',NULL,'reviewed'),
(415,83,497,498,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops rather than laundering a contested root into certainty.','Open research boundary','boundary',NULL,NULL,'reviewed'),

(416,84,499,500,'historical_continuation','Middle English prolog develops the modern -ue spelling while retaining the initial pro- and final log sequence.','The prefatory speech becomes any introductory section and later any preceding event.','Merriam-Webster · Etymonline editors','established',NULL,'English evidence begins in the fourteenth century.','reviewed'),
(417,84,500,501,'borrowing','Middle English prolog adopts Anglo-French prologue with English spelling adaptation.','The prefatory discourse meaning remains stable.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(418,84,501,502,'borrowing','Anglo-French prologue continues Latin prologus through Romance transmission.','The introductory speech or preface remains central.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(419,84,502,503,'borrowing','Latin prologus borrows and adapts Greek prologos.','The Greek before-speech becomes a Latin theatrical and literary preface.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(420,84,503,504,'compound_component','Greek prologos combines pro- “before” with logos “speech or discourse”; this path follows the logos component.','A speech positioned before a performance becomes the prologue.','Merriam-Webster · Etymonline editors','established','The separate pro- component is preserved as a second canonical parent.',NULL,'reviewed'),
(421,84,504,505,'derivation','λόγος is a verbal noun in the λέγω family, with an o-grade formation represented in traditional analysis.','Gathering, counting, recounting, speech, account, and reason form a historically layered semantic network.','Logeion · comparative Greek lexicography','probable','The semantic sequence should not be reduced to a single just-so story.',NULL,'reviewed'),
(422,84,505,506,'inheritance','Greek λέγω is traditionally derived from PIE *leǵ-; some scholarship argues that an initial *s should be reconstructed.','The daughter evidence spans collecting and speaking, but the exact semantic path remains reconstructed.','UT Austin LRC · IE-CoR · Kaczyńska','proposed','The competing *sleǵ- analysis prevents an unqualified grade.',NULL,'reviewed'),
(423,84,506,507,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops rather than laundering a contested root into certainty.','Open research boundary','boundary',NULL,NULL,'reviewed'),

(424,85,508,509,'historical_continuation','The Middle English learned form stabilizes as modern legible with later English stress and vowel development.','Literal readability remains primary while discernibility and understandability become figurative extensions.','Merriam-Webster · American Heritage editors','established',NULL,'The sources place English use in the late fourteenth or fifteenth century.','reviewed'),
(425,85,509,510,'borrowing','Middle English legible borrows Late Latin legibilis with English phonological adaptation.','The ability to be read remains the inherited meaning.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(426,85,510,511,'derivation','Late Latin legibilis is formed from Latin legere “to read” with an ability suffix.','The activity of reading becomes the quality of being readable.','Merriam-Webster · American Heritage · Etymonline editors','established',NULL,NULL,'reviewed'),
(427,85,511,512,'inheritance','Latin legere is traditionally assigned to the *leǵ- family; *sleǵ- remains a published alternative.','Gathering and selecting extend into reading.','Indo-European lexicography','probable','Root shape is disputed.',NULL,'reviewed'),
(428,85,512,513,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops at the live reconstruction dispute.','Open research boundary','boundary',NULL,NULL,'reviewed'),

(429,86,514,515,'borrowing','English legislation borrows French législation with learned English stress and pronunciation.','The making of laws and the resulting body of laws remain central while legislative-business senses develop.','Etymonline · CNRTL editors','probable','Merriam-Webster reports an earlier English horizon than Etymonline; the borrowing itself is secure.','Merriam-Webster reports 1606; Etymonline gives the 1650s.','reviewed'),
(430,86,515,516,'borrowing','French législation borrows Medieval or Late Latin legislatio with regular Romance adaptation.','Proposal or bearing of a law develops into law-making authority and a body of laws.','CNRTL · Etymonline editors','established',NULL,'CNRTL attests Medieval Latin legislatio around 1238 and French législation in 1372–74.','reviewed'),
(431,86,516,517,'compound_component','Latin legislatio contains legis, the genitive of lēx “law”; this path follows the law component while lātio is modeled separately.','Law is the object being proposed, borne forward, or enacted.','Merriam-Webster · CNRTL · Etymonline editors','established','The lātio carrying/proposing component is a second canonical parent.',NULL,'reviewed'),
(432,86,517,518,'proposed_inheritance','Latin lēx has traditionally been connected with the gather / collect family; published work argues for a root with initial *s.','A collection or selection of rules is a proposed semantic bridge, not an uncontested fact.','Kaczyńska · Indo-European lexicography','proposed','Both the root shape and exact semantic derivation remain disputed.',NULL,'reviewed'),
(433,86,518,519,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops at the live reconstruction dispute.','Open research boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(408,201,'Word History and First Known Use','supports','Documents the Middle English form, modern continuation, and thirteenth-century horizon.'),
(408,202,'Headword chronology and semantic development','supports','Dates the noun to circa 1200 and the conversational extension by circa 1400.'),
(409,201,'Etymology: Middle English from Anglo-French','supports','Documents the medieval French transmission.'),
(410,201,'Etymology: Anglo-French from Latin dialogus','supports','Documents the French-to-Latin route.'),
(410,202,'Headword etymology: Old French and Latin','context','Independently preserves French and direct-Latin paths without forcing one exclusive route.'),
(411,201,'Etymology: Latin dialogus from Greek dialogos','supports','Documents the Greek borrowing.'),
(411,202,'Headword etymology: Latin dialogus from Greek dialogos','supports','Independently documents the Greek borrowing.'),
(412,201,'Etymology: dialogos from dialegesthai','supports','Connects the Greek noun to the converse verb.'),
(412,202,'Headword etymology: dialogos related to dialogesthai','supports','Independently documents the verbal family.'),
(413,201,'Did You Know? and Etymology: dia- plus legein','supports','Identifies dia- as through or across and the speaking component.'),
(413,202,'Headword etymology and usage note','supports','Identifies dia as across or between and explicitly rejects the two-person folk parsing.'),
(414,37,'Root *leg-','supports','Publishes the traditional reconstruction and Greek reflexes.'),
(414,38,'Argument for *sleg-','challenges','Publishes the competing initial-s reconstruction.'),
(415,38,'Reconstruction limits','supports','The live root-shape dispute warrants an explicit boundary.'),

(416,203,'Word History and First Known Use','supports','Documents the Middle English form and fourteenth-century horizon.'),
(416,204,'Headword chronology and semantic development','supports','Dates English prologe to the early fourteenth century and the figurative extension to the 1590s.'),
(417,203,'Etymology: Middle English from Anglo-French','supports','Documents the medieval French transmission.'),
(418,203,'Etymology: Anglo-French from Latin prologus','supports','Documents the French-to-Latin route.'),
(418,204,'Headword etymology: Old French and Latin','supports','Independently documents the Romance and Latin route.'),
(419,203,'Etymology: Latin prologus from Greek prologos','supports','Documents the Greek borrowing.'),
(419,204,'Headword etymology: Latin from Greek prologos','supports','Independently documents the Greek borrowing.'),
(420,203,'Etymology and Did You Know?: pro- plus legein','supports','Explains the Greek before-speaking formation.'),
(420,204,'Headword etymology: pro plus logos','supports','Independently analyzes prologos as speech beforehand.'),
(420,35,'λόγος lexical entry','context','Documents the semantic range of the logos component.'),
(421,35,'λόγος','supports','Identifies logos as a verbal noun in the lego family.'),
(421,36,'λέγω','supports','Documents the Greek verbal semantic field.'),
(422,37,'Root *leg-','supports','Publishes the traditional reconstruction and Greek reflexes.'),
(422,38,'Argument for *sleg-','challenges','Publishes the competing initial-s reconstruction.'),
(423,38,'Reconstruction limits','supports','The live root-shape dispute warrants an explicit boundary.'),

(424,205,'Word History and First Known Use','supports','Documents Middle English ancestry, modern senses, and a fifteenth-century horizon.'),
(424,206,'Headword definitions and etymology','supports','Independently documents literal readability and figurative discernibility.'),
(424,207,'Headword chronology','context','Places the English adjective in the late fourteenth century.'),
(425,205,'Etymology: Middle English from Late Latin legibilis','supports','Documents the learned borrowing.'),
(425,206,'Headword etymology: Middle English from Late Latin legibilis','supports','Independently documents the borrowing.'),
(426,205,'Etymology: legibilis from legere','supports','Documents the Latin reading formation.'),
(426,206,'Headword etymology: legibilis from legere','supports','Independently documents the same formation.'),
(426,207,'Headword etymology: legibilis “that can be read”','context','Supplies the ability meaning and deeper root comparison.'),
(427,49,'legō / legere lexical entry','supports','Documents the Latin gather, choose, and read semantic field.'),
(427,37,'Root *leg-','supports','Publishes the traditional reconstruction and Latin reflex.'),
(427,38,'Argument for *sleg-','challenges','Publishes the competing initial-s reconstruction.'),
(428,38,'Reconstruction limits','supports','The live root-shape dispute warrants an explicit boundary.'),

(429,210,'Headword etymology: from French législation','supports','Documents French transmission and the 1650s English report.'),
(429,211,'French and English chronology','context','Documents the fourteenth-century French word and the pre-1655 English horizon reported by NED.'),
(429,208,'First Known Use','challenges','Reports a substantially earlier English first-known-use year of 1606.'),
(430,210,'Headword etymology: French from Late Latin legislatio','supports','Documents the French-to-Latin route.'),
(430,211,'Étymologie et histoire','supports','Documents Latin legislatio and fourteenth-century French législation.'),
(431,209,'Word History: legis plus lator from ferre / latus','supports','Documents law as the first component and proposing or carrying as the second.'),
(431,210,'Headword etymology: legis latio','supports','Analyzes the formation as law-bearing or law-proposing.'),
(431,211,'Étymologie: legis plus latio','supports','Independently documents the compound analysis.'),
(431,48,'lex lexical entry','context','Documents Latin lēx and lēgis as the law component.'),
(432,37,'Root *leg-','supports','Publishes the traditional reconstruction and Latin lēx reflex.'),
(432,38,'Latin lex analysis and *sleg- argument','challenges','Publishes the uncertain comparison and competing root shape.'),
(433,38,'Reconstruction limits','supports','The disputed law-and-gather comparison warrants an explicit boundary.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(118,490,201,'13th century',NULL,'Merriam-Webster source-reported English record','First Known Use, noun','English dialogue in the literary-conversation sense.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A secondary lexicographic century report, not a directly inspected medieval object or proof of coinage.'),
(119,499,203,'14th century',NULL,'Merriam-Webster source-reported English record','First Known Use','English prologue in the introductory literary sense.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A secondary lexicographic century report, not a directly inspected medieval object or proof of coinage.'),
(120,508,205,'15th century',NULL,'Merriam-Webster source-reported English record','First Known Use','English legible in the readable sense.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A secondary lexicographic century report, not a directly inspected early printed or manuscript object.'),
(121,514,208,'1606',1606,'Merriam-Webster source-reported English record','First Known Use','English legislation in the law-making sense.','probable','lexicographic_first_use',NULL,NULL,NULL,0,'A secondary lexicographic year report. Etymonline gives the 1650s, so SET-U preserves the chronology dispute and does not claim coinage.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(265,83,'logic','English','Greek logos-family cousin',201),
(266,83,'dialectic','English','parallel Greek dia- and legein descendant',201),
(267,83,'dialog','English','modern spelling variant',201),
(268,84,'dialogue','English','Greek speaking-family cousin through logos and legein',203),
(269,84,'epilogue','English','opposite-positioned logos compound',204),
(270,84,'logic','English','Greek logos-family cousin',35),
(271,85,'lecture','English','Latin reading-family cousin through legere',205),
(272,85,'legend','English','Latin reading-family cousin through legendus and legere',206),
(273,85,'illegible','English','negative derivative of legible',207),
(274,86,'legal','English','law-family cousin through Latin lex',209),
(275,86,'legislator','English','parallel law-bearing formation',209),
(276,86,'legislate','English','later back-formation from legislation or legislator',210);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(309,83,1,'Indo-European linguistic horizon','disputed prehistoric gather-and-speaking family','Comparative evidence connects Greek legein with a reconstructed gather root while the *leǵ- / *sleǵ- shape remains disputed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','A linguistic reconstruction does not establish one archaeological point or exact date.'),
(310,83,2,'Ancient Greek speech communities','Ancient Greek record','Dialogos, dialegesthai, dia-, and legein create the through-speaking and conversation family.',37980000,23720000,'broad',-700,600,'range','The interval locates the reviewed Ancient Greek lexical horizon rather than one first utterance.'),
(311,83,3,'Roman literary world','Latin antiquity and Late Latin','Latin dialogus carries the Greek conversational and literary form into Latin.',41900000,12500000,'broad',-200,600,'range','The interval locates the Latin transmission horizon, not a single borrowing event.'),
(312,83,4,'Medieval England','circa 1200–15th century','Anglo-French and Middle English forms transmit the literary dialogue into English.',52200000,-1500000,'regional',1200,1500,'range','The start follows Etymonline’s circa-1200 report; it is not proof of coinage.'),
(313,83,5,'Global English','13th century–today','Dialogue expands from represented conversation to ordinary, institutional, computational, and artistic exchange.',NULL,NULL,'global',1200,NULL,'open','The open interval begins with the secondary lexicographic English horizon and does not claim uniform global adoption.'),

(314,84,1,'Indo-European linguistic horizon','disputed prehistoric gather-and-speaking family','Comparative evidence connects Greek logos and legein with a reconstructed gather root while the *leǵ- / *sleǵ- shape remains disputed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','A linguistic reconstruction does not establish one archaeological point or exact date.'),
(315,84,2,'Ancient Greek theatre','Ancient Greek record','Prologos combines a before element with logos for the opening speech before the chorus.',37980000,23720000,'broad',-700,600,'range','The broad interval locates the reviewed Greek theatrical and lexical horizon rather than one first performance.'),
(316,84,3,'Roman literary world','Latin antiquity and Late Latin','Latin prologus carries the Greek theatrical preface into Latin literature.',41900000,12500000,'broad',-200,600,'range','The interval locates the Latin transmission horizon, not a single borrowing event.'),
(317,84,4,'Medieval England','14th–15th centuries','Anglo-French prologue enters Middle English as prolog.',52200000,-1500000,'regional',1300,1500,'range','The interval encodes the lexicographic century report rather than an exact first object.'),
(318,84,5,'Global English','14th century–today','Prologue broadens from an opening speech to introductory sections and preceding events.',NULL,NULL,'global',1300,NULL,'open','The open interval begins with the reported English horizon and does not claim uniform global adoption.'),

(319,85,1,'Indo-European linguistic horizon','disputed prehistoric gather-and-reading family','Comparative evidence connects Latin legere with a reconstructed gather root while the *leǵ- / *sleǵ- shape remains disputed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','A linguistic reconstruction does not establish one archaeological point or exact date.'),
(320,85,2,'Roman and Late Latin world','Latin antiquity–late antiquity','Latin legere “read” supplies Late Latin legibilis “able to be read.”',41900000,12500000,'broad',-700,700,'range','The interval locates the reviewed Latin lexical stages rather than one datable derivational event.'),
(321,85,3,'England','late 14th–15th centuries','The learned Latin adjective enters Middle English.',52200000,-1500000,'regional',1350,1499,'range','The interval preserves the late-fourteenth versus fifteenth-century lexicographic reports.'),
(322,85,4,'Global English','15th century–today','Literal readability remains central while discernibility and understandability become figurative extensions.',NULL,NULL,'global',1400,NULL,'open','The open interval begins conservatively at the fifteenth-century report.'),

(323,86,1,'Indo-European linguistic horizons','disputed prehistoric law and carrying roots','The compound ultimately touches a disputed law-and-gather comparison and a separately reconstructed carrying root.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Two linguistic reconstructions do not identify one homeland, date, or archaeological event.'),
(324,86,2,'Medieval Latin Europe','Medieval Latin formation','Legislatio combines the law component with lātio, a bearing or proposing formation from ferre.',NULL,NULL,'broad',500,1500,'range','The broad interval includes the circa-1238 Medieval Latin attestation reported by CNRTL without inventing one point of formation.'),
(325,86,3,'France','1372–1374 French record','French législation is recorded for a body of laws and later law-making authority.',46600000,2200000,'regional',1372,1374,'range','CNRTL reports the 1372–74 record; the coordinate locates France, not one manuscript repository.'),
(326,86,4,'England','1606 English report','Merriam-Webster reports English legislation in 1606, earlier than the 1650s horizon in Etymonline.',52200000,-1500000,'regional',1606,1606,'exact','The year is a secondary lexicographic report and remains disputed by another chronology.'),
(327,86,5,'Global English','17th century–today','Legislation names law-making, enacted laws, and matters before legislative bodies.',NULL,NULL,'global',1606,NULL,'open','The interval begins with the earliest reviewed secondary report, not a claim of coinage or uniform diffusion.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(309,37,'Root *leg- and Greek reflexes','supports','Supplies the traditional reconstruction without a precise point location.'),
(309,38,'Argument for *sleg-','challenges','Preserves the competing root shape and supports unresolved placement.'),
(310,201,'Etymology: Greek dialogos, dialegesthai, dia-, and legein','supports','Documents the Greek lexical stage.'),
(310,202,'Headword etymology','supports','Independently documents the Greek conversation formation.'),
(311,201,'Etymology: Latin dialogus','supports','Documents Latin transmission.'),
(312,202,'Headword chronology: circa 1200','supports','Dates the early English horizon and French transmission.'),
(312,201,'Word History: Middle English from Anglo-French','context','Independently documents the medieval route.'),
(313,201,'Definitions and First Known Use','supports','Documents the modern semantic range and thirteenth-century English horizon.'),

(314,37,'Root *leg- and Greek reflexes','supports','Supplies the traditional reconstruction without a precise point location.'),
(314,38,'Argument for *sleg-','challenges','Preserves the competing root shape and supports unresolved placement.'),
(315,203,'Did You Know? and Etymology','supports','Documents Greek prologos as the before-speech portion of a play.'),
(315,204,'Headword etymology','supports','Independently documents the Greek theatrical formation.'),
(316,203,'Etymology: Latin prologus','supports','Documents Latin transmission.'),
(317,203,'Word History and First Known Use','supports','Documents Anglo-French transmission and the fourteenth-century English horizon.'),
(318,203,'Definitions and First Known Use','supports','Documents the modern semantic range and continuing English use.'),

(319,37,'Root *leg- and Latin reflexes','supports','Supplies the traditional reconstruction without a precise point location.'),
(319,38,'Argument for *sleg-','challenges','Preserves the competing root shape and supports unresolved placement.'),
(320,205,'Etymology: legibilis from legere','supports','Documents the Latin reading formation.'),
(320,206,'Headword etymology','supports','Independently documents the Latin lexical stages.'),
(321,205,'Word History and First Known Use','supports','Places the English word in the fifteenth century.'),
(321,207,'Headword chronology: late 14th century','context','Preserves the earlier secondary chronology without converting it into an exact year.'),
(322,205,'Definitions','supports','Documents literal and figurative modern senses.'),

(323,37,'Root *leg- and Latin lex reflex','supports','Supplies the traditional law-and-gather comparison without geographic placement.'),
(323,38,'Latin lex analysis and *sleg- argument','challenges','Preserves the uncertainty around the law branch.'),
(323,212,'Root bher-1','supports','Documents the separate carrying reconstruction without assigning one homeland.'),
(324,209,'Word History: legis lator and ferre','supports','Documents the law and carrying/proposing components.'),
(324,211,'Étymologie et histoire','supports','Reports Medieval Latin legislatio around 1238.'),
(325,211,'French history: 1372–74','supports','Dates the French record.'),
(326,208,'First Known Use','supports','Reports the 1606 English horizon.'),
(326,210,'Headword chronology: 1650s','challenges','Preserves the competing later chronology.'),
(327,208,'Definitions','supports','Documents the modern law-making, enactment, and legislative-business senses.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(136,83,'Does dialogue etymologically require exactly two speakers?','No. Greek dia- means through, across, or between, not two; both reviewed histories explicitly reject or contradict the two-person restriction.','established','Merriam-Webster and Etymonline document dia- plus legein, and Etymonline explicitly identifies the two-person reading as a confusion with di-.','resolved','SET-U treats participant count as a usage property, not a false morphological limit.'),
(137,83,'Is *leǵ- the only published deepest root shape?','No. The traditional *leǵ- analysis remains widely represented, while a published *sleǵ- reconstruction challenges the initial consonant and cautions against a simple semantic tale.','proposed','UT Austin supplies *leg-; Kaczyńska argues for *sleg-.','open',NULL),
(138,84,'Does the -logue in prologue mean a field of study?','No. Greek prologos is pro- “before” plus logos “speech or discourse”: a speech beforehand. English -logy belongs to the same wider family but is not the component analyzed here.','established','Merriam-Webster and Etymonline independently publish the before-speech formation.','resolved','The graph connects the words at logos without replacing one suffix with another.'),
(139,84,'Is *leǵ- the only published deepest root shape?','No. The traditional *leǵ- analysis remains widely represented, while a published *sleǵ- reconstruction challenges the initial consonant.','proposed','UT Austin supplies *leg-; Kaczyńska argues for *sleg-.','open',NULL),
(140,85,'Did legible begin as a word for general understandability?','The secure formation is literal reading: Late Latin legibilis from legere “to read.” Discernible and understandable are later or extended senses, not the morphological source.','established','Merriam-Webster, American Heritage, and Etymonline independently publish the Latin reading formation.','resolved','The dossier keeps figurative senses but does not project them backward.'),
(141,85,'Is *leǵ- the only published deepest root shape?','No. Latin legere is traditionally compared with *leǵ-, while *sleǵ- remains a published alternative.','proposed','UT Austin supplies *leg-; Kaczyńska argues for *sleg-.','open',NULL),
(142,86,'Was legislation formed from the English verb legislate?','No. English legislation is recorded by the seventeenth century, while Etymonline dates legislate to 1805 as a back-formation from legislation or legislator.','established','Merriam-Webster reports legislation in 1606; Etymonline reports the noun in the 1650s and the verb in 1805.','resolved','The graph runs from the Latin and French noun family toward English, not backward from the later verb.'),
(143,86,'When does the reviewed English record for legislation begin?','The references disagree. Merriam-Webster reports 1606; Etymonline gives the 1650s, while CNRTL cites NED for before 1655. The earliest reviewed year remains source-reported rather than object-verified.','probable','Three current historical references expose a real lexicographic chronology conflict.','open',NULL),
(144,86,'Does Latin lēx securely descend from the gather root *leǵ-?','Not securely. A collection-of-rules bridge is plausible and published, but the direction, root shape, and precise cognates remain disputed.','proposed','UT Austin presents the traditional *leg- family; Kaczyńska argues for *sleg- and questions the comparison.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(136,201,'Did You Know? and definitions','supports','Identifies dia- as through or across and allows two or more participants.'),
(136,202,'Headword usage note','supports','Explicitly identifies the two-person restriction as confusion between dia- and di-.'),
(137,37,'Root *leg-','supports','Publishes the traditional reconstruction.'),
(137,38,'Argument for *sleg-','challenges','Publishes the competing initial-s reconstruction.'),
(138,203,'Etymology and Did You Know?','supports','Analyzes prologos as speaking before.'),
(138,204,'Headword etymology','supports','Independently analyzes pro plus logos as speech beforehand.'),
(139,37,'Root *leg-','supports','Publishes the traditional reconstruction.'),
(139,38,'Argument for *sleg-','challenges','Publishes the competing initial-s reconstruction.'),
(140,205,'Etymology and definitions','supports','Documents legibilis from legere and distinguishes readable from figurative discernibility.'),
(140,206,'Headword etymology','supports','Independently documents the Latin reading formation.'),
(140,207,'Headword etymology and chronology','context','Documents “that can be read” and the late-fourteenth-century horizon.'),
(141,37,'Root *leg-','supports','Publishes the traditional reconstruction and Latin reflex.'),
(141,38,'Argument for *sleg-','challenges','Publishes the competing initial-s reconstruction.'),
(142,208,'First Known Use: 1606','supports','Shows the English noun centuries before the reported verb back-formation.'),
(142,210,'Headword and linked legislate history','supports','Dates legislation to the 1650s and legislate to 1805 as a back-formation.'),
(143,208,'First Known Use','supports','Reports 1606.'),
(143,210,'Headword chronology','challenges','Reports the 1650s.'),
(143,211,'English chronology from NED','context','Reports English legislation before 1655.'),
(144,37,'Root *leg- and Latin reflexes','supports','Publishes the traditional comparison.'),
(144,38,'Latin lex analysis','challenges','Preserves uncertainty over root shape, direction, and cognates.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(68,83,2001,'dialogue','Dialogue never meant “speech limited to two.”','Greek dia- means through, across, or between. Confusing it with the numeral prefix di- produced a durable but false restriction.','A',100,'Two reviewed sources directly establish the morphology; one explicitly names the folk parsing.'),
(69,84,2002,'prologue','A prologue is speech before.','Greek prologos combines pro- “before” with logos “speech or discourse.” The modern general introduction grows from that theatrical structure.','A',97,'The compound is independently published and represented with both canonical parents.'),
(70,85,2003,'legible','Legible belongs to gathering and reading.','Late Latin legibilis means able to be read and comes from legere, the Latin gather, select, and read family.','A−',96,'The Latin formation is secure; A− preserves the deeper *leǵ- / *sleǵ- dispute.'),
(71,86,2004,'legislation','Legislation came before legislate.','The noun preserves a Latin law-bearing or law-proposing compound. English legislate was later back-formed from the already existing noun family.','A',100,'The noun-versus-verb chronology and both Latin components are directly sourced; the oldest English noun date remains disputed.');
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
(68,201,'Did You Know? and Etymology','supports','Identifies through/across plus speech and defines dialogue for two or more participants.'),
(68,202,'Headword usage note','supports','Explicitly rejects the two-person folk restriction.'),
(69,203,'Did You Know? and Etymology','supports','Documents the Greek before-speaking formation.'),
(69,204,'Headword etymology','supports','Independently analyzes pro plus logos.'),
(70,205,'Etymology','supports','Documents legibilis from legere “to read.”'),
(70,206,'Headword etymology','supports','Independently documents the reading formation.'),
(70,37,'Root *leg- and Latin reflexes','context','Connects Latin legere to the traditional gather root.'),
(71,208,'First Known Use','supports','Reports English legislation in 1606.'),
(71,209,'Word History','supports','Documents the law plus carrying/proposing components.'),
(71,210,'Headword and linked legislate history','supports','Documents the noun history and later back-formed verb.'),
(71,211,'Étymologie et histoire','context','Independently documents Latin legislatio and its two components.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(46,83,2,'DIALOGUE DOES NOT COUNT TO TWO','Dialogue and etymology converge at the Greek speaking-and-account family. The dia- in dialogue means through or across, not the numeral two.',100,'A','reviewed'),
(47,84,83,'BEFORE-SPEECH MEETS THROUGH-SPEECH','Prologue positions logos before; dialogue carries speaking through or across. Both reuse the same Greek speaking family.',99,'A','reviewed'),
(48,85,11,'READABLE AND LECTURE SHARE LATIN READING','Legible comes from what can be read; lecture comes from an act of reading. Both return to Latin legere and the disputed gather root.',98,'A','reviewed'),
(49,86,10,'LAW-MAKING IS LAW-BEARING','Legislation and legal share Latin lex, but legislation adds a second carrying or proposing branch through lātio and ferre.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id BETWEEN 83 AND 86
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
WHERE f.entry_id BETWEEN 83 AND 86;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 83 AND 86;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 83 AND 86;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 83 AND 86;
--> statement-breakpoint

-- Preserve the non-linear morphology that the dossier paths cannot express alone.
INSERT INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:10:dia:attested:sense:through-across-prefix',10,'διά-','dia','through-across-prefix','dia-',NULL,'attested','Ancient Greek',-700,600,'through, across, or between as a prefix','A bound component, not the Greek numeral two.','reviewed'),
('node:10:pro:attested:sense:before-prefix',10,'πρό-','pro','before-prefix','pro-',NULL,'attested','Ancient Greek',-700,600,'before or in front as a prefix','The first component of prologos.','reviewed'),
('node:9:latio:attested:sense:bearing-proposing-action',9,'lātiō','latio','bearing-proposing-action',NULL,NULL,'attested','Latin and Medieval Latin',-200,1300,'a bearing, bringing, or proposing','CNRTL derives the component through lātum from ferre; the law compound specializes it as proposal.','reviewed'),
('node:9:ferre:attested:sense:carry-propose',9,'ferre','ferre','carry-propose',NULL,NULL,'attested','Latin antiquity',-700,500,'to bear, carry, bring, report, or propose','An irregular Latin verb with lātum / lātus in its paradigm.','reviewed'),
('node:6:bher:reconstructed:sense:carry-bear',6,'*bher-','bher','carry-bear',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'to carry or bear','The American Heritage root catalog lists Latin ferre among its descendants.','reviewed'),
('boundary:canonical:bher-carry',7,'UNKNOWN','unknown','bher-carry-boundary',NULL,NULL,'boundary','before the reviewed *bher- horizon',NULL,NULL,'No securely reviewed ancestor is promoted beyond *bher-.','The trail ends at the present comparative horizon.','reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:dialegesthai:attested:sense:converse-through'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:dia:attested:sense:through-across-prefix'),'prefix_component','The bound dia- component remains visible inside dialegesthai; no independent sound change is asserted.','Through, across, or between supplies the relational orientation of conversing.','Merriam-Webster · Etymonline editors','established','Both reviewed sources distinguish this prefix from the numeral two.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:prologos:attested:sense:speech-before'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:pro:attested:sense:before-prefix'),'compound_component','The bound pro- component remains visible inside prologos; no independent sound change is asserted.','Before positions the speech or discourse ahead of the main performance.','Merriam-Webster · Etymonline editors','established','This edge completes the two-component model with logos.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:14:legislatio legislationem:attested:sense:law-bearing-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:latio:attested:sense:bearing-proposing-action'),'compound_component','The lātio component is preserved inside legislatio alongside genitive legis; no sound change beyond compounding is asserted.','Bearing or proposing supplies the action applied to a law.','Merriam-Webster · CNRTL · Etymonline editors','established','This edge completes the two-component model with lēx / lēgis.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:latio:attested:sense:bearing-proposing-action'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:ferre:attested:sense:carry-propose'),'derivation','Latin lātio is analyzed through lātum / lātus, the suppletive participial material used with ferre.','The general action of bearing or bringing specializes to proposing something for acceptance.','Merriam-Webster · CNRTL · Latin lexicography','established','The irregular paradigm is represented as a directly cited derivational relation, not a fabricated regular sound law.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:ferre:attested:sense:carry-propose'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:bher:reconstructed:sense:carry-bear'),'inheritance','Latin ferre continues the Indo-European *bher- carrying family through inherited Italic phonology and an irregular paradigm.','The core carrying and bearing sense remains stable while Latin adds proposing, reporting, and enduring extensions.','American Heritage Indo-European Roots · Latin lexicography','established','The lexical comparison is strong; the exact prehistoric inflectional history is not compressed into one rule.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:bher:reconstructed:sense:carry-bear'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:canonical:bher-carry'),'knowledge_boundary','No older form is promoted beyond the reviewed *bher- reconstruction.','The carrying branch stops at its present comparative horizon.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:dialegesthai:attested:sense:converse-through' AND p.canonical_key='node:10:dia:attested:sense:through-across-prefix' AND e.relation_type='prefix_component'),201,'Did You Know? and Etymology: dia- “through” or “across”','supports','Directly identifies the prefix and its contribution.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:dialegesthai:attested:sense:converse-through' AND p.canonical_key='node:10:dia:attested:sense:through-across-prefix' AND e.relation_type='prefix_component'),202,'Headword etymology and usage note','supports','Independently identifies across or between and rejects the numeral-two confusion.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:prologos:attested:sense:speech-before' AND p.canonical_key='node:10:pro:attested:sense:before-prefix' AND e.relation_type='compound_component'),203,'Etymology: pro- “before”','supports','Directly identifies the first compound component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:prologos:attested:sense:speech-before' AND p.canonical_key='node:10:pro:attested:sense:before-prefix' AND e.relation_type='compound_component'),204,'Headword etymology: pro “before”','supports','Independently identifies the first component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:14:legislatio legislationem:attested:sense:law-bearing-compound' AND p.canonical_key='node:9:latio:attested:sense:bearing-proposing-action' AND e.relation_type='compound_component'),209,'Word History: lator from ferre / latus','supports','Documents the carrying and proposing component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:14:legislatio legislationem:attested:sense:law-bearing-compound' AND p.canonical_key='node:9:latio:attested:sense:bearing-proposing-action' AND e.relation_type='compound_component'),210,'Headword etymology: legis latio','supports','Analyzes the noun as law-bearing or law-proposing.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:14:legislatio legislationem:attested:sense:law-bearing-compound' AND p.canonical_key='node:9:latio:attested:sense:bearing-proposing-action' AND e.relation_type='compound_component'),211,'Étymologie: latio formed on latum of ferre','supports','Independently documents the second component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:latio:attested:sense:bearing-proposing-action' AND p.canonical_key='node:9:ferre:attested:sense:carry-propose' AND e.relation_type='derivation'),209,'Word History: lator from ferre, past participle latus','supports','Documents the irregular Latin derivational material.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:latio:attested:sense:bearing-proposing-action' AND p.canonical_key='node:9:ferre:attested:sense:carry-propose' AND e.relation_type='derivation'),211,'Étymologie: latio from latum of ferre','supports','Independently documents the derivation.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:latio:attested:sense:bearing-proposing-action' AND p.canonical_key='node:9:ferre:attested:sense:carry-propose' AND e.relation_type='derivation'),213,'ferō / ferre lexical entry','context','Documents the carry, bring, report, and propose semantic range.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:ferre:attested:sense:carry-propose' AND p.canonical_key='node:6:bher:reconstructed:sense:carry-bear' AND e.relation_type='inheritance'),212,'Root bher-1, Latin ferre','supports','Lists Latin ferre as a descendant of the carry/bear root.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:ferre:attested:sense:carry-propose' AND p.canonical_key='node:6:bher:reconstructed:sense:carry-bear' AND e.relation_type='inheritance'),213,'ferō / ferre lexical entry','context','Documents the Latin carrying semantic field and comparative notes.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:6:bher:reconstructed:sense:carry-bear' AND p.canonical_key='boundary:canonical:bher-carry' AND e.relation_type='knowledge_boundary'),212,'Root bher-1','supports','Supplies the present reviewed comparative horizon and warrants stopping beyond it.');
