-- Promote Gothic fijan from its complete current Project Wulfila inventory.
-- The inventory contains 42 candidate tokens: 13 verified verb assignments,
-- eight further lexically unambiguous assignments, and 21 surface forms that
-- Project Wulfila also lists under the lexicalized enemy noun fijands. Four
-- Codex Argenteus tokens were directly inspected. The graph keeps the verb,
-- the Proto-Germanic lexicalized participle, the Gothic enemy noun, and every
-- unresolved token boundary separate.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(184,'fijan','fijan','fijan','/ˈfi.jan/','Gothic class-III weak-verb lemma','A Gothic class-III weak verb conventionally glossed hate or detest. Project Wulfila currently exposes 42 candidate tokens under fijan: 13 verified, eight further lexically unambiguous, and 21 explicitly ambiguous with the masculine nd-stem noun fijands, enemy. The surface inventory contains fifteen written shapes, including one exact infinitive fijan in John 7:7 and four j-less forms. Ayora Estevan shows why the overlap cannot be normalized away: Proto-Germanic had already lexicalized *fi(j)and- as enemy, while Gothic still used the matching present-participial formation for one who hates.','The Gothic word for enemy is a fossilized hater—but 21 surviving fijand- tokens still refuse to tell us whether they are the noun enemy or the living participle one who hates.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(487,'wulfila-fijan','Lemma fijan — Gothic dictionary and 42-token candidate inventory','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/lemma/0799.html',NULL,'research_database'),
(488,'wulfila-fian','Lemma fian — redirect and historical dictionary variant','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/lemma/0791.html',NULL,'research_database'),
(489,'wulfila-fijands','Lemma fijands — Gothic enemy noun and 26-token candidate inventory','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/lemma/0800.html',NULL,'research_database'),
(490,'streitberg-fijan-fijands','Die gotische Bibel — Wörterbuch entries fijan, fian, and fijands','Wilhelm Streitberg',1910,'Carl Winter · Project Wulfila digital edition','https://www.wulfila.be/lib/streitberg/1910/html/B034.html',NULL,'historical_dictionary'),
(491,'kroonen-2013-fijen-fijand','Etymological Dictionary of Proto-Germanic — *fi(j)ēn- and *fi(j)and-','Guus Kroonen',2013,'Brill','https://brill.com/display/title/12611?language=en',NULL,'etymological_dictionary'),
(492,'ayora-estevan-2023-fijands','On the syntax of the Agent nouns in Gothic: the case of nd-formations','Daniel Ayora Estevan',2023,'Cuadernos de Filología Clásica · Complutense University of Madrid','https://revistas.ucm.es/index.php/CFCG/en/article/view/83260','10.5209/cfcg.83260','research_article'),
(493,'codex-argenteus-33r','Codex Argenteus facsimile 57 — folio 33r, John 7:2–8','Uppsala University Library · Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/057jh7f.html',NULL,'digitized_primary_source'),
(494,'codex-argenteus-76v','Codex Argenteus facsimile 96 — folio 76v, John 12:19–25','Uppsala University Library · Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/096jh12f.html',NULL,'digitized_primary_source'),
(495,'wulfila-john-7-7-fijan','Gothic Bible word analysis — John 7:7, fijan and fijaiþ','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/02/07/07.html',NULL,'research_database'),
(496,'wulfila-john-12-25-fiaeth','Gothic Bible word analysis — John 12:25, fiaiþ','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/02/12/25.html',NULL,'research_database'),
(497,'wulfila-romans-11-28-fijandans','Gothic Bible word analysis — Romans 11:28, fijandans','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/05/11/28.html',NULL,'research_database'),
(498,'wulfila-romans-12-9-fiandans','Gothic Bible word analysis — Romans 12:9, fiandans','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/05/12/09.html',NULL,'research_database'),
(499,'wulfila-galatians-4-16-fijands','Gothic Bible word analysis — Galatians 4:16, fijands','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/09/04/16.html',NULL,'research_database'),
(500,'wulfila-luke-6-22-fijand','Gothic Bible word analysis — Luke 6:22, fijand','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/03/06/22.html',NULL,'research_database'),
(501,'wulfila-matthew-5-43-fiais','Gothic Bible word analysis — Matthew 5:43, fiais and fiand','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/01/05/43.html',NULL,'research_database');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1188,184,34,1,'fijan','fijan','hate-experience-class-three-verb','fijan','/ˈfi.jan/','attested','Gothic textual tradition',300,600,'to hate or detest; direct an experience of hostility toward a stimulus','The exact infinitive fijan is written once, in John 7:7. Project Wulfila’s 42-token candidate inventory contains fifteen surface forms: fijands 13, fijaiþ 6, fijand 5, fijaida 4, fijaidedun 3, fijandam 2, and one each of fiais, fiaiþ, fiandans, fiands, fija, fijai, fijaid, fijan, and fijandans. Twenty-one fijand- tokens remain lexically ambiguous with fijands.'),
(1189,184,5,2,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a reconstructed verb meaning hate or be hostile toward','Kroonen and Ayora Estevan publish *fi(j)ēn-. The optional j reflects scholarly normalization of a historical alternation, not two directly recorded Proto-Germanic spellings.'),
(1190,184,6,3,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base associated with harm, blame, suffering, or hate','The deeper comparison is proposed rather than a directly recoverable word or single original emotion. The displayed route does not treat every proposed cognate or gloss as equally secure.'),
(1191,184,7,4,'UNKNOWN','unknown','fijan-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before enemy, hater, harm, blame, suffering, hostility, or an inward feeling is promoted as the one certain prehistoric starting point.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1005,184,1188,1189,'inheritance','Gothic fijan continues the Germanic fi(j)- stem and class-III weak-verb formation. Written Gothic alternates j-bearing forms such as fijan and fijaiþ with j-less fiaiþ, fiais, fiandans, and fiands.','The reconstructed Germanic hate verb continues as a Gothic experience verb taking the hated stimulus as an accusative object; lexicalized enemy formations remain a separate branch.','Guus Kroonen · Daniel Ayora Estevan · Project Wulfila editors','probable','The Gothic paradigm and branch comparison are strong; the exact Proto-Germanic vocalism and optional-j notation are reconstructed.','Proto-Germanic reconstruction into the fourth-century Gothic translation tradition and surviving sixth-century manuscripts.','reviewed'),
(1006,184,1189,1190,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1007,184,1190,1191,'knowledge_boundary','No older form is promoted beyond the proposed *peh₁- comparison.','The trail ends before the Gothic verb-and-enemy overlap is reverse-engineered into one universal prehistoric meaning.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1005,487,'Lemma fijan, class sw.V.3 and complete 42-token candidate inventory','supports','Supplies the Gothic lemma, class, written forms, and bounded corpus assignments.'),
(1005,488,'Lemma fian redirects to fijan','context','Documents the normalized j-less variant without creating a second verb.'),
(1005,490,'p. 34, fijan with fian variants, class and gloss','supports','Publishes the historical dictionary paradigm and j-bearing/j-less forms.'),
(1005,491,'p. 140, *fi(j)ēn- and Germanic descendants','supports','Publishes the Proto-Germanic reconstruction and cross-branch comparison.'),
(1005,492,'pp. 47–49, fi(j)an as a Gothic experience verb and *fi(j)ēn- as its Germanic base','supports','Independently analyzes the verb’s predicate frame and reconstructed parent.'),
(1005,486,'pp. 451–452, loss of j in fijan : fian','context','Treats the Gothic j-less shapes as a historical formal development.'),
(1006,491,'p. 140, deeper etymological analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used here with reduced confidence.'),
(1007,491,'p. 140, deepest published comparison used in this dossier','supports','Supports stopping after the qualified PIE proposal rather than inventing an earlier node.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(265,1188,501,'early 6th-century witness, source-reported',510,'Codex Argenteus, Matthew 5:43','Matthew 5:43 [CA], token fiais','fiais','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the token in the verified section. The underlying folio was not directly inspected for this dossier, and the record does not infer an unwritten infinitive from the surface form.'),
(266,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, Matthew 6:24','Matthew 6:24 [CA], token fijaiþ','fijaiþ','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the token in the verified section. This is a source-reported corpus record rather than a fresh object inspection.'),
(267,1188,493,'early 6th century',510,'Codex Argenteus, John 7:7','DG 1, fol. 33r; facsimile 57; John 7:7; line containing “ni mag so manaseþs fijan izwis”','ni mag so manaseþs fijan izwis, iþ mik fijaiþ','established','manuscript','Uppsala University Library','DG 1, fol. 33r','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/057jh7f.jpg',1,'The facsimile pixels were directly inspected against Project Wulfila’s transcription. The object verifies the exact written infinitive fijan in context; it does not establish first use, spoken frequency, or Proto-Germanic ancestry.'),
(268,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, John 7:7','John 7:7 [CA], second token fijaiþ','fijaiþ','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists this second John 7:7 token in the verified section. The separate token count is retained even though it shares a verse and folio with the inspected infinitive.'),
(269,1188,494,'early 6th century',510,'Codex Argenteus, John 12:25','DG 1, fol. 76v; facsimile 96; John 12:25; line containing “saei fiaiþ saiwala seina”','saei fiaiþ saiwala seina in þamma fairƕau','established','manuscript','Uppsala University Library','DG 1, fol. 76v','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/096jh12f.jpg',1,'The facsimile pixels were directly inspected against Project Wulfila’s transcription. The object verifies the j-less written form fiaiþ in context; it does not by pixels alone reconstruct the sound change or settle every fian normalization.'),
(270,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, John 15:18','John 15:18 [CA], token fijai','fijai','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the optative token in the verified section; the manuscript object was not directly inspected here.'),
(271,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, John 15:18','John 15:18 [CA], token fijaida','fijaida','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the preterite token in the verified section and inventories it separately from fijai in the same verse.'),
(272,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, John 15:19','John 15:19 [CA], token fijaid','fijaid','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the token in the verified section. No claim about first use or ordinary frequency is made.'),
(273,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, John 15:23','John 15:23 [CA], first token fijaiþ','fijaiþ','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila inventories the first verified fijaiþ in John 15:23 as a separate token.'),
(274,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, John 15:23','John 15:23 [CA], second token fijaiþ','fijaiþ','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila inventories the repeated verified fijaiþ in the same verse as a second token.'),
(275,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, John 15:24','John 15:24 [CA], token fijaidedun','fijaidedun','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists this third-person-plural preterite in the verified section.'),
(276,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, John 15:25','John 15:25 [CA], token fijaidedun','fijaidedun','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the token in the verified section; the verse-level object was not directly inspected here.'),
(277,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, John 17:14','John 17:14 [CA], token fijaida','fijaida','established','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the token in the verified section. This record preserves the corpus assignment without claiming that all Gothic hate contexts share one sense.'),
(278,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, Luke 14:26','Luke 14:26 [CA], token fijaiþ','fijaiþ','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the lemma assignment as unambiguous but the token as not verified and morphosyntactically ambiguous among several present forms.'),
(279,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, Luke 16:13','Luke 16:13 [CA], token fijaiþ','fijaiþ','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the lemma assignment as unambiguous while retaining unresolved person, mood, or imperative analyses.'),
(280,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, Luke 19:14','Luke 19:14 [CA], token fijaidedun','fijaidedun','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists this preterite token as not verified but unambiguous for fijan.'),
(281,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Romans 7:15','Romans 7:15 [A], token fija','fija','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the token as not verified but unambiguous for fijan. The palimpsest object was not directly inspected in this review.'),
(282,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Romans 9:13','Romans 9:13 [A], token fijaida','fijaida','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the lemma assignment as unambiguous while retaining first- versus third-person preterite ambiguity.'),
(283,1188,497,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Romans 11:28','Romans 11:28 [A], token fijandans','fijandans','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila places this token in the not-verified-but-unambiguous verb group; Ayora Estevan analyzes the accusative plural as a present participle while noting wider constructional ambiguity.'),
(284,1188,498,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Romans 12:9','Romans 12:9 [A], token fiandans','fiandans','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila assigns the token unambiguously to fijan. Ayora Estevan uses its accusative object ubila to diagnose verbal participial syntax.'),
(285,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Ephesians 5:29','Ephesians 5:29 [A], token fijaida','fijaida','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the lemma assignment as unambiguous while retaining first- versus third-person preterite ambiguity. The object was not directly inspected.'),
(286,1188,484,'early 6th century',510,'Codex Argenteus, Luke 1:71','DG 1, fol. 123r; facsimile 145; Luke 1:71; line containing “us fijandam unsaraim”','giban nasein us fijandam unsaraim jah us handau allaize þize hatandane unsis','proposed','manuscript','Uppsala University Library','DG 1, fol. 123r','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/145lc1f.jpg',1,'The facsimile verifies written fijandam in the enemies clause. It cannot settle Project Wulfila’s explicit lexical ambiguity between the fijan participle and the lexicalized noun fijands.'),
(287,1188,500,'early 6th-century witness, source-reported',510,'Codex Argenteus, Luke 6:22','Luke 6:22 [CA], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both fijan and fijands analyses and marks the token lexically and morphosyntactically ambiguous. No forced lemma assignment is made.'),
(288,1188,463,'early 6th century',510,'Codex Argenteus, Luke 6:27','DG 1, fol. 143v; facsimile 186; Luke 6:27; line containing “þaim fijandam izwis”','frijod þans hatandans izwis; waila taujaid þaim fijandam izwis','proposed','manuscript','Uppsala University Library','DG 1, fol. 143v','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/186lc6f.jpg',1,'The facsimile verifies written fijandam in the those-hating clause. It does not by pixels alone choose the verbal participle over the identically inflected enemy noun.'),
(289,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, Luke 6:35','Luke 6:35 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both verb and noun analyses. The Greek enemy context favors the lexicalized noun, but the corpus preserves the formal ambiguity.'),
(290,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, Luke 19:27','Luke 19:27 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both fijan and fijands. The surface record remains in the overlap set rather than being counted as a secure verb token.'),
(291,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, Luke 19:43','Luke 19:43 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila marks the token lexically and morphosyntactically ambiguous between the verb and enemy noun.'),
(292,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, Luke 20:43','Luke 20:43 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila preserves both analyses. The dossier does not convert an enemy translation into proof of one morphological lemma.'),
(293,1188,487,'early 6th-century witness, source-reported',510,'Codex Argenteus, Mark 12:36','Mark 12:36 [CA], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both fijan and fijands analyses; the underlying object was not directly inspected for this record.'),
(294,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Romans 8:7','Romans 8:7 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The corpus marks the token lexically ambiguous. Ayora Estevan analyzes the construction as the independent enemy noun with a du-dative complement.'),
(295,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Romans 12:20','Romans 12:20 [A], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both the verb and enemy-noun analyses. The A witness is retained separately from Codex Carolinus.'),
(296,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Carolinus, Romans 12:20','Romans 12:20 [Car], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both analyses and inventories the Carolinus reading separately from Ambrosianus A.'),
(297,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, 1 Corinthians 15:25','1 Corinthians 15:25 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila preserves the lexically ambiguous surface token; Greek enemy context alone is not treated as a morphological proof.'),
(298,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, 1 Corinthians 15:26','1 Corinthians 15:26 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both analyses for the token aligned with the last enemy, death.'),
(299,1188,499,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Galatians 4:16','Galatians 4:16 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila keeps both candidates; Ayora Estevan uses nominative inflection and predicative syntax to analyze the contextual noun enemy.'),
(300,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Philippians 3:18','Philippians 3:18 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The A witness is one of the 21 overlap tokens shared by the fijan and fijands inventories.'),
(301,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B, Philippians 3:18','Philippians 3:18 [B], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The B witness is counted separately and remains lexically ambiguous in Project Wulfila.'),
(302,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, Colossians 1:21','Colossians 1:21 [A], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both candidates; the source-reported A witness is not directly inspected here.'),
(303,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B, Colossians 1:21','Colossians 1:21 [B], token fijands','fijands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila inventories the B witness separately while retaining the same lexical ambiguity.'),
(304,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus A, 2 Thessalonians 3:15','2 Thessalonians 3:15 [A], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists both verb and noun analyses and retains several formal readings; the object was not directly inspected.'),
(305,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus B, 2 Thessalonians 3:15','2 Thessalonians 3:15 [B], token fijand','fijand','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'The B witness is a separate overlap record with the same unresolved lexical and morphosyntactic analyses.'),
(306,1188,487,'Gothic manuscript corpus, date not normalized',NULL,'Codex Ambrosianus D, Nehemiah 6:16','Nehemiah 6:16 [D], token fiands','fiands','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'Project Wulfila lists the j-less token under both fijan and fijands. The surface spelling is preserved without deciding the noun-versus-participle question.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(28,267,'2026-08-27','SET-U editorial review','visual_facsimile','fijan','ni mag so manaseþs fijan izwis','Codex Argenteus DG 1, fol. 33r, facsimile 57, John 7:7, line containing “ni mag so manaseþs fijan izwis”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/057jh7f.jpg','Verifies the exact manuscript glyph sequence transcribed fijan when the page is aligned with the verse transcription. It establishes a written infinitive token, not a first use, a frequency estimate, or the prehistoric reconstruction.','reviewed'),
(29,269,'2026-08-27','SET-U editorial review','visual_facsimile','fiaiþ','saei fiaiþ saiwala seina','Codex Argenteus DG 1, fol. 76v, facsimile 96, John 12:25, line containing “saei fiaiþ saiwala seina”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/096jh12f.jpg','Verifies the j-less glyph sequence transcribed fiaiþ in the verse. It does not by itself recover the pronunciation, date the loss of j, or make fian a separately attested verb.','reviewed'),
(30,286,'2026-08-27','SET-U editorial review','visual_facsimile','fijandam','us fijandam unsaraim','Codex Argenteus DG 1, fol. 123r, facsimile 145, Luke 1:71, line containing “us fijandam unsaraim”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/145lc1f.jpg','Verifies the written token fijandam in the enemies clause. The pixels do not decide whether the form is the fijan participle or the lexicalized noun fijands, and they do not establish a first use.','reviewed'),
(31,288,'2026-08-27','SET-U editorial review','visual_facsimile','fijandam','þaim fijandam izwis','Codex Argenteus DG 1, fol. 143v, facsimile 186, Luke 6:27, line containing “þaim fijandam izwis”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/186lc6f.jpg','Verifies the written token fijandam in the those-hating clause. The pixels do not settle Project Wulfila’s explicit noun-versus-participle ambiguity or prove a one-to-one Greek lexical mapping.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(726,184,'fian','Gothic','the normalized j-less variant redirected to fijan; no separate verb is asserted',488),
(727,184,'fiaiþ','Gothic','the directly inspected j-less third-person singular in John 12:25',496),
(728,184,'fijandans','Gothic','the Romans 11:28 accusative-plural participle analyzed as verbal',497),
(729,184,'fiandans','Gothic','the Romans 12:9 j-less participle whose accusative object exposes verbal syntax',498),
(730,184,'fijands','Gothic','the masculine nd-stem enemy noun sharing 21 candidate tokens with the verb inventory',489),
(731,184,'*fi(j)and-','Proto-Germanic','the lexicalized present-participial enemy formation derived from the hate verb',492),
(732,184,'fēond','Old English','a Germanic enemy noun continuing the lexicalized nd-formation',492),
(733,184,'fjandi','Old Norse','a Germanic enemy noun continuing the lexicalized nd-formation',492),
(734,184,'fēogan','Old English','a West Germanic descendant of the reconstructed hate verb',491),
(735,184,'fīēn','Old High German','a High German descendant of the reconstructed hate verb',491),
(736,184,'fjá','Old Norse','a North Germanic descendant of the reconstructed hate verb',491),
(737,184,'hatan','Gothic','the other class-III hate verb that trades translation roles with fijan in Luke',486),
(738,184,'hatjan','Gothic','the class-I hate verb in the wider Gothic paradigm and analogy problem',486),
(739,184,'frijōn','Gothic','the love verb discussed as a formal and semantic counterpart in the j-loss analysis',486);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(725,184,1,'Proto-Indo-European linguistic horizon','proposed *peh₁- comparison','A deeper harm, blame, suffering, or hate comparison is published, but the precise formal route and original semantic center remain proposed.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional linguistic interval for a proposed reconstruction, not a dated inscription or speaker community point.'),
(726,184,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and lexicalized *fi(j)and-','The verb was inherited across Germanic, while the present-participial enemy formation had already lexicalized before Gothic according to the cross-branch noun parallels.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval, not an attested spelling date.'),
(727,184,3,'Fourth-century Gothic translation tradition','fijan and fijands translation system','The surviving corpus reflects a translation tradition in which the verb, productive participle, and inherited enemy noun overlap. The 42-token inventory does not equal all Gothic usage.',NULL,NULL,'broad',300,399,'century','The century dates the translation tradition rather than each surviving manuscript or the birth of the lexeme.'),
(728,184,4,'Ravenna','early-sixth-century Codex Argenteus witnesses','Four directly inspected tokens occur in the probable Ravenna codex: infinitive fijan on fol. 33r, j-less fiaiþ on fol. 76v, and ambiguous fijandam on fols. 123r and 143v.',44418100,12203000,'regional',500,525,'range','The interval operationalizes the official early-sixth-century dating; 510 is a representative witness year, not a precise copying date.'),
(729,184,5,'Werden, Ruhr district','sixteenth-century Codex Argenteus custody','The directly inspected codex was known at a Benedictine monastery in Werden. This is evidence-object custody, not word diffusion.',51388000,7004000,'approximate',1500,1599,'century','The official history supplies a century-level custody horizon.'),
(730,184,6,'Prague','imperial custody by 1600 to 1648','The codex was in Emperor Rudolph II’s Prague collection by 1600 and was taken by Swedish forces in 1648.',50075500,14437800,'regional',1600,1648,'range','The dates describe manuscript custody rather than Gothic speech.'),
(731,184,7,'Stockholm','Swedish royal custody after 1648','The codex entered Queen Christina’s library before passing to Isaac Vossius.',59329300,18068600,'regional',1648,1654,'range','The upper bound uses the queen’s abdication as the custody transition horizon.'),
(732,184,8,'Holland custody','Isaac Vossius and acquisition by De la Gardie','Vossius took the manuscript to Holland; Magnus Gabriel De la Gardie later acquired it.',NULL,NULL,'broad',1654,1669,'range','The official history names Holland without reducing the stage to one city or exact transaction date.'),
(733,184,9,'Uppsala University Library','custody since 1669','De la Gardie presented the codex to Uppsala University. Facsimiles expose four inspected tokens while Project Wulfila aligns the wider corpus.',59858600,17638900,'regional',1669,2026,'range','This stage traces evidence preservation and access, not continued Gothic use.'),
(734,184,10,'Knowledge boundary','beyond the proposed Indo-European comparison','No single enemy, hater, harm, blame, suffering, hostility, or feeling origin is promoted beyond the qualified route.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(725,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route.'),
(726,491,'p. 140, *fi(j)ēn- and *fi(j)and-','supports','Publishes the Germanic verb and lexicalized participial noun formations.'),
(726,492,'p. 47 and note 24, pre-Gothic lexicalization and Germanic parallels','supports','Argues that enemy had lexicalized before Gothic.'),
(727,129,'The four gospels in the Gothic language','supports','Dates the translation tradition to the fourth century.'),
(727,487,'Complete 42-token fijan candidate inventory','supports','Locates the verb and overlap forms across the surviving corpus.'),
(727,489,'Complete 26-token fijands candidate inventory','context','Exposes the 21-token noun-versus-participle overlap.'),
(728,129,'The four gospels in the Gothic language','supports','Places probable Codex Argenteus production in early-sixth-century Ravenna.'),
(728,493,'Facsimile 57, fol. 33r','supports','Supplies the inspected infinitive fijan object.'),
(728,494,'Facsimile 96, fol. 76v','supports','Supplies the inspected j-less fiaiþ object.'),
(728,484,'Facsimile 145, fol. 123r','supports','Supplies the inspected Luke 1:71 fijandam object.'),
(728,463,'Facsimile 186, fol. 143v','supports','Supplies the inspected Luke 6:27 fijandam object.'),
(729,129,'Codex argenteus’ journey, Werden paragraph','supports','Documents sixteenth-century custody in Werden.'),
(730,129,'Codex argenteus’ journey, Prague paragraph','supports','Documents imperial custody and the 1648 transfer.'),
(731,129,'Codex argenteus’ journey, Stockholm paragraph','supports','Documents Swedish royal custody.'),
(732,129,'Codex argenteus’ journey, Holland paragraph','supports','Documents Vossius and De la Gardie’s custody stage.'),
(733,129,'Codex argenteus’ journey, 1669 Uppsala presentation','supports','Documents presentation to Uppsala University.'),
(733,487,'Current corpus research interface','context','Connects the preserved objects to the full modern inventory.'),
(734,491,'p. 140, deepest published comparison used here','supports','Supports stopping after the qualified reconstruction.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(410,184,'Does the surviving corpus contain 42 secure verb tokens?','No. Project Wulfila exposes 42 candidates under fijan, but only 13 are verified, eight more are lexically unambiguous but unverified, and 21 are explicitly shared with the fijands noun inventory.','established','The complete lemma pages publish both inventories and their status partitions.','resolved','Every total is labeled candidate inventory, and the 21-token overlap remains visible.'),
(411,184,'Is the infinitive fijan itself written?','Yes, once in the current inventory: John 7:7 writes fijan. The other 41 candidates are inflected forms, and fian is a normalized variant redirect rather than a separately inventoried exact infinitive token.','established','Project Wulfila’s token page and the directly inspected folio 33r independently identify the written form.','resolved','The dossier distinguishes the one written infinitive from the lemma and spelling variants.'),
(412,184,'Are fijan and fian separate Gothic verbs?','No separate lexeme is supported, but the formal history remains analytical. Project Wulfila redirects fian to fijan, Streitberg groups j-bearing and j-less forms, and Sturtevant discusses loss of j in the sequence.','probable','Corpus lemmatization and historical analysis agree on one lexeme while the precise phonological and orthographic development remains reconstructed.','open',NULL),
(413,184,'Is fijands an ordinary participle or a lexical noun meaning enemy?','Both categories exist historically and synchronically. Ayora Estevan derives the noun from a Proto-Germanic lexicalized present participle, then shows Gothic still using fi(j)ands as the productive participle one who hates. Token-level syntax and inflection sometimes distinguish them; many surface forms do not.','probable','Historical word formation, Germanic parallels, and Gothic syntax expose two real analyses rather than one mistaken dictionary entry.','open',NULL),
(414,184,'Can the nd-ending alone distinguish enemy from one who hates?','No. Galatians 4:16 nominative fijands functions as the noun enemy, Romans 11:28 accusative fijandans is analyzed as a participle, and Romans 12:9 fiandans takes an accusative object. Twenty-one other corpus tokens remain explicitly lexically and morphosyntactically ambiguous.','probable','The agent-noun study and Project Wulfila token statuses distinguish contextual disambiguation from surface-form certainty.','open',NULL),
(415,184,'Does fijan map one-to-one to Greek miseō, hate?','No. Verbal contexts commonly translate Greek miseō, but the shared fijand- formation also corresponds to Greek echthros, enemy. Luke 1:71 and Luke 6:27 even reverse the constructional work done by fijan and hatan.','established','Verse-level alignments and the overlapping lemma inventories defeat a timeless one-word translation arrow.','resolved','The dossier records contextual equivalents and token ambiguity instead of a one-to-one lexicon.'),
(416,184,'Did fijan denote only an inward feeling?','No. Ayora Estevan analyzes it as an experience verb whose Experiencer takes a Stimulus as accusative object. Surviving objects include people, one’s soul, one’s flesh, evils, and what one does, so the grammar encodes a relation toward an object rather than a free-floating feeling alone.','established','The study formalizes 23 preserved verbal testimonies and their argument structure.','resolved','The semantic history records the predicate frame without claiming that every context shares one modern psychological model.'),
(417,184,'Was the enemy noun lexicalized only inside Gothic?','No. Ayora Estevan argues for pre-Gothic, Proto-Germanic lexicalization because Old Norse, Faroese, Old English, Old Frisian, Old Dutch, and Old High German preserve parallel enemy nouns.','probable','Cross-Germanic descendants support an inherited lexicalized nd-formation.','resolved','The graph places *fi(j)and- at the Proto-Germanic level and keeps the Gothic noun as its descendant.'),
(418,184,'Do 42 candidate tokens measure spoken Gothic frequency?','No. They measure a bounded, fragmentary textual corpus with duplicate manuscript witnesses, biblical translation effects, and unresolved lemma assignments.','established','The corpus statuses and manuscript inventory define what the count can and cannot measure.','resolved','The interface never calls the total all historical uses or a speech-frequency sample.'),
(419,184,'Does the Codex Argenteus route map the spread of fijan?','No. Werden, Prague, Stockholm, Holland, and Uppsala trace custody of four inspected evidence objects long after Gothic ceased to be a living vernacular in those places.','established','Uppsala University documents manuscript custody; the four records all belong to the same codex.','resolved','Every post-Ravenna journey stage is labeled object custody rather than lexical diffusion.'),
(420,184,'Does fijan securely descend from *peh₁-?','Only as a proposal. The Germanic *fi(j)ēn- comparison is stronger than the deeper route; the exact intermediate morphology and semantic unity of harm, blame, suffering, and hate remain reconstructive.','proposed','Kroonen publishes the deeper analysis, but the evidence does not recover one directly attested PIE word or unique original scene.','open',NULL),
(421,184,'Are fijan and hatan perfect synonyms?','They overlap, but the surviving corpus does not prove identity. In Luke 1 fijandam supplies enemies and hatandane those hating; in Luke 6 hatandans supplies enemies and fijandam those hating. Sturtevant uses their association in a formal argument without proving interchangeable semantics everywhere.','probable','The paired verses show controlled overlap and a lexical swap, not complete synonymy.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(410,487,'Occurrence inventory: 13 verified, eight unambiguous, 21 ambiguous','supports','Defines the 42 candidates and their status partition.'),
(410,489,'Occurrence inventory: five noun-only and 21 shared candidates','supports','Confirms that 21 surface tokens are also candidates under fijands.'),
(411,495,'John 7:7, token fijan and linked facsimile','supports','Identifies the exact written infinitive in the corpus.'),
(411,493,'Folio 33r, line containing fijan','supports','Provides the directly inspected manuscript object.'),
(412,488,'Lemma fian: See fijan','supports','Rejects a separate current corpus lexeme.'),
(412,490,'p. 34, fijan with fian variants','supports','Groups the forms in one historical dictionary entry.'),
(412,486,'pp. 451–452, loss of j in fijan : fian','supports','Publishes the historical formal analysis.'),
(413,492,'pp. 47–49, lexicalized enemy noun and productive present participle','supports','Publishes both categories and their different syntax.'),
(413,489,'Lemma fijands, masculine nd-stem','context','Supplies the synchronic noun entry and overlap inventory.'),
(414,492,'pp. 48–49, Galatians 4:16, Romans 11:28, and Romans 12:9 diagnostics','supports','Shows how case and complementation disambiguate some tokens.'),
(414,487,'Twenty-one not-verified and ambiguous fijand- candidates','supports','Defines the unresolved residue after contextual analysis.'),
(415,483,'Luke 1:71, fijandam aligned with Greek enemies','supports','Documents one contextual mapping.'),
(415,462,'Luke 6:27, fijandam aligned with Greek those hating','supports','Documents the reversed contextual mapping.'),
(416,492,'pp. 48–49, experience-verb predicate frame and object inventory','supports','Formalizes Experiencer and accusative Stimulus across the surviving verbal evidence.'),
(416,496,'John 12:25, fiaiþ with saiwala seina','context','Supplies the directly inspected soul-as-object example.'),
(416,498,'Romans 12:9, fiandans with ubila','context','Supplies the evils-as-object participial example.'),
(417,492,'p. 47 note 24, inherited enemy-noun parallels across Germanic','supports','Supports Proto-Germanic rather than Gothic-only lexicalization.'),
(417,491,'p. 140, *fi(j)and- and descendants','supports','Independently publishes the Germanic formation.'),
(418,487,'Bounded 42-token candidate inventory and verification statuses','supports','Defines the surviving corpus measure.'),
(418,466,'Gothic source and manuscript inventory','context','Documents the fragmentary survival base.'),
(419,129,'Codex argenteus’ journey','supports','Documents the post-copying custody route.'),
(419,493,'Folio 33r facsimile','context','Identifies one inspected object inside that route.'),
(419,494,'Folio 76v facsimile','context','Identifies a second inspected object inside that route.'),
(419,484,'Folio 123r facsimile','context','Identifies the third inspected object inside that route.'),
(419,463,'Folio 143v facsimile','context','Identifies the fourth inspected object inside that route.'),
(420,491,'p. 140, deeper reconstruction of *fi(j)ēn-','supports','Publishes the proposed route while leaving it reconstructive.'),
(421,483,'Luke 1:71, fijandam for enemies and hatandane for those hating','supports','Documents one constructional assignment.'),
(421,462,'Luke 6:27, hatandans for enemies and fijandam for those hating','supports','Documents the reversed assignment.'),
(421,486,'p. 452, semantic association of fijan and hatan','context','Uses overlap in a morphological argument without proving universal synonymy.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(184,184,2096,'fijan','Enemy is a fossilized hater—but 21 Gothic tokens still refuse to choose.','Project Wulfila lists 42 candidates under fijan and 26 under the enemy noun fijands. Their intersection is exactly 21 surface tokens. Ayora Estevan explains the collision: *fi(j)and- had lexicalized as enemy before Gothic, while Gothic still possessed the productive present participle one who hates. Case and syntax resolve some passages; the remaining 21 stay public as noun-versus-participle ambiguity.','A',100,'The counts are bounded to the current Project Wulfila inventories. The claim does not convert every enemy into a synchronically transparent participle, force every overlap token into two historical uses, or infer spoken frequency.');
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
(184,487,'Complete fijan inventory: 42 candidates, including 21 ambiguous','supports','Supplies the verb-side total and overlap status.'),
(184,489,'Complete fijands inventory: 26 candidates, including the same 21 ambiguous tokens','supports','Supplies the noun-side total and confirms the exact intersection.'),
(184,492,'pp. 47–49, Proto-Germanic lexicalization and Gothic noun/participle diagnostics','supports','Explains historically and syntactically why the overlap exists.'),
(184,493,'Folio 33r, exact written infinitive fijan','context','Provides one directly inspected secure verb token.'),
(184,494,'Folio 76v, j-less fiaiþ','context','Provides a second directly inspected secure verb token.'),
(184,484,'Folio 123r, ambiguous fijandam','supports','Provides one directly inspected overlap token.'),
(184,463,'Folio 143v, ambiguous fijandam','supports','Provides a second directly inspected overlap token.'),
(184,486,'pp. 451–452, fijan : fian and the association with hatan','context','Adds the historical form analysis without flattening the token boundary.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(140,184,183,'THE ENEMY IS A FROZEN HATER—UNTIL IT ISN’T','Proto-Germanic lexicalized *fi(j)and- as enemy, but Gothic kept the matching participle alive. Project Wulfila therefore assigns 21 tokens to both fijan and fijands. Luke then deepens the problem: fijan and hatan exchange the roles enemies and those hating across two passages. The family tree has a genuine unresolved fork inside the manuscript record.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1188 AND 1191
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1189,1190) THEN 'proposed' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1188 THEN 'Attested through 42 corpus candidates whose verification and noun-versus-participle statuses remain explicit.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1188 AND 1191;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1005 AND 1007;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1005 AND 1007;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1005 AND 1007;
--> statement-breakpoint

-- Keep the normalized j-less variant, the inherited enemy noun, and its
-- reconstructed lexicalized participle as cited graph-side nodes rather than
-- forcing them into the direct ancestor chain.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:34:fian:attested:sense:hate-class-three-jless-variant',34,'fian','fian','hate-class-three-jless-variant','fian',NULL,'attested','Gothic historical-dictionary normalization',300,600,'j-less variant of fijan','Project Wulfila redirects fian to fijan, and Streitberg groups j-less forms under the same verb. No separate exact corpus infinitive token fian is claimed.','reviewed'),
('node:34:fijands:attested:sense:enemy-lexicalized-nd-noun',34,'fijands','fijands','enemy-lexicalized-nd-noun','fijands',NULL,'attested','Gothic textual tradition',300,600,'enemy; lexicalized masculine nd-stem agent noun','Project Wulfila reports 26 noun candidates, five noun-only and 21 shared with the verb inventory.','reviewed'),
('node:5:fijand:reconstructed:sense:enemy-lexicalized-participle',5,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'lexicalized enemy formation from the hate verb’s present participle','Ayora Estevan argues that Germanic branch parallels require lexicalization before Gothic.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT fian.id,fijan.id,'orthographic_variant','Written Gothic loses j in some fijan forms before a vowel; the historical lemma fian normalizes that j-less surface pattern.','No lexical split is established: both shapes remain one hate verb.','Albert Morey Sturtevant · Project Wulfila editors','probable','The variant relation is secure; its exact phonological timing and orthographic interpretation remain historical analyses.','Within the Gothic textual and scribal tradition.','reviewed'
FROM lexeme_nodes fian,lexeme_nodes fijan
WHERE fian.canonical_key='node:34:fian:attested:sense:hate-class-three-jless-variant'
  AND fijan.canonical_key='node:34:fijan:attested:sense:hate-experience-class-three-verb';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT gothic.id,germanic.id,'inheritance','Gothic fijands continues the Germanic nd-stem formation with regular branch-level adaptation and Gothic inflection.','The already lexicalized agent formation functions as the ordinary noun enemy while remaining formally close to a live participle.','Guus Kroonen · Daniel Ayora Estevan','probable','Cross-Germanic enemy nouns support inheritance; individual Gothic tokens can remain ambiguous with the participle.','Proto-Germanic reconstruction into the Gothic textual tradition.','reviewed'
FROM lexeme_nodes gothic,lexeme_nodes germanic
WHERE gothic.canonical_key='node:34:fijands:attested:sense:enemy-lexicalized-nd-noun'
  AND germanic.canonical_key='node:5:fijand:reconstructed:sense:enemy-lexicalized-participle';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT enemy.id,verb.id,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'
FROM lexeme_nodes enemy,lexeme_nodes verb
WHERE enemy.canonical_key='node:5:fijand:reconstructed:sense:enemy-lexicalized-participle'
  AND verb.canonical_key='node:5:fijen:reconstructed:sense:hate-experience-proto-germanic-verb';
--> statement-breakpoint

-- Semantic overlap joins the Gothic hate family without pretending that one
-- verb is the historical parent of the other.
INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT fijan.id,hatan.id,'translation_overlap','No sound descent is claimed. The edge records two distinct Gothic class-III verbs used in overlapping translation constructions.','Across Luke 1:71 and 6:27, fijan and hatan exchange the roles enemies and those hating.','Project Wulfila editors · Albert Morey Sturtevant','probable','The paired lexical swap is established; perfect synonymy outside those passages is not.','Synchronic fourth-century Gothic translation system preserved in an early-sixth-century manuscript.','reviewed'
FROM lexeme_nodes fijan,lexeme_nodes hatan
WHERE fijan.canonical_key='node:34:fijan:attested:sense:hate-experience-class-three-verb'
  AND hatan.canonical_key='node:34:hatan:attested:sense:hate-class-three-verb';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,488,'Lemma fian redirects to fijan','supports','Treats the j-less variant as the same lexeme.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:34:fian:attested:sense:hate-class-three-jless-variant' AND edge.relation_type='orthographic_variant';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,486,'pp. 451–452, loss of j in fijan : fian','supports','Publishes the historical formal analysis.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:34:fian:attested:sense:hate-class-three-jless-variant' AND edge.relation_type='orthographic_variant';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,492,'p. 47 and note 24, Gothic fijands from Proto-Germanic *fi(j)and-','supports','Publishes the inherited lexicalized enemy formation.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:34:fijands:attested:sense:enemy-lexicalized-nd-noun' AND edge.relation_type='inheritance';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,491,'p. 140, *fi(j)and- and Germanic descendants','supports','Independently publishes the reconstructed formation and branch forms.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:34:fijands:attested:sense:enemy-lexicalized-nd-noun' AND edge.relation_type='inheritance';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,492,'p. 47, lexicalized present participle from *fi(j)ēn-','supports','Publishes the verb-to-enemy derivation and pre-Gothic lexicalization.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:5:fijand:reconstructed:sense:enemy-lexicalized-participle' AND edge.relation_type='lexicalized_participle';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,483,'Luke 1:71, fijandam for enemies and hatandane for those hating','supports','Documents one side of the lexical swap.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:34:fijan:attested:sense:hate-experience-class-three-verb' AND edge.relation_type='translation_overlap';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,462,'Luke 6:27, hatandans for enemies and fijandam for those hating','supports','Documents the reversed side of the lexical swap.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:34:fijan:attested:sense:hate-experience-class-three-verb' AND edge.relation_type='translation_overlap';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,486,'p. 452, semantic association of fijan and hatan','context','Uses the overlap in a historical morphological argument without proving total synonymy.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:34:fijan:attested:sense:hate-experience-class-three-verb' AND edge.relation_type='translation_overlap';
