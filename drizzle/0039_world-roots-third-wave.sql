INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(49,'portuguese','Portuguese','Indo-European','Italic · Romance · Ibero-Romance',0,1200,NULL,'Attested Romance language; the numeric start is a broad language-period anchor, not a first-attestation claim for every form.'),
(50,'malayalam','Malayalam','Dravidian','Southern Dravidian',0,800,NULL,'Attested Dravidian language of southwestern India; the numeric start is a broad written-language anchor.'),
(51,'tupi','Tupi','Tupian','Tupi–Guaraní',0,1500,1800,'Attested historical Indigenous language of coastal Brazil represented through early colonial records; dates are broad language-period anchors.'),
(52,'eastern-algonquian-source-unspecified','Eastern Algonquian source (variety unresolved)','Algic','Algonquian · Eastern Algonquian',0,1500,NULL,'Evidence container for the unresolved Eastern Algonquian source of English moose. It deliberately does not convert a related Massachusett or Abenaki form into a uniquely proven direct donor.'),
(53,'louisiana-french','Louisiana French','Indo-European','Italic · Romance · French',0,1700,NULL,'Attested colonial and modern French varieties of Louisiana; the numeric start is a broad regional anchor.'),
(54,'choctaw','Choctaw','Muskogean','Western Muskogean',0,1700,NULL,'Attested Muskogean language. The modern form bók is directly documented; the proposed early *bayok behind bayou is a separate historical hypothesis.'),
(55,'turkish','Turkish','Turkic','Common Turkic · Oghuz',0,1200,NULL,'Attested Oghuz Turkic language; the numeric start is a broad language-period anchor.'),
(56,'evenki','Evenki','Tungusic','Northern Tungusic',0,1600,NULL,'Attested Tungusic language of Siberia. The numeric start is a broad early-record anchor and not a first-use claim for šamān.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(59,'mango','mango','mango','/ˈmæŋɡoʊ/','noun','English mango, recorded by 1582, came through Portuguese manga, probably from Malayalam māṅṅa. The reviewed route stops there rather than forcing a deeper Dravidian reconstruction.','Mango is not a generic European tropical coinage. Its English name carries a Malayalam fruit word through the Portuguese Indian Ocean world.','reviewed'),
(60,'jaguar','jaguar','jaguar','/ˈdʒæɡwɑːr/','noun','English jaguar, recorded by 1604, came through Portuguese from Tupi jawára, whose range was broader than the modern zoological species label.','Jaguar is an Indigenous Brazilian word carried through Portuguese; English narrowed a broader Tupi large-carnivore name into one zoological species.','reviewed'),
(61,'moose','moose','moose','/muːs/','noun','English moose, recorded by 1603, is of Algonquian origin. Related Massachusett and Eastern Abenaki forms are secure, but the reviewed evidence does not uniquely identify one direct donor variety.','Moose is not a malformed Germanic animal plural. English borrowed an Indigenous North American animal name, while its exact Eastern Algonquian donor remains unresolved.','reviewed'),
(62,'bayou','bayou','bayou','/ˈbaɪuː/','noun','English bayou, recorded by 1763, came from Louisiana French bayouque. An early Choctaw *bayok is a plausible proposed source, but the historical form and its alleged contraction to modern bók are not securely attested.','Bayou is not simply a French invention—but “it definitely comes from Choctaw bayuk” is too certain. The Choctaw route is plausible, important, and still evidentially insecure.','reviewed'),
(63,'yogurt','yogurt','yogurt','/ˈjoʊɡərt/','noun','English yogurt, recorded by 1625, is a borrowing of Turkish yoğurt. Scholarship relates the noun to the Turkish verb yoğurmak, but the age of the food itself is a separate historical question.','The English word is Turkish; that linguistic fact does not by itself prove who first invented fermented milk. Word ancestry and food prehistory are different claims.','reviewed'),
(64,'shaman','shaman','shaman','/ˈʃɑːmən/','noun','English shaman, recorded by 1698, is ultimately from Evenki šamān. European scholarship later generalized one Siberian term across many unrelated spiritual traditions.','Shaman was not humanity’s universal ancient word for every spiritual practitioner. It is a specific Evenki term that European observers globalized.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(149,'mw-mango','Mango — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/mango',NULL,'historical_dictionary'),
(150,'gundert-malayalam-manga','A Malayalam and English Dictionary — māṅṅa','Hermann Gundert',1872,'C. Stolz · Trübner & Co. · Columbia University Libraries digital copy','https://www.columbia.edu/cu/lweb/digital/collections/cul/texts/ldpd_8661431_000/ldpd_8661431_000.pdf',NULL,'historical_dictionary'),
(151,'mw-jaguar','Jaguar — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/jaguar',NULL,'historical_dictionary'),
(152,'cnrtl-jaguar','Jaguar — étymologie','Centre national de ressources textuelles et lexicales',NULL,'CNRTL · CNRS','https://www.cnrtl.fr/etymologie/jaguar',NULL,'historical_dictionary'),
(153,'mw-moose','Moose — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/moose',NULL,'historical_dictionary'),
(154,'language-museum-indigenous-loans','Indigenous Languages in Canada — English loans','Canadian Language Museum',2022,'Canadian Language Museum · York University','https://languagemuseum.ca/wp-content/uploads/2022/12/indigenous_languages_in_canada_0.pdf',NULL,'institutional_reference'),
(155,'mw-bayou','Bayou — Word History and etymology note','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/bayou',NULL,'historical_dictionary'),
(156,'mbci-choctaw-bok','Bók — creek','Mississippi Band of Choctaw Indians',2026,'MBCI Choctaw Language Dictionary','https://dictionary.choctaw.org/en/word?word=Bo%CC%81k',NULL,'institutional_lexicon'),
(157,'mw-yogurt','Yogurt — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/yogurt',NULL,'historical_dictionary'),
(158,'tdk-yogurt','Yoğurt — Türkçe Sözlük','Türk Dil Kurumu',2023,'Türk Dil Kurumu','https://sozluk.gov.tr/?ara=yo%C4%9Furt',NULL,'institutional_lexicon'),
(159,'ozbek-2022-yogurt','Yoğurt Sözcüğünün Etimolojisi Üzerine Bir Deneme','Emin Erdem Özbek',2022,'Oğuz Türkçesi Araştırmaları Dergisi','https://dergipark.org.tr/en/pub/oguztad/article/1178168',NULL,'scholarly_article'),
(160,'tdk-yogurmak','Yoğurmak — Türkçe Sözlük','Türk Dil Kurumu',2023,'Türk Dil Kurumu','https://sozluk.gov.tr/?ara=yo%C4%9Furmak',NULL,'institutional_lexicon'),
(161,'mw-shaman','Shaman — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/shaman',NULL,'historical_dictionary'),
(162,'znamenski-2007-shaman','The Beauty of the Primitive: Shamanism and Western Imagination','Andrei A. Znamenski',2007,'Oxford University Press','https://academic.oup.com/book/27616','10.1093/acprof:oso/9780195172317.001.0001','scholarly_book'),
(163,'zieme-2008-shaman','A Note on the Word “Shaman” in Old Turkic','Peter Zieme',2008,'Shaman · International Society for Academic Research on Shamanism','https://www.isars.org/wp-content/uploads/2020/12/ShamanVol16_2008_dld.pdf',NULL,'scholarly_article');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(364,59,1,1,'mango','mango','fruit',NULL,'/ˈmæŋɡoʊ/','attested','1582–today',1582,NULL,'the fruit or tree of Mangifera indica','Merriam-Webster reports English first known use in 1582 and gives Portuguese manga, probably from Malayalam māṅṅa.'),
(365,59,49,2,'manga','manga','mango-fruit',NULL,NULL,'attested','Portuguese',1200,NULL,'mango','The numeric date is a broad Portuguese-language anchor. Merriam-Webster identifies this as the immediate English source.'),
(366,59,50,3,'മാങ്ങ','māṅṅa','mango-fruit','māṅṅa','/maːŋːa/','attested','Malayalam',800,NULL,'mango fruit','Merriam-Webster says Portuguese manga is probably from Malayalam māṅṅa; Gundert independently records the Malayalam fruit word.'),
(367,59,7,4,'UNKNOWN','unknown','mango-deep-boundary',NULL,NULL,'boundary','before Malayalam māṅṅa',NULL,NULL,'No deeper ancestor is promoted from the reviewed sources.','The trail stops at the attested Malayalam form rather than silently importing a more speculative Dravidian reconstruction.'),
(368,60,1,1,'jaguar','jaguar','panthera-onca',NULL,'/ˈdʒæɡwɑːr/','attested','1604–today',1604,NULL,'the large American cat Panthera onca','Merriam-Webster reports English first known use in 1604 and gives Portuguese from Tupi jawára.'),
(369,60,49,2,'jaguar','jaguar','large-cat-name',NULL,NULL,'attested','Portuguese',1200,NULL,'jaguar','The date is a broad Portuguese-language anchor. The English word was transmitted through Portuguese.'),
(370,60,51,3,'jawára / jaguara','jawara','large-carnivore',NULL,NULL,'attested','Tupi',1500,1800,'large carnivore; a broader predator label than the modern English species term','Merriam-Webster prints Tupi jawára “large carnivore”; CNRTL documents historical Tupi variants and later European specialization.'),
(371,60,7,4,'UNKNOWN','unknown','jaguar-deep-boundary',NULL,NULL,'boundary','before Tupi jawára',NULL,NULL,'No securely reviewed deeper lexical ancestor is promoted.','The trail stops at the attested Tupi source form.'),
(372,61,1,1,'moose','moose','alces-animal',NULL,'/muːs/','attested','1603–today',1603,NULL,'the largest living member of the deer family','Merriam-Webster reports English first known use in 1603 and labels the word Algonquian in origin.'),
(373,61,52,2,'mos / moos','mos','moose-animal',NULL,NULL,'attested','Eastern Algonquian source; variety unresolved',1500,NULL,'moose','The form groups closely matching cited Eastern Algonquian evidence without asserting that Massachusett or Eastern Abenaki was uniquely the immediate donor.'),
(374,61,7,3,'UNKNOWN','unknown','moose-source-boundary',NULL,NULL,'boundary','before the unresolved Eastern Algonquian donor',NULL,NULL,'No unique donor variety or deeper reconstruction is promoted.','Massachusett moos and Eastern Abenaki mos remain explicit related evidence, not falsely precise route nodes.'),
(375,62,1,1,'bayou','bayou','watercourse',NULL,'/ˈbaɪuː/','attested','1763–today',1763,NULL,'a creek, secondary watercourse, or sluggish body of water','Merriam-Webster reports English first known use in 1763 and derives it from Louisiana French.'),
(376,62,53,2,'bayouque','bayouque','stagnant-watercourse',NULL,NULL,'attested','Louisiana French; recorded 1723',1723,1723,'bayou; stagnant or secondary watercourse','Merriam-Webster identifies the earlier Louisiana French form and quotes Pénicaut’s 1723 record.'),
(377,62,54,3,'*bayok','bayok','early-watercourse-candidate',NULL,NULL,'reconstructed','proposed early Choctaw',1600,1800,'proposed early Choctaw form for a bayou or watercourse','The asterisk is essential: Merriam-Webster says perhaps from early Choctaw *bayok and explains that bayuk is not securely attested in later Choctaw.'),
(378,62,7,4,'UNKNOWN','unknown','bayou-source-boundary',NULL,NULL,'boundary','before proposed early Choctaw *bayok',NULL,NULL,'No secure deeper ancestor is promoted.','Modern Choctaw bók “creek” is documented separately; the claim that it contracts from *bayok remains conjectural.'),
(379,63,1,1,'yogurt','yogurt','fermented-milk',NULL,'/ˈjoʊɡərt/','attested','1625–today',1625,NULL,'a fermented semisolid milk food','Merriam-Webster reports English first known use in 1625 and gives Turkish yoğurt.'),
(380,63,55,2,'yoğurt','yoğurt','fermented-milk',NULL,NULL,'attested','Turkish',1200,NULL,'fermented, thickened milk product','Merriam-Webster identifies the source word; the Turkish Language Association documents the modern form and definition.'),
(381,63,55,3,'yoğur-','yoğur','knead-mix-thicken-stem',NULL,NULL,'attested','Turkish verbal stem',1200,NULL,'to knead or work by mixing; the stem compared in scholarship with yoğurt','Özbek argues for a structural and semantic relation to yogur- “to knead”; this is represented as proposed derivation, not undisputed fact.'),
(382,63,7,4,'UNKNOWN','unknown','yogurt-deep-boundary',NULL,NULL,'boundary','before Turkish yoğur-',NULL,NULL,'No deeper Turkic reconstruction is promoted from this review.','The path stops before a deeper reconstruction and does not turn word history into a claim about who invented the food.'),
(383,64,1,1,'shaman','shaman','spiritual-practitioner',NULL,'/ˈʃɑːmən/','attested','1698–today',1698,NULL,'a spiritual practitioner described in English by the generalized term shaman','Merriam-Webster reports English first known use in 1698 and says the word is ultimately from Evenki.'),
(384,64,56,2,'šamān','šamān','evenki-ritual-specialist',NULL,NULL,'attested','Evenki',1600,NULL,'Evenki ritual or spiritual specialist','The numeric date is a broad early-record anchor. Merriam-Webster identifies this Evenki form as the ultimate source.'),
(385,64,7,3,'UNKNOWN','unknown','shaman-deep-boundary',NULL,NULL,'boundary','before Evenki šamān',NULL,NULL,'The ultimate ancestry of the Evenki word is disputed.','A proposed Sanskrit or Central Asian comparison is retained in the canonical graph as a competing hypothesis, not promoted into the linear route.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(306,59,364,365,'borrowing','Portuguese manga was adapted with the English ending and vowel represented by mango.','The fruit and tree referent remained central.','Merriam-Webster Editors','established','Merriam-Webster explicitly identifies Portuguese manga as the immediate source.','English record by 1582.','reviewed'),
(307,59,365,366,'proposed_borrowing','Portuguese manga closely reflects Malayalam māṅṅa; the nasal and final vowel were accommodated in Portuguese spelling.','The mango-fruit referent remained stable.','Merriam-Webster Editors · Hermann Gundert','probable','Merriam-Webster says “probably from Malayalam”; Gundert independently attests the Malayalam form.','Indian Ocean contact before the English record; no invented transfer year.','reviewed'),
(308,59,366,367,'knowledge_boundary','No deeper Dravidian reconstruction is promoted from the reviewed sources.','The reviewed route reaches Malayalam and stops.','SET-U editorial boundary','boundary','The boundary distinguishes an attested source word from deeper comparisons not reviewed in this tranche.',NULL,'reviewed'),
(309,60,368,369,'borrowing','Portuguese jaguar entered English with pronunciation adapted to English patterns.','The large-cat referent continued into English.','Merriam-Webster Editors','established','Merriam-Webster explicitly gives Portuguese as the immediate source.','English record by 1604.','reviewed'),
(310,60,369,370,'borrowing','Portuguese jaguar reflects Tupi jawára or jaguara with adaptation to Portuguese spelling.','A broader Tupi large-carnivore name became specialized as the jaguar species name in European languages.','Merriam-Webster Editors · CNRTL editors','established','Merriam-Webster explicitly gives Tupi jawára and its broad gloss; CNRTL documents historical variants and specialization.','Colonial-era Brazilian transmission; no invented exact year.','reviewed'),
(311,60,370,371,'knowledge_boundary','No deeper ancestor is promoted beyond the attested Tupi source.','The lexical path reaches the Indigenous Brazilian form and stops.','SET-U editorial boundary · Merriam-Webster Editors','boundary','The reviewed sources do not establish a deeper form.',NULL,'reviewed'),
(312,61,372,373,'proposed_borrowing','English moose reflects a closely matching Eastern Algonquian animal name such as moos or mos.','The animal referent remained stable.','Merriam-Webster Editors · Canadian Language Museum','probable','Algonquian origin is secure, but the exact donor variety is not uniquely established in the reviewed evidence.','English record by 1603.','reviewed'),
(313,61,373,374,'knowledge_boundary','The donor variety and deeper reconstructed path are not promoted beyond the evidence reviewed here.','The route stops rather than converting cognates into a false direct lineage.','SET-U editorial boundary','boundary','Massachusett and Eastern Abenaki forms support the family attribution without uniquely identifying the borrowing event.',NULL,'reviewed'),
(314,62,375,376,'borrowing','Louisiana French bayouque was shortened and anglicized as bayou.','The watercourse sense continued and broadened in English.','Merriam-Webster Editors','established','Merriam-Webster explicitly identifies Louisiana French bayouque.','Louisiana French record in 1723; English first-known use in 1763.','reviewed'),
(315,62,376,377,'proposed_borrowing','Louisiana French bayouque is compared with reconstructed early Choctaw *bayok.','A local watercourse label is proposed to have entered colonial Louisiana French.','Merriam-Webster Editors · Handbook of North American Indians editors','proposed','Merriam-Webster calls the Choctaw route possible and explains both the supporting place-name evidence and the absence of secure later bayuk attestations.','Proposed early colonial contact route.','reviewed'),
(316,62,377,378,'knowledge_boundary','No deeper form is promoted beyond the insecure early Choctaw reconstruction.','The trail stops at a hypothesis whose limitations are visible.','SET-U editorial boundary · Merriam-Webster Editors','boundary','Modern bók is related contextual evidence; derivation from *bayok is not treated as established.',NULL,'reviewed'),
(317,63,379,380,'borrowing','Turkish yoğurt was adapted to English spelling and pronunciation as yogurt or yoghurt.','The fermented milk referent remained central.','Merriam-Webster Editors · Türk Dil Kurumu','established','Merriam-Webster explicitly identifies Turkish yoğurt; TDK documents the modern Turkish word.','English record by 1625.','reviewed'),
(318,63,380,381,'proposed_derivation','The noun yoğurt is analyzed in relation to the verbal base yogur- or modern yoğur-.','A process word for kneading or working a mixture is proposed as the morphological base of the food noun.','Emin Erdem Özbek','probable','Özbek reviews historical forms and argues for the structural and semantic relation; the site preserves the proposal label.','Historical Turkic development before modern Turkish; no invented exact date.','reviewed'),
(319,63,381,382,'knowledge_boundary','No deeper reconstructed Turkic base is promoted from the reviewed sources.','The linguistic path stops separately from claims about the food’s prehistoric invention.','SET-U editorial boundary','boundary','Lexical ancestry does not establish the origin place or inventor of fermented milk.',NULL,'reviewed'),
(320,64,383,384,'borrowing_via_competing_routes','English shaman is ultimately from Evenki šamān; Russian and German mediation are historically discussed, but one fully specified immediate chain is not forced into this edge.','A specific Siberian practitioner name was generalized in European scholarship across diverse traditions.','Merriam-Webster Editors · Andrei A. Znamenski','established','Merriam-Webster identifies the ultimate Evenki source; Znamenski documents its transmission and Western generalization.','English record by 1698; European transmission around the turn of the eighteenth century.','reviewed'),
(321,64,384,385,'knowledge_boundary','Competing Tungusic-internal and Buddhist Central Asian ancestry theories prevent a secure deeper promotion.','The path stops at Evenki while the wider-origin debate remains visible.','SET-U editorial boundary · Peter Zieme','boundary','A formal resemblance to Sanskrit śramaṇa and its Central Asian descendants is not treated as a proven ancestor of Evenki šamān.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(306,149,'Word History — Etymology; First Known Use','supports','Identifies Portuguese manga and reports English use in 1582.'),
(307,149,'Word History — Portuguese manga, probably from Malayalam māṅṅa','supports','Explicitly gives the probable Malayalam source.'),
(307,150,'entry മാങ്ങ / māṅṅa','supports','Independently attests the Malayalam fruit word.'),
(308,149,'Word History — endpoint at Malayalam māṅṅa','context','Defines the reviewed horizon at which this path stops.'),
(309,151,'Word History — Etymology; First Known Use','supports','Identifies Portuguese and reports English use in 1604.'),
(310,151,'Word History — Tupi jawára “large carnivore”','supports','Supplies the direct Tupi attribution and broad source sense.'),
(310,152,'Etymologie — Tupi januare, jaguara and later specialization','supports','Documents Tupi variants and European lexical specialization.'),
(311,151,'Word History — Tupi endpoint','context','Defines the reviewed source horizon.'),
(312,153,'Word History — of Algonquian origin; akin to Massachusett moos','supports','Secures the family attribution and one related form.'),
(312,154,'English loan examples — Eastern Abenaki mos “moose”','supports','Supplies an additional Eastern Algonquian form while not proving unique donor status.'),
(313,153,'Word History — broad Algonquian origin','supports','The broad label supports preserving donor-variety uncertainty.'),
(314,155,'Word History — Louisiana French bayouque; First Known Use','supports','Identifies the immediate source, 1723 French record, and 1763 English first-known use.'),
(315,155,'Etymology note — perhaps early Choctaw *bayok; insecurity discussion','supports','Presents the proposed Choctaw route and its evidentiary limits.'),
(315,156,'Bók — creek','context','Documents the living Choctaw watercourse word without proving contraction from *bayok.'),
(316,155,'Etymology note — bayuk unattested; contraction conjectural','supports','Directly supports the uncertainty boundary.'),
(317,157,'Word History — Turkish yoğurt; First Known Use','supports','Identifies the Turkish source and reports English use in 1625.'),
(317,158,'Yoğurt — headword and definition','supports','Documents the modern Turkish noun and food sense.'),
(318,159,'Abstract and etymological analysis — relation to yogur- “yoğurmak”','supports','Argues for the morphological and semantic connection.'),
(318,160,'Yoğurmak — headword and definition','context','Documents the living Turkish verb used in the comparison.'),
(319,159,'Scope and conclusions','context','Supports a lexical analysis but not a claim about invention of the food.'),
(320,161,'Word History — ultimately Evenki šamān; First Known Use','supports','Identifies the ultimate source and reports English use in 1698.'),
(320,162,'Abstract and chapter 1 — Siberian term introduced and generalized by European observers','supports','Documents the Western transmission and later expansion of scope.'),
(321,163,'pp. 137–139 — competing theories and missing direct evidence','supports','Explains why the Sanskrit or Central Asian comparison is not a secure promoted ancestor.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(74,364,149,'1582',1582,'English lexicographic first-use record for mango','First Known Use','1582','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1582 object or facsimile was identified or directly inspected in this tranche.'),
(75,368,151,'1604',1604,'English lexicographic first-use record for jaguar','First Known Use','1604','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1604 object or facsimile was identified or directly inspected in this tranche.'),
(76,372,153,'1603',1603,'English lexicographic first-use record for moose','First Known Use','1603','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1603 object or facsimile was identified or directly inspected in this tranche.'),
(77,375,155,'1763',1763,'English lexicographic first-use record for bayou','First Known Use','1763','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1763 object or facsimile was identified or directly inspected in this tranche.'),
(78,379,157,'1625',1625,'English lexicographic first-use record for yogurt','First Known Use','1625','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1625 object or facsimile was identified or directly inspected in this tranche.'),
(79,383,161,'1698',1698,'English lexicographic first-use record for shaman','First Known Use','1698','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1698 object or facsimile was identified or directly inspected in this tranche.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(212,59,'manga','Portuguese','immediate donor form, probably from Malayalam māṅṅa',149),
(213,60,'jaguareté','Tupi','historical compound or specialized form documented alongside jaguara in the Tupi lexical field',152),
(214,61,'moos','Massachusett','closely related Eastern Algonquian form cited by Merriam-Webster; not uniquely proven as the direct donor',153),
(215,61,'mos','Eastern Abenaki','closely matching Eastern Algonquian form documented by the Canadian Language Museum',154),
(216,62,'bók','Choctaw','living word meaning creek; related context for proposed early *bayok but not proof of the contraction hypothesis',156),
(217,63,'yoghurt','English variant','English spelling variant documented alongside yogurt',157),
(218,64,'Schamane','German','European transmission form discussed in the history of the term’s Western generalization',162),
(219,64,'śramaṇa','Sanskrit','formal and historical comparison proposed through Central Asian Buddhist vocabulary; ancestry of Evenki remains disputed',163);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(229,59,1,'Malayalam-speaking southwestern India','Malayalam māṅṅa','The probable source form belongs to the Malayalam-speaking region of India.',NULL,NULL,'regional',NULL,NULL,'unresolved','No exact first-attestation year or single borrowing port is asserted.'),
(230,59,2,'Portuguese Indian Ocean network','Portuguese manga','Portuguese carried the fruit word into the European lexical route.',NULL,NULL,'broad',NULL,NULL,'unresolved','The source establishes the intermediary language, not one exact voyage or port.'),
(231,59,3,'Global English','1582 English record','Merriam-Webster reports English first known use in 1582.',NULL,NULL,'global',1582,1582,'exact','The year is a lexicographic first-use report, not proof that no earlier token exists.'),
(232,60,1,'Tupi-speaking coastal Brazil','Tupi jawára','The Indigenous source form is documented in the Brazilian Tupi lexical field.',NULL,NULL,'regional',NULL,NULL,'unresolved','No exact first-attestation year or single community is asserted.'),
(233,60,2,'Portuguese Atlantic world','Portuguese jaguar','Portuguese transmitted the Tupi animal name into European languages.',NULL,NULL,'broad',NULL,NULL,'unresolved','The route is secure at the language level but not localized to one voyage.'),
(234,60,3,'Global English','1604 English record','Merriam-Webster reports English first known use in 1604.',NULL,NULL,'global',1604,1604,'exact','The year is a lexicographic first-use report.'),
(235,61,1,'Eastern Algonquian language region','mos or moos','The reviewed evidence supports an Eastern Algonquian source region while leaving the donor variety unresolved.',NULL,NULL,'broad',NULL,NULL,'unresolved','Related Massachusett and Eastern Abenaki forms do not uniquely identify one borrowing event.'),
(236,61,2,'English North America','1603 English record','Merriam-Webster reports English first known use in 1603.',NULL,NULL,'broad',1603,1603,'exact','The year is a lexicographic first-use report.'),
(237,62,1,'Choctaw-speaking Southeast','proposed early Choctaw *bayok','The ultimate Indigenous source is plausible but reconstructed and disputed.',NULL,NULL,'broad',NULL,NULL,'unresolved','Modern bók is attested; early *bayok and its relationship to the French form remain uncertain.'),
(238,62,2,'French colonial Louisiana','1723 bayouque record','Merriam-Webster quotes the 1723 Louisiana French record by Pénicaut.',NULL,NULL,'regional',1723,1723,'exact','The historical quotation is source-reported here rather than directly inspected as a manuscript object.'),
(239,62,3,'English-speaking Louisiana and beyond','1763 English record','Merriam-Webster reports English first known use in 1763.',NULL,NULL,'broad',1763,1763,'exact','The year is a lexicographic first-use report.'),
(240,63,1,'Turkish-speaking world','Turkish yoğurt','The immediate English source is the attested Turkish food word.',NULL,NULL,'broad',NULL,NULL,'unresolved','No exact transfer place or first Turkish witness is asserted from the reviewed dictionary entry.'),
(241,63,2,'Global English','1625 English record','Merriam-Webster reports English first known use in 1625.',NULL,NULL,'global',1625,1625,'exact','The year is a lexicographic first-use report, not the invention date of the food.'),
(242,64,1,'Evenki-speaking Siberia','Evenki šamān','Merriam-Webster identifies the Evenki term as the ultimate source.',NULL,NULL,'broad',NULL,NULL,'unresolved','No exact first Evenki witness or one point location is asserted.'),
(243,64,2,'Russian and German scholarly contact zones','European transmission around 1700','Znamenski documents the Siberian term’s movement through European observation and scholarship.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reviewed sources do not warrant one fully resolved chain of every intermediate spelling.'),
(244,64,3,'Global English','1698 English record and later generalization','English adopted the term and later extended it far beyond its Evenki setting.',NULL,NULL,'global',1698,1698,'exact','The exact year is the lexicographic first-use report; global semantic expansion is later.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(229,149,'Word History — Malayalam māṅṅa','supports','Identifies the probable Malayalam source.'),
(229,150,'entry മാങ്ങ / māṅṅa','supports','Attests the Malayalam fruit word.'),
(230,149,'Word History — Portuguese manga','supports','Identifies the Portuguese intermediary.'),
(231,149,'First Known Use','supports','Reports 1582.'),
(232,151,'Word History — Tupi jawára','supports','Identifies the Indigenous Brazilian source.'),
(232,152,'Etymologie — Tupi forms','supports','Documents the historical Tupi lexical field.'),
(233,151,'Word History — Portuguese from Tupi','supports','Identifies Portuguese transmission.'),
(234,151,'First Known Use','supports','Reports 1604.'),
(235,153,'Word History — Algonquian origin; Massachusett moos','supports','Supports the broad source region.'),
(235,154,'English loan examples — Eastern Abenaki mos','context','Adds a related regional form without selecting one donor.'),
(236,153,'First Known Use','supports','Reports 1603.'),
(237,155,'Etymology note — perhaps early Choctaw *bayok','supports','Documents the proposed source and uncertainty.'),
(237,156,'Bók — creek','context','Documents the living Choctaw comparison.'),
(238,155,'Etymology note — Pénicaut 1723 bayouque quotation','supports','Reports the Louisiana French witness.'),
(239,155,'First Known Use','supports','Reports 1763.'),
(240,157,'Word History — Turkish yoğurt','supports','Identifies the Turkish source.'),
(240,158,'Yoğurt — headword','supports','Documents the living Turkish noun.'),
(241,157,'First Known Use','supports','Reports 1625.'),
(242,161,'Word History — ultimately Evenki šamān','supports','Identifies the ultimate source.'),
(243,162,'Abstract and chapter 1','supports','Documents Western scholarly transmission from Siberia.'),
(244,161,'First Known Use','supports','Reports 1698.'),
(244,162,'Abstract — global movement of the term','context','Documents later generalization beyond Siberia.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(100,59,'Is Malayalam the certain ultimate source of mango?','Portuguese manga is the secure immediate source; Malayalam māṅṅa is probable, not absolute, and no deeper Dravidian reconstruction is promoted in this review.','probable','Merriam-Webster uses “probably”; Gundert independently attests Malayalam māṅṅa.','open','The edge is labeled probable and the graph ends at an evidence boundary.'),
(101,60,'Did Tupi jawára already mean only Panthera onca?','The cited Tupi gloss is broader: large carnivore. European languages specialized the borrowed name as the jaguar species label.','established','Merriam-Webster gives the broad Tupi gloss; CNRTL documents historical variants and specialization.','resolved','The semantic-change field records narrowing rather than projecting the modern zoological sense backward.'),
(102,61,'Which Eastern Algonquian language directly supplied moose?','The family source is secure, but related Massachusett moos and Eastern Abenaki mos do not by themselves identify one unique direct donor.','probable','Merriam-Webster says Algonquian and cites Massachusett as akin; the Canadian Language Museum gives Eastern Abenaki mos.','open','The donor node remains variety unresolved and the specific forms are relatives.'),
(103,62,'Is Choctaw bayuk a securely attested source of bayou?','No. An early Choctaw *bayok is plausible and accepted in a major handbook, but later bayuk is not securely attested and contraction to bók was conjectural.','proposed','Merriam-Webster lays out both the historical proposal and its weaknesses; the MBCI dictionary directly documents modern bók “creek.”','open','The French edge is established, the Choctaw edge proposed, and the asterisk remains visible.'),
(104,63,'Does a Turkish word prove Turkish invention of yogurt?','No. English borrowed Turkish yoğurt, and a Turkish verbal derivation is supported; neither fact alone establishes the prehistoric inventor or birthplace of fermented milk.','established','Merriam-Webster and TDK establish the lexical source; Özbek analyzes the Turkish morphology.','resolved','The dossier separates linguistic lineage from food-history claims.'),
(105,64,'Does Evenki šamān securely descend from Sanskrit śramaṇa?','The resemblance and Central Asian transmission routes have motivated a hypothesis, but direct evidence connecting the Buddhist term to the Evenki word remains insufficient.','proposed','Merriam-Webster stops at Evenki; Zieme reviews major theories and emphasizes the evidentiary gap.','open','The Sanskrit comparison is a speculative competing graph edge, not part of the promoted linear ancestry.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(100,149,'Word History — “probably from Malayalam māṅṅa”','supports','The probability wording prevents false certainty.'),
(100,150,'entry മാങ്ങ / māṅṅa','context','Confirms the attested Malayalam match.'),
(101,151,'Word History — Tupi jawára “large carnivore”','supports','Documents the broader source sense.'),
(101,152,'Etymologie — historical Tupi variants and species specialization','supports','Documents the later narrowing.'),
(102,153,'Word History — Algonquian origin; akin to Massachusett moos','supports','Establishes family origin without naming Massachusett as the direct donor.'),
(102,154,'English loan examples — Eastern Abenaki mos','context','Adds a second specific related form.'),
(103,155,'Etymology note — insecure Choctaw derivation','supports','Explicitly states the missing later attestation and conjectural contraction.'),
(103,156,'Bók — creek','context','Directly documents the modern Choctaw comparison.'),
(104,157,'Word History — Turkish yoğurt','supports','Establishes word ancestry only.'),
(104,159,'Abstract and analysis — relation to yogur-','supports','Supports Turkish morphological analysis without proving food invention.'),
(105,161,'Word History — ultimately Evenki šamān','supports','Stops the established route at Evenki.'),
(105,163,'pp. 137–139 — three theories and direct-evidence gap','supports','Documents the unresolved deeper-origin debate.'),
(105,162,'Abstract and chapter 1 — Western generalization','context','Explains how the Evenki term acquired a global scholarly scope.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`-94;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(44,64,1,'shaman','It was never humanity’s universal ancient name for spiritual practitioners.','English globalized a specific Evenki term through European scholarship and applied it to many unrelated traditions.','A',100,'The borrowing and the later generalization are independently supported; deeper Sanskrit ancestry remains proposed.'),
(45,62,2,'bayou','The Indigenous route is real scholarship—but not a closed case.','English securely borrowed Louisiana French bayouque. Early Choctaw *bayok is plausible, while the oft-repeated bayuk form and its contraction to modern bók remain insecure.','A',100,'The most revealing result is calibrated uncertainty backed by the dictionary’s full etymology note and a living Choctaw lexicon.'),
(46,61,3,'moose','It is not a failed Germanic plural.','English borrowed an Algonquian animal name; Massachusett moos and Eastern Abenaki mos are related evidence, while the exact donor remains unresolved.','A-',100,'Two institutional references secure the family and forms without pretending to know the unique transfer event.'),
(47,59,4,'mango','A supermarket word carries an Indian Ocean contact history.','English mango came through Portuguese manga, probably from Malayalam māṅṅa.','A-',100,'The direct Portuguese route is established and the Malayalam edge correctly remains probable.'),
(48,60,5,'jaguar','The brand and species name began as a broader Indigenous predator word.','Portuguese carried Tupi jawára into English, where a broad large-carnivore label became the name of Panthera onca.','A',100,'Independent historical dictionaries support both route and semantic narrowing.'),
(49,63,6,'yogurt','A Turkish word is not proof of who invented the food.','English yogurt is Turkish yoğurt, probably related to yoğur- “knead”; the origin of fermented milk is a different historical question.','A',100,'The ledger separates a strong lexical claim from an unsupported leap into food prehistory.');
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(44,161,'Word History — ultimately Evenki šamān','supports','Establishes the specific Evenki source.'),
(44,162,'Abstract and chapter 1 — term introduced and globalized by European observers','supports','Documents the expansion from Siberian term to global category.'),
(44,163,'pp. 137–139 — deeper etymology disputed','context','Prevents overclaiming the word’s ancestry.'),
(45,155,'Full etymology note','supports','Documents both the Louisiana French route and insecurity of the Choctaw hypothesis.'),
(45,156,'Bók — creek','context','Documents the living Choctaw comparison without proving the proposed early form.'),
(46,153,'Word History — Algonquian origin','supports','Secures the Indigenous family source.'),
(46,154,'English loan examples — Eastern Abenaki mos','supports','Adds a specific Eastern Algonquian cognate.'),
(47,149,'Word History — Portuguese manga, probably Malayalam māṅṅa','supports','Documents the complete promoted route and confidence.'),
(47,150,'entry മാങ്ങ / māṅṅa','supports','Independently attests the Malayalam form.'),
(48,151,'Word History — Portuguese from Tupi jawára “large carnivore”','supports','Documents route and broad source sense.'),
(48,152,'Etymologie — Tupi variants and specialization','supports','Independently documents the semantic history.'),
(49,157,'Word History — Turkish yoğurt','supports','Establishes the borrowing.'),
(49,159,'Abstract and analysis — relation to yogur-','supports','Supports the proposed morphological depth.'),
(49,158,'Yoğurt — headword and definition','context','Documents the living Turkish food word.');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id IN (59,60,61,62,63,64)
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:22:śramaṇa:attested:sense:ascetic-monk-candidate',22,'śramaṇa','śramaṇa','ascetic-monk-candidate',NULL,NULL,'attested','Sanskrit Buddhist term',-500,500,'ascetic; monk','Graph-only competing source hypothesis. Zieme traces the Buddhist word through Central Asian languages but emphasizes the missing direct evidence needed to make it the ancestor of Evenki šamān.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.entry_id IN (59,60,61,62,63,64);
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id IN (59,60,61,62,63,64);
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id IN (59,60,61,62,63,64);
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id IN (59,60,61,62,63,64);
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:56:šamān:attested:sense:evenki-ritual-specialist'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:22:śramaṇa:attested:sense:ascetic-monk-candidate'),'proposed_borrowing','A line of argument compares Evenki šamān with Sanskrit śramaṇa through documented Central Asian reflexes, but the exact transmission and sound history into Tungusic are not demonstrated.','A Buddhist ascetic or monk term is proposed as the source of a Tungusic ritual-specialist word.','Peter Zieme and prior scholars reviewed by him','speculative','Zieme presents the comparison as one of several theories and quotes the absence of direct evidence for the required transmission.','Hypothetical Central Asian contact before the European record of the Evenki word.','reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:56:šamān:attested:sense:evenki-ritual-specialist' AND p.canonical_key='node:22:śramaṇa:attested:sense:ascetic-monk-candidate' AND e.relation_type='proposed_borrowing'),163,'pp. 137–139 — Sanskrit and Central Asian comparison; direct-evidence gap','challenges','Documents the comparative hypothesis while explicitly preserving the missing transmission evidence that keeps it speculative.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:56:šamān:attested:sense:evenki-ritual-specialist' AND p.canonical_key='node:22:śramaṇa:attested:sense:ascetic-monk-candidate' AND e.relation_type='proposed_borrowing'),161,'Word History — ultimately Evenki šamān','context','The English dictionary’s secure trail stops at Evenki.');
