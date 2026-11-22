INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(57,'korean','Korean','Koreanic','Korean',0,1000,NULL,'Korean, represented here by the living word 김치 and its English borrowing.'),
(58,'quechua-source-unspecified','Quechua source (variety unspecified)','Quechuan','Quechua',0,1200,NULL,'The reviewed English and Spanish dictionaries identify Quechua without selecting a regional variety.'),
(59,'aymara','Aymara','Aymaran','Aymara',0,1200,NULL,'Aymara, including modern official Peruvian educational orthography.'),
(60,'dakota','Dakota','Siouan','Mississippi Valley Siouan · Dakotan',0,1600,NULL,'Dakota lexical material represented by thípi and the dwelling root thí-.'),
(61,'proto-dakota','Proto-Dakota','Siouan','Dakotan',1,-1000,1000,'Comparative Siouan reconstruction; dates are broad prehistoric placement, not direct attestations.'),
(62,'proto-mississippi-valley-siouan','Proto-Mississippi Valley Siouan','Siouan','Mississippi Valley Siouan',1,-2000,500,'Comparative subgroup reconstruction; dates are broad prehistoric placement.'),
(63,'proto-siouan','Proto-Siouan','Siouan','Proto-Siouan-Catawba',1,-4000,-2000,'Deep comparative reconstruction represented in the Comparative Siouan Dictionary.'),
(64,'navajo','Navajo / Diné bizaad','Na-Dene','Athabaskan · Southern Athabaskan',0,1500,NULL,'Navajo, the source language of English hogan.'),
(65,'mapuche','Mapuche / Mapudungun','Araucanian','Mapuche',0,1500,NULL,'Mapuche lexical evidence is represented as one side of the unresolved poncho etymology.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(65,'kimchi','kimchi','kimchi','/ˈkɪm.tʃi/','noun','The English food word is a direct borrowing of Korean 김치, with the familiar kimchee spelling as an English variant.','Kimchi is not an English label pasted onto a Korean dish. The word traveled with the food from Korean 김치—and the reviewed trail stops there rather than inventing a deeper ancestor.','reviewed'),
(66,'llama','llama','llama','/ˈlɑː.mə/','noun','An English animal name borrowed through Spanish from Quechua llama.','The animal llama and Spanish llama “flame” only look identical. The animal word came from Quechua; the fire word belongs to a separate Latin family.','reviewed'),
(67,'alpaca','alpaca','alpaca','/ælˈpæk.ə/','noun','An English animal and fiber word borrowed through Spanish from Aymara allpaqa / allphaqa.','Llamas and alpacas share an Andean landscape, but their English names trace through Spanish to different language families: Quechuan and Aymaran.','reviewed'),
(68,'tipi','tipi','tipi','/ˈtiː.piː/','noun','One spelling in the English tepee–teepee–tipi family, borrowed from Dakota thípi and built on a Siouan dwelling root.','Tipi is not a generic label invented for every Indigenous tent. It continues a Dakota dwelling word whose root can be compared back to Proto-Siouan *ahtí•.','reviewed'),
(69,'hogan','hogan','hogan','/ˈhoʊ.ɡɑːn/','noun','An English borrowing of Navajo hooghan, a home or dwelling term with specific Diné cultural reference.','Hogan is not a generic synonym for “primitive hut.” It is an Anglicized Diné word, hooghan, embedded in a particular architecture and cultural life.','reviewed'),
(70,'poncho','poncho','poncho','/ˈpɑːn.tʃoʊ/','noun','An English borrowing from American Spanish whose deeper source remains disputed between Mapuche evidence and a Spanish-internal analysis.','The rigorous answer is not “poncho is definitely Mapuche.” Major references disagree: Mapuche pontho / ponchu / pontro competes with an old Spanish faded-color word as the source.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(164,'mw-kimchi','Kimchi — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/kimchi',NULL,'historical_dictionary'),
(165,'nikl-kimchi','김치 — Korean Basic Dictionary','National Institute of Korean Language',2026,'Republic of Korea','https://krdict.korean.go.kr/kor/dicSearch/SearchView?ParaWordNo=28818',NULL,'official_lexicon'),
(166,'mw-llama','Llama — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/llama',NULL,'historical_dictionary'),
(167,'rae-llama','Llama — Diccionario de la lengua española','Real Academia Española and ASALE Editors',2026,'Real Academia Española','https://dle.rae.es/llama',NULL,'historical_dictionary'),
(168,'peru-minedu-quechua-llama','Yachachinapaq shimikuna — chawpin qichwa: Vocabulario pedagógico quechua central','Ministerio de Educación del Perú',2020,'Ministerio de Educación del Perú','https://repositorio.minedu.gob.pe/bitstream/handle/20.500.12799/7196/Yachachinapaq%20shimikuna%20-%20chawpin%20qichwa%20Vocabulario%20pedag%C3%B3gico%20quechua%20central.pdf?isAllowed=y&sequence=1',NULL,'institutional_vocabulary'),
(169,'mw-alpaca','Alpaca — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/alpaca',NULL,'historical_dictionary'),
(170,'rae-alpaca','Alpaca — Diccionario de la lengua española','Real Academia Española and ASALE Editors',2026,'Real Academia Española','https://dle.rae.es/alpaca',NULL,'historical_dictionary'),
(171,'peru-minedu-aymara-allphaqa','Yatichaña aru pirwa: Vocabulario pedagógico aimara','Ministerio de Educación del Perú',2020,'Ministerio de Educación del Perú','https://formacionenservicio.minedu.gob.pe/sifods/centro-recurso/2022/Material-educativo/Libro/vocabulario-pedagogico-aimara.pdf',NULL,'institutional_vocabulary'),
(172,'mw-tepee','Tepee — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/tepee',NULL,'historical_dictionary'),
(173,'comparative-siouan-dwelling','Comparative Siouan Dictionary — dwell, dwelling, house','Robert L. Rankin, Richard T. Carter, A. Wesley Jones, John E. Koontz, David S. Rood, and Iren Hartmann, editors',2015,'Max Planck Institute for Evolutionary Anthropology','https://cdstar.eva.mpg.de/bitstreams/EAEA0-4C22-790A-0FFC-0/csd_dataset.pdf',NULL,'comparative_dictionary'),
(174,'ahd-tepee','Tepee — Indo-European and Siouan Etymology','American Heritage Dictionary Editors',2022,'HarperCollins','https://ahdictionary.com/word/search.html?q=teepees',NULL,'historical_dictionary'),
(175,'mw-hogan','Hogan — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hogan',NULL,'historical_dictionary'),
(176,'navajo-wotd-hooghan','Hooghan — home or house','Navajo Word of the Day Editors',2012,'Navajo Word of the Day','https://navajowotd.com/word/hooghan/',NULL,'community_lexicon'),
(177,'mw-poncho','Poncho — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/poncho',NULL,'historical_dictionary'),
(178,'rae-poncho','Poncho — Diccionario de la lengua española','Real Academia Española and ASALE Editors',2026,'Real Academia Española','https://dle.rae.es/poncho',NULL,'historical_dictionary'),
(179,'sanchez-mapuchismos-poncho','Los mapuchismos en el DRAE','Gilberto Sánchez Cabezas',2010,'Boletín de Filología, Universidad de Chile','https://www.scielo.cl/scielo.php?pid=S0718-93032010000200008&script=sci_arttext','10.4067/S0718-93032010000200008','scholarly_article'),
(180,'iwasaki-poncho-spanish','La universalidad del español: encuentros y contactos lingüísticos','Fernando Iwasaki',2023,'IX Congreso Internacional de la Lengua Española','https://congresosdelalengua.es/cadiz/paneles-ponencias/universalidadespanol/iwasaki-fernando.htm',NULL,'scholarly_essay');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(386,65,1,1,'kimchi','kimchi','fermented-food',NULL,NULL,'attested','1888–today',1888,NULL,'Korean fermented vegetable preparation','Merriam-Webster reports 1888 as the first known English use.'),
(387,65,57,2,'김치','김치','fermented-food','gimchi',NULL,'attested','historical and modern Korean',1400,NULL,'vegetables salted, seasoned, and fermented','The numeric start is a broad Korean written-language placement, not a claimed first witness of this exact token.'),
(388,65,7,3,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the reviewed Korean form',NULL,NULL,'No securely sourced deeper lexical ancestor is promoted in this dossier.','Evidence horizon.'),
(389,66,1,1,'llama','llama','andean-camelid',NULL,NULL,'attested','1600–today',1600,NULL,'the South American camelid','Merriam-Webster reports 1600 as the first known English use.'),
(390,66,44,2,'llama','llama','andean-camelid',NULL,NULL,'attested','colonial and modern Spanish',1500,NULL,'llama; Andean camelid','The animal word is kept separate from the Spanish fire homonym.'),
(391,66,58,3,'llama','llama','andean-camelid',NULL,NULL,'attested','Quechua historical and modern record',1200,NULL,'llama; Lama glama','The reviewed English and Spanish dictionaries do not identify one regional Quechua donor variety.'),
(392,66,7,4,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the reviewed Quechua animal word',NULL,NULL,'No deeper Quechuan reconstruction is asserted.','Evidence horizon.'),
(393,67,1,1,'alpaca','alpaca','andean-camelid',NULL,NULL,'attested','1747–today',1747,NULL,'the domesticated camelid; its fiber or cloth','Merriam-Webster reports 1747 as the first known English use.'),
(394,67,44,2,'alpaca','alpaca','andean-camelid',NULL,NULL,'attested','colonial and modern Spanish',1600,NULL,'alpaca; its hair or cloth','Spanish carried the Aymara animal name into English.'),
(395,67,59,3,'allphaqa','allphaqa','andean-camelid',NULL,NULL,'attested','Aymara historical and modern record',1200,NULL,'alpaca','The Peruvian Ministry of Education spelling is allphaqa; English dictionaries print allpaqa or all-paka.'),
(396,67,7,4,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the reviewed Aymara animal word',NULL,NULL,'No deeper Aymaran reconstruction is asserted.','Evidence horizon.'),
(397,68,1,1,'tipi','tipi','portable-dwelling',NULL,NULL,'attested','1743–today',1743,NULL,'a conical portable dwelling of certain Great Plains peoples','The reported first-use year belongs to the tepee / teepee / tipi spelling family.'),
(398,68,60,2,'thípi','thipi','portable-dwelling',NULL,NULL,'attested','Dakota historical and modern record',1600,NULL,'dwelling; the source of English tipi','Merriam-Webster prints the Dakota form with aspiration and acute stress.'),
(399,68,60,3,'thí-','thi','dwell-root',NULL,NULL,'attested','Dakota historical and modern record',1600,NULL,'to dwell','The source identifies this as the base of thípi.'),
(400,68,61,4,'*thí','thi','dwell-root',NULL,NULL,'reconstructed','Proto-Dakota',-1000,1000,'dwell; dwelling root','Reconstructed by comparison, not directly attested.'),
(401,68,62,5,'*htí','hti','dwell-root',NULL,NULL,'reconstructed','Proto-Mississippi Valley Siouan',-2000,500,'dwell; dwelling root','Reconstructed by comparison, not directly attested.'),
(402,68,63,6,'*ahtí•','ahti','dwell-root',NULL,NULL,'reconstructed','Proto-Siouan prehistory',-4000,-2000,'dwell, dwelling, house','The dot is the Comparative Siouan Dictionary length notation; the asterisk marks reconstruction.'),
(403,68,7,7,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before Proto-Siouan *ahtí•',NULL,NULL,'No deeper securely reconstructed ancestor is presented.','Evidence horizon.'),
(404,69,1,1,'hogan','hogan','dine-dwelling',NULL,NULL,'attested','1871–today',1871,NULL,'a traditional Diné dwelling; the borrowed English term','Merriam-Webster reports 1871 as the first known English use.'),
(405,69,64,2,'hooghan','hooghan','dine-dwelling',NULL,NULL,'attested','Navajo historical and modern record',1500,NULL,'home, house, dwelling','The community lexicon stresses home as well as the traditional architectural form.'),
(406,69,7,3,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the reviewed Navajo form',NULL,NULL,'No deeper Athabaskan reconstruction is promoted in this dossier.','Evidence horizon.'),
(407,70,1,1,'poncho','poncho','garment',NULL,NULL,'attested','1717–today',1717,NULL,'a blanket-like sleeveless garment with a head opening','Merriam-Webster reports 1717 as the first known English use.'),
(408,70,44,2,'poncho','poncho','garment',NULL,NULL,'attested','American Spanish from at least 1530',1530,NULL,'poncho; sleeveless blanket-like garment','Iwasaki reports a 1530 Spanish-language record; the deeper origin remains disputed.'),
(409,70,65,3,'pontho / ponchu / pontro','pontho ponchu pontro','garment-or-blanket',NULL,NULL,'attested','Mapuche historical lexicography and modern pontro',1700,NULL,'poncho, coarse blanket, or wool blanket','Historical Mapuche dictionaries record related forms, but direction of borrowing remains disputed.'),
(410,70,7,4,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the competing Mapuche and Spanish analyses',NULL,NULL,'The dossier stops at a live etymological dispute.','Evidence horizon.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(322,65,386,387,'borrowing','English kimchi adapts Korean 김치 through the established romanized spelling; kimchee is a secondary English variant.','The name of the fermented preparation travels with the food category.','Merriam-Webster editors · National Institute of Korean Language','established',NULL,'English first-known-use report: 1888.','reviewed'),
(323,65,387,388,'knowledge_boundary','The reviewed sources establish the living Korean form but do not supply a securely sourced deeper lexical chain.','The graph stops at 김치 rather than turning orthographic history into unsupported ancestry.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(324,66,389,390,'borrowing','English retains the Spanish spelling while adapting pronunciation.','The animal name remains stable through the borrowing.','Merriam-Webster editors','established',NULL,'English first-known-use report: 1600.','reviewed'),
(325,66,390,391,'borrowing','Spanish adopted Quechua llama with little visible alteration.','The Quechua animal name remained the animal label.','Merriam-Webster · RAE editors','established',NULL,'Colonial Spanish transmission preceded the English record.','reviewed'),
(326,66,391,392,'knowledge_boundary','The reviewed sources identify Quechua but do not present a deeper reconstruction or a uniquely localized donor variety.','The trail ends at the attested Quechua animal word.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(327,67,393,394,'borrowing','English adopted Spanish alpaca with pronunciation adaptation.','Animal, fiber, and cloth senses expanded in English.','Merriam-Webster editors','established',NULL,'English first-known-use report: 1747.','reviewed'),
(328,67,394,395,'borrowing','Spanish adapted an Aymara form represented as allpaqa, all-paka, or modern official allphaqa.','The Aymara animal name remained the animal label and later supported fiber and cloth senses.','Merriam-Webster · RAE · Peruvian Ministry of Education editors','established','The sources use different orthographies for the Aymara form, not different etymologies.',NULL,'reviewed'),
(329,67,395,396,'knowledge_boundary','No deeper Aymaran reconstruction is supplied by the reviewed sources.','The graph stops at the attested Aymara animal word.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(330,68,397,398,'borrowing','The English spelling family tepee / teepee / tipi adapts Dakota thípi and regularizes its sounds in English.','A Dakota dwelling term becomes an English name for a specific Great Plains dwelling form.','Merriam-Webster editors','established',NULL,'The spelling-family first-known-use report is 1743.','reviewed'),
(331,68,398,399,'derivation','Dakota thípi is formed on thí- “to dwell”; the final morphology is treated conservatively rather than assigned a folk literal gloss.','The act or state of dwelling supplies a noun for a dwelling.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(332,68,399,400,'inheritance','Attested Dakota thí- continues reconstructed Proto-Dakota *thí with stable initial aspiration and stressed vowel.','The dwelling meaning remains stable.','Rankin et al., Comparative Siouan Dictionary','established',NULL,NULL,'reviewed'),
(333,68,400,401,'inheritance','Proto-Dakota *thí continues Proto-Mississippi Valley Siouan *htí with subgroup-specific ordering and aspiration development.','The dwelling and house field remains stable.','Rankin et al., Comparative Siouan Dictionary','established',NULL,NULL,'reviewed'),
(334,68,401,402,'inheritance','Proto-Mississippi Valley Siouan *htí continues Proto-Siouan *ahtí• with loss or reanalysis of the initial vowel and inherited consonantal material.','The reconstructed field remains dwell, dwelling, house.','Rankin et al., Comparative Siouan Dictionary','established',NULL,NULL,'reviewed'),
(335,68,402,403,'knowledge_boundary','The comparative dictionary presents *ahtí• as the Proto-Siouan horizon for this set; no deeper ancestor is promoted here.','The trail ends where the reviewed comparative reconstruction ends.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(336,69,404,405,'borrowing','English hogan anglicizes Navajo hooghan, shortening the long vowel and regularizing the consonant and unstressed ending.','A Diné home or dwelling term becomes the English label for the traditional structure.','Merriam-Webster · Navajo Word of the Day editors','established',NULL,'English first-known-use report: 1871.','reviewed'),
(337,69,405,406,'knowledge_boundary','The reviewed sources establish hooghan but do not provide a specialist comparative Athabaskan reconstruction.','The graph stops at the living Navajo word rather than promoting an unsourced internal split.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),
(338,70,407,408,'borrowing','English borrowed American Spanish poncho with limited phonological adaptation.','The garment sense remains central and later extends to rainwear.','Merriam-Webster editors','established',NULL,'English first-known-use report: 1717.','reviewed'),
(339,70,408,409,'proposed_borrowing','One analysis derives American Spanish poncho from Mapuche forms such as pontho / ponchu / pontro; competing scholarship argues that the Indigenous forms may instead reflect Spanish.','A blanket or textile term and the sleeveless garment label are historically associated, but the direction of transfer is unresolved.','Merriam-Webster · Sánchez Cabezas · RAE · Iwasaki','proposed','Merriam-Webster and Sánchez support a Mapuche route; RAE and Iwasaki support or favor a Spanish-internal route.','Spanish records and Mapuche lexicography overlap too closely for this dossier to declare one direction proven.','reviewed'),
(340,70,409,410,'knowledge_boundary','Competing Mapuche and Spanish analyses prevent a single secure deeper chain.','The graph stops at the dispute instead of converting a proposal into fact.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(322,164,'Word History — Korean kimch’i','supports','Identifies the Korean source of English kimchi.'),(322,165,'headword 김치 and definition','supports','Directly documents the living Korean form and food sense.'),(323,164,'Etymology stops at Korean kimch’i','supports','The reviewed English dictionary supplies no deeper lexical ancestor.'),
(324,166,'Word History — Spanish','supports','Identifies the immediate Spanish source.'),(325,166,'Word History — Spanish, from Quechua','supports','Identifies the Quechua source.'),(325,167,'llama² — del quechua llama','supports','The Spanish dictionary independently identifies Quechua.'),(325,168,'p. 144 — llama, camélido andino, Lama glama','supports','Institutional vocabulary directly attests Quechua llama.'),(326,166,'Etymology stops at Quechua','supports','No deeper or variety-specific source is supplied.'),
(327,169,'Word History — Spanish','supports','Identifies the immediate Spanish source.'),(328,169,'Word History — from Aymara allpaqa','supports','Identifies the Aymara source and one spelling.'),(328,170,'alpaca¹ — del aimara all-paka','supports','Independently identifies the Aymara source with a different editorial spelling.'),(328,171,'p. 120 — allphaqa, alpaca','supports','Institutional vocabulary directly attests modern Aymara allphaqa.'),(329,171,'allphaqa lexical entry','supports','The official vocabulary documents the living form but no deeper reconstruction.'),
(330,172,'Variants and Word History — Dakota thípi','supports','Documents tepee, teepee, and tipi plus the Dakota source.'),(331,172,'Word History — thípi from thí- “to dwell”','supports','Documents the derivation.'),(331,174,'Etymology — thí- plus -pi','supports','Supports morphological analysis while avoiding the unsupported universal folk gloss.'),(332,173,'p. 301 — Proto-Dakota *thí and Dakota/Lakota reflexes','supports','Documents the reconstructed subgroup root and attested reflexes.'),(333,173,'p. 301 — Proto-Mississippi-Valley *htí to Proto-Dakota *thí','supports','Documents the comparative levels.'),(334,173,'p. 301 — Proto-Siouan *ahtí• and subgroup reflexes','supports','Documents the deep reconstruction.'),(335,173,'p. 301 — deepest reconstructed level shown for this set','supports','Defines the reviewed comparative horizon.'),
(336,175,'Word History — Navajo hooghan','supports','Identifies the Navajo source.'),(336,176,'hooghan — home or house','supports','Community lexicon documents the living Navajo form and cultural frame.'),(337,175,'Etymology stops at Navajo hooghan','supports','No deeper comparative reconstruction is supplied.'),
(338,177,'Word History — American Spanish','supports','Identifies the immediate English source.'),(339,177,'Word History — American Spanish, from Mapuche','supports','Supports the Mapuche route.'),(339,179,'poncho entry — pontro, poncho / ponco and historical forms','supports','Documents Mapuche lexical forms and the proposed mapuchism.'),(339,178,'poncho¹ — quizá de po[n]cho “descolorido”','challenges','The current RAE entry proposes a Spanish-internal analysis.'),(339,180,'poncho discussion — 1530 record and Spanish-origin argument','challenges','Presents the historical case against a secure Indigenous derivation.'),(340,178,'uncertain-source wording','supports','The Spanish dictionary does not establish the Mapuche chain.'),(340,179,'historical Mapuche forms','context','Documents the competing Mapuche evidence that prevents a simple stop at Spanish alone.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(80,386,164,'1888',1888,'Merriam-Webster first-known-use report','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported lexicographic first-use year; no primary token was directly inspected.'),
(81,389,166,'1600',1600,'Merriam-Webster first-known-use report','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported lexicographic first-use year; no primary token was directly inspected.'),
(82,393,169,'1747',1747,'Merriam-Webster first-known-use report','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported lexicographic first-use year; no primary token was directly inspected.'),
(83,397,172,'1743',1743,'Merriam-Webster tepee / teepee / tipi spelling-family report','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported year for the English spelling family; this is not proof that the exact spelling tipi occurs in that earliest token.'),
(84,404,175,'1871',1871,'Merriam-Webster first-known-use report','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported lexicographic first-use year; no primary token was directly inspected.'),
(85,407,177,'1717',1717,'Merriam-Webster first-known-use report','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported lexicographic first-use year; no primary token was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(220,65,'kimchee','English','Less common English spelling variant; not a deeper ancestor.',164),
(221,66,'llama “flame”','Spanish','Unrelated Spanish homonym from the Latin flamma family.',167),
(222,67,'allpaqa','Aymara','Dictionary spelling of the Aymara source form.',169),
(223,67,'all-paka','Aymara','RAE editorial representation of the Aymara source form.',170),
(224,68,'tepee','English','English spelling variant and the headword under which the first-use report appears.',172),
(225,68,'teepee','English','English spelling variant.',172),
(226,68,'thí','Lakota','Comparative reflex meaning “dwell”; cognate with the Dakota root.',173),
(227,69,'ha’a’aah','Navajo','East or sunrise, cited in the cultural description of the traditionally east-facing hooghan; not a cognate.',176),
(228,70,'pontho / ponchu','Historical Mapuche lexicography','Historical forms in the Mapuche side of the dispute.',179);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(245,65,1,'Korean-speaking world','Korean 김치','The living Korean word names the fermented food category.',NULL,NULL,'broad',NULL,NULL,'unresolved','No first Korean token or single transfer location is claimed.'),
(246,65,2,'Global English','1888 English record','Merriam-Webster reports English first known use in 1888.',NULL,NULL,'global',1888,1888,'exact','The year is a lexicographic first-use report.'),
(247,66,1,'Quechua-speaking Andes','Quechua llama','Institutional vocabulary directly documents the Quechua animal word.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reviewed etymologies do not select a single donor community or transfer date.'),
(248,66,2,'Spanish-speaking Americas','Spanish llama','Spanish carried the Quechua animal word into European-language circulation.',NULL,NULL,'broad',NULL,NULL,'unresolved','No one transfer event is asserted.'),
(249,66,3,'Global English','1600 English record','Merriam-Webster reports English first known use in 1600.',NULL,NULL,'global',1600,1600,'exact','The year is a lexicographic first-use report.'),
(250,67,1,'Aymara-speaking Andes','Aymara allphaqa','Institutional vocabulary directly documents the Aymara animal word.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reviewed etymologies do not select a single donor community or transfer date.'),
(251,67,2,'Spanish-speaking Americas','Spanish alpaca','Spanish carried the Aymara animal word into European-language circulation.',NULL,NULL,'broad',NULL,NULL,'unresolved','No one transfer event is asserted.'),
(252,67,3,'Global English','1747 English record','Merriam-Webster reports English first known use in 1747.',NULL,NULL,'global',1747,1747,'exact','The year is a lexicographic first-use report.'),
(253,68,1,'Dakota-speaking northern Plains','Dakota thípi','The English spelling family descends from a Dakota dwelling word.',NULL,NULL,'broad',NULL,NULL,'unresolved','No single borrowing place or first Dakota witness is asserted.'),
(254,68,2,'Global English','1743 spelling-family record','Merriam-Webster reports English first known use in 1743.',NULL,NULL,'global',1743,1743,'exact','The year applies to the tepee / teepee / tipi spelling family.'),
(255,69,1,'Diné homelands in the North American Southwest','Navajo hooghan','The donor form belongs to Diné language and cultural life.',NULL,NULL,'broad',NULL,NULL,'unresolved','No single borrowing point or first Navajo token is asserted.'),
(256,69,2,'Global English','1871 English record','Merriam-Webster reports English first known use in 1871.',NULL,NULL,'global',1871,1871,'exact','The year is a lexicographic first-use report.'),
(257,70,1,'Mapuche-speaking southern South America','Mapuche lexical evidence','Historical pontho / ponchu / pontro forms constitute one side of the source dispute.',NULL,NULL,'broad',NULL,NULL,'unresolved','The forms do not by themselves prove the direction of borrowing.'),
(258,70,2,'Spanish-speaking South America','1530 Spanish-language record','Iwasaki reports a 1530 Spanish-language record central to the Spanish-origin argument.',NULL,NULL,'broad',1530,1530,'exact','The year and token are source-reported here; the underlying historical object was not directly inspected.'),
(259,70,3,'Global English','1717 English record','Merriam-Webster reports English first known use in 1717.',NULL,NULL,'global',1717,1717,'exact','The year is a lexicographic first-use report.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(245,165,'headword 김치 and definition','supports','Documents the living Korean word.'),(246,164,'First Known Use','supports','Reports 1888.'),
(247,168,'p. 144 — llama','supports','Documents the Quechua animal word.'),(248,166,'Word History — Spanish, from Quechua','supports','Documents Spanish transmission.'),(249,166,'First Known Use','supports','Reports 1600.'),
(250,171,'p. 120 — allphaqa','supports','Documents the Aymara animal word.'),(251,169,'Word History — Spanish, from Aymara allpaqa','supports','Documents Spanish transmission.'),(252,169,'First Known Use','supports','Reports 1747.'),
(253,172,'Word History — Dakota thípi','supports','Documents the Dakota source.'),(254,172,'First Known Use','supports','Reports 1743 for the spelling family.'),
(255,176,'hooghan — home or house','supports','Documents the Diné word and cultural setting.'),(256,175,'First Known Use','supports','Reports 1871.'),
(257,179,'poncho entry — historical Mapuche forms','supports','Documents the Mapuche side of the dispute.'),(258,180,'poncho discussion — 1530 Alonso de Santa Cruz report','supports','Reports the early Spanish-language record.'),(259,177,'First Known Use','supports','Reports 1717.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(106,65,'How far beyond Korean 김치 can the trail securely go?','The reviewed sources establish English kimchi from Korean 김치. They do not establish a deeper lexical ancestor, so historical spellings or cultural antiquity are not promoted as a parent edge.','boundary','Merriam-Webster stops at Korean kimch’i; the National Institute of Korean Language directly documents modern 김치.','open','The dossier ends at an explicit evidence boundary pending specialist Korean historical-lexicographic review.'),
(107,66,'Are animal llama and Spanish llama “flame” the same word?','No. The animal word is Quechua through Spanish; the fire homonym is a separate Spanish entry from Latin flamma.','established','RAE separates llama¹ “flame” from llama², the Quechua animal word.','resolved','The animal sense has its own sense key and the fire word appears only as an unrelated homonym.'),
(108,67,'Do allpaqa, all-paka, and allphaqa imply competing origins?','No. The references use different editorial and official spellings for the Aymara animal word while agreeing on Aymara ancestry.','established','Merriam-Webster prints allpaqa, RAE all-paka, and Peru’s Ministry of Education allphaqa.','resolved','The dossier promotes the official educational spelling and exposes the alternatives as relatives.'),
(109,68,'Does tipi simply and literally mean “they dwell”?','The reviewed evidence safely derives thípi from a dwelling root; suffix analyses vary in how they label the final morphology, so the dossier promotes “dwelling” rather than one viral literal sentence.','probable','Merriam-Webster derives thípi from thí- “to dwell”; American Heritage analyzes -pi as abstract and collective morphology.','open','The root and noun relationship are established; the over-specific folk gloss is withheld.'),
(110,69,'Is hogan a generic word for any Indigenous hut?','No. English borrowed Navajo hooghan, and the living word carries a Diné home and house meaning with a specific traditional cultural frame.','established','Merriam-Webster identifies Navajo hooghan; Navajo Word of the Day describes home, house, and the traditional form.','resolved','The summary and semantic edge avoid genericizing the term.'),
(111,70,'Is poncho securely Mapuche or Spanish?','It remains disputed. A major English dictionary and Sánchez support Mapuche ancestry; current RAE and Iwasaki advance a Spanish-internal analysis grounded partly in an early 1530 record.','proposed','The sources disagree both on the parent form and on the direction of borrowing between Spanish and Mapuche evidence.','open','Both routes remain visible; the linear dossier marks the Mapuche edge proposed and the canonical graph adds a competing Spanish route.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(106,164,'Word History — Korean kimch’i','supports','Establishes the secure trail and its current stopping point.'),(106,165,'headword 김치','context','Directly documents the living Korean form.'),
(107,167,'separate llama¹ and llama² entries','supports','Distinguishes the Latin fire word from the Quechua animal word.'),(107,166,'Word History — Spanish, from Quechua','supports','Confirms the animal route.'),
(108,169,'Word History — Aymara allpaqa','supports','Documents one spelling.'),(108,170,'alpaca¹ — Aymara all-paka','supports','Documents a second representation.'),(108,171,'p. 120 — allphaqa','supports','Documents official modern educational orthography.'),
(109,172,'Word History — thípi from thí- “to dwell”','supports','Secures the root relationship.'),(109,174,'Etymology — -pi abstract and collective noun suffix','supports','Shows why a simplistic plural-sentence gloss should not be treated as the only analysis.'),
(110,175,'Word History — Navajo hooghan','supports','Secures the language source.'),(110,176,'hooghan — home or house','supports','Documents the living meaning and cultural specificity.'),
(111,177,'Word History — from Mapuche','supports','States the Mapuche analysis.'),(111,179,'poncho entry — Mapuche forms','supports','Supplies historical Mapuche lexical evidence.'),(111,178,'poncho¹ — Spanish-internal proposal','challenges','States the competing current RAE analysis.'),(111,180,'poncho discussion — 1530 record and Spanish-origin argument','challenges','Presents the historical case for Spanish origin.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`-94;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(50,70,1,'poncho','The most repeated origin story is not the most rigorous answer.','Mapuche ancestry is a serious, evidenced proposal—but current RAE and a historical Spanish argument keep the deeper source genuinely open.','A',100,'The reveal is the dispute itself, not a replacement certainty.'),
(51,68,2,'tipi','Its root is deeper than the English stereotype.','English tipi continues Dakota thípi, built on “dwell,” and the root compares through two intermediate reconstructions to Proto-Siouan *ahtí•.','A',100,'A major historical dictionary and a specialist comparative dictionary support separate segments of the route.'),
(52,66,3,'llama','Two identical Spanish spellings hide unrelated histories.','Animal llama is Quechua through Spanish; llama “flame” is a separate Latin descendant.','A',100,'RAE’s distinct numbered entries make the homonym split explicit.'),
(53,67,4,'alpaca','Andean neighbors need not be linguistic cousins.','Alpaca comes from Aymara while llama comes from Quechua: the words travel through Spanish from different families.','A',100,'Institutional vocabularies directly attest both Indigenous forms.'),
(54,69,5,'hogan','A borrowed word can encode a category that English flattens.','Navajo hooghan means home or house within Diné life; English hogan should not be generalized into a label for any Indigenous dwelling.','A',100,'The dictionary ancestry and community lexical description align.'),
(55,65,6,'kimchi','The borrowed name is part of the object’s history.','English kimchi directly continues Korean 김치; the graph refuses a deeper arrow until specialist evidence supports one.','A',100,'The Korean form is directly documented and the boundary is explicit.');
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(50,177,'Word History — from Mapuche','supports','Documents the Mapuche analysis.'),(50,178,'poncho¹ — Spanish-internal proposal','challenges','Documents the competing analysis.'),(50,180,'poncho discussion — early record','context','Explains the historical argument.'),
(51,172,'Word History — Dakota thípi from thí-','supports','Documents English borrowing and the dwelling base.'),(51,173,'p. 301 — *ahtí• > *htí > *thí','supports','Documents the reconstructed root chain.'),
(52,167,'separate llama¹ and llama² entries','supports','Documents the homonym split.'),(52,166,'Word History — Spanish, from Quechua','supports','Documents the animal route.'),
(53,169,'Word History — Aymara allpaqa','supports','Documents alpaca’s Aymara route.'),(53,166,'Word History — Spanish, from Quechua','supports','Documents llama’s Quechua route.'),(53,171,'p. 120 — allphaqa','context','Directly attests the Aymara animal word.'),(53,168,'p. 144 — llama','context','Directly attests the Quechua animal word.'),
(54,175,'Word History — Navajo hooghan','supports','Documents the borrowing.'),(54,176,'hooghan — home or house','supports','Documents the living meaning and Diné cultural frame.'),
(55,164,'Word History — Korean kimch’i','supports','Documents the borrowing.'),(55,165,'headword 김치 and definition','supports','Directly documents the living Korean word.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(2,66,67,'parallel_borrowing','Two Andean animals, two language families','Llama and alpaca both reached English through Spanish, but the donor words are Quechua llama and Aymara allpaqa / allphaqa. Geographic and zoological association does not make the names cognates.','Merriam-Webster · Peruvian Ministry of Education editors','established','reviewed'),
(3,68,69,'parallel_borrowing','Two dwellings, unrelated source families','Tipi and hogan are English borrowings from Dakota and Navajo respectively. Their similar English cultural category does not make the words cognates: the source families are Siouan and Na-Dene.','Merriam-Webster editors','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(2,166,'Word History — Spanish, from Quechua','supports','Documents the llama route.'),(2,169,'Word History — Spanish, from Aymara allpaqa','supports','Documents the alpaca route.'),(2,168,'p. 144 — llama','context','Directly attests the Quechua word.'),(2,171,'p. 120 — allphaqa','context','Directly attests the Aymara word.'),
(3,172,'Word History — Dakota thípi','supports','Documents the Siouan-side borrowing.'),(3,175,'Word History — Navajo hooghan','supports','Documents the Na-Dene-side borrowing.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(32,66,67,'The Andean split','Llama and alpaca look like one lexical family after Spanish and English transmission, but their Indigenous sources belong to Quechuan and Aymaran.',99,'A','reviewed'),
(33,68,69,'A dwelling is not a cognate','Tipi and hogan entered English from unrelated Dakota and Navajo words; shared English categorization is not shared ancestry.',97,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id IN (65,66,67,68,69,70)
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:44:pocho:attested:sense:faded-adjective-candidate',44,'pocho / poncho','pocho','faded-adjective-candidate',NULL,NULL,'attested','historical Spanish candidate',1500,NULL,'faded, discolored; proposed source family for the garment word','Graph-only competing source candidate. RAE proposes a Spanish-internal route, while Iwasaki argues from the early record; neither source makes this the uncontested parent.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.entry_id IN (65,66,67,68,69,70);
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id IN (65,66,67,68,69,70);
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id IN (65,66,67,68,69,70);
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id IN (65,66,67,68,69,70);
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:44:poncho:attested:sense:garment'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:44:pocho:attested:sense:faded-adjective-candidate'),'competing_derivation','The Spanish-internal proposal compares garment poncho with a faded or discolored adjective in the pocho / poncho family; the exact formation and chronology remain debated.','A color or condition adjective is proposed to have become the name of a plain or faded garment.','RAE editors · Fernando Iwasaki reviewing Morínigo and Coromines','proposed','The early Spanish record challenges a one-way Mapuche derivation, but the competing analysis is not treated as closed.','A 1530 Spanish-language garment record is central to the argument.','reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:44:poncho:attested:sense:garment' AND p.canonical_key='node:44:pocho:attested:sense:faded-adjective-candidate' AND e.relation_type='competing_derivation'),178,'poncho¹ — quizá de po[n]cho “descolorido”','supports','States the current Spanish-internal proposal.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:44:poncho:attested:sense:garment' AND p.canonical_key='node:44:pocho:attested:sense:faded-adjective-candidate' AND e.relation_type='competing_derivation'),180,'poncho discussion — 1530 record and Spanish-origin argument','supports','Documents the historical argument for Spanish origin.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:44:poncho:attested:sense:garment' AND p.canonical_key='node:44:pocho:attested:sense:faded-adjective-candidate' AND e.relation_type='competing_derivation'),177,'Word History — from Mapuche','challenges','Documents the competing Mapuche analysis.');
