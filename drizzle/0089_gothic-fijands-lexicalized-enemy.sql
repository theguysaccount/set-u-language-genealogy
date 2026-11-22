-- Promote Gothic fijands from its complete current Project Wulfila inventory.
-- Three candidates are verified, two further candidates are lexically
-- unambiguous, and 21 are shared with the live fijan participle. All five
-- noun-only tokens were directly inspected in Codex Argenteus facsimiles.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(185,'fijands','fijands','fijands','/ˈfi.jands/','Gothic masculine nd-stem common noun','A Gothic masculine nd-stem noun conventionally glossed enemy. Project Wulfila currently exposes 26 candidates: three verified noun assignments, two further noun-only assignments, and 21 surface forms also listed under the living verb fijan. Ayora Estevan explains the collision diachronically: Proto-Germanic had already lexicalized the present-participial *fi(j)and- as enemy, while Gothic retained productive one-who-hates participles beside the noun. The five noun-only candidates use fiand, fijands, fijande, and fijandis; all five were inspected in Codex Argenteus facsimiles.','Enemy is a fossilized hater, but lexicalization was already old: 21 Gothic tokens still cannot tell us whether the scribe wrote the inherited noun enemy or the productive participle one who hates.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(502,'wulfila-matthew-5-44-fijands','Gothic Bible word analysis — Matthew 5:44, fijands','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/01/05/44.html',NULL,'research_database'),
(503,'wulfila-matthew-10-36-fijands','Gothic Bible word analysis — Matthew 10:36, fijands','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/01/10/36.html',NULL,'research_database'),
(504,'wulfila-luke-1-74-fijande','Gothic Bible word analysis — Luke 1:74, fijande','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/03/01/74.html',NULL,'research_database'),
(505,'wulfila-luke-10-19-fijandis','Gothic Bible word analysis — Luke 10:19, fijandis','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/03/10/19.html',NULL,'research_database'),
(506,'codex-argenteus-27r','Codex Argenteus facsimile 31 — folio 27r, Matthew 10:34–40','Uppsala University Library · Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/031mt10f.html',NULL,'digitized_primary_source'),
(507,'codex-argenteus-164v','Codex Argenteus facsimile 228 — folio 164v, Luke 10:17–21','Uppsala University Library · Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/228lc10f.html',NULL,'digitized_primary_source'),
(508,'bosworth-toller-feond','An Anglo-Saxon Dictionary Online — feónd','Joseph Bosworth · Thomas Northcote Toller · Christ Sean · Ondřej Tichy',2014,'Faculty of Arts, Charles University','https://bosworthtoller.com/010365',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1192,185,34,1,'fijands','fijands','enemy-lexicalized-nd-noun','fijands','/ˈfi.jands/','attested','Gothic textual tradition',300,600,'enemy; masculine nd-stem agent noun','Project Wulfila inventories 26 candidates in seven surface forms: fijands fifteen, fijand five, fijandam two, and one each of fiand, fijande, fijandis, and fiands. Only five candidates are noun-only; 21 remain shared with the verb inventory.'),
(1193,185,5,2,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a lexicalized enemy formation from an active present participle','Ayora Estevan argues that Old Norse, Faroese, Old English, Old Frisian, Old Dutch, and Old High German parallels require lexicalization before Gothic. The asterisk marks a reconstruction, not an attested Proto-Germanic spelling.'),
(1194,185,5,3,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a reconstructed verb meaning hate or be hostile toward','The lexicalized agent formation is analyzed from this Germanic verb. Gothic fijan preserves the corresponding live verb, but this noun dossier does not collapse the two lexemes.'),
(1195,185,6,4,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base associated with harm, blame, suffering, or hate','The deeper comparison is proposed. It does not recover one directly spoken word, one original emotion, or one transparent path from harm to enemy.'),
(1196,185,7,5,'UNKNOWN','unknown','fijands-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before hater, enemy, harm, blame, suffering, hostility, or evil spirit is promoted as the one certain prehistoric starting point.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1008,185,1192,1193,'inheritance','Gothic fijands continues the Germanic nd-stem formation with regular branch-level adaptation and Gothic inflection.','The already lexicalized agent formation functions as the ordinary noun enemy while remaining formally close to a live participle.','Guus Kroonen · Daniel Ayora Estevan','probable','Cross-Germanic enemy nouns support inheritance; individual Gothic tokens can remain ambiguous with the participle.','Proto-Germanic reconstruction into the Gothic textual tradition.','reviewed'),
(1009,185,1193,1194,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1010,185,1194,1195,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1011,185,1195,1196,'knowledge_boundary','No older form is promoted beyond the proposed *peh₁- comparison.','The trail ends before enemy or evil spirit is reverse-engineered into one universal prehistoric concept.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1008,489,'Lemma fijands, masculine nd-stem and complete 26-candidate inventory','supports','Supplies the Gothic noun, inflectional class, written forms, and bounded corpus statuses.'),
(1008,492,'p. 47 and note 24, Gothic fi(j)ands from Proto-Germanic *fi(j)and-','supports','Publishes the inherited lexicalized enemy formation and comparative parallels.'),
(1008,491,'p. 140, *fi(j)and- and Germanic descendants','supports','Independently publishes the reconstructed formation and descendant set.'),
(1009,492,'pp. 47–49, lexicalized enemy noun beside productive present participles','supports','Publishes both the diachronic derivation and the surviving Gothic category overlap.'),
(1009,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the Germanic word-formation relationship.'),
(1010,491,'p. 140, deeper etymological analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used here with reduced confidence.'),
(1011,491,'p. 140, deepest published comparison used in this dossier','supports','Supports stopping after the qualified PIE proposal rather than inventing an earlier node.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(307,1192,460,'early 6th century',510,'Codex Argenteus, Matthew 5:43','DG 1, fol. 3v; facsimile 6; Matthew 5:43; line containing “jah fiais fiand þeinana”','jah fiais fiand þeinana','established','manuscript','Uppsala University Library','DG 1, fol. 3v','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/006mt5f.jpg',1,'The facsimile was directly inspected against Project Wulfila’s verse and token analysis. It verifies fiand as the accusative-singular enemy noun immediately after the separate verb fiais; it does not establish first use or spoken frequency.'),
(308,1192,460,'early 6th century',510,'Codex Argenteus, Matthew 5:44','DG 1, fol. 3v; facsimile 6; Matthew 5:44; line containing “frijoþ fijands izwarans”','frijoþ fijands izwarans','established','manuscript','Uppsala University Library','DG 1, fol. 3v','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/006mt5f.jpg',1,'The facsimile was directly inspected against Project Wulfila’s verse and token analysis. It verifies accusative-plural fijands in the love-your-enemies clause; it does not make every identical surface form unambiguously nominal.'),
(309,1192,506,'early 6th century',510,'Codex Argenteus, Matthew 10:36','DG 1, fol. 27r; facsimile 31; Matthew 10:36; line containing “jah fijands mans innakundai is”','jah fijands mans innakundai is','established','manuscript','Uppsala University Library','DG 1, fol. 27r','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/031mt10f.jpg',1,'The facsimile was directly inspected against Project Wulfila’s transcription. It verifies nominative-plural fijands in the household-enemies clause; it does not date lexicalization or the first Gothic use.'),
(310,1192,484,'early 6th century',510,'Codex Argenteus, Luke 1:74','DG 1, fol. 123r; facsimile 145; Luke 1:74; line containing “us handau fijande unsaraize”','unagein us handau fijande unsaraize','established','manuscript','Uppsala University Library','DG 1, fol. 123r','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/145lc1f.jpg',1,'The facsimile was directly inspected against Project Wulfila’s transcription. It verifies genitive-plural fijande in the enemies clause; it is separate from the ambiguous fijandam three verses earlier on the same folio.'),
(311,1192,507,'early 6th century',510,'Codex Argenteus, Luke 10:19','DG 1, fol. 164v; facsimile 228; Luke 10:19; line containing “ana allai mahtai fijandis”','jah ana allai mahtai fijandis','established','manuscript','Uppsala University Library','DG 1, fol. 164v','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/228lc10f.jpg',1,'The facsimile was directly inspected against Project Wulfila’s transcription. It verifies genitive-singular fijandis in the power-of-the-enemy clause; it does not resolve the category of other fijand- tokens.'),
(312,1192,489,'early 6th-century candidate, source-reported',510,'Codex Argenteus, Luke 1:71','Luke 1:71 [CA], token fijandam','fijandam','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists this token under both fijands and fijan and marks it lexically and morphosyntactically ambiguous. Its directly inspected surface form already exists as witness 286 under the overlapping verb dossier; this row does not double-count that object inspection.'),
(313,1192,500,'early 6th-century candidate, source-reported',510,'Codex Argenteus, Luke 6:22','Luke 6:22 [CA], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both noun and verb analyses. The accusative singular surface form alone does not choose enemy or one who hates.'),
(314,1192,489,'early 6th-century candidate, source-reported',510,'Codex Argenteus, Luke 6:27','Luke 6:27 [CA], token fijandam','fijandam','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists this token under both lemmas. Its directly inspected surface form already exists as witness 288 under the overlapping verb dossier; this row preserves the noun candidate without claiming a second object inspection.'),
(315,1192,489,'early 6th-century candidate, source-reported',510,'Codex Argenteus, Luke 6:35','Luke 6:35 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The nominative-plural or participial surface form remains explicitly ambiguous in Project Wulfila.'),
(316,1192,489,'early 6th-century candidate, source-reported',510,'Codex Argenteus, Luke 19:27','Luke 19:27 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The surface form is shared by the noun and productive participle inventories; no forced lemma assignment is made.'),
(317,1192,489,'early 6th-century candidate, source-reported',510,'Codex Argenteus, Luke 19:43','Luke 19:43 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila marks the token lexically and morphosyntactically ambiguous.'),
(318,1192,489,'early 6th-century candidate, source-reported',510,'Codex Argenteus, Luke 20:43','Luke 20:43 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila retains both the enemy noun and hating-participle analyses.'),
(319,1192,489,'early 6th-century candidate, source-reported',510,'Codex Argenteus, Mark 12:36','Mark 12:36 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The token is a corpus candidate for both lemmas rather than a secure noun count.'),
(320,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Romans 8:7','Romans 8:7 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The palimpsest token is source-reported and explicitly ambiguous; its object was not directly inspected in this review.'),
(321,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Romans 12:20','Romans 12:20 [A], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila preserves the A witness separately and marks its noun-versus-participle analysis unresolved.'),
(322,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Carolinus, Romans 12:20','Romans 12:20 [Car], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The Carolinus witness duplicates the passage but remains a distinct manuscript token candidate, not a second historical usage event.'),
(323,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, 1 Corinthians 15:25','1 Corinthians 15:25 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both lemma analyses and no direct object inspection is claimed.'),
(324,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, 1 Corinthians 15:26','1 Corinthians 15:26 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The adjacent verse is a separate token candidate but not evidence that every identical form is nominal.'),
(325,1192,499,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Galatians 4:16','Galatians 4:16 [A], token fijands','fijands','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Ayora Estevan analyzes the context as the lexical noun enemy, while Project Wulfila keeps the automated token status formally ambiguous; both layers remain visible.'),
(326,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Philippians 3:18','Philippians 3:18 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The A witness is one ambiguous manuscript candidate.'),
(327,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B, Philippians 3:18','Philippians 3:18 [B], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The B witness is retained separately without converting manuscript duplication into usage frequency.'),
(328,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Colossians 1:21','Colossians 1:21 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both noun and participle analyses.'),
(329,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B, Colossians 1:21','Colossians 1:21 [B], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The second manuscript witness remains an ambiguous token candidate.'),
(330,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, 2 Thessalonians 3:15','2 Thessalonians 3:15 [A], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The A witness cannot be assigned by its surface form alone.'),
(331,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B, 2 Thessalonians 3:15','2 Thessalonians 3:15 [B], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The B witness is a second manuscript candidate, not a second securely distinct lexical event.'),
(332,1192,489,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus D, Nehemiah 6:16','Nehemiah 6:16 [D], token fiands','fiands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The j-less form remains categorically ambiguous and the palimpsest object was not directly inspected.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(32,307,'2026-08-27','SET-U editorial review','visual_facsimile','fiand','jah fiais fiand þeinana','Codex Argenteus DG 1, fol. 3v, facsimile 6, Matthew 5:43, line containing “jah fiais fiand þeinana”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/006mt5f.jpg','Verifies the manuscript sequence transcribed fiand when the image is aligned with the verse transcription. The adjacent fiais is a separate verb token, so this occurrence establishes a noun object; it does not establish first use or spoken frequency.','reviewed'),
(33,308,'2026-08-27','SET-U editorial review','visual_facsimile','fijands','frijoþ fijands izwarans','Codex Argenteus DG 1, fol. 3v, facsimile 6, Matthew 5:44, line containing “frijoþ fijands izwarans”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/006mt5f.jpg','Verifies accusative-plural fijands in the love-your-enemies clause. The object establishes this token and context, not a universal noun reading for every matching surface form.','reviewed'),
(34,309,'2026-08-27','SET-U editorial review','visual_facsimile','fijands','jah fijands mans innakundai is','Codex Argenteus DG 1, fol. 27r, facsimile 31, Matthew 10:36, line containing “jah fijands mans innakundai is”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/031mt10f.jpg','Verifies nominative-plural fijands in the household-enemies clause. It does not date the noun’s lexicalization or prove how every ambiguous token was parsed by Gothic readers.','reviewed'),
(35,310,'2026-08-27','SET-U editorial review','visual_facsimile','fijande','us handau fijande unsaraize','Codex Argenteus DG 1, fol. 123r, facsimile 145, Luke 1:74, line containing “us handau fijande unsaraize”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/145lc1f.jpg','Verifies genitive-plural fijande in the enemies clause. It is a noun-only candidate in the current corpus analysis, but the page does not establish the earliest Gothic use.','reviewed'),
(36,311,'2026-08-27','SET-U editorial review','visual_facsimile','fijandis','ana allai mahtai fijandis','Codex Argenteus DG 1, fol. 164v, facsimile 228, Luke 10:19, line containing “ana allai mahtai fijandis”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/228lc10f.jpg','Verifies genitive-singular fijandis in the power-of-the-enemy clause. It does not resolve the lexical category of the 21 shared candidates.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(740,185,'fijan','Gothic','the live class-III hate verb whose productive participle overlaps 21 noun candidates',487),
(741,185,'fian','Gothic','the normalized j-less variant of fijan that helps explain fiand and fiands spellings',488),
(742,185,'hatan','Gothic','a separate hate verb that exchanges enemies and those hating with fijan in two Luke passages',483),
(743,185,'fēond','Old English','a West Germanic enemy noun from the same lexicalized agent formation',508),
(744,185,'fiend','English','the modern English continuation whose history includes enemy, foe, devil, and hostile-person senses',508),
(745,185,'vijand','Dutch','a West Germanic enemy noun listed in the comparative historical entry',508),
(746,185,'Feind','German','a West Germanic enemy noun listed in the comparative historical entry',508),
(747,185,'fiand','Old Frisian','an Old Frisian enemy form continuing the lexicalized Germanic formation',492),
(748,185,'fīunt','Old Dutch','an Old Dutch enemy form continuing the lexicalized Germanic formation',492),
(749,185,'fīant','Old High German','an Old High German enemy form continuing the lexicalized Germanic formation',492),
(750,185,'fjándi','Old Norse','a North Germanic enemy noun continuing the lexicalized participial formation',508),
(751,185,'fíggindi','Faroese','a North Germanic enemy noun cited as evidence for pre-Gothic lexicalization',492),
(752,185,'fiende','Danish','a North Germanic enemy noun listed in the comparative historical entry',508),
(753,185,'fiende','Swedish','a North Germanic enemy noun listed in the comparative historical entry',508);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(735,185,1,'Proto-Indo-European linguistic horizon','proposed *peh₁- comparison','A deeper harm, blame, suffering, or hate comparison is published, but the formal route and original semantic center remain proposed.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional linguistic interval for a proposed reconstruction, not a dated inscription or single community point.'),
(736,185,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- hate verb','The reconstructed verb supplies the base for the active-participial enemy formation.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval, not an attested spelling date.'),
(737,185,3,'Proto-Germanic linguistic horizon','lexicalized *fi(j)and- enemy formation','Cross-branch enemy nouns show that one who hates had lexicalized as enemy before the surviving Gothic record.',NULL,NULL,'uncertain',-500,200,'range','The interval does not identify an exact lexicalization event or speaker.'),
(738,185,4,'Fourth-century Gothic translation tradition','fijands noun beside productive fijan participles','Gothic retained both the inherited enemy noun and the live one-who-hates participle; 21 surviving candidates remain shared between them.',NULL,NULL,'broad',300,399,'century','The century dates the translation tradition rather than each manuscript or the birth of the noun.'),
(739,185,5,'Ravenna','early-sixth-century Codex Argenteus witnesses','Five noun-only candidates were directly inspected on folios 3v, 27r, 123r, and 164v. The codex is evidence for written Gothic, not a speech-frequency sample.',44418100,12203000,'regional',500,525,'range','The interval operationalizes the official early-sixth-century dating; 510 is a representative witness year, not a precise copying date.'),
(740,185,6,'Werden, Ruhr district','sixteenth-century Codex Argenteus custody','The directly inspected codex was known at a Benedictine monastery in Werden. This is evidence-object custody, not word diffusion.',51388000,7004000,'approximate',1500,1599,'century','The official history supplies a century-level custody horizon.'),
(741,185,7,'Prague','imperial custody by 1600 to 1648','The codex was in Emperor Rudolph II’s Prague collection by 1600 and was taken by Swedish forces in 1648.',50075500,14437800,'regional',1600,1648,'range','The dates describe manuscript custody rather than Gothic speech.'),
(742,185,8,'Stockholm','Swedish royal custody after 1648','The codex entered Queen Christina’s library before passing to Isaac Vossius.',59329300,18068600,'regional',1648,1654,'range','The upper bound uses the queen’s abdication as the custody transition horizon.'),
(743,185,9,'Holland custody','Isaac Vossius and acquisition by De la Gardie','Vossius took the manuscript to Holland; Magnus Gabriel De la Gardie later acquired it.',NULL,NULL,'broad',1654,1669,'range','The official history names Holland without reducing the stage to one city or exact transaction date.'),
(744,185,10,'Uppsala University Library','custody since 1669','De la Gardie presented the codex to Uppsala University. Modern facsimiles expose five noun-only tokens while Project Wulfila preserves the complete inventory.',59858600,17638900,'regional',1669,2026,'range','This stage traces evidence preservation and access, not continued Gothic use.'),
(745,185,11,'Knowledge boundary','beyond the proposed Indo-European comparison','No single hater, enemy, devil, harm, blame, suffering, or hostility origin is promoted beyond the qualified route.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(735,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route.'),
(736,491,'p. 140, *fi(j)ēn-','supports','Publishes the reconstructed Germanic verb.'),
(737,492,'p. 47 and note 24, pre-Gothic lexicalization and Germanic parallels','supports','Argues that enemy had lexicalized before Gothic.'),
(737,491,'p. 140, *fi(j)and- and descendants','supports','Independently publishes the reconstructed formation.'),
(738,129,'The four gospels in the Gothic language','supports','Dates the Gothic translation tradition to the fourth century.'),
(738,489,'Complete 26-candidate fijands inventory','supports','Exposes the five noun-only and 21 shared candidates.'),
(738,487,'Complete 42-candidate fijan inventory','context','Confirms that the same 21 candidates also occur under the verb.'),
(739,129,'The four gospels in the Gothic language','supports','Places probable Codex Argenteus production in early-sixth-century Ravenna.'),
(739,460,'Facsimile 6, fol. 3v','supports','Supplies the inspected fiand and fijands noun-only tokens.'),
(739,506,'Facsimile 31, fol. 27r','supports','Supplies the inspected Matthew 10:36 fijands token.'),
(739,484,'Facsimile 145, fol. 123r','supports','Supplies the inspected Luke 1:74 fijande token.'),
(739,507,'Facsimile 228, fol. 164v','supports','Supplies the inspected Luke 10:19 fijandis token.'),
(740,129,'Codex argenteus’ journey, Werden paragraph','supports','Documents sixteenth-century custody in Werden.'),
(741,129,'Codex argenteus’ journey, Prague paragraph','supports','Documents imperial custody and the 1648 transfer.'),
(742,129,'Codex argenteus’ journey, Stockholm paragraph','supports','Documents Swedish royal custody.'),
(743,129,'Codex argenteus’ journey, Holland paragraph','supports','Documents Vossius and De la Gardie’s custody stage.'),
(744,129,'Codex argenteus’ journey, 1669 Uppsala presentation','supports','Documents presentation to Uppsala University.'),
(744,489,'Current corpus research interface','context','Connects the preserved objects to the full modern noun inventory.'),
(745,491,'p. 140, deepest published comparison used here','supports','Supports stopping after the qualified reconstruction.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(422,185,'Does the surviving corpus contain 26 secure noun tokens?','No. Project Wulfila exposes 26 candidates under fijands: three verified, two further noun-only but unverified, and 21 explicitly shared with the fijan verb inventory.','established','The two lemma inventories publish the exact partition and overlap.','resolved','The site labels 26 as candidates, five as noun-only, and 21 as unresolved overlap.'),
(423,185,'Is fijands just an ordinary Gothic present participle?','No single category covers the evidence. Ayora Estevan derives the enemy noun from a Proto-Germanic lexicalized participle while also showing that Gothic retained productive present-participial uses of the same formation.','probable','Diachronic word formation and synchronic syntax require both a noun and a live participle.','open',NULL),
(424,185,'Did one who hates lexicalize as enemy only inside Gothic?','No. Old Norse, Faroese, Old English, Old Frisian, Old Dutch, and Old High German enemy nouns require a pre-Gothic Germanic formation.','probable','Cross-branch descendants support Proto-Germanic lexicalization.','resolved','The graph places *fi(j)and- at the Proto-Germanic level and Gothic fijands below it.'),
(425,185,'Can the nd-ending alone distinguish enemy from one who hates?','No. The noun and productive participle share surface inflection. Case, complementation, agreement, and context resolve some passages, but Project Wulfila leaves 21 candidates lexically and morphosyntactically ambiguous.','probable','Ayora Estevan’s diagnostics resolve selected tokens without manufacturing certainty for the remainder.','open',NULL),
(426,185,'Was fijands still transparently one who hates to Gothic speakers?','The formal relationship was available because the verb and productive participle survived, but inherited lexicalization means ordinary noun use need not have been compositionally reanalyzed on every occasion.','proposed','The corpus shows coexistence, not speaker introspection or one uniform degree of transparency.','open',NULL),
(427,185,'Did Gothic fijands mean devil or evil spirit?','The reviewed Gothic noun inventory centers on enemy and regularly translates Greek echthros. Old English feónd developed or preserved devil senses, but that collateral history cannot be projected backward onto every Gothic occurrence.','established','Project Wulfila and Streitberg gloss the Gothic noun as enemy; Bosworth–Toller documents the Old English enemy, foe, and devil range.','resolved','The graph separates cognate branches and their semantic histories.'),
(428,185,'Is English fiend descended from Gothic fijands?','No. English fiend continues Old English feónd; Gothic fijands is a collateral Germanic cousin from the same reconstructed formation, not the donor of the English word.','established','Bosworth–Toller supplies the Old and Middle English history, while Ayora Estevan supplies the common Germanic formation.','resolved','The graph connects both branches at *fi(j)and- rather than drawing a Gothic-to-English arrow.'),
(429,185,'Does *fi(j)and- securely descend from *peh₁-?','Only through the proposed deeper analysis of its Germanic verb base. The lexicalized participle-to-verb relation is stronger than the Indo-European route, whose intermediate morphology and semantic unity remain reconstructive.','proposed','Kroonen publishes the deeper comparison with the same uncertainty inherited by this noun trail.','open',NULL),
(430,185,'Do 26 candidates measure spoken Gothic frequency?','No. They measure a bounded fragmentary textual corpus with biblical translation effects, ambiguous lemma assignments, and duplicate manuscript witnesses.','established','Project Wulfila’s statuses and the Gothic manuscript inventory define what the count can measure.','resolved','The interface never calls the total all historical uses or a speech-frequency sample.'),
(431,185,'Does the Codex Argenteus route map the geographic spread of fijands?','No. Werden, Prague, Stockholm, Holland, and Uppsala trace custody of evidence objects long after Gothic ceased to be a living vernacular in those places.','established','Uppsala University documents manuscript custody; the five inspected noun-only tokens belong to one codex.','resolved','Post-Ravenna journey stages are labeled object custody rather than lexical diffusion.'),
(432,185,'Are A, B, and Carolinus witnesses separate lexical usage events?','They are separate surviving manuscript tokens, but duplicate witnesses of one passage cannot be counted as independent acts of historical usage.','established','The corpus inventory identifies sigla separately while verse identity exposes duplication.','resolved','Attestations preserve each physical witness and explicitly reject frequency inference.'),
(433,185,'Does the Luke lexical swap resolve the remaining 21 noun-participle candidates?','No. Luke 1:71 and 6:27 show that fijan and hatan can exchange the work of enemies and those hating, but those two contextual alignments do not determine every other fijand- token.','probable','The paired verses demonstrate translation flexibility and preserve, rather than erase, the wider category problem.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(422,489,'Occurrence inventory: three verified, two unambiguous, 21 ambiguous','supports','Defines the 26 noun candidates and status partition.'),
(422,487,'Twenty-one shared candidates under fijan','supports','Confirms the exact intersection with the verb inventory.'),
(422,501,'Matthew 5:43, fiand accusative singular','supports','Documents the first verified noun-only token beside verbal fiais.'),
(422,502,'Matthew 5:44, fijands accusative plural','supports','Documents the second verified noun-only token.'),
(422,503,'Matthew 10:36, fijands nominative plural','supports','Documents the third verified noun-only token.'),
(422,504,'Luke 1:74, fijande genitive plural','supports','Documents the first further unambiguous noun-only token.'),
(422,505,'Luke 10:19, fijandis genitive singular','supports','Documents the second further unambiguous noun-only token.'),
(423,492,'pp. 47–49, lexicalized enemy noun and productive present participle','supports','Publishes both categories and their historical relationship.'),
(423,489,'Lemma fijands, masculine nd-stem','context','Supplies the synchronic noun classification.'),
(424,492,'p. 47 note 24, inherited enemy-noun parallels across Germanic','supports','Supports pre-Gothic lexicalization.'),
(424,491,'p. 140, *fi(j)and- and descendants','supports','Independently publishes the Germanic formation.'),
(425,492,'pp. 48–49, Galatians 4:16, Romans 11:28, and Romans 12:9 diagnostics','supports','Shows how syntax disambiguates selected tokens.'),
(425,489,'Twenty-one not-verified and ambiguous candidates','supports','Defines the unresolved residue.'),
(426,492,'pp. 47–49, inherited noun beside live participle and verb','supports','Establishes coexistence without directly reporting speaker intuitions.'),
(426,487,'Lemma fijan and surviving participial forms','context','Shows that the base verb and productive participle remained available.'),
(427,489,'Lemma fijands and Streitberg gloss Feind','supports','Documents the Gothic enemy gloss.'),
(427,508,'Definition and etymology: enemy, foe, the devil','context','Documents a wider semantic range in the collateral Old English branch.'),
(428,508,'Grammar and etymology from feónd through Middle English forms','supports','Supplies the direct English branch history.'),
(428,492,'p. 47 note 24, Gothic and Old English as Germanic parallels','supports','Places the forms on collateral branches.'),
(429,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed route while leaving it reconstructive.'),
(429,492,'p. 47, lexicalized *fi(j)and- from *fi(j)ēn-','context','Supports the firmer shallower relationship.'),
(430,489,'Bounded 26-candidate inventory and verification statuses','supports','Defines the surviving corpus measure.'),
(430,466,'Gothic source and manuscript inventory','context','Documents the fragmentary survival base.'),
(431,129,'Codex argenteus’ journey','supports','Documents the post-copying custody route.'),
(431,460,'Folio 3v facsimile','context','Identifies two inspected noun-only tokens inside that route.'),
(431,506,'Folio 27r facsimile','context','Identifies the third inspected noun-only token.'),
(431,484,'Folio 123r facsimile','context','Identifies the fourth inspected noun-only token.'),
(431,507,'Folio 164v facsimile','context','Identifies the fifth inspected noun-only token.'),
(432,489,'Romans 12:20, Philippians 3:18, Colossians 1:21, and 2 Thessalonians 3:15 sigla','supports','Lists parallel manuscript witnesses as separate candidates.'),
(432,466,'Gothic manuscript descriptions','context','Explains why A, B, and Carolinus are distinct physical witnesses.'),
(433,483,'Luke 1:71, fijandam for enemies and hatandane for those hating','supports','Documents one side of the lexical swap.'),
(433,462,'Luke 6:27, hatandans for enemies and fijandam for those hating','supports','Documents the reversed side.'),
(433,489,'Twenty-one ambiguous candidates across the noun inventory','context','Shows that the paired verses do not resolve the whole corpus.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(185,185,2097,'fijands','Enemy is a fossilized hater—but lexicalization does not make every token transparent.','Project Wulfila lists 26 candidates under the Gothic enemy noun and 42 under the verb fijan; exactly 21 surface tokens belong to both inventories. Ayora Estevan explains why: Proto-Germanic had already lexicalized one who hates as enemy, while Gothic retained the productive participle. The five noun-only tokens are directly inspected; the 21-token overlap remains public instead of being counted twice as certainty.','A',100,'The counts are bounded to current Project Wulfila inventories. The claim does not turn every enemy occurrence into a synchronically transparent participle, infer spoken frequency, or project English fiend’s devil sense onto Gothic.');
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
(185,489,'Complete fijands inventory: 26 candidates, five noun-only and 21 ambiguous','supports','Supplies the noun total and category partition.'),
(185,487,'Complete fijan inventory: the same 21 candidates are ambiguous','supports','Confirms the exact intersection with the verb.'),
(185,492,'pp. 47–49, Proto-Germanic lexicalization and Gothic noun-participle diagnostics','supports','Explains historically and syntactically why the overlap exists.'),
(185,460,'Folio 3v, fiand and fijands','supports','Provides two directly inspected noun-only tokens.'),
(185,506,'Folio 27r, fijands','supports','Provides a third directly inspected noun-only token.'),
(185,484,'Folio 123r, fijande','supports','Provides a fourth directly inspected noun-only token.'),
(185,507,'Folio 164v, fijandis','supports','Provides the fifth directly inspected noun-only token.'),
(185,508,'feónd definition and Germanic comparison','context','Shows the collateral English branch and prevents a Gothic-to-English descent claim.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(141,185,184,'THE ENEMY IS THE VERB’S FOSSIL—BUT THE FOSSIL STILL MOVES','Proto-Germanic lexicalized *fi(j)and- as enemy, yet Gothic kept fijan and its productive one-who-hates participle alive. Five Gothic candidates are noun-only; 21 can still be either category. Follow the edge to the verb and the dictionary boundary becomes a live grammatical dispute.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1192 AND 1196
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1193,1194,1195) THEN 'proposed' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1192 THEN 'Canonicalized to the already cited Gothic enemy node while preserving five noun-only and 21 ambiguous corpus candidates.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1192 AND 1196;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1008 AND 1011;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1008 AND 1011;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1008 AND 1011;
--> statement-breakpoint

-- Expose the English collateral branch without pretending that Gothic donated
-- the English word. Both branches meet at reconstructed *fi(j)and-.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:3:feond:attested:sense:enemy-foe-devil-agent-noun',3,'fēond','feond','enemy-foe-devil-agent-noun','fēond',NULL,'attested','Old English lexical record',450,1150,'enemy, foe, devil; masculine noun','Bosworth–Toller records inflectional variants, derivation from the hate verb, and enemy, foe, and devil senses. This is the direct ancestor branch of English fiend, not a descendant of Gothic.','reviewed'),
('node:1:fiend:attested:sense:enemy-evil-spirit-hostile-person',1,'fiend','fiend','enemy-evil-spirit-hostile-person','fiend','/fiːnd/','attested','English continuation',1100,2026,'an enemy, evil spirit, or cruel and wicked person','The English form continues Old English fēond through Middle English forms. Its narrowed or intensified senses belong to the English branch.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT modern.id,old.id,'inheritance','Old English long vowel and inflectional endings pass through Middle English fend, feend, and feond forms into modern fiend.','The inherited enemy and foe noun develops or foregrounds evil-spirit and cruel-person senses in the English branch.','Bosworth–Toller editors','established','The direct English continuation is documented; this edge does not assert that modern senses were absent from Old English.','Old English through Middle English into the modern language.','reviewed'
FROM lexeme_nodes modern,lexeme_nodes old
WHERE modern.canonical_key='node:1:fiend:attested:sense:enemy-evil-spirit-hostile-person'
  AND old.canonical_key='node:3:feond:attested:sense:enemy-foe-devil-agent-noun';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT old.id,germanic.id,'inheritance','Old English fēond continues the Germanic nd-agent formation with West Germanic vowel and inflectional development.','The lexicalized one-who-hates formation remains an enemy or foe noun and also supplies a devil sense in Old English.','Daniel Ayora Estevan · Bosworth–Toller editors','probable','Cross-Germanic comparison and the Old English entry support inheritance; exact intermediate phonetic detail remains reconstructed.','Proto-Germanic reconstruction into the Old English written record.','reviewed'
FROM lexeme_nodes old,lexeme_nodes germanic
WHERE old.canonical_key='node:3:feond:attested:sense:enemy-foe-devil-agent-noun'
  AND germanic.canonical_key='node:5:fijand:reconstructed:sense:enemy-lexicalized-participle';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,508,'Grammar, definition, and etymology from feónd through Middle English forms','supports','Publishes the direct English continuation and the enemy, foe, and devil semantic range.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:1:fiend:attested:sense:enemy-evil-spirit-hostile-person' AND edge.relation_type='inheritance';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,492,'p. 47 note 24, Old English fēond among inherited Germanic enemy nouns','supports','Places Old English on the inherited lexicalized-agent branch.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:3:feond:attested:sense:enemy-foe-devil-agent-noun' AND edge.relation_type='inheritance';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,508,'Grammar: feónd from feógan or feón, with Germanic comparative forms','supports','Supplies the Old English word formation and cross-branch comparison.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:3:feond:attested:sense:enemy-foe-devil-agent-noun' AND edge.relation_type='inheritance';
