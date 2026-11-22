-- Promote every currently promotion-ready candidate in the straight-rule-king
-- family. DIRECT exposes both the Latin prefix and regere as parents, Old Irish
-- RI follows the Celtic king branch, Sanskrit RAJA preserves the nominative
-- beside the stem rajan-. The three dossiers converge only at cited
-- reconstructed horizons and never descend from one another.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(79,'old-irish','Old Irish','Indo-European','Celtic · Goidelic',0,700,1000,'Recorded medieval Goidelic stage used for rí and its genitive stem ríg-.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(137,'direct','direct','direct','/dəˈrɛkt/','verb and adjective','To guide, aim, command, or proceed without deviation or intermediary; continuing Latin dīrēctus and dīrigere through distinct medieval channels.','Direct belongs literally to the straight-and-rule family: Latin dīrigere combines dī-/dis- with regere, to guide or lead straight.','reviewed'),
(138,'ri','rí','rí','/riː/','noun','The Old Irish word for a king, with genitive ríg, inherited from Proto-Celtic *rīx-s in the Indo-European king branch.','Irish rí and Latin rēx are inherited cousins, not evidence that Irish copied its word for king from Rome.','reviewed'),
(139,'raja','rājā','rājā','/ˈrɑː.dʒɑː/','noun','The Sanskrit nominative singular meaning king, sovereign, prince, or chief, belonging to the consonant stem rājan-.','Rājā is a case form, not the underlying Sanskrit stem: the lexical stem is rājan-, and royal is its distant Latin cousin rather than its descendant.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(316,'mw-direct','Direct — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/direct',NULL,'historical_dictionary'),
(317,'ahd-direct','Direct — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=direct',NULL,'historical_dictionary'),
(318,'edil-ri','Rí — Electronic Dictionary of the Irish Language','Gregory Toner, Sharon Arbuthnot, Máire Ní Mhaonaigh, Marie-Luise Theuerkauf, and Dagmar Wodtko',2019,'Royal Irish Academy','https://www.dil.ie/35181',NULL,'historical_dictionary'),
(319,'ut-old-irish','Old Irish Online: Introduction','Patrizia de Bernardo Stempel and University of Texas Linguistics Research Center Editors',NULL,'University of Texas at Austin','https://lrc.la.utexas.edu/eieol/iriol/0',NULL,'scholarly_reference'),
(320,'cambridge-celtic','Celtic, chapter 9 of The Indo-European Language Family','Anders Richardt Jørgensen',2022,'Cambridge University Press','https://www.cambridge.org/core/services/aop-cambridge-core/content/view/5C9676E419C0C1F3BA789C13840D4420/9781108499798c9_135-151.pdf/celtic.pdf','10.1017/9781108758666.009','scholarly_reference'),
(321,'mw-raja','Raja — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/raja',NULL,'historical_dictionary'),
(322,'ahd-raja','Raja — American Heritage Dictionary and Word History','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=RAJA',NULL,'historical_dictionary'),
(323,'mw-sanskrit-rajan','Monier-Williams Sanskrit-English Dictionary: rājan and rāja','Monier Monier-Williams',1899,'Clarendon Press · University of Hyderabad digital edition','https://sanskrit.uohyd.ac.in/SKT/MW/217.html',NULL,'historical_dictionary'),
(324,'wiese-sanskrit-ie','Sanskrit as an Indo-European Language','Harald Wiese',2023,'Heidelberg Asian Studies Publishing','https://hasp.ub.uni-heidelberg.de/catalog/view/1238/2175/105061','10.11588/hasp.1238','scholarly_reference');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(849,137,1,1,'direct','direct','straight-guide-immediate','direct','/dəˈrɛkt/','attested','14th century–today',1300,NULL,'guide, aim, command, straight, immediate','The verb, adjective, and adverb histories are retained without pretending that every function entered through one immediate channel.'),
(850,137,2,2,'directen','directen','guide-aim-address','directen',NULL,'attested','Middle English',1150,1500,'guide, address, point, direct','American Heritage prints directen; Merriam-Webster reports the Middle English verb and adverb route.'),
(851,137,12,3,'directer','directer','guide-direct-verb','directer',NULL,'attested','Anglo-French',1066,1500,'direct, guide','Merriam-Webster gives Anglo-French directer in the verb and adverb history.'),
(852,137,9,4,'dīrēctus','directus','straightened-participle','dīrēctus',NULL,'attested','Latin',-700,700,'straightened; straight','Past participle of dīrigere and source of the English adjective route.'),
(853,137,9,5,'dīrigere','dirigere','direct-guide-compound','dīrigere',NULL,'attested','Latin',-700,700,'set straight, direct, guide','The canonical graph exposes both dī-/dis- and regere as morphological parents.'),
(854,137,9,6,'regere','regere','lead-straight-rule-verb','regere',NULL,'attested','Latin',-700,700,'lead straight, guide, rule','Shared Latin governing verb already used by realm.'),
(855,137,6,7,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared centum form.'),
(856,137,6,8,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Oldest form printed by American Heritage for the family.'),
(857,137,7,9,'UNKNOWN','unknown','direct-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The Latin prefix branch receives its own separate boundary in the canonical graph.'),

(858,138,79,1,'rí','rí','king-noun','rí','/riː/','attested','Old Irish, 8th–10th centuries',700,1000,'king; chief or foremost person','The genitive ríg preserves the stem consonant that is absent from the nominative surface form rí.'),
(859,138,78,2,'*rīx-s','rix-s','king-nominative','*rīx-s',NULL,'reconstructed','Proto-Celtic',-1300,-800,'king, nominative singular','Cambridge reconstructs nominative *rīx-s and genitive *rīg-os behind Old Irish rí and ríg.'),
(860,138,6,3,'*rēg-','reg-lengthened','king-lengthened-grade','*rēg-',NULL,'reconstructed','Proto-Indo-European lengthened grade',-4500,-2500,'king or ruler formation','Shared Indo-European king grade.'),
(861,138,6,4,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared centum analytical form.'),
(862,138,6,5,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Deepest reviewed root for the family.'),
(863,138,7,6,'UNKNOWN','unknown','ri-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The trail does not turn an inherited Celtic cognate into a Latin borrowing.'),

(864,139,22,1,'rājā','rājā','king-nominative','rājā','/ˈrɑː.dʒɑː/','attested','Vedic and Classical Sanskrit',-1500,1200,'king, sovereign, prince, chief','Nominative singular of the consonant stem rājan-.'),
(865,139,22,2,'rājan-','rājan','king-stem','rājan-',NULL,'attested','Vedic and Classical Sanskrit',-1500,1200,'king, sovereign, prince, chief','Lexical stem behind nominative rājā and numerous compounds.'),
(866,139,6,3,'*rēg-en-','reg-en','king-en-formation','*rēg-en-',NULL,'reconstructed','Proto-Indo-European suffixed formation',-4500,-2500,'king formation','American Heritage analyzes Sanskrit rājā and rājan- as the suffixed king formation *rēg-en-.'),
(867,139,6,4,'*rēg-','reg-lengthened','king-lengthened-grade','*rēg-',NULL,'reconstructed','Proto-Indo-European lengthened grade',-4500,-2500,'king or ruler formation','Shared Indo-European king grade.'),
(868,139,6,5,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared analytical centum form used by the current canonical family.'),
(869,139,6,6,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Deepest reviewed root; Sanskrit belongs to the satem branch even though the shared graph also preserves the published centum notation.'),
(870,139,7,7,'UNKNOWN','unknown','raja-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The trail stops before traditional or speculative derivations are promoted as comparative ancestry.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(713,137,849,850,'continuation','Modern direct continues Middle English directen with loss of the infinitive ending and stabilized modern spelling.','Guiding, aiming, ordering, straightness, and immediacy expand across verb, adjective, and adverb functions.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports the verb in the fourteenth century.','reviewed'),
(714,137,850,851,'borrowing','Middle English directen was borrowed through Anglo-French directer in the verb route.','To guide or point crosses into English.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(715,137,851,852,'borrowing','Anglo-French directer continues Latin dīrēctus through Romance verbal formation.','Straightened supplies directing and guiding senses.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(716,137,852,853,'inflection','Latin dīrēctus is the past participle of dīrigere.','What has been set straight becomes straight or directed.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(717,137,853,854,'compound_component','Latin dīrigere contains regere beside the separately modeled dī-/dis- prefix.','Setting apart or into line specializes leading straight, guiding, and directing.','American Heritage Dictionary Editors','established','The exact contribution of the prefix is not paraphrased as modern negation.',NULL,'reviewed'),
(718,137,854,855,'inheritance','Latin regere continues centum *h₃reg-.','Lead straight, direct, and rule preserve the reconstructed root field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(719,137,855,856,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(720,137,856,857,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(721,138,858,859,'inheritance','Proto-Celtic nominative *rīx-s develops to Old Irish rí, while genitive ríg preserves the stem consonant.','The king title remains a king noun through the Celtic sound changes.','Anders Richardt Jørgensen · Patrizia de Bernardo Stempel','established',NULL,'Old Irish is recorded in the early medieval period; Proto-Celtic is reconstructed.','reviewed'),
(722,138,859,860,'inheritance','Proto-Celtic *rīx-s reflects the Indo-European lengthened king grade *rēg-.','King remains the central meaning while Celtic raises inherited *ē to *ī and develops the final cluster.','Anders Richardt Jørgensen','established',NULL,'The source gives *rīx-s and genitive *rīg-os from PIE *(h₃)rēg̑-.','reviewed'),
(723,138,860,861,'derivation','Lengthened-grade *rēg- belongs under centum *h₃reg-.','The ruler or king formation specializes the straight, direct, lead, and rule family.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative ablaut analysis, not one dated institutional event.','reviewed'),
(724,138,861,862,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(725,138,862,863,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(726,139,864,865,'inflection','Sanskrit rājā is the nominative singular of the consonant stem rājan-.','The inflected form and lexical stem both mean king rather than separate lexical ancestors.','Monier Monier-Williams · Harald Wiese','established',NULL,'The relation is grammatical morphology inside Sanskrit.','reviewed'),
(727,139,865,866,'inheritance','Sanskrit rājan- reflects the reconstructed suffixed king formation *rēg-en-.','King, ruler, sovereign, and chief preserve the ruler field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Sanskrit form is attested; the parent is reconstructed.','reviewed'),
(728,139,866,867,'derivation','Reconstructed *rēg-en- is an n-stem formation on lengthened-grade *rēg-.','The suffix forms a king noun inside the ruler branch.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative morphology rather than a dated word-formation event.','reviewed'),
(729,139,867,868,'derivation','Lengthened-grade *rēg- belongs under centum *h₃reg-.','The ruler or king formation specializes the straight, direct, lead, and rule family.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative ablaut analysis, not one dated institutional event.','reviewed'),
(730,139,868,869,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(731,139,869,870,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(713,316,'Definitions, Word History, and First Known Use','supports','Supplies the polyfunctionality, Middle English history, and fourteenth-century horizon.'),
(713,317,'Headword definitions and etymology','context','Independently preserves straightness, guidance, command, and immediacy.'),
(714,316,'Etymology, verb and adverb: Middle English from Anglo-French directer','supports','Publishes the immediate medieval verb route.'),
(715,316,'Etymology: Anglo-French directer from Latin directus','supports','Publishes the Romance-to-Latin step.'),
(716,316,'Etymology: directus, past participle of dirigere','supports','Publishes the participial relationship.'),
(716,317,'Etymology: Latin dirigere, direct-','context','Independently supplies the Latin verb and participial stem.'),
(717,317,'Etymology: di-, dis-, apart, plus regere, to guide','supports','Publishes both morphological components.'),
(718,315,'reg-, Latin regere section','supports','Places the Latin verb under the straight-and-direct root.'),
(719,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(720,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(721,320,'Celtic chapter, p. 138: OIr. rí and ríg from PCelt. *rīx-s and *rīg-os','supports','Publishes the Old Irish forms and Proto-Celtic reconstruction.'),
(721,319,'Introduction, Old Irish between Heritage and Innovation, example 1a','context','Independently compares rí and ríg with Gaulish -rix and Latin rēx.'),
(722,320,'Celtic chapter, p. 138: PCelt. *rīx-s from PIE *(h₃)rēg̑-','supports','Publishes the Celtic vowel development and deeper ancestry.'),
(723,315,'reg-, lengthened-grade *rēg- section','supports','Analyzes the king formation under the root.'),
(724,315,'reg- heading: oldest form and centum form','supports','Publishes the shared reconstructed horizons.'),
(725,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(726,323,'Entries rāja and rājan','supports','Distinguishes the nominative and compound form from the consonant stem.'),
(726,324,'Selective etymological dictionary, p. 373: rājan m., king','context','Publishes the Sanskrit king stem in the Indo-European family.'),
(727,315,'reg-, suffixed *rēg-en- to Sanskrit rājā and rājan-','supports','Publishes the reconstructed formation and Sanskrit reflexes.'),
(727,324,'Selective etymological dictionary, p. 373: rājan from IE *reǵ','context','Independently connects the Sanskrit noun to the straight-and-direct root.'),
(728,315,'reg-, lengthened-grade *rēg- and suffixed *rēg-en-','supports','Publishes the n-stem derivation.'),
(729,315,'reg-, lengthened-grade *rēg- section','supports','Analyzes the king grade under the root.'),
(730,315,'reg- heading: oldest form and centum form','supports','Publishes the shared reconstructed horizons.'),
(731,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(172,849,316,'14th century',NULL,'Merriam-Webster first-known-use report for direct','First Known Use, verb',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fourteenth-century object was directly inspected.'),
(173,858,318,'Old and Middle Irish corpus record',NULL,'eDIL lexical record for rí','Headword rí','king; head, chief, foremost','established','lexical_corpus_record','Electronic Dictionary of the Irish Language',NULL,NULL,0,'Dictionary and corpus record, not a directly inspected manuscript token or a claim for the single earliest occurrence.'),
(174,864,323,'Vedic and Classical Sanskrit lexical record',NULL,'Monier-Williams lexical record for rājan and rāja','Entries rājan and rāja','king, sovereign, prince, chief','established','lexical_corpus_record','Monier-Williams Sanskrit-English Dictionary',NULL,NULL,0,'Historical dictionary record citing Sanskrit literature; no individual manuscript leaf was directly inspected.');
--> statement-breakpoint

UPDATE `relatives` SET `language`='Sanskrit' WHERE `form`='rājā' AND `language`='Sanskrit / modern borrowings';
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(445,137,'right','English / Germanic route','parallel straight-and-correct branch under *h₃reg-',315),
(446,137,'rule','English / Latin route','parallel straightedge-and-governance branch under *h₃reg-',315),
(447,137,'correct','English / Latin route','parallel Latin rectus formation in the straight family',315),
(448,137,'direction','English / Latin route','English derivative in the directing branch',317),
(449,138,'royal','English / Latin route','king cognate through Latin rēx and rēgālis',315),
(450,138,'rich','English / Celtic-Germanic route','deep relative through Celtic *rīg-yo- borrowed into Germanic',315),
(451,138,'rājā','Sanskrit','Indo-Aryan king cognate from *rēg-en-',315),
(452,138,'-rīx','Gaulish','Celtic king cognate preserved in compound personal names',320),
(453,139,'royal','English / Latin route','Latin king-family cognate',322),
(454,139,'rí','Old Irish','Celtic king-family cognate',320),
(455,139,'right','English / Germanic route','deep straight-and-correct cousin under the shared root',315),
(456,139,'rājñī','Sanskrit','feminine queen formation in the same Sanskrit paradigm',315);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(510,137,1,'Indo-European linguistic horizon','*h₃reg̑- to *h₃reg-','The reconstructed straight-and-direct root supplies the Latin guiding branch.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Comparative reconstruction does not identify one homeland coordinate or first year.'),
(511,137,2,'Roman linguistic world','regere to dīrigere and dīrēctus','A compound verb and its participle develop from guiding or leading straight.',NULL,NULL,'broad',NULL,NULL,'unresolved','The morphology is more secure than one dated token or map point.'),
(512,137,3,'France and England','Anglo-French directer to Middle English directen','The verb route crosses through French, while the adjective also has a direct Latin route.',50000000,2000000,'broad',NULL,NULL,'unresolved','The channel is regional and polyfunctional rather than one borrowing event.'),
(513,137,4,'Global English','14th century–today','Direct expands across guidance, authority, performance, straight paths, immediate causation, and lineal descent.',NULL,NULL,'global',1300,1399,'century','The interval preserves the source-reported first-use century.'),

(514,138,1,'Indo-European linguistic horizon','lengthened king grade *rēg-','The ruler branch develops under the straight-and-direct root.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No unique prehistoric place or first token is asserted.'),
(515,138,2,'Proto-Celtic linguistic horizon','*rīx-s and *rīg-os','Celtic raises inherited *ē to *ī and preserves a king nominative and stem.',NULL,NULL,'broad',NULL,NULL,'unresolved','Proto-Celtic is reconstructed and receives no single map pin.'),
(516,138,3,'Ireland','Old Irish rí and ríg, 8th–10th centuries','The nominative rí and genitive stem ríg are recorded in the medieval Goidelic tradition.',53500000,-8000000,'regional',700,999,'range','The broad interval follows the source description of Old Irish use, not a coinage date.'),

(517,139,1,'Indo-European linguistic horizon','*h₃reg̑- to the king grade','The straight-and-direct root develops a ruler branch and n-stem king formation.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Comparative sources do not identify one prehistoric homeland or first year.'),
(518,139,2,'Indo-Aryan linguistic horizon','*rēg-en- to rājan-','The reconstructed king formation develops into the Sanskrit consonant stem.',NULL,NULL,'broad',NULL,NULL,'unresolved','The language history is defensible while a single transmission coordinate is not.'),
(519,139,3,'South Asia','Vedic and Classical Sanskrit rājan-, nominative rājā','The stem and its nominative are attested across the Sanskrit textual tradition.',NULL,NULL,'broad',NULL,NULL,'unresolved','The cited dictionaries span a tradition rather than one dated manuscript witness.'),
(520,139,4,'South Asia and the English-language world','Hindi–Urdu rājā to English raja, first reported 1555','The Sanskrit king word continues in Hindi and Urdu and is later borrowed into English as raja or rajah.',NULL,NULL,'broad',1555,1555,'exact','The exact year applies to the source-reported English borrowing, not to Sanskrit rājā.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(510,315,'reg- heading and Latin regere branch','supports','Publishes the reconstructed root and Latin descendant.'),
(511,317,'Etymology: dī-/dis- plus regere','supports','Publishes the Latin compound structure.'),
(511,316,'Etymology: directus from dirigere','context','Supplies the participial stage.'),
(512,316,'Etymology, verb/adverb and adjective sections','supports','Distinguishes the Anglo-French verb route from the adjective route.'),
(513,316,'Definitions and First Known Use','supports','Supplies the semantic breadth and century-level horizon.'),
(514,315,'reg-, lengthened-grade king section','supports','Publishes the ruler grade under the root.'),
(515,320,'Celtic chapter, p. 138','supports','Publishes *rīx-s, *rīg-os, and the Celtic vowel development.'),
(516,319,'Old Irish introduction, examples and period description','supports','Supplies rí, ríg, and the eighth-to-tenth-century language horizon.'),
(516,318,'Headword rí','context','Provides the historical dictionary and corpus record.'),
(517,315,'reg- heading and lengthened-grade section','supports','Publishes the root and king branch.'),
(518,315,'reg-, suffixed *rēg-en- section','supports','Publishes the Sanskrit n-stem formation.'),
(518,324,'Selective etymological dictionary, p. 373','context','Independently connects rājan with the straight-and-direct root.'),
(519,323,'Entries rāja and rājan','supports','Documents the stem, meanings, and literary record.'),
(520,321,'Etymology and First Known Use','supports','Publishes Hindi–Urdu from Sanskrit and the 1555 English horizon.'),
(520,322,'Etymology and Word History','context','Independently narrates the Sanskrit king word and later family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(256,137,'Did direct originally mean only immediate or unmediated?','No. The recorded history foregrounds straightening, guiding, pointing, and directing; immediacy is one later semantic branch.','established','Merriam-Webster and American Heritage preserve both straight-course and guidance senses alongside immediacy.','resolved','The dossier keeps all major functions and does not declare the oldest meaning the only true one.'),
(257,137,'Did every English function arrive through one identical medieval route?','No. Merriam-Webster routes the verb and adverb through Anglo-French directer while giving the adjective from Latin directus.','established','The dictionary separates the etymology by part of speech.','resolved','The canonical graph preserves the main verb path and a separate adjective borrowing edge.'),
(258,138,'Was Old Irish rí borrowed from Latin rēx?','No. The comparative evidence derives Old Irish rí and Latin rēx as cognates in separate Celtic and Italic branches.','established','Cambridge derives Old Irish rí from Proto-Celtic *rīx-s; the Texas introduction compares the inherited Celtic vowel with Latin rēx.','resolved','No Latin-to-Irish borrowing edge is drawn.'),
(259,138,'Did Old Irish rí directly become English rich?','No. They are related through different Celtic formations: rí continues *rīx-s, while rich travels through the derivative *rīg-yo- borrowed into Germanic.','established','Cambridge supplies the rí branch; the American Heritage root appendix supplies the rich borrowing route.','resolved','The paths meet at the king grade without a false rí-to-rich edge.'),
(260,139,'Did English royal descend from Sanskrit rājā?','No. Sanskrit rājā and Latin rēx are cognates in separate Indo-Aryan and Italic branches under the same reconstructed king grade.','established','American Heritage explicitly places Sanskrit rājā, Latin rēx, and Celtic material under the wider root.','resolved','The graph joins the branches only at reconstructed ancestry.'),
(261,139,'Is rājā the lexical stem of the Sanskrit noun?','Not exactly. Rājā is the nominative singular; the consonant stem is rājan-, which appears across the paradigm and compounds.','established','Monier-Williams distinguishes rāja and rājan; Wiese lists rājan as the king noun.','resolved','The dossier makes the inflectional step clickable instead of hiding it in prose.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(256,316,'Definitions 1–7 and Word History','supports','Preserves straight-course, guidance, command, and immediate senses.'),
(256,317,'Definitions and etymology','context','Independently supplies the same semantic breadth.'),
(257,316,'Etymology separated by verb/adverb and adjective','supports','Publishes the distinct immediate channels.'),
(257,317,'Etymology from Latin dirigere','context','Supplies an independent compressed route.'),
(258,320,'Celtic chapter, p. 138','supports','Derives Old Irish rí from Proto-Celtic and PIE.'),
(258,319,'Introduction, example 1a','supports','Contrasts Celtic ī with Latin ē inside inherited cognates.'),
(259,320,'Celtic chapter, p. 138','supports','Publishes the *rīx-s to rí branch.'),
(259,315,'reg-, Celtic *rīg-yo- to Germanic *rīkja- and rich','supports','Publishes the distinct rich branch.'),
(260,322,'Word History: Sanskrit, Latin, Celtic, and Germanic branches','supports','Explicitly compares the family without direct descent.'),
(260,315,'reg-, lengthened-grade king section','supports','Publishes separate Sanskrit and Latin formations.'),
(261,323,'Entries rāja and rājan','supports','Distinguishes nominative or compound usage from the lexical stem.'),
(261,324,'Selective etymological dictionary, p. 373','context','Lists rājan as the Sanskrit king noun.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(137,137,2048,'direct','Direct is a straight-line word before it is an immediacy word.','Latin dīrigere combines dī-/dis- with regere, to guide or lead straight; its participle dīrēctus supplies the straightened form behind English.','A',100,'The reveal preserves later immediate and unmediated senses.'),
(138,138,2049,'rí','Irish rí and Latin rēx are cousins, not copies.','Old Irish rí and genitive ríg descend from Proto-Celtic *rīx-s and *rīg-os, while Latin rēx follows the parallel Italic branch.','A',100,'The claim is comparative inheritance, not cultural speculation about kingship.'),
(139,139,2050,'rājā','Rājā is the visible case form; rājan- is the stem.','The familiar Sanskrit nominative rājā belongs to the consonant stem rājan-, reconstructed through *rēg-en- in the same deep family as royal, rí, right, and rule.','A',100,'The graph distinguishes inflection, ancestry, and later borrowing.');
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
(137,317,'Etymology: dī-/dis- plus regere','supports','Publishes the compound structure and guiding verb.'),
(137,315,'reg-, Latin regere branch','supports','Supplies the straight-and-direct root ancestry.'),
(138,320,'Celtic chapter, p. 138','supports','Publishes Old Irish rí and ríg from Proto-Celtic *rīx-s and *rīg-os.'),
(138,319,'Introduction, example 1a','context','Independently compares the Celtic and Latin vowel outcomes.'),
(139,323,'Entries rāja and rājan','supports','Distinguishes the case form and lexical stem.'),
(139,315,'reg-, suffixed *rēg-en- section','supports','Publishes the reconstructed Sanskrit king formation.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(98,137,129,'DIRECT AND RIGHT TAKE TWO STRAIGHT ROUTES','Direct follows Latin dīrigere and regere; right follows Germanic *rehtaz. They meet at the reconstructed straight-and-direct root, not in medieval English.',100,'A','reviewed'),
(99,138,136,'A KING HIDES BEHIND RICH','Old Irish rí continues the Celtic king noun; rich follows a Celtic kingly derivative borrowed into Germanic and later shifted from power toward wealth.',100,'A','reviewed'),
(100,139,133,'RĀJĀ AND ROYAL RULE DIFFERENT BRANCHES','Sanskrit rājan- and Latin rēx are inherited king-family cognates. Royal does not descend from rājā, and neither modern word is the ancestor of the other.',100,'A','reviewed');
--> statement-breakpoint

-- Canonicalize the dossier spines. Reused Latin and reconstructed nodes collapse
-- only when language, form, sense, and evidence status match, boundaries remain
-- dossier-specific.
WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 849 AND 870
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
WHERE f.id BETWEEN 849 AND 870;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 713 AND 731;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 713 AND 731;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 713 AND 731;
--> statement-breakpoint

-- DIRECT has two important non-linear branches. The adjective can enter from
-- Latin directus without traversing Anglo-French directer, and Latin dirigere
-- exposes dis- as a second component beside regere. The prefix receives its own
-- cited knowledge boundary rather than silently disappearing.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:9:dis:attested:sense:apart-prefix',9,'dī-/dis-','dis','apart-prefix','dī-/dis-',NULL,'attested','Latin',-700,700,'apart, asunder','American Heritage identifies dī- as a form of dis- in dīrigere; the source does not license a modern negative paraphrase.','reviewed'),
('boundary:graph:latin-dis-prefix-0063',7,'UNKNOWN','unknown','latin-dis-prefix-boundary',NULL,NULL,'boundary','before the reviewed Latin prefix',NULL,NULL,'No securely promoted earlier analysis is currently attached to this prefix branch.','The boundary prevents the morphological side branch from being mistaken for a complete deeper reconstruction.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:direct:attested:sense:straight-guide-immediate'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:directus:attested:sense:straightened-participle'),'parallel_borrowing','The English adjective direct is reported from Latin dīrēctus without requiring the Anglo-French verb stage.','Straight, undeviating, and immediate adjective senses enter beside the verbal guidance route.','Merriam-Webster Editors','established',NULL,'Merriam-Webster separates adjective from verb and adverb etymology.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:dirigere:attested:sense:direct-guide-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:dis:attested:sense:apart-prefix'),'compound_component','Latin dīrigere contains dī-, a form of dis-, beside regere.','The prefix participates in the set-straight and direct formation without being equated to modern negation.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:dis:attested:sense:apart-prefix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:latin-dis-prefix-0063'),'knowledge_boundary','No deeper parent is promoted for the Latin prefix in this dossier.','The morphological branch stops at the limit of the cited headword analysis.','SET-U editorial boundary','boundary','A source can identify a component without supplying its complete prehistory.',NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:direct:attested:sense:straight-guide-immediate' AND p.canonical_key='node:9:directus:attested:sense:straightened-participle' AND e.relation_type='parallel_borrowing'),316,'Etymology, adjective: Middle English from Latin directus','supports','Publishes the adjective route separately from the verb and adverb.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:dirigere:attested:sense:direct-guide-compound' AND p.canonical_key='node:9:dis:attested:sense:apart-prefix' AND e.relation_type='compound_component'),317,'Etymology: di-, dis-, apart, plus regere','supports','Publishes the prefix as a morphological component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:dis:attested:sense:apart-prefix' AND p.canonical_key='boundary:graph:latin-dis-prefix-0063' AND e.relation_type='knowledge_boundary'),317,'Headword etymology stops at dis- cross-reference','supports','Defines the present evidence limit for this dossier branch.');
