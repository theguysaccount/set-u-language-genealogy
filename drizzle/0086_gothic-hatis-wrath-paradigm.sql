-- Promote Gothic hatis as a complete noun dossier. Project Wulfila reports
-- fifteen corpus tokens across hatis, hatiza, and hatize. One Codex Argenteus
-- token, hatiza in Luke 3:7, is directly inspected, the other fourteen remain
-- explicitly source-reported. The dossier separates biblical wrath semantics,
-- synchronic a-stem inflection, inherited i-stem history, and the disputed PIE
-- comparison instead of compressing them into one neat gloss.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(182,'hatis','hatis','hatis','/ˈha.tis/','Gothic neuter noun','A Gothic noun conventionally glossed hate, hatred, anger, or wrath. Project Wulfila reports fifteen corpus tokens in three surface forms: hatis, hatiza, and hatize. Its fourteen biblical tokens translate Greek wrath vocabulary rather than supplying a clean mirror of modern personal dislike: Streitberg maps the family chiefly to orgē, assigns Galatians 5:20 to thumos, and leaves Ephesians 4:31 unresolved because both Greek nouns stand together. The visible Gothic paradigm is also historical evidence: Project Wulfila treats hatis as a neuter a-stem, while Fulk analyzes it as an inherited i-stem transferred to the a-stems.','The Gothic noun related to English hate survives chiefly as wrath—including the wrath to come and the wrath of God. Its fifteen corpus tokens preserve not one tidy meaning or paradigm, but a semantic translation problem and a remodeled declension.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(467,'wulfila-hatis','Lemma hatis — Gothic dictionary and fifteen-token occurrence inventory','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/lemma/1302.html',NULL,'research_database'),
(468,'wulfila-luke-3-7-hatiza','Gothic Bible word analysis — Luke 3:7, hatiza','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/03/03/07.html',NULL,'research_database'),
(469,'codex-argenteus-129r','Codex Argenteus facsimile 157 — folio 129r, Luke 3:5–9','Uppsala University Library · Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/157lc3f.html',NULL,'digitized_primary_source'),
(470,'streitberg-hatis','Die gotische Bibel — Wörterbuch entry hatis','Wilhelm Streitberg',1910,'Carl Winter · Project Wulfila digital edition','https://www.wulfila.be/lib/streitberg/1910/pdf/streitberg1910_1.pdf',NULL,'historical_dictionary'),
(471,'fulk-2018-hatis','A Comparative Grammar of the Early Germanic Languages — Gothic hatis','R. D. Fulk',2018,'John Benjamins Publishing Company · Library of Congress','https://tile.loc.gov/storage-services/master/gdc/gdcebookspublic/20/18/03/18/62/2018031862/2018031862.pdf','10.1075/sigl.3','historical_grammar'),
(472,'ut-gothic-hatis-derivation','Gothic Online, Lesson 8 — hatis and denominative hatizōn','Todd B. Krause · Jonathan Slocum',2026,'Linguistics Research Center · University of Texas at Austin','https://lrc.la.utexas.edu/eieol/gotol/80',NULL,'scholarly_grammar'),
(473,'koch-celto-germanic-hatred','Celto-Germanic — HATRED *kad-','John T. Koch',2020,'University of Wales Centre for Advanced Welsh and Celtic Studies','https://www.wales.ac.uk/sites/uw/files/2024-11/Celto-Germanic2020.pdf',NULL,'research_monograph'),
(474,'wulfila-ephesians-2-3-hatis','Gothic Bible word analysis — Ephesians 2:3, hatize and hatis','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/08/02/03.html',NULL,'research_database'),
(475,'wulfila-ephesians-4-31-hatis','Gothic Bible word analysis — Ephesians 4:31, hatis','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/08/04/31.html',NULL,'research_database'),
(476,'wulfila-ephesians-5-6-hatis','Gothic Bible word analysis — Ephesians 5:6, hatis','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/08/05/06.html',NULL,'research_database'),
(477,'wulfila-galatians-5-20-hatiza','Gothic Bible word analysis — Galatians 5:20, hatiza','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/09/05/20.html',NULL,'research_database'),
(478,'wulfila-colossians-3-6-hatis','Gothic Bible word analysis — Colossians 3:6, hatis','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/11/03/06.html',NULL,'research_database'),
(479,'wulfila-colossians-3-8-hatis','Gothic Bible word analysis — Colossians 3:8, hatis','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/11/03/08.html',NULL,'research_database'),
(480,'wulfila-first-thessalonians-2-16-hatis','Gothic Bible word analysis — 1 Thessalonians 2:16, hatis','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/12/02/16.html',NULL,'research_database'),
(481,'wulfila-first-thessalonians-5-9-hatis','Gothic Bible word analysis — 1 Thessalonians 5:9, hatis','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/12/05/09.html',NULL,'research_database'),
(482,'wulfila-skeireins-8-5-hatiza','Skeireins word analysis — 8:5, hatiza','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/19/08/05.html',NULL,'research_database');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1177,182,34,1,'hatis','hatis','wrath-hatred-gothic-noun','hatis','/ˈha.tis/','attested','Gothic textual tradition',300,600,'hatred, anger, or wrath','Project Wulfila reports fifteen corpus tokens: nine hatis, five hatiza, and one hatize. The lemma is attested through those inflected forms; the exact corpus inventory is not a claim about all historical Gothic usage.'),
(1178,182,5,2,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','Fulk compares Gothic hatis with i-stem Old English hete and Old Saxon heti while describing Gothic transfer to the a-stems. Koch publishes *hataz ~ *hatiz-; the atlas reuses its established cross-source *hatiz- representation.'),
(1179,182,6,3,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. The Gothic wrath contexts do not recover one original prehistoric emotional scene.'),
(1180,182,6,4,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','The analytical base remains probable rather than a directly attested word, and the proposed semantic members remain disputed.'),
(1181,182,7,5,'UNKNOWN','unknown','hatis-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before wrath, hatred, grief, care, anxiety, persecution, or strong negative emotion is promoted as the one certain prehistoric origin.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(996,182,1177,1178,'inheritance','Proto-Germanic *hatiz- is represented by Gothic hatis word-finally and by the stem hatiz- before a vowel-initial ending, visible in hatiza. Gothic then regularizes the inherited i-stem into neuter a-stem inflection.','The inherited anger or hostility noun becomes the Gothic translation choice for Greek wrath vocabulary. That contextual specialization does not prove the noun lacked hatred senses elsewhere.','R. D. Fulk · John T. Koch · Project Wulfila editors','probable','The Gothic forms and paradigm alternation are attested; the Proto-Germanic parent and the direction of prehistoric remodeling are comparative analyses.','Proto-Germanic reconstruction into the fourth-century Gothic translation tradition and surviving sixth-century manuscripts.','reviewed'),
(997,182,1178,1179,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(998,182,1179,1180,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(999,182,1180,1181,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail ends before the surviving Gothic wrath tokens are reverse-engineered into a universal origin for hate, grief, care, pursuit, or persecution.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends at Germanic; the displayed PIE route remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(996,467,'Lemma hatis, neuter a-stem classification and fifteen-token occurrence inventory','supports','Supplies the synchronic corpus lemma, inflection class, and complete current occurrence count.'),
(996,470,'p. 55, hatis (z), full case-and-context inventory','supports','Publishes the hatis, hatiza, and hatize paradigm and its Greek translation equivalents.'),
(996,471,'p. 80, §5.2: hatis transferred to the a-stems; compare i-stem Old English hete and Old Saxon heti','supports','Identifies Gothic a-stem remodeling of an inherited i-stem comparison.'),
(996,473,'p. 101, HATRED *kad-: Proto-Germanic *hataz ~ *hatiz- and Gothic hatis','supports','Publishes the Germanic reconstruction and branch comparison.'),
(997,436,'Noun etymology and semantic note','supports','Publishes the qualified PIE comparison and its lack of semantic transparency.'),
(997,439,'Non-Germanic comparison and conclusion','challenges','Questions whether the proposed members form one secure semantic family.'),
(997,473,'p. 101, Proto-Indo-European root and Germanic, Celtic, Italic, Iranian, and Greek comparisons','context','Publishes a wider affirmative comparison that remains visibly qualified by competing scholarship.'),
(998,436,'Reconstructed formation and base','supports','Publishes the two proposed PIE analytical levels.'),
(999,436,'Semantic-transparency note','supports','Marks the deep comparison as nontransparent.'),
(999,439,'Qualified conclusion','supports','Supports stopping rather than inventing a single prehistoric emotional or action scene.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(248,1177,469,'early 6th century',510,'Codex Argenteus, Luke 3:7','DG 1, fol. 129r; facsimile 157; Luke 3:7; line 10 ending “anawairþin hatiza”','þliuhan faura þamma anawairþin hatiza','established','manuscript','Uppsala University Library','DG 1, fol. 129r','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/157lc3f.jpg',1,'The facsimile pixels were directly inspected against Project Wulfila’s verse transcription and the historical line locator. The object verifies written hatiza in the wrath-to-come clause; it does not by itself settle the case analysis, establish a first Gothic use, or prove that hatis was the only Gothic wrath noun.'),
(249,1177,474,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A corpus record, Ephesians 2:3','Ephesians 2:3 [A], barna hatize','barna hatize','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila reports the token as unambiguous but not directly verified in this review. The record preserves the A reading and does not promote the automated genitive-plural analysis over the historical-grammar treatment.'),
(250,1177,474,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B corpus record, Ephesians 2:3','Ephesians 2:3 [B], barna hatis','barna hatis','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila reports the token as morphosyntactically ambiguous and not directly verified here. Historical grammars treat it as a genitive problem; the record does not relabel the visible hatis as a nominative simply because the form is syncretic.'),
(251,1177,475,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A corpus record, Ephesians 4:31','Ephesians 4:31 [A], alla baitrei jah hatis jah þwairhei','alla baitrei jah hatis jah þwairhei','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token, not a directly inspected manuscript object. The adjacent Greek thumos and orgē make the exact lexical alignment uncertain.'),
(252,1177,475,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B corpus record, Ephesians 4:31','Ephesians 4:31 [B], alla baitrei jah hatis jah þwairhei','alla baitrei jah hatis jah þwairhei','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token, not a directly inspected manuscript object. The duplicate verse witness is counted separately because Project Wulfila inventories A and B independently.'),
(253,1177,476,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B corpus record, Ephesians 5:6','Ephesians 5:6 [B], qimiþ hatis gudis','qimiþ hatis gudis','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token aligned with Greek orgē in a divine-wrath clause. The underlying palimpsest was not directly inspected in this review.'),
(254,1177,477,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A corpus record, Galatians 5:20','Galatians 5:20 [A], aljan, hatiza, jiukos','aljan, hatiza, jiukos','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token aligned with Greek plural thumoi. The context supports nominative plural, but the manuscript object was not directly inspected here.'),
(255,1177,477,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B corpus record, Galatians 5:20','Galatians 5:20 [B], aljan, hatiza, jiukos','aljan, hatiza, jiukos','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token aligned with Greek plural thumoi. A and B are separate corpus witnesses, not two independent historical meanings.'),
(256,1177,478,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A corpus record, Colossians 3:6','Colossians 3:6 [A], qimiþ hatis gudis','qimiþ hatis gudis','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token aligned with Greek orgē in the wrath-of-God clause. The manuscript object was not directly inspected here.'),
(257,1177,478,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B corpus record, Colossians 3:6','Colossians 3:6 [B], qimiþ hatis gudis','qimiþ hatis gudis','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token aligned with Greek orgē. The duplicate A and B readings are retained as distinct witnesses.'),
(258,1177,479,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A corpus record, Colossians 3:8','Colossians 3:8 [A], hatis, þwairhein, unselein','hatis, þwairhein, unselein','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token in an anger-and-wrath list. The manuscript object was not directly inspected in this review.'),
(259,1177,479,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B corpus record, Colossians 3:8','Colossians 3:8 [B], hatis, þwairhein, unselein','hatis, þwairhein, unselein','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token in an anger-and-wrath list. A and B remain separate evidence records.'),
(260,1177,480,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B corpus record, 1 Thessalonians 2:16','1 Thessalonians 2:16 [B], hatis','hatis','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila reports the token in the current lemma inventory; the exact manuscript line was not directly inspected in this review.'),
(261,1177,481,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B corpus record, 1 Thessalonians 5:9','1 Thessalonians 5:9 [B], ni satida uns guþ in hatis','ni satida uns guþ in hatis','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus token aligned with Greek orgē in the appointed-to-wrath clause. The object and morphosyntactic case were not independently verified here.'),
(262,1177,482,'Gothic manuscript corpus, date not normalized',NULL,'Skeireins Lat5750 corpus record, 8:5','Skeireins 8:5 [Lat5750], miþ hatiza andhofun','miþ hatiza andhofun','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported commentary token analyzed in context as dative singular. The underlying palimpsest or folio was not directly inspected in this review.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(25,248,'2026-08-27','SET-U editorial review','visual_facsimile','hatiza','þliuhan faura þamma anawairþin hatiza','Codex Argenteus DG 1, fol. 129r, facsimile 157, Luke 3:7, line 10 ending “anawairþin hatiza”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/157lc3f.jpg','Verifies the manuscript glyph sequence transcribed hatiza when the page is aligned with the verse transcription and line locator. It does not independently determine the case ending, prove the normalized lemma hatis was written elsewhere, establish a first Gothic use, or recover the noun’s prehistoric meaning.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(693,182,'hatiza','Gothic','the vowel-initial stem form used as dative singular and nominative plural in the surviving corpus',470),
(694,182,'hatize','Gothic','the Ephesians 2:3 A genitive form whose exact paradigm analysis remains disputed',474),
(695,182,'hatjan','Gothic','a class-I weak hate verb derived from the consonantal hatis stem in historical grammar',464),
(696,182,'hatizōn','Gothic','a class-II denominative verb built on hatiz- and glossed be angry',472),
(697,182,'hatan','Gothic','the parallel class-III hate verb kept distinct from the noun-derived formations',465),
(698,182,'hete','Old English','the inherited i-stem noun cognate that becomes a full Old English dossier',471),
(699,182,'hate','English','the modern English noun and verb family reached through the Old English branch',436),
(700,182,'hatr','Old Norse','a Germanic noun cognate meaning hatred or persecution',473),
(701,182,'hata','Old Norse','a Germanic hate verb in the wider family',447),
(702,182,'hāt','Old Frisian','a West Germanic noun cognate meaning hate',473),
(703,182,'hatia','Old Frisian','a West Germanic cognate verb meaning hate',473),
(704,182,'heti','Old Saxon','the inherited i-stem noun compared directly with Gothic hatis',471),
(705,182,'hatan','Old Saxon','a West Germanic hate verb listed in the wider comparison',473),
(706,182,'haz','Old High German','the High German hate noun ancestral to modern Hass',473),
(707,182,'hazzōn','Old High German','a Germanic class-II hate verb in the wider family',447),
(708,182,'Hass','German','the modern German hate noun continuing Old High German haz',444),
(709,182,'cais','Middle Irish','a proposed Celtic cognate with the remarkable paired gloss love and hatred',473),
(710,182,'cas','Old Welsh','a proposed Celtic cognate meaning hatred or enmity',473),
(711,182,'κῆδος','Ancient Greek','a proposed deeper comparison meaning care, anxiety, or pain rather than modern hate',473);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(707,182,1,'Proto-Germanic linguistic horizon','*hatiz-','The Gothic noun, i-stem Old English hete and Old Saxon heti, and the wider Germanic cognate set support a comparative noun base without licensing one archaeological point or directly written Proto-Germanic token.',NULL,NULL,'uncertain',-500,200,'range','A conventional comparative-linguistic interval, not an attested word date.'),
(708,182,2,'Fourth-century Gothic translation tradition','hatis in Gothic biblical vocabulary','Fourteen of the fifteen reported tokens belong to the Gothic Bible tradition. Their Greek alignment reveals translation choices but does not date the first use of the noun in speech.',NULL,NULL,'broad',300,399,'century','The century dates the translation tradition, not the exact moment the noun entered Gothic or acquired any particular sense.'),
(709,182,3,'Ravenna','early-sixth-century Codex Argenteus witness','The directly inspected Luke 3:7 hatiza occurs in the purple-vellum Gospel codex probably copied in Ravenna. The remaining source-reported tokens survive in other Gothic witnesses and are not silently assigned to this object.',44418100,12203000,'regional',500,525,'range','The interval operationalizes the official early-sixth-century dating; 510 is only a representative attestation year.'),
(710,182,4,'Werden, Ruhr district','sixteenth-century Codex Argenteus custody','The directly inspected codex was known in the sixteenth century at a Benedictine monastery in Werden. This is the route of one evidence object, not proof that spoken Gothic traveled with it.',51388000,7004000,'approximate',1500,1599,'century','The official history supplies a century-level custody horizon rather than exact arrival and departure years.'),
(711,182,5,'Prague','imperial custody by 1600 to 1648','By 1600 the Codex Argenteus was in Prague in the hands of Emperor Rudolph II; Swedish forces took it when they stormed the city in 1648.',50075500,14437800,'regional',1600,1648,'range','The bounds describe documented manuscript custody, not lexical use.'),
(712,182,6,'Stockholm','Swedish royal custody after 1648','The codex reached Stockholm as spoil of war and entered Queen Christina’s library before passing to Isaac Vossius.',59329300,18068600,'regional',1648,1654,'range','The upper bound uses the queen’s abdication as the transition horizon described by the official history.'),
(713,182,7,'Holland custody','Isaac Vossius and acquisition by De la Gardie','Vossius took the manuscript to Holland; Magnus Gabriel De la Gardie later bought it and presented it to Uppsala University.',NULL,NULL,'broad',1654,1669,'range','The official history names Holland but does not reduce this custody stage to one city or exact transaction year.'),
(714,182,8,'Uppsala University Library','custody since 1669','De la Gardie presented the codex to Uppsala University in 1669. The modern facsimile exposes folio 129r, while Project Wulfila links the wider Gothic corpus inventory.',59858600,17638900,'regional',1669,2026,'range','This stage traces evidence preservation and access, not continued Gothic speech.'),
(715,182,9,'Knowledge boundary','beyond secure Germanic reconstruction','The proposed Indo-European and Celtic comparisons remain visible, but no single hate, wrath, grief, care, pain, or anxiety origin is promoted.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(707,471,'p. 80, hatis compared with i-stem Old English hete and Old Saxon heti','supports','Supplies the cross-branch inherited-stem comparison.'),
(707,473,'p. 101, Proto-Germanic *hataz ~ *hatiz- and branch forms','supports','Publishes the comparative Germanic reconstruction.'),
(708,129,'The four gospels in the Gothic language','supports','Dates the translation tradition to the fourth century and distinguishes it from surviving codices.'),
(708,467,'Fourteen biblical tokens plus one Skeireins token','supports','Locates the noun across the surviving textual corpus.'),
(709,129,'The four gospels in the Gothic language','supports','Places probable Codex Argenteus production in early-sixth-century Ravenna.'),
(709,468,'Luke 3:7, hatiza and linked facsimile 157','supports','Locates the inspected token in the surviving Gospel text.'),
(709,469,'Facsimile 157, folio 129r, line 10','supports','Supplies the directly inspected manuscript page.'),
(709,466,'Codex Argenteus edition metadata and manuscript description','context','Confirms the manuscript identity, repository, and current scholarly-edition context.'),
(710,129,'Codex argenteus’ journey, Werden paragraph','supports','Documents sixteenth-century custody in Werden.'),
(711,129,'Codex argenteus’ journey, Prague paragraph','supports','Documents imperial custody by 1600 and the 1648 transfer.'),
(712,129,'Codex argenteus’ journey, Stockholm paragraph','supports','Documents arrival as Swedish spoil and Queen Christina’s custody.'),
(713,129,'Codex argenteus’ journey, Holland paragraph','supports','Documents Vossius taking the codex to Holland and De la Gardie’s acquisition.'),
(714,129,'Codex argenteus’ journey, 1669 Uppsala presentation','supports','Documents the manuscript’s presentation to Uppsala University.'),
(714,467,'Current hatis lemma and occurrence inventory','context','Connects the preserved object to the broader corpus research interface.'),
(715,436,'Semantic-transparency note','supports','Marks the deeper comparison as semantically opaque.'),
(715,439,'Qualified conclusion and comparison discussion','supports','Supports stopping beyond the secure Germanic family.'),
(715,473,'p. 101, wider Celtic, Italic, Iranian, and Greek comparisons','context','Keeps the affirmative deeper proposal visible without converting it into certainty.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(391,182,'Does Gothic hatis simply mean the modern emotion hate?','No. Hatred remains a legitimate dictionary gloss, but the surviving biblical tokens do different translation work: Streitberg maps the noun chiefly to Greek orgē, maps Galatians 5:20 to thumos, and flags Ephesians 4:31 because both Greek wrath nouns are adjacent.','established','The complete lemma inventory, verse alignments, and Streitberg’s case-and-equivalent list distinguish corpus semantics from a one-word modern gloss.','resolved','The dossier leads with hatred, anger, or wrath and exposes each contextual alignment instead of selecting one timeless English equivalent.'),
(392,182,'Does the corpus contain exactly fifteen historical uses of hatis?','Project Wulfila currently reports exactly fifteen surviving corpus tokens assigned to the lemma. That is an inventory claim, not a total for spoken Gothic, lost manuscripts, spelling variants outside the corpus, or every historical use.','established','The lemma page lists all fifteen tokens and labels them unverified but unambiguous; the modern edition documents the fragmentary Gothic source base.','resolved','Every count is explicitly bounded to the current reported corpus.'),
(393,182,'Was hatis an inherited i-stem or a Gothic neuter a-stem?','Both descriptions operate at different historical levels. Project Wulfila classifies the surviving Gothic paradigm as a neuter a-stem; Fulk treats hatis as an inherited i-stem transferred to the a-stems and compares Old English hete and Old Saxon heti.','probable','Synchronic corpus morphology and diachronic comparative grammar answer different questions rather than contradicting each other.','resolved','The root trail states inherited i-stem and Gothic a-stem remodeling in the same cited edge.'),
(394,182,'How should Ephesians 2:3 hatize and hatis be parsed?','The witnesses disagree in form and the analytical layers disagree in labeling. Project Wulfila’s current morphology lists A hatize as genitive plural and B hatis as nominative or accusative singular; Braune calls B hatis a consonantal genitive beside A hatizē, while Streitberg’s later teaching glossary calls genitive hatis erroneous.','probable','The A and B readings, automated morphology, historical grammar, and pedagogical grammar do not reduce to one uncontested paradigm explanation.','open',NULL),
(395,182,'Does hatis underlie Gothic hatjan and hatizōn?','Historical grammar derives class-I hatjan from the consonantal stem of hatis, and the University of Texas derivational table builds class-II hatizōn “be angry” directly on hatiz-. The separate class-III hatan remains a wider paradigm and reconstruction problem rather than a proved direct daughter of this noun.','probable','Braune and the derivational grammar independently identify two noun-based formations while the corpus and Orel keep hatan analytically distinct.','resolved','The relatives and rabbit hole expose two documented denominatives and label the third verb separately.'),
(396,182,'Does Galatians 5:20 prove hatis always meant explosive anger?','No single verse can establish an invariant meaning. Galatians aligns plural hatiza with Greek thumoi, while other biblical contexts use orgē and Ephesians 4:31 does not permit a clean one-to-one choice. The exact semantic center of ordinary Gothic remains underdetermined by translation texts.','probable','The Greek-Gothic alignment demonstrates contextual translation, not a complete monolingual semantic field.','open',NULL),
(397,182,'Do Celtic cais and cas make the deep Indo-European route secure?','Not by themselves. Koch publishes Proto-Celtic *katsi- and a wider *kad- comparison, but Middle Irish cais itself carries both love and hatred, and Liberman challenges whether several non-Germanic comparisons form one transparent family.','proposed','One modern comparative corpus supports the cross-branch set while a separate etymological analysis disputes its semantic unity.','open',NULL),
(398,182,'Do the surviving token counts measure spoken Gothic frequency?','No. Fifteen reported corpus tokens measure a bounded textual survival, heavily shaped by biblical translation and manuscript loss. They cannot estimate how often Goths used the noun, its competing synonyms, or its everyday senses.','established','Project Wulfila supplies the occurrence inventory; the Gothic edition documents the limited manuscript source base.','resolved','The interface calls them corpus tokens and never historical uses or a speech-frequency sample.'),
(399,182,'Does the Codex Argenteus custody route map the spread of hatis?','No. It maps the custody of the directly inspected evidence object. The manuscript traveled through Werden, Prague, Stockholm, Holland, and Uppsala long after Gothic ceased to be a living vernacular in those places; the other hatis tokens survive in separate witnesses.','established','Uppsala University documents the custody route, while Project Wulfila identifies multiple manuscript sigla in the noun inventory.','resolved','Every post-Ravenna journey note explicitly labels manuscript custody rather than lexical diffusion.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(391,470,'p. 55, hatis: thumos in Galatians 5:20; otherwise orgē; Ephesians 4:31 doubtful','supports','Publishes the contextual Greek-equivalent distribution rather than a single timeless gloss.'),
(391,468,'Luke 3:7, anawairþin hatiza aligned with Greek orgē and translated wrath to come','supports','Anchors the directly inspected token in a future-wrath clause.'),
(391,478,'Colossians 3:6, hatis gudis aligned with Greek orgē tou theou','supports','Documents the divine-wrath context.'),
(392,467,'Complete occurrence inventory: fifteen tokens under hatis','supports','Defines the exact bounded corpus count.'),
(392,466,'Gothic source and manuscript inventory','context','Documents the limited survival base that prevents a total historical-use claim.'),
(393,467,'Neuter a-stem classification','supports','Supplies the synchronic Gothic paradigm label.'),
(393,471,'p. 80, hatis transferred to the a-stems; compare i-stem hete and heti','supports','Supplies the diachronic i-stem analysis.'),
(394,474,'Ephesians 2:3 A hatize and B hatis with current morphological analyses','supports','Publishes the two witness readings and the analyzer’s different case outputs.'),
(394,464,'§94 note 5: B hatis as a consonantal genitive beside A hatizē','supports','Publishes the historical-grammar treatment of the B form.'),
(394,470,'p. 55, genitive hatis B beside -ize A; teaching glossary marks genitive hatis erroneous','challenges','Preserves a later pedagogical judgment that prevents false closure.'),
(395,464,'Glossary p. 170, hatjan from the consonantal stem of hatis','supports','Publishes the class-I noun-to-verb derivation.'),
(395,472,'Lesson 8, second weak conjugation table: hatis, stem hatiz-, hatizōn','supports','Publishes the class-II denominative formation and meaning be angry.'),
(395,447,'Separate *xatjanan and *xatēnan ~ *xatōjanan entries','context','Keeps the wider class-I and class-III reconstruction distinction visible.'),
(396,477,'Galatians 5:20 A and B hatiza aligned with Greek thumoi','supports','Shows the plural token in the wrath-list context.'),
(396,470,'p. 55, thumos only at Galatians 5:20; otherwise orgē with Ephesians 4:31 doubtful','supports','Demonstrates why one verse cannot define the entire semantic field.'),
(397,473,'p. 101, Proto-Celtic *katsi-, Middle Irish cais, Old Welsh cas, and PIE root comparison','supports','Publishes the affirmative Celtic and Indo-European comparison.'),
(397,439,'Non-Germanic comparison and semantic conclusion','challenges','Questions whether the deeper comparisons belong to one secure semantic family.'),
(398,467,'Fifteen-token occurrence inventory','supports','Defines what the count actually measures.'),
(398,466,'Gothic source and manuscript inventory','context','Documents the fragmentary textual record.'),
(399,129,'Codex argenteus’ journey','supports','Documents the custody route from Werden to Uppsala.'),
(399,467,'Occurrence inventory across CA, A, B, and Lat5750 witnesses','supports','Shows that the dossier’s tokens do not all belong to the inspected codex.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(182,182,2094,'hatis','Gothic hatis—the noun related to English hate—survives chiefly as wrath, including the wrath to come and the wrath of God.','Project Wulfila reports fifteen tokens in hatis, hatiza, and hatize. Fourteen are biblical; Streitberg maps the family chiefly to Greek orgē, gives Galatians 5:20 thumos, and flags Ephesians 4:31 because both stand together. Codex Argenteus folio 129r directly preserves hatiza in “the wrath to come.” Even the paradigm resists simplification: synchronic neuter a-stem, historically an i-stem remodeled into it.','A',100,'The claim is bounded to the current surviving corpus and its translation alignments. It does not deny hatred senses, infer ordinary spoken frequency, or present the deeper Indo-European proposal as settled.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id,ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,evidence_grade ASC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT ranked.new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(182,467,'Lemma hatis and complete fifteen-token occurrence inventory','supports','Bounds the claim to the current corpus and its three written forms.'),
(182,468,'Luke 3:7, hatiza aligned with Greek orgē and wrath to come','supports','Supplies the directly inspected token’s verse context and morphological possibilities.'),
(182,469,'Codex Argenteus folio 129r, facsimile 157, line 10','supports','Provides the directly inspected manuscript object.'),
(182,470,'p. 55, Greek-equivalent and case distribution for hatis','supports','Publishes the chiefly orgē pattern, the Galatians thumos exception, and Ephesians ambiguity.'),
(182,477,'Galatians 5:20 A and B hatiza aligned with Greek thumoi','supports','Documents the plural wrath token in both witnesses.'),
(182,478,'Colossians 3:6 A and B hatis gudis aligned with Greek orgē tou theou','supports','Documents the explicit wrath-of-God context.'),
(182,471,'p. 80, hatis transferred from i-stem history to Gothic a-stem inflection','context','Supports the remodeled-paradigm portion of the reveal.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(138,182,181,'ONE HATE NOUN, THREE GOTHIC VERB SYSTEMS','The consonantal stem of hatis supports class-I hatjan “hate” and class-II hatizōn “be angry,” while Gothic also has class-III hatan. Project Wulfila and Orel keep the paradigms analytically distinct; Braune sometimes treats their shapes as fluctuation. One English gloss hides a noun, two documented denominatives, and an unresolved wider verb system.',99,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1177 AND 1181
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1178,1179,1180) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1177 THEN 'Attested through fifteen reported corpus tokens; only Luke 3:7 hatiza is directly inspected.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1177 AND 1181;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 996 AND 999;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 996 AND 999;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 996 AND 999;
