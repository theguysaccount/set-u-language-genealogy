INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(41,'tongan','Tongan','Austronesian','Malayo-Polynesian · Oceanic · Polynesian',0,1700,NULL,'Attested Polynesian language. The numeric start is a broad early written-record anchor, not a first-attestation claim for every form.'),
(42,'proto-oceanic','Proto-Oceanic','Austronesian','Malayo-Polynesian · Oceanic',1,-2000,-1000,'Comparatively reconstructed Oceanic ancestor; dates are deliberately broad and do not localize one speech community.'),
(43,'inuit-source-unspecified','Inuit source (variety unspecified)','Eskimo-Aleut','Inuit',0,1700,NULL,'Merriam-Webster labels the English donor only as Inuit qayaq. This evidence container deliberately does not pretend the cited source identifies one Inuit language variety.'),
(44,'spanish','Spanish','Indo-European','Italic · Romance · Ibero-Romance',0,1200,NULL,'Attested Romance language; the numeric start is a broad language-period anchor.'),
(45,'taino','Taíno','Arawakan','Northern Arawakan',0,1400,1600,'Attested Indigenous Caribbean language represented through early colonial lexical records; dates are broad and do not claim a surviving first witness for every form.'),
(46,'classical-nahuatl','Classical Nahuatl','Uto-Aztecan','Nahuan',0,1400,1700,'Attested historical Nahuan language; dates are broad language-period anchors.'),
(47,'dharug','Dharug','Pama-Nyungan','Yuin–Kuric · Sydney',0,1788,NULL,'Sydney-region Aboriginal language and one published candidate for the source of boomerang; the direct donor attribution remains disputed.'),
(48,'dharawal','Dharawal','Pama-Nyungan','Yuin–Kuric · South Coast',0,1788,NULL,'Aboriginal language south of Sydney and a published competing candidate for the source of boomerang; the direct donor attribution remains disputed.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(54,'taboo','taboo','taboo','/təˈbuː/','noun · adjective · verb','An English borrowing recorded in 1777 from Tongan tabu, now tapu, within an Oceanic family whose reconstructed form joins ritual restriction with sacredness.','Taboo did not begin as a merely secular synonym for “awkward” or “banned.” Its Tongan and wider Oceanic history holds prohibition, ritual restriction, and sacredness together.','reviewed'),
(55,'kayak','kayak','kayak','/ˈkaɪæk/','noun','An English borrowing recorded in 1757 from Inuit qayaq, the name of the Indigenous Arctic watercraft; the reviewed English source does not identify one specific Inuit language variety.','Kayak is not a modern recreation-industry coinage. English retained an Indigenous Arctic boat word, while the exact Inuit donor variety remains unresolved in the reviewed etymology.','reviewed'),
(56,'hammock','hammock','hammock','/ˈhæmək/','noun','The suspended-bed sense entered English through Spanish hamaca from Taíno hamaca; it is etymologically separate from the southern U.S. terrain word hammock.','The bed word is Indigenous Caribbean, carried through Spanish into English—not a naval English invention and not the same word as the Florida terrain term.','reviewed'),
(57,'avocado','avocado','avocado','/ˌævəˈkɑːdoʊ/','noun','An English reshaping of Spanish aguacate from Nahuatl āhuacatl, a word documented with both avocado and testicle senses.','The Nahuatl source really did have both “avocado” and “testicle” senses. That proves lexical polysemy; it does not by itself prove the fruit was originally named as an anatomical joke.','reviewed'),
(58,'boomerang','boomerang','boomerang','/ˈbuːməræŋ/','noun · verb','An Aboriginal Australian borrowing recorded in English by 1824. Dharug and Dharawal forms have been proposed, but the Australian National Dictionary Centre says the exact source language remains uncertain.','The exact Aboriginal donor language is not settled—and the returning toy has eclipsed the older fact that many hunting and fighting boomerangs do not return.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(138,'mw-taboo','Taboo — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/taboo',NULL,'historical_dictionary'),
(139,'pollex-tapu','TAPU [OC] — Prohibited, under ritual restriction, taboo','Simon J. Greenhill · Ross Clark · Bruce Biggs',2010,'Polynesian Lexicon Project Online · Max Planck Institute for Evolutionary Anthropology','https://pollex.eva.mpg.de/entry/tapu/',NULL,'comparative_lexicon'),
(140,'mw-kayak','Kayak — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/kayak',NULL,'historical_dictionary'),
(141,'oqaasileriffik-qajaq','Qajaq-terms','H. C. Petersen',1987,'Oqaasileriffik · Atuakkiorfik','https://oqaasileriffik.gl/en/qajaq-terms/',NULL,'institutional_lexicon'),
(142,'mw-hammock','Hammock — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hammock',NULL,'historical_dictionary'),
(143,'rae-hamaca','Hamaca — Diccionario de la lengua española','Real Academia Española · Asociación de Academias de la Lengua Española',2024,'RAE · ASALE','https://dle.rae.es/hamaca',NULL,'historical_dictionary'),
(144,'mw-avocado','Avocado — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/avocado',NULL,'historical_dictionary'),
(145,'rae-aguacate','Aguacate — Diccionario de la lengua española','Real Academia Española · Asociación de Academias de la Lengua Española',2024,'RAE · ASALE','https://dle.rae.es/aguacate',NULL,'historical_dictionary'),
(146,'mw-boomerang','Boomerang — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/boomerang',NULL,'historical_dictionary'),
(147,'andc-boomerang','Meanings and origins of Australian words and idioms — boomerang','Australian National Dictionary Centre',NULL,'Australian National University','https://history.cass.anu.edu.au/centres/andc/meanings-origins/all',NULL,'historical_dictionary'),
(148,'mccarthy-1961-boomerang','The Boomerang','Frederick D. McCarthy',1961,'The Australian Museum Magazine','https://museum-publications.australian.museum/media/dd/Uploads/Documents/30384/AMS368_V13-11_lowres.c5a1be6.pdf',NULL,'scholarly_article');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(346,54,1,1,'taboo','taboo','ritual-social-prohibition',NULL,'/təˈbuː/','attested','1777–today',1777,NULL,'a ritual or social prohibition; prohibited or set apart','Merriam-Webster reports English first known use in 1777 and identifies Tongan tabu as the source.'),
(347,54,41,2,'tabu / tapu','tapu','sacred-prohibited',NULL,NULL,'attested','Tongan',1700,NULL,'forbidden, prohibited, unlawful; historically also sacred or consecrated','The numeric date is a broad Tongan-language anchor. Merriam-Webster prints tabu; POLLEX records historical taboo and modern tapu forms and senses.'),
(348,54,42,3,'*tampu','tampu','ritual-restriction',NULL,NULL,'reconstructed','Proto-Oceanic reconstruction',-2000,-1000,'sacred, forbidden; under ritual restriction','POLLEX reports Proto-Oceanic *tampu. The dates are a deliberately broad reconstructed horizon.'),
(349,54,7,4,'UNKNOWN','unknown','taboo-deep-boundary',NULL,NULL,'boundary','before Proto-Oceanic *tampu',NULL,NULL,'No deeper ancestor is promoted beyond the reviewed comparative reconstruction.','The boundary marks the end of the reviewed evidence path, not a claim that future comparative work is impossible.'),
(350,55,1,1,'kayak','kayak','narrow-paddle-boat',NULL,'/ˈkaɪæk/','attested','1757–today',1757,NULL,'a narrow pointed boat propelled by a double-bladed paddle','Merriam-Webster reports English first known use in 1757 and gives Inuit qayaq as the source.'),
(351,55,43,2,'qayaq','qayaq','skin-boat',NULL,NULL,'attested','Inuit source form; variety unspecified',1700,NULL,'kayak; traditional narrow skin-covered watercraft','The donor label and spelling follow Merriam-Webster. The numeric date is a broad source-period anchor, not an attestation claim for one Inuit variety.'),
(352,55,7,3,'UNKNOWN','unknown','kayak-deep-boundary',NULL,NULL,'boundary','before the cited Inuit source form',NULL,NULL,'No deeper or more narrowly localized donor is promoted from the reviewed English etymology.','The trail stops because the cited source says only Inuit qayaq; official Greenlandic qajaq material is preserved as related evidence, not silently substituted as the direct donor.'),
(353,56,1,1,'hammock','hammock','suspended-bed',NULL,'/ˈhæmək/','attested','1626–today',1626,NULL,'a swinging bed or couch slung from supports at both ends','Merriam-Webster reports 1626 for the suspended-bed sense and distinguishes it from the older terrain homonym.'),
(354,56,44,2,'hamaca','hamaca','suspended-bed',NULL,NULL,'attested','Spanish',1200,NULL,'hammock; suspended bed or net','The date is a broad Spanish-language anchor. Both Merriam-Webster and the RAE identify this as the intermediary form.'),
(355,56,45,3,'hamaca','hamaca','indigenous-suspended-bed',NULL,NULL,'attested','Taíno source form',1400,1600,'hammock; suspended sleeping net','The RAE explicitly gives Taíno hamaca. The dates mark the broad historical language period rather than one directly inspected object.'),
(356,56,7,4,'UNKNOWN','unknown','hammock-deep-boundary',NULL,NULL,'boundary','before Taíno hamaca',NULL,NULL,'No securely reviewed deeper lexical ancestor is promoted.','The reviewed dictionaries stop at the Taíno form.'),
(357,57,1,1,'avocado','avocado','fruit',NULL,'/ˌævəˈkɑːdoʊ/','attested','1696–today',1696,NULL,'the fruit or tree of Persea americana','Merriam-Webster reports English first known use in 1696 and analyzes the word as a modification of Spanish aguacate.'),
(358,57,44,2,'aguacate','aguacate','fruit',NULL,NULL,'attested','Spanish',1200,NULL,'avocado fruit or tree','The date is a broad Spanish-language anchor. The RAE identifies Nahuatl ahuacatl as the source.'),
(359,57,46,3,'āhuacatl','ahuacatl','fruit-testicle-polysemy',NULL,NULL,'attested','Classical Nahuatl',1400,1700,'avocado; testicle','Merriam-Webster and the RAE both document the two senses. The historical dates are broad language-period anchors.'),
(360,57,7,4,'UNKNOWN','unknown','avocado-deep-boundary',NULL,NULL,'boundary','before Nahuatl āhuacatl',NULL,NULL,'No securely reviewed deeper lexical ancestor is promoted.','The trail stops at the documented Nahuatl polysemous form rather than inventing a derivational direction between its senses.'),
(361,58,1,1,'boomerang','boomerang','throwing-club',NULL,'/ˈbuːməræŋ/','attested','1824–today',1824,NULL,'an Aboriginal Australian throwing club; later, something that recoils on its originator','Merriam-Webster reports English first known use in 1824. ANU documents early spelling variation and later figurative development.'),
(362,58,47,2,'bumarin','bumarin','throwing-club-candidate',NULL,NULL,'attested','Dharug source candidate',1788,NULL,'missile or club; proposed source of boomerang','The date is a broad contact-era language anchor. Merriam-Webster assigns Dharug bumarin, while ANU says the exact source language remains uncertain.'),
(363,58,7,3,'UNKNOWN','unknown','boomerang-source-boundary',NULL,NULL,'boundary','before the disputed Sydney-region source candidates',NULL,NULL,'No uniquely established donor language or deeper ancestor is currently promoted.','A competing Dharawal candidate is preserved in the canonical graph; the linear dossier stops at the unresolved attribution.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(293,54,346,347,'borrowing','Tongan tabu was adapted to the English spelling taboo and English phonology.','A Polynesian field joining sacredness and prohibition became an English noun, adjective, and verb for prohibited things and acts.','Merriam-Webster Editors · POLLEX editors','established','Merriam-Webster explicitly identifies Tongan tabu; POLLEX documents the Tongan forms and semantic range.','English record by 1777.','reviewed'),
(294,54,347,348,'inheritance','POLLEX compares Tongan tapu with Proto-Oceanic *tampu; intermediate Polynesian developments are not over-specified here.','The sacred, prohibited, and ritual-restriction field remains continuous across the comparison.','POLLEX editors','probable','The modern form is attested while the Proto-Oceanic form is a comparative reconstruction.','Reconstructed Oceanic prehistory to attested Tongan.','reviewed'),
(295,54,348,349,'knowledge_boundary','No deeper form is promoted beyond the Proto-Oceanic reconstruction in the reviewed comparative entry.','The dossier reaches the current reviewed reconstruction and stops.','SET-U editorial boundary · POLLEX editors','boundary','This is an evidence boundary, not a universal claim that no deeper comparison could ever be proposed.',NULL,'reviewed'),
(296,55,350,351,'borrowing','Inuit qayaq was adapted to the English spelling kayak and English pronunciation.','The Indigenous Arctic watercraft name retained its central referent in English and later expanded to modern recreational craft.','Merriam-Webster Editors','established','Merriam-Webster explicitly gives Inuit qayaq, but does not identify one source variety.','English record by 1757.','reviewed'),
(297,55,351,352,'knowledge_boundary','The reviewed English etymology does not narrow Inuit qayaq to one language variety or supply a deeper reconstruction.','The path stops at the named Indigenous source rather than replacing broad evidence with a falsely precise donor.','SET-U editorial boundary · Merriam-Webster Editors','boundary','Official Greenlandic qajaq evidence is treated as a related form, not proof of the direct English route.',NULL,'reviewed'),
(298,56,353,354,'borrowing','Spanish hamaca was adapted to English hammock with final consonant and vowel changes reflected in English spelling and pronunciation.','The suspended sleeping net or bed retained its core function in English.','Merriam-Webster Editors','established','Merriam-Webster explicitly gives Spanish hamaca as the immediate source.','English suspended-bed sense recorded by 1626.','reviewed'),
(299,56,354,355,'borrowing','Spanish retained the Taíno form hamaca with little visible adaptation in the spelling reported by the RAE.','The Indigenous Caribbean suspended-bed referent continued in Spanish.','RAE · ASALE editors','established','The RAE explicitly derives Spanish hamaca from Taíno hamaca.','Colonial-era transfer into Spanish; no invented exact year.','reviewed'),
(300,56,355,356,'knowledge_boundary','No deeper form is promoted beyond Taíno hamaca in the reviewed dictionaries.','The lexical route reaches the Indigenous Caribbean source and stops.','SET-U editorial boundary · RAE · ASALE editors','boundary','The absence of a deeper promoted form is disclosed rather than filled with a speculative reconstruction.',NULL,'reviewed'),
(301,57,357,358,'borrowing','English avocado reshaped Spanish aguacate, changing both consonants and the ending in the adopted form.','The fruit and tree senses continued into English.','Merriam-Webster Editors','established','Merriam-Webster explicitly calls avocado a modification of Spanish aguacate.','English record by 1696.','reviewed'),
(302,57,358,359,'borrowing','Spanish aguacate adapted Nahuatl āhuacatl to Spanish phonology and spelling.','The avocado sense was carried into Spanish, while the source word’s testicle sense did not become the ordinary Spanish fruit meaning.','Merriam-Webster Editors · RAE · ASALE editors','established','Both dictionaries explicitly give Nahuatl āhuacatl or ahuacatl and document its avocado and testicle senses.','Colonial-era transfer into Spanish; no invented exact year.','reviewed'),
(303,57,359,360,'knowledge_boundary','No deeper form or direction of derivation between the two Nahuatl senses is promoted from the reviewed sources.','The dossier preserves the attested polysemy and stops before an unsupported origin story.','SET-U editorial boundary · Merriam-Webster Editors · RAE · ASALE editors','boundary','A source word having two senses does not by itself establish which sense motivated the other.',NULL,'reviewed'),
(304,58,361,362,'proposed_borrowing','English boomerang is compared with Dharug bumarin, with substantial early spelling variation in colonial records.','An Aboriginal Australian name for a missile or club became the international English object name and later a recoil metaphor.','Merriam-Webster Editors · Australian National Dictionary Centre','proposed','Merriam-Webster assigns Dharug; ANU says the exact Aboriginal source language is still uncertain.','English record by 1824; early colonial borrowing in the Sydney region.','reviewed'),
(305,58,362,363,'knowledge_boundary','The linear dossier stops because neither one donor language nor a deeper ancestor is securely established by the reviewed evidence.','The source attribution remains open rather than being flattened into one definitive lineage.','SET-U editorial boundary · Australian National Dictionary Centre','boundary','The canonical graph retains a competing Dharawal candidate and citations on both paths.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(293,138,'Word History — Etymology; First Known Use','supports','Identifies Tongan tabu and reports English use in 1777.'),
(293,139,'Tongan reflexes under OC.TAPU','supports','Documents Tongan taboo or tapu with forbidden, sacred, and consecrated senses.'),
(294,139,'Reconstruction and notes — POC *tampu; Tongan tapu','supports','Supplies the comparative Oceanic reconstruction and Tongan reflex.'),
(295,139,'OC.TAPU reconstruction horizon','context','Defines the reviewed reconstruction at which this dossier stops.'),
(296,140,'Word History — Etymology; First Known Use','supports','Identifies Inuit qayaq and reports English use in 1757.'),
(297,140,'Word History — Etymology','supports','The source label is broad Inuit and supplies no deeper reconstruction or specific donor variety.'),
(297,141,'Qajaq-terms — Greenlandic terminology','context','Confirms living Greenlandic qajaq evidence without establishing that Greenlandic was the immediate English donor.'),
(298,142,'Word History — noun (1), Etymology; First Known Use','supports','Identifies Spanish hamaca from Taíno and reports 1626 for the suspended-bed sense.'),
(299,143,'Definition — Del taíno hamaca','supports','Explicitly derives Spanish hamaca from Taíno hamaca.'),
(300,143,'Etymology line — Del taíno hamaca','context','Defines the reviewed Indigenous source at which this dossier stops.'),
(301,144,'Word History — Etymology; First Known Use','supports','Calls English avocado a modification of Spanish aguacate and reports 1696.'),
(302,144,'Word History — Etymology','supports','Gives Spanish aguacate from Nahuatl āhuacatl with avocado and testicle senses.'),
(302,145,'Definition — Del náhuatl ahuacatl','supports','Independently derives Spanish aguacate from Nahuatl and records both senses.'),
(303,144,'Word History — Nahuatl āhuacatl avocado, testicle','context','Supports the polysemy preserved at the evidence boundary without supplying a direction of semantic derivation.'),
(303,145,'Etymology line — ahuacatl fruit and testicle','context','Independently documents the two senses but no derivational direction.'),
(304,146,'Word History — Etymology; First Known Use','supports','Assigns Dharug bumarin and reports English use in 1824.'),
(304,147,'Boomerang section — exact language still uncertain','challenges','States that the borrowing is Aboriginal Australian but the exact source language remains uncertain.'),
(305,147,'Boomerang section — Sydney-region source uncertainty','supports','Directly supports stopping at an unresolved Sydney-region donor attribution.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(69,346,138,'1777',1777,'English lexicographic first-use record for taboo','First Known Use','1777','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1777 object or facsimile was identified or directly inspected in this tranche.'),
(70,350,140,'1757',1757,'English lexicographic first-use record for kayak','First Known Use','1757','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1757 object or facsimile was identified or directly inspected in this tranche.'),
(71,353,142,'1626',1626,'English lexicographic first-use record for the suspended-bed sense of hammock','First Known Use — noun (1)','1626','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1626 object or facsimile was identified or directly inspected in this tranche.'),
(72,357,144,'1696',1696,'English lexicographic first-use record for avocado','First Known Use','1696','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1696 object or facsimile was identified or directly inspected in this tranche.'),
(73,361,146,'1824',1824,'English lexicographic first-use record for boomerang','First Known Use','1824','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1824 object or facsimile was identified or directly inspected in this tranche.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(206,54,'tapu','Māori','Oceanic cognate meaning sacred, holy, or under ritual restriction',139),
(207,54,'kapu','Hawaiian','Oceanic cognate meaning taboo, sacred, holy, or consecrated',139),
(208,55,'qajaq','Greenlandic','living Inuit-language cognate documented throughout an official qajaq terminology resource',141),
(209,56,'hammock','English, terrain sense','look-alike homonym with a separate Germanic comparison; not the Taíno-derived bed word',142),
(210,57,'aguacate','Spanish','immediate donor form from Nahuatl āhuacatl',145),
(211,58,'kylie','Noongar','independent Aboriginal Australian word for a boomerang; a parallel object name, not a claimed cognate',147);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(216,54,1,'Proto-Oceanic linguistic horizon','reconstructed *tampu','POLLEX reconstructs the sacred or prohibited form at the Oceanic level.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstruction is comparative and is not localized to one artifact, settlement, or exact year.'),
(217,54,2,'Tonga','Tongan tabu or tapu','The English route is traced to Tongan, where historical and modern forms carry prohibited and sacred senses.',NULL,NULL,'regional',NULL,NULL,'unresolved','The reviewed sources do not warrant one numeric first-use date for the Tongan form.'),
(218,54,3,'Global English','1777 English record','Merriam-Webster reports English first known use in 1777.',NULL,NULL,'global',1777,1777,'exact','The year is a lexicographic first-use report, not proof that no earlier spoken or written token exists.'),
(219,55,1,'Inuit Arctic language region','Inuit qayaq','Merriam-Webster identifies an Inuit source but does not narrow the donor to one variety; Greenlandic qajaq is retained as related official evidence.',NULL,NULL,'broad',NULL,NULL,'unresolved','No one geographic point or borrowing date is asserted from the broad source label.'),
(220,55,2,'Global English','1757 English record','Merriam-Webster reports English first known use in 1757.',NULL,NULL,'global',1757,1757,'exact','The year is a lexicographic first-use report, not proof that no earlier spoken or written token exists.'),
(221,56,1,'Taíno-speaking Caribbean','Taíno hamaca','The RAE identifies the Indigenous Caribbean source form.',NULL,NULL,'regional',NULL,NULL,'unresolved','No exact surviving witness date is asserted for the Taíno form.'),
(222,56,2,'Spanish-speaking Atlantic world','Spanish hamaca','Spanish transmitted the Taíno word into the European lexical route that reached English.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reviewed dictionaries establish the intermediary language but not one exact transfer date or port.'),
(223,56,3,'Global English','1626 suspended-bed record','Merriam-Webster reports 1626 for the English suspended-bed sense.',NULL,NULL,'global',1626,1626,'exact','The year is a lexicographic first-use report for noun sense 1, not the distinct terrain homonym.'),
(224,57,1,'Nahuatl-speaking central Mexico','Nahuatl āhuacatl','The RAE and Merriam-Webster document the Nahuatl source with avocado and testicle senses.',NULL,NULL,'regional',NULL,NULL,'unresolved','No exact first-attestation year or single place is asserted from the dictionary entries.'),
(225,57,2,'Spanish-speaking Atlantic world','Spanish aguacate','Spanish adapted and transmitted the Nahuatl fruit word.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reviewed dictionaries establish the intermediary but not one exact transfer date or port.'),
(226,57,3,'Global English','1696 English record','Merriam-Webster reports English first known use in 1696.',NULL,NULL,'global',1696,1696,'exact','The year is a lexicographic first-use report, not proof that no earlier token exists.'),
(227,58,1,'Sydney region, Australia','early colonial Aboriginal borrowing','ANU places the uncertain source in or just south of the Sydney region; Dharug and Dharawal candidates remain visible.',NULL,NULL,'regional',NULL,NULL,'unresolved','The exact source language, spelling, and transfer event remain unresolved.'),
(228,58,2,'International English','1824 English record and later global spread','Merriam-Webster reports English use by 1824; ANU documents later international and figurative development.',NULL,NULL,'global',1824,1824,'exact','The exact year is the lexicographic first-use report; international spread and figurative senses are later and not reduced to that year.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(216,139,'Reconstruction and notes — POC *tampu','supports','Supplies the reconstructed Oceanic horizon.'),
(217,138,'Word History — Tongan tabu','supports','Identifies the Tongan source of English taboo.'),
(217,139,'Tongan reflexes under OC.TAPU','supports','Documents the Tongan forms and semantic field.'),
(218,138,'First Known Use','supports','Reports 1777 as the English first-known-use year.'),
(219,140,'Word History — Inuit qayaq','supports','Names the broad Inuit source region without a specific variety.'),
(219,141,'Qajaq-terms','context','Provides official Greenlandic qajaq evidence as a related Inuit-language form.'),
(220,140,'First Known Use','supports','Reports 1757 as the English first-known-use year.'),
(221,143,'Definition — Del taíno hamaca','supports','Identifies the Taíno source form.'),
(222,142,'Word History — Spanish hamaca, from Taino','supports','Identifies Spanish as the immediate intermediary.'),
(223,142,'First Known Use — noun (1)','supports','Reports 1626 for the suspended-bed sense.'),
(224,144,'Word History — Nahuatl āhuacatl','supports','Identifies the Nahuatl source and both documented senses.'),
(224,145,'Definition — Del náhuatl ahuacatl','supports','Independently identifies the Nahuatl source.'),
(225,144,'Word History — modification of Spanish aguacate','supports','Identifies the Spanish intermediary.'),
(226,144,'First Known Use','supports','Reports 1696 as the English first-known-use year.'),
(227,147,'Boomerang section — source in or just south of Sydney; exact language uncertain','supports','Locates the borrowing region while preserving uncertainty.'),
(227,146,'Word History — Dharug bumarin','context','Supplies the Dharug candidate retained in the dossier.'),
(228,146,'First Known Use','supports','Reports 1824 as the English first-known-use year.'),
(228,147,'Boomerang section — international and figurative development','context','Documents the word’s movement into International English and later figurative uses.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(95,54,'Did taboo originally mean only “forbidden”?','No. The Tongan reflexes and wider Oceanic reconstruction carry a semantic field that includes prohibited, under ritual restriction, sacred, holy, and consecrated.','established','Merriam-Webster supplies the Tongan borrowing; POLLEX supplies the comparative semantic range and Proto-Oceanic reconstruction.','resolved','The graph and truth ledger retain sacredness and prohibition together instead of back-projecting only the modern casual English sense.'),
(96,55,'Can the English donor be narrowed to one Inuit language?','Not from the reviewed English etymology. It gives only Inuit qayaq. Official Greenlandic qajaq evidence proves a related living form, not that Greenlandic was uniquely the immediate donor.','probable','Merriam-Webster uses the broad label Inuit; Oqaasileriffik documents Greenlandic qajaq terminology without tracing the English borrowing event.','open','The donor node is explicitly labeled variety unspecified, and narrower forms remain related evidence.'),
(97,56,'Are the suspended-bed and terrain senses of hammock one word?','No in the reviewed dictionary. The suspended bed comes from Spanish hamaca from Taíno; the southern U.S. terrain sense is tied to earlier English forms and a Germanic comparison.','established','Merriam-Webster presents the two nouns under separate etymologies and dates; the RAE independently confirms Taíno hamaca for Spanish.','resolved','Only the suspended-bed lineage is traced through Taíno in this dossier.'),
(98,57,'Does avocado literally prove that the fruit was named “testicle”?','The source word āhuacatl is documented with both avocado and testicle senses. The reviewed dictionary entries do not establish which sense came first or that one was a deliberate anatomical naming of the other.','established','Merriam-Webster and the RAE independently report the same Nahuatl polysemy and the Spanish transmission route.','resolved','SET-U states the two-source lexical fact and labels the stronger naming story as an unsupported inference.'),
(99,58,'Which Aboriginal language supplied boomerang?','Dharug bumarin and a Dharawal bou-mar-rang form are published candidates, but the Australian National Dictionary Centre says the exact source language remains uncertain.','proposed','Merriam-Webster assigns Dharug; the Australian Museum gives a Turuwal or Dharawal form; ANU explicitly keeps the language unresolved.','open','The canonical graph contains both proposed routes and the dossier ends at an uncertainty boundary.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(95,138,'Word History — Tongan tabu','supports','Establishes the direct Tongan source.'),
(95,139,'OC.TAPU description and Tongan reflexes','supports','Documents prohibited, ritual, sacred, and consecrated senses.'),
(96,140,'Word History — Inuit qayaq','supports','The broad language label supports retaining donor-variety uncertainty.'),
(96,141,'Qajaq-terms','context','Documents Greenlandic qajaq without claiming the English borrowing route.'),
(97,142,'Word History — noun (1) and noun (2)','supports','Gives separate etymologies for the suspended-bed and terrain homonyms.'),
(97,143,'Definition — Del taíno hamaca','supports','Independently confirms the Taíno ancestry of Spanish hamaca.'),
(98,144,'Word History — Nahuatl āhuacatl avocado, testicle','supports','Documents both senses and the Spanish route without a derivational-direction claim.'),
(98,145,'Definition — ahuacatl fruit and testicle','supports','Independently documents the same polysemy.'),
(99,147,'Boomerang section — exact language still uncertain','supports','Explicitly states the unresolved source-language question.'),
(99,146,'Word History — Dharug bumarin','challenges','Presents a definite Dharug assignment that the ANU account treats more cautiously.'),
(99,148,'p. 343 — Turuwal bou-mar-ang; returning and non-returning types','context','Supplies the published Dharawal or Turuwal candidate form and documents the object’s returning and non-returning types.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=CASE
  WHEN `rank`<=104 THEN `rank`-100
  WHEN `rank`<=107 THEN `rank`-99
  WHEN `rank`<=110 THEN `rank`-98
  WHEN `rank`<=113 THEN `rank`-97
  WHEN `rank`<=125 THEN `rank`-96
  ELSE `rank`-95
END;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(39,57,5,'avocado','The viral “it means testicle” story overclaims a real fact.','Nahuatl āhuacatl is documented with both avocado and testicle senses. The dictionaries establish polysemy and transmission through Spanish—not which sense named the other.','A',100,'Two institutional dictionaries support the lexical fact; the refusal to invent semantic direction is the rigorous reveal.'),
(40,58,9,'boomerang','Its most famous behavior is not universal—and even its exact donor language is unsettled.','Many hunting and fighting boomerangs do not return. Dharug and Dharawal sources have been proposed, while ANU keeps the exact language unresolved.','A',99,'The object myth and the etymological uncertainty are independently documented and carried together.'),
(41,54,13,'taboo','It did not begin as merely “forbidden.”','Tongan and reconstructed Oceanic evidence joins prohibition and ritual restriction with sacredness and consecration.','A',98,'Merriam-Webster secures the borrowing route; POLLEX secures the wider comparative semantic field.'),
(42,56,17,'hammock','The bed word is Indigenous Caribbean—and its English look-alike is unrelated.','Hammock came through Spanish hamaca from Taíno hamaca. The southern U.S. terrain noun has a separate etymology.','A',97,'Merriam-Webster separates the homonyms and the RAE independently confirms Taíno hamaca.'),
(43,55,30,'kayak','The recreation word is a retained Indigenous Arctic boat name.','English kayak comes from Inuit qayaq. The broad source label is real evidence; assigning one exact Inuit donor variety would go beyond it.','A-',92,'The borrowing is explicit, and the uncertainty is disclosed rather than repaired with a guess.');
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(39,144,'Word History — Spanish aguacate from Nahuatl āhuacatl avocado, testicle','supports','Documents the route and both source-word senses.'),
(39,145,'Definition — ahuacatl fruit and testicle','supports','Independently documents the polysemy without asserting derivational direction.'),
(40,147,'Boomerang section — exact source language still uncertain','supports','Documents the unresolved language attribution.'),
(40,148,'p. 343 — hunting and fighting boomerangs do not return','supports','Directly rejects the all-boomerangs-return misconception.'),
(40,146,'Word History — Dharug bumarin','context','Supplies one published candidate route.'),
(41,138,'Word History — Tongan tabu','supports','Establishes the direct borrowing route.'),
(41,139,'OC.TAPU description and Tongan reflexes','supports','Documents the sacred, prohibited, and ritual-restriction semantic field.'),
(42,142,'Word History — noun (1) and noun (2)','supports','Documents the Taíno-via-Spanish route and the separate terrain homonym.'),
(42,143,'Definition — Del taíno hamaca','supports','Independently confirms the Indigenous Caribbean source.'),
(43,140,'Word History — Inuit qayaq; First Known Use','supports','Documents the Indigenous source and 1757 English record.'),
(43,141,'Qajaq-terms','context','Confirms a living Greenlandic qajaq form without over-narrowing the English donor.');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id IN (54,55,56,57,58)
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:48:bou-mar-rang:attested:sense:throwing-club-candidate',48,'bou-mar-rang','bou-mar-rang','throwing-club-candidate',NULL,NULL,'attested','Dharawal source candidate',1788,NULL,'returning boomerang; proposed source candidate','Graph-only competing candidate reported by Frederick D. McCarthy as Turuwal bou-mar-ang. The date is a contact-era language anchor, not a direct first-attestation claim.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.entry_id IN (54,55,56,57,58);
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id IN (54,55,56,57,58);
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id IN (54,55,56,57,58);
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id IN (54,55,56,57,58);
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:boomerang:attested:sense:throwing-club'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:48:bou-mar-rang:attested:sense:throwing-club-candidate'),'competing_borrowing','English boomerang is compared with the recorded Turuwal or Dharawal form bou-mar-ang; early colonial spellings vary substantially.','An Aboriginal Australian returning-club name is proposed as the source of the English object word.','Frederick D. McCarthy · Australian National Dictionary Centre','proposed','McCarthy assigns this form to Turuwal or Dharawal, while ANU says the exact source language remains uncertain.','Early colonial borrowing in or south of the Sydney region.','reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:boomerang:attested:sense:throwing-club' AND p.canonical_key='node:48:bou-mar-rang:attested:sense:throwing-club-candidate' AND e.relation_type='competing_borrowing'),148,'p. 343 — Turuwal bou-mar-ang','supports','Publishes the competing Dharawal or Turuwal candidate form.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:boomerang:attested:sense:throwing-club' AND p.canonical_key='node:48:bou-mar-rang:attested:sense:throwing-club-candidate' AND e.relation_type='competing_borrowing'),147,'Boomerang section — exact language still uncertain','challenges','Prevents the candidate edge from being upgraded into a definitive donor claim.');
