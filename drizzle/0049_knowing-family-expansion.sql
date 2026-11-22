-- Promote four cited satellites into a connected knowing-family expansion.
-- The routes reuse the existing canonical scientia → sciens → scire → *skei-
-- chain only where the form, sense, relation, and claim language are identical.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(79,'conscience','conscience','conscience','/ˈkɒnʃəns/','noun','The moral sense or awareness of one''s conduct, inherited through medieval French from the Latin knowing-family.','Conscience was not always only a moral judge. Its recorded family also includes consciousness and awareness: morality became central inside a broader history of knowing.','reviewed'),
(80,'conscious','conscious','conscious','/ˈkɒnʃəs/','adjective · noun','Aware, awake, or deliberate; borrowed directly from Latin conscius in the knowing-family.','Conscious began with knowing, including knowing along with another person. The familiar private inner state is a later center of a word whose Latin structure was relational.','reviewed'),
(81,'omniscient','omniscient','omniscient','/ɒmˈnɪʃənt/','adjective · noun','Knowing everything; borrowed from a learned Latin all-knowing formation in the science and scire family.','Omniscient was not assembled in English from omni plus science. English borrowed an already formed Latin all-knowing word.','reviewed'),
(82,'prescient','prescient','prescient','/ˈprɛʃənt/','adjective','Having foreknowledge or unusually accurate foresight, borrowed through French and/or directly from Latin praesciens.','Prescient does not etymologically mean seeing the future. Its Latin structure is pre- plus scire: knowing beforehand.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(192,'mw-conscience','Conscience — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/conscience',NULL,'historical_dictionary'),
(193,'ahd-conscience','American Heritage Dictionary: conscience','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=conscience',NULL,'historical_dictionary'),
(194,'mw-conscious','Conscious — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/conscious',NULL,'historical_dictionary'),
(195,'ahd-conscious','American Heritage Dictionary: conscious','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=conscious',NULL,'historical_dictionary'),
(196,'mw-omniscient','Omniscient — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/omniscient',NULL,'historical_dictionary'),
(197,'ahd-omniscient','American Heritage Dictionary: omniscient','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=omniscient',NULL,'historical_dictionary'),
(198,'mw-prescient','Prescient — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/prescient',NULL,'historical_dictionary'),
(199,'ahd-prescient','American Heritage Dictionary: prescient','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=prescient',NULL,'historical_dictionary'),
(200,'etymonline-prescient','Prescient — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/prescient',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(461,79,1,1,'conscience','conscience','moral-awareness',NULL,'/ˈkɒnʃəns/','attested','13th century–today',1200,NULL,'awareness of right and wrong; moral judgment; historically also consciousness or awareness',NULL),
(462,79,2,2,'conscience','conscience','moral-awareness',NULL,NULL,'attested','Middle English, 13th–15th centuries',1200,1500,'awareness of conduct, morality, or inward knowledge',NULL),
(463,79,12,3,'conscience','conscience','moral-awareness',NULL,NULL,'attested','Anglo-French period',1100,1400,'conscience, consciousness, or inward awareness','American Heritage labels the immediate French stage Old French; Merriam-Webster labels it Anglo-French.'),
(464,79,9,4,'cōnscientia','conscientia','knowledge-awareness',NULL,NULL,'attested','Latin antiquity and Late Latin',-200,600,'knowledge, awareness, consciousness, or moral knowledge',NULL),
(465,79,9,5,'cōnsciēns, cōnscient-','consciens conscient','knowing-aware-participle',NULL,NULL,'attested','Latin antiquity',-200,500,'knowing, aware, or conscious; present participle of cōnscīre',NULL),
(466,79,9,6,'cōnscīre','conscire','know-with-or-thoroughly',NULL,NULL,'attested','Latin antiquity',-300,500,'to know with another, be mutually aware, or be conscious of','The contribution of com- is analyzed as together/with or as intensive across the reviewed sources.'),
(467,79,9,7,'scīre','scire','know-discern',NULL,NULL,'attested','Latin antiquity',-200,500,'to know',NULL),
(468,79,6,8,'*skei-','skei','cut-separate-discern',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'cut, split; proposed source of a discern-to-know development','The semantic bridge and exact Latin formation remain disputed.'),
(469,79,7,9,'UNKNOWN','unknown','conscience-deep-boundary',NULL,NULL,'boundary','before the disputed *skei- analysis',NULL,NULL,'No securely reviewed ancestor is promoted beyond the disputed cutting-and-discerning comparison.',NULL),

(470,80,1,1,'conscious','conscious','awareness-and-deliberation',NULL,'/ˈkɒnʃəs/','attested','circa 1600–today',1600,NULL,'aware, awake, subjectively felt, or deliberate; later also a psychoanalytic noun',NULL),
(471,80,9,2,'cōnscius','conscius','knowing-aware',NULL,NULL,'attested','Latin antiquity',-300,500,'knowing or aware; also knowing something along with another person',NULL),
(472,80,9,3,'scīre','scire','know-discern',NULL,NULL,'attested','Latin antiquity',-200,500,'to know',NULL),
(473,80,6,4,'*skei-','skei','cut-separate-discern',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'cut, split; proposed source of a discern-to-know development','The semantic bridge and exact Latin formation remain disputed.'),
(474,80,7,5,'UNKNOWN','unknown','conscious-deep-boundary',NULL,NULL,'boundary','before the disputed *skei- analysis',NULL,NULL,'No securely reviewed ancestor is promoted beyond the disputed cutting-and-discerning comparison.',NULL),

(475,81,1,1,'omniscient','omniscient','all-knowing',NULL,'/ɒmˈnɪʃənt/','attested','1598–today',1598,NULL,'having total, universal, or complete knowledge; also an all-knowing narrator or being',NULL),
(476,81,14,2,'omniscient-, omnisciēns','omniscient omnisciens','all-knowing',NULL,NULL,'attested','Medieval or New Latin',600,1600,'knowing all things; all-knowing','American Heritage classifies omnisciēns as Medieval Latin; Merriam-Webster classifies the immediate form as New Latin.'),
(477,81,14,3,'omniscientia','omniscientia','all-knowledge',NULL,NULL,'attested','Medieval Latin',500,1500,'all-knowledge or omniscience','Merriam-Webster analyzes the adjective as a back-formation from this noun.'),
(478,81,9,4,'scientia','scientia','knowledge-awareness',NULL,NULL,'attested','Latin antiquity',-200,500,'knowledge, awareness, understanding, or a branch of knowledge',NULL),
(479,81,9,5,'sciens','sciens','knowing-participle',NULL,NULL,'attested','Latin antiquity',-200,500,'knowing',NULL),
(480,81,9,6,'scīre','scire','know-discern',NULL,NULL,'attested','Latin antiquity',-200,500,'to know',NULL),
(481,81,6,7,'*skei-','skei','cut-separate-discern',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'cut, split; proposed source of a discern-to-know development','The semantic bridge and exact Latin formation remain disputed.'),
(482,81,7,8,'UNKNOWN','unknown','omniscient-deep-boundary',NULL,NULL,'boundary','before the disputed *skei- analysis',NULL,NULL,'No securely reviewed ancestor is promoted beyond the disputed cutting-and-discerning comparison.',NULL),

(483,82,1,1,'prescient','prescient','foreknowledge-foresight',NULL,'/ˈprɛʃənt/','attested','1620s–today',1620,NULL,'having foreknowledge or unusually accurate foresight',NULL),
(484,82,18,2,'prescient','prescient','foreknowing',NULL,NULL,'attested','French, 15th century',1400,1500,'foreknowing or having advance knowledge','American Heritage labels the stage French from Old French; Etymonline dates French prescient to the fifteenth century.'),
(485,82,9,3,'praesciēns, praescient-','praesciens praescient','foreknowing-participle',NULL,NULL,'attested','Latin antiquity',-200,500,'knowing beforehand; present participle of praescīre',NULL),
(486,82,9,4,'praescīre','praescire','know-beforehand',NULL,NULL,'attested','Latin antiquity',-300,500,'to know beforehand or in advance',NULL),
(487,82,9,5,'scīre','scire','know-discern',NULL,NULL,'attested','Latin antiquity',-200,500,'to know',NULL),
(488,82,6,6,'*skei-','skei','cut-separate-discern',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'cut, split; proposed source of a discern-to-know development','The semantic bridge and exact Latin formation remain disputed.'),
(489,82,7,7,'UNKNOWN','unknown','prescient-deep-boundary',NULL,NULL,'boundary','before the disputed *skei- analysis',NULL,NULL,'No securely reviewed ancestor is promoted beyond the disputed cutting-and-discerning comparison.',NULL);
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(383,79,461,462,'historical_continuation','Middle English conscience continues into modern English with spelling retained and pronunciation substantially reduced.','Moral awareness remains central while older general awareness survives only marginally or archaically.','Merriam-Webster · American Heritage editors','established',NULL,'Merriam-Webster reports English use from the thirteenth century.','reviewed'),
(384,79,462,463,'borrowing','Middle English adopts Anglo-French conscience with English stress and phonological adaptation.','Inward knowledge and moral awareness remain linked during the borrowing.','Merriam-Webster editors','established','American Heritage labels the French source Old French rather than Anglo-French.',NULL,'reviewed'),
(385,79,463,464,'borrowing','French conscience continues Latin cōnscientia through regular Romance reduction and spelling development.','Knowledge and awareness increasingly center on inward and moral self-knowledge.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(386,79,464,465,'derivation','Latin cōnscientia is an abstract noun formed from the participial stem cōnscient-.','Being aware or knowing becomes knowledge, consciousness, and moral awareness as an abstract state.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(387,79,465,466,'inflectional_derivation','Cōnsciēns is the present participle of cōnscīre.','The act or state of being aware is expressed as knowing or conscious.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(388,79,466,467,'prefixed_derivation','Latin cōnscīre combines assimilated com- with scīre; the prefix is analyzed as with/together or as intensive.','Knowing becomes mutual, shared, thorough, or self-aware knowledge, with moral guilt among its attested applications.','Merriam-Webster · American Heritage editors','probable','The sources do not assign one exclusive semantic value to com-.',NULL,'reviewed'),
(389,79,467,468,'proposed_derivation','Latin scīre has been compared with an Indo-European cutting/separating base; the exact formation and even the semantic bridge remain disputed.','A proposed development moves from cutting or separating to distinguishing and then knowing.','Merriam-Webster Editors · de Vaan · Ernout and Meillet · American Heritage','proposed','Merriam-Webster records competing morphological analyses and calls the semantic progression questionable; Ernout and Meillet call the comparison uncertain.','The comparison belongs to prehistory, not a directly attested change.','reviewed'),
(390,79,468,469,'knowledge_boundary','No older form is promoted beyond the disputed *skei- comparison.','The graph stops where the reviewed comparative analysis stops.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(391,80,470,471,'borrowing','English conscious adapts Latin cōnscius with English stress, vowel reduction, and the learned -ous ending.','Latin knowing and awareness develop across English senses of perception, wakefulness, subjective feeling, and deliberate action.','Merriam-Webster · American Heritage editors','established',NULL,'Merriam-Webster reports the adjective circa 1600.','reviewed'),
(392,80,471,472,'prefixed_derivation','Latin cōnscius contains com- plus scīre, with assimilation and adjectival formation.','Knowing with another or being aware becomes the condition of awareness expressed by the adjective.','Merriam-Webster · American Heritage editors','established','The prefix can also carry an intensive force in the wider conscience family.',NULL,'reviewed'),
(393,80,472,473,'proposed_derivation','Latin scīre has been compared with an Indo-European cutting/separating base; the exact formation and even the semantic bridge remain disputed.','A proposed development moves from cutting or separating to distinguishing and then knowing.','Merriam-Webster Editors · de Vaan · Ernout and Meillet · American Heritage','proposed','Merriam-Webster records competing morphological analyses and calls the semantic progression questionable; Ernout and Meillet call the comparison uncertain.','The comparison belongs to prehistory, not a directly attested change.','reviewed'),
(394,80,473,474,'knowledge_boundary','No older form is promoted beyond the disputed *skei- comparison.','The graph stops where the reviewed comparative analysis stops.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(395,81,475,476,'borrowing','English omniscient borrows the learned Latin stem omniscient- with English stress and final-syllable reduction.','The all-knowing sense is retained and later applied to narrators as well as beings or persons.','Merriam-Webster · American Heritage editors','established',NULL,'Merriam-Webster reports first known English use in 1598.','reviewed'),
(396,81,476,477,'derivation','Merriam-Webster analyzes omnisciēns as a back-formation from Medieval Latin omniscientia.','The abstract state of all-knowledge supplies an adjective meaning all-knowing.','Merriam-Webster editors','probable','American Heritage instead presents Medieval Latin omnisciēns directly as omni- plus sciēns.',NULL,'reviewed'),
(397,81,477,478,'compound_derivation','Medieval Latin omniscientia combines the all-quantifying omni- element with the scientia knowledge family.','Knowledge is quantified as complete or universal knowledge.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(398,81,478,479,'derivation','The noun scientia is formed from the participial stem scient- / sciens.','A knowing person/state supplies an abstract noun for knowledge.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(399,81,479,480,'inflectional_derivation','Sciens is the present participle of sciō, scīre.','The activity of knowing is expressed as “knowing.”','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(400,81,480,481,'proposed_derivation','Latin scīre has been compared with an Indo-European cutting/separating base; the exact formation and even the semantic bridge remain disputed.','A proposed development moves from cutting or separating to distinguishing and then knowing.','Merriam-Webster Editors · de Vaan · Ernout and Meillet · American Heritage','proposed','Merriam-Webster records competing morphological analyses and calls the semantic progression questionable; Ernout and Meillet call the comparison uncertain.','The comparison belongs to prehistory, not a directly attested change.','reviewed'),
(401,81,481,482,'knowledge_boundary','No older form is promoted beyond the disputed *skei- comparison.','The graph stops where the reviewed comparative analysis stops.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(402,82,483,484,'borrowing_via_competing_routes','English prescient is compatible with French transmission and direct learned borrowing from Latin; the displayed French form preserves the mediated route.','Foreknowledge remains central while ordinary usage often relaxes toward unusually accurate foresight.','American Heritage · Merriam-Webster · Etymonline editors','probable','American Heritage specifies French transmission; Merriam-Webster gives Latin; Etymonline gives French and direct Latin.','Etymonline dates English prescient to the 1620s.','reviewed'),
(403,82,484,485,'borrowing','French prescient borrows Latin praesciēns with Romance pronunciation and spelling.','Foreknowing remains the central meaning.','American Heritage · Etymonline editors','established',NULL,'Etymonline dates the French form to the fifteenth century.','reviewed'),
(404,82,485,486,'inflectional_derivation','Latin praesciēns is the present participle of praescīre.','The act of knowing beforehand is expressed as foreknowing.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(405,82,486,487,'prefixed_derivation','Latin praescīre combines prae- “before” with scīre “to know.”','Knowing is located in advance: to know beforehand.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(406,82,487,488,'proposed_derivation','Latin scīre has been compared with an Indo-European cutting/separating base; the exact formation and even the semantic bridge remain disputed.','A proposed development moves from cutting or separating to distinguishing and then knowing.','Merriam-Webster Editors · de Vaan · Ernout and Meillet · American Heritage','proposed','Merriam-Webster records competing morphological analyses and calls the semantic progression questionable; Ernout and Meillet call the comparison uncertain.','The comparison belongs to prehistory, not a directly attested change.','reviewed'),
(407,82,488,489,'knowledge_boundary','No older form is promoted beyond the disputed *skei- comparison.','The graph stops where the reviewed comparative analysis stops.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(383,192,'Word History and First Known Use','supports','Documents the thirteenth-century English horizon and the continuing moral-awareness sense.'),
(384,192,'Word History: Middle English from Anglo-French','supports','Documents the medieval borrowing route.'),
(384,193,'Headword etymology: Middle English from Old French','context','Preserves the alternate continental French label for the transmission stage.'),
(385,192,'Word History: Anglo-French from Latin conscientia','supports','Documents the French-to-Latin ancestry.'),
(385,193,'Headword etymology: Old French from Latin cōnscientia','supports','Independently documents the French-to-Latin ancestry.'),
(386,192,'Word History: conscient-, consciens','supports','Documents the abstract noun''s participial base.'),
(386,193,'Headword etymology: cōnscientia from cōnsciēns','supports','Independently documents the participial derivation.'),
(387,192,'Word History: consciens, present participle of conscire','supports','Documents the participial relation.'),
(387,193,'Headword etymology: cōnsciēns from cōnscīre','supports','Independently documents the participial relation.'),
(388,192,'Word History: conscire from com- plus scire','supports','Documents the prefixed knowing formation.'),
(388,193,'Headword etymology: com- as intensive plus scīre','context','Documents the intensive analysis of the prefix.'),
(389,86,'Etymology notes on the prehistory of scīre','supports','Records competing analyses and semantic doubt.'),
(389,87,'Root skei-, section 2','supports','Publishes the proposed discern-and-know family.'),
(390,86,'Etymology notes','context','The uncertainty defines the point where the reviewed trail stops.'),

(391,194,'Word History and First Known Use','supports','Documents direct Latin ancestry and the circa-1600 English horizon.'),
(391,195,'Headword etymology and definitions','supports','Independently documents Latin cōnscius and the modern awareness range.'),
(392,194,'Etymology: Latin conscius from com- plus scire','supports','Documents the prefixed knowing formation.'),
(392,195,'Headword etymology: cōnscius from com- plus scīre','supports','Independently documents the prefixed knowing formation.'),
(393,86,'Etymology notes on the prehistory of scīre','supports','Records competing analyses and semantic doubt.'),
(393,87,'Root skei-, section 2','supports','Publishes the proposed discern-and-know family.'),
(394,86,'Etymology notes','context','The uncertainty defines the point where the reviewed trail stops.'),

(395,196,'Word History and First Known Use','supports','Documents the Latin borrowing and 1598 English horizon.'),
(395,197,'Headword etymology: Medieval Latin omnisciēns','supports','Independently documents the learned Latin source.'),
(396,196,'Word History: back-formation from Medieval Latin omniscientia','supports','Documents the back-formation analysis.'),
(397,196,'Did You Know?: omni- plus scientia','supports','Documents the all-plus-knowledge structure.'),
(397,197,'Headword etymology: omni- plus sciēns','context','Documents the parallel direct compound analysis at the participial level.'),
(398,86,'Etymology: scientia from scient-, sciens','supports','Documents the abstract noun''s participial base.'),
(398,196,'Did You Know?: scientia and the scīre family','context','Connects the all-knowledge formation to the reviewed science family.'),
(399,86,'Etymology: sciens as present participle of scīre','supports','Documents the participial relation.'),
(399,197,'Headword etymology: sciēns, present participle of scīre','supports','Independently documents the participial relation.'),
(400,86,'Etymology notes on the prehistory of scīre','supports','Records competing analyses and semantic doubt.'),
(400,87,'Root skei-, section 2','supports','Publishes the proposed discern-and-know family.'),
(401,86,'Etymology notes','context','The uncertainty defines the point where the reviewed trail stops.'),

(402,198,'Word History: Latin praesciēns','context','Documents the direct Latin ancestry.'),
(402,199,'Headword etymology: French from Old French and Latin','supports','Documents the French-mediated route displayed in the dossier.'),
(402,200,'Headword history: French and directly from Latin','supports','Explicitly preserves both transmission routes and the 1620s English horizon.'),
(403,199,'Headword etymology: French from Old French from Latin','supports','Documents French transmission from the Latin participle.'),
(403,200,'Headword history: French prescient, 15th century','supports','Dates and documents the French stage.'),
(404,198,'Word History: praesciēns, present participle of praescīre','supports','Documents the participial relation.'),
(404,199,'Headword etymology: praesciēns from praescīre','supports','Independently documents the participial relation.'),
(405,198,'Word History: praescīre from prae- plus scire','supports','Documents the prefixed knowing formation.'),
(405,199,'Headword etymology: prae- plus scīre','supports','Independently documents the prefixed knowing formation.'),
(406,86,'Etymology notes on the prehistory of scīre','supports','Records competing analyses and semantic doubt.'),
(406,87,'Root skei-, section 2','supports','Publishes the proposed discern-and-know family.'),
(407,86,'Etymology notes','context','The uncertainty defines the point where the reviewed trail stops.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(114,461,192,'13th century',NULL,'Merriam-Webster source-reported English record','First Known Use, moral-awareness sense',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected medieval object or proof of coinage.'),
(115,470,194,'circa 1600',1600,'Merriam-Webster source-reported English record','First Known Use, adjective sense 2',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected printed object or proof of first speech.'),
(116,475,196,'1598',1598,'Merriam-Webster source-reported English record','First Known Use, all-knowing sense',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected 1598 object or proof of coinage.'),
(117,483,200,'1620s',NULL,'Online Etymology Dictionary source-reported English record','Headword opening chronology','English prescient in the foreknowing sense.','probable','lexicographic_first_use',NULL,NULL,NULL,0,'A secondary lexicographic decade report, not a directly inspected seventeenth-century object or proof of coinage.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(253,79,'conscious','English','sibling adjective from the same prefixed Latin knowing formation',194),
(254,79,'science','English','parallel descendant of Latin scīre through scientia',192),
(255,79,'nescience','English','negative knowing-family counterpart',193),
(256,80,'conscience','English','sibling noun from the same prefixed Latin knowing family',194),
(257,80,'science','English','parallel descendant of Latin scīre through scientia',194),
(258,80,'nice','English','distant negative-knowing descendant in the proposed *skei- family',195),
(259,81,'science','English','knowledge-family cousin through scientia and sciens',196),
(260,81,'prescient','English','before-knowing cousin in the same scīre family',196),
(261,81,'conscience','English','prefixed knowing-family cousin',196),
(262,82,'science','English','knowledge-family cousin through scīre',198),
(263,82,'omniscient','English','all-knowing cousin in the same scīre family',199),
(264,82,'nice','English','distant negative-knowing descendant in the proposed *skei- family',199);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(292,79,1,'Indo-European linguistic horizon','reconstructed *skei- comparison','A proposed cutting-and-separating root is compared with the Latin knowing family, but the semantic bridge remains disputed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparison is linguistic, not a datable archaeological migration.'),
(293,79,2,'Roman world','Latin antiquity','Cōnscientia, cōnsciēns, and cōnscīre express knowledge, awareness, shared or intensive knowing, and moral consciousness.',41900000,12500000,'broad',-300,500,'range','The interval locates the reviewed Latin family rather than one semantic innovation.'),
(294,79,3,'Medieval France and England','13th-century English horizon','French conscience enters Middle English and is recorded for moral awareness.',50000000,1000000,'broad',1200,1500,'range','The interval joins the source-reported thirteenth-century English horizon to the broader medieval transmission period.'),
(295,79,4,'Global English','13th century–today','Conscience centers on moral judgment while awareness and consciousness remain recoverable historical senses.',NULL,NULL,'global',1200,NULL,'open','The open interval begins with the lexicographic English horizon and does not claim uniform global adoption.'),

(296,80,1,'Indo-European linguistic horizon','reconstructed *skei- comparison','The Latin knowing verb is compared with a reconstructed cutting-and-discerning family without a secure archaeological point.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The source supports comparison, not a precise place or date.'),
(297,80,2,'Roman world','Latin antiquity','Latin cōnscius names knowing, awareness, and knowledge shared with another person.',41900000,12500000,'broad',-300,500,'range','The interval locates the reviewed Latin lexical horizon rather than one first occurrence.'),
(298,80,3,'England','circa 1600 English record','English conscious appears in the reviewed record for controlled awareness or perception.',52200000,-1500000,'regional',1595,1605,'circa','The ten-year interval encodes circa 1600, not proof of coinage.'),
(299,80,4,'Global English','circa 1600–today','The adjective expands across wakefulness, awareness, subjective feeling, intention, and later psychoanalytic usage.',NULL,NULL,'global',1600,NULL,'open','The open interval begins at the reviewed English horizon without assigning invented dates to every sense.'),

(300,81,1,'Indo-European linguistic horizon','reconstructed *skei- comparison','The deepest knowing-family comparison remains reconstructed and semantically disputed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The source supports linguistic comparison, not a precise point or date.'),
(301,81,2,'Medieval and early-modern Latin scholarship','Medieval or New Latin formation','Omniscientia and omnisciēns combine universal quantity with the Latin knowledge family.',NULL,NULL,'broad',500,1600,'range','The broad interval preserves the competing Medieval-Latin and New-Latin classifications without inventing one place.'),
(302,81,3,'England','1598 English record','English omniscient appears in the reviewed record for universal or complete knowledge.',52200000,-1500000,'regional',1598,1598,'exact','1598 is a lexicographic first-known-use year, not proof of coinage.'),
(303,81,4,'Global literary and theological English','1598–today','Omniscient applies to all-knowing beings and, later, narrators whose viewpoint can access every character.',NULL,NULL,'global',1598,NULL,'open','The open interval begins with the reviewed English horizon and does not date the narrator sense separately.'),

(304,82,1,'Indo-European linguistic horizon','reconstructed *skei- comparison','The Latin knowing family is compared with a reconstructed cutting-and-discerning root whose semantic bridge remains disputed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparison is linguistic, not a datable migration.'),
(305,82,2,'Roman world','Latin antiquity','Praescīre and praesciēns combine before with knowing to express foreknowledge.',41900000,12500000,'broad',-300,500,'range','The interval locates the reviewed Latin lexical horizon rather than one first occurrence.'),
(306,82,3,'France','15th-century French record','French prescient carries the Latin foreknowing formation toward English.',46600000,2200000,'regional',1400,1499,'century','The bounds encode the reported French century, not a directly inspected first object.'),
(307,82,4,'England','1620s English record','English prescient appears in the reviewed secondary lexicographic record for foreknowing.',52200000,-1500000,'regional',1620,1629,'range','The decade is source-reported; no underlying printed object was directly inspected.'),
(308,82,5,'Global English','1620s–today','Prescient ranges from literal foreknowledge to the ordinary judgment that someone showed unusually accurate foresight.',NULL,NULL,'global',1620,NULL,'open','The open interval begins with the reported decade and does not treat metaphorical foresight as literal supernatural knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(292,87,'Root skei-, section 2','supports','Supplies the proposed knowing-family reconstruction without an archaeological point.'),
(293,192,'Word History: Latin conscientia, consciens, and conscire','supports','Documents the Latin knowing and awareness family.'),
(293,193,'Headword etymology and obsolete awareness sense','context','Documents both the Latin chain and the broader awareness meaning.'),
(294,192,'Word History and First Known Use','supports','Documents Anglo-French transmission and the thirteenth-century English horizon.'),
(294,193,'Headword etymology: Middle English from Old French','context','Preserves the alternate French-stage label.'),
(295,192,'Definitions and First Known Use','supports','Documents modern moral senses from the reviewed English horizon.'),
(295,193,'Definitions, including obsolete awareness','context','Keeps the older general-awareness layer visible.'),

(296,87,'Root skei-, section 2','supports','Supplies the proposed knowing-family reconstruction without an archaeological point.'),
(297,194,'Etymology: Latin conscius','supports','Documents Latin knowing and awareness.'),
(297,195,'Headword etymology: Latin cōnscius','supports','Independently documents the Latin stage.'),
(298,194,'First Known Use','supports','Reports circa 1600 for the English adjective.'),
(299,194,'Definitions and First Known Use','supports','Documents the English horizon and modern semantic range.'),
(299,195,'Definitions','context','Independently documents awareness, wakefulness, feeling, and deliberation.'),

(300,87,'Root skei-, section 2','supports','Supplies the proposed knowing-family reconstruction without an archaeological point.'),
(301,196,'Word History and Did You Know?','supports','Documents New Latin and Medieval Latin stages in the all-knowledge formation.'),
(301,197,'Headword etymology: Medieval Latin omnisciēns','challenges','Preserves the competing Medieval Latin classification.'),
(302,196,'First Known Use','supports','Reports 1598 for English omniscient.'),
(303,196,'Definitions and First Known Use','supports','Documents the English horizon and modern all-knowing senses.'),
(303,197,'Definitions','context','Documents applications to a deity, narrator, or other all-knowing being.'),

(304,87,'Root skei-, section 2','supports','Supplies the proposed knowing-family reconstruction without an archaeological point.'),
(305,198,'Word History: praesciēns and praescīre','supports','Documents the Latin before-knowing family.'),
(305,199,'Headword etymology: praesciēns from praescīre','supports','Independently documents the Latin stage.'),
(306,199,'Headword etymology: French from Old French','supports','Documents the French transmission channel.'),
(306,200,'Headword history: French prescient, 15th century','supports','Dates the French stage to the fifteenth century.'),
(307,200,'Headword opening chronology','supports','Reports English prescient from the 1620s.'),
(308,198,'Definition and Did You Know?','supports','Documents foreknowledge and the ordinary foresight sense.'),
(308,200,'Headword history','context','Documents the English horizon and foreknowing meaning.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(128,79,'Did conscience always mean only a moral judge?','No. Moral awareness is early and central, but the Latin family and an obsolete English sense also include consciousness or general awareness.','established','Merriam-Webster and American Heritage document moral senses beside the broader knowing and awareness history.','resolved','The dossier does not erase morality; it places it inside the wider recorded semantic field.'),
(129,79,'Does the con- in conscience mean together or intensively?','Both analyses are published. Merriam-Webster presents com- plus scire, while American Heritage labels com- intensive; the dossier keeps the edge probable rather than forcing one exclusive gloss.','probable','Two current dictionaries assign different semantic force to the same prefix.','open',NULL),
(130,80,'Was conscious shortened from English consciousness?','No. The reviewed etymologies derive the adjective directly from Latin cōnscius, and Merriam-Webster reports the adjective circa 1600.','established','Merriam-Webster and American Heritage independently publish the direct Latin ancestry.','resolved','The graph does not invent an English noun-to-adjective derivation.'),
(131,80,'Does knowing securely descend from cutting or splitting?','No. The *skei- comparison is published, but the exact formation of Latin scīre and the semantic bridge from separating to knowing remain disputed.','proposed','The existing science dossier preserves competing morphological analyses and explicit semantic doubt.','open',NULL),
(132,81,'Was omniscient assembled in English from omni plus science?','No. English borrowed a learned Latin all-knowing form; the compound analysis belongs inside Latin, not as a new English coinage from the modern noun science.','established','Merriam-Webster and American Heritage independently give Latin immediate ancestry.','resolved','The dossier connects the word to science at Latin scientia without inventing an English compound.'),
(133,81,'Is the immediate Latin form Medieval Latin or New Latin?','The references differ. American Heritage labels omnisciēns Medieval Latin; Merriam-Webster labels the immediate form New Latin and analyzes it as a back-formation from Medieval Latin omniscientia.','probable','Two current dictionaries publish different periodization and morphological detail.','open',NULL),
(134,82,'Does prescient etymologically mean seeing the future?','No. Its documented Latin structure is prae- “before” plus scīre “to know”: foreknowledge, not a sight-word formation.','established','Merriam-Webster and American Heritage independently publish the before-plus-know analysis.','resolved','The modern foresight metaphor remains a meaning, not the word''s morphology.'),
(135,82,'Did English receive prescient through French or directly from Latin?','Both routes are published. American Heritage specifies French transmission; Merriam-Webster gives Latin; Etymonline explicitly allows French and direct Latin.','probable','The displayed French route is evidence-backed but not exclusive.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(128,192,'Definitions and Word History','supports','Documents the moral sense and the deeper knowing family.'),
(128,193,'Definitions: obsolete consciousness or awareness; etymology','supports','Directly preserves the broader awareness layer.'),
(129,192,'Word History: com- plus scire','supports','Publishes the unqualified prefixed analysis.'),
(129,193,'Headword etymology: com-, intensive prefix','challenges','Publishes the intensive interpretation.'),
(130,194,'Word History and First Known Use','supports','Documents direct Latin ancestry and the circa-1600 adjective.'),
(130,195,'Headword etymology: from Latin cōnscius','supports','Independently documents direct Latin ancestry.'),
(131,86,'Etymology notes on scīre','supports','Records competing formations and semantic doubt.'),
(131,87,'Root skei-, section 2','context','Publishes the proposed discern-and-know family without making it certain.'),
(132,196,'Word History: New Latin omniscient-, omnisciens','supports','Documents the learned Latin immediate source.'),
(132,197,'Headword etymology: Medieval Latin omnisciēns','supports','Independently documents Latin rather than English formation.'),
(133,196,'Word History: New Latin back-formation from Medieval Latin omniscientia','supports','Publishes the New Latin and back-formation analysis.'),
(133,197,'Headword etymology: Medieval Latin omnisciēns','challenges','Publishes the competing Medieval Latin classification and direct compound analysis.'),
(134,198,'Word History: prae- plus scire','supports','Documents knowing beforehand rather than a sight formation.'),
(134,199,'Headword etymology: prae- plus scīre','supports','Independently documents the before-plus-know structure.'),
(135,198,'Word History: Latin praesciēns','context','Documents direct Latin ancestry.'),
(135,199,'Headword etymology: French from Old French from Latin','supports','Documents the French-mediated route.'),
(135,200,'Headword history: from French and directly from Latin','supports','Explicitly preserves both routes.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(64,79,2001,'conscience','Conscience was not always only the moral judge.','The word''s recorded family also includes consciousness and awareness. Moral self-judgment became central inside a wider history of knowing.','A',97,'The broader awareness layer is directly published; the exact force of the Latin prefix remains disputed.'),
(65,80,2002,'conscious','Conscious began as knowing—including knowing with another.','Latin cōnscius could describe awareness or knowledge shared with another person. English later centered the word on private awareness, wakefulness, and deliberate action.','A',99,'The relational Latin gloss and circa-1600 English horizon are directly published.'),
(66,81,2003,'omniscient','Omniscient was already an all-knowing word before English borrowed it.','The structure belongs to learned Latin: omni- plus the knowing family. English did not freshly bolt omni onto the modern noun science.','A',95,'Both dictionaries publish Latin immediate ancestry; their periodization remains disputed.'),
(67,82,2004,'prescient','Prescient is a knowing word, not a seeing word.','Latin prae- plus scīre means to know beforehand. Modern “foresight” is a semantic description, not evidence of a sight-based ancestry.','A',96,'The before-plus-know structure is independently published; the French-versus-direct-Latin route remains open.');
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
(64,192,'Definitions and Word History','supports','Documents moral awareness inside the Latin knowing family.'),
(64,193,'Definitions: obsolete consciousness or awareness','supports','Directly preserves the broader awareness sense.'),
(65,194,'Etymology note: cōnscius as knowing along with another','supports','Documents the relational Latin meaning and direct ancestry.'),
(65,195,'Definitions and headword etymology','context','Documents the modern awareness range and Latin source.'),
(66,196,'Word History and Did You Know?','supports','Documents the learned Latin all-knowing formation.'),
(66,197,'Headword etymology: Medieval Latin omnisciēns','supports','Independently documents Latin immediate ancestry.'),
(67,198,'Word History: prae- plus scire','supports','Documents the before-plus-know structure.'),
(67,199,'Headword etymology: praescīre, to know beforehand','supports','Independently documents the foreknowing structure.'),
(67,200,'Headword history and date','context','Documents the English foreknowing sense from the 1620s.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(42,79,28,'THE MORAL VOICE AND THE LABORATORY SHARE KNOWING','Conscience and science diverge through different Latin formations built on scīre: one centers inward moral awareness, the other travels through scientia toward organized knowledge.',99,'A','reviewed'),
(43,80,79,'PRIVATE AWARENESS BEGAN WITH KNOWING TOGETHER','Conscious and conscience share the prefixed Latin knowing family, but English split wakeful or deliberate awareness from moral self-judgment.',100,'A','reviewed'),
(44,81,46,'ALL-KNOWING AND NOT-KNOWING MEET AT SCIENS','Omniscient quantifies the knowing family with all; nescience negates it. The apparent opposites reconnect at Latin sciens and scīre.',99,'A','reviewed'),
(45,82,27,'FORESIGHT AND NICE MEET BELOW KNOWING','Prescient adds before to Latin knowing; nice descends through Latin not-knowing. Both reach the same disputed *skei- horizon from opposite semantic directions.',98,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id BETWEEN 79 AND 82
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
WHERE f.entry_id BETWEEN 79 AND 82;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 79 AND 82;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 79 AND 82;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 79 AND 82;
