-- Promote four latent graph members into independently searchable dossiers.
-- Algorism reveals the older word behind algorithm, emotion and icon become
-- first-class parents of emoticon, and verbal lay joins law at *legh- without
-- collapsing its unrelated English homonyms.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(91,'algorism','algorism','algorism','/ˈælɡəˌrɪzəm/','noun','The older English word for calculation with Hindu-Arabic numerals, transmitted through French and Medieval Latin from the name al-Khwārizmī.','Algorithm is the altered descendant. Algorism came first; the later “th” reflects influence from Greek arithmos and arithmetic, not a Greek ancestor of the name.','reviewed'),
(92,'emotion','emotion','emotion','/ɪˈmoʊʃən/','noun','Feeling or affect; borrowed through French from a Latin movement family and first used in English for disturbance, agitation, or social movement.','Emotion was public motion before it became private feeling. The strong inward-feeling sense is a later semantic development, not the word''s starting point.','reviewed'),
(93,'icon','icon','icon','/ˈaɪkɒn/','noun','An image, likeness, representative figure, or display symbol, borrowed through Late Latin from Greek eikōn.','Before celebrity and computing, an icon was an image or likeness. The Greek word is attested, but its deeper origin is uncertain: rigor means stopping there.','reviewed'),
(94,'lay','lay','lay','/leɪ/','verb','To put, place, or set down; an inherited causative verb in the same deep lie-and-lay family that produced law.','Lay and law meet at *legh-, but lay the poem, lay meaning non-clerical, and lay as the past tense of lie are not one etymological word.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(229,'etymonline-algorism','Algorism — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/algorism',NULL,'historical_dictionary'),
(230,'mw-lay','Lay — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/lay',NULL,'historical_dictionary'),
(231,'etymonline-lay','Lay — Origin and history','Douglas Harper',2026,'Online Etymology Dictionary','https://www.etymonline.com/word/lay',NULL,'historical_dictionary'),
(232,'ahd-lay','American Heritage Dictionary: lay','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=lay',NULL,'historical_dictionary'),
(233,'ahd-emotion','American Heritage Dictionary: emotion','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=emotion',NULL,'historical_dictionary'),
(234,'ahd-icon','American Heritage Dictionary: icon','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=icon',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(549,91,1,1,'algorism','algorism','arabic-numeral-calculation',NULL,'/ˈælɡəˌrɪzəm/','attested','early 13th century–today',1200,NULL,'calculation with Hindu-Arabic numerals; an arithmetic rule or procedure','Now chiefly historical, but retained as an English headword distinct from its altered descendant algorithm.'),
(550,91,2,2,'algorisme / augrim','algorisme augrim','default',NULL,NULL,'attested','Middle English, 13th–15th centuries',1200,1500,'arithmetic using Hindu-Arabic numerals','This form reuses the canonical Middle English node already reached by algorithm.'),
(551,91,8,3,'algorisme / augorisme','algorisme augorisme','reckoning-art',NULL,NULL,'attested','Old French, 12th–14th centuries',1100,1400,'the art of reckoning with Hindu-Arabic numerals','The sources allow French and Medieval Latin transmission; the canonical graph preserves both routes.'),
(552,91,14,4,'algorismus','algorismus','default',NULL,NULL,'attested','Medieval Latin, 12th–15th centuries',1100,1500,'arithmetic; computation with Hindu-Arabic numerals','Reuses the Latinized-name node already reached by algorithm.'),
(553,91,15,5,'al-Khwārizmī','al-khwarizmi','default','al-Khwārizmī',NULL,'attested','9th century',780,850,'the Khwārizmian; name of Muḥammad ibn Mūsā al-Khwārizmī','A personal nisba, not a reconstructed root.'),
(554,91,15,6,'Khwārizm','khwarizm','default','Khwārizm',NULL,'attested','early medieval and older geographic record',500,900,'Khwārizm, a region south of the Aral Sea','The deeper origin of the place name is not promoted here.'),
(555,91,7,7,'UNKNOWN','unknown','algorism-toponym-boundary',NULL,NULL,'boundary','before the recoverable toponym',NULL,NULL,'No securely demonstrated lexical ancestor of the place name is presented.','The trail ends at a geographic name rather than an invented root.'),

(556,92,1,1,'emotion','emotion','feeling-component',NULL,'/ɪˈmoʊʃən/','attested','1579–today',1579,NULL,'feeling; originally also disturbance, agitation, or social movement','Reuses the canonical emotion component already exposed beneath emoticon.'),
(557,92,18,2,'émotion','emotion','agitation-movement',NULL,NULL,'attested','Middle French, 16th century',1500,1600,'movement, agitation, or disturbance',NULL),
(558,92,8,3,'emouvoir / esmovoir','emouvoir esmovoir','stir-up-move',NULL,NULL,'attested','Old French, 12th century onward',1100,1500,'to stir up, move, or agitate',NULL),
(559,92,9,4,'ēmovēre','emovere','move-out',NULL,NULL,'attested','Latin antiquity',-700,500,'to move out, remove, displace, or agitate','Latin ex- / ē- remains visible as a second cited canonical component.'),
(560,92,9,5,'movēre','movere','move',NULL,NULL,'attested','Latin antiquity',-700,500,'to move',NULL),
(561,92,6,6,'*meue-','meue','push-away',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to push away','The notation follows the reviewed Etymonline reconstruction.'),
(562,92,7,7,'UNKNOWN','unknown','emotion-deep-boundary',NULL,NULL,'boundary','before the reconstructed movement root',NULL,NULL,'No securely reconstructed ancestor is promoted beyond *meue-.','A published reconstruction is a horizon, not permission to invent another root.'),

(563,93,1,1,'icon','icon','image-component',NULL,'/ˈaɪkɒn/','attested','1572–today',1572,NULL,'image, likeness, representative symbol, or computer-display symbol','Reuses the canonical icon component already exposed beneath emoticon.'),
(564,93,9,2,'īcōn','icon','image-loan',NULL,NULL,'attested','Late Latin',200,700,'image or likeness',NULL),
(565,93,10,3,'εἰκών','eikon','image-likeness','eikṓn',NULL,'attested','Ancient Greek',-700,600,'representation, image, or likeness','The proposed base beyond Greek remains uncertain.'),
(566,93,7,4,'UNKNOWN','unknown','icon-origin-boundary',NULL,NULL,'boundary','before uncertain Greek image-word prehistory',NULL,NULL,'No secure ancestor is promoted beyond Greek eikōn.','A proposed Lithuanian comparison is reported as doubtful.'),

(567,94,1,1,'lay','lay','set-down-verb',NULL,'/leɪ/','attested','Middle English continuation–today',1150,NULL,'to put, place, or set down','This dossier follows only the transitive set-down verb.'),
(568,94,2,2,'leggen / leyen','leggen leyen','set-down-verb',NULL,NULL,'attested','Middle English',1150,1500,'to put, place, or set down',NULL),
(569,94,3,3,'lecgan','lecgan','set-down-verb',NULL,NULL,'attested','Old English',450,1150,'to lay, put, place, or set down',NULL),
(570,94,5,4,'*lagojanan','lagojanan','causative-set-down',NULL,NULL,'reconstructed','Proto-Germanic prehistory',-500,200,'to cause to lie; to lay','The exact notation follows Etymonline and remains reconstructed.'),
(571,94,6,5,'*legh-','legh','default',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to lie, recline, lay, or set down','Reuses the canonical root already reached by law.'),
(572,94,7,6,'UNKNOWN','unknown','lay-deep-boundary',NULL,NULL,'boundary','before the lie-and-lay reconstruction',NULL,NULL,'No securely reconstructed ancestor is promoted beyond *legh-.','The trail stops before conjecture and does not merge the unrelated lay homonyms.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(459,91,549,550,'historical_continuation','Middle English algorisme / augrim stabilizes as the historical headword algorism with regularized spelling and pronunciation.','Calculation with Hindu-Arabic numerals remains central; later use becomes chiefly historical.','Merriam-Webster · Etymonline editors','established',NULL,'Etymonline reports an early-thirteenth-century horizon; Merriam-Webster reports the fourteenth century.','reviewed'),
(460,91,550,551,'borrowing','Middle English forms adapt Old French algorisme / augorisme with variable vowels, consonants, and endings.','The art of reckoning with Hindu-Arabic numerals remains central.','Merriam-Webster · Etymonline editors','probable','Merriam-Webster also allows direct Medieval Latin transmission; the canonical graph preserves that already-cited parent as a parallel route.',NULL,'reviewed'),
(461,91,551,552,'borrowing','Old French algorisme / augorisme adapts Medieval Latin algorismus with Romance vowel and ending changes.','The learned arithmetic term enters vernacular calculation vocabulary.','Merriam-Webster · Etymonline · MacTutor editors','probable','The sources describe French and Latin stages without reducing every spelling to one transmission event.',NULL,'reviewed'),
(462,91,552,553,'eponymic_borrowing','The Arabic name al-Khwārizmī was heavily Latinized as Algoritmi / algorismus; the initial article was absorbed into the form.','A scholar''s geographic name came to denote the arithmetic associated with transmitted texts.','Merriam-Webster · MacTutor editors','established',NULL,'Latin arithmetic texts circulated from the 12th century.','reviewed'),
(463,91,553,554,'nisba_derivation','Arabic al- plus Khwārizm plus the relational suffix -ī forms “the Khwārizmian.”','A place of origin becomes a personal identifier.','Arabic onomastic analysis · Merriam-Webster editors','established',NULL,'Name attested for the 9th-century scholar.','reviewed'),
(464,91,554,555,'knowledge_boundary','No deeper analysis of the toponym is promoted without dedicated Iranian and Central Asian onomastic review.','The graph stops at the geographic name rather than inventing a lexical root.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(465,92,556,557,'borrowing','English emotion borrows Middle French émotion with English stress and vowel adaptation.','Movement, disturbance, and agitation develop toward strong feeling and later feeling generally.','Merriam-Webster · Etymonline editors','established',NULL,'Merriam-Webster reports English use in 1579; Etymonline places the earliest horizon in the 1570s.','reviewed'),
(466,92,557,558,'derivation','Middle French émotion is formed in the Old French emouvoir / esmovoir movement family.','The act or state of stirring and agitation becomes the abstract noun.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(467,92,558,559,'borrowing','Old French emouvoir / esmovoir continues Latin ēmovēre with Romance sound and spelling development.','Moving out or displacing extends to stirring and agitation.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(468,92,559,560,'prefixed_derivation','Latin ēmovēre combines ex- / ē- “out” with movēre “move”; this linear path follows the verbal base.','Moving out, removing, or displacing develops an agitation sense.','Merriam-Webster · Etymonline editors','established','The ex- component is also modeled as a cited graph branch.',NULL,'reviewed'),
(469,92,560,561,'inheritance','Latin movēre is assigned to the PIE movement root *meue- in the reviewed source.','Physical pushing and movement underlie the later agitation and feeling family.','Etymonline editors','probable','The exact PIE notation follows the reviewed reference.',NULL,'reviewed'),
(470,92,561,562,'knowledge_boundary','No older form is promoted beyond *meue-.','The standalone emotion dossier stops at its cited movement reconstruction.','SET-U editorial boundary · Etymonline','boundary',NULL,NULL,'reviewed'),

(471,93,563,564,'borrowing','English icon borrows Late Latin īcōn with English stress and vowel adaptation.','Image and likeness extend into religious, symbolic, cultural, and computing senses.','Merriam-Webster · Etymonline editors','established',NULL,'English first-known-use is reported in 1572.','reviewed'),
(472,93,564,565,'borrowing','Late Latin īcōn borrows and adapts Greek eikōn.','The representation, image, and likeness field remains central.','Merriam-Webster · Etymonline editors','established',NULL,NULL,'reviewed'),
(473,93,565,566,'knowledge_boundary','No older form is promoted beyond Greek eikōn because the proposed base is uncertain.','The image-and-likeness family reaches a stated evidentiary horizon.','Merriam-Webster · Etymonline editors','boundary','A proposed Lithuanian comparison is reported as doubtful.',NULL,'reviewed'),

(474,94,567,568,'historical_continuation','Middle English leggen / leyen stabilizes as lay while pronunciation and spelling converge on the modern form.','Putting or setting down remains central while many constructions and figurative uses develop.','Merriam-Webster · Etymonline · American Heritage editors','established',NULL,NULL,'reviewed'),
(475,94,568,569,'inheritance','Old English lecgan continues into Middle English with palatal and spelling developments represented by leggen and leyen.','The causative set-down meaning remains stable.','Merriam-Webster · Etymonline · American Heritage editors','established',NULL,NULL,'reviewed'),
(476,94,569,570,'inheritance','Old English lecgan continues reconstructed Proto-Germanic *lagojanan with West Germanic sound development.','To cause something to lie yields the transitive verb to lay or set down.','Etymonline · UT LRC editors','probable','The Proto-Germanic form and exact phonological sequence are reconstructed.',NULL,'reviewed'),
(477,94,570,571,'inheritance','Proto-Germanic *lagojanan is a causative formation in the PIE *legh- lie-and-lay family.','A state of lying supplies a causative act of putting or setting down.','Etymonline · UT LRC editors','probable','The comparative family is secure while the intermediate form is reconstructed.',NULL,'reviewed'),
(478,94,571,572,'knowledge_boundary','No older form is promoted beyond the comparative *legh- horizon.','The graph stops without merging the unrelated poem, non-clerical, or past-tense homonyms.','SET-U editorial boundary · UT LRC','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(459,54,'Etymology and First Known Use','supports','Documents the English headword and fourteenth-century report.'),
(459,229,'Headword history: early 13c. algorism and Middle English variants','supports','Documents the earlier English horizon and historical continuation.'),
(460,54,'Word History: Middle English and Middle French algorisme','supports','Documents the French transmission route while also allowing Medieval Latin.'),
(460,229,'Headword history: Old French algorisme / augorisme','supports','Independently documents the French stage.'),
(461,54,'Word History: Middle French and Medieval Latin algorismus','supports','Documents the French and Latin stages.'),
(461,58,'ALGORITHM entry: French algorisme from Latin algorismus','supports','Independently documents the learned transmission.'),
(462,54,'Medieval Latin algorismus from Arabic al-khuwārizmi','supports','Documents the eponymic borrowing.'),
(462,58,'ALGORITHM entry','supports','Documents the Latinization of the scholar''s name.'),
(463,54,'Arabic al-khuwārizmi','supports','Identifies the geographic personal name behind the word family.'),
(464,54,'al-Khuwārizmī endpoint','supports','The reviewed headword history identifies the personal name but does not supply a secure deeper etymology for the place name.'),

(465,222,'Word History: Middle French; First Known Use 1579','supports','Documents the borrowing and earliest reported English horizon.'),
(465,223,'Headword history: French émotion; strong-feeling sense by the 1650s','supports','Documents the semantic movement from agitation toward feeling.'),
(465,233,'Word History: French émotion','supports','Independently documents the borrowing chain.'),
(466,222,'Word History: from emouvoir','supports','Documents the noun''s verbal family.'),
(466,223,'Headword history: French émotion from Old French emouvoir','supports','Independently documents the derivation.'),
(467,222,'Word History: Old French esmovoir from Latin emovēre','supports','Documents the Romance continuation.'),
(467,233,'Etymology: Old French esmovoir from Latin exmovere','supports','Independently documents the Latin source.'),
(468,222,'Word History: emovēre from e- plus movēre','supports','Documents the prefixed formation.'),
(468,233,'Etymology: Latin ex- plus movere','supports','Independently identifies both components.'),
(469,223,'Headword history: movere from PIE *meue-','supports','Publishes the movement-root analysis.'),
(470,223,'PIE *meue- endpoint in the reviewed headword history','supports','Supports stopping beyond the cited root.'),

(471,224,'Word History: Late Latin icon; First Known Use 1572','supports','Documents the English borrowing and exact lexicographic horizon.'),
(471,225,'Headword history: Late Latin icon','supports','Independently documents the route.'),
(471,234,'Word History: Latin icon','supports','Provides a third historical-dictionary account.'),
(472,224,'Word History: Late Latin borrowed from Greek eikōn','supports','Documents the Greek source.'),
(472,225,'Headword history: Greek eikon','supports','Independently documents the source.'),
(472,234,'Etymology: Greek eikōn','supports','Independently supplies the Greek form.'),
(473,224,'Word History note: uncertain origin and doubtful Lithuanian comparison','supports','Directly supports the boundary.'),
(473,225,'Headword history: Greek eikenai of uncertain origin','supports','Independently supports the boundary.'),

(474,230,'Word History and verb senses','supports','Documents the English verb and its Middle English history.'),
(474,231,'Headword history: Middle English leien','supports','Documents the Middle English continuation.'),
(474,232,'Word History: Middle English leien','supports','Independently documents the same stage.'),
(475,230,'Word History: Old English lecgan','supports','Documents the Old English parent.'),
(475,232,'Etymology: Old English lecgan','supports','Independently documents the inherited route.'),
(476,231,'Headword history: Proto-Germanic *lagojanan','supports','Publishes the reconstructed Germanic stage.'),
(476,216,'legh- reflex list: Old English lecgan and Middle English leggen / leyen','supports','Supplies comparative support for the English stages.'),
(477,231,'Headword history: *lagojanan from PIE *legh-','supports','Publishes the causative formation and deeper root.'),
(477,216,'Pokorny etymon legh- and English lay reflexes','supports','Independently situates lay in the lie-and-lay family.'),
(478,216,'Pokorny etymon legh-','supports','Supports stopping at the reviewed reconstructed horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(126,549,54,'14th century',1350,'Merriam-Webster source-reported English record','First Known Use','Algorism in the arithmetic or Hindu-Arabic-numeral sense.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected medieval object; Etymonline reports an earlier early-thirteenth-century horizon.'),
(127,556,222,'1579',1579,'Merriam-Webster source-reported English record','First Known Use','Emotion in the disturbance, agitation, or movement sense.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected 1579 object or proof of coinage.'),
(128,563,224,'1572',1572,'Merriam-Webster source-reported English record','First Known Use','Icon in the image or likeness sense.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use report, not a directly inspected 1572 object; Etymonline gives the broader 1570s horizon.'),
(129,569,230,'before the 12th century',1100,'Merriam-Webster source-reported Old English record','Word History and First Known Use','Old English lecgan; verb use before the twelfth century.','established','lexicographic_first_use',NULL,NULL,NULL,0,'A lexicographic first-use horizon attached to the Old English form, not a directly inspected primary object or proof of coinage.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(293,91,'algorithm','English','altered descendant influenced in spelling by arithmetic',58),
(295,91,'arithmetic','English / Greek lineage','later spelling influence on algorithm, not a cognate',220),
(296,91,'augrim','Middle English','historical variant in the algorism family',229),
(297,92,'emoticon','English','compound descendant using emotion as its first component',221),
(299,92,'move','English','remote comparative movement-family relative',223),
(300,92,'commotion','English / Latin lineage','parallel prefixed formation in the movement family',233),
(301,93,'iconic','English','direct derivative in the image-and-likeness family',225),
(302,93,'iconoclast','English / Greek lineage','compound descendant built on the icon family',225),
(303,93,'eikōn','Ancient Greek','direct lexical ancestor',234),
(304,93,'emoticon','English','compound descendant using icon as its second component',221),
(305,94,'law','English','deep *legh- family relative, not a descendant of lay',216),
(306,94,'lie','English','intransitive grammatical relative in the same deep family',232);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(344,91,1,'Khwārizmian name horizon','approximately 780–850','The personal nisba al-Khwārizmī identifies the scholar through Khwārizm; this is an onomastic and regional stage, not a reconstructed lexical root.',41000000,60000000,'regional',780,850,'range','The interval locates the ninth-century scholar''s lifetime horizon rather than the coinage of the place name.'),
(345,91,2,'Medieval Latin Europe','12th century','The Latinized personal name becomes algorismus in arithmetic transmission.',48000000,8000000,'broad',1100,1199,'century','The century follows the reviewed Latin arithmetic-text horizon without asserting one first manuscript.'),
(346,91,3,'France and England','13th–14th centuries','French algorisme and English algorism / augrim carry the Hindu-Arabic reckoning term into vernacular use.',50000000,2000000,'broad',1200,1399,'range','The interval preserves Etymonline''s early-thirteenth-century horizon and Merriam-Webster''s fourteenth-century report.'),
(347,91,4,'Medieval England','14th century','Merriam-Webster reports algorism in English in the fourteenth century.',52200000,-1500000,'regional',1300,1399,'century','The century is a lexicographic report, not an inspected earliest object.'),
(348,91,5,'Global history of calculation','early 13th century–today','Algorism remains the historical name for arithmetic with Hindu-Arabic numerals while algorithm becomes its far more prominent altered descendant.',NULL,NULL,'global',1200,NULL,'open','The open interval begins at the earlier reviewed English horizon and does not claim uninterrupted frequency.'),

(349,92,1,'Indo-European linguistic horizon','reconstructed movement root','The dossier reaches reconstructed *meue-; no single archaeological point or exact calendar interval is inferred.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','A lexical reconstruction is not a place or a directly dated utterance.'),
(350,92,2,'Roman and Francophone transmission','Latin antiquity–16th century','Latin emovere develops through Old and Middle French movement, disturbance, and agitation vocabulary.',46000000,5000000,'broad',-200,1600,'range','The broad interval contains the cited Latin, medieval French, and sixteenth-century stages without dating every transition.'),
(351,92,3,'England','1579 English record','Merriam-Webster reports emotion in English first in the disturbance or agitation sense.',52200000,-1500000,'regional',1579,1579,'exact','1579 is a lexicographic first-known-use report, not proof of first speech.'),
(352,92,4,'Global English','1650s–today','Strong feeling develops by the 1650s and later broadens toward feeling generally.',NULL,NULL,'global',1650,NULL,'open','The opening decade follows the reviewed semantic history rather than one claimed first utterance.'),

(353,93,1,'Greek and Roman linguistic worlds','antiquity–Late Latin','Greek eikōn “image, likeness” passes into Late Latin īcōn.',39000000,22000000,'broad',-700,700,'range','The interval locates the attested Greek and Latin lexical stages rather than a single borrowing event.'),
(354,93,2,'England','1572 English record','Merriam-Webster reports icon in English in 1572 in the image or likeness family.',52200000,-1500000,'regional',1572,1572,'exact','1572 is a lexicographic first-known-use report, not a directly inspected object.'),
(355,93,3,'Eastern Christian and English religious discourse','1833–today','The Eastern Church sacred-image sense becomes explicit in English historical reporting.',41000000,29000000,'broad',1833,NULL,'open','The opening year follows Etymonline''s semantic-history report and does not date the older Greek religious practice itself.'),
(356,93,4,'Global computing and culture','1982–today','Icon expands into computer-display symbols while personal and cultural representative senses continue.',NULL,NULL,'global',1982,NULL,'open','The opening year follows the reviewed computing-sense horizon.'),

(357,94,1,'Indo-European linguistic horizon','reconstructed lie-and-lay root','The verb reaches reconstructed *legh-; no single archaeological point or exact interval is claimed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparative source establishes a root family, not one mapped speech event.'),
(358,94,2,'Anglo-Saxon England','before the 12th century','Old English lecgan supplies the inherited transitive set-down verb.',52500000,-1500000,'regional',NULL,1199,'before','The upper bound encodes the lexicographic “before the 12th century” horizon without inventing a first year.'),
(359,94,3,'Middle English England','approximately 1150–1500','Leggen and leyen continue the Old English verb toward modern lay.',52200000,-1500000,'regional',1150,1500,'range','The interval is the conventional Middle English language horizon, not a single sound-change date.'),
(360,94,4,'Global English','1500–today','Lay remains the transitive set-down verb while unrelated noun and adjective homonyms continue on their own histories.',NULL,NULL,'global',1500,NULL,'open','The open interval locates modern English continuation and does not merge the homonyms.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(344,54,'Arabic al-khuwārizmi “the Khwārizmian”','supports','Documents the geographic personal name and ninth-century scholarly horizon.'),
(345,58,'ALGORITHM entry: Medieval Latin algorismus and 12th-century transmission','supports','Documents the Latin arithmetic stage and century.'),
(346,229,'Headword history: Old French and early-13c. English forms','supports','Documents the vernacular transmission and earlier horizon.'),
(346,54,'Word History: Middle French and Middle English algorisme','context','Independently documents the French-English chain and later report.'),
(347,54,'First Known Use: 14th century','supports','Reports the century-level English horizon.'),
(348,229,'Headword history and algorithm comparison','supports','Documents the historical headword and its altered descendant.'),
(349,223,'Headword history: PIE *meue-','supports','Documents the reconstructed movement root without a point location.'),
(350,222,'Word History: Latin emovēre through Old and Middle French','supports','Documents the transmission route.'),
(350,233,'Word History: French, Old French, and Latin stages','context','Independently confirms the route.'),
(351,222,'First Known Use: 1579; obsolete disturbance sense','supports','Reports the exact lexicographic horizon and early sense.'),
(352,223,'Headword history: strong feeling by the 1650s; any feeling by 1808','supports','Documents the later semantic expansion.'),
(353,224,'Word History: Late Latin īcōn from Greek eikōn','supports','Documents the Greek-to-Latin lexical route.'),
(353,234,'Etymology: Latin icon from Greek eikōn','context','Independently confirms the same stages.'),
(354,224,'First Known Use: 1572','supports','Reports the exact English lexicographic horizon.'),
(355,225,'Headword semantic history: Eastern Church sense from 1833','supports','Documents the dated English religious-sense horizon.'),
(356,225,'Headword semantic history: computing sense from 1982','supports','Documents the dated computing extension.'),
(357,216,'Pokorny etymon legh-','supports','Documents the reconstructed root and reflex family without a single map point.'),
(358,230,'Word History and First Known Use: Old English lecgan, before 12th century','supports','Reports the Old English form and before-bound.'),
(359,232,'Word History: Middle English leien from Old English lecgan','supports','Documents the Middle English continuation.'),
(360,232,'Verb history and homonym entries','supports','Documents the continuing verb while separating the poem and non-clerical homonyms.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(155,91,'Does the English record begin in the 13th or 14th century?','The reviewed reports differ. Etymonline gives an early-thirteenth-century algorism; Merriam-Webster gives a fourteenth-century first-known-use horizon.','probable','Two historical dictionaries publish different English horizons.','open','Both remain visible pending inspection and reconciliation of the underlying medieval objects.'),
(156,91,'Did English algorism arrive through French or directly from Medieval Latin?','The sources preserve both channels. Merriam-Webster names Middle French and Medieval Latin; Etymonline emphasizes Old French from Medieval Latin.','probable','The historical dictionaries do not require one exclusive route for every English spelling.','open','The linear dossier follows French while the canonical graph retains the already-cited direct Medieval Latin parent of the shared Middle English node.'),
(157,91,'Was algorithm the original form and algorism a corruption?','No. Algorism is older. Algorithm is the later altered form, with its th commonly explained through Greek arithmos or arithmetic influence.','established','Merriam-Webster, American Heritage, Etymonline, and MacTutor distinguish ancestry from later respelling.','resolved','The lexical graph connects both through shared Middle English algorisme while arithmetic remains a context link, not an ancestor.'),
(158,92,'Was emotion first used in the 1570s or exactly 1579?','Etymonline gives the decade; Merriam-Webster gives 1579. These are compatible levels of precision, not proof of one first utterance.','probable','The historical dictionaries publish decade-level and exact lexicographic reports.','open','SET-U retains the exact institutional report while labeling the evidence as source-reported rather than directly inspected.'),
(159,92,'Does emotion etymologically mean “energy in motion”?','No. That slogan is a modern folk segmentation. The documented route is French émotion through emouvoir / esmovoir to Latin ex- plus movēre, literally a movement-out or stirring family.','established','Merriam-Webster, American Heritage, and Etymonline publish the French and Latin morphology.','resolved','The graph exposes the actual prefix and verb as cited parents instead of substituting an English rhyme.'),
(160,92,'Can the movement family be pushed securely beyond *meue-?','Not from the reviewed evidence. Etymonline publishes *meue- for the movement root, but this dossier does not promote an older form without specialist comparative review.','proposed','The reconstruction is cited; a deeper ancestor is not supplied by the reviewed headword sources.','open','The final node is an explicit knowledge boundary.'),
(161,93,'Can Greek eikōn be securely reconstructed further?','Not from the reviewed evidence. Merriam-Webster calls the proposed base uncertain and the Lithuanian comparison doubtful; Etymonline likewise marks the Greek prehistory uncertain.','boundary','The headword histories explicitly qualify the proposed deeper route.','open','The graph stops at Greek eikōn rather than converting a doubtful comparison into an ancestor.'),
(162,93,'Does the English record begin in the 1570s or in 1572?','Merriam-Webster reports 1572; Etymonline reports the 1570s. The exact year fits within the broader decade but remains a source-reported horizon.','probable','Two historical dictionaries publish different precision for the same early period.','open','1572 is stored as the exact lexicographic report while the broader horizon remains visible.'),
(163,93,'Are the sacred image, celebrity, and computer icon different etymological words?','No. They are semantic extensions within the image-and-likeness family; the later uses do not create separate ancestors.','established','The historical dictionaries trace the extensions under one Greek and Latin lineage.','resolved','Sense history stays on one canonical node while dated journey stages show the later expansions.'),
(164,94,'Are all English words spelled lay one historical word?','No. The set-down verb is inherited from Old English lecgan; the poem noun and non-clerical adjective come through distinct French, Latin, and Greek histories.','established','American Heritage and Merriam-Webster separate the homonym entries and their etymologies.','resolved','This dossier follows only the transitive verb and names the excluded homonyms explicitly.'),
(165,94,'Are lay and lie simply the same verb?','They are historically related but grammatically distinct inherited verbs: lay is transitive and causative, while lie is intransitive; lay is also the standard past tense of lie, which creates modern ambiguity.','established','American Heritage documents the historical relationship and the long-standing usage distinction.','resolved','The graph connects the word family without collapsing the modern lexemes or their grammatical roles.'),
(166,94,'Is Proto-Germanic *lagojanan an attested form?','No. It is a reconstruction printed by Etymonline; comparative evidence supports the family, while exact notation and intermediate morphology remain analytical.','proposed','Etymonline supplies the form and UT LRC supplies the comparative reflex set.','open','The asterisk and probable grade remain visible on the node and both adjacent edges.'),
(167,94,'Does law descend from lay—or lay from law?','Neither. They are lexical cousins whose lineages converge at reconstructed *legh-. Law reaches it through a Scandinavian nominal formation; lay reaches it through an inherited causative verb.','established','UT LRC lists both law and lay reflexes in the legh- family.','resolved','The shared canonical root creates the connection without a false direct-parent edge.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(155,229,'Headword history: early 13c. algorism','supports','Publishes the earlier English horizon.'),
(155,54,'First Known Use: 14th century','challenges','Publishes the later century-level horizon.'),
(156,54,'Word History: Middle French and Medieval Latin sources','supports','Explicitly preserves both transmission channels.'),
(156,229,'Headword history: Old French from Medieval Latin','context','Documents the French-mediated route.'),
(157,58,'ALGORITHM entry: algorithm derived from algorism and influenced by Greek arithmos','supports','Documents both chronological priority and later respelling.'),
(157,220,'Etymology and Word History','supports','Independently distinguishes the al-Khwārizmī ancestry from arithmetic influence.'),
(158,222,'First Known Use: 1579','supports','Publishes the exact institutional report.'),
(158,223,'Headword history: 1570s','context','Publishes the broader decade-level horizon.'),
(159,233,'Etymology: French émotion from exmovere, ex- plus movere','supports','Documents the actual historical morphology.'),
(159,223,'Headword history: ex “out” plus movere “move”','context','Independently supports the Latin analysis.'),
(160,223,'Headword history: PIE *meue- endpoint','supports','Publishes the reconstruction but no deeper promoted parent.'),
(161,224,'Word History note: uncertain origin and doubtful Lithuanian comparison','supports','Explicitly limits deeper reconstruction.'),
(161,225,'Headword history: Greek eikenai of uncertain origin','context','Independently supports the boundary.'),
(161,234,'Etymology ending at Greek eikōn / eikenai','context','A third source likewise does not establish a deeper ancestor.'),
(162,224,'First Known Use: 1572','supports','Publishes the exact year.'),
(162,225,'Headword history: 1570s','context','Publishes the broader decade.'),
(163,225,'Headword semantic chronology: religious, cultural, and computing senses','supports','Documents later semantic extensions under one lineage.'),
(163,224,'Definitions and Word History','context','Keeps image and likeness central across the later senses.'),
(164,232,'Separate verb, poem noun, and non-clerical adjective etymologies','supports','Directly separates the homonyms and their histories.'),
(164,230,'Separate numbered Word History entries','context','Independently distinguishes the inherited verb from the French and Latin homonyms.'),
(165,232,'Usage Note and Word History for lay and lie','supports','Documents the transitive-intransitive distinction and historical relationship.'),
(165,231,'Headword history: causative of the verb represented by lie','context','Documents the deeper grammatical relationship.'),
(166,231,'Headword history: Proto-Germanic *lagojanan','supports','Publishes the starred intermediate form.'),
(166,216,'legh- reflex list','context','Supplies the comparative family evidence.'),
(167,216,'legh- reflex list: English lay and law','supports','Places both words under the shared reconstructed root without a direct descent claim.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(76,91,2001,'algorism','Algorithm is the altered version; algorism came first.','The word began in al-Khwārizmī''s geographic name. Greek arithmos later helped put “th” into algorithm without becoming its ancestor.','A',100,'Multiple historical dictionaries and MacTutor separate descent from spelling influence.'),
(77,92,2002,'emotion','Emotion first moved crowds before it named inner feeling.','English emotion begins in disturbance, agitation, and social movement; strong feeling emerges later from the same movement-out family.','A',99,'The early social-motion sense and later feeling chronology are directly reported.'),
(78,93,2003,'icon','The honest root of icon ends in uncertainty.','Icon securely reaches Greek eikōn “image, likeness.” A proposed deeper comparison is doubtful, so the most revealing answer is the boundary itself.','A−',97,'The attested route is secure; the deliberately unresolved Greek prehistory lowers the grade.'),
(79,94,2004,'lay','Lay and law are cousins; the other lays are strangers.','The set-down verb and law meet at *legh-. Lay the poem and lay meaning non-clerical arrived through different French, Latin, and Greek histories.','A',100,'Comparative evidence joins the verb and law while three historical dictionaries separate the homonyms.');
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
(76,58,'ALGORITHM entry: algorithm from algorism, influenced by Greek arithmos','supports','Documents chronological priority and later spelling influence.'),
(76,220,'Etymology and Word History','supports','Separates al-Khwārizmī ancestry from arithmetic influence.'),
(77,223,'Headword semantic history: social moving in the 1570s; strong feeling by the 1650s','supports','Directly documents the semantic reversal in salience.'),
(77,222,'Obsolete disturbance sense and Word History','supports','Independently preserves the early agitation sense.'),
(78,224,'Word History note: Greek base uncertain; Lithuanian comparison doubtful','supports','Directly supports the secure Greek endpoint and honest boundary.'),
(78,225,'Headword history: Greek eikenai of uncertain origin','context','Independently confirms the uncertainty.'),
(79,216,'legh- reflex list: lay and law','supports','Documents the real deep relationship.'),
(79,232,'Separate etymologies for the verb, poem noun, and non-clerical adjective','supports','Documents the unrelated homonyms.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(7,91,88,'descendant_spelling_influence_not_ancestry','THE MISSING “TH” ARRIVED ONE GENERATION LATER','Algorism descends from al-Khwārizmī. Its altered descendant algorithm was reshaped under the influence of arithmetic or Greek arithmos. Arithmetic therefore explains a later resemblance without becoming algorism''s ancestor.','American Heritage Dictionary · MacTutor editors','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(7,58,'ALGORITHM entry: derived from algorism and influenced by Greek arithmos','supports','Documents the descendant-level spelling influence.'),
(7,220,'Etymology and Word History','supports','Independently separates the Arabic-name ancestry from arithmetic influence.'),
(7,229,'Headword history: algorism as the older word','context','Documents the historical source word on the other side of the link.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(54,91,15,'THE OLDER WORD IS HIDING INSIDE THE NEW ONE','Algorism and algorithm share the Middle English algorisme node. Algorithm is the later altered branch, not the original form.',100,'A','reviewed'),
(55,92,89,'FEELING BECAME A FACE MADE OF PUNCTUATION','Emotion supplies the first component of emoticon; the same graph then continues backward from feeling to social agitation and physical movement.',98,'A','reviewed'),
(56,93,89,'THE COMPUTER ICON HELPED NAME A FACE WITHOUT PIXELS','Icon supplies the second component of emoticon, whose earliest category is a sequence of keyboard characters rather than a pictorial emoji.',97,'A','reviewed'),
(57,94,87,'A LAW IS WHAT WAS LAID DOWN','Lay and law travel through different Germanic formations before converging at *legh-, the deep family of lying, laying, and setting down.',100,'A','reviewed');
--> statement-breakpoint

-- The icon component and its boundary were created before icon had a dossier.
-- Promote that exact cited boundary instead of duplicating it.
UPDATE `lexeme_nodes`
SET `canonical_key`='boundary:93:4',
    `notes`='Dossier boundary for icon; the proposed Greek base and Lithuanian comparison remain explicitly uncertain.'
WHERE `canonical_key`='boundary:graph:emoticon-icon';
--> statement-breakpoint

UPDATE `lexeme_nodes`
SET `notes`=CASE `canonical_key`
  WHEN 'node:1:icon:attested:sense:image-component' THEN 'Canonical icon headword and second component of emoticon; later religious, cultural, and computing senses remain in one image-and-likeness family.'
  WHEN 'node:9:icon:attested:sense:image-loan' THEN 'Canonical Late Latin transmission stage for icon, cited by multiple historical dictionaries.'
  WHEN 'node:10:eikon:attested:sense:image-likeness' THEN 'Canonical Greek source stage for icon; deeper origin is explicitly uncertain.'
  ELSE `notes`
END
WHERE `canonical_key` IN (
  'node:1:icon:attested:sense:image-component',
  'node:9:icon:attested:sense:image-loan',
  'node:10:eikon:attested:sense:image-likeness'
);
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id BETWEEN 91 AND 94
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
WHERE f.entry_id BETWEEN 91 AND 94;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 91 AND 94;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 91 AND 94;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 91 AND 94;
