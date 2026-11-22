-- Promote Gothic hatizōn from the graph-derived evidence-ready queue into a
-- complete dossier. Project Wulfila verifies one corpus token, hatizoþ in
-- John 7:23. The normalized class-II infinitive, its written inflection, the
-- hatis noun base, the Greek translation equivalent, and the proposed deep
-- ancestry remain separate claims. The Codex Argenteus page was directly
-- inspected against the located transcription.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(203,'hatizon','hatizōn','hatizon','not directly recoverable','Gothic class-II weak-verb lemma','A Gothic weak verb meaning be angry with or at someone, represented by exactly one verified corpus token: present active second-person plural hatizoþ in John 7:23. Project Wulfila and Streitberg align the form with Greek χολᾶτε in the question “are you angry at me?” and analyze the verb with a dative object. The University of Texas derivational grammar builds class-II hatizōn on the consonantal stem hatiz- of hatis “hatred” or “wrath”; Wright independently lists it as a class-II weak verb. The macronized infinitive is a scholarly citation form, while the manuscript writes only the inflected token without a vowel-length mark. The route continues through the reviewed Germanic noun family and a qualified Indo-European comparison, then stops. One corpus token cannot establish spoken rarity, first use, a complete semantic range, exact pronunciation, or one prehistoric essence.','One Gothic anger verb survives in one question: hatizoþ, “are you angry at me?” The manuscript writes neither the normalized infinitive hatizōn nor its editorial macron, and the current corpus finds no second token.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(587,'wulfila-hatizon','Lemma hatizon — class-II Gothic verb and one-occurrence inventory','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/lemma/1303.html',NULL,'research_database'),
(588,'wulfila-john-7-23-hatizoth','Gothic Bible word analysis — John 7:23, hatizoþ','Project Wulfila editors · Wilhelm Streitberg',2026,'Project Wulfila · University of Antwerp','https://wulfila.be/gothic/browse/text/02/07/23.html',NULL,'research_database'),
(589,'codex-argenteus-94v','Codex Argenteus facsimile 60 — folio 94v, John 7:22–28','Uppsala University Library · Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/060jh7f.html',NULL,'digitized_primary_source');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1296,203,34,1,'hatizōn','hatizon','be-angry-class-two-verb','hatizōn',NULL,'attested','Gothic biblical tradition',300,600,'to be angry with or at someone','The lexeme is attested through hatizoþ, not through a surviving written infinitive. Project Wulfila identifies one verified token and analyzes it as active indicative present second-person plural. The macron marks scholarly vowel-length analysis rather than a distinct manuscript character.'),
(1297,203,34,2,'hatis','hatis','wrath-hatred-gothic-noun','hatis','/ˈha.tis/','attested','Gothic textual tradition',300,600,'hatred, anger, or wrath','The class-II verb is denominative: the derivational table starts from hatis and its consonantal stem hatiz-. The noun has its own reviewed dossier and a much larger corpus inventory.'),
(1298,203,5,3,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','Fulk compares Gothic hatis with i-stem Old English hete and Old Saxon heti while describing Gothic transfer to the a-stems. Koch publishes *hataz ~ *hatiz-; the atlas reuses its established cross-source *hatiz- representation.'),
(1299,203,6,4,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. The one Gothic anger question does not recover one original prehistoric emotional scene.'),
(1300,203,6,5,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','The analytical base remains probable rather than a directly attested word, and the proposed semantic members remain disputed.'),
(1301,203,7,6,'UNKNOWN','unknown','hatizon-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before anger, wrath, hatred, bile, grief, care, anxiety, persecution, or strong negative emotion is promoted as the one certain prehistoric origin.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1094,203,1296,1297,'derivation','The consonantal stem hatiz- of hatis receives the class-II weak-verb formation represented by the citation form hatizōn and the written second-person plural hatizoþ. The long ō is an editorial phonological representation, not a separate manuscript letter.','A noun for hatred, wrath, or anger supplies a verb whose one surviving context means be angry with or at someone. One token does not establish whether the verb ever carried the noun’s entire semantic range.','Todd B. Krause · Jonathan Slocum · Joseph Wright · Wilhelm Streitberg · Project Wulfila editors','established','Independent grammars publish the denominative class-II formation, and the corpus directly supplies one inflected token. The exact historical moment of derivation is not witnessed.','A Gothic lexical derivation represented in the fourth-century translation tradition and an early-sixth-century manuscript.','reviewed'),
(1095,203,1297,1298,'inheritance','Proto-Germanic *hatiz- is represented by Gothic hatis word-finally and by the stem hatiz- before a vowel-initial ending, visible in hatiza. Gothic then regularizes the inherited i-stem into neuter a-stem inflection.','The inherited anger or hostility noun becomes the Gothic translation choice for Greek wrath vocabulary. That contextual specialization does not prove the noun lacked hatred senses elsewhere.','R. D. Fulk · John T. Koch · Project Wulfila editors','probable','The Gothic forms and paradigm alternation are attested; the Proto-Germanic parent and the direction of prehistoric remodeling are comparative analyses.','Proto-Germanic reconstruction into the fourth-century Gothic translation tradition and surviving sixth-century manuscripts.','reviewed'),
(1096,203,1298,1299,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1097,203,1299,1300,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1098,203,1300,1301,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail ends before the one surviving Gothic anger question is reverse-engineered into a universal origin for anger, hate, grief, care, pursuit, or persecution.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends at Germanic; the displayed PIE route remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1094,472,'Lesson 8, denominative table: hatis, stem hatiz-, hatizōn “be angry”','supports','Publishes the noun, consonantal stem, class-II verb, and semantic derivation in one table.'),
(1094,465,'Glossary p. 326, hatizōn, weak verb II, “to be angry,” §325','supports','Independently lists the normalized verb and its conjugation class.'),
(1094,587,'Lemma hatizon, sw.V.2, one verified occurrence','supports','Identifies the corpus lemma, class, government with the dative, and bounded occurrence inventory.'),
(1094,588,'John 7:23, token hatizoþ and morphology','supports','Supplies the written inflection and present second-person plural analysis.'),
(1094,470,'p. 55, hatizōn and John 7:23','context','Supplies Streitberg’s historical dictionary entry underlying the current lemma record.'),
(1095,470,'p. 55, hatis (z), full case-and-context inventory','supports','Publishes the hatis, hatiza, and hatize paradigm and its Greek translation equivalents.'),
(1095,471,'p. 80, §5.2: hatis transferred to the a-stems; compare i-stem Old English hete and Old Saxon heti','supports','Identifies Gothic a-stem remodeling of an inherited i-stem comparison.'),
(1095,473,'p. 101, HATRED *kad-: Proto-Germanic *hataz ~ *hatiz- and Gothic hatis','supports','Publishes the Germanic reconstruction and branch comparison.'),
(1096,436,'Noun etymology and semantic note','supports','Publishes the qualified PIE comparison and its lack of semantic transparency.'),
(1096,439,'Non-Germanic comparison and conclusion','challenges','Questions whether the proposed members form one secure semantic family.'),
(1096,473,'p. 101, Proto-Indo-European root and Germanic, Celtic, Italic, Iranian, and Greek comparisons','context','Publishes a wider affirmative comparison that remains visibly qualified by competing scholarship.'),
(1097,436,'Reconstructed formation and base','supports','Publishes the two proposed PIE analytical levels.'),
(1098,436,'Semantic-transparency note','supports','Marks the deep comparison as nontransparent.'),
(1098,439,'Qualified conclusion','supports','Supports stopping rather than inventing a single prehistoric emotional or action scene.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(466,1296,589,'early 6th century',510,'Codex Argenteus, John 7:23','DG 1, fol. 94v; facsimile 60; John 7:23; line containing “iþ mis hatizoþ”','iþ mis hatizoþ, unte allana mannan hailana gatawida in sabbato?','established','manuscript','Uppsala University Library','DG 1, fol. 94v','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/060jh7f.jpg',1,'The facsimile pixels were directly inspected against Project Wulfila’s verse transcription and token locator. The object verifies the glyph sequence transcribed hatizoþ in the anger question; it does not itself write the infinitive hatizōn, mark long ō, establish the morphological parse without grammatical analysis, prove a first Gothic use, measure spoken frequency, or recover prehistoric ancestry.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(40,466,'2026-08-27','SET-U editorial review','visual_facsimile','hatizoþ','iþ mis hatizoþ, unte allana mannan hailana gatawida in sabbato?','Codex Argenteus DG 1, fol. 94v, facsimile 60, John 7:23, line containing “iþ mis hatizoþ”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/060jh7f.jpg','Verifies the visible manuscript sequence transcribed hatizoþ when the page is aligned with Project Wulfila’s verse and word analysis. It does not independently establish the normalized infinitive, editorial vowel length, grammatical person and number, first use, complete semantics, exact spoken realization, or reconstructed ancestry.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1024,203,'hatizoþ','Gothic','the only verified corpus token, analyzed as active indicative present second-person plural',588),
(1025,203,'hatis','Gothic','the attested noun whose consonantal stem supplies the class-II verb',472),
(1026,203,'hatiza','Gothic','a vowel-initial noun form that visibly exposes the stem hatiz-',470),
(1027,203,'hatjan','Gothic','a separate class-I denominative from the hatis stem, meaning hate',465),
(1028,203,'hatan','Gothic','a separate class-III hate verb whose exact relation to the denominatives remains disputed',465),
(1029,203,'χολᾶτε','Ancient Greek','the Greek present second-person plural translated by hatizoþ in John 7:23, not a lexical ancestor',588),
(1030,203,'hete','Old English','a cognate noun continuing the Germanic *hatiz- family',436),
(1031,203,'heti','Old Saxon','a cognate noun used in the inherited i-stem comparison',471),
(1032,203,'hatr','Old Norse','a cognate noun in the Germanic hate and enmity family',473),
(1033,203,'Hass','German','a later noun relative connected through the Germanic family, not a descendant of the Gothic verb',436);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(868,203,1,'Proto-Germanic linguistic horizon','*hatiz- noun family','The inherited noun family is reconstructed from attested Germanic comparanda. No archaeological point, single tribe, or attested Proto-Germanic denominative *hatizōn is asserted.',NULL,NULL,'uncertain',-500,200,'range','A conventional comparative-linguistic interval, not a directly dated token.'),
(869,203,2,'Gothic translation tradition','hatizōn represented by hatizoþ in John 7:23','The fourth-century translation selects the class-II verb for Greek χολᾶτε. The translation horizon is distinct from the age of the surviving manuscript and does not prove when the verb was first formed.',NULL,NULL,'broad',300,399,'century','The century dates the Gothic translation tradition, not the exact first use or derivation.'),
(870,203,3,'Ravenna','early-sixth-century Codex Argenteus','The purple-vellum Gospel codex preserving John 7:23 was probably copied in Ravenna at the beginning of the sixth century.',44418100,12203000,'regional',500,525,'range','The interval operationalizes the official early-sixth-century dating; 510 is only a representative attestation year.'),
(871,203,4,'Werden, Ruhr district','sixteenth-century manuscript custody','The codex was known in the sixteenth century at a Benedictine monastery in Werden. This traces the evidence object, not spoken Gothic.',51388000,7004000,'approximate',1500,1599,'century','The official history supplies a century-level custody horizon rather than exact arrival and departure years.'),
(872,203,5,'Prague','imperial custody by 1600 to 1648','By 1600 the codex was in Prague in the hands of Emperor Rudolph II; Swedish forces took it when they stormed the city in 1648.',50075500,14437800,'regional',1600,1648,'range','The bounds describe manuscript custody, not lexical use.'),
(873,203,6,'Stockholm','Swedish royal custody after 1648','The codex reached Stockholm as spoil of war and entered Queen Christina’s library before passing to Isaac Vossius.',59329300,18068600,'regional',1648,1654,'range','The upper bound uses the queen’s abdication as the transition horizon described by the official history.'),
(874,203,7,'Holland custody','Isaac Vossius and acquisition by De la Gardie','Vossius took the manuscript to Holland; Magnus Gabriel De la Gardie later bought it and presented it to Uppsala University.',NULL,NULL,'broad',1654,1669,'range','The official history names Holland but does not reduce this stage to one city or exact transaction year.'),
(875,203,8,'Uppsala University Library','custody since 1669','De la Gardie presented the codex to Uppsala University in 1669. Modern editions expose the folio preserving hatizoþ.',59858600,17638900,'regional',1669,2026,'range','This stage traces evidence preservation and access, not continued Gothic speech.'),
(876,203,9,'Knowledge boundary','beyond secure Germanic reconstruction','The qualified Indo-European comparison remains visible, but no single anger, wrath, hatred, grief, care, bile, persecution, or pursuit origin is promoted.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(868,473,'p. 101, Proto-Germanic *hataz ~ *hatiz- and branch forms','supports','Publishes the comparative Germanic noun family.'),
(869,587,'Lemma hatizon and one-occurrence inventory','supports','Locates the lexical choice in the surviving Gothic textual tradition.'),
(869,588,'John 7:23, hatizoþ aligned with Greek χολᾶτε','supports','Supplies the translation context and written inflection.'),
(869,472,'Lesson 8, denominative hatis → hatiz- → hatizōn table','context','Supplies the grammatical derivation without dating its creation.'),
(870,129,'The four gospels in the Gothic language','supports','Places probable manuscript production in early-sixth-century Ravenna.'),
(870,589,'Facsimile 60, fol. 94v','supports','Supplies the directly inspected page preserving the token.'),
(870,466,'Codex Argenteus edition metadata and manuscript description','context','Confirms the manuscript identity, repository, and scholarly-edition context.'),
(871,129,'Codex argenteus’ journey, Werden paragraph','supports','Documents sixteenth-century custody in Werden.'),
(872,129,'Codex argenteus’ journey, Prague paragraph','supports','Documents imperial custody by 1600 and the 1648 transfer.'),
(873,129,'Codex argenteus’ journey, Stockholm paragraph','supports','Documents arrival as Swedish spoil and Queen Christina’s custody.'),
(874,129,'Codex argenteus’ journey, Holland paragraph','supports','Documents Vossius taking the codex to Holland and De la Gardie’s acquisition.'),
(875,129,'Codex argenteus’ journey, 1669 Uppsala presentation','supports','Documents the manuscript’s presentation to Uppsala University.'),
(875,466,'Codex Argenteus digital edition and image credits','context','Documents current scholarly access and Uppsala image provenance.'),
(876,436,'Semantic-transparency note','supports','Marks the deeper comparison as semantically opaque.'),
(876,439,'Qualified conclusion and comparison discussion','supports','Supports stopping beyond the secure Germanic family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(676,203,'Is the normalized infinitive hatizōn written in the surviving manuscript?','No. The manuscript token is hatizoþ. Hatizōn is the lexicographic citation form reconstructed from the inflectional paradigm and printed by the historical grammars.','established','Project Wulfila links the one written form to its lemma; the directly inspected page verifies the token rather than the infinitive.','resolved','The interface labels the lemma attested through an inflected token and never quotes the infinitive as manuscript text.'),
(677,203,'Does the current Project Wulfila corpus contain exactly one verified occurrence?','Yes. The lemma page lists only John 7:23 hatizoþ. This is a bounded statement about the current surviving corpus, not all historical Gothic.','established','The current lemma record exposes a one-item verified occurrence inventory.','resolved','Every count names the corpus and does not become a speech-frequency claim.'),
(678,203,'What does the surviving token mean in context?','It asks whether the audience is angry at Jesus. Project Wulfila aligns hatizoþ with Greek χολᾶτε and English “are ye angry at me”; Streitberg and Wright gloss the verb with anger rather than a general act of hating.','established','The verse alignment and two historical lexical sources converge on the anger reading.','resolved','The dossier says be angry with or at someone and leaves any unattested broader range open.'),
(679,203,'Was hatizōn formed from hatis?','Yes as the reviewed grammatical analysis. The University of Texas table explicitly gives hatis, stem hatiz-, and hatizōn; Wright independently classifies the verb as weak class II.','established','Two grammatical sources and the corpus inflection class support a denominative formation.','resolved','The graph models derivation from the noun without pretending one surviving noun token chronologically caused the verb token.'),
(680,203,'Does the manuscript write the macron in hatizōn?','No. Gothic spelling on the inspected folio writes hatizoþ without a macron. The macron in the scholarly citation form represents analyzed vowel length.','established','The inspected object and corpus transcription agree on the written token; Wright and the derivational grammar supply the macronized headword.','resolved','Display typography keeps editorial length notation distinct from manuscript characters.'),
(681,203,'Is hatizoþ second-person plural present indicative?','Project Wulfila analyzes it as active indicative present second-person plural. The pixels verify the form, while the grammatical label remains an editorial morphological analysis.','established','The word-analysis page explicitly supplies voice, mood, tense, person, and number.','resolved','The witness note separates visible letters from grammatical interpretation.'),
(682,203,'Is Greek χολᾶτε an ancestor of Gothic hatizōn?','No. It is the Greek source-text form translated by the Gothic verb in John 7:23. Translation equivalence is contextual evidence, not lexical descent or borrowing.','established','The aligned verse shows a Greek-to-Gothic translation relation while the grammatical derivation independently starts from Gothic hatis.','resolved','The Greek form appears as a relative/context record and never as a canonical parent edge.'),
(683,203,'Does one surviving token prove the verb was rare in spoken Gothic?','No. It proves only that the current surviving and verified corpus contains one assigned token. The fragmentary manuscript record cannot measure ordinary speech.','established','Project Wulfila provides a complete current corpus inventory; the scholarly manuscript record documents severe survival limits.','resolved','The leaderboard says one surviving corpus token, never one historical utterance.'),
(684,203,'Is John 7:23 the first Gothic use of the verb?','Not established. The translation belongs to a fourth-century tradition, the surviving codex is early sixth century, and no complete lost-text or spoken-language archive exists.','established','The corpus locates the extant token while manuscript history separates translation and object dates.','open',NULL),
(685,203,'Can one exact spoken pronunciation be recovered?','No recorded voice survives. The macron and grammatical spelling support a historical phonological analysis, but they do not license an audio-like exact realization.','established','Written and grammatical sources provide form and quantity notation without direct acoustic evidence.','open',NULL),
(686,203,'How does hatizōn relate to Gothic hatjan and hatan?','The reviewed sources distinguish class-II hatizōn, class-I hatjan, and class-III hatan. Hatis clearly supports two denominatives, while the precise historical relationship among all three verb systems remains disputed.','probable','Project Wulfila and Wright separate the lemmas; historical and comparative analyses differ in how tightly the paradigms are grouped.','open',NULL),
(687,203,'Does hatizōn securely descend from *ḱeh₂d-?','Only through the noun family’s qualified proposal. The Germanic derivation from hatis is firmer than the deeper comparison, whose grief, care, mourning, love, hatred, and anger fields do not form one transparent sequence.','probable','Merriam-Webster qualifies the proposal; Liberman challenges semantic and membership assumptions.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(676,587,'Lemma hatizon and occurrence hatizoþ','supports','Distinguishes the normalized citation form from the written token.'),
(676,588,'John 7:23, token hatizoþ','supports','Supplies the exact inflected form.'),
(676,589,'Folio 94v, line containing iþ mis hatizoþ','supports','Provides the directly inspected manuscript pixels.'),
(677,587,'Occurrences: one verified John 7:23 token','supports','Defines the bounded current corpus count.'),
(678,588,'John 7:23, Greek χολᾶτε and English are ye angry at me','supports','Anchors the contextual anger reading.'),
(678,465,'Glossary p. 326, hatizōn “to be angry”','supports','Supplies an independent historical-grammar gloss.'),
(678,470,'p. 55, hatizōn and John 7:23','supports','Supplies Streitberg’s lexical gloss and verse locator.'),
(679,472,'Lesson 8, hatis → hatiz- → hatizōn','supports','Publishes the explicit denominative formation.'),
(679,465,'Glossary p. 326, weak verb II','supports','Independently classifies the verb.'),
(679,587,'Lemma hatizon, sw.V.2','supports','Confirms the current corpus inflection class.'),
(680,589,'Folio 94v, visible hatizoþ','supports','Provides the manuscript spelling without an editorial macron.'),
(680,472,'Lesson 8, macronized hatizōn','context','Provides scholarly vowel-length notation.'),
(681,588,'Token morphology: active indicative present second-person plural','supports','Supplies the grammatical parse.'),
(681,589,'Folio 94v, visible token','context','Supports the written form but not the morphology by pixels alone.'),
(682,588,'Aligned Gothic and Greek text in John 7:23','supports','Shows translation equivalence rather than ancestry.'),
(682,472,'Denominative derivation from hatis','supports','Supplies the actual lexical formation.'),
(683,587,'One verified occurrence inventory','supports','Bounds the corpus claim.'),
(683,466,'Gothic source and manuscript inventory','context','Documents the limited surviving record.'),
(684,588,'John 7:23 corpus and manuscript locator','supports','Locates the extant token without calling it first use.'),
(684,129,'Codex Argenteus translation and manuscript history','context','Separates the fourth-century translation from the early-sixth-century object.'),
(685,465,'Macronized glossary form and grammatical class','supports','Provides historical notation without acoustic evidence and therefore supports the stated acoustic limit.'),
(685,589,'Written manuscript token','context','Provides letters rather than recorded speech.'),
(686,472,'Lesson 8, hatis and hatizōn derivation','supports','Identifies the class-II denominative.'),
(686,465,'Glossary entries hatan, hatis, hatizōn, and hatjan','supports','Lists the distinct lexical citation forms and classes.'),
(686,464,'§193 note and glossary p. 170, hatan and hatjan','challenges','Shows a tighter fluctuation analysis for two parts of the broader system.'),
(687,436,'Noun etymology and semantic note','supports','Publishes the PIE proposal with explicit qualification.'),
(687,439,'Non-Germanic comparison and conclusion','challenges','Questions the semantic unity and membership of the deeper comparison.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(203,203,2111,'hatizōn','One Gothic anger verb survives in one question—and not in its dictionary form.','Project Wulfila’s complete current inventory contains one hatizōn token: hatizoþ in John 7:23, “are you angry at me?” Codex Argenteus folio 94v directly preserves the inflection. The manuscript never writes the normalized infinitive or its editorial macron. Grammar then reveals another layer: hatizōn is a class-II verb built from the consonantal stem hatiz- of hatis “hatred” or “wrath.” One English gloss therefore hides a noun-to-verb formation, one surviving grammatical person, and a sharp boundary between pixels and reconstruction.','A',100,'The claim is bounded to the current verified surviving corpus and the directly inspected manuscript page. It does not infer spoken rarity, first use, a complete meaning inventory, exact pronunciation, or secure Indo-European ancestry.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id,ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,evidence_grade ASC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(203,587,'Lemma hatizon, one verified occurrence','supports','Bounds the claim to one current corpus token.'),
(203,588,'John 7:23, hatizoþ and active present second-person plural analysis','supports','Locates and analyzes the surviving form.'),
(203,589,'Codex Argenteus folio 94v, facsimile 60','supports','Provides the directly inspected manuscript object.'),
(203,472,'Lesson 8, hatis → hatiz- → hatizōn derivation table','supports','Supplies the noun-to-verb formation.'),
(203,465,'Glossary p. 326, hatizōn weak verb II “to be angry”','supports','Independently supplies the normalized headword and class.'),
(203,470,'p. 55, hatizōn and John 7:23','context','Connects the historical dictionary entry to the surviving verse.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(159,203,182,'ONE WRATH NOUN BUILT A VERB THAT SURVIVES ONCE','Gothic hatis survives in fifteen wrath and anger tokens; its consonantal stem hatiz- also builds class-II hatizōn, whose entire current corpus is one hatizoþ question in John 7:23. The shared stem is real. The corpus asymmetry is also real. The graph joins the derivation without turning one token into a frequency claim or every noun sense into the verb’s meaning.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1296 AND 1301
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1298,1299,1300) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1296 THEN 'Attested through directly inspected hatizoþ; no written infinitive or manuscript macron is claimed.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1296 AND 1301;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1094 AND 1098;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1094 AND 1098;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1094 AND 1098;
