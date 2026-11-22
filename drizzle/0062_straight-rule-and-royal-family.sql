-- Build the straightness, rule, kingship, realm, and wealth family without
-- pretending that one modern meaning generated the others. RIGHT follows the
-- Germanic *rehtaz branch, RULE, REGULAR, and REGULATE follow Latin regula,
-- ROYAL and REGAL follow Latin rex, REALM follows regimen with documented
-- analogical influence from royal, and RICH preserves English/French contact
-- over a Celtic-to-Germanic route. The branches meet only at reconstructed
-- *h3reg- / *h3reg-palatal, conventionally printed here with subscripts.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(77,'late-latin','Late Latin','Indo-European','Italic',0,200,600,'Postclassical Latin stage used for regulāris, regulāre, and regulātus.'),
(78,'proto-celtic','Proto-Celtic','Indo-European','Celtic',1,-1300,-800,'Reconstructed Celtic horizon used for *rīg-yo- in the rich and king family.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(129,'right','right','right','/raɪt/','adjective','Correct, just, suitable, straight, or on one side; inherited through Old English riht from a Germanic straight-and-correct formation.','Moral right and geometric straightness are historical relatives: the inherited word belongs to a family whose older center is moving or directing in a straight line.','reviewed'),
(130,'rule','rule','rule','/ruːl/','noun','A guide, standard, exercise of authority, or measuring straightedge; borrowed through French from Latin rēgula.','A rule was a straightedge before its family became an abstraction for standards, procedures, and government.','reviewed'),
(131,'regular','regular','regular','/ˈrɛɡjələr/','adjective','Conforming to a rule, pattern, order, or interval; borrowed through French from Late Latin rēgulāris.','Regular ultimately belongs to the vocabulary of a straight bar or measuring rod: routine and normality are abstractions from rule-governed order.','reviewed'),
(132,'regulate','regulate','regulate','/ˈrɛɡjəˌleɪt/','verb','To govern, direct, order, or adjust according to a rule; entering English from Late Latin formations on rēgula.','To regulate is historically to bring something under a rule, and that rule descends from the straightedge branch.','reviewed'),
(133,'royal','royal','royal','/ˈrɔɪəl/','adjective','Of a monarch, crown, or kingdom; borrowed through Anglo-French from Latin rēgālis and rēx.','Royal, right, and rule are deep cousins: kingship occupies the governing branch of the same reconstructed straight-and-direct family.','reviewed'),
(134,'regal','regal','regal','/ˈriːɡəl/','adjective','Of, relating to, or suitable for a monarch; borrowed through French or directly from Latin rēgālis.','Regal and royal are not merely modern synonyms; they are separate English arrivals from the same Latin king adjective.','reviewed'),
(135,'realm','realm','realm','/rɛlm/','noun','A kingdom, domain, or sphere; inherited through Middle English realme and Old French material ultimately from Latin regimen.','A realm is historically a domain of ruling, and its medieval form was reshaped under the influence of the word royal.','reviewed'),
(136,'rich','rich','rich','/rɪtʃ/','adjective','Having wealth, abundance, value, or intensity; continuing a medieval convergence of English and French forms from a Germanic power word.','Rich was powerful before it was simply wealthy, and its Germanic ancestor was itself borrowed from the Celtic king family.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(300,'mw-right','Right — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/right',NULL,'historical_dictionary'),
(301,'ahd-right','Right — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=right',NULL,'historical_dictionary'),
(302,'mw-rule','Rule — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/rule',NULL,'historical_dictionary'),
(303,'ahd-rule','Rule — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=rule',NULL,'historical_dictionary'),
(304,'mw-regular','Regular — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/regular',NULL,'historical_dictionary'),
(305,'ahd-regular','Regular — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=regular',NULL,'historical_dictionary'),
(306,'mw-regulate','Regulate — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/regulate',NULL,'historical_dictionary'),
(307,'mw-royal','Royal — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/royal',NULL,'historical_dictionary'),
(308,'ahd-royal','Royal — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=royal',NULL,'historical_dictionary'),
(309,'mw-regal','Regal — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/regal',NULL,'historical_dictionary'),
(310,'ahd-regal','Regal — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=regal',NULL,'historical_dictionary'),
(311,'mw-realm','Realm — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/realm',NULL,'historical_dictionary'),
(312,'ahd-realm','Realm — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=realm',NULL,'historical_dictionary'),
(313,'mw-rich','Rich — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/rich',NULL,'historical_dictionary'),
(314,'ahd-rich','Rich — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=rich',NULL,'historical_dictionary'),
(315,'ahd-ie-reg','Indo-European Root reg-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(780,129,1,1,'right','right','correct-just-straight','right','/raɪt/','attested','before 12th century–today',1000,NULL,'correct, just, proper, straight, or right-side','The dossier preserves moral, factual, geometric, and directional senses without declaring one the only real meaning.'),
(781,129,2,2,'right','right','correct-just-straight','right',NULL,'attested','Middle English',1150,1500,'right, just, straight','The supplied dictionaries report a Middle English stage without requiring a distinct spelling here.'),
(782,129,3,3,'riht','riht','correct-just-straight','riht',NULL,'attested','Old English',450,1150,'right, just, correct, straight','The Old English form joins straightness, correctness, and justice.'),
(783,129,5,4,'*rehtaz','rehtaz','right-just-straight-adjective','*rehtaz',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'right, just, correct, straight','Published Germanic adjective behind Old English riht.'),
(784,129,6,5,'*reg-to-','reg-to','straight-directed-formation','*reg-to-',NULL,'reconstructed','Proto-Indo-European suffixed formation',-4500,-2500,'directed straight; right','Published formation behind Germanic *rehtaz.'),
(785,129,6,6,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Centum form published under the reg- root entry.'),
(786,129,6,7,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Oldest form printed by American Heritage for the family.'),
(787,129,7,8,'UNKNOWN','unknown','right-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The trail stops before a reconstructed root is mistaken for an attested first word.'),

(788,130,1,1,'rule','rule','guide-authority-straightedge','rule','/ruːl/','attested','13th century–today',1200,NULL,'guide, standard, authority, or measuring straightedge','The physical and abstract senses remain visible together.'),
(789,130,2,2,'reule','reule','guide-for-action','reule',NULL,'attested','Middle English',1150,1500,'guide for proper action; rule','Merriam-Webster and American Heritage supply the Middle English form.'),
(790,130,12,3,'reule','reule','guide-for-action','reule',NULL,'attested','Anglo-French',800,1400,'guide, rule','French transmission stage into Middle English.'),
(791,130,9,4,'rēgula','regula','straightedge-rule','rēgula',NULL,'attested','Latin',-700,600,'straightedge, ruler, rule','The physical straightedge and abstract rule coexist in the Latin history.'),
(792,130,6,5,'*rēg-olā-','reg-ola','straight-rod-formation','*rēg-olā-',NULL,'reconstructed','Proto-Indo-European suffixed formation',-4500,-2500,'straight piece or rod formation','Published formation behind Latin rēgula.'),
(793,130,6,6,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared centum form.'),
(794,130,6,7,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared deepest reviewed root.'),
(795,130,7,8,'UNKNOWN','unknown','rule-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The straightedge history does not license an older invented object word.'),

(796,131,1,1,'regular','regular','rule-conforming-orderly','regular','/ˈrɛɡjələr/','attested','14th century–today',1300,NULL,'conforming to rule, pattern, order, or interval','Modern normality and routine are later members of a rule-centered semantic field.'),
(797,131,2,2,'reguler','reguler','living-by-rule','reguler',NULL,'attested','Middle English',1150,1500,'living under or according to a rule','American Heritage foregrounds the religious-rule sense.'),
(798,131,12,3,'reguler','reguler','rule-conforming','reguler',NULL,'attested','Anglo-French',800,1400,'according to rule','Merriam-Webster supplies the Anglo-French route.'),
(799,131,77,4,'rēgulāris','regularis','according-to-rule','rēgulāris',NULL,'attested','Late Latin',200,600,'regular; according to rule','Late Latin adjective on rēgula.'),
(800,131,9,5,'rēgula','regula','straightedge-rule','rēgula',NULL,'attested','Latin',-700,600,'straightedge, ruler, rule','Shared Latin base with rule and regulate.'),
(801,131,6,6,'*rēg-olā-','reg-ola','straight-rod-formation','*rēg-olā-',NULL,'reconstructed','Proto-Indo-European suffixed formation',-4500,-2500,'straight piece or rod formation','Published formation behind Latin rēgula.'),
(802,131,6,7,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared centum form.'),
(803,131,6,8,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared deepest reviewed root.'),
(804,131,7,9,'UNKNOWN','unknown','regular-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','Modern normality is not projected unchanged into prehistory.'),

(805,132,1,1,'regulate','regulate','govern-adjust-by-rule','regulate','/ˈrɛɡjəˌleɪt/','attested','15th century–today',1400,NULL,'govern, order, direct, or adjust according to rule','The technical adjustment senses sit beside governance and ordering.'),
(806,132,2,2,'regulate','regulate','govern-by-rule','regulate',NULL,'attested','Middle English',1150,1500,'govern or direct according to rule','Merriam-Webster reports the Middle English stage without printing a separate historical spelling.'),
(807,132,77,3,'regulātus','regulatus','regulated-participle','regulātus',NULL,'attested','Late Latin',200,600,'regulated; directed','Past participle of regulāre.'),
(808,132,77,4,'regulāre','regulare','direct-by-rule-verb','regulāre',NULL,'attested','Late Latin',200,600,'regulate, direct','Verb derived from Latin rēgula.'),
(809,132,9,5,'rēgula','regula','straightedge-rule','rēgula',NULL,'attested','Latin',-700,600,'straightedge, ruler, rule','Shared Latin base with rule and regular.'),
(810,132,6,6,'*rēg-olā-','reg-ola','straight-rod-formation','*rēg-olā-',NULL,'reconstructed','Proto-Indo-European suffixed formation',-4500,-2500,'straight piece or rod formation','Published formation behind Latin rēgula.'),
(811,132,6,7,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared centum form.'),
(812,132,6,8,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared deepest reviewed root.'),
(813,132,7,9,'UNKNOWN','unknown','regulate-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The dossier stops before modern legal regulation is projected into prehistory.'),

(814,133,1,1,'royal','royal','monarch-crown-adjective','royal','/ˈrɔɪəl/','attested','14th century–today',1300,NULL,'of a monarch, crown, or kingdom','Magnificence is a later extension of the monarch field.'),
(815,133,2,2,'roial','roial','monarch-adjective','roial',NULL,'attested','Middle English',1150,1500,'royal; of a monarch','Merriam-Webster supplies the Middle English form.'),
(816,133,12,3,'roial','roial','monarch-adjective','roial',NULL,'attested','Anglo-French',800,1400,'royal','Anglo-French real or roial is the reported donor stage.'),
(817,133,9,4,'rēgālis','regalis','kingly-adjective','rēgālis',NULL,'attested','Latin',-700,600,'kingly, royal','Adjective from rēx, king.'),
(818,133,9,5,'rēx','rex','king-noun','rēx',NULL,'attested','Latin',-700,600,'king','Latin king noun in the lengthened-grade branch.'),
(819,133,6,6,'*rēg-','reg-lengthened','king-lengthened-grade','*rēg-',NULL,'reconstructed','Proto-Indo-European lengthened grade',-4500,-2500,'king or ruler formation','Published lengthened grade behind Indo-European king words.'),
(820,133,6,7,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared centum form.'),
(821,133,6,8,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared deepest reviewed root.'),
(822,133,7,9,'UNKNOWN','unknown','royal-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The king formation is not treated as a named prehistoric institution beyond the evidence.'),

(823,134,1,1,'regal','regal','monarch-suitable-adjective','regal','/ˈriːɡəl/','attested','15th century–today',1400,NULL,'of, relating to, or suitable for a monarch','Splendor develops from suitability to kingship.'),
(824,134,2,2,'regal','regal','monarch-adjective','regal',NULL,'attested','Middle English',1150,1500,'royal, kingly','Merriam-Webster and American Heritage report Middle English.'),
(825,134,8,3,'regal','regal','monarch-adjective','regal',NULL,'attested','Old French',842,1400,'royal, kingly','American Heritage supplies the Old French route; Merriam-Webster permits Anglo-French or Latin.'),
(826,134,9,4,'rēgālis','regalis','kingly-adjective','rēgālis',NULL,'attested','Latin',-700,600,'kingly, royal','Shared Latin adjective with royal.'),
(827,134,9,5,'rēx','rex','king-noun','rēx',NULL,'attested','Latin',-700,600,'king','Shared Latin king noun.'),
(828,134,6,6,'*rēg-','reg-lengthened','king-lengthened-grade','*rēg-',NULL,'reconstructed','Proto-Indo-European lengthened grade',-4500,-2500,'king or ruler formation','Shared lengthened grade.'),
(829,134,6,7,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared centum form.'),
(830,134,6,8,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared deepest reviewed root.'),
(831,134,7,9,'UNKNOWN','unknown','regal-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','Multiple medieval transmission possibilities remain visible in notes.'),

(832,135,1,1,'realm','realm','kingdom-domain','realm','/rɛlm/','attested','13th century–today',1200,NULL,'kingdom, domain, or sphere','The abstract sphere sense extends an older governed-domain noun.'),
(833,135,2,2,'realme','realme','kingdom-domain','realme',NULL,'attested','Middle English',1150,1500,'kingdom, governed domain','The form reflects both inherited transmission and analogical influence from royal.'),
(834,135,8,3,'reiame','reiame','kingdom-domain','reiame',NULL,'attested','Old French',842,1400,'kingdom, government','Merriam-Webster supplies Old French reiame behind the altered medieval form.'),
(835,135,9,4,'regimen','regimen','control-government','regimen',NULL,'attested','Latin',-700,600,'control, government, direction','Latin noun from regere.'),
(836,135,9,5,'regere','regere','lead-straight-rule-verb','regere',NULL,'attested','Latin',-700,600,'lead straight, direct, rule','The governing verb belongs directly to the straight-and-direct root.'),
(837,135,6,6,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared centum form.'),
(838,135,6,7,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared deepest reviewed root.'),
(839,135,7,8,'UNKNOWN','unknown','realm-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','Analogical influence is modeled as a side edge, not a replacement ancestry.'),

(840,136,1,1,'rich','rich','wealthy-abundant','rich','/rɪtʃ/','attested','before 12th century–today',1000,NULL,'wealthy, abundant, valuable, or intense','The wealth field grows from older strength and power material.'),
(841,136,2,2,'riche','riche','wealthy-powerful','riche',NULL,'attested','Middle English',1150,1500,'wealthy, powerful, rich','American Heritage reports both Old French and Old English inputs.'),
(842,136,3,3,'rīce','rice','strong-powerful-adjective','rīce',NULL,'attested','Old English',450,1150,'strong, powerful','The Old English semantic center is power rather than possessions alone.'),
(843,136,5,4,'*rīkja-','rikja','powerful-kingly-adjective','*rīkja-',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'powerful, rich, kingly','Germanic formation borrowed from Celtic according to the root appendix.'),
(844,136,78,5,'*rīg-yo-','rig-yo','kingly-celtic-formation','*rīg-yo-',NULL,'reconstructed','Proto-Celtic horizon',-1300,-800,'kingly or royal formation','Published Celtic formation behind Germanic *rīkja-.'),
(845,136,6,6,'*rēg-','reg-lengthened','king-lengthened-grade','*rēg-',NULL,'reconstructed','Proto-Indo-European lengthened grade',-4500,-2500,'king or ruler formation','Shared lengthened grade behind king words.'),
(846,136,6,7,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared centum form.'),
(847,136,6,8,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared deepest reviewed root.'),
(848,136,7,9,'UNKNOWN','unknown','rich-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The contact route is preserved without inventing one exclusive medieval donor.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(652,129,780,781,'continuation','Modern right continues Middle English right through English spelling and sound history.','Justice, correctness, suitability, straightness, and direction remain part of a polysemous word.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use before the twelfth century.','reviewed'),
(653,129,781,782,'inheritance','Middle English right continues Old English riht.','The inherited field joins straight, correct, and just.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(654,129,782,783,'inheritance','Old English riht reflects Germanic *rehtaz through regular West Germanic history.','The Germanic adjective retains right, just, correct, and straight senses.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The parent is reconstructed rather than directly attested.','reviewed'),
(655,129,783,784,'inheritance','Germanic *rehtaz reflects reconstructed *reg-to- with the expected Germanic consonant history.','A straight or directed formation supports correctness and rightness.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both stages before Old English are comparative reconstructions.','reviewed'),
(656,129,784,785,'derivation','Reconstructed *reg-to- is a suffixed formation under centum *h₃reg-.','The formation specializes the straight-and-direct root as a right or straight adjective.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative morphology, not one dated coinage event.','reviewed'),
(657,129,785,786,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(658,129,786,787,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(659,130,788,789,'continuation','Modern rule continues Middle English reule through English spelling and pronunciation history.','A guide for action expands across standards, authority, procedures, and measurement.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use in the thirteenth century.','reviewed'),
(660,130,789,790,'borrowing','Middle English reule was borrowed from Anglo-French reule.','The guide or standard sense crosses into English.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(661,130,790,791,'borrowing','Anglo-French reule continues Latin rēgula through Romance sound and spelling history.','A straightedge or ruler also supplies an abstract guide or principle.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(662,130,791,792,'derivation','Latin rēgula continues reconstructed suffixed *rēg-olā-.','A straight piece or rod develops both measuring and normative rule senses.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The parent is a comparative morphological reconstruction.','reviewed'),
(663,130,792,793,'derivation','Reconstructed *rēg-olā- is a suffixed formation under centum *h₃reg-.','The straight-piece formation specializes the straight-and-direct root.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative morphology, not one dated coinage event.','reviewed'),
(664,130,793,794,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(665,130,794,795,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(666,131,796,797,'continuation','Modern regular continues Middle English reguler through English spelling and sound history.','Living by a rule expands to orderly, patterned, recurring, standard, and normal.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports adjective use in the fourteenth century.','reviewed'),
(667,131,797,798,'borrowing','Middle English reguler was borrowed through Anglo-French reguler.','The rule-governed adjective crosses into English.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(668,131,798,799,'borrowing','Anglo-French reguler continues Late Latin rēgulāris through Romance transmission.','According to a rule remains the central inherited relation.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(669,131,799,800,'derivation','Late Latin rēgulāris is an adjective formed from Latin rēgula.','Of a bar or according to rule develops orderly and regular senses.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(670,131,800,801,'derivation','Latin rēgula continues reconstructed suffixed *rēg-olā-.','A straight piece or rod develops both measuring and normative rule senses.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The parent is a comparative morphological reconstruction.','reviewed'),
(671,131,801,802,'derivation','Reconstructed *rēg-olā- is a suffixed formation under centum *h₃reg-.','The straight-piece formation specializes the straight-and-direct root.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative morphology, not one dated coinage event.','reviewed'),
(672,131,802,803,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(673,131,803,804,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(674,132,805,806,'continuation','Modern regulate continues the reported Middle English verb.','Govern or direct according to rule expands to ordering, controlling, and technical adjustment.','Merriam-Webster Editors','established',NULL,'Merriam-Webster reports use in the fifteenth century.','reviewed'),
(675,132,806,807,'borrowing','The Middle English verb reflects Late Latin regulātus.','A regulated or directed participle supplies the English verb formation.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(676,132,807,808,'inflection','Late Latin regulātus is the past participle of regulāre.','The participle preserves the verb’s directing and regulating sense.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(677,132,808,809,'derivation','Late Latin regulāre is formed from Latin rēgula.','To regulate or direct means act according to a rule.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(678,132,809,810,'derivation','Latin rēgula continues reconstructed suffixed *rēg-olā-.','A straight piece or rod develops both measuring and normative rule senses.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The parent is a comparative morphological reconstruction.','reviewed'),
(679,132,810,811,'derivation','Reconstructed *rēg-olā- is a suffixed formation under centum *h₃reg-.','The straight-piece formation specializes the straight-and-direct root.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative morphology, not one dated coinage event.','reviewed'),
(680,132,811,812,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(681,132,812,813,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(682,133,814,815,'continuation','Modern royal continues Middle English roial through English spelling and sound history.','Of a monarch or crown expands to magnificent and superior.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports adjective use in the fourteenth century.','reviewed'),
(683,133,815,816,'borrowing','Middle English roial was borrowed from Anglo-French roial or real.','The monarch adjective crosses into English.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(684,133,816,817,'borrowing','Anglo-French roial continues Latin rēgālis through Romance sound and spelling history.','The kingly adjective remains monarch-centered.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(685,133,817,818,'derivation','Latin rēgālis is formed from rēx, rēg-, king.','Kingly or royal is transparently derived from the king noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(686,133,818,819,'inheritance','Latin rēx reflects reconstructed lengthened-grade *rēg-.','The lengthened grade supplies an Indo-European king formation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The parent is reconstructed; rēx is attested Latin.','reviewed'),
(687,133,819,820,'derivation','Lengthened-grade *rēg- belongs under centum *h₃reg-.','The ruler or king formation specializes the straight, direct, lead, and rule family.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative ablaut analysis, not one dated institutional event.','reviewed'),
(688,133,820,821,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(689,133,821,822,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(690,134,823,824,'continuation','Modern regal continues the Middle English adjective.','Royal or kingly expands to magnificent or splendid.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use in the fifteenth century.','reviewed'),
(691,134,824,825,'borrowing','Middle English regal was borrowed through Old French, with direct Latin or Anglo-French transmission also reported.','The monarch adjective enters English while the exact medieval channel remains plural in the authorities.','Merriam-Webster Editors · American Heritage Dictionary Editors','probable','American Heritage gives Old French; Merriam-Webster permits Anglo-French or Latin.',NULL,'reviewed'),
(692,134,825,826,'borrowing','Old French regal continues Latin rēgālis.','The kingly adjective remains monarch-centered.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(693,134,826,827,'derivation','Latin rēgālis is formed from rēx, rēg-, king.','Kingly or royal is transparently derived from the king noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(694,134,827,828,'inheritance','Latin rēx reflects reconstructed lengthened-grade *rēg-.','The lengthened grade supplies an Indo-European king formation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The parent is reconstructed; rēx is attested Latin.','reviewed'),
(695,134,828,829,'derivation','Lengthened-grade *rēg- belongs under centum *h₃reg-.','The ruler or king formation specializes the straight, direct, lead, and rule family.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative ablaut analysis, not one dated institutional event.','reviewed'),
(696,134,829,830,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(697,134,830,831,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(698,135,832,833,'continuation','Modern realm continues Middle English realme through spelling reduction.','Kingdom broadens to any domain or sphere.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use in the thirteenth century.','reviewed'),
(699,135,833,834,'borrowing','Middle English realme continues an altered Old French reiame form.','Government or kingdom remains the central domain sense.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Analogical influence from royal is represented on a separate canonical edge.','reviewed'),
(700,135,834,835,'borrowing','Old French reiame continues Latin regimen through Romance transmission.','Control or government becomes a governed territory or kingdom.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(701,135,835,836,'derivation','Latin regimen is formed from regere, to lead straight, direct, or rule.','Control and government are nominalized from directing or ruling.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(702,135,836,837,'inheritance','Latin regere continues centum *h₃reg-.','Lead straight, direct, and rule preserve the reconstructed root field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(703,135,837,838,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(704,135,838,839,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(705,136,840,841,'continuation','Modern rich continues Middle English riche through English spelling and sound history.','Power and wealth broaden across abundance, value, color, flavor, and intensity.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use before the twelfth century.','reviewed'),
(706,136,841,842,'inheritance','Middle English riche continues Old English rīce while also receiving French-family influence represented separately.','Strong and powerful develop toward wealthy and abundant.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'American Heritage reports both Old English and Old French inputs.','reviewed'),
(707,136,842,843,'inheritance','Old English rīce reflects Germanic *rīkja-.','The powerful or kingly adjective supports later wealth senses.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic form is reconstructed.','reviewed'),
(708,136,843,844,'borrowing','Germanic *rīkja- was borrowed from Celtic *rīg-yo-.','A kingly or powerful formation enters Germanic before the English and French branches.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both donor and recipient forms are reconstructed.','reviewed'),
(709,136,844,845,'derivation','Celtic *rīg-yo- belongs to lengthened-grade *rēg-.','The Celtic kingly formation specializes the Indo-European ruler branch.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative morphology, not one dated borrowing token.','reviewed'),
(710,136,845,846,'derivation','Lengthened-grade *rēg- belongs under centum *h₃reg-.','The ruler or king formation specializes the straight, direct, lead, and rule family.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative ablaut analysis, not one dated institutional event.','reviewed'),
(711,136,846,847,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(712,136,847,848,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(652,300,'Definitions, Word History, and First Known Use','supports','Supplies the English continuity, polysemy, and pre-twelfth-century horizon.'),
(652,301,'Headword definitions and etymology','context','Independently preserves straight, just, correct, and directional senses.'),
(653,300,'Etymology: Middle English from Old English riht','supports','Explicitly supplies the English ancestry.'),
(654,315,'reg-, *reg-to- to Germanic *rehtaz and Old English riht','supports','Publishes the Germanic formation and Old English reflex.'),
(655,315,'reg-, *reg-to- and Germanic *rehtaz section','supports','Publishes the reconstructed relationship.'),
(656,315,'reg-, suffixed *reg-to- section','supports','Analyzes the formation under the root.'),
(657,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(658,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(659,302,'Definitions, Word History, and First Known Use','supports','Supplies Middle English reule, the semantic range, and thirteenth-century horizon.'),
(659,303,'Headword definitions and etymology','context','Independently preserves ruler, principle, authority, and straight-line senses.'),
(660,302,'Etymology: Middle English reule from Anglo-French','supports','Supplies the French-to-English borrowing.'),
(661,302,'Etymology: Latin regula, straightedge and rule','supports','Supplies the Latin source and physical-to-abstract range.'),
(662,315,'reg-, suffixed *rēg-olā- to Latin rēgula','supports','Publishes the straight-piece formation.'),
(663,315,'reg-, suffixed *rēg-olā- section','supports','Analyzes the formation under the root.'),
(664,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(665,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(666,304,'Definitions, Word History, and First Known Use','supports','Supplies Middle English reguler, modern senses, and fourteenth-century horizon.'),
(666,305,'Headword definitions and etymology','context','Independently foregrounds living under a rule.'),
(667,304,'Etymology: Middle English reguler from Anglo-French','supports','Supplies the borrowing route.'),
(668,304,'Etymology: Anglo-French from Late Latin regularis','supports','Supplies the Romance and Late Latin stages.'),
(669,304,'Etymology: Late Latin regularis from Latin regula','supports','Publishes the adjective formation.'),
(670,315,'reg-, suffixed *rēg-olā- to Latin rēgula','supports','Publishes the straight-piece formation.'),
(671,315,'reg-, suffixed *rēg-olā- section','supports','Analyzes the formation under the root.'),
(672,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(673,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(674,306,'Word History and First Known Use','supports','Supplies the Middle English stage, meaning, and fifteenth-century horizon.'),
(675,306,'Etymology: Middle English from Late Latin regulatus','supports','Publishes the borrowing source.'),
(676,306,'Etymology: regulatus, past participle of regulare','supports','Publishes the inflectional relationship.'),
(677,306,'Etymology: regulare from Latin regula','supports','Publishes the derivation from rule.'),
(678,315,'reg-, suffixed *rēg-olā- to Latin rēgula','supports','Publishes the straight-piece formation.'),
(679,315,'reg-, suffixed *rēg-olā- section','supports','Analyzes the formation under the root.'),
(680,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(681,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(682,307,'Definitions, Word History, and First Known Use','supports','Supplies Middle English roial, monarch senses, and fourteenth-century horizon.'),
(682,308,'Headword definitions and etymology','context','Independently supplies the monarch-centered ancestry.'),
(683,307,'Etymology: Middle English roial from Anglo-French real or roial','supports','Publishes the borrowing route.'),
(684,307,'Etymology: Anglo-French from Latin regalis','supports','Publishes the Latin adjective source.'),
(685,307,'Etymology: regalis from reg-, rex, king','supports','Publishes the adjective-to-king relationship.'),
(686,315,'reg-, lengthened-grade *rēg- and Latin rēx','supports','Publishes the king formation and Latin reflex.'),
(687,315,'reg-, lengthened-grade *rēg- section','supports','Analyzes the king formation under the root.'),
(688,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(689,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(690,309,'Definitions, Word History, and First Known Use','supports','Supplies Middle English, monarch senses, and fifteenth-century horizon.'),
(690,310,'Headword definitions and etymology','context','Independently supplies the inherited adjective.'),
(691,310,'Etymology: Middle English from Old French','supports','Publishes the Old French route.'),
(691,309,'Etymology: Middle English from Anglo-French or Latin','context','Preserves alternative medieval transmission channels.'),
(692,310,'Etymology: Old French from Latin regalis','supports','Publishes the Latin source.'),
(693,310,'Etymology: regalis from rex, reg-, king','supports','Publishes the adjective-to-king relationship.'),
(694,315,'reg-, lengthened-grade *rēg- and Latin rēx','supports','Publishes the king formation and Latin reflex.'),
(695,315,'reg-, lengthened-grade *rēg- section','supports','Analyzes the king formation under the root.'),
(696,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(697,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(698,311,'Definitions, Word History, and First Known Use','supports','Supplies Middle English realme, modern meanings, and thirteenth-century horizon.'),
(698,312,'Headword definitions and etymology','context','Independently documents the kingdom-to-sphere range.'),
(699,311,'Etymology: realme, alteration of Old French reiame','supports','Publishes the altered French route.'),
(700,311,'Etymology: reiame from Latin regimen','supports','Publishes the Latin source.'),
(701,312,'Etymology: regimen from regere, to rule','supports','Publishes the derivation from the governing verb.'),
(702,315,'reg-, Latin regere section','supports','Places the Latin verb under the straight-and-direct root.'),
(703,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(704,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(705,313,'Definitions, Word History, and First Known Use','supports','Supplies Middle English riche, broad meanings, and pre-twelfth-century horizon.'),
(705,314,'Headword definitions and etymology','context','Independently supplies the medieval convergence.'),
(706,313,'Etymology: Middle English riche from Old English rice','supports','Publishes the inherited English route.'),
(706,314,'Etymology: Middle English from Old French and Old English rice','context','Preserves the additional French input.'),
(707,315,'reg-, Germanic *rīkja- to Old English rīce','supports','Publishes the Germanic formation and Old English reflex.'),
(708,315,'reg-, Celtic *rīg-yo- to Germanic *rīkja-','supports','Publishes the Celtic-to-Germanic borrowing.'),
(709,315,'reg-, lengthened-grade *rēg- and Celtic *rīg-yo-','supports','Publishes the Celtic formation under the king grade.'),
(710,315,'reg-, lengthened-grade *rēg- section','supports','Analyzes the king formation under the root.'),
(711,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(712,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(164,780,300,'before 12th century',NULL,'Merriam-Webster first-known-use report for right','First Known Use, adjective',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported earliest written record located by current scholarship; no underlying Old English object was directly inspected.'),
(165,788,302,'13th century',NULL,'Merriam-Webster first-known-use report for rule','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying thirteenth-century object was directly inspected.'),
(166,796,304,'14th century',NULL,'Merriam-Webster first-known-use report for regular','First Known Use, adjective',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fourteenth-century object was directly inspected.'),
(167,805,306,'15th century',NULL,'Merriam-Webster first-known-use report for regulate','First Known Use, verb',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fifteenth-century object was directly inspected.'),
(168,814,307,'14th century',NULL,'Merriam-Webster first-known-use report for royal','First Known Use, adjective',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fourteenth-century object was directly inspected.'),
(169,823,309,'15th century',NULL,'Merriam-Webster first-known-use report for regal','First Known Use, adjective',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fifteenth-century object was directly inspected.'),
(170,832,311,'13th century',NULL,'Merriam-Webster first-known-use report for realm','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying thirteenth-century object was directly inspected.'),
(171,840,313,'before 12th century',NULL,'Merriam-Webster first-known-use report for rich','First Known Use, adjective',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported earliest written record located by current scholarship; no underlying Old English object was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(413,129,'rule','English / Latin route','parallel straightedge-and-governance branch under *h₃reg-',315),
(414,129,'royal','English / Latin route','parallel king branch under lengthened *rēg-',315),
(415,129,'direct','English / Latin route','Latin rectus and regere descendant in the straight family',315),
(416,129,'Recht','German','Germanic cognate in the right-and-law field',300),
(417,130,'regular','English','adjective descendant through Latin rēgula',304),
(418,130,'regulate','English','verb descendant through Latin rēgula',306),
(419,130,'right','English / Germanic route','parallel right-and-straight branch',315),
(420,130,'royal','English / Latin route','parallel king branch',315),
(421,131,'rule','English','base noun from the same Latin rēgula route',304),
(422,131,'regulate','English','parallel verb formation from Latin rēgula',306),
(423,131,'rectify','English / Latin route','parallel straight-and-correct descendant',315),
(424,131,'right','English / Germanic route','deep cousin through *reg-to-',315),
(425,132,'rule','English','base noun from the same Latin rēgula route',306),
(426,132,'regular','English','parallel adjective formation from Latin rēgula',304),
(427,132,'regent','English / Latin route','parallel governing descendant from regere',302),
(428,132,'realm','English / French route','parallel government branch through regimen',312),
(429,133,'regal','English','separate English arrival from Latin rēgālis',310),
(430,133,'rājā','Sanskrit / modern borrowings','king cognate from the lengthened-grade branch',315),
(431,133,'rí','Old Irish','Celtic king cognate',307),
(432,133,'right','English / Germanic route','deep straight-and-correct cousin',315),
(433,134,'royal','English','separate English arrival from Latin rēgālis',310),
(434,134,'rēx','Latin','base king noun',310),
(435,134,'rājā','Sanskrit / modern borrowings','king cognate from the lengthened-grade branch',315),
(436,134,'realm','English / French route','government-domain relative under regere',315),
(437,135,'royal','English','analogical influence on Middle English realme',312),
(438,135,'regimen','Latin / English','direct historical government noun',311),
(439,135,'rule','English / Latin route','parallel governing and straightedge branch',315),
(440,135,'direct','English / Latin route','parallel descendant from regere and rectus',315),
(441,136,'royal','English / Latin route','deep king-family cousin through lengthened *rēg-',315),
(442,136,'Reich','German','Germanic power-and-domain relative',313),
(443,136,'rí','Old Irish','Celtic king cognate behind the borrowed Germanic formation',313),
(444,136,'rājā','Sanskrit / modern borrowings','Indo-European king cognate',315);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(477,129,1,'Indo-European linguistic horizon','*h₃reg̑- to *reg-to-','The reconstructed straight-and-direct root produces a right or straight formation.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparative source supplies no unique homeland point or first year.'),
(478,129,2,'Germanic linguistic horizon','reconstructed *rehtaz','The right, just, correct, and straight adjective develops in Germanic.',NULL,NULL,'broad',NULL,NULL,'unresolved','The form is reconstructed and not assigned one map point.'),
(479,129,3,'England','Old English riht to Middle English right','The inherited word carries geometric, moral, factual, and directional senses through recorded English.',52200000,-1500000,'regional',NULL,NULL,'unresolved','The form history is firmer than one first transmission date.'),
(480,129,4,'Global English','before 12th century–today','Right remains a dense cluster of correct, just, suitable, straight, and directional meanings.',NULL,NULL,'global',NULL,1099,'before','The upper bound encodes before the twelfth century, not a coinage year.'),

(481,130,1,'Indo-European linguistic horizon','*h₃reg̑- to *rēg-olā-','A reconstructed straight-piece formation develops under the straight-and-direct root.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparative forms have no unique map point or first token.'),
(482,130,2,'Roman linguistic world','Latin rēgula','A straightedge or ruler also names a guide or principle.',NULL,NULL,'broad',NULL,NULL,'unresolved','The dictionary history supplies language and meanings rather than one Roman coordinate.'),
(483,130,3,'France and England','Anglo-French reule to Middle English reule','The physical and abstract rule word crosses through French into English.',50000000,2000000,'broad',NULL,NULL,'unresolved','A broad route is shown without inventing a single borrowing event.'),
(484,130,4,'Global English','13th century–today','Rule spans standards, procedures, authority, law, measurement, and customary patterns.',NULL,NULL,'global',1200,1299,'century','The interval preserves the source-reported century.'),

(485,131,1,'Indo-European linguistic horizon','*h₃reg̑- to *rēg-olā-','The straight-piece formation supplies the deep base of rēgula.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No unique prehistoric place or first year is asserted.'),
(486,131,2,'Late Roman linguistic world','Latin rēgula to Late Latin rēgulāris','An adjective meaning according to rule develops from the straightedge-and-rule noun.',NULL,NULL,'broad',NULL,NULL,'unresolved','The linguistic relationship is more secure than one dated formation event.'),
(487,131,3,'France and England','Anglo-French reguler to Middle English reguler','The rule-governed adjective enters English, initially prominent in religious-rule contexts.',50000000,2000000,'broad',NULL,NULL,'unresolved','The route is regional rather than a single pin.'),
(488,131,4,'Global English','14th century–today','Regular expands from rule conformity into order, recurrence, standard patterns, and normality.',NULL,NULL,'global',1300,1399,'century','The interval preserves the source-reported adjective century.'),

(489,132,1,'Indo-European linguistic horizon','*h₃reg̑- to *rēg-olā-','The straight-piece formation supplies Latin rēgula.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No unique prehistoric place or first year is asserted.'),
(490,132,2,'Late Roman linguistic world','rēgula to regulāre and regulātus','A verb meaning direct according to rule and its participle develop in Late Latin.',NULL,NULL,'broad',NULL,NULL,'unresolved','The source supplies morphology rather than a dated token.'),
(491,132,3,'England','Middle English regulate','The Late Latin formation enters English as a governance-and-order verb.',52200000,-1500000,'regional',NULL,NULL,'unresolved','No single borrowing date is invented.'),
(492,132,4,'Global English','15th century–today','Regulate broadens across law, administration, mechanisms, rates, and biological control.',NULL,NULL,'global',1400,1499,'century','The interval preserves the source-reported century.'),

(493,133,1,'Indo-European linguistic horizon','*h₃reg̑- to lengthened *rēg-','The ruler and king formation develops within the straight-direct family.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparative analysis is not mapped to one kingdom or date.'),
(494,133,2,'Roman linguistic world','Latin rēx to rēgālis','The king noun supplies a kingly or royal adjective.',NULL,NULL,'broad',NULL,NULL,'unresolved','The word formation is more secure than one token date.'),
(495,133,3,'France and England','Anglo-French roial to Middle English roial','The monarch adjective crosses into English through French.',50000000,2000000,'broad',NULL,NULL,'unresolved','The route is regional rather than a single borrowing point.'),
(496,133,4,'Global English','14th century–today','Royal expands from monarch and crown relations into magnificence, superiority, and intensification.',NULL,NULL,'global',1300,1399,'century','The interval preserves the source-reported adjective century.'),

(497,134,1,'Indo-European linguistic horizon','*h₃reg̑- to lengthened *rēg-','The ruler and king formation develops within the straight-direct family.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No unique prehistoric place or first year is asserted.'),
(498,134,2,'Roman linguistic world','Latin rēx to rēgālis','The king noun supplies a kingly adjective.',NULL,NULL,'broad',NULL,NULL,'unresolved','The formation is established more securely than one token date.'),
(499,134,3,'France and England','Old French or Anglo-French transmission','Regal reaches Middle English through a reported French channel, with direct Latin transmission also allowed by one authority.',50000000,2000000,'broad',NULL,NULL,'unresolved','The map keeps the channel broad because the authorities preserve more than one route.'),
(500,134,4,'Global English','15th century–today','Regal remains monarch-centered while developing splendid and magnificent senses.',NULL,NULL,'global',1400,1499,'century','The interval preserves the source-reported century.'),

(501,135,1,'Indo-European linguistic horizon','reconstructed *h₃reg̑-','The straight, direct, and rule root supplies Latin regere.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No unique prehistoric place or first year is asserted.'),
(502,135,2,'Roman and Old French linguistic worlds','regere to regimen to reiame','Direction and government become a governed domain through Latin and Romance transmission.',NULL,NULL,'broad',NULL,NULL,'unresolved','The source reports a lineage, not one point-to-point historical event.'),
(503,135,3,'France and England','Old French reiame to Middle English realme','The domain noun enters English and is reshaped under the influence of the royal adjective.',50000000,2000000,'broad',NULL,NULL,'unresolved','Analogical influence is cited separately and no single reshaping date is invented.'),
(504,135,4,'Global English','13th century–today','Realm broadens from kingdom to any domain, sphere, or major biogeographic division.',NULL,NULL,'global',1200,1299,'century','The interval preserves the source-reported century.'),

(505,136,1,'Indo-European linguistic horizon','*h₃reg̑- to lengthened *rēg-','The straight-and-rule family develops a ruler or king grade.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparative horizon has no unique map point.'),
(506,136,2,'Celtic and Germanic linguistic horizons','Celtic *rīg-yo- to Germanic *rīkja-','A kingly or powerful formation is borrowed from reconstructed Celtic into reconstructed Germanic.',NULL,NULL,'broad',NULL,NULL,'unresolved','Both forms are reconstructed; no individual borrowing event is claimed.'),
(507,136,3,'England','Old English rīce','The Germanic formation is recorded in an English adjective meaning strong or powerful.',52200000,-1500000,'regional',NULL,NULL,'unresolved','The ancestry is firmer than one first token.'),
(508,136,4,'France and England','Old French riche and Middle English riche','French and English family material converge in the medieval word while sharing the same deeper Germanic ancestry.',50000000,2000000,'broad',NULL,NULL,'unresolved','The relative contribution of the two immediate channels is not quantified.'),
(509,136,5,'Global English','before 12th century–today','Rich develops from power and wealth into abundance, value, productivity, color, flavor, and intensity.',NULL,NULL,'global',NULL,1099,'before','The upper bound encodes before the twelfth century, not a coinage year.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(477,315,'reg-, *reg-to- section','supports','Publishes the reconstructed formation without a unique map point.'),
(478,315,'Germanic *rehtaz section','supports','Supplies the Germanic stage.'),
(479,300,'Etymology: Middle English from Old English riht','supports','Supplies the inherited English route.'),
(480,300,'Definitions and First Known Use','supports','Supplies the semantic range and temporal horizon.'),
(481,315,'reg-, suffixed *rēg-olā- section','supports','Publishes the reconstructed formation.'),
(482,302,'Etymology: Latin regula, straightedge and rule','supports','Supplies the physical and abstract Latin senses.'),
(483,302,'Etymology: Anglo-French to Middle English','supports','Supplies the broad transmission route.'),
(484,302,'Definitions and First Known Use','supports','Supplies the semantic range and century horizon.'),
(485,315,'reg-, suffixed *rēg-olā- section','supports','Publishes the reconstructed formation.'),
(486,304,'Etymology: Late Latin regularis from Latin regula','supports','Supplies the adjective formation.'),
(487,304,'Etymology: Anglo-French to Middle English reguler','supports','Supplies the broad transmission route.'),
(487,305,'Etymology and living-under-rule gloss','context','Supplies the early religious-rule context.'),
(488,304,'Definitions and First Known Use','supports','Supplies the semantic range and century horizon.'),
(489,315,'reg-, suffixed *rēg-olā- section','supports','Publishes the reconstructed formation.'),
(490,306,'Etymology: regulatus from regulare from regula','supports','Supplies the Late Latin morphology.'),
(491,306,'Etymology: Middle English from Late Latin','supports','Supplies the English route.'),
(492,306,'Definitions and First Known Use','supports','Supplies the semantic range and century horizon.'),
(493,315,'reg-, lengthened-grade *rēg- section','supports','Publishes the king formation.'),
(494,307,'Etymology: regalis from rex, king','supports','Supplies the Latin formation.'),
(495,307,'Etymology: Anglo-French to Middle English roial','supports','Supplies the broad transmission route.'),
(496,307,'Definitions and First Known Use','supports','Supplies the semantic range and century horizon.'),
(497,315,'reg-, lengthened-grade *rēg- section','supports','Publishes the king formation.'),
(498,310,'Etymology: Latin regalis from rex','supports','Supplies the Latin formation.'),
(499,309,'Etymology: Anglo-French or Latin','supports','Preserves alternative medieval channels.'),
(499,310,'Etymology: Old French from Latin','context','Supports the French route.'),
(500,309,'Definitions and First Known Use','supports','Supplies the semantic range and century horizon.'),
(501,315,'reg- heading and Latin regere section','supports','Publishes the root and Latin reflex.'),
(502,312,'Etymology: regimen from regere','supports','Supplies the government-noun lineage.'),
(503,311,'Etymology: Old French reiame to Middle English realme','supports','Supplies the broad borrowing route.'),
(503,312,'Etymology: altered under influence of Old French reial','context','Supplies the analogical influence.'),
(504,311,'Definitions and First Known Use','supports','Supplies the semantic range and century horizon.'),
(505,315,'reg-, lengthened-grade *rēg- section','supports','Publishes the ruler formation.'),
(506,315,'Celtic *rīg-yo- to Germanic *rīkja-','supports','Publishes the reconstructed borrowing.'),
(507,314,'Etymology: Old English rice, strong and powerful','supports','Supplies the Old English stage and meaning.'),
(508,314,'Etymology: from Old French and Old English','supports','Publishes both medieval inputs.'),
(508,313,'Etymology: Middle English from Old English','context','Preserves the inherited English emphasis.'),
(509,313,'Definitions and First Known Use','supports','Supplies the broad meanings and temporal horizon.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(240,129,'Did right begin only as a moral judgment?','No. The reviewed history joins straight, correct, just, proper, and directional senses inside one inherited family.','established','Merriam-Webster compares Latin rectus, straight or right, and American Heritage preserves a concrete straight sense beside justice and correctness.','resolved','The dossier records semantic plurality instead of replacing the modern moral sense with a geometric slogan.'),
(241,129,'Is political right the prehistoric source of the word?','No. American Heritage treats the political sense as a later seating-based development in legislative assemblies.','established','The headword etymology separately notes the historical seating explanation for the political noun.','resolved','The political branch is not projected into the reconstructed straight-and-direct root.'),
(242,130,'Was rule always only an abstract command?','No. Latin rēgula meant a straightedge or ruler as well as a rule, and the physical measuring sense survives in English.','established','Both dictionaries publish the straightedge or rod history and current measuring senses.','resolved','The abstract and physical branches remain visible without claiming one modern sense is false.'),
(243,130,'Does rule descend directly from English right?','No. They are deep cousins: rule comes through French and Latin rēgula, while right follows Germanic *rehtaz.','established','American Heritage publishes separate *rēg-olā- and *reg-to- branches under the same root.','resolved','The canonical graph joins the branches only at *h₃reg-.'),
(244,131,'Did regular originally mean statistically normal?','No. The reported medieval sense centers on living under or according to a rule; ordinary and standard are later extensions.','established','American Heritage glosses Middle English reguler as living under religious rule, and Merriam-Webster gives the rule lineage.','resolved','The dossier retains modern normality while exposing the earlier rule-centered stage.'),
(245,131,'Is regular unrelated to a physical ruler?','No. Its Late Latin adjective descends from rēgula, whose older semantic range includes a bar, rod, or straightedge.','established','Both dictionaries route the adjective through Latin rēgula.','resolved','The connection is modeled through the historical noun, not as a folk resemblance.'),
(246,132,'Did regulate begin only as a legal-government word?','No. The reported meanings include govern, direct, order, and adjust; legal control is one major branch.','established','Merriam-Webster documents governance, ordering, rate adjustment, and control senses.','resolved','The dossier does not reduce the word to modern administrative regulation.'),
(247,132,'Does regulate jump directly from the root meaning rule?','No. The reviewed route passes through Latin rēgula, Late Latin regulāre, and its participle regulātus.','established','Merriam-Webster explicitly publishes the morphological chain.','resolved','Every intermediate formation remains a clickable node.'),
(248,133,'Are royal and right unrelated lookalikes?','No. They are not close derivatives of each other, but both occupy documented branches under the reconstructed straight-and-direct root.','established','Merriam-Webster cross-references right from royal, and the root appendix publishes the king and right branches.','resolved','The graph shows deep cousinhood and no false royal-to-right edge.'),
(249,133,'Did royal first mean magnificent rather than monarchical?','No. The reported ancestry and first English sense are monarch-centered; magnificence is a semantic extension.','established','Merriam-Webster and American Heritage define and derive the adjective from the king family.','resolved','The modern evaluative sense remains visible as an extension.'),
(250,134,'Which medieval channel delivered regal into English?','The Latin source is secure, but the immediate channel remains plural in the reviewed authorities: American Heritage gives Old French, while Merriam-Webster allows Anglo-French or Latin.','probable','The two dictionaries publish different levels of specificity for the immediate borrowing route.','open',NULL),
(251,134,'Are regal and royal the same English borrowing?','No. They are separate medieval English arrivals that converge on Latin rēgālis and rēx.','established','The dictionaries give different English and French forms but the same Latin king adjective.','resolved','The canonical graph keeps distinct headword paths and shared Latin nodes.'),
(252,135,'Is realm simply a shortened form of royal?','No. Realm descends through a government noun from Latin regimen, but its medieval form was altered under the influence of the royal adjective.','established','Merriam-Webster supplies reiame and regimen; American Heritage explicitly identifies influence from Old French reial.','resolved','An analogical side edge records influence without replacing the main lineage.'),
(253,135,'Did realm always mean any abstract sphere?','No. Its oldest reported English horizon is kingdom; sphere, domain, and biogeographic meanings are extensions.','established','Merriam-Webster gives the thirteenth-century kingdom sense and current broader definitions.','resolved','The semantic history proceeds from governed territory to generalized domain.'),
(254,136,'Did rich reach Middle English only through Old English or only through French?','The shared deep ancestry is secure, but the immediate medieval history is convergent: Merriam-Webster foregrounds Old English, while American Heritage explicitly gives both Old French and Old English.','probable','The authorities differ in immediate-route emphasis while agreeing that the forms belong to the same Germanic/Celtic king-and-power family.','open',NULL),
(255,136,'Did rich originally mean only possessing money?','No. Old English rīce is glossed strong or powerful, and the wider family centers on rule and kingship before the modern abundance field.','established','American Heritage supplies strong and powerful; Merriam-Webster connects the Germanic words with Celtic king vocabulary.','resolved','Older power does not invalidate modern wealth; it explains the semantic path.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(240,300,'Etymology and akin forms','supports','Connects right with Latin rectus straight and regere direct or rule.'),
(240,301,'Definitions 1–12 and etymology','context','Preserves moral, factual, geometric, and straight senses.'),
(241,301,'Etymology note for the political noun','supports','Attributes the political sense to legislative seating.'),
(241,300,'Headword definitions','context','Separates political senses from the inherited etymology.'),
(242,302,'Etymology: Latin regula, straightedge and rule','supports','Directly publishes the physical and abstract meanings.'),
(242,303,'Definitions and etymology: rod, principle','context','Independently preserves both branches.'),
(243,315,'Separate *reg-to- and *rēg-olā- formations','supports','Publishes distinct right and rule branches.'),
(243,302,'Etymology cross-reference to right','context','Signals the deeper relation without direct English descent.'),
(244,305,'Etymology: Middle English reguler, living under religious rule','supports','Supplies the earlier rule-centered meaning.'),
(244,304,'Definitions and First Known Use','context','Documents later orderly, standard, and recurring senses.'),
(245,304,'Etymology: regularis from regula, of a bar and rule','supports','Publishes the physical base.'),
(245,305,'Etymology: regula, rod and rule','context','Independently supports the connection.'),
(246,306,'Definitions 1–3','supports','Documents govern, order, control, and rate-adjustment senses.'),
(247,306,'Etymology: regulatus from regulare from regula','supports','Publishes every intermediate formation.'),
(247,315,'reg-, rēgula formation','context','Supplies the deeper reconstructed branch.'),
(248,307,'Etymology: akin to regere; more at right','supports','Connects the royal lineage to the right family.'),
(248,315,'King and right branches under reg-','supports','Publishes the distinct deep branches.'),
(249,307,'Definitions, etymology, and First Known Use','supports','Places monarch senses at the first reported English horizon.'),
(249,308,'Headword definitions and etymology','context','Independently preserves the monarch-centered ancestry.'),
(250,310,'Etymology: Middle English from Old French from Latin','supports','Publishes the Old French channel.'),
(250,309,'Etymology: Middle English from Anglo-French or Latin','supports','Publishes alternative immediate channels.'),
(251,307,'Etymology: Middle English roial from Anglo-French','supports','Supplies the royal path.'),
(251,310,'Etymology: Middle English regal from Old French','supports','Supplies the separate regal path.'),
(252,312,'Etymology: realme altered under influence of Old French reial','supports','Directly distinguishes descent from influence.'),
(252,311,'Etymology: realme from reiame from regimen','supports','Supplies the main lineage.'),
(253,311,'Definitions and First Known Use','supports','Reports kingdom at the thirteenth-century horizon and broader current senses.'),
(253,312,'Definitions 1–2','context','Independently documents kingdom and sphere.'),
(254,314,'Etymology: from Old French and from Old English rice','supports','Publishes both immediate inputs.'),
(254,313,'Etymology: Middle English riche from Old English rice','supports','Foregrounds the inherited English route.'),
(255,314,'Etymology: Old English rice, strong and powerful','supports','Publishes the older power sense.'),
(255,313,'Etymology: Germanic words borrowed from Celtic king words','context','Connects power and kingship before the wealth field.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(129,129,2040,'right','Right was straight before morality claimed it.','Old English riht and Germanic *rehtaz belong to a reconstructed straight-and-direct family. Justice and correctness are historical extensions inside the same inherited word.','A',100,'The reveal preserves modern moral meaning and does not commit the etymological fallacy.'),
(130,130,2041,'rule','A rule was a straightedge.','Latin rēgula named a straightedge or ruler as well as a principle. English authority and procedure descend through that concrete measuring branch.','A',100,'Both the physical and abstract senses are directly sourced.'),
(131,131,2042,'regular','Regular is measured order.','Late Latin rēgulāris grows from rēgula, the straight bar or rule. Ordinary, scheduled, and normal are later abstractions from conformity to a rule.','A',99,'The reveal does not claim every modern regular thing was literally measured.'),
(132,132,2043,'regulate','To regulate is to bring under a straightedge’s rule.','The verb passes through regulātus and regulāre to Latin rēgula. Governance and technical adjustment share the older idea of directing by rule.','A',99,'Every morphological step is retained.'),
(133,133,2044,'royal','Royal and right are deep cousins.','Royal follows Latin rēgālis and rēx through the king branch; right follows Germanic *rehtaz through the straight-and-correct branch. They meet at reconstructed *h₃reg-.','A',100,'The graph joins only the deep root and draws no false direct descent.'),
(134,134,2045,'regal','Regal and royal are two arrivals from one king adjective.','The English paths differ, but both reach Latin rēgālis and rēx. Their synonymy reflects shared ancestry, not one modern word copied from the other.','A',98,'The uncertain immediate borrowing channel for regal remains open.'),
(135,135,2046,'realm','Royal reshaped realm.','Realm follows Latin regimen, government, through Old French reiame; American Heritage reports that its medieval form was altered under the influence of Old French reial, royal.','A',100,'Descent and analogical influence are represented as different edge types.'),
(136,136,2047,'rich','Rich was powerful—and its ancestor crossed from Celtic into Germanic.','Old English rīce meant strong or powerful. Germanic *rīkja- was borrowed from Celtic *rīg-yo-, in the same king branch that produced royal and rājā.','A',100,'The medieval Old English and French convergence remains explicit.');
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
(129,301,'Definitions, etymology, and straight sense','supports','Preserves the straight, correct, and just semantic cluster.'),
(129,315,'reg-, *reg-to- to Germanic *rehtaz','supports','Publishes the reconstructed straight branch.'),
(130,302,'Etymology: Latin regula, straightedge and rule','supports','Publishes the physical and abstract meanings.'),
(130,315,'reg-, suffixed *rēg-olā- section','supports','Supplies the deeper straight-piece formation.'),
(131,305,'Etymology: regularis from regula, rod and rule','supports','Publishes the rule-centered ancestry.'),
(131,304,'Definitions and Word History','context','Documents later order, interval, and standard senses.'),
(132,306,'Etymology: regulatus from regulare from regula','supports','Publishes the complete morphological chain.'),
(132,315,'reg-, rēgula section','context','Supplies the straight-piece root branch.'),
(133,307,'Etymology: regalis from rex; akin to regere; more at right','supports','Connects the king adjective to the wider family.'),
(133,315,'Separate king and right branches under reg-','supports','Publishes the deep cousin relationship.'),
(134,310,'Etymology: Middle English from Old French from Latin regalis','supports','Publishes the regal path.'),
(134,308,'Etymology: royal from Latin regalis','context','Publishes the parallel royal path.'),
(135,312,'Etymology: alteration influenced by Old French reial, royal','supports','Directly publishes the analogical influence.'),
(135,311,'Etymology: realme from reiame from regimen','supports','Supplies the main descent route.'),
(136,314,'Etymology: Old English rice, strong and powerful; Old French input','supports','Publishes the semantic history and convergence.'),
(136,315,'Celtic *rīg-yo- to Germanic *rīkja-','supports','Publishes the reconstructed borrowing and king branch.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(90,129,130,'RIGHT AND RULE MEET AT STRAIGHT','Right follows Germanic *rehtaz; rule follows Latin rēgula, a straightedge. Their evidence-backed trails meet only at reconstructed *h₃reg-.',100,'A','reviewed'),
(91,130,132,'A RULE BECOMES REGULATION','Rule and regulate share Latin rēgula; the verb exposes regulāre and regulātus rather than jumping directly from the English noun.',98,'A','reviewed'),
(92,131,130,'REGULAR STILL CARRIES THE RULER','The adjective regular descends from the same Latin straightedge-and-rule noun as English rule.',99,'A','reviewed'),
(93,133,129,'A KING AND A RIGHT ANGLE SHARE A ROOT','Royal takes the king grade and right the straight adjective branch; neither is the other’s ancestor.',100,'A','reviewed'),
(94,134,133,'TWO ROYAL WORDS ENTER ENGLISH','Regal and royal take different medieval routes before collapsing onto Latin rēgālis and rēx.',97,'A','reviewed'),
(95,135,133,'ROYAL BENDS THE SHAPE OF REALM','Realm descends from regimen but Middle English realme was analogically reshaped under influence from the royal word.',100,'A','reviewed'),
(96,136,133,'RICH AND ROYAL SHARE THE KING BRANCH','Rich travels through Germanic *rīkja- borrowed from Celtic *rīg-yo-; royal travels through Latin rēgālis. They meet at lengthened *rēg-.',100,'A','reviewed'),
(97,136,129,'POWER, WEALTH, AND RIGHTNESS DIVERGE','Rich and right share the deepest straight-and-direct family but take a Celtic-to-Germanic king branch and a Germanic straight-adjective branch respectively.',99,'A','reviewed');
--> statement-breakpoint

-- Canonicalize every dossier form. Shared Latin, reconstructed formation, and
-- root nodes collapse only when language, normalized form, sense, and evidence
-- status agree. Every dossier keeps a distinct knowledge boundary.
WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 780 AND 848
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
WHERE f.id BETWEEN 780 AND 848;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 652 AND 712;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 652 AND 712;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 652 AND 712;
--> statement-breakpoint

-- REALM has a documented analogical influence branch: realme descends from
-- reiame/regimen, but Old French reial “royal” helped reshape its medieval
-- surface form. Influence is not substituted for descent.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:8:reial:attested:sense:monarch-adjective',8,'reial','reial','monarch-adjective','reial',NULL,'attested','Old French',842,1400,'royal','American Heritage reports this royal adjective as an analogical influence on realme.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:realme:attested:sense:kingdom-domain'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:reial:attested:sense:monarch-adjective'),'analogical_influence','Middle English realme was reshaped under the influence of Old French reial, royal.','The kingdom noun becomes more visibly associated with the royal adjective without descending from it.','American Heritage Dictionary Editors','established',NULL,'Medieval analogical influence; no single reshaping date is asserted.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:reial:attested:sense:monarch-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:regalis:attested:sense:kingly-adjective'),'borrowing','Old French reial continues Latin rēgālis through Romance sound and spelling history.','The kingly or royal adjective remains monarch-centered.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:realme:attested:sense:kingdom-domain' AND p.canonical_key='node:8:reial:attested:sense:monarch-adjective' AND e.relation_type='analogical_influence'),312,'Etymology: altered under influence of Old French reial, royal','supports','Directly publishes the analogical influence.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:8:reial:attested:sense:monarch-adjective' AND p.canonical_key='node:9:regalis:attested:sense:kingly-adjective' AND e.relation_type='borrowing'),308,'Etymology: Old French from Latin regalis','supports','Publishes the royal adjective route.');
--> statement-breakpoint

-- RICH preserves both immediate inputs reported by American Heritage. The
-- main dossier follows inherited Old English rīce, this side branch exposes
-- Old French riche, itself from the same Germanic *rīkja- family.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:8:riche:attested:sense:wealthy-adjective',8,'riche','riche','wealthy-adjective','riche',NULL,'attested','Old French',842,1400,'rich, wealthy','American Heritage identifies Old French as one input to Middle English riche and marks it as Germanic in origin.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:riche:attested:sense:wealthy-powerful'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:riche:attested:sense:wealthy-adjective'),'borrowing_influence','Old French riche reinforces Middle English riche alongside the inherited Old English branch.','The French wealth adjective converges with English power-and-wealth material.','American Heritage Dictionary Editors','established','The source reports both inputs but does not quantify their relative contribution.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:riche:attested:sense:wealthy-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:rikja:reconstructed:sense:powerful-kingly-adjective'),'borrowing','Old French riche continues a Germanic *rīkja- family form through historical borrowing.','Powerful and wealthy remain linked across the Germanic-to-Romance route.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic parent is reconstructed; Old French is attested.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:riche:attested:sense:wealthy-powerful' AND p.canonical_key='node:8:riche:attested:sense:wealthy-adjective' AND e.relation_type='borrowing_influence'),314,'Etymology: Middle English from Old French and from Old English','supports','Directly publishes the dual input.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:8:riche:attested:sense:wealthy-adjective' AND p.canonical_key='node:5:rikja:reconstructed:sense:powerful-kingly-adjective' AND e.relation_type='borrowing'),314,'Etymology: Old French of Germanic origin','supports','Publishes the Germanic ancestry of the French input.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:8:riche:attested:sense:wealthy-adjective' AND p.canonical_key='node:5:rikja:reconstructed:sense:powerful-kingly-adjective' AND e.relation_type='borrowing'),315,'reg-, Germanic *rīkja- to Old French riche','context','Places the French form in the reconstructed king-and-power branch.');
