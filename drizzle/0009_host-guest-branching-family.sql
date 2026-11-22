INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(18,'middle-french','Middle French','Indo-European','Romance',0,1300,1600,'French of the later medieval and early modern period.');
--> statement-breakpoint
INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(22,'host','host','host','/hoʊst/','noun','A person who receives guests, borrowed through Anglo-French from Latin hospes, a word that could name either side of a reciprocal hospitality relationship.','Host and guest were not originally fixed opposites. The Latin and reconstructed families encode roles that could reverse when hospitality was returned.','reviewed'),
(23,'guest','guest','guest','/ɡɛst/','noun','A person receiving hospitality, inherited through Old English from the Germanic branch of reconstructed *ghos-ti-.','Guest and hostile meet at the same reconstructed stranger: Germanic preserved the visitor, while Latin hostis narrowed the outsider into an enemy.','reviewed'),
(24,'hostile','hostile','hostile','/ˈhɑːstəl/','adjective','Enemy-like or antagonistic, borrowed through French and Latin from hostīlis, built on Latin hostis “stranger; enemy.”','Hospitality and hostility share a stranger. The semantic split is not a pun: both histories reach the reconstructed reciprocal outsider *ghos-ti-.','reviewed'),
(25,'hospital','hospital','hospital','/ˈhɑːspɪtəl/','noun','A medical institution whose name first referred to guest accommodation and charitable lodging, through Medieval Latin hospitāle.','A hospital was a guest room before it was a medical institution. Care for the sick grew from the older duty to shelter travelers and people in need.','reviewed'),
(26,'hotel','hotel','hotel','/hoʊˈtɛl/','noun','A public lodging establishment, borrowed from French hôtel through Old French hostel and ultimately the Latin hospitality family.','Hotel and hospital are historical doublets: different French routes reshaped the same Latin guest-accommodation family.','reviewed');
--> statement-breakpoint
DROP INDEX `idx_sources_url`;
--> statement-breakpoint
CREATE INDEX `idx_sources_url` ON `sources` (`url`);
--> statement-breakpoint
INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(74,'mw-host','Host — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/host',NULL,'historical_dictionary'),
(75,'mw-guest','Guest — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/guest',NULL,'historical_dictionary'),
(76,'mw-hostile','Hostile — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hostile',NULL,'historical_dictionary'),
(77,'mw-hospital','Hospital — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hospital',NULL,'historical_dictionary'),
(78,'mw-hotel','Hotel — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hotel',NULL,'historical_dictionary'),
(79,'mw-hospital-family','Had a Long Day of Travel? Check Into a Hospital','Merriam-Webster Editors',2017,'Merriam-Webster','https://www.merriam-webster.com/wordplay/word-history-hospital-hostel-hotel-hospice',NULL,'editorial_reference'),
(80,'ahd-host','Host — Word History','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=host',NULL,'historical_dictionary'),
(81,'ahd-hostile','Hostile — Word History','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=hostile',NULL,'historical_dictionary'),
(82,'ahd-ie-ghosti','Indo-European Root ghos-ti-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(83,'ut-lrc-ghosti','Indo-European Lexicon: ghosti-s','University of Texas Linguistics Research Center',2026,'University of Texas at Austin','https://lrc.la.utexas.edu/lex/master/0684',NULL,'scholarly_lexicon');
--> statement-breakpoint
INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(139,22,1,1,'host','host','hospitality-role',NULL,'/hoʊst/','attested','14th century–today',1300,NULL,'one who receives or entertains guests; later many extended roles','This dossier treats the hospitality sense, not the distinct army or Eucharistic homonyms.'),
(140,22,2,2,'ost / host','ost host','hospitality-role',NULL,NULL,'attested','Middle English',1100,1500,'host or guest; a person in a hospitality relationship','Merriam-Webster records Middle English ost and host for both host and guest roles.'),
(141,22,12,3,'oste / hoste','oste hoste','hospitality-role',NULL,NULL,'attested','Anglo-French',1000,1400,'host or guest','Borrowing channel for the English hospitality noun.'),
(142,22,9,4,'hospes (hospit-)','hospes hospit','reciprocal-host-guest',NULL,NULL,'attested','Latin antiquity',-500,500,'guest, visitor, or the person receiving a guest','The dual role is explained through reciprocal duties of hospitality.'),
(143,22,6,5,'*ghos-pot-','ghos-pot','guest-master-compound',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'guest-master; person embodying a reciprocal hospitality relationship','A reconstructed compound of the guest/stranger base and *pot- “master.”'),
(144,22,6,6,'*ghos-ti-','ghos-ti','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'stranger, guest, host; person with reciprocal duties of hospitality','AHD treats reciprocity as the proper core; Merriam-Webster calls the distribution dialectal and limited.'),
(145,22,7,7,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the secure hospitality reconstruction',NULL,NULL,'No single deeper ancestor of *ghos-ti- is treated as secure.','A proposed deeper exchange root remains separately visible in the canonical graph.'),
(146,23,1,1,'guest','guest','guest-role',NULL,'/ɡɛst/','attested','13th century–today',1200,NULL,'a person receiving hospitality; a visitor','Merriam-Webster reports first known use in the 13th century.'),
(147,23,2,2,'gest / gyst / gust / gist','gest gyst gust gist','guest-role',NULL,NULL,'attested','Middle English',1100,1500,'guest, visitor, stranger','The Middle English initial g may have been reinforced in part by Old Norse gestr.'),
(148,23,3,3,'giest / gyst / gest / gæst','giest gyst gest gaest','guest-role',NULL,NULL,'attested','Old English',700,1100,'guest or stranger','Recorded Old English variants reported by Merriam-Webster.'),
(149,23,5,4,'*gastiz','gastiz','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Germanic prehistory',-1500,500,'guest or stranger','AHD writes *gastiz; Merriam-Webster gives Germanic *gasti-.'),
(150,23,6,5,'*ghos-ti-','ghos-ti','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'stranger, guest, host; person with reciprocal duties of hospitality','Shared reconstructed node with the Latin stranger and hospitality branches.'),
(151,23,7,6,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the secure hospitality reconstruction',NULL,NULL,'No single deeper ancestor of *ghos-ti- is treated as secure.','A proposed deeper exchange root remains separately visible in the canonical graph.'),
(152,24,1,1,'hostile','hostile','enmity',NULL,'/ˈhɑːstəl/','attested','1580–today',1580,NULL,'of an enemy; antagonistic, adverse, or unfriendly','Merriam-Webster reports first known use in 1580.'),
(153,24,18,2,'hostile','hostile','enmity',NULL,NULL,'attested','Middle French',1300,1600,'hostile or enemy-like','English borrowing involved both Middle French and Latin.'),
(154,24,9,3,'hostīlis','hostilis','enmity',NULL,NULL,'attested','Latin antiquity',-300,500,'of or characteristic of an enemy','Formed from hostis with the adjective suffix -īlis.'),
(155,24,9,4,'hostis','hostis','outsider-enemy',NULL,NULL,'attested','Latin antiquity',-500,500,'foreigner or stranger in early use; later enemy','The shift from legally recognized outsider to hostile outsider is historically documented but not reducible to one dated event.'),
(156,24,6,5,'*ghos-ti-','ghos-ti','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'stranger, guest, host; person with reciprocal duties of hospitality','Shared reconstructed node with guest, host, hospital, and hotel.'),
(157,24,7,6,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the secure hospitality reconstruction',NULL,NULL,'No single deeper ancestor of *ghos-ti- is treated as secure.','A proposed deeper exchange root remains separately visible in the canonical graph.'),
(158,25,1,1,'hospital','hospital','medical-care',NULL,'/ˈhɑːspɪtəl/','attested','14th century–today',1300,NULL,'an institution for charitable residence and, later, medical care','The now-familiar medical sense developed after the lodging and charity senses.'),
(159,25,2,2,'hospital / ospitale','hospital ospitale','lodging-care',NULL,NULL,'attested','Middle English',1100,1500,'residence for pilgrims and travelers; charitable lodging for poor or infirm people','Merriam-Webster reports this earlier range of senses.'),
(160,25,12,3,'hospital','hospital','lodging-care',NULL,NULL,'attested','Anglo-French',1000,1400,'guest lodging or charitable institution','The immediate borrowing channel for Middle English.'),
(161,25,14,4,'hospitāle','hospitale','guest-lodging',NULL,NULL,'attested','Medieval Latin',500,1500,'guest accommodation; hospice or charitable lodging','A substantivized form of Latin hospitālis.'),
(162,25,9,5,'hospitālis','hospitalis','hospitality-quality',NULL,NULL,'attested','Latin antiquity',-300,500,'of a guest; hospitable','Built on the stem hospit- of hospes.'),
(163,25,9,6,'hospes (hospit-)','hospes hospit','reciprocal-host-guest',NULL,NULL,'attested','Latin antiquity',-500,500,'guest, visitor, or the person receiving a guest','Shared canonical node with host and hotel.'),
(164,25,6,7,'*ghos-pot-','ghos-pot','guest-master-compound',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'guest-master; person embodying a reciprocal hospitality relationship','Shared compound node with host and hotel.'),
(165,25,6,8,'*ghos-ti-','ghos-ti','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'stranger, guest, host; person with reciprocal duties of hospitality','Shared base node across all five dossiers.'),
(166,25,7,9,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the secure hospitality reconstruction',NULL,NULL,'No single deeper ancestor of *ghos-ti- is treated as secure.','A proposed deeper exchange root remains separately visible in the canonical graph.'),
(167,26,1,1,'hotel','hotel','commercial-lodging',NULL,'/hoʊˈtɛl/','attested','1687–today',1687,NULL,'a public lodging establishment, usually offering additional services','Merriam-Webster reports first known use in 1687.'),
(168,26,11,2,'hôtel','hotel','commercial-lodging',NULL,NULL,'attested','French',1600,NULL,'hotel, mansion, or lodging establishment','The French circumflex reflects loss of the s found in Old French hostel.'),
(169,26,8,3,'hostel / ostel','hostel ostel','guest-lodging',NULL,NULL,'attested','Old French',800,1400,'lodging or accommodation','The ancestor of French hôtel and a borrowing from the Latin guest-accommodation family.'),
(170,26,14,4,'hospitāle','hospitale','guest-lodging',NULL,NULL,'attested','Medieval Latin',500,1500,'guest accommodation; hospice or charitable lodging','Shared canonical node with hospital.'),
(171,26,9,5,'hospitālis','hospitalis','hospitality-quality',NULL,NULL,'attested','Latin antiquity',-300,500,'of a guest; hospitable','Shared canonical node with hospital.'),
(172,26,9,6,'hospes (hospit-)','hospes hospit','reciprocal-host-guest',NULL,NULL,'attested','Latin antiquity',-500,500,'guest, visitor, or the person receiving a guest','Shared canonical node with host and hospital.'),
(173,26,6,7,'*ghos-pot-','ghos-pot','guest-master-compound',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'guest-master; person embodying a reciprocal hospitality relationship','Shared compound node with host and hospital.'),
(174,26,6,8,'*ghos-ti-','ghos-ti','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'stranger, guest, host; person with reciprocal duties of hospitality','Shared base node across all five dossiers.'),
(175,26,7,9,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the secure hospitality reconstruction',NULL,NULL,'No single deeper ancestor of *ghos-ti- is treated as secure.','A proposed deeper exchange root remains separately visible in the canonical graph.');
--> statement-breakpoint
INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(118,22,139,140,'continuation','Middle English ost / host continued into modern host with loss of the unstressed variant and stabilization of initial h.','The reversible host-or-guest role narrowed in English toward the person receiving others, then expanded into event, media, biological, and computing roles.','Merriam-Webster editors','established',NULL,'Hospitality sense recorded from the 14th century.','reviewed'),
(119,22,140,141,'borrowing','Middle English borrowed Anglo-French oste / hoste with ordinary spelling variation around initial h.','The host-or-guest hospitality role was retained.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(120,22,141,142,'borrowing','Anglo-French oste / hoste continues Latin hospes through Romance sound reduction and adaptation.','Latin''s reciprocal host-or-guest role remained available in the French and early English forms.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(121,22,142,143,'compound_reflex','Latin hospes (stem hospit-) is analyzed as a reduced reflex of the compound *ghos-pot-, with substantial phonetic reduction acknowledged by the sources.','A “guest-master” encoded the reciprocal role in which the same person could be guest on one occasion and host on another.','Merriam-Webster · American Heritage Indo-European Roots','probable','The host/guest reciprocity is well supported; Merriam-Webster notes that the degree of phonetic reduction has led some scholars to question the precise compound etymology.',NULL,'reviewed'),
(122,22,143,144,'compound_component','The first member *ghos- of *ghos-pot- continues the *ghos-ti- guest/stranger base; the compound also contains *pot- “master.”','The reciprocal outsider becomes the “guest-master,” the person who stands for mutual duties of hospitality.','Merriam-Webster · American Heritage Indo-European Roots','probable','The compound analysis is reconstructed and has a separate *pot- component edge in the canonical graph.',NULL,'reviewed'),
(123,22,144,145,'knowledge_boundary','No deeper form is promoted as a secure ancestor of *ghos-ti-.','The graph preserves a hypothetical exchange-root analysis as proposed evidence, not as the single established continuation.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(124,23,146,147,'continuation','Middle English gest and related variants developed into modern guest; the modern spelling distinguishes the hard initial consonant without changing the inherited base.','The visitor receiving hospitality remained the central sense.','Merriam-Webster editors','established',NULL,'First known use: 13th century.','reviewed'),
(125,23,147,148,'inheritance','Middle English forms continue Old English giest / gyst / gest / gæst; Merriam-Webster notes that Middle English g may partly reflect Old Norse gestr.','Guest, visitor, and stranger remain within the inherited semantic field.','Merriam-Webster editors','probable','Direct Old English inheritance is secure; the degree of Norse reinforcement in the Middle English forms is not fixed.',NULL,'reviewed'),
(126,23,148,149,'inheritance','Old English guest forms continue reconstructed Germanic *gastiz / *gasti-, alongside Old Saxon and Old High German gast, Old Norse gestr, and Gothic gasts.','The Germanic family preserves guest and stranger senses.','Merriam-Webster · American Heritage · University of Texas LRC','probable','The Proto-Germanic form is reconstructed and notation varies slightly by source.',NULL,'reviewed'),
(127,23,149,150,'inheritance','Germanic *gastiz continues *ghos-ti-, with the Germanic reflex showing the inherited consonant and vowel developments represented across the cognate set.','A reciprocal outsider or stranger specializes as the guest.','Merriam-Webster · American Heritage Indo-European Roots · University of Texas LRC','probable','The Indo-European form is reconstructed from a geographically limited set of branches.',NULL,'reviewed'),
(128,23,150,151,'knowledge_boundary','No deeper form is promoted as a secure ancestor of *ghos-ti-.','The graph preserves a hypothetical exchange-root analysis as proposed evidence, not as the single established continuation.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(129,24,152,153,'mixed_borrowing','English hostile was borrowed through Middle French while also drawing directly on Latin hostīlis.','The enemy-related adjective entered English without a major semantic shift.','Merriam-Webster editors','established','The source identifies both Middle French and Latin; the displayed route preserves French transmission without excluding learned Latin influence.','First known use: 1580.','reviewed'),
(130,24,153,154,'borrowing','Middle French hostile was borrowed from Latin hostīlis with minimal learned-form adaptation.','The meaning remained “of or characteristic of an enemy.”','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(131,24,154,155,'derivation','Latin hostīlis is formed from hostis with the relational adjective suffix -īlis.','The noun “enemy” becomes the adjective “enemy-like” or hostile.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(132,24,155,156,'inheritance','Latin hostis continues *ghos-ti-; the inherited word first denoted a foreigner or stranger and later narrowed to an enemy.','The reciprocal or legally recognized outsider becomes the hostile outsider and enemy as Roman usage changes.','Merriam-Webster · American Heritage Indo-European Roots · University of Texas LRC','probable','The family connection is strong; the semantic narrowing unfolded historically rather than at one recoverable moment.',NULL,'reviewed'),
(133,24,156,157,'knowledge_boundary','No deeper form is promoted as a secure ancestor of *ghos-ti-.','The graph preserves a hypothetical exchange-root analysis as proposed evidence, not as the single established continuation.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(134,25,158,159,'continuation','Middle English hospital / ospitale continued into modern hospital with spelling and stress stabilization.','Guest accommodation and charitable residence developed into the institution for medical care familiar today.','Merriam-Webster editors','established',NULL,'The medical sense developed in the 15th century after the 14th-century English borrowing.','reviewed'),
(135,25,159,160,'borrowing','Middle English borrowed Anglo-French hospital, with an ospitale variant reflecting the same learned lodging term.','Residence for travelers and charitable care remained central.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(136,25,160,161,'borrowing','Anglo-French hospital continues Medieval Latin hospitāle with Romance adaptation.','Guest accommodation becomes a named charitable lodging institution.','Merriam-Webster · Merriam-Webster historical essay','established',NULL,NULL,'reviewed'),
(137,25,161,162,'substantivization','Medieval Latin hospitāle is the neuter substantivization of Latin hospitālis, “of a guest; hospitable.”','An adjective about guests came to name guest accommodations and then institutions of lodging and care.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(138,25,162,163,'derivation','Latin hospitālis is formed from the stem hospit- of hospes with the adjective suffix -ālis.','The host/guest relationship becomes the quality of being for guests or hospitable.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(139,25,163,164,'compound_reflex','Latin hospes (stem hospit-) is analyzed as a reduced reflex of the compound *ghos-pot-, with substantial phonetic reduction acknowledged by the sources.','A “guest-master” encoded the reciprocal role in which the same person could be guest on one occasion and host on another.','Merriam-Webster · American Heritage Indo-European Roots','probable','The host/guest reciprocity is well supported; Merriam-Webster notes that the degree of phonetic reduction has led some scholars to question the precise compound etymology.',NULL,'reviewed'),
(140,25,164,165,'compound_component','The first member *ghos- of *ghos-pot- continues the *ghos-ti- guest/stranger base; the compound also contains *pot- “master.”','The reciprocal outsider becomes the “guest-master,” the person who stands for mutual duties of hospitality.','Merriam-Webster · American Heritage Indo-European Roots','probable','The compound analysis is reconstructed and has a separate *pot- component edge in the canonical graph.',NULL,'reviewed'),
(141,25,165,166,'knowledge_boundary','No deeper form is promoted as a secure ancestor of *ghos-ti-.','The graph preserves a hypothetical exchange-root analysis as proposed evidence, not as the single established continuation.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(142,26,167,168,'borrowing','English borrowed French hôtel, anglicizing the accent and pronunciation.','The lodging-establishment sense was retained and generalized in English.','Merriam-Webster editors','established',NULL,'First known use: 1687.','reviewed'),
(143,26,168,169,'continuation','French hôtel continues Old French hostel / ostel; loss of s before the consonant is reflected by the circumflex in the modern French spelling.','Lodging and accommodation remain central, with French also developing a mansion sense.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(144,26,169,170,'borrowing','Old French hostel / ostel continues the Medieval Latin guest-accommodation term hospitāle through Romance sound and spelling change.','A guest room or lodging becomes an inn-like place for travelers.','Merriam-Webster historical essay','established',NULL,NULL,'reviewed'),
(145,26,170,171,'substantivization','Medieval Latin hospitāle is the neuter substantivization of Latin hospitālis, “of a guest; hospitable.”','An adjective about guests came to name guest accommodations and then institutions of lodging and care.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(146,26,171,172,'derivation','Latin hospitālis is formed from the stem hospit- of hospes with the adjective suffix -ālis.','The host/guest relationship becomes the quality of being for guests or hospitable.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(147,26,172,173,'compound_reflex','Latin hospes (stem hospit-) is analyzed as a reduced reflex of the compound *ghos-pot-, with substantial phonetic reduction acknowledged by the sources.','A “guest-master” encoded the reciprocal role in which the same person could be guest on one occasion and host on another.','Merriam-Webster · American Heritage Indo-European Roots','probable','The host/guest reciprocity is well supported; Merriam-Webster notes that the degree of phonetic reduction has led some scholars to question the precise compound etymology.',NULL,'reviewed'),
(148,26,173,174,'compound_component','The first member *ghos- of *ghos-pot- continues the *ghos-ti- guest/stranger base; the compound also contains *pot- “master.”','The reciprocal outsider becomes the “guest-master,” the person who stands for mutual duties of hospitality.','Merriam-Webster · American Heritage Indo-European Roots','probable','The compound analysis is reconstructed and has a separate *pot- component edge in the canonical graph.',NULL,'reviewed'),
(149,26,174,175,'knowledge_boundary','No deeper form is promoted as a secure ancestor of *ghos-ti-.','The graph preserves a hypothetical exchange-root analysis as proposed evidence, not as the single established continuation.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint
INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(118,74,'Noun (1), Etymology and First Known Use','supports',NULL),(118,80,'host 1 etymology','supports',NULL),
(119,74,'Anglo-French oste, hoste','supports',NULL),(119,80,'Old French source','supports',NULL),
(120,74,'Latin hospes','supports',NULL),(120,80,'Latin hospes, hospit-','supports',NULL),
(121,74,'hospes note and reconstructed compound','supports','Reports reciprocal host/guest roles and scholarly concern about phonetic reduction.'),(121,80,'ghos-ti- root pointer','supports',NULL),(121,82,'compound *ghos-pot-','supports',NULL),
(122,74,'*ghosti-pot- analysis','supports',NULL),(122,82,'*ghos-pot- compound','supports','Identifies both the guest base and *pot- “master.”'),
(123,75,'hypothetical deeper *ǵhes- note','supports','A deeper exchange base is explicitly hypothetical, not secure.'),(123,82,'ghos-ti- root horizon','supports',NULL),
(124,75,'Etymology and First Known Use','supports',NULL),(125,75,'Middle and Old English forms','supports','Includes possible Old Norse reinforcement.'),
(126,75,'Germanic *gasti- and cognates','supports',NULL),(126,82,'Germanic *gastiz','supports',NULL),(126,83,'Germanic reflexes','supports',NULL),
(127,75,'dialectal Indo-European *ghost-i-','supports',NULL),(127,82,'ghos-ti- root','supports',NULL),(127,83,'Pokorny ghosti-s','supports',NULL),
(128,75,'hypothetical deeper *ǵhes- note','supports',NULL),(128,82,'ghos-ti- root horizon','supports',NULL),
(129,76,'Middle French and Latin borrowing','supports',NULL),(130,76,'Middle French from Latin hostīlis','supports',NULL),
(131,76,'hostis plus -īlis','supports',NULL),(131,81,'Latin hostīlis from hostis','supports',NULL),
(132,75,'Latin hostis semantic history','supports','Documents the shift from foreigner/stranger to enemy.'),(132,76,'Latin hostis','supports',NULL),(132,81,'ghos-ti- root pointer','supports',NULL),(132,82,'Latin hostis from ghos-ti-','supports',NULL),(132,83,'Latin hostis reflex','supports',NULL),
(133,75,'hypothetical deeper *ǵhes- note','supports',NULL),(133,82,'ghos-ti- root horizon','supports',NULL),
(134,77,'Middle English senses and First Known Use','supports',NULL),(134,79,'hospital semantic history','supports','Describes lodging, charity, and later medical senses.'),
(135,77,'Anglo-French borrowing','supports',NULL),(136,77,'Medieval Latin hospitāle','supports',NULL),(136,79,'hospital family transmission','supports',NULL),
(137,77,'hospitāle from hospitālis','supports',NULL),(137,79,'Latin formative source','supports',NULL),(138,77,'hospitālis from hospes','supports',NULL),
(139,74,'hospes reconstructed compound','supports',NULL),(139,80,'Latin hospes','supports',NULL),(139,82,'compound *ghos-pot-','supports',NULL),
(140,74,'*ghosti-pot- analysis','supports',NULL),(140,82,'*ghos-pot- compound','supports',NULL),(141,75,'hypothetical deeper *ǵhes- note','supports',NULL),(141,82,'ghos-ti- root horizon','supports',NULL),
(142,78,'French hôtel and First Known Use','supports',NULL),(142,79,'hotel semantic and French history','supports',NULL),
(143,78,'French hôtel from Old French hostel','supports',NULL),(143,79,'hostel to hôtel','supports',NULL),(144,79,'Latin hospitāle source','supports',NULL),(144,77,'hospitāle','supports',NULL),
(145,77,'hospitāle from hospitālis','supports',NULL),(145,79,'Latin formative source','supports',NULL),(146,77,'hospitālis from hospes','supports',NULL),
(147,74,'hospes reconstructed compound','supports',NULL),(147,80,'Latin hospes','supports',NULL),(147,82,'compound *ghos-pot-','supports',NULL),
(148,74,'*ghosti-pot- analysis','supports',NULL),(148,82,'*ghos-pot- compound','supports',NULL),(149,75,'hypothetical deeper *ǵhes- note','supports',NULL),(149,82,'ghos-ti- root horizon','supports',NULL);
--> statement-breakpoint
INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(35,139,74,'14th century',1350,'English lexicographic first-use record for host in the hospitality sense','Noun (1), First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use period for the hospitality noun; no underlying manuscript witness was directly inspected.'),
(36,146,75,'13th century',1250,'English lexicographic first-use record for guest','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use period; no underlying manuscript witness was directly inspected.'),
(37,152,76,'1580',1580,'English lexicographic first-use record for hostile','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use year; no underlying printed witness was directly inspected.'),
(38,158,77,'14th century',1350,'English lexicographic first-use record for hospital','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use period; no underlying manuscript witness was directly inspected.'),
(39,167,78,'1687',1687,'English lexicographic first-use record for hotel','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use year; no underlying printed witness was directly inspected.');
--> statement-breakpoint
INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(87,22,'guest','English','Germanic cousin through shared *ghos-ti-',82),(88,22,'hostile','English','Latin cousin through the stranger-to-enemy branch',82),(89,22,'hospital','English','descendant of the Latin hospes family',79),(90,22,'gospodĭ','Old Church Slavonic','probable compound cognate meaning lord or master',74),
(91,23,'Gast','German','Germanic cognate',75),(92,23,'gestr','Old Norse','Germanic cognate and possible influence on Middle English',75),(93,23,'hostis','Latin','parallel Indo-European cousin, not an English ancestor',83),(94,23,'gostĭ','Old Church Slavonic','Indo-European cognate meaning guest',83),
(95,24,'hostis','Latin','direct derivational base',76),(96,24,'guest','English','Germanic cousin through *ghos-ti-',82),(97,24,'host','English','hospitality cousin through the compound Latin branch',82),(98,24,'hospital','English','hospitality-family cousin, not a descendant of hostile',79),
(99,25,'hotel','English','doublet through a different French route',79),(100,25,'hostel','English','doublet from Latin hospitāle',79),(101,25,'hospice','English','parallel descendant of the Latin hospitality family',79),(102,25,'hospitality','English','derivative of the same hospes family',82),
(103,26,'hospital','English','doublet through Anglo-French and Medieval Latin',79),(104,26,'hostel','English','closer French doublet',78),(105,26,'hospice','English','parallel lodging-and-care descendant',79),(106,26,'host','English','cousin through Latin hospes',74);
--> statement-breakpoint
INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(84,22,1,'Reconstructed Indo-European speech communities','Proto-Indo-European prehistory','The reciprocal outsider and guest-master analyses belong to reconstructed comparative space, not one precise mapped settlement.',NULL,NULL,'uncertain'),
(85,22,2,'Latin-speaking Roman world','Latin antiquity','Hospes names either participant in reciprocal hospitality.',NULL,NULL,'broad'),
(86,22,3,'Anglo-French England and northern France','Medieval period','The Romance hospitality noun passes into Middle English.',NULL,NULL,'broad'),
(87,22,4,'Global English','14th century–today','Host narrows toward the receiving role and expands into event, media, biology, and computing.',NULL,NULL,'broad'),
(88,23,1,'Reconstructed Indo-European speech communities','Proto-Indo-European prehistory','*ghos-ti- denotes a stranger or guest under reciprocal duties.',NULL,NULL,'uncertain'),
(89,23,2,'Germanic-speaking northern Europe','Proto-Germanic prehistory','The *gastiz branch preserves guest and stranger senses.',NULL,NULL,'broad'),
(90,23,3,'Anglo-Saxon and medieval England','Old and Middle English','Recorded English variants continue the Germanic guest word, with possible Norse reinforcement.',NULL,NULL,'approximate'),
(91,23,4,'Global English','13th century–today','Guest remains the recipient of hospitality and develops customer, media, and scientific extensions.',NULL,NULL,'broad'),
(92,24,1,'Reconstructed Indo-European speech communities','Proto-Indo-European prehistory','The shared outsider term predates the Latin enemy sense.',NULL,NULL,'uncertain'),
(93,24,2,'Latin-speaking Roman world','Latin antiquity','Hostis shifts from foreigner or stranger toward enemy.',NULL,NULL,'broad'),
(94,24,3,'France and learned European Latin','Late medieval and early modern period','Middle French and Latin provide the learned adjective hostile.',NULL,NULL,'broad'),
(95,24,4,'Global English','1580–today','Hostile expands from enemy-related use to social, legal, corporate, and environmental opposition.',NULL,NULL,'broad'),
(96,25,1,'Latin-speaking Roman and medieval Europe','Antiquity–medieval period','The hospitality family produces hospitāle, guest accommodation.',NULL,NULL,'broad'),
(97,25,2,'Anglo-French England and northern France','Medieval period','The lodging-and-charity institution enters Middle English.',NULL,NULL,'broad'),
(98,25,3,'England','14th–15th centuries','Hospital develops from accommodation and charitable residence toward care of sick or injured people.',NULL,NULL,'approximate'),
(99,25,4,'Global English','15th century–today','The medical institution becomes the dominant modern sense.',NULL,NULL,'broad'),
(100,26,1,'Latin-speaking Europe','Antiquity–medieval period','Hospitāle names accommodation for guests.',NULL,NULL,'broad'),
(101,26,2,'France','Old French–modern French','Hostel / ostel develops into hôtel as the s is lost and later marked by a circumflex.',NULL,NULL,'approximate'),
(102,26,3,'England','Late 17th century','English borrows French hôtel as hotel.',NULL,NULL,'approximate'),
(103,26,4,'Global English','1687–today','Hotel becomes the standard term for a commercial lodging establishment.',NULL,NULL,'broad');
--> statement-breakpoint
INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(46,22,'Could hospes mean both host and guest?','Yes. Latin hospes and its descendants reflect reciprocal hospitality in which the same participant could receive hospitality and later return it.','established','Merriam-Webster explicitly explains the dual meanings through customs of reciprocity; American Heritage lists host, guest, and stranger.','resolved','The graph preserves one polysemous Latin node rather than forcing two unrelated words.'),
(47,22,'Is hospes securely reduced from *ghos-pot-?','The guest-master compound is a strong published analysis, but the amount of phonetic reduction has led some scholars to question its exact form.','probable','Merriam-Webster publishes the compound while explicitly recording the objection; American Heritage also publishes *ghos-pot-.','open',NULL),
(48,23,'How broadly distributed is *ghos-ti-?','The reconstruction is supported by Germanic, Italic, and Slavic evidence but is limited to a western set of Indo-European branches.','probable','Merriam-Webster calls it an etymon limited to three western branches; American Heritage and the University of Texas publish the reconstruction.','open',NULL),
(49,23,'Did Old Norse shape the Middle English forms?','Old Norse gestr may have reinforced the Middle English initial g, but the English word is fundamentally inherited from Old English and Germanic.','probable','Merriam-Webster states the Norse contribution cautiously as “probably in part.”','open',NULL),
(50,23,'Was guest borrowed from Latin hostis?','No. English guest continues the Germanic branch; Latin hostis is a parallel cognate branch that meets it at *ghos-ti-.','established','Merriam-Webster, American Heritage, and the University of Texas lexicon distinguish the Germanic and Latin reflexes.','resolved','The graph has no Latin-to-English guest edge and joins the words only at their reconstructed ancestor.'),
(51,24,'How did a reciprocal stranger become an enemy?','Early Latin hostis referred to a foreigner or legally recognized outsider before later Roman usage restricted it to a hostile outsider or enemy.','probable','Merriam-Webster cites early legal usage and Varro’s observation of the semantic change; the comparative sources retain both stranger and enemy glosses.','resolved','The semantic edge is accepted while its social transition remains a historical process rather than a single dated event.'),
(52,24,'Does *ghos-ti- descend from *ǵhes- “take, give in exchange”?','A deeper exchange root has been proposed, but Merriam-Webster labels the analysis hypothetical and the other reviewed root references stop at *ghos-ti-.','proposed','Merriam-Webster presents *ǵhes- only as a possible deeper base; American Heritage and the University of Texas do not require it for the published family.','open',NULL),
(53,25,'Did hospital originally mean a medical institution?','No. The earliest English senses concern lodging for travelers and charitable residence; medical care becomes established later.','established','Merriam-Webster’s dictionary entry and historical essay distinguish the 14th-century lodging/charity history from the 15th-century medical development.','resolved','The timeline shows the lodging and charitable senses before modern medical specialization.'),
(54,25,'How secure is the remote hospes compound?','Hospital’s path to Latin hospitāle and hospes is secure; the further reduction of hospes from *ghos-pot- remains probable rather than certain.','probable','Merriam-Webster and American Heritage support the remote family while Merriam-Webster records phonological objections.','open',NULL),
(55,26,'Is hotel directly shortened from hospital?','No. Hotel and hospital are doublets: both reach Latin hospitāle, but hotel comes through French hôtel and Old French hostel while hospital comes through Anglo-French hospital.','established','Merriam-Webster’s hotel entry and family history distinguish the two French transmission paths.','resolved','Separate descendant edges converge at the shared Medieval Latin hospitāle node.'),
(56,26,'When did hotel enter English?','Merriam-Webster reports 1687 for the lodging noun, after French hôtel had developed from Old French hostel.','established','The Merriam-Webster entry supplies the date and French succession; the family essay supplies the doublet context.','resolved','The source-reported year is retained as an attestation record, not upgraded into a directly inspected witness.');
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`+100 WHERE `rank`>=2;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`-99 WHERE `rank`>=102;
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(17,24,2,'hostile','Hospitality and hostility share the same stranger.','Germanic *gastiz yields guest; Latin hostis narrows stranger into enemy; Latin hospes yields host, hospital, and hotel. All converge at reconstructed *ghos-ti-, a reciprocal outsider.','A',97,'The family connection is strongly published; the deeper *ǵhes- proposal and exact hospes compound reduction remain separately qualified.');
--> statement-breakpoint
INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(10,23,24,'THE GUEST BECAME THE ENEMY','Guest follows the Germanic visitor branch; hostile follows Latin hostis from stranger to enemy. Their reviewed paths meet only at *ghos-ti-.',100,'A','reviewed'),
(11,22,24,'THE HOST AND THE HOSTILE OUTSIDER','Host comes through Latin hospes, the reciprocal guest-master; hostile comes through Latin hostis, the stranger turned enemy. Both retain different outcomes of the same outsider family.',99,'A','reviewed'),
(12,25,26,'THE WARD AND THE LOBBY WERE ONE LODGING','Hospital and hotel take different French routes but converge at Medieval Latin hospitāle, guest accommodation.',98,'A','reviewed'),
(13,23,26,'THE HOTEL STILL CONTAINS THE GUEST','Hotel descends through French and Latin hospitality words to the same *ghos-ti- family inherited by English guest through Germanic.',96,'A','reviewed');
--> statement-breakpoint
WITH keyed_forms AS (
	SELECT f.*, CASE
		WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
		ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
	END AS canonical_key
	FROM forms f WHERE f.entry_id BETWEEN 22 AND 26
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
WHERE f.entry_id BETWEEN 22 AND 26;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 22 AND 26;
--> statement-breakpoint
INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 22 AND 26;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 22 AND 26;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:6:pot:reconstructed:sense:master',6,'*pot-','pot','master','reconstructed','Proto-Indo-European prehistory',-4500,-2500,'master; one in control','The second member of *ghos-pot-. AHD treats it under the PIE root *poti- and form *pot-.','reviewed'),
('boundary:canonical:pot',7,'UNKNOWN','unknown','default','boundary','before the reviewed *pot- component',NULL,NULL,'No deeper ancestor of the *pot- component is asserted in this graph branch.','Graph-level boundary for a compound component.','reviewed'),
('node:6:ghes:reconstructed:sense:reciprocal-exchange-hypothesis',6,'*ǵhes-','ghes','reciprocal-exchange-hypothesis','reconstructed','Proto-Indo-European prehistory',-4500,-2500,'take or give in exchange; hypothetical deeper base of *ghos-ti-','Merriam-Webster presents this analysis as hypothetical.','reviewed'),
('boundary:canonical:ghes',7,'UNKNOWN','unknown','default','boundary','before the hypothetical exchange root',NULL,NULL,'No deeper ancestor of the proposed *ǵhes- analysis is asserted.','Graph-level boundary for a proposed etymology.','reviewed');
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'compound_component','The second member of reconstructed *ghos-pot- is *pot-, a form of the PIE “master, powerful” root.','The compound identifies a guest-master: one who controls or represents reciprocal hospitality duties.','American Heritage Indo-European Roots','probable','Both the compound and component are reconstructed; the component analysis is explicit in the published root entry.',NULL,'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent
WHERE child.canonical_key='node:6:ghos-pot:reconstructed:sense:guest-master-compound' AND parent.canonical_key='node:6:pot:reconstructed:sense:master';
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'knowledge_boundary','No deeper form is promoted beyond the reviewed *pot- component.','The component branch stops at the current comparative evidence horizon.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent
WHERE child.canonical_key='node:6:pot:reconstructed:sense:master' AND parent.canonical_key='boundary:canonical:pot';
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'proposed_derivation','The shape *ghos-ti- has been analyzed as a derivative of hypothetical *ǵhes-; the exact ablaut and suffixal analysis remain proposed.','A take-or-give-in-exchange base could underlie the reciprocal duties attached to the outsider or guest.','Merriam-Webster editors','proposed','Merriam-Webster explicitly calls the deeper base hypothetical; American Heritage and the University of Texas stop at *ghos-ti-.',NULL,'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent
WHERE child.canonical_key='node:6:ghos-ti:reconstructed:sense:reciprocal-outsider' AND parent.canonical_key='node:6:ghes:reconstructed:sense:reciprocal-exchange-hypothesis';
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'knowledge_boundary','No deeper form is promoted beyond the hypothetical *ǵhes- analysis.','The proposed exchange-root branch stops at the current evidence horizon.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent
WHERE child.canonical_key='node:6:ghes:reconstructed:sense:reciprocal-exchange-hypothesis' AND parent.canonical_key='boundary:canonical:ghes';
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,82,'ghos-ti- compound and poti- component','supports','Identifies *pot- “master” as the second member of *ghos-pot-.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id
WHERE child.canonical_key='node:6:ghos-pot:reconstructed:sense:guest-master-compound' AND parent.canonical_key='node:6:pot:reconstructed:sense:master' AND edge.relation_type='compound_component';
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,82,'poti- root horizon','supports',NULL
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id
WHERE child.canonical_key='node:6:pot:reconstructed:sense:master' AND parent.canonical_key='boundary:canonical:pot';
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,75,'Guest etymology note: hypothetical *ǵhes-','supports','The source explicitly labels the deeper exchange-base analysis hypothetical.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id
WHERE child.canonical_key='node:6:ghos-ti:reconstructed:sense:reciprocal-outsider' AND parent.canonical_key='node:6:ghes:reconstructed:sense:reciprocal-exchange-hypothesis';
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,75,'hypothetical *ǵhes- evidence horizon','supports',NULL
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id
WHERE child.canonical_key='node:6:ghes:reconstructed:sense:reciprocal-exchange-hypothesis' AND parent.canonical_key='boundary:canonical:ghes';
