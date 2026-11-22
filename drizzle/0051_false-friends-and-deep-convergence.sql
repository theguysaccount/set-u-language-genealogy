-- Promote four contrarian candidates whose resemblance encodes four different
-- historical relationships: law/legal have distinct immediate lineages with a
-- possible deep convergence, arithmetic influenced algorithm's spelling without
-- supplying its ancestry, emoticon and emoji are independently formed peers,
-- and salt/salary are real lexical kin even though the viral Roman-pay story is not.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(66,'old-norse','Old Norse','Indo-European','North Germanic',0,700,1500,'Attested medieval North Germanic varieties; law entered Old English through Scandinavian contact.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(87,'law','law','law','/lɔː/','noun · verb','A binding rule, body of rules, or regular principle; a Scandinavian loan in Old English whose deepest secure family means lie or lay.','Law and legal are not direct relatives. Law is Germanic and Scandinavian—what is laid down—while legal is Latin through lēx. A possible deeper convergence is published, but uncertain.','reviewed'),
(88,'arithmetic','arithmetic','arithmetic','/əˈrɪθmətɪk/','noun · adjective','The art or practice of counting and calculation; transmitted from Greek arithmos “number” through Latin and French.','Arithmetic did not descend from algorithm, and algorithm did not descend from arithmetic. Greek arithmos influenced algorithm''s later spelling while the two words retained different ancestors.','reviewed'),
(89,'emoticon','emoticon','emoticon','/ɪˈmoʊtɪkɒn/','noun','A keyboard-character sequence depicting a facial expression, posture, emotion, or attitude; an English compound of emotion and icon.','Only emoticon contains emotion. Emoji is Japanese e “picture” plus moji “character”; the visual concepts overlap, but the word formations do not.','reviewed'),
(90,'salt','salt','salt','/sɔːlt/','noun · verb · adjective','Common salt and the wider family of saline substances and figurative savor; an inherited Germanic word in a deep Indo-European salt family.','Salt and salary really are lexical relatives. That true relationship still does not prove the story that Roman soldiers were ordinarily paid in literal salt.','reviewed');
--> statement-breakpoint

UPDATE `sources`
SET `title`='American Heritage Dictionary Indo-European Roots Appendix'
WHERE `id`=212 AND `citation_key`='ahd-ie-bher';
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(214,'etymonline-law','Law — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/law',NULL,'historical_dictionary'),
(215,'cleasby-vigfusson-lag','Cleasby–Vigfusson Old Norse Dictionary: lag','Richard Cleasby · Guðbrandur Vigfússon',1874,'Old Norse Dictionary Project','https://cleasby-vigfusson-dictionary.vercel.app/word/lag',NULL,'historical_dictionary'),
(216,'uta-pie-legh','Indo-European Lexicon: legh-','Linguistics Research Center Editors',NULL,'University of Texas at Austin','https://lrc.la.utexas.edu/lex/master/1132',NULL,'research_database'),
(217,'mw-arithmetic','Arithmetic — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/arithmetic',NULL,'historical_dictionary'),
(218,'etymonline-arithmetic','Arithmetic — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/arithmetic',NULL,'historical_dictionary'),
(219,'mw-arithmo','Arithmo- — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/arithmo-',NULL,'historical_dictionary'),
(220,'ahd-algorithm','American Heritage Dictionary: algorithm','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=algorithm',NULL,'historical_dictionary'),
(221,'mw-emoticon','Emoticon — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/emoticon',NULL,'historical_dictionary'),
(222,'mw-emotion','Emotion — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/emotion',NULL,'historical_dictionary'),
(223,'etymonline-emotion','Emotion — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/emotion',NULL,'historical_dictionary'),
(224,'mw-icon','Icon — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/icon',NULL,'historical_dictionary'),
(225,'etymonline-icon','Icon — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/icon',NULL,'historical_dictionary'),
(226,'mw-salt','Salt — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/salt',NULL,'historical_dictionary'),
(227,'etymonline-salt','Salt — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/salt',NULL,'historical_dictionary'),
(228,'uta-pie-sal','Indo-European Lexicon: sal-','Linguistics Research Center Editors',NULL,'University of Texas at Austin','https://lrc.la.utexas.edu/lex/master/1648',NULL,'research_database');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(520,87,1,1,'law','law','binding-rule',NULL,'/lɔː/','attested','Middle English continuation–today',1150,NULL,'binding rule, body of rules, or regular principle','The modern spelling continues the Scandinavian loan already present in Old English.'),
(521,87,2,2,'lawe / laue','lawe laue','binding-rule',NULL,NULL,'attested','Middle English',1150,1500,'law, ordinance, or body of rules',NULL),
(522,87,3,3,'lagu','lagu','scandinavian-law',NULL,NULL,'attested','Old English',700,1150,'ordinance, prescribed rule, regulation, or legal district','Merriam-Webster and Etymonline identify the Old English word as Scandinavian in origin.'),
(523,87,66,4,'lǫg / lög; lag','log lag','laid-down-law',NULL,NULL,'attested','Old Norse',700,1500,'law; a laying, layer, order, or disposition','The law-word is a collective plural related to lag, something laid or put in order.'),
(524,87,5,5,'*lagam','lagam','laid-down-order',NULL,NULL,'reconstructed','Proto-Germanic prehistory',-500,200,'a laying down; what is fixed or set','Reconstruction and exact inflectional representation vary across reference traditions.'),
(525,87,6,6,'*legh-','legh','default',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to lie, recline, lay, or set down','This is distinct from the gather root *leǵ-. A possible connection of Latin lēx to *legh- remains explicitly uncertain.'),
(526,87,7,7,'UNKNOWN','unknown','law-deep-boundary',NULL,NULL,'boundary','before the lie-and-lay reconstruction',NULL,NULL,'No securely reconstructed ancestor is promoted beyond *legh-.','The possible lēx convergence is a competing branch, not a deeper parent.'),

(527,88,1,1,'arithmetic','arithmetic','number-calculation',NULL,'/əˈrɪθmətɪk/','attested','mid-13th century–today',1250,NULL,'the art, practice, or branch of mathematics concerned with numbers and calculation','Merriam-Webster reports a fifteenth-century first-known-use horizon; Etymonline reports a mid-thirteenth-century form.'),
(528,88,2,2,'arsmetike / arsmetrik','arsmetike arsmetrik','counting-art',NULL,NULL,'attested','Middle English, mid-13th–15th century',1250,1500,'arithmetic or the art of computation','The extra r reflects a medieval folk analysis involving ars metrica; the classical spelling was restored later.'),
(529,88,8,3,'arsmetique / arismatike','arsmetique arismatike','counting-art',NULL,NULL,'attested','Old French and Anglo-French, 12th century onward',1100,1400,'arithmetic or reckoning',NULL),
(530,88,9,4,'arithmetica','arithmetica','counting-art',NULL,NULL,'attested','Latin antiquity and medieval scholarship',-100,1500,'arithmetic; the counting discipline',NULL),
(531,88,10,5,'ἀριθμητική (τέχνη)','arithmetike tekhne','counting-art','arithmētikē (tekhnē)',NULL,'attested','Ancient Greek',-700,600,'the counting art; arithmetic',NULL),
(532,88,10,6,'ἀριθμός','arithmos','number-count','arithmós',NULL,'attested','Ancient Greek',-700,600,'number, amount, or counting',NULL),
(533,88,6,7,'*h₂rei-','h2rei','count',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to count','Merriam-Webster derives the Greek base through *h₂rei-; Etymonline represents an expanded formation *erei-dhmo- and compares a root *re-.'),
(534,88,7,8,'UNKNOWN','unknown','arithmetic-deep-boundary',NULL,NULL,'boundary','before the competing number-root representations',NULL,NULL,'No deeper form is promoted beyond the published reconstruction and representation disagreement.',NULL),

(535,89,1,1,'emoticon','emoticon','keyboard-expression-compound',NULL,'/ɪˈmoʊtɪkɒn/','attested','1987–today',1987,NULL,'keyboard characters depicting a facial expression, posture, emotion, or attitude','The compound has two canonical parents: emotion and icon.'),
(536,89,1,2,'emotion','emotion','feeling-component',NULL,'/ɪˈmoʊʃən/','attested','1579–today',1579,NULL,'feeling; originally also disturbance, agitation, or social movement','This linear route follows the emotion component while the icon branch remains visible in the canonical graph.'),
(537,89,18,3,'émotion','emotion','agitation-movement',NULL,NULL,'attested','Middle French, 16th century',1500,1600,'movement, agitation, or disturbance',NULL),
(538,89,8,4,'emouvoir / esmovoir','emouvoir esmovoir','stir-up-move',NULL,NULL,'attested','Old French, 12th century onward',1100,1500,'to stir up, move, or agitate',NULL),
(539,89,9,5,'ēmovēre','emovere','move-out',NULL,NULL,'attested','Latin antiquity',-700,500,'to move out, remove, displace, or agitate','Latin ex- / ē- is preserved as a second cited canonical component.'),
(540,89,9,6,'movēre','movere','move',NULL,NULL,'attested','Latin antiquity',-700,500,'to move',NULL),
(541,89,6,7,'*meue-','meue','push-away',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to push away','Etymonline publishes this root representation for Latin movēre.'),
(542,89,7,8,'UNKNOWN','unknown','emotion-movement-boundary',NULL,NULL,'boundary','before the reconstructed movement root',NULL,NULL,'No securely reconstructed ancestor is promoted beyond *meue-.','The separate icon component ends at its own Greek-origin boundary in the canonical graph.'),

(543,90,1,1,'salt','salt','common-salt',NULL,'/sɔːlt/','attested','Old English continuation–today',1150,NULL,'sodium chloride; saline substance; later figurative savor and scientific chemical class',NULL),
(544,90,2,2,'salt','salt','common-salt',NULL,NULL,'attested','Middle English',1150,1500,'salt used for seasoning and preservation',NULL),
(545,90,3,3,'sealt','sealt','common-salt',NULL,NULL,'attested','Old English',450,1150,'salt, sodium chloride, condiment, or preservative',NULL),
(546,90,5,4,'*saltom','saltom','common-salt',NULL,NULL,'reconstructed','Proto-Germanic prehistory',-500,200,'salt','The form follows Etymonline''s representation; comparative sources publish related reflex sets.'),
(547,90,6,5,'*séh₂l-','sehl','default',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'salt','Reuses the canonical salt-family root already reached by salary; references also print *sal-.'),
(548,90,7,6,'UNKNOWN','unknown','salt-deep-boundary',NULL,NULL,'boundary','before the reconstructed salt family',NULL,NULL,'No secure older ancestor is promoted beyond the salt root.',NULL);
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(434,87,520,521,'historical_continuation','Middle English lawe / laue stabilizes as law while later English vowel history produces the modern pronunciation.','The inherited legal-rule sense expands to bodies of law, professions, and regular principles in science.','Merriam-Webster · Etymonline editors','established',NULL,'Modern spelling postdates the source-reported Old and Middle English forms.','reviewed'),
(435,87,521,522,'inheritance','Old English lagu continues into Middle English with loss of final unstressed -u and spelling variation including laue and lawe.','Ordinance, rule, and legal order remain central.','Merriam-Webster · Etymonline · UT LRC editors','established',NULL,NULL,'reviewed'),
(436,87,522,523,'borrowing','Old English adapts a Scandinavian law-word represented by Old Norse lǫg / lög and lag.','What is laid down or put in order becomes a prescribed rule and legal institution.','Merriam-Webster · Etymonline editors','established',NULL,'The exact contact event and donor inflection are not reduced to one date.','reviewed'),
(437,87,523,524,'inheritance','Old Norse lag and lög reflect a reconstructed Germanic *lagam formation in the lay-family.','A layer, laying, or ordered placement supplies the legal sense “what is laid down.”','American Heritage · UT LRC · Cleasby–Vigfusson','probable','Reference traditions vary in notation and inflectional detail.',NULL,'reviewed'),
(438,87,524,525,'inheritance','Proto-Germanic *lagam reflects an o-grade formation in the PIE *legh- “lie, lay” family.','The concrete act of laying becomes an established order and law.','American Heritage · UT LRC · Etymonline editors','probable','The broad comparative family is secure; exact intermediate morphology is reconstructed.',NULL,'reviewed'),
(439,87,525,526,'knowledge_boundary','No older form is promoted beyond the comparative *legh- horizon.','The site stops without treating the separate *leǵ- gather root or uncertain Latin comparison as an ancestor.','SET-U editorial boundary · UT LRC','boundary',NULL,NULL,'reviewed'),

(440,88,527,528,'historical_continuation','Middle English arsmetike / arsmetrik is respelled arithmetic under renewed alignment with Latin and Greek.','The counting art remains arithmetic while its domain broadens within modern mathematics.','Merriam-Webster · Etymonline editors','established',NULL,'Sources differ between a mid-thirteenth-century and fifteenth-century English horizon.','reviewed'),
(441,88,528,529,'borrowing','Middle English adapts Old French and Anglo-French forms; a folk association with ars metrica contributes the extra r in some spellings.','The practical and learned counting discipline remains central.','Merriam-Webster · Etymonline · MacTutor editors','established',NULL,NULL,'reviewed'),
(442,88,529,530,'borrowing','French arsmetique / arismatike continues Latin arithmetica through regular learned transmission and medieval respelling.','Arithmetic remains the counting discipline.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(443,88,530,531,'borrowing','Latin arithmetica borrows and adapts Greek arithmētikē.','The Greek counting art enters Latin education and mathematical vocabulary.','Merriam-Webster · MacTutor editors','established',NULL,NULL,'reviewed'),
(444,88,531,532,'derivation','Greek arithmētikē is built in the arithmos “number” family.','Number or counting supplies the name of the counting art.','Merriam-Webster · Etymonline · MacTutor editors','established',NULL,NULL,'reviewed'),
(445,88,532,533,'proposed_inheritance','Greek arithmos is analyzed through a counting base represented by Merriam-Webster as PIE *h₂rei-; Etymonline publishes an expanded *erei-dhmo- formation.','The inherited counting sense remains, while the precise prehistoric formation is reconstructed.','Merriam-Webster · Etymonline editors','proposed','The references agree on a counting family but use materially different root and formation notation.',NULL,'reviewed'),
(446,88,533,534,'knowledge_boundary','The graph stops beyond the competing reconstruction notations.','No deeper number-word is promoted as settled fact.','SET-U editorial boundary · Merriam-Webster','boundary',NULL,NULL,'reviewed'),

(447,89,535,536,'compound_component','English emoticon truncates and joins emotion with icon; this dossier path follows the emotion component.','Feeling supplies the expressive content of the keyboard-character image.','Merriam-Webster · Unicode Consortium','established','The icon component is preserved as a second cited canonical parent.',NULL,'reviewed'),
(448,89,536,537,'borrowing','English emotion borrows Middle French émotion with English stress and vowel adaptation.','Movement, disturbance, and agitation develop toward strong feeling and later feeling generally.','Merriam-Webster · Etymonline editors','established',NULL,'Merriam-Webster reports English use in 1579; Etymonline places the earliest horizon in the 1570s.','reviewed'),
(449,89,537,538,'derivation','Middle French émotion is formed in the Old French emouvoir / esmovoir movement family.','The act or state of stirring and agitation becomes the abstract noun.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(450,89,538,539,'borrowing','Old French emouvoir / esmovoir continues Latin ēmovēre with Romance sound and spelling development.','Moving out or displacing extends to stirring and agitation.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(451,89,539,540,'prefixed_derivation','Latin ēmovēre combines ex- / ē- “out” with movēre “move”; this linear path follows the verbal base.','Moving out, removing, or displacing develops an agitation sense.','Merriam-Webster · Etymonline editors','established','The ex- component is also modeled as a cited graph branch.',NULL,'reviewed'),
(452,89,540,541,'inheritance','Latin movēre is assigned to the PIE movement root *meue- in the reviewed source.','Physical pushing and movement underlie the later agitation and feeling family.','Etymonline editors','probable','The exact PIE notation follows the reviewed reference.',NULL,'reviewed'),
(453,89,541,542,'knowledge_boundary','No older form is promoted beyond *meue-.','The emotion branch stops at its cited reconstruction while the icon branch stops separately at uncertain Greek prehistory.','SET-U editorial boundary · Etymonline','boundary',NULL,NULL,'reviewed'),

(454,90,543,544,'historical_continuation','Middle English salt continues with stable spelling into modern English while pronunciation changes.','The material sense remains while figurative savor, sailor, and chemical-class senses develop.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(455,90,544,545,'inheritance','Old English sealt loses or reshapes inherited inflection while the stem stabilizes as Middle English salt.','The condiment and preservative meaning remains central.','Merriam-Webster · UT LRC editors','established',NULL,NULL,'reviewed'),
(456,90,545,546,'inheritance','Old English sealt regularly continues reconstructed Proto-Germanic *saltom.','The material salt sense remains stable across Germanic.','Etymonline · UT LRC editors','probable','The Proto-Germanic form is reconstructed, not attested.',NULL,'reviewed'),
(457,90,546,547,'inheritance','Proto-Germanic *saltom belongs to the Indo-European salt family represented as *séh₂l- in the existing dossier and *sal- in other references.','The material salt meaning remains stable; no payment sense exists at the reconstructed stage.','Mallory & Adams · Etymonline · UT LRC editors','probable','Root notation differs across references without changing the comparative salt-family claim.',NULL,'reviewed'),
(458,90,547,548,'knowledge_boundary','No older form is promoted beyond the reconstructed salt family.','The graph stops before speculation while preserving the real path shared with Latin sāl and salary.','SET-U editorial boundary · Mallory & Adams · UT LRC','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(434,47,'Word History: Middle English from Old English lagu; First Known Use','supports','Documents the inherited English headword, Scandinavian source, and early horizon.'),
(434,214,'Headword history and later senses','supports','Documents Middle English laue and the expansion into physical, legal, and institutional senses.'),
(435,47,'Word History: Old English lagu','supports','Documents the Old English parent.'),
(435,216,'legh- reflex list: Old English lagu and Middle English law','supports','Places both English stages in the cited comparative family.'),
(436,47,'Word History: Old English lagu, of Scandinavian origin; Old Norse lǫg','supports','Directly identifies the borrowing direction and Old Norse comparison.'),
(436,214,'Headword history: Old English lagu from Old Norse *lagu','supports','Independently documents the Scandinavian transmission.'),
(437,215,'lag entries: layer; laying in order; law-related uses','supports','Documents the attested Old Norse semantic family behind what is laid down.'),
(437,216,'legh- reflex list: Old Norse lag and lög; Germanic *lagam analysis','supports','Supplies the comparative Germanic route.'),
(438,214,'Headword history: Proto-Germanic *lagam from PIE *legh-','supports','Publishes the reconstructed transition.'),
(438,216,'Pokorny etymon legh- and Germanic reflexes','supports','Independently situates law and lay reflexes under the lie-and-lay root.'),
(439,216,'Pokorny etymon legh-','supports','Supports stopping at the reviewed reconstructed horizon.'),

(440,217,'Word History: Middle English arsmetrik; First Known Use','supports','Documents the Middle English form, modern headword, and fifteenth-century reported horizon.'),
(440,218,'Headword history: mid-13th-century arsmetike; spelling corrected in early 16th century','supports','Documents an earlier reported horizon and the classical respelling.'),
(441,217,'Word History: Anglo-French arismatike','supports','Documents French transmission.'),
(441,218,'Headword history: Old French arsmetique and ars metrica folk analysis','supports','Documents both the borrowing and medieval extra-r analysis.'),
(441,58,'ARITHMETIC section: medieval spelling confusions','context','Supplies a history-of-mathematics account of the extra-r spellings.'),
(442,217,'Word History: Anglo-French from Latin arithmetica','supports','Documents French continuation of the Latin form.'),
(442,218,'Headword history: Old French arsmetique from Latin arithmetica','supports','Independently documents the route.'),
(443,217,'Word History: Latin arithmetica from Greek arithmētikē','supports','Documents the Greek-to-Latin borrowing.'),
(443,58,'ARITHMETIC section: Greek arithmetike passed into Latin as arithmetica','supports','Independently documents the learned borrowing.'),
(444,217,'Word History: arithmētikē from arithmos “number”','supports','Documents the Greek derivation.'),
(444,218,'Headword history: arithmetikē from arithmos','supports','Independently documents the number-word base.'),
(445,219,'Word History: arithmos from ari-, going back to *h₂rei-','supports','Publishes the laryngeal root representation followed in the linear dossier.'),
(445,218,'Headword history: *erei-dhmo- from root *re-','challenges','Publishes a materially different reconstruction and formation representation.'),
(446,219,'Reconstructed *h₂rei- analysis','supports','Supports an explicit boundary beyond the published counting root.'),

(447,221,'Word History: emotion + icon','supports','Directly analyzes the English compound.'),
(447,131,'How do emoji differ from emoticons?','supports','Independently identifies emotion plus icon and the ASCII character-sequence function.'),
(448,222,'Word History: Middle French; First Known Use 1579','supports','Documents the borrowing and earliest reported English horizon.'),
(448,223,'Headword history: French émotion; strong-feeling sense by the 1650s','supports','Documents the semantic movement from agitation toward feeling.'),
(449,222,'Word History: from emouvoir','supports','Documents the noun''s verbal family.'),
(449,223,'Headword history: French émotion from Old French emouvoir','supports','Independently documents the derivation.'),
(450,222,'Word History: Old French esmovoir from Latin emovēre','supports','Documents the Romance continuation.'),
(450,223,'Headword history: emouvoir from Latin emovere','supports','Independently documents the Latin source.'),
(451,222,'Word History: emovēre from e- plus movēre','supports','Documents the prefixed formation.'),
(451,223,'Headword history: ex “out” plus movere “move”','supports','Independently documents both components.'),
(452,223,'Headword history: movere from PIE *meue-','supports','Publishes the movement-root analysis.'),
(453,223,'PIE *meue- endpoint in the reviewed headword history','supports','Supports stopping beyond the cited root.'),

(454,226,'Word History: Middle English from Old English sealt; definitions','supports','Documents English continuation and the modern material senses.'),
(454,227,'Headword history and semantic extensions','supports','Documents inherited material salt plus later figurative and chemical senses.'),
(455,226,'Word History: Middle English from Old English sealt','supports','Documents the Old-to-Middle-English transition.'),
(455,228,'sal- reflex list: Old English sealt and Middle English salt','supports','Independently places both forms in the comparative family.'),
(456,227,'Headword history: Old English sealt from Proto-Germanic *saltom','supports','Publishes the Germanic reconstruction.'),
(456,228,'sal- reflex list: Old English and Germanic reflexes','supports','Supplies comparative support for the reconstructed stage.'),
(457,15,'Appendix 2, Proto-Indo-European salt item','supports','Supplies the laryngeal reconstruction already used by the salary dossier.'),
(457,227,'Headword history: *saltom from PIE *sal-','supports','Publishes the consonantal root representation.'),
(457,228,'Pokorny etymon sal- and Indo-European reflexes','supports','Independently supplies the comparative salt family.'),
(458,15,'Proto-Indo-European salt item','supports','Supports stopping at the reconstructed salt horizon.'),
(458,228,'Pokorny etymon sal-','supports','Independently identifies the current comparative endpoint.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(122,522,47,'before the 12th century',1100,'Merriam-Webster source-reported Old English record','Word History and First Known Use','Old English lagu, of Scandinavian origin; noun use before the twelfth century.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use horizon attached to the Old English form, not a directly inspected primary object or proof of coinage.'),
(123,527,217,'15th century',1400,'Merriam-Webster source-reported English record','First Known Use','Arithmetic in the counting-art sense.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected fifteenth-century object; Etymonline reports an earlier mid-thirteenth-century form.'),
(124,535,221,'1987',1987,'Merriam-Webster source-reported English record','First Known Use','Emoticon in the keyboard-character expression sense.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected 1987 object or proof that the compound was first spoken or written in that year.'),
(125,545,226,'before the 12th century',1100,'Merriam-Webster source-reported Old English record','Word History and First Known Use','Old English sealt; noun use before the twelfth century.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use horizon attached to the Old English form, not a directly inspected primary object or proof of coinage.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(277,87,'lay','English','direct *legh- family relative',216),
(278,87,'fellow','English','Germanic relative built from a laying-down formation',216),
(279,87,'outlaw','English','descendant compound in the Old Norse law family',216),
(280,87,'legal','English','semantic twin with distinct immediate Latin ancestry and possible disputed deep convergence',212),
(281,88,'algorithm','English','spelling influence, not a cognate',220),
(282,88,'arithmancy','English','learned Greek arithmos derivative',218),
(283,88,'rīm','Old English','comparative number-word relative',217),
(284,88,'logistic','Ancient Greek / English','Greek calculation term contrasted with arithmetike',58),
(285,89,'emoji','English from Japanese','conceptual peer with unrelated formation',131),
(286,89,'emotion','English','first compound component',222),
(287,89,'icon','English','second compound component',224),
(288,89,'emotive','English','later derivative in the emotion family',223),
(289,90,'salary','English','real salt-family relative through Latin salarium',13),
(290,90,'sāl, salis','Latin','Indo-European salt cognate and salary base',228),
(291,90,'ἅλς','Homeric Greek','Indo-European salt cognate',228),
(292,90,'saline','English from Latin','learned salt-family descendant',227);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(328,87,1,'Indo-European linguistic horizon','reconstructed *legh- stage','The lie-and-lay root is reconstructed from reflexes; no single archaeological point or exact calendar interval is claimed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparative sources establish a reconstruction, not one dated utterance or excavated location.'),
(329,87,2,'Scandinavia and the Old Norse world','approximately 700–1500','Old Norse lag and lög connect laying and order with law before and during Scandinavian contact with English.',62000000,12000000,'broad',700,1500,'range','The interval is the documented language horizon, not the coinage date of one legal sense.'),
(330,87,3,'Anglo-Saxon England','before the 12th century','Old English lagu enters the written lexicographic record as a Scandinavian-origin law-word.',52500000,-1500000,'regional',NULL,1199,'before','The upper bound encodes the source''s “before the 12th century” horizon rather than an invented first year.'),
(331,87,4,'Global English','Middle English continuation–today','Law expands from binding custom and rule to institutions, professions, bodies of law, and regular scientific principles.',NULL,NULL,'global',1150,NULL,'open','The open interval begins with the conventional Middle English continuation and does not date each later sense.'),

(332,88,1,'Ancient Greek linguistic world','antiquity','Arithmos names number and arithmetike names the counting art.',39000000,22000000,'broad',-700,600,'range','The broad interval locates the attested Greek lexical stage rather than a first coinage.'),
(333,88,2,'Latin and medieval French scholarship','12th–13th centuries','Greek arithmetike passes through Latin arithmetica and Old French arsmetique into vernacular mathematical teaching.',48000000,5000000,'broad',1100,1299,'range','The interval follows the reviewed twelfth-century French and mid-thirteenth-century English horizon without asserting continuous attestation at every point.'),
(334,88,3,'Medieval England','circa 1250 English horizon','Etymonline reports arsmetike in the mid-thirteenth century, while Merriam-Webster''s first-known-use report begins in the fifteenth.',52200000,-1500000,'regional',1240,1260,'circa','The ten-year window renders “mid-13th century” approximately and keeps the competing later report visible.'),
(335,88,4,'Global mathematics','mid-13th century–today','Arithmetic continues as a practical and theoretical number discipline while its spelling is realigned with Greek and Latin.',NULL,NULL,'global',1250,NULL,'open','The open interval begins at the earlier reviewed English horizon and does not claim an exact coinage year.'),

(336,89,1,'Indo-European linguistic horizon','reconstructed movement root','The emotion component ultimately reaches reconstructed *meue-; no archaeological point or exact interval is inferred.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','A lexical reconstruction is not a place or directly dated object.'),
(337,89,2,'Roman and Francophone transmission','Latin antiquity–16th century','Latin emovere “move out” develops through Old and Middle French movement and agitation vocabulary.',46000000,5000000,'broad',-200,1600,'range','The broad interval contains the cited Latin, twelfth-century Old French, and sixteenth-century French stages without pretending to date each transition exactly.'),
(338,89,3,'England','1579 English emotion record','Merriam-Webster reports emotion in English first in the disturbance or agitation sense.',52200000,-1500000,'regional',1579,1579,'exact','1579 is a lexicographic first-known-use report, not proof of first speech.'),
(339,89,4,'Networked English communication','1987–today','Emoticon names ASCII and keyboard-character expressions; Unicode distinguishes this English compound from Japanese emoji.',NULL,NULL,'global',1987,NULL,'open','The open interval begins with Merriam-Webster''s reported first known use and preserves the later 1992 source report as a dispute.'),

(340,90,1,'Indo-European linguistic horizon','reconstructed salt family','Comparative evidence reconstructs a salt root printed as *séh₂l- or *sal- across reference systems.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The reconstruction does not establish one archaeological point or exact date.'),
(341,90,2,'Germanic and Anglo-Saxon Europe','approximately 450–1150','Proto-Germanic *saltom is reconstructed behind Old English sealt and related Germanic words.',53000000,8000000,'broad',450,1150,'range','The interval locates the Old English stage and its Germanic inheritance, not an exact Proto-Germanic coinage event.'),
(342,90,3,'England','before the 12th century','Merriam-Webster reports salt as an English noun before the twelfth century.',52500000,-1500000,'regional',NULL,1199,'before','The bound faithfully encodes “before the 12th century” without inventing a first year.'),
(343,90,4,'Global scientific and figurative English','1790–today','The inherited material word broadens to chemical salts and continues in figurative senses of savor, skepticism, and experience.',NULL,NULL,'global',1790,NULL,'open','Etymonline dates the modern chemical class sense to 1790; older material and figurative senses remain separately described.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(328,216,'Pokorny etymon legh-','supports','Documents the reconstructed root and reflex family without a single map point.'),
(329,215,'lag entries; Old Norse language note','supports','Documents attested lag meanings and the Old Norse language horizon.'),
(329,216,'Old Norse reflexes lag and lög','supports','Documents the law and laying family in North Germanic.'),
(330,47,'Word History and First Known Use','supports','Reports Old English lagu, Scandinavian origin, and use before the twelfth century.'),
(331,47,'Definitions and Word History','supports','Documents the inherited English word and its modern legal, institutional, and scientific senses.'),
(331,214,'Headword history and semantic chronology','context','Documents Middle English laue and several later extensions.'),
(332,217,'Word History: Greek arithmētikē and arithmos','supports','Documents the Greek number and counting-art stages.'),
(332,58,'ARITHMETIC section','context','Distinguishes Greek theoretical arithmetike from practical logistike.'),
(333,218,'Headword history: Old French 12th century and mid-13th-century English','supports','Documents the medieval transmission horizons.'),
(333,217,'Word History: Latin and Anglo-French chain','supports','Independently documents the learned route.'),
(334,218,'Headword history: mid-13c. arsmetike','supports','Supports the approximate 1250 horizon.'),
(334,217,'First Known Use: 15th century','challenges','Preserves the later institutional first-use report.'),
(335,218,'Headword history and spelling correction','supports','Documents the earlier English horizon and later classical respelling.'),
(336,223,'Headword history: PIE *meue-','supports','Documents the reconstructed movement root without a point location.'),
(337,222,'Word History: Latin emovēre through Old and Middle French','supports','Documents the transmission route.'),
(337,223,'Headword history: French émotion and Old French emouvoir','supports','Supplies the historical stages and meanings.'),
(338,222,'First Known Use: 1579; obsolete disturbance sense','supports','Reports the exact lexicographic horizon and early sense.'),
(339,221,'First Known Use: 1987; definition','supports','Reports the open English horizon and keyboard-character sense.'),
(339,131,'How do emoji differ from emoticons?','context','Documents ASCII sequences and the contrast with emoji.'),
(340,15,'Appendix 2, Proto-Indo-European salt item','supports','Documents the laryngeal root representation without a point location.'),
(340,228,'Pokorny etymon sal-','context','Documents the alternative comparative notation and reflex set.'),
(341,227,'Headword history: Proto-Germanic *saltom and Old English sealt','supports','Documents the Germanic-to-English chain.'),
(341,228,'sal- reflex list: Old English and Germanic forms','supports','Independently supplies comparative reflexes.'),
(342,226,'Word History and First Known Use','supports','Reports Old English sealt and use before the twelfth century.'),
(343,227,'Headword semantic history: chemical sense from 1790 and figurative extensions','supports','Documents the dated chemical extension and continuing figurative uses.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(145,87,'Is English law the source of legal—or vice versa?','No. Law comes through Old English lagu from Scandinavian; legal comes through Anglo-French and Latin legalis from lēx. Their shared modern subject matter is not an immediate genealogical relationship.','established','Merriam-Webster publishes distinct immediate histories for law and legal.','resolved','The dossiers remain separate until their explicitly competing deep routes are reached.'),
(146,87,'Can Latin lēx and Germanic law converge at *legh-?','Possibly, but uncertain. American Heritage presents Latin lēx from *leǵ- as one analysis and separately allows a possible “laid down” route from *legh-.','proposed','The roots appendix explicitly labels the *legh- comparison possible but uncertain; the existing legal dossier also preserves a separate *leǵ- / *sleǵ- dispute.','open','The canonical graph publishes a proposed competing edge from lēx to *legh- without replacing the existing route.'),
(147,88,'Are arithmetic and algorithm cognates?','No. Arithmetic descends through Greek arithmos “number.” Algorithm descends from al-Khwārizmī''s name; arithmos influenced the later spelling rather than supplying the ancestor.','established','American Heritage and MacTutor explicitly distinguish the ancestry from the spelling influence.','resolved','The connection is a cited historical-context link, not a lexical edge.'),
(148,88,'Does the English record begin in the 13th or 15th century?','The reviewed source reports differ. Etymonline gives mid-thirteenth-century arsmetike; Merriam-Webster gives a fifteenth-century first-known-use horizon.','probable','Two historical dictionary records publish different English horizons.','open','Both reports remain visible pending direct inspection and reconciliation of their underlying objects.'),
(149,88,'Is the deepest counting root *h₂rei- or *erei-dhmo- from *re-?','The references use different levels and notations: Merriam-Webster derives the Greek base through *h₂rei-, while Etymonline prints an expanded *erei-dhmo- formation tied to *re-.','proposed','The sources agree on a counting family but not one directly interchangeable string representation.','open','The linear route uses *h₂rei- and explicitly records the competing expanded formation.'),
(150,89,'Is emoticon another name or etymology for emoji?','No. Emoticon is English emotion plus icon. Emoji is Japanese e “picture” plus moji “character.” They can depict overlapping things without sharing a word formation.','established','Unicode defines both formations side by side; Merriam-Webster separately analyzes each word.','resolved','The two dossiers are joined by a context link and rabbit hole, never by a fabricated ancestry edge.'),
(151,89,'Was emoticon first used in 1987 or only by 1992?','Merriam-Webster reports first known use in 1987; Etymonline reports the word by January 1992 and quotes an August 1992 explanation.','established','The sources differ in their reported earliest horizons while agreeing on emotion plus icon.','open','1987 is retained as the earlier lexicographic horizon; the later published report remains visible pending direct primary-object review.'),
(152,89,'Can icon be securely reconstructed beyond Greek eikōn?','Not from the reviewed evidence. Merriam-Webster calls the proposed deeper base uncertain and a Lithuanian comparison doubtful; Etymonline likewise stops at uncertain Greek prehistory.','boundary','Both headword histories explicitly qualify the Greek form''s deeper origin.','open','The icon branch ends at a separate cited knowledge boundary.'),
(153,90,'Does the salt relationship prove soldiers were paid in salt?','No. Salt and salary belong to the same comparative salt family, but the real lexical kinship does not establish the viral literal-payment story.','established','UT LRC lists both salt and salary in the sal- reflex family; Merriam-Webster rejects the ordinary soldiers-paid-in-salt claim.','resolved','The graph connects the words while the claim layer rejects the unsupported payroll narrative.'),
(154,90,'Is the PIE salt root written *sal- or *séh₂l-?','Both appear in the reviewed references at different representational resolutions. SET-U reuses *séh₂l- as the canonical dossier node and records *sal- as an alternative notation, not a second word.','proposed','Mallory and Adams supply the laryngeal representation; UT LRC and Etymonline print *sal-.','open','The dispute concerns reconstruction notation and analysis, not whether the daughter words belong to a salt family.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(145,47,'Word History: Old English lagu, of Scandinavian origin','supports','Documents law''s immediate Scandinavian and Germanic route.'),
(145,41,'Word History: Anglo-French legal from Latin legalis and lex','supports','Documents legal''s distinct immediate Latin route.'),
(146,212,'Roots *leg- and *legh-: possible but uncertain lēx comparison','supports','Explicitly publishes the alternative deep convergence while qualifying it.'),
(146,38,'Argument for *sleg- behind Latin lex','context','Documents the competing gather-root analysis already preserved for legal.'),
(147,220,'Etymology and Word History: variant of algorism influenced by arithmetic / arithmos','supports','Separates the eponymic ancestor from the spelling influence.'),
(147,217,'Word History: arithmetic from Greek arithmos','supports','Documents arithmetic''s independent ancestry.'),
(147,58,'ALGORITHM and ARITHMETIC sections','context','Independently documents both histories and the influence statement.'),
(148,218,'Headword history: mid-13c. arsmetike','supports','Publishes the earlier English horizon.'),
(148,217,'First Known Use: 15th century','challenges','Publishes the later first-known-use horizon.'),
(149,219,'Word History: *h₂rei-','supports','Publishes the root followed in the linear path.'),
(149,218,'Headword history: *erei-dhmo- from *re-','challenges','Publishes the competing formation and notation.'),
(150,131,'What are emoji?; How do emoji differ from emoticons?','supports','Places the two formations side by side and distinguishes their origins.'),
(150,221,'Word History: emotion + icon','supports','Documents the English compound.'),
(151,221,'First Known Use: 1987','supports','Publishes the earlier first-use horizon.'),
(151,223,'Emoticon entry link: by January 1992; PC Magazine August 1992','challenges','Publishes the later documentary horizon and example.'),
(152,224,'Word History note: Greek base of uncertain origin; Lithuanian comparison doubtful','supports','Explicitly limits deeper reconstruction.'),
(152,225,'Headword history: Greek eikenai of uncertain origin','supports','Independently supports the knowledge boundary.'),
(153,228,'sal- reflex list: salt, salary, Latin salarium and sal','supports','Documents genuine comparative family membership.'),
(153,13,'Word History and etymology note','supports','Documents the salt morphology while rejecting the ordinary literal-salt wage story.'),
(154,15,'Appendix 2, Proto-Indo-European salt item','supports','Supplies *séh₂l- in the existing dossier tradition.'),
(154,228,'Pokorny etymon sal-','challenges','Supplies the consonantal alternative notation.'),
(154,227,'Headword history: PIE *sal-','context','Shows the same alternative in another reviewed reference.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(72,87,2001,'law','Law and legal are semantic twins, not direct relatives.','Law comes from Scandinavian “what is laid down”; legal comes from Latin lēx. Only a possible, explicitly uncertain prehistoric route may reconnect them.','A−',100,'Immediate lineages are established; the dramatic deep convergence is published only as proposed.'),
(73,88,2002,'arithmetic','Arithmetic put the “ithm” into algorithm without becoming its ancestor.','Arithmetic carries Greek arithmos “number.” Algorithm carries al-Khwārizmī''s name; arithmos influenced its spelling, not its genealogy.','A',100,'Two institutional references distinguish ancestry from spelling influence.'),
(74,89,2003,'emoticon','Only one of emoticon and emoji contains emotion.','Emoticon is English emotion plus icon. Emoji is Japanese picture plus character: conceptual neighbors, unrelated formations.','A',100,'Unicode directly contrasts both formations and their technical histories.'),
(75,90,2004,'salt','Salary is truly salt''s cousin—and the famous story is still false.','Salt and salary meet in the inherited salt family. Real kinship does not prove Roman soldiers received ordinary wages in literal salt.','A',99,'Comparative kinship and rejection of the viral payment claim are independently cited.');
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
(72,47,'Word History: Old English lagu, of Scandinavian origin','supports','Documents law''s immediate ancestry.'),
(72,41,'Word History: Latin legalis from lex','supports','Documents legal''s distinct immediate ancestry.'),
(72,212,'Roots *leg- and *legh-: possible but uncertain lēx comparison','context','Qualifies the possible deep reconnection.'),
(73,220,'Etymology and Word History','supports','Directly distinguishes algorithm''s al-Khwārizmī ancestry from arithmetic''s spelling influence.'),
(73,217,'Word History: Greek arithmos','supports','Documents arithmetic''s independent number-word ancestry.'),
(73,58,'ALGORITHM section: influenced by Greek arithmos','supports','Independently documents the spelling influence.'),
(74,131,'What are emoji?; How do emoji differ from emoticons?','supports','Directly contrasts Japanese picture-character with English emotion-plus-icon.'),
(74,221,'Word History: emotion + icon','supports','Documents the emoticon compound.'),
(75,228,'sal- reflex list: English salt and salary; Latin sal and salarium','supports','Documents genuine comparative kinship.'),
(75,13,'Word History and etymology note','supports','Documents the salt relationship while rejecting the literal-wage story.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(4,87,10,'semantic_twins_disputed_deep_convergence','SAME SUBJECT, DIFFERENT WORD HISTORIES','Law reaches Old English lagu and Old Norse lög in the *legh- “lie, lay” family. Legal reaches Latin lēx, usually compared with *leǵ- “gather.” A published alternative allows lēx to come from *legh-, but explicitly calls that route uncertain.','Merriam-Webster · American Heritage Dictionary editors','proposed','reviewed'),
(5,88,15,'spelling_influence_not_ancestry','THE RESEMBLANCE IS REAL; THE COGNACY IS NOT','Arithmetic descends from Greek arithmos “number.” Algorithm descends from the name al-Khwārizmī, but its modern spelling was probably influenced by arithmetic or arithmos. Orthographic influence is historical evidence, not shared ancestry.','American Heritage Dictionary · MacTutor editors','established','reviewed'),
(6,89,51,'parallel_digital_symbol_formation','TWO VISUAL LANGUAGES, TWO WORD FORMATIONS','Emoticon is English emotion plus icon and originally denotes character sequences. Emoji is borrowed from Japanese e “picture” plus moji “character.” Their uses overlap, but their lexical parents do not.','Unicode Consortium · Merriam-Webster editors','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(4,47,'Word History: Scandinavian Old English lagu','supports','Documents law''s route.'),
(4,41,'Word History: Latin legalis and lex','supports','Documents legal''s route.'),
(4,212,'Roots *leg- and *legh-: possible but uncertain lēx comparison','context','Documents and qualifies the possible deep convergence.'),
(5,220,'Etymology and Word History','supports','Directly identifies arithmetic influence on algorithm without making it an ancestor.'),
(5,58,'ALGORITHM and ARITHMETIC sections','supports','Independently documents the two routes and influence.'),
(5,217,'Word History: Greek arithmos','context','Documents arithmetic''s number-word ancestry.'),
(5,53,'Word History: algorithm through algorism and al-Khwārizmī','context','Documents algorithm''s eponymic ancestry.'),
(6,131,'What are emoji?; How do emoji differ from emoticons?','supports','Directly contrasts the two formations and technical categories.'),
(6,221,'Word History: emotion + icon','supports','Documents the English compound.'),
(6,130,'Word History: Japanese e plus moji','context','Documents the Japanese compound route.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(50,87,10,'THE TWO LAWS MAY MEET ONLY IN THE FOG','Law is securely Scandinavian and Germanic; legal is securely Latin. American Heritage permits a deep *legh- convergence for lēx—but labels it possible and uncertain.',100,'A−','reviewed'),
(51,88,15,'A GREEK NUMBER RESHAPED AN ARABIC NAME','Arithmetic and algorithm are not cognates. Greek arithmos helped respell the descendant of al-Khwārizmī''s name, leaving a real historical resemblance without shared ancestry.',100,'A','reviewed'),
(52,89,51,'THE PICTURE CHARACTER IS NOT THE EMOTIONAL ICON','Emoji is Japanese picture plus character; emoticon is English emotion plus icon. The visual category converged while the word histories stayed separate.',100,'A','reviewed'),
(53,90,3,'THE FAMILY IS REAL; THE PAYROLL STORY IS NOT','Salt and salary genuinely meet in the inherited salt family. That evidence cannot be stretched into ordinary Roman wages paid in literal salt.',99,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id BETWEEN 87 AND 90
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
WHERE f.entry_id BETWEEN 87 AND 90;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 87 AND 90;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 87 AND 90;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 87 AND 90;
--> statement-breakpoint

INSERT INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:1:icon:attested:sense:image-component',1,'icon','icon','image-component',NULL,'/ˈaɪkɒn/','attested','1572–today',1572,NULL,'image, likeness, representative symbol, or computer-display symbol','Graph-only second component of emoticon. Merriam-Webster and Etymonline trace it through Late Latin to Greek eikōn and stop at uncertain Greek prehistory.','reviewed'),
('node:9:icon:attested:sense:image-loan',9,'īcōn','icon','image-loan',NULL,NULL,'attested','Late Latin',200,700,'image or likeness','Graph-only Latin transmission stage for the icon component, directly cited from both headword histories.','reviewed'),
('node:10:eikon:attested:sense:image-likeness',10,'εἰκών','eikon','image-likeness','eikṓn',NULL,'attested','Ancient Greek',-700,600,'representation, image, or likeness','Graph-only Greek source stage for icon; deeper origin is explicitly uncertain.','reviewed'),
('boundary:graph:emoticon-icon',7,'UNKNOWN','unknown','icon-origin-boundary',NULL,NULL,'boundary','before uncertain Greek image-word prehistory',NULL,NULL,'No secure ancestor is promoted beyond Greek eikōn.','Graph-only cited boundary for emoticon''s icon component.','reviewed'),
('node:9:ex-e:attested:sense:out-prefix',9,'ex- / ē-','ex e','out-prefix',NULL,NULL,'attested','Latin antiquity',-700,500,'out; away from','Graph-only second component of Latin emovere, directly identified by Merriam-Webster and Etymonline.','reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:lex:attested'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:legh:reconstructed'),'competing_inheritance','A published alternative derives Latin lēx from a laid-down formation in *legh- rather than the gather root *leǵ-.','What is set or laid down becomes a law; the comparison would reconnect law and legal only at a disputed prehistoric depth.','Calvert Watkins · American Heritage Dictionary editors','proposed','The source explicitly calls the route possible but uncertain, and the existing *leǵ- / *sleǵ- route remains published.','Latin prehistory; no exact transition date is claimed.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:emoticon:attested:sense:keyboard-expression-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:icon:attested:sense:image-component'),'compound_component','English emoticon truncates and combines emotion with icon.','The representative-image component supplies the visual-sign side of a keyboard expression.','Merriam-Webster · Unicode Consortium','established','This is the second component alongside the dossier''s linear emotion branch.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:icon:attested:sense:image-component'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:icon:attested:sense:image-loan'),'borrowing','English icon borrows Late Latin īcōn with English stress and vowel adaptation.','Image and likeness extend into religious, symbolic, cultural, and computing senses.','Merriam-Webster · Etymonline editors','established',NULL,'English first-known-use is reported in 1572.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:icon:attested:sense:image-loan'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:eikon:attested:sense:image-likeness'),'borrowing','Late Latin īcōn borrows and adapts Greek eikōn.','The representation, image, and likeness field remains central.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:eikon:attested:sense:image-likeness'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:emoticon-icon'),'knowledge_boundary','No older form is promoted beyond Greek eikōn because the proposed base is uncertain.','The image-and-likeness family reaches a stated evidentiary horizon.','Merriam-Webster · Etymonline editors','boundary','A proposed Lithuanian comparison is reported as doubtful.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:emovere:attested:sense:move-out'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:ex-e:attested:sense:out-prefix'),'compound_component','Latin ēmovēre contains ex- / ē- “out” alongside movēre “move.”','The outward-direction prefix supplies removal and displacement to the movement verb.','Merriam-Webster · Etymonline editors','established','This graph branch preserves the prefix while the linear dossier follows movēre.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:lex:attested' AND p.canonical_key='node:6:legh:reconstructed' AND e.relation_type='competing_inheritance'),212,'Roots *leg- and *legh-: possible but uncertain lēx comparison','supports','Publishes the alternative while explicitly preventing an established grade.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:emoticon:attested:sense:keyboard-expression-compound' AND p.canonical_key='node:1:icon:attested:sense:image-component' AND e.relation_type='compound_component'),221,'Word History: emotion + icon','supports','Directly identifies icon as the second compound component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:emoticon:attested:sense:keyboard-expression-compound' AND p.canonical_key='node:1:icon:attested:sense:image-component' AND e.relation_type='compound_component'),131,'How do emoji differ from emoticons?','supports','Independently identifies emotion plus icon.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:icon:attested:sense:image-component' AND p.canonical_key='node:9:icon:attested:sense:image-loan' AND e.relation_type='borrowing'),224,'Word History: Late Latin icon','supports','Documents the English borrowing.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:icon:attested:sense:image-component' AND p.canonical_key='node:9:icon:attested:sense:image-loan' AND e.relation_type='borrowing'),225,'Headword history: Late Latin icon','supports','Independently documents the route.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:icon:attested:sense:image-loan' AND p.canonical_key='node:10:eikon:attested:sense:image-likeness' AND e.relation_type='borrowing'),224,'Word History: Late Latin borrowed from Greek eikōn','supports','Documents the Greek source.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:icon:attested:sense:image-loan' AND p.canonical_key='node:10:eikon:attested:sense:image-likeness' AND e.relation_type='borrowing'),225,'Headword history: Greek eikon','supports','Independently documents the source.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:eikon:attested:sense:image-likeness' AND p.canonical_key='boundary:graph:emoticon-icon' AND e.relation_type='knowledge_boundary'),224,'Word History note: uncertain origin and doubtful Lithuanian comparison','supports','Directly supports the boundary.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:eikon:attested:sense:image-likeness' AND p.canonical_key='boundary:graph:emoticon-icon' AND e.relation_type='knowledge_boundary'),225,'Headword history: Greek eikenai of uncertain origin','supports','Independently supports the boundary.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:emovere:attested:sense:move-out' AND p.canonical_key='node:9:ex-e:attested:sense:out-prefix' AND e.relation_type='compound_component'),222,'Word History: e- plus movēre','supports','Directly identifies the prefix component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:emovere:attested:sense:move-out' AND p.canonical_key='node:9:ex-e:attested:sense:out-prefix' AND e.relation_type='compound_component'),223,'Headword history: ex “out” plus movere','supports','Independently identifies the prefix component.');
