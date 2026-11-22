UPDATE `forms`
SET `step_order`=`step_order`+100
WHERE `entry_id`=28 AND `step_order`>=2;
--> statement-breakpoint

UPDATE `forms`
SET `step_order`=`step_order`-99
WHERE `entry_id`=28 AND `step_order`>=102;
--> statement-breakpoint

UPDATE `lexeme_nodes`
SET `canonical_key`='boundary:28:9'
WHERE `id`=179 AND `canonical_key`='boundary:28:8';
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(411,28,1,2,'science','science','branch-of-knowledge',NULL,NULL,'attested','16th–18th centuries',1500,1799,'an organized body or branch of knowledge','This Early Modern English stage closes the previous gap between medieval knowledge and the modern scientific-method center. Harris directly witnesses the branch-of-knowledge sense in 1704.');
--> statement-breakpoint

INSERT INTO `lexeme_nodes` (`id`,`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
(392,'node:1:science:attested:sense:branch-of-knowledge',1,'science','science','branch-of-knowledge',NULL,NULL,'attested','16th–18th centuries',1500,1799,'an organized body or branch of knowledge','An Early Modern English semantic stage directly witnessed in Harris’s 1704 definition of a system of philosophy.','reviewed');
--> statement-breakpoint

INSERT INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`) VALUES
(411,392,'established','Canonicalized as the Early Modern English branch-of-knowledge sense directly witnessed in 1704.');
--> statement-breakpoint

UPDATE `relations`
SET
  `parent_form_id`=411,
  `sound_change`='The Early Modern spelling science continues as modern /ˈsaɪəns/ with pronunciation stabilization.',
  `semantic_change`='An organized branch or body of knowledge narrows in prominent modern use toward systematic and especially natural knowledge tested through scientific method.',
  `confidence_note`='Older general and branch-of-knowledge senses remain available; specialization is not total replacement.',
  `chronology_note`='The natural-science center becomes dominant in the modern period.'
WHERE `id`=157;
--> statement-breakpoint

UPDATE `lexeme_edges`
SET
  `parent_node_id`=392,
  `sound_change`='The Early Modern spelling science continues as modern /ˈsaɪəns/ with pronunciation stabilization.',
  `semantic_change`='An organized branch or body of knowledge narrows in prominent modern use toward systematic and especially natural knowledge tested through scientific method.',
  `confidence_note`='Older general and branch-of-knowledge senses remain available; specialization is not total replacement.',
  `chronology_note`='The natural-science center becomes dominant in the modern period.'
WHERE `id`=162;
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(341,28,411,185,'historical_continuation','Middle English science / cience stabilizes as Early Modern science.','Knowledge and learning remain broad while an organized branch or body of knowledge becomes a salient application.','Merriam-Webster Editors · John Harris','established','The 1704 printed witness establishes this historical sense in use; it does not date the sense’s beginning.','Middle English into Early Modern English; the branch-of-knowledge sense is directly witnessed in 1704.','reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(341,86,'Definitions and etymology','supports','Documents the older knowledge and branch-of-learning range against the modern systematic and natural-science center.'),
(341,100,'Image [812], left column, SYSTEM entry, “System of Philosophy”; e-rara content image 2867876','supports','Directly witnesses Science meaning an organized branch of knowledge in Harris’s 1704 English dictionary.');
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`id`,`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(363,392,175,'historical_continuation','Middle English science / cience stabilizes as Early Modern science.','Knowledge and learning remain broad while an organized branch or body of knowledge becomes a salient application.','Merriam-Webster Editors · John Harris','established','The 1704 printed witness establishes this historical sense in use; it does not date the sense’s beginning.','Middle English into Early Modern English; the branch-of-knowledge sense is directly witnessed in 1704.','reviewed');
--> statement-breakpoint

INSERT INTO `relation_edge_links` (`relation_id`,`edge_id`) VALUES
(341,363);
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(363,86,'Definitions and etymology','supports','Documents the older knowledge and branch-of-learning range against the modern systematic and natural-science center.'),
(363,100,'Image [812], left column, SYSTEM entry, “System of Philosophy”; e-rara content image 2867876','supports','Directly witnesses Science meaning an organized branch of knowledge in Harris’s 1704 English dictionary.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(94,8,100,'1704',1704,'John Harris’s Lexicon technicum prints ETYMOLOGY as a headword and defines it as the part of grammar concerned with words’ origins and true signification.','Image [321], right column, entry ETYMOLOGY; e-rara content image 2867385','ETYMOLOGY, is that part of Grammar, which teaches the Original of Words, in order the better to distinguish and establish their true Signification.','established','printed_book','ETH-Bibliothek Zürich','Rar 98 Ex.A GF, content image 2867385','https://www.e-rara.ch/zut/content/zoom/2867385?query=ETYMOLOGY',1,'The e-rara page image was directly inspected. It verifies the ETYMOLOGY headword and opening definition in Harris’s 1704 English dictionary; it is not claimed as the earliest English occurrence and does not by itself prove the deeper Greek or reconstructed ancestry.'),
(95,50,100,'1704',1704,'John Harris’s Lexicon technicum prints the historical English headword LOGICK and opens by calling it the art of right thinking.','Image [491], entry LOGICK; e-rara content image 2867555','LOGICK, is the Art of Right Thinking, or using our Rational Faculty aright.','established','printed_book','ETH-Bibliothek Zürich','Rar 98 Ex.A GF, content image 2867555','https://www.e-rara.ch/zut/content/zoom/2867555?query=LOGICK',1,'The e-rara page image was directly inspected. It verifies the historical spelling LOGICK and opening definition in 1704; it does not show the modern spelling logic, establish the earliest English occurrence, or prove the deeper Greek and reconstructed ancestry.'),
(96,88,100,'1704',1704,'A passage about the crystalline lens in John Harris’s Lexicon technicum uses the inflected English form collects while describing how the lens gathers and refracts rays.','Image [240], right column, crystalline-lens passage; e-rara content image 2867304','collects and refracts the Rays which strike upon it from all parts','established','printed_book','ETH-Bibliothek Zürich','Rar 98 Ex.A GF, content image 2867304','https://www.e-rara.ch/zut/content/zoom/2867304?query=COLLECT',1,'The e-rara page image was directly inspected. It verifies a contextual 1704 use of inflected collects; it is not a COLLECT headword, is not claimed as the earliest occurrence, and does not prove the deeper Latin or reconstructed ancestry.'),
(97,411,100,'1704',1704,'The SYSTEM entry in John Harris’s Lexicon technicum uses Science for an organized branch of knowledge when defining a system of philosophy.','Image [812], left column, SYSTEM entry, “System of Philosophy”; e-rara content image 2867876','A System of Philosophy, is a Regular Collection of the Principles and Parts of that Science into one Body','established','printed_book','ETH-Bibliothek Zürich','Rar 98 Ex.A GF, content image 2867876','https://www.e-rara.ch/zut/content/zoom/2867876?query=SCIENCE',1,'The e-rara page image was directly inspected. It verifies a contextual 1704 use of Science in the branch-of-knowledge sense; it is not a SCIENCE headword, is not claimed as the earliest occurrence, and does not prove the French, Latin, or proposed reconstructed ancestry.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(12,94,'2026-08-26','SET-U editorial review','visual_facsimile','ETYMOLOGY','ETYMOLOGY, is that part of Grammar, which teaches the Original of Words, in order the better to distinguish and establish their true Signification.','Image [321], right column, entry ETYMOLOGY; e-rara content image 2867385','https://www.e-rara.ch/zut/content/zoom/2867385?query=ETYMOLOGY','Verifies the ETYMOLOGY headword and opening definition in this 1704 English dictionary. It does not establish the earliest English occurrence or prove the deeper Greek and reconstructed ancestry.','reviewed'),
(13,95,'2026-08-26','SET-U editorial review','visual_facsimile','LOGICK','LOGICK, is the Art of Right Thinking, or using our Rational Faculty aright.','Image [491], entry LOGICK; e-rara content image 2867555','https://www.e-rara.ch/zut/content/zoom/2867555?query=LOGICK','Verifies the historical English spelling LOGICK and its opening definition in 1704. It does not show the modern spelling logic, establish the earliest occurrence, or prove the deeper ancestry.','reviewed'),
(14,96,'2026-08-26','SET-U editorial review','visual_facsimile','collects','collects and refracts the Rays which strike upon it from all parts','Image [240], right column, crystalline-lens passage; e-rara content image 2867304','https://www.e-rara.ch/zut/content/zoom/2867304?query=COLLECT','Verifies a contextual use of inflected collects in 1704. It does not establish a COLLECT headword, the earliest occurrence, or the deeper ancestry.','reviewed'),
(15,97,'2026-08-26','SET-U editorial review','visual_facsimile','Science','A System of Philosophy, is a Regular Collection of the Principles and Parts of that Science into one Body','Image [812], left column, SYSTEM entry, “System of Philosophy”; e-rara content image 2867876','https://www.e-rara.ch/zut/content/zoom/2867876?query=SCIENCE','Verifies a contextual use of Science for an organized branch of knowledge in 1704. It does not establish a SCIENCE headword, the earliest occurrence, or the deeper ancestry.','reviewed');
