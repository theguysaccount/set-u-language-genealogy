-- Promote Gothic hatjan without turning a normalized infinitive into a quoted
-- manuscript form. Project Wulfila verifies one class-I token, hatjandam, in
-- Matthew 5:44. A parallel Gospel command uses class-III hatandans from hatan,
-- the dossier preserves the scholarly disagreement over fluctuation versus
-- separate historical formations and directly audits the manuscript pixels.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(181,'hatjan','hatjan','hatjan','/ˈhat.jan/','Gothic class-I weak-verb lemma','A Gothic weak verb meaning hate, represented by exactly one verified corpus token: the present participle hatjandam in Matthew 5:44. Project Wulfila lemmatizes that token as class-I hatjan, while the parallel Luke 6:27 command uses class-III hatandans from hatan. Braune treats the two shapes as conjugational fluctuation; Orel and the current corpus keep distinct formations visible. The normalized infinitive, the written participle, and the reconstructed parent are therefore never collapsed.','One Gothic hate verb survives once—and the surviving token occurs inside a command to do good to those who hate you. A parallel Gospel command uses a different Gothic hate paradigm, so the English gloss hides a real grammatical dispute.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(458,'wulfila-hatjan','Lemma hatjan — Gothic dictionary and occurrence inventory','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/lemma/1304.html',NULL,'research_database'),
(459,'wulfila-matthew-5-44-hatjandam','Gothic Bible word analysis — Matthew 5:44, hatjandam','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/01/05/44.html',NULL,'research_database'),
(460,'codex-argenteus-3v','Codex Argenteus facsimile 6 — folio 3v, Matthew 5:42–47','Uppsala University Library · Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/006mt5f.html',NULL,'digitized_primary_source'),
(461,'wulfila-hatan','Lemma hatan — Gothic dictionary and occurrence inventory','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/lemma/1301.html',NULL,'research_database'),
(462,'wulfila-luke-6-27-hatandans','Gothic Bible word analysis — Luke 6:27, hatandans','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://www.wulfila.be/gothic/browse/text/03/06/27.html',NULL,'research_database'),
(463,'codex-argenteus-143v','Codex Argenteus facsimile 186 — folio 143v, Luke 6:25–30','Uppsala University Library · Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/186lc6f.html',NULL,'digitized_primary_source'),
(464,'braune-balg-gothic-grammar-hate-verbs','A Gothic Grammar with Selections for Reading and a Glossary — hatan and hatjan','Wilhelm Braune · translated and edited by Gerhard H. Balg',1895,'Project Gutenberg edition of the second edition','https://www.gutenberg.org/files/50336/50336-h/50336-h.htm',NULL,'historical_grammar'),
(465,'wright-gothic-grammar-hate-verbs','Grammar of the Gothic Language — glossary entries hatan, hatis, hatizōn, and hatjan','Joseph Wright',1910,'Germanic Lexicon Project digital edition','https://www.germanic-lexicon-project.org/html/goth_wright/b0326.html',NULL,'historical_grammar'),
(466,'archivum-gothicum-2026','Archivum Gothicum: Edition of the Gothic Sources, Volume 1','Carla Falluomini · Pierandrea Gottardi',2026,'Edizioni Ca’ Foscari · Venice University Press','https://edizionicafoscari.unive.it/en/edizioni4/libri/979-12-5742-031-4/','10.30687/979-12-5742-031-4','digital_scholarly_edition');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1171,181,34,1,'hatjan','hatjan','hate-class-one-verb','hatjan','/ˈhat.jan/','attested','Gothic biblical tradition',300,600,'to hate','The lexeme is attested through hatjandam, not through a surviving written infinitive. Project Wulfila identifies one verified token and analyzes it as the weak masculine dative-plural present participle of class-I hatjan.'),
(1172,181,5,2,'*xatjanan','xatjanan','hate-jan-verb-formation','*xatjanan',NULL,'reconstructed','Proto-Germanic',-500,200,'a reconstructed weak verb represented by Gothic hatjan, Old English hettan, and Middle High German hetzen','Orel publishes the class-I comparison and derives it from the Germanic hate-noun base. The displayed form is reconstructed; its x is Orel’s notation for the Germanic fricative often rendered h.'),
(1173,181,5,3,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','Orel writes the corresponding noun base as *xataz ~ *xatez. The graph reuses its established cross-source *hatiz- representation rather than fabricating two ancestors.'),
(1174,181,6,4,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. The surviving Gothic command does not recover one original prehistoric emotional scene.'),
(1175,181,6,5,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','The analytical base remains probable rather than a directly attested word, and the proposed semantic members remain disputed.'),
(1176,181,7,6,'UNKNOWN','unknown','hatjan-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before hate, anger, grief, care, pursuit, or persecution is promoted as the one certain prehistoric origin.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(991,181,1171,1172,'inheritance','The class-I -j- morphology visible in hatjandam supports the normalized infinitive hatjan and corresponds to the reconstructed *-jan- formation; Gothic h continues the Germanic fricative written x in Orel’s notation.','The surviving Gothic clause means hate. The pursuit sense of Middle High German hetzen is a daughter-branch development and is not projected back as the only Gothic meaning.','Vladimir Orel · Wilhelm Braune · Project Wulfila editors','probable','The Gothic lexeme and participial morphology are manuscript-attested; the Proto-Germanic parent and the exact relationship to class-III hatan are reconstructed and disputed.','Proto-Germanic reconstruction into the fourth-century Gothic translation tradition and early-sixth-century manuscript.','reviewed'),
(992,181,1172,1173,'derivation','Orel derives *xatjanan from the Germanic hate-noun base he writes *xataz ~ *xatez; the graph crosswalks that base to its already reviewed *hatiz- representation.','A noun for hate or enmity supplies a weak verb whose attested relatives range from hate to pursuit.','Vladimir Orel · Merriam-Webster Editors','probable','The derivational analysis is published; the exact reconstruction notation differs between sources and is therefore not flattened into false certainty.','Related Proto-Germanic reconstructed formations.','reviewed'),
(993,181,1173,1174,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(994,181,1174,1175,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(995,181,1175,1176,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail ends before the one surviving Gothic token is reverse-engineered into a universal origin for hate, grief, care, pursuit, or persecution.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends at Germanic; the displayed PIE route remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(991,447,'p. 203, *xatjanan: Gothic hatjan, Old English hettan, Middle High German hetzen','supports','Publishes the comparative class-I weak verb and its branch forms.'),
(991,458,'Lemma hatjan, class sw.V.1-j and verified occurrence list','supports','Identifies the Gothic lexeme, its inflection class, and its single verified token.'),
(991,459,'Matthew 5:44, token hatjandam','supports','Analyzes the written participle as weak masculine dative plural under hatjan.'),
(991,464,'§193 note and glossary p. 170, hatjan','context','Treats hatjan as the class-I shape of a verb fluctuating with class-III hatan and derives it from the hatis stem.'),
(991,465,'Glossary p. 326, hatan and hatjan','context','Lists the class-III and class-I verbs separately under the same modern gloss.'),
(992,447,'p. 203, *xatjanan derived from *xataz ~ *xatez','supports','Publishes the noun-to-verb derivation.'),
(992,436,'Noun etymology: Germanic *hatiz-','context','Supplies the atlas’s alternative representation of the corresponding Germanic noun base.'),
(993,436,'Noun etymology and semantic note','supports','Publishes the qualified PIE comparison and its lack of semantic transparency.'),
(993,439,'Non-Germanic comparison and conclusion','challenges','Questions whether the proposed members form one secure semantic family.'),
(994,436,'Reconstructed formation and base','supports','Publishes the two proposed PIE analytical levels.'),
(995,436,'Semantic-transparency note','supports','Marks the deep comparison as nontransparent.'),
(995,439,'Qualified conclusion','supports','Supports stopping rather than inventing a single prehistoric emotional or action scene.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(247,1171,460,'early 6th century',510,'Codex Argenteus, Matthew 5:44','DG 1, fol. 3v; facsimile 6; Matthew 5:44; line containing “þaim hatjandam izwis”','waila taujaiþ þaim hatjandam izwis','established','manuscript','Uppsala University Library','DG 1, fol. 3v','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/006mt5f.jpg',1,'The facsimile pixels were directly inspected against Project Wulfila’s verse-level transcription and morphological analysis. The object verifies inflected hatjandam, not a written infinitive hatjan; 510 is a representative point within the official early-sixth-century manuscript dating, not the translation date or first spoken use.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(24,247,'2026-08-27','SET-U editorial review','visual_facsimile','hatjandam','waila taujaiþ þaim hatjandam izwis','Codex Argenteus DG 1, fol. 3v, facsimile 6, Matthew 5:44, line containing “þaim hatjandam izwis”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/006mt5f.jpg','Verifies the inflected manuscript token hatjandam when the image is aligned with the verse transcription. It does not show the normalized infinitive hatjan, establish the first Gothic use, or prove rarity in spoken Gothic.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(681,181,'hatis','Gothic','the related hate or wrath noun from whose consonantal stem the class-I verb is analyzed',464),
(682,181,'hatan','Gothic','the class-III hate verb used in the parallel Luke 6:27 command',461),
(683,181,'hatizōn','Gothic','a related class-II verb meaning be angry',465),
(684,181,'fijan','Gothic','another Gothic verb for hate or detest, visible beside the enemy noun in Luke 6:27',464),
(685,181,'fijands','Gothic','the Gothic enemy noun paired with hate verbs in the Gospel commands',462),
(686,181,'hettan','Old English','the compared class-I branch whose surviving forms cluster around enemy and persecution',447),
(687,181,'hetzen','Middle High German','the compared High German branch that develops pursuit and hounding senses',447),
(688,181,'hata','Old Norse','a class-III Germanic cognate verb meaning hate',447),
(689,181,'hatia','Old Frisian','a class-III Germanic cognate verb meaning hate',447),
(690,181,'hazzōn','Old High German','a class-III Germanic cognate verb meaning hate',447),
(691,181,'hassen','German','the modern German hate verb beside the class-I action branch',452),
(692,181,'hate','English','a modern cousin reached through the distinct Old English hatian branch',436);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(698,181,1,'Proto-Germanic linguistic horizon','*xatjanan','Gothic hatjan, Old English hettan, and Middle High German hetzen support a comparative class-I weak verb without licensing one archaeological point or directly written Proto-Germanic token.',NULL,NULL,'uncertain',-500,200,'range','A conventional comparative-linguistic interval, not an attested word date.'),
(699,181,2,'Fourth-century Gothic translation tradition','hatjan represented by hatjandam','The surviving verse belongs to the Gothic Gospel translation tradition associated with Wulfila. The fourth-century translation date is distinct from the age of the surviving manuscript.',NULL,NULL,'broad',300,399,'century','The century dates the translation tradition, not the exact moment this lexical choice was coined or first spoken.'),
(700,181,3,'Ravenna','early-sixth-century Codex Argenteus','The purple-vellum Gospel codex preserving Matthew 5:44 was probably copied in Ravenna at the beginning of the sixth century.',44418100,12203000,'regional',500,525,'range','The interval operationalizes the official early-sixth-century dating; 510 is only a representative attestation year.'),
(701,181,4,'Werden, Ruhr district','sixteenth-century manuscript custody','The codex was known in the sixteenth century at a Benedictine monastery in Werden. This is the route of the evidence object, not proof that spoken Gothic traveled with it.',51388000,7004000,'approximate',1500,1599,'century','The official history supplies a century-level custody horizon rather than exact arrival and departure years.'),
(702,181,5,'Prague','imperial custody by 1600 to 1648','By 1600 the codex was in Prague in the hands of Emperor Rudolph II; Swedish forces took it when they stormed the city in 1648.',50075500,14437800,'regional',1600,1648,'range','The bounds describe documented manuscript custody, not lexical use.'),
(703,181,6,'Stockholm','Swedish royal custody after 1648','The codex reached Stockholm as spoil of war and entered Queen Christina’s library before passing to Isaac Vossius.',59329300,18068600,'regional',1648,1654,'range','The upper bound uses the queen’s abdication as the transition horizon described by the official history.'),
(704,181,7,'Holland custody','Isaac Vossius and acquisition by De la Gardie','Vossius took the manuscript to Holland; Magnus Gabriel De la Gardie later bought it and presented it to Uppsala University.',NULL,NULL,'broad',1654,1669,'range','The official history names Holland but does not reduce this custody stage to one city or exact transaction year.'),
(705,181,8,'Uppsala University Library','custody since 1669','De la Gardie presented the codex to Uppsala University in 1669. The modern library and digital editions expose the folio that preserves hatjandam.',59858600,17638900,'regional',1669,2026,'range','This stage traces evidence preservation and access, not continued Gothic speech.'),
(706,181,9,'Knowledge boundary','beyond secure Germanic reconstruction','The proposed Indo-European comparison remains visible, but no single grief, care, anger, pursuit, persecution, or hate origin is promoted.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(698,447,'p. 203, *xatjanan and three branch forms','supports','Publishes the comparative Germanic class-I reconstruction.'),
(699,129,'The four gospels in the Gothic language','supports','Dates the translation tradition to the fourth century and distinguishes it from the surviving codex.'),
(699,459,'Matthew 5:44, token hatjandam','supports','Locates the lexical choice in the surviving Gospel text.'),
(700,129,'The four gospels in the Gothic language','supports','Places probable manuscript production in early-sixth-century Ravenna.'),
(700,460,'Facsimile 6, fol. 3v','supports','Supplies the directly inspected page preserving the token.'),
(700,466,'Codex Argenteus edition metadata and manuscript description','context','Confirms the manuscript identity, repository, and current scholarly-edition context.'),
(701,129,'Codex argenteus’ journey, Werden paragraph','supports','Documents sixteenth-century custody in Werden.'),
(702,129,'Codex argenteus’ journey, Prague paragraph','supports','Documents imperial custody by 1600 and the 1648 transfer.'),
(703,129,'Codex argenteus’ journey, Stockholm paragraph','supports','Documents arrival as Swedish spoil and Queen Christina’s custody.'),
(704,129,'Codex argenteus’ journey, Holland paragraph','supports','Documents Vossius taking the codex to Holland and De la Gardie’s acquisition.'),
(705,129,'Codex argenteus’ journey, 1669 Uppsala presentation','supports','Documents the manuscript’s presentation to Uppsala University.'),
(705,466,'Codex Argenteus digital edition and image credits','context','Documents current scholarly access and Uppsala image provenance.'),
(706,436,'Semantic-transparency note','supports','Marks the deeper comparison as semantically opaque.'),
(706,439,'Qualified conclusion and comparison discussion','supports','Supports stopping beyond the secure Germanic family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(384,181,'Is the infinitive hatjan itself written in the surviving manuscript?','No. The directly inspected form is hatjandam, a weak masculine dative-plural present participle. Hatjan is the normalized lexical citation form assigned by Project Wulfila and the historical grammars.','established','The current corpus links its only verified occurrence to Codex Argenteus folio 3v and supplies the morphology.','resolved','The dossier labels the lexeme attested through an inflected token and never quotes the infinitive as manuscript text.'),
(385,181,'Are hatjan and hatan two Gothic verbs or one fluctuating paradigm?','The located scholarship does not collapse to one answer. Project Wulfila gives separate class-I and class-III lemmas; Orel publishes distinct Germanic formations. Braune says hatan fluctuates between class III and class I, and Wright lists both under the same gloss.','probable','Corpus lemmatization, historical grammar, and comparative reconstruction expose different analytical granularity.','open',NULL),
(386,181,'Does one surviving hatjan token prove the verb was rare in spoken Gothic?','No. It proves only that the surviving and currently verified corpus contains one token assigned to this lemma. The fragmentary manuscript record cannot measure ordinary spoken frequency.','established','Project Wulfila’s occurrence inventory is exhaustive for its current corpus, while the manuscript edition documents the severe limits of Gothic textual survival.','resolved','The interface says one verified corpus occurrence, never one historical use or a frequency estimate for speech.'),
(387,181,'Did Gothic hatjan mean pursue because German hetzen later did?','Not in the surviving Gothic clause. Matthew 5:44 uses hatjandam for people who hate; Middle High German hetzen develops pursuit and hounding senses in a daughter branch. The formal comparison does not make every branch share every meaning.','probable','Orel supplies the formal family while Project Wulfila anchors the Gothic context and Liberman argues for action history without erasing branch-specific evidence.','open',NULL),
(388,181,'Was hatjan derived from the Germanic hate noun?','Probably. Braune derives the class-I verb from the consonantal stem of hatis, and Orel derives *xatjanan from *xataz ~ *xatez. The exact reconstructed notation is editorial, but the noun-to-verb analysis is independently published.','probable','Historical grammar and Germanic etymology agree on derivation while using different reconstruction levels.','resolved','The graph presents derivation rather than claiming that one attested Gothic noun token literally precedes the verb token.'),
(389,181,'Does the codex’s route from Ravenna to Uppsala map the spread of spoken Gothic?','No. It maps the custody of the evidence object. The manuscript traveled through Werden, Prague, Stockholm, Holland, and Uppsala long after Gothic ceased to be a living vernacular in those places.','established','Uppsala University documents the custody route; the scholarly edition identifies the manuscripts and repositories.','resolved','Every post-Ravenna journey note explicitly labels manuscript custody rather than lexical diffusion.'),
(390,181,'Does hatjan securely descend from *ḱeh₂d-?','Only probably. The Germanic family is stronger than the deeper proposal; grief, care, mourning, hatred, pursuit, and persecution do not form one transparent semantic sequence, and some proposed cognates may not belong together.','probable','Merriam-Webster qualifies the proposal; Liberman challenges semantic and membership assumptions.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(384,458,'Lemma hatjan and single verified occurrence','supports','Distinguishes the normalized lemma from the written token.'),
(384,459,'Matthew 5:44, morphology of hatjandam','supports','Identifies the token as a present participle rather than an infinitive.'),
(384,460,'Folio 3v, line containing þaim hatjandam izwis','supports','Provides the directly inspected manuscript pixels.'),
(385,458,'Lemma hatjan, sw.V.1-j','supports','Separates the class-I lemma.'),
(385,461,'Lemma hatan, sw.V.3 and two occurrences','supports','Separates the class-III lemma.'),
(385,463,'Folio 143v, Luke 6:27, line containing “þans hatandans izwis”','context','Provides the visually inspected parallel manuscript page for the class-III form.'),
(385,464,'§193 note: hatan fluctuates with class-I hatjan','challenges','Treats the forms as conjugational fluctuation.'),
(385,447,'p. 203, separate *xatjanan and *xatēnan ~ *xatōjanan entries','context','Publishes distinct comparative formations.'),
(386,458,'Occurrence inventory: one verified Matthew 5:44 token','supports','Defines the bounded surviving-corpus claim.'),
(386,466,'Manuscript inventory and digital-edition project description','context','Documents that Gothic survives through a limited manuscript corpus.'),
(387,459,'Matthew 5:44, hatjandam in the hate clause','supports','Anchors the Gothic branch meaning in its surviving context.'),
(387,447,'p. 203, Gothic hatjan “hate” and Middle High German hetzen “pursue”','supports','Shows branch-specific glosses inside the formal comparison.'),
(387,439,'Germanic hate, pursuit, and persecution discussion','context','Develops an action-centered hypothesis while preserving uncertainty.'),
(388,464,'Glossary p. 170, hatjan derived from the consonantal stem of hatis','supports','Publishes the Gothic noun-to-verb derivation.'),
(388,447,'p. 203, *xatjanan derived from *xataz ~ *xatez','supports','Publishes the comparative Germanic derivation.'),
(389,129,'Codex argenteus’ journey','supports','Documents manuscript custody from Werden to Uppsala.'),
(389,466,'Manuscript and repository inventory','context','Frames the digital edition as evidence-object access rather than a speech map.'),
(390,436,'Noun etymology and semantic note','supports','Publishes the PIE proposal with an explicit qualification.'),
(390,439,'Non-Germanic comparison and conclusion','challenges','Questions the semantic unity and membership of the deeper comparison.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(181,181,2093,'hatjan','One Gothic hate verb survives once—in a command to do good to those who hate you.','Project Wulfila’s only verified hatjan token is hatjandam in Matthew 5:44, directly visible on Codex Argenteus folio 3v. A parallel “love your enemies” command in Luke 6:27 instead uses hatandans from class-III hatan. The translation gloss “hate” therefore hides a genuine grammatical and historical dispute.','A',100,'The claim is bounded to the currently verified surviving corpus. It does not infer spoken frequency, claim that the infinitive is written, or turn the parallel paradigms into a settled two-verb verdict.');
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
(181,458,'Lemma hatjan, single verified occurrence','supports','Bounds the claim to one currently verified corpus token.'),
(181,459,'Matthew 5:44, hatjandam and morphology','supports','Locates and analyzes the surviving class-I token.'),
(181,460,'Folio 3v, line containing þaim hatjandam izwis','supports','Provides the directly inspected manuscript object.'),
(181,461,'Lemma hatan, two occurrence inventory','context','Documents the distinct class-III corpus lemma.'),
(181,462,'Luke 6:27, hatandans','supports','Supplies the parallel Gospel command in the other paradigm.'),
(181,464,'§193 note and glossary p. 170','challenges','Preserves the historical-grammar analysis of conjugational fluctuation.'),
(181,447,'p. 203, separate Germanic verb formations','context','Preserves the comparative analysis that separates the branches.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(137,181,178,'LOVE YOUR ENEMIES HIDES TWO HATE VERBS','Matthew 5:44 writes hatjandam under class-I hatjan; Luke 6:27 writes hatandans under class-III hatan. Braune calls that fluctuation, while Orel separates *xatjanan from the *xatēnan ~ *xatōjanan branch behind Old English hatian. The English gloss is simpler than the evidence. Two manuscript forms keep the disagreement alive.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1171 AND 1176
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1173,1174,1175) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1171 THEN 'Attested through directly inspected hatjandam; no written infinitive token is claimed.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1171 AND 1176;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 991 AND 995;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 991 AND 995;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 991 AND 995;
