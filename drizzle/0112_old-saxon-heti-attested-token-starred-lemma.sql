-- Promote Old Saxon heti while preserving the difference between an attested
-- written surface and Köbler's starred normalized citation form hėti*. The
-- dictionary's count of three denotes three lexical loci, while Heliand 1322
-- alone is reported in manuscripts M, C, and V. Together with Genesis 60 and
-- the Saxon Confession genitive hetias, the inventory contains five witness
-- readings. Only the Munich Heliand token was directly inspected here.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(207,'heti','heti','heti','not directly recoverable','Old Saxon masculine i-stem noun','Old Saxon heti is an attested noun, not a reconstructed Proto-Germanic form. Köbler prints the normalized citation form hėti* with a trailing asterisk, then gives three cited lexical loci whose inflections produce five witness readings: accusative singular heti at Heliand 1322 in manuscripts M, C, and V; dative singular heti at Genesis 60; and genitive singular hetias in the tenth-century Saxon Confession. No nominative singular appears in that inventory, but the exact surface heti is visibly written in Munich Cgm 25. The directly inspected Heliand line places the noun in the Beatitudes, where righteous people endure rîkioro manno heti endi harmquidi, powerful men''s hostility or persecution and hostile speech. The Saxon Confession instead places hetias beside malice, envy, and slander among confessed wrongs. Those contexts establish a range broader than one private feeling without proving that persecution was the prehistoric root meaning. Fulk and Köbler analyze the Old Saxon comparison as an i-stem; Pfeifer describes the wider Germanic noun as an old es/os-stem, so the inherited morphological account remains public rather than falsely harmonized.','The token is attested even though the dictionary headword wears an asterisk. Köbler''s hėti* is a starred normalized citation form over written heti and hetias, and its count of three expands to five witness readings because one Heliand locus survives in three manuscripts.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(598,'mdz-cgm25-scan41-heti','Heliand — BSB Cgm 25, scan 41, folio 20r, heti locus','Bayerische Staatsbibliothek · Münchener DigitalisierungsZentrum',875,'Bayerische Staatsbibliothek','https://www.digitale-sammlungen.de/en/view/bsb00026305?page=41',NULL,'digitized_primary_source'),
(599,'awb-haz-hetias-saxon-confession','Althochdeutsches Wörterbuch — haz, Old Saxon hetias in the Saxon Confession','Saxon Academy of Sciences in Leipzig · Trier Center for Digital Humanities',2026,'Saxon Academy of Sciences in Leipzig','https://awb.saw-leipzig.de/AWB?lemid=H00982',NULL,'historical_dictionary'),
(600,'ut-pie-kad-reflex-page','Indo-European Lexicon — k̑ād- : k̑ədes- : k̑əd-s- and its reflexes','Linguistics Research Center editors',2026,'The University of Texas at Austin','https://lrc.la.utexas.edu/lex/master/0806',NULL,'research_database');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1322,207,92,1,'heti','heti','hate-hostility-persecution-old-saxon','heti',NULL,'attested','Old Saxon Heliand, Genesis, and Saxon Confession record',830,999,'hate, hostility, enmity, or persecution','Köbler lists accusative and dative singular heti plus genitive singular hetias beneath the starred normalized headword hėti*. The surface heti is directly visible at Heliand 1322 in Cgm 25; the exact historical pronunciation, unattested nominative citation form, first use, and full semantic distribution are not recovered.'),
(1323,207,5,2,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','Fulk directly compares Old Saxon heti and Old English hete as i-stems with Gothic hatis, which he says transferred to the a-stems. Köbler prints Germanic *hati-, *hatiz; Pfeifer instead describes the wider noun as an old es/os-stem. The atlas reuses its established cross-source node and preserves that analysis dispute.'),
(1324,207,6,3,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. Neither the Heliand persecution context nor the confession inventory recovers one prehistoric emotional or action scene.'),
(1325,207,6,4,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','This is a comparative reconstruction rather than an attested form. The semantic unity of grief, care, pain, battle, hostility, persecution, and hatred remains disputed.'),
(1326,207,7,5,'UNKNOWN','unknown','heti-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before one Old Saxon context, one stem-class analysis, or one modern gloss is declared the certain essence of the whole family.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1116,207,1322,1323,'inheritance','Old Saxon heti is directly compared with the reconstructed Germanic noun represented here as *hatiz-. The inherited h-t frame and i-stem comparison are published; no unattested West Germanic intermediate or falsely precise sound-change date is inserted.','The Germanic hate, anger, enmity, and hostility field continues in an Old Saxon noun whose located contexts include endured persecution or hostile speech and confessed hostility. No one daughter context is promoted as the original meaning.','R. D. Fulk · Gerhard Köbler · Wolfgang Pfeifer · Linguistics Research Center editors','probable','The inherited family is secure, while Fulk and Köbler use an i-stem analysis and Pfeifer calls the wider noun an old es/os-stem. The exact reconstructed morphology is therefore not singular.','Proto-Germanic reconstruction into ninth- and tenth-century Old Saxon textual and manuscript evidence.','reviewed'),
(1117,207,1323,1324,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1118,207,1324,1325,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1119,207,1325,1326,'knowledge_boundary','No older form is promoted beyond the disputed *ḱeh₂d- comparison.','The trail stops before hate, persecution, hostile speech, confession, grief, care, pain, anger, or battle is reverse-engineered into one universal prehistoric essence.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison is strongest inside Germanic; the displayed Indo-European lane remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1116,471,'p. 80, §5.2: Gothic hatis transferred to the a-stems; compare i-stem Old English hete and Old Saxon heti','supports','Directly supplies the inherited i-stem comparison and Gothic remodeling contrast.'),
(1116,592,'hėti* entry: st. M. (i); Germanic *hati-, *hatiz; complete B field','supports','Classifies the Old Saxon noun and publishes the Germanic comparison beneath its starred normalized headword.'),
(1116,518,'Pfeifer etymology: Old Saxon heti and the wider noun as an old es/os-stem','challenges','Preserves a competing inherited stem-class description rather than forcing false agreement.'),
(1116,593,'Old Saxon reflex row heti mapped to k̑ād-','context','Independently places the attested branch form in the comparative family.'),
(1116,600,'Old Saxon heti and wider Germanic reflex table under k̑ād-','context','Displays the branch noun beside Old English, Old High German, Old Norse, and Gothic reflexes.'),
(1117,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the qualified formal comparison and its semantic-transparency problem.'),
(1117,439,'Discussion of proposed non-Germanic cognates and pursuit','challenges','Questions whether the wider proposed family has one secure semantic origin.'),
(1117,473,'p. 101, wider Celto-Germanic HATRED comparison','context','Provides a broader affirmative comparison whose membership remains disputed.'),
(1117,600,'Pokorny etymon k̑ād- : k̑ədes- : k̑əd-s- and reflex table','context','Publishes an additional inherited comparison while labeling the database under active construction.'),
(1118,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(1118,473,'p. 101, reconstructed Indo-European analysis','context','Provides a wider comparative treatment.'),
(1119,436,'Etymology note: semantic relations are far from transparent','supports','Marks the deep comparison as semantically unresolved.'),
(1119,439,'Qualified conclusion on pursuit and the deeper comparison','supports','Supports an explicit endpoint rather than an invented first meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(492,1322,598,'Heliand composition circa 830–840; Munich manuscript second half of the ninth century',875,'Heliand manuscript M, Beatitudes persecution clause','Cgm 25, scan 41, folio 20r; Heliand 1322; line containing rikioro manno heti','endi thurh that tholod rikioro manno heti endi harmquidi','established','manuscript','Bayerische Staatsbibliothek','Cgm 25, fol. 20r','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00041/full/full/0/default.jpg',1,'The full-resolution facsimile was directly inspected against Köbler and the LWL transcription. It verifies written heti inside the persecution-and-hostile-speech clause, not the dotted-e normalized headword, a nominative citation form, first use, exact pronunciation, or deeper ancestry. The numeric year is a representative point inside the cataloged second half of the ninth century.'),
(493,1322,592,'Heliand composition circa 830–840; later Cotton witness',NULL,'Heliand manuscript C, Beatitudes persecution clause','Heliand 1322 C','heti','established','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports the same accusative singular spelling in manuscript C. The Cotton object is cataloged separately, but the exact token pixels were not located and inspected in this review.'),
(494,1322,592,'Heliand composition circa 830–840; Vatican fragment witness date not normalized here',NULL,'Heliand manuscript V, Beatitudes persecution clause','Heliand 1322 V','heti','established','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports the same accusative singular spelling in manuscript V. No exact Vatican folio image was located and inspected for this token, so this remains a source-reported reading.'),
(495,1322,592,'Old Saxon Genesis witness; object date not normalized here',NULL,'Old Saxon Genesis dative occurrence','Genesis 60','heti','established','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports dative singular heti at Genesis 60. The underlying object and full passage were not directly inspected, so this row does not claim a first use, one exact translation, or a complete Genesis semantic context.'),
(496,1322,599,'Saxon Confession, tenth century',950,'Saxon Confession genitive occurrence','S 318,8 = Wa 16,11','ik iuhu nithas endi auunstes, hetias endi bisprakias','established','lexical_corpus_record',NULL,NULL,NULL,0,'The Academy dictionary prints genitive singular hetias and the full confession sequence, while its source key dates the Saxon Confession to the tenth century. The manuscript object itself was not directly inspected; 950 is only a representative point inside that century.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(43,492,'2026-08-27','SET-U editorial review','visual_facsimile','heti','endi thurh that tholod rikioro manno heti endi harmquidi','Bayerische Staatsbibliothek Cgm 25, scan 41, folio 20r, Heliand 1322, line containing rikioro manno heti','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00041/full/full/0/default.jpg','Verifies the written Munich token heti and its immediate pairing with harmquidi in the clause about what righteous people endure. It does not verify the normalized dotted vowel, a nominative citation form, the Cotton or Vatican readings, a first use, an exact pronunciation, a universal definition, or deeper ancestry.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1083,207,'hėtigrim','Old Saxon','an adjective meaning grim, hate-filled, or sharply attacking',592),
(1084,207,'hėtilīk','Old Saxon','a hostile adjective built in the same lexical family',592),
(1085,207,'hėttiand','Old Saxon','the lexicalized enemy agent noun connected with the hate family',592),
(1086,207,'hatōn','Old Saxon','the reviewed weak verb whose normalized paradigm includes hate and pursue',592),
(1087,207,'hōti','Old Saxon','a related hostile or enraged adjective',593),
(1088,207,'haz','Old High German','the collateral masculine noun compared by the Academy dictionary',599),
(1089,207,'hete','Old English','the inherited i-stem noun directly compared by Fulk',471),
(1090,207,'hatis','Gothic','the inherited noun remodeled into Gothic a-stem inflection',471),
(1091,207,'hatr','Old Norse','a Germanic noun comparator in Pfeifer''s family inventory',518),
(1092,207,'hāte / hāt','Middle Low German','later Low German noun forms meaning hate or enmity',592),
(1093,207,'Hass','German','the modern German noun at the end of the High German branch',518),
(1094,207,'hate','English','a modern English reflex in the broader comparative table',600),
(1095,207,'κῆδος','Ancient Greek','a proposed non-Germanic comparator glossed care, grief, or sorrow',600),
(1096,207,'cas','Welsh','a proposed Celtic noun comparator glossed hate',600),
(1097,207,'cath','Old Irish','a proposed Celtic comparator glossed battle',600);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(901,207,1,'Proposed Indo-European linguistic horizon','qualified *ḱeh₂d- and *ḱh₂d-es- comparison','The deepest displayed route is a comparative proposal, not a word tied to one archaeological site.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon attached to a disputed analysis.'),
(902,207,2,'Proto-Germanic linguistic horizon','*hatiz- and competing inherited stem analyses','Cross-Germanic daughter evidence supports the family while the i-stem and es/os-stem descriptions remain visibly distinct.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token or single coordinate.'),
(903,207,3,'Old Saxon Heliand textual horizon','work created circa 830–840; place of poetic origin unknown','Heliand 1322 supplies one lexical occurrence transmitted by three reported manuscript witnesses. A text date is not a manuscript-copy date.',NULL,NULL,'broad',830,840,'range','A work-level dating range distinct from the dates of the surviving objects.'),
(904,207,4,'Corvey catalog attribution','Cgm 25, second half of the ninth century','The directly inspected Munich witness visibly preserves heti at Heliand 1322. The point represents the catalog attribution, not the birthplace of the lexeme.',51778300,9409000,'approximate',850,899,'range','A cataloged manuscript-production interval represented by a bounded approximate point.'),
(905,207,5,'Later Heliand manuscript transmission','Cotton C and Vatican V readings','Köbler reports the same Heliand 1322 spelling in C and V, but neither token was directly inspected and no single shared production point is invented.',NULL,NULL,'broad',850,999,'range','A conservative manuscript-transmission band; individual object dates and places are not collapsed.'),
(906,207,6,'Old Saxon Genesis and Saxon Confession records','dative heti and genitive hetias','The Genesis object remains unresolved here; the Academy source key dates the Saxon Confession to the tenth century. The two records are not treated as one manuscript event.',NULL,NULL,'broad',850,999,'range','A bounded documentary horizon with unequal object-level certainty.'),
(907,207,7,'Middle Low German linguistic continuum','hāte and hāt','Köbler records the later Low German continuation meaning hate or enmity. The stage is a language continuum rather than one travel event.',NULL,NULL,'broad',1200,1650,'range','Conventional Middle Low German continuity, not one exact transfer date.'),
(908,207,8,'Knowledge boundary','beyond the disputed Indo-European comparison','The graph stops before one stem class, one Heliand clause, or one confession list becomes a certain prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(901,436,'Noun etymology and semantic-transparency note','supports','Publishes the qualified formal comparison and its semantic problem.'),
(901,439,'Non-Germanic comparison discussion','challenges','Questions whether the wider proposed family has one origin or meaning.'),
(901,600,'Pokorny etymon and reflex inventory','context','Provides a broader comparative database view whose construction status remains explicit.'),
(902,471,'p. 80, i-stem Old Saxon heti comparison','supports','Publishes the inherited i-stem analysis.'),
(902,518,'Pfeifer etymology: old es/os-stem','challenges','Publishes the competing wider-family stem description.'),
(902,592,'hėti* entry: Germanic *hati-, *hatiz','context','Publishes the dictionary''s Germanic comparison.'),
(903,592,'hėti* entry: Heliand 1322 M C V','supports','Supplies the three reported manuscript readings at one lexical locus.'),
(903,596,'Heliand lines 1299–1325','context','Publishes the line-level Old Saxon context in a scholarly transcription.'),
(904,598,'Cgm 25 item and full-resolution scan 41, folio 20r','supports','Supplies the manuscript identity, catalog chronology, and directly inspected token image.'),
(905,592,'Heliand 1322 M C V inventory','supports','Reports the C and V readings while leaving their exact folio images uninspected.'),
(905,597,'Cotton Caligula A VII Heliand catalog','context','Supplies a separate catalog layer for the C manuscript without proving its exact token.'),
(906,592,'Genesis 60 dative singular heti and BSp genitive singular hetias','supports','Reports both smaller-text loci and their grammatical forms.'),
(906,599,'Saxon Confession source key: tenth century; S 318,8 = Wa 16,11','supports','Dates and quotes the confession record without claiming direct manuscript inspection.'),
(907,592,'hėti* entry: Middle Low German hāte, hāt','supports','Publishes the later Low German continuations.'),
(908,436,'Semantic relations are far from transparent','supports','Marks the deep comparison as unresolved.'),
(908,439,'Qualified conclusion','supports','Supports stopping rather than selecting one convenient origin.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(732,207,'Is Old Saxon heti itself attested?','Yes. Köbler reports accusative and dative singular heti, and the exact Munich Heliand 1322 token is visible in Cgm 25 folio 20r.','established','The dictionary inventory, scholarly transcription, and directly inspected primary object converge on the written surface.','resolved','The dossier headword is the attested surface heti, not the dotted normalized citation form or a Proto-Germanic reconstruction.'),
(733,207,'Is Köbler''s hėti* a prehistoric proto-form?','No. It is the starred normalized headword of an Old Saxon dictionary entry whose own B field lists written Old Saxon heti and hetias; the entry separately labels Germanic *hati-, *hatiz as its etymology.','established','The source keeps its Old Saxon headword layer and Germanic reconstruction layer distinct.','resolved','SET-U does not move a source''s trailing headword star backward in time.'),
(734,207,'Does the trailing star specifically mean that the nominative singular is unattested?','That is a plausible reading because Köbler lists only accusative, dative, and genitive evidence, but no explicit legend defining this exact trailing star was located in the reviewed source.','probable','The inflectional inventory is explicit; the full typographic convention remains unstated in the located material.','open',NULL),
(735,207,'Does Köbler''s count three mean three manuscripts?','No. It denotes three lexical loci: Heliand 1322, Genesis 60, and the Saxon Confession. The Heliand locus alone has M, C, and V readings, producing five reported witness readings overall.','established','The Belegzahl, source sigla, line numbers, cases, and manuscript letters are explicit.','resolved','The interface says three loci and five readings, never three manuscripts.'),
(736,207,'Do manuscripts M, C, and V represent three separate Heliand occurrences?','No. Köbler assigns all three readings to the same Heliand 1322 locus. They are separate witnesses to one textual occurrence, not three line-level uses.','established','One verse number is followed by the three manuscript sigla M, C, and V.','resolved','Witness count and lexical-locus count remain separate.'),
(737,207,'Was the Munich heti token directly inspected?','Yes. The full-resolution MDZ image of Cgm 25 scan 41 was visually checked against the dictionary and LWL transcription.','established','A structured inspection record preserves the form, context, locator, artifact, and claim limits.','resolved','Only the Munich Heliand reading is marked directly inspected.'),
(738,207,'Were the Cotton, Vatican, Genesis, and Saxon Confession objects directly inspected?','No. Their readings are source-reported through Köbler or the Academy dictionary; no exact primary-object pixels were inspected for those four rows.','established','The attestation ledger carries no inspection record for any of those witnesses.','resolved','A digital dictionary page is not misrepresented as manuscript inspection.'),
(739,207,'Does the representative year 875 prove a first use of heti?','No. The Heliand work is earlier than the Munich copy, and other witnesses have distinct or unresolved object dates. The numeric year only positions a second-half ninth-century manuscript.','established','Work chronology, object chronology, and lexical first use are different claims.','resolved','No first-known-use claim is made.'),
(740,207,'Does Heliand 1322 use heti only for a private feeling?','No. Köbler gives Latin persecutio for the Heliand use, and the visible clause says righteous people endure powerful men''s heti and harmquidi. The noun functions in an external hostility or persecution setting.','established','The dictionary translation tag, direct image, and line transcription converge on the contextual action field.','resolved','The dossier exposes contextual hostility without claiming that every use means persecution.'),
(741,207,'Does the Heliand persecution context define every use of the noun?','No. Genesis supplies a different grammatical environment, and the Saxon Confession places hetias among confessed wrongs beside malice, envy, and slander. One line cannot define the whole lexeme.','established','Three textual loci preserve distinct constructions and discourse settings.','resolved','The summary states a range and leaves token-by-token translation limits explicit.'),
(742,207,'Does the Saxon Confession really contain genitive singular hetias?','Yes. The Academy dictionary prints hetias as genitive singular at S 318,8 = Wa 16,11 and quotes the full sequence ik iuhu nithas endi auunstes, hetias endi bisprakias.','established','The lemma record and source key independently expose grammar, locator, context, and tenth-century dating.','resolved','The edited record remains source-reported because the underlying manuscript was not inspected.'),
(743,207,'Was Old Saxon heti an i-stem noun?','Köbler classifies it as masculine strong i-stem, and Fulk directly calls Old Saxon heti an i-stem in comparison with Gothic hatis.','established','A historical dictionary and comparative grammar agree on the Old Saxon branch analysis.','resolved','The branch classification is retained even though wider Germanic stem history remains disputed.'),
(744,207,'Is there one uncontested inherited stem-class analysis for the wider noun?','No. Fulk compares Old Saxon heti and Old English hete as i-stems and says Gothic hatis transferred to the a-stems; Pfeifer calls the wider noun an old es/os-stem.','probable','The sources agree on the family but frame its prehistoric morphology differently.','open',NULL),
(745,207,'Is *hatiz- the one exact spoken Proto-Germanic parent?','It is the atlas''s reviewed cross-source representation, not a recording. Köbler prints *hati-, *hatiz, Koch gives *hataz ~ *hatiz-, and Pfeifer''s stem-class description differs.','probable','Comparative notations converge on a family while preserving formal alternatives.','open',NULL),
(746,207,'Was persecution the securely recovered original meaning?','No. The Heliand context supports persecution or endured hostility at one branch locus, but a daughter-language context cannot by itself establish semantic priority in Proto-Germanic or Proto-Indo-European.','established','Contextual evidence and comparative reconstruction operate at different historical levels.','open',NULL),
(747,207,'Can one exact Old Saxon pronunciation of heti be recovered?','No. The reviewed sources supply spellings, editorial vowel notation, grammar, and comparison, but no recorded voice or fully dated phonetic sequence.','established','Written forms and normalized symbols are not audio evidence.','open',NULL),
(748,207,'Can heti be pinned to one exact birthplace?','No. The Heliand poetic origin is unresolved, its witnesses traveled through distinct manuscript contexts, and the Genesis and confession records are not one production event.','established','Textual and object layers do not support one coordinate for the lexeme''s origin.','resolved','Only the Corvey catalog attribution receives an approximate point.'),
(749,207,'Does heti securely descend from *ḱeh₂d-?','Only as a qualified proposal. Formal correspondence is published, but grief, pain, care, battle, hostility, persecution, and hatred do not form one transparent semantic sequence.','probable','Merriam-Webster qualifies the comparison, Liberman challenges its wider unity, and the UT database labels its reflex pages under active construction.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(732,592,'hėti* B field: H Acc. Sg. heti 1322 M C V; Gen Dat. Sg. heti Gen 60','supports','Publishes the exact written surface and inflectional loci.'),
(732,598,'Cgm 25 scan 41, folio 20r, Heliand 1322','supports','Directly verifies the written Munich token.'),
(733,592,'hėti* entry: Old Saxon headword and separate Germanic *hati-, *hatiz etymology','supports','Separates the starred citation-form layer from the older reconstruction layer.'),
(734,592,'hėti* entry: accusative, dative, and genitive inventory without a nominative','supports','Supplies the inflectional fact while not explicitly defining the star convention.'),
(735,592,'Entry count three and complete B field','supports','Provides three loci and five manuscript or text readings.'),
(736,592,'H Acc. Sg. heti 1322 M C V','supports','Assigns three manuscript sigla to one verse locus.'),
(737,598,'Full-resolution Cgm 25 scan 41','supports','Provides the directly inspected artifact.'),
(737,596,'Heliand lines 1299–1325 transcription','context','Supplies a line-level textual control for the visual reading.'),
(738,592,'Heliand 1322 C V and Genesis 60 reports','supports','Supplies source-reported readings without object-level inspection.'),
(738,599,'Saxon Confession hetias record','context','Supplies an edited lexical record rather than inspected manuscript pixels.'),
(739,598,'Item metadata and scan 41','supports','Separates the second-half ninth-century object date from the work and token history.'),
(740,592,'hėti* entry: Latin persecutio for H and quoted Heliand context','supports','Publishes the contextual persecution analysis.'),
(740,598,'Cgm 25 folio 20r, line containing heti endi harmquidi','supports','Directly verifies the noun inside the endured-hostility clause.'),
(740,596,'Heliand 1322 transcription context','context','Places the phrase within the Beatitudes passage.'),
(741,592,'Three-locus inventory across Heliand, Genesis, and BSp','supports','Shows that the lexeme is not evidenced by one context alone.'),
(741,599,'Saxon Confession sequence containing hetias','context','Adds a confessible-wrong context distinct from Heliand persecution.'),
(742,599,'haz entry: hetias gen. sg.; S 318,8 = Wa 16,11; full quotation','supports','Supplies grammar, locator, and exact edited context.'),
(743,592,'hėti* entry: st. M. (i)','supports','Classifies the Old Saxon noun as a masculine i-stem.'),
(743,471,'p. 80, i-stem Old Saxon heti','supports','Independently supplies the comparative branch classification.'),
(744,471,'p. 80, i-stem Old English hete and Old Saxon heti; Gothic transfer to a-stems','supports','Publishes one inherited morphology account.'),
(744,518,'Pfeifer etymology: old es/os-stem','challenges','Publishes the competing wider-family description.'),
(745,592,'Germanic *hati-, *hatiz','supports','Publishes one reconstruction notation.'),
(745,473,'p. 101, Proto-Germanic *hataz ~ *hatiz-','context','Publishes an explicit alternative.'),
(745,518,'Pfeifer etymology: old es/os-stem','challenges','Preserves a different morphological frame.'),
(746,592,'Heliand contextual label persecutio','context','Supports one Old Saxon use without proving prehistoric priority.'),
(746,436,'Semantic relations are far from transparent','supports','Blocks a branch gloss from becoming one root meaning.'),
(747,592,'Written heti and normalized hėti* forms','supports','Supplies orthographic and editorial evidence, not audio.'),
(748,598,'Cgm 25 catalog attribution and witness image','supports','Provides one manuscript location without identifying the lexeme''s origin.'),
(748,597,'Cotton Heliand catalog','context','Adds a separate transmission place and object date.'),
(749,436,'Noun etymology and semantic-transparency note','supports','Publishes and qualifies the Indo-European proposal.'),
(749,439,'Discussion of proposed cognates and pursuit','challenges','Questions the semantic unity and membership of the wider family.'),
(749,600,'Construction notice and k̑ād- reflex table','context','Adds a current comparative database view while explicitly warning that entries may change.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(207,207,2105,'heti','The token is attested even though the dictionary headword wears an asterisk.','Köbler heads the Old Saxon noun hėti* but lists written accusative and dative heti plus genitive hetias beneath it. The exact Munich Heliand token is directly visible in the clause rîkioro manno heti endi harmquidi. The dictionary count three also hides a second distinction: it means three lexical loci, while Heliand 1322 survives with M, C, and V readings, producing five reported witness readings across the dossier. The star therefore belongs to an editorial headword layer; it does not erase the attested surface or turn Old Saxon into Proto-Germanic. The visible Heliand context is endured hostility or persecution, while the Saxon Confession groups hetias with malice, envy, and slander. Even the inherited grammar stays open: Fulk and Köbler use an i-stem analysis, whereas Pfeifer calls the wider noun an old es/os-stem.','A',100,'The exact headword, occurrence count, cases, manuscript sigla, direct Munich pixels, Heliand context, confession phrase, and competing stem descriptions are recoverable. Only the Munich token is directly inspected; the meaning of Köbler''s particular trailing-star convention and the deepest Indo-European comparison remain explicitly open.');
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
(207,592,'hėti* entry: count three; cases; Heliand 1322 M C V; Genesis 60; BSp hetias','supports','Supplies the starred headword layer, three loci, five witness readings, grammar, and semantic range.'),
(207,598,'Cgm 25 scan 41, folio 20r, line containing rikioro manno heti','supports','Directly verifies the attested Munich surface and its immediate phrase.'),
(207,596,'Heliand lines 1299–1325','context','Places the visible token inside the Beatitudes passage.'),
(207,599,'haz entry and Saxon Confession source key','supports','Supplies genitive hetias, its confession context, and tenth-century text date.'),
(207,471,'p. 80, i-stem Old Saxon heti and Gothic a-stem transfer','supports','Publishes the i-stem comparison and a contrasting branch remodeling.'),
(207,518,'Pfeifer etymology: Old Saxon heti and old es/os-stem','challenges','Preserves the competing inherited morphology account.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(163,207,182,'ONE FAMILY, THREE STEM-CLASS STORIES','Old Saxon heti is analyzed as an i-stem by Köbler and Fulk. Gothic hatis is synchronically an a-stem, which Fulk explains as remodeling of inherited i-stem material. Pfeifer describes the wider noun as an old es/os-stem. Follow the shared *hatiz- node to see why one family can be secure while its prehistoric morphology remains a live dispute.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1322 AND 1326
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1323,1324,1325) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1322 THEN 'Attested Old Saxon surface promoted with a complete three-locus and five-reading inventory, one direct manuscript inspection, and an explicit starred-headword distinction.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1322 AND 1326;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1116 AND 1119;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_form_link ON parent_form_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_form_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1116 AND 1119;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1116 AND 1119;
