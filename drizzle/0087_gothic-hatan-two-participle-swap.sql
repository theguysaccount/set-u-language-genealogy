-- Promote Gothic hatan from its complete two-token corpus. Both surviving
-- forms are present participles in the Codex Argenteus and both manuscript
-- pages were directly inspected. Luke 1:71 and Luke 6:27 reverse the
-- constructional work done by hatan and fijan: one passage uses fijan for
-- enemies and hatan for those hating, while the other uses hatan for enemies
-- and fijan for those hating. The dossier preserves both an inherited
-- class-III reconstruction and Sturtevant's competing Gothic analogy account.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(183,'hatan','hatan','hatan','/ˈha.tan/','Gothic class-III weak-verb lemma','A Gothic weak verb conventionally glossed hate, represented by exactly two currently reported corpus tokens: hatandane in Luke 1:71 and hatandans in Luke 6:27. Both are present participles; no surviving token writes the normalized infinitive. Their translation behavior defeats a one-word gloss: Luke 1 uses fijandam for enemies and hatandane for those hating, while Luke 6 uses hatandans for enemies and fijandam for those hating. Project Wulfila keeps class-III hatan separate from class-I hatjan, Braune calls the forms conjugational fluctuation, Orel publishes a reconstructed class-III alternation, and Sturtevant argues that the hatan shape may instead be a specifically Gothic secondary formation.','Gothic does not map one English hate word to one ancestral verb. Its only two hatan tokens are participles, and across two Luke passages hatan and fijan trade the constructional roles enemies and those who hate.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(483,'wulfila-luke-1-71-hatandane','Gothic Bible word analysis — Luke 1:71, hatandane','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/03/01/71.html',NULL,'research_database'),
(484,'codex-argenteus-123r','Codex Argenteus facsimile 145 — folio 123r, Luke 1:69–77','Uppsala University Library · Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/145lc1f.html',NULL,'digitized_primary_source'),
(485,'streitberg-hatan','Die gotische Bibel — Wörterbuch entry hatan','Wilhelm Streitberg',1910,'Carl Winter · Project Wulfila digital edition','https://www.wulfila.be/lib/streitberg/1910/text/html/#P055.14',NULL,'historical_dictionary'),
(486,'sturtevant-1954-hatan-hatjan','Notes on Gothic Forms — Hatan : hatjan “to hate”','Albert Morey Sturtevant',1954,'Language · Linguistic Society of America · Cambridge University Press','https://www.cambridge.org/core/services/aop-cambridge-core/content/view/2A068AAF46C266A5252C5C0B3B042FFB/S0097850754125571a.pdf/notes_on_gothic_forms.pdf','10.2307/410465','research_article');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1182,183,34,1,'hatan','hatan','hate-class-three-verb','hatan','/ˈha.tan/','attested','Gothic biblical tradition',300,600,'to hate; in a substantivized participle, an enemy or one who hates','The lexeme is attested through hatandane and hatandans, not through a surviving written infinitive. Project Wulfila reports exactly two current corpus tokens and classifies the lemma as a class-III weak verb.'),
(1183,183,5,2,'*xatēnan ~ *xatōjanan','xatenan-xatojanan','hate-class-three-reconstruction','*xatēnan ~ *xatōjanan',NULL,'reconstructed','Proto-Germanic reconstruction alternatives',-500,200,'reconstructed class-III or related weak verbs meaning hate','Orel publishes the alternation *xatēnan ~ *xatōjanan and compares Gothic hatan, Old English hatian, Old Frisian hatia, Old Saxon hatan, Old Norse hata, and Old High German hazzōn. The x is Orel’s notation for the Germanic fricative commonly rendered h. Sturtevant’s competing specifically Gothic secondary account remains a separate graph edge.'),
(1184,183,5,3,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','The reconstructed verb family is grouped with the Germanic hate noun base. The graph reuses its established cross-source *hatiz- representation while preserving uncertainty about the exact weak-verb formation.'),
(1185,183,6,4,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. Two translated Gothic participles cannot recover one original prehistoric emotional or action scene.'),
(1186,183,6,5,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','The analytical base remains probable rather than a directly attested word, and the proposed semantic members remain disputed.'),
(1187,183,7,6,'UNKNOWN','unknown','hatan-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before enemy, hatred, wrath, grief, care, pursuit, persecution, or a translation choice is promoted as the one certain prehistoric origin.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1000,183,1182,1183,'competing_inheritance','On the inherited analysis, Gothic h and the hat- stem continue the Germanic forms Orel writes with x, while the Gothic class-III paradigm is compared with the reconstructed *xatēnan ~ *xatōjanan alternation.','The Germanic weak-verb family meaning hate continues in the two surviving Gothic participles, one of which is substantivized as enemies.','Vladimir Orel · Project Wulfila editors','proposed','The comparative family is published, but the exact reconstruction varies and Sturtevant argues that Gothic hatan may be a secondary formation beside hatjan rather than a straightforward inherited class-III reflex.','Proto-Germanic reconstruction into the fourth-century Gothic translation tradition and surviving early-sixth-century manuscript.','reviewed'),
(1001,183,1183,1184,'derivation','Orel groups the weak-verb reconstruction with the Germanic hate-noun base he represents as *xataz ~ *xatez; the graph crosswalks that base to its reviewed *hatiz- node.','A noun family for hate or enmity supplies or associates with weak verbs whose daughter branches express hating, hostility, pursuit, and anger.','Vladimir Orel · Merriam-Webster Editors','probable','The lexical family is secure, but the exact formation of class-III hatan and the direction of any specifically Gothic remodeling remain disputed.','Related Proto-Germanic reconstructed formations rather than independently dated words.','reviewed'),
(1002,183,1184,1185,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1003,183,1185,1186,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1004,183,1186,1187,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail ends before the surviving translation alternation is reverse-engineered into a universal origin for hate, enemy, grief, care, pursuit, or persecution.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends at Germanic; the displayed PIE route remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1000,461,'Lemma hatan, class sw.V.3 and two-token occurrence inventory','supports','Identifies the class-III Gothic lexeme and its complete current corpus count.'),
(1000,485,'Wörterbuch entry hatan sw.V.3 hassen','supports','Independently supplies the historical dictionary lemma, class, and gloss.'),
(1000,447,'p. 203, *xatēnan ~ *xatōjanan and Germanic cognate verbs','supports','Publishes the inherited comparative reconstruction and branch set.'),
(1000,464,'§§191–193 and note: class-III -ai- distribution; hatan fluctuates with class-I hatjan','challenges','Treats the Gothic forms as conjugational fluctuation rather than a clean separate inheritance.'),
(1000,486,'p. 452, Hatan : hatjan “to hate”','challenges','Argues that a specifically Gothic secondary origin is more probable and notes that hatan occurs only in the present participle.'),
(1001,447,'p. 203, *xataz ~ *xatez beside *xatēnan ~ *xatōjanan','supports','Publishes the noun and weak-verb formations together in the Germanic family.'),
(1001,436,'Noun etymology: Germanic *hatiz- and derived weak verb','context','Supplies the atlas representation of the corresponding Germanic noun base.'),
(1002,436,'Noun etymology and semantic note','supports','Publishes the qualified PIE comparison and its lack of semantic transparency.'),
(1002,439,'Non-Germanic comparison and conclusion','challenges','Questions whether the proposed members form one secure semantic family.'),
(1003,436,'Reconstructed formation and base','supports','Publishes the two proposed PIE analytical levels.'),
(1004,436,'Semantic-transparency note','supports','Marks the deep comparison as nontransparent.'),
(1004,439,'Qualified conclusion','supports','Supports stopping rather than inventing a single prehistoric emotional or action scene.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(263,1182,484,'early 6th century',510,'Codex Argenteus, Luke 1:71','DG 1, fol. 123r; facsimile 145; Luke 1:71; line containing “þize hatandane unsis”','giban nasein us fijandam unsaraim jah us handau allaize þize hatandane unsis','established','manuscript','Uppsala University Library','DG 1, fol. 123r','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/145lc1f.jpg',1,'The facsimile pixels were directly inspected against Project Wulfila’s verse transcription. The object verifies written hatandane in context; it does not show the infinitive hatan, establish a first Gothic use, prove spoken frequency, or by pixels alone choose between the formally possible masculine and neuter genitive-plural analyses.'),
(264,1182,463,'early 6th century',510,'Codex Argenteus, Luke 6:27','DG 1, fol. 143v; facsimile 186; Luke 6:27; line containing “þans hatandans izwis”','akei izwis qiþa þaim hausjandam: frijod þans hatandans izwis; waila taujaid þaim fijandam izwis','established','manuscript','Uppsala University Library','DG 1, fol. 143v','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/186lc6f.jpg',1,'The facsimile pixels were directly inspected against Project Wulfila’s verse transcription. The object verifies written hatandans in context; it does not show the infinitive hatan, establish a first Gothic use, prove spoken frequency, or by pixels alone choose between the formally possible masculine nominative- and accusative-plural analyses.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(26,263,'2026-08-27','SET-U editorial review','visual_facsimile','hatandane','allaize þize hatandane unsis','Codex Argenteus DG 1, fol. 123r, facsimile 145, Luke 1:71, line containing “þize hatandane unsis”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/145lc1f.jpg','Verifies the manuscript glyph sequence transcribed hatandane when the image is aligned with the verse transcription. It does not show the normalized infinitive hatan, establish a first Gothic use, prove the contextual gender without grammatical analysis, or recover the verb’s prehistoric history.','reviewed'),
(27,264,'2026-08-27','SET-U editorial review','visual_facsimile','hatandans','frijod þans hatandans izwis','Codex Argenteus DG 1, fol. 143v, facsimile 186, Luke 6:27, line containing “þans hatandans izwis”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/186lc6f.jpg','Verifies the manuscript glyph sequence transcribed hatandans when the image is aligned with the verse transcription. It does not show the normalized infinitive hatan, establish a first Gothic use, prove the contextual case without grammatical analysis, or recover the verb’s prehistoric history.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(712,183,'hatandane','Gothic','the Luke 1:71 genitive-plural present participle, formally masculine or neuter and contextually substantivized for those hating',483),
(713,183,'hatandans','Gothic','the Luke 6:27 masculine nominative- or accusative-plural present participle, contextually accusative after þans',462),
(714,183,'hatjan','Gothic','the class-I hate verb that Braune treats as fluctuation and Sturtevant uses in a secondary-Gothic account',486),
(715,183,'hatis','Gothic','the related hate or wrath noun in the Germanic lexical family',447),
(716,183,'hatizōn','Gothic','a related class-II denominative meaning be angry',472),
(717,183,'fijan','Gothic','the other Gothic hate verb whose participle trades translation roles with hatan across Luke 1:71 and 6:27',486),
(718,183,'fijands','Gothic','the enemy formation represented by fijandam in both comparison passages',483),
(719,183,'hatian','Old English','a cognate weak hate verb in Orel’s reconstructed class-III or related formation',447),
(720,183,'hatan','Old Saxon','a class-III Germanic cognate verb meaning hate',447),
(721,183,'hata','Old Norse','a class-III Germanic cognate verb meaning hate',447),
(722,183,'hatia','Old Frisian','a class-III Germanic cognate verb meaning hate',447),
(723,183,'hazzōn','Old High German','a Germanic cognate verb meaning hate',447),
(724,183,'hassen','German','the modern German hate verb in the wider inherited family',452),
(725,183,'hate','English','a modern cousin reached through the distinct Old English branch',436);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(716,183,1,'Proto-Germanic linguistic horizon','*xatēnan ~ *xatōjanan','Orel’s Gothic, Old English, Old Frisian, Old Saxon, Old Norse, and Old High German comparison supports a Germanic verb family, while the exact reconstruction and the possibility of specifically Gothic remodeling remain disputed.',NULL,NULL,'uncertain',-500,200,'range','A conventional comparative-linguistic interval, not an attested word date or archaeological point.'),
(717,183,2,'Fourth-century Gothic translation tradition','hatan represented by two participles','Luke 1:71 and Luke 6:27 belong to the Gothic Gospel translation tradition. Their lexical swap reveals translation behavior but does not date the first spoken use or prove that the construction was newly coined.',NULL,NULL,'broad',300,399,'century','The century dates the translation tradition, not the exact moment hatan entered Gothic or acquired a particular construction.'),
(718,183,3,'Ravenna','early-sixth-century Codex Argenteus witnesses','Both directly inspected participles occur in the purple-vellum Gospel codex probably copied in Ravenna: hatandane on folio 123r and hatandans on folio 143v.',44418100,12203000,'regional',500,525,'range','The interval operationalizes the official early-sixth-century dating; 510 is only a representative attestation year for both surviving objects.'),
(719,183,4,'Werden, Ruhr district','sixteenth-century manuscript custody','The codex was known in the sixteenth century at a Benedictine monastery in Werden. This is the route of the evidence object, not proof that spoken Gothic traveled with it.',51388000,7004000,'approximate',1500,1599,'century','The official history supplies a century-level custody horizon rather than exact arrival and departure years.'),
(720,183,5,'Prague','imperial custody by 1600 to 1648','By 1600 the codex was in Prague in the hands of Emperor Rudolph II; Swedish forces took it when they stormed the city in 1648.',50075500,14437800,'regional',1600,1648,'range','The bounds describe documented manuscript custody, not lexical use.'),
(721,183,6,'Stockholm','Swedish royal custody after 1648','The codex reached Stockholm as spoil of war and entered Queen Christina’s library before passing to Isaac Vossius.',59329300,18068600,'regional',1648,1654,'range','The upper bound uses the queen’s abdication as the transition horizon described by the official history.'),
(722,183,7,'Holland custody','Isaac Vossius and acquisition by De la Gardie','Vossius took the manuscript to Holland; Magnus Gabriel De la Gardie later bought it and presented it to Uppsala University.',NULL,NULL,'broad',1654,1669,'range','The official history names Holland but does not reduce this custody stage to one city or exact transaction year.'),
(723,183,8,'Uppsala University Library','custody since 1669','De la Gardie presented the codex to Uppsala University in 1669. Modern facsimiles expose both folios while Project Wulfila supplies the aligned corpus analyses.',59858600,17638900,'regional',1669,2026,'range','This stage traces evidence preservation and access, not continued Gothic speech.'),
(724,183,9,'Knowledge boundary','beyond secure Germanic reconstruction','The proposed Indo-European comparison remains visible, but no single enemy, hate, grief, care, pursuit, persecution, or translation origin is promoted.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(716,447,'p. 203, *xatēnan ~ *xatōjanan and Germanic cognate set','supports','Publishes the comparative Germanic verb family.'),
(716,486,'p. 452, secondary specifically Gothic origin judged more probable','challenges','Preserves the competing account instead of turning the reconstructed horizon into certainty.'),
(717,129,'The four gospels in the Gothic language','supports','Dates the translation tradition to the fourth century and distinguishes it from the surviving codex.'),
(717,483,'Luke 1:71, hatandane with Gothic and Greek alignment','supports','Locates the first participle in the translation text.'),
(717,462,'Luke 6:27, hatandans with Gothic and Greek alignment','supports','Locates the second participle and the swapped lexical roles.'),
(718,129,'The four gospels in the Gothic language','supports','Places probable Codex Argenteus production in early-sixth-century Ravenna.'),
(718,484,'Facsimile 145, fol. 123r','supports','Supplies the directly inspected page preserving hatandane.'),
(718,463,'Facsimile 186, fol. 143v','supports','Supplies the directly inspected page preserving hatandans.'),
(718,466,'Codex Argenteus edition metadata and manuscript description','context','Confirms the manuscript identity, repository, and current scholarly-edition context.'),
(719,129,'Codex argenteus’ journey, Werden paragraph','supports','Documents sixteenth-century custody in Werden.'),
(720,129,'Codex argenteus’ journey, Prague paragraph','supports','Documents imperial custody by 1600 and the 1648 transfer.'),
(721,129,'Codex argenteus’ journey, Stockholm paragraph','supports','Documents arrival as Swedish spoil and Queen Christina’s custody.'),
(722,129,'Codex argenteus’ journey, Holland paragraph','supports','Documents Vossius taking the codex to Holland and De la Gardie’s acquisition.'),
(723,129,'Codex argenteus’ journey, 1669 Uppsala presentation','supports','Documents the manuscript’s presentation to Uppsala University.'),
(723,461,'Current hatan lemma and complete two-token occurrence inventory','context','Connects the preserved object to the modern corpus research interface.'),
(724,436,'Semantic-transparency note','supports','Marks the deeper comparison as semantically opaque.'),
(724,439,'Qualified conclusion and comparison discussion','supports','Supports stopping beyond the secure Germanic family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(400,183,'Is the infinitive hatan written in the surviving corpus?','No. The two surviving forms are hatandane and hatandans, both present participles. Hatan is the normalized dictionary citation form assigned by Project Wulfila and the historical grammars.','established','The complete occurrence inventory and both verse analyses identify only participial forms.','resolved','The dossier labels the lexeme attested through two inflected tokens and never quotes the infinitive as manuscript text.'),
(401,183,'Does Gothic preserve exactly two historical uses of hatan?','Project Wulfila currently reports exactly two surviving corpus tokens assigned to the lemma. That count does not include lost manuscripts, spoken Gothic, unrecognized variants, or every use in history.','established','The lemma page supplies a complete current corpus inventory; the scholarly edition documents the fragmentary survival base.','resolved','Every count is explicitly bounded to the currently reported surviving corpus.'),
(402,183,'Are hatan and hatjan two Gothic verbs or one fluctuating paradigm?','The sources preserve different analytical levels. Project Wulfila gives separate class-III and class-I lemmas; Orel publishes distinct comparative formations. Braune says hatan fluctuates with class-I hatjan, while Sturtevant proposes a specifically Gothic secondary explanation.','probable','Corpus lemmatization, historical grammar, comparative reconstruction, and morphological argument do not collapse to one answer.','open',NULL),
(403,183,'Do the written endings alone settle the participles’ case and gender?','No. Project Wulfila gives masculine or neuter genitive plural for hatandane and masculine nominative or accusative plural for hatandans. The clauses resolve the contextual readings through syntax and Greek alignment, but the surface forms remain formally syncretic.','probable','The verse analyses distinguish morphological possibilities from contextual interpretation.','open',NULL),
(404,183,'Does hatan map one-to-one to Greek miseō, hate?','No. Luke 1:71 aligns hatandane with Greek misountōn, those hating, but Luke 6:27 aligns hatandans with echthrous, enemies. A dictionary gloss cannot replace verse-level lexical alignment.','established','The two complete verse analyses expose different Greek correspondences for the only two tokens.','resolved','The dossier records contextual equivalents rather than assigning one timeless source-language gloss.'),
(405,183,'Are hatan and fijan perfect synonyms?','They overlap in the Gothic hate field, but the surviving passages do not prove total synonymy. Luke 1 uses fijandam for enemies and hatandane for those hating; Luke 6 reverses those constructional roles. Sturtevant treats semantic association as relevant to formal association, not as proof that every sense and construction was identical.','probable','The paired verses show controlled alternation while the historical article develops an analogical explanation.','open',NULL),
(406,183,'Was hatan inherited unchanged from Proto-Germanic?','Possibly, not securely. Orel publishes *xatēnan ~ *xatōjanan behind a Germanic cognate set. Sturtevant instead judges a specifically Gothic secondary origin more probable, and Braune records fluctuation with hatjan.','proposed','A comparative etymology supports inheritance while two morphological analyses keep internal Gothic remodeling live.','open',NULL),
(407,183,'Do two surviving tokens prove hatan was rare in spoken Gothic?','No. They measure a bounded and fragmentary textual corpus, not ordinary speech, lost texts, genre distribution, or competition among Gothic hate verbs.','established','Project Wulfila supplies the current token inventory; the scholarly edition documents the limited surviving source base.','resolved','The interface says two reported corpus tokens, never two historical uses or a speech-frequency estimate.'),
(408,183,'Does the Codex Argenteus route map the spread of hatan?','No. It maps custody of the two directly inspected evidence objects. The codex traveled through Werden, Prague, Stockholm, Holland, and Uppsala long after Gothic ceased to be a living vernacular in those places.','established','Uppsala University documents the custody route and both token records belong to the same codex.','resolved','Every post-Ravenna journey note explicitly labels manuscript custody rather than lexical diffusion.'),
(409,183,'Does hatan securely descend from *ḱeh₂d-?','Only probably. The Germanic family is stronger than the deeper proposal; grief, care, mourning, hatred, pursuit, and persecution do not form one transparent semantic sequence, and some proposed cognates may not belong together.','probable','Merriam-Webster qualifies the proposal; Liberman challenges semantic and membership assumptions.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(400,461,'Lemma hatan and two-token occurrence inventory','supports','Distinguishes the normalized lemma from both written participles.'),
(400,483,'Luke 1:71, morphology of hatandane','supports','Identifies the first token as a present participle.'),
(400,462,'Luke 6:27, morphology of hatandans','supports','Identifies the second token as a present participle.'),
(401,461,'Complete occurrence inventory: hatandane and hatandans','supports','Defines the exact bounded corpus count.'),
(401,466,'Gothic source and manuscript inventory','context','Documents the limited survival base that prevents a total historical-use claim.'),
(402,461,'Lemma hatan, sw.V.3','supports','Separates the class-III lemma.'),
(402,458,'Lemma hatjan, sw.V.1-j','supports','Separates the class-I lemma.'),
(402,464,'§193 note: hatan fluctuates with class-I hatjan','challenges','Treats the forms as conjugational fluctuation.'),
(402,447,'p. 203, separate *xatjanan and *xatēnan ~ *xatōjanan entries','context','Publishes distinct comparative formations.'),
(402,486,'p. 452, Hatan : hatjan “to hate”','challenges','Develops a specifically Gothic secondary account.'),
(403,483,'Luke 1:71, masculine or neuter genitive-plural analyses for hatandane','supports','Publishes the formal ambiguity and contextual verse.'),
(403,462,'Luke 6:27, masculine nominative- or accusative-plural analyses for hatandans','supports','Publishes the formal ambiguity and contextual verse.'),
(404,483,'Luke 1:71, hatandane aligned with Greek misountōn','supports','Documents the those-hating correspondence.'),
(404,462,'Luke 6:27, hatandans aligned with Greek echthrous','supports','Documents the enemies correspondence.'),
(405,483,'Luke 1:71, fijandam for enemies and hatandane for those hating','supports','Documents one constructional assignment.'),
(405,462,'Luke 6:27, hatandans for enemies and fijandam for those hating','supports','Documents the reversed constructional assignment.'),
(405,486,'p. 452, semantic association of fijan and hatan in the formal argument','context','Treats semantic overlap as part of an analogical explanation without providing a complete synonym inventory.'),
(406,447,'p. 203, *xatēnan ~ *xatōjanan and Germanic cognates','supports','Publishes the inherited comparative route.'),
(406,464,'§193 note: fluctuation between class III and class I','challenges','Preserves the internal-paradigm account.'),
(406,486,'p. 452, specifically Gothic secondary origin judged more probable','challenges','Publishes a direct alternative to uncomplicated inheritance.'),
(407,461,'Two-token occurrence inventory','supports','Defines what the surviving count actually measures.'),
(407,466,'Manuscript inventory and edition description','context','Documents the fragmentary Gothic textual record.'),
(408,129,'Codex argenteus’ journey','supports','Documents manuscript custody from Werden to Uppsala.'),
(408,484,'Folio 123r, facsimile 145','context','Identifies one directly inspected object inside that custody route.'),
(408,463,'Folio 143v, facsimile 186','context','Identifies the second directly inspected object inside the same codex.'),
(409,436,'Noun etymology and semantic note','supports','Publishes the PIE proposal with an explicit qualification.'),
(409,439,'Non-Germanic comparison and conclusion','challenges','Questions the semantic unity and membership of the deeper comparison.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(183,183,2095,'hatan','Gothic’s two hate verbs trade places across two passages.','The complete surviving hatan corpus contains only hatandane in Luke 1:71 and hatandans in Luke 6:27. In Luke 1, fijandam supplies enemies while hatandane supplies those hating; in Luke 6, hatandans supplies enemies while fijandam supplies those hating. Both Codex Argenteus pages are directly inspected. The lexical swap—and the class-III versus class-I dispute—cannot be represented by one timeless translation arrow.','A',100,'The claim is bounded to the two current corpus tokens and their verse-level Greek alignments. It does not infer spoken frequency, claim that the infinitive is written, prove perfect synonymy, or settle inherited class III against specifically Gothic analogy.');
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
(183,461,'Lemma hatan and complete two-token inventory','supports','Bounds the claim to the current surviving corpus.'),
(183,483,'Luke 1:71, Gothic and Greek alignment','supports','Documents fijandam as enemies and hatandane as those hating.'),
(183,484,'Folio 123r, line containing þize hatandane unsis','supports','Provides the first directly inspected manuscript object.'),
(183,462,'Luke 6:27, Gothic and Greek alignment','supports','Documents hatandans as enemies and fijandam as those hating.'),
(183,463,'Folio 143v, line containing þans hatandans izwis','supports','Provides the second directly inspected manuscript object.'),
(183,464,'§193 note: hatan fluctuates with class-I hatjan','challenges','Preserves the paradigm-fluctuation analysis.'),
(183,486,'p. 452, secondary Gothic analysis and participle-only corpus','context','Connects the two-token morphology to the competing historical explanation.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(139,183,181,'THE TWO HATE VERBS TRADE PLACES','Luke 1:71 uses fijandam for enemies and hatandane for those hating. Luke 6:27 uses hatandans for enemies and fijandam for those hating. Project Wulfila separates class-III hatan from class-I hatjan; Braune and Sturtevant preserve competing explanations for why the paradigms overlap. The translation itself is a two-verb experiment.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1182 AND 1187
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1183,1184,1185,1186) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1182 THEN 'Attested through two directly inspected present participles; no written infinitive token is claimed.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1182 AND 1187;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1000 AND 1004;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1000 AND 1004;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1000 AND 1004;
--> statement-breakpoint

-- Sturtevant's alternative is influence inside Gothic, not a second linear
-- ancestor. Keep it as a separately typed and cited canonical side edge.
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT hatan.id,hatjan.id,'analogical_influence','Sturtevant analyzes hatan beside hatjan through a specifically Gothic secondary association with the fijan/fian pattern; Braune independently records fluctuation between class III and class I.','The two Gothic hate paradigms overlap semantically and morphologically without proving that every construction or sense was identical.','Albert Morey Sturtevant · Wilhelm Braune','proposed','This is a published internal-Gothic explanation competing with direct inherited class-III analysis, not a claim that attested hatjan is a chronologically older written ancestor.','Synchronic or post-inherited Gothic remodeling before the surviving sixth-century manuscript.','reviewed'
FROM lexeme_nodes hatan,lexeme_nodes hatjan
WHERE hatan.canonical_key='node:34:hatan:attested:sense:hate-class-three-verb'
  AND hatjan.canonical_key='node:34:hatjan:attested:sense:hate-class-one-verb';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,486,'p. 452, Hatan : hatjan “to hate”','supports','Publishes the specifically Gothic secondary explanation and its two-participle corpus basis.'
FROM lexeme_edges edge
JOIN lexeme_nodes child ON child.id=edge.child_node_id
JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id
WHERE child.canonical_key='node:34:hatan:attested:sense:hate-class-three-verb'
  AND parent.canonical_key='node:34:hatjan:attested:sense:hate-class-one-verb'
  AND edge.relation_type='analogical_influence';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,464,'§193 note: hatan fluctuates between class III and class I hatjan','context','Independently records the overlapping Gothic paradigm analysis.'
FROM lexeme_edges edge
JOIN lexeme_nodes child ON child.id=edge.child_node_id
JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id
WHERE child.canonical_key='node:34:hatan:attested:sense:hate-class-three-verb'
  AND parent.canonical_key='node:34:hatjan:attested:sense:hate-class-one-verb'
  AND edge.relation_type='analogical_influence';
