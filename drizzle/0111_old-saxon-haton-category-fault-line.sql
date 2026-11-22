-- Promote the Old Saxon hate verb while resolving the queue's exact hatan
-- candidate as a written Munich-manuscript variant of the normalized lemma
-- hatōn. Köbler assigns the verb four cited loci but six witness readings are
-- recoverable across manuscript variants and one gloss. The Heliand 4915
-- readings are also indexed under the lexicalized enemy noun hėttiand, so the
-- dossier preserves a verb-to-agent-noun category boundary instead of forcing
-- every surface into one timeless part of speech.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(92,'old-saxon','Old Saxon','Indo-European','West Germanic',0,700,1200,'Attested continental West Germanic language stage represented by the Heliand, Genesis, and smaller monuments; dates are conventional language-period bounds.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(206,'haton','hatōn','haton','not directly recoverable','Old Saxon class-II weak verb','The normalized Old Saxon weak-verb lemma hatōn is supported by a four-locus dictionary inventory: Heliand 1451 writes infinitive hatan in manuscript M and haton in manuscript C; Heliand 4915 writes genitive-plural present-participial hatandiero in M and hettendero in C; manuscript C supplies preterite hatoda at Heliand 5423; and GlG supplies infinitive haton aligned with Latin odisse. Those are six witness readings at four cited loci, not six independent lexemes or four manuscripts. The first Munich infinitive and the Munich hatandiero locus were directly inspected. The category problem is deeper than spelling: Köbler also indexes the Heliand 4915 forms under the separate agent noun hėttiand, enemy. The record therefore exposes the exact point where a live participial form and a lexicalized enemy noun overlap. It does not prove that pursue was the root meaning, that every enemy hates, or that every indexed form belongs unambiguously to one synchronic category.','Old Saxon hate crosses a visible grammatical fault line. One of the four verb loci, hatandiero or hettendero at Heliand 4915, is also indexed under the enemy noun hėttiand: the same written evidence can be read as a present participle, haters, and as a lexicalized agent noun, enemies.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(592,'koebler-old-saxon-haton-hettiand','Altsächsisches Wörterbuch — hatōn and hėttiand','Gerhard Köbler',2014,'Gerhard Köbler, International Germanic Etymological Lexicotheca','https://www.koeblergerhard.de/as/4A/as_h.html',NULL,'historical_dictionary'),
(593,'ut-old-saxon-reflex-index-kad','Old Saxon Reflex Index — hatan, hatōn, heti, and hōti under k̑ād-','Linguistics Research Center editors',2026,'The University of Texas at Austin','https://lrc.la.utexas.edu/lex/languages/OS',NULL,'research_database'),
(594,'mdz-cgm25-scan45-hatan','Heliand — BSB Cgm 25, scan 45, folio 22r, hatan locus','Bayerische Staatsbibliothek · Münchener DigitalisierungsZentrum',875,'Bayerische Staatsbibliothek','https://www.digitale-sammlungen.de/en/view/bsb00026305?page=44,45',NULL,'digitized_primary_source'),
(595,'mdz-cgm25-scan142-hatandiero','Heliand — BSB Cgm 25, scan 142, hatandiero locus','Bayerische Staatsbibliothek · Münchener DigitalisierungsZentrum',875,'Bayerische Staatsbibliothek','https://www.digitale-sammlungen.de/en/view/bsb00026305?page=142',NULL,'digitized_primary_source'),
(596,'lwl-heliand-cgm25-transcription','Heliand Cgm 25 transcription after Schmeller 1830 with Sievers 1878 verse numbering','Johann Andreas Schmeller · Eduard Sievers · Landschaftsverband Westfalen-Lippe',1830,'Landschaftsverband Westfalen-Lippe','https://www.lwl.org/331-download/niw/html/40001B.html',NULL,'digital_scholarly_edition'),
(597,'biblissima-cotton-caligula-a-vii-heliand','London, British Library, Cotton MS Caligula A VII — Heliand and a charm','The British Library, Polonsky Pre-1200 Project · Biblissima',975,'Biblissima+ · British Library','https://iiif.biblissima.fr/collections/manifest/ccd3c0ac642d4bc7d3ddabcf61cc1e6e9a87fe11',NULL,'manuscript_catalog');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1315,206,92,1,'hatōn','haton','hate-pursue-old-saxon-lemma','hatōn',NULL,'attested','Old Saxon Heliand and smaller-monument record',800,1100,'to hate; in lexicographic description, also pursue','Köbler normalizes the class-II weak verb as hatōn and assigns it a four-locus inventory. The macron and lemma shape are editorial normalization rather than one uniquely written manuscript form.'),
(1316,206,92,2,'hatan','hatan','hate-verb-manuscript-spelling','hatan',NULL,'attested','Munich Heliand manuscript, second half of the ninth century',850,899,'to hate in the quoted enemy command; wider paradigm also glossed pursue','The exact infinitive hatan is directly visible in Cgm 25 scan 45 at Heliand 1451. Köbler places it under normalized hatōn beside manuscript-C haton, participial hatandiero or hettendero, preterite hatoda, and a glossarial haton. The exact queue candidate is therefore a represented spelling, not a second lexeme.'),
(1317,206,5,3,'*xatēnan ~ *xatōjanan','xatenan-xatojanan','hate-class-three-reconstruction','*xatēnan ~ *xatōjanan',NULL,'reconstructed','Proto-Germanic reconstruction alternatives',-500,200,'reconstructed weak verbs in the hate and hostility field','Orel publishes this alternation and explicitly includes Old Saxon hatan. Köbler instead prints Germanic *hatōn. The graph reuses the broader reviewed comparative node and keeps the notation disagreement public.'),
(1318,206,5,4,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','The weak verb is grouped with the Germanic hate-noun family represented by Old Saxon heti. Exact formation direction and semantic priority remain reconstructed.'),
(1319,206,6,5,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. Neither the Heliand command nor the agent-noun overlap recovers one prehistoric emotional scene.'),
(1320,206,6,6,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','This is a comparative reconstruction rather than an attested form. Pursuit, persecution, grief, care, pain, hostile action, and hostile feeling remain competing semantic accounts.'),
(1321,206,7,7,'UNKNOWN','unknown','haton-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before one gloss, one category analysis, or one translated command becomes the certain essence of the entire family.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1110,206,1315,1316,'orthographic_variant','The normalized lemma hatōn abstracts over written infinitive hatan in Munich manuscript M and haton in manuscript C. The macron and final-vowel normalization are editorial analyses; this edge does not claim that one token changed directly into the other.','No meaning change is assigned. Both infinitive readings belong to the same reviewed hate verb, while their object dates and manuscript identities remain separate.','Gerhard Köbler · University of Texas Linguistics Research Center · SET-U manuscript review','established','Köbler explicitly prints hatōn as the entry and hatan or haton as the Heliand 1451 manuscript readings. The Munich hatan pixels were directly inspected.','Normalized dictionary lemma over ninth- and tenth-century written evidence.','reviewed'),
(1111,206,1316,1317,'competing_inheritance','Old Saxon h continues the Germanic fricative represented by Orel as x, while the attested ō-class paradigm is compared with reconstructed weak-verb alternatives. Orel prints *xatēnan ~ *xatōjanan; Köbler prints *hatōn.','The inherited Germanic hostility verb continues as Old Saxon hate or, in lexicographic description, pursue. The evidence does not establish pursuit as the one earlier or original meaning.','Vladimir Orel · Gerhard Köbler · University of Texas Linguistics Research Center','proposed','The branch lexeme and cross-Germanic family are secure, but reconstruction notation, weak-verb subclass history, and the semantic center vary by source.','Proto-Germanic reconstruction into the Old Saxon Heliand and gloss record.','reviewed'),
(1112,206,1317,1318,'derivation','Orel groups the weak-verb reconstruction with the Germanic hate-noun base he represents as *xataz ~ *xatez; the graph crosswalks that base to its reviewed *hatiz- node.','A noun family for hate or enmity supplies or associates with weak verbs whose daughter branches express hating, hostility, pursuit, and anger.','Vladimir Orel · Merriam-Webster Editors','probable','The lexical family is secure, but the exact formation of class-III hatan and the direction of any specifically Gothic remodeling remain disputed.','Related Proto-Germanic reconstructed formations rather than independently dated words.','reviewed'),
(1113,206,1318,1319,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1114,206,1319,1320,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1115,206,1320,1321,'knowledge_boundary','No older form is promoted beyond the disputed *ḱeh₂d- comparison.','The trail stops before hate, pursuit, hater, enemy, grief, care, or pain is reverse-engineered into one universal prehistoric act or feeling.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison is strongest inside Germanic; the displayed Indo-European lane remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1110,592,'hatōn entry: H Inf. hatan 1451 M, haton 1451 C','supports','Places both written infinitive readings under the normalized Old Saxon headword.'),
(1110,593,'Old Saxon reflex rows hatan and hatōn under k̑ād-','context','Independently preserves both normalized spellings in the comparative index.'),
(1110,594,'Cgm 25 scan 45, folio 22r, line containing fiund hatan','supports','Directly verifies the Munich manuscript spelling hatan without turning it into a second lexeme.'),
(1111,447,'p. 203, *xatēnan ~ *xatōjanan and Old Saxon hatan','supports','Publishes the reconstructed alternatives and the exact Old Saxon comparative form.'),
(1111,592,'hatōn entry: Germanic *hatōn and Old Saxon paradigm','context','Publishes a second reconstruction notation alongside the attested branch evidence.'),
(1111,593,'Old Saxon reflex rows hatan and hatōn mapped to k̑ād-','context','Places the branch forms in the inherited comparative family.'),
(1112,447,'p. 203, *xataz ~ *xatez beside the weak-verb reconstructions','supports','Publishes the noun and verb formations together.'),
(1112,436,'Noun etymology: Germanic *hatiz- and derived weak verb','context','Supplies the atlas representation of the corresponding Germanic noun base.'),
(1112,592,'hatōn entry: related Old Saxon heti and Germanic analysis','context','Connects the Old Saxon verb to the inherited hate noun within the dictionary.'),
(1113,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal comparison while flagging semantic opacity.'),
(1113,439,'Discussion of proposed non-Germanic cognates and pursuit','challenges','Questions whether the wider proposed family shares one semantic origin.'),
(1113,473,'p. 101, wider Celto-Germanic HATRED comparison','context','Provides a broader affirmative comparison whose membership remains disputed.'),
(1114,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(1114,473,'p. 101, reconstructed Indo-European analysis','context','Provides a wider comparative treatment.'),
(1115,436,'Etymology note: semantic relations are far from transparent','supports','Marks the deep comparison as semantically unresolved.'),
(1115,439,'Qualified conclusion on pursuit and the deeper comparison','supports','Supports an explicit endpoint rather than an invented first meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(486,1316,594,'Heliand composition circa 830–840; Munich manuscript second half of the ninth century',875,'Heliand manuscript M, enemy command','Cgm 25, scan 45, folio 22r; Heliand 1451; line containing fiund hatan','scal is fiund hatan','established','manuscript','Bayerische Staatsbibliothek','Cgm 25, fol. 22r','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00045/full/full/0/default.jpg',1,'The full-resolution facsimile was directly inspected against Köbler and the LWL transcription. It verifies the written infinitive hatan after fiund, not the macronized lemma hatōn, a first use, or a uniquely emotional interpretation. The numeric year is a representative point inside the cataloged second half of the ninth century.'),
(487,1316,592,'Heliand composition circa 830–840; Cotton witness mid or second half of the tenth century',NULL,'Heliand manuscript C, enemy command','Heliand 1451 C','haton','established','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports the manuscript-C infinitive haton at the same verse where M writes hatan. Biblissima independently catalogs Cotton Caligula A VII as an English copy from the middle or second half of the tenth century, but the exact folio pixels were not inspected for this token.'),
(488,1316,595,'Heliand composition circa 830–840; Munich manuscript second half of the ninth century',875,'Heliand manuscript M, arrest scene','Cgm 25, scan 142; Heliand 4915; line containing hatandiero hop','grimma thioda · hatandiero hop','established','manuscript','Bayerische Staatsbibliothek','Cgm 25, scan 142','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00142/full/full/0/default.jpg',1,'The full-resolution facsimile directly verifies hatandiero hop in the arrest scene when aligned with the transcription. It does not by pixels alone decide productive present participle against lexicalized enemy noun; Köbler indexes the same locus under both hatōn and hėttiand. The numeric year is a representative manuscript date.'),
(489,1316,592,'Heliand composition circa 830–840; Cotton witness mid or second half of the tenth century',NULL,'Heliand manuscript C, arrest scene','Heliand 4915 C','hettendero','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports hettendero as the C reading corresponding to M hatandiero and indexes it under both the verb and the enemy noun. The Cotton object was not directly inspected for this token.'),
(490,1316,592,'Heliand composition circa 830–840; Cotton witness mid or second half of the tenth century',NULL,'Heliand manuscript C, preterite locus','Heliand 5423 C','hatoda','established','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports third-person singular preterite hatoda at Heliand 5423 in manuscript C. No underlying page was directly inspected, and this row does not infer a universal emotional state from the inflection.'),
(491,1316,592,'Old Saxon gloss record; exact object date unresolved',NULL,'GlG bilingual gloss','Wa 62, 12b = SAGA 70, 12b; not in Steinmeyer','haton — odisse','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports the infinitive aligned with Latin odisse. The underlying gloss object and its exact date were not directly inspected; one bilingual equivalence is not a complete semantic history.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(41,486,'2026-08-27','SET-U editorial review','visual_facsimile','hatan','scal is fiund hatan','Bayerische Staatsbibliothek Cgm 25, scan 45, folio 22r, Heliand 1451, line containing fiund hatan','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00045/full/full/0/default.jpg','Verifies the written Munich token hatan and its immediate fiund context. It does not verify the normalized macron, the Cotton variant, a first use, one exact modern translation, or deeper ancestry.','reviewed'),
(42,488,'2026-08-27','SET-U editorial review','visual_facsimile','hatandiero','grimma thioda · hatandiero hop','Bayerische Staatsbibliothek Cgm 25, scan 142, Heliand 4915, line containing hatandiero hop','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00142/full/full/0/default.jpg','Verifies the written Munich token hatandiero in the phrase hatandiero hop. It does not settle whether the form is synchronically a productive participle, a lexicalized agent noun, or both; that category claim comes from the dictionary indexing.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1072,206,'hėttiand','Old Saxon','the lexicalized enemy agent noun whose Heliand 4915 forms overlap the verb inventory',592),
(1073,206,'heti','Old Saxon','the inherited hate, hostility, or persecution noun',592),
(1074,206,'hōti','Old Saxon','a related hostile or enraged adjective',592),
(1075,206,'hatul','Old Saxon','an adjective meaning hostile, hate-filled, or hated',592),
(1076,206,'hatulo','Old Saxon','a derivative used for the Devil',592),
(1077,206,'haton','Old Dutch','a collateral West Germanic weak verb form compared by Köbler',592),
(1078,206,'hāten','Middle Low German','the later Low German continuation meaning hate or begrudge',592),
(1079,206,'hazzōn','Old High German','the reviewed High German weak-verb paradigm fault line',447),
(1080,206,'hatian','Old English','the reviewed Old English collateral weak verb',447),
(1081,206,'hata','Old Norse','the reviewed North Germanic collateral verb',447),
(1082,206,'hatan','Gothic','the reviewed Gothic class-III verb represented by two participles',447);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(893,206,1,'Proposed Indo-European linguistic horizon','qualified *ḱeh₂d- and *ḱh₂d-es- comparison','The deepest displayed route is a comparative proposal, not a word tied to one archaeological site.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon attached to a disputed analysis.'),
(894,206,2,'Proto-Germanic linguistic horizon','*xatēnan ~ *xatōjanan beside *hatiz-','Cross-Germanic daughter evidence supports the family while reconstruction notation and semantic priority remain unsettled.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token or single coordinate.'),
(895,206,3,'Old Saxon Heliand textual horizon','work created circa 830–840; place of poetic origin unknown','The Heliand supplies three of the dictionary’s four verb loci. A textual horizon is not a claim that every surviving copy was made at the composition place.',NULL,NULL,'broad',830,840,'range','A work-level dating range distinct from the dates of the surviving manuscript objects.'),
(896,206,4,'Corvey catalog attribution','Cgm 25, second half of the ninth century','The MDZ catalog identifies Corvey and dates the Munich manuscript to the second half of the ninth century. The point represents the catalog attribution, not the birthplace of the lexeme.',51778300,9409000,'approximate',850,899,'range','A cataloged manuscript-production interval represented by a bounded approximate point.'),
(897,206,5,'England, possibly southern England','Cotton Caligula A VII, middle or second half of the tenth century','Biblissima and the British Library catalog the C witness as an English copy, possibly southern, while the three C readings in this dossier remain source-reported.',NULL,NULL,'regional',940,999,'range','A conservative manuscript-copy interval, not the date of Heliand composition or of the spoken word.'),
(898,206,6,'Old Saxon smaller-monument record','GlG haton aligned with Latin odisse','Köbler reports the gloss locus but the reviewed evidence does not securely recover one object date or place.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date is invented for the uninspected gloss object.'),
(899,206,7,'Middle Low German linguistic continuum','hāten','Köbler records the later Middle Low German continuation meaning hate or begrudge. The stage is a language continuum rather than one travel event.',NULL,NULL,'broad',1200,1650,'range','Conventional Middle Low German continuity, not one exact transfer date.'),
(900,206,8,'Knowledge boundary','beyond the disputed Indo-European comparison','The graph stops before hate, pursuit, hater, enemy, grief, care, or pain is declared the one certain prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(893,436,'Noun etymology and semantic-transparency note','supports','Publishes the qualified formal comparison and its semantic problem.'),
(893,439,'Non-Germanic comparison discussion','challenges','Questions whether the wider proposed family has one origin or meaning.'),
(894,447,'p. 203, Germanic noun and weak-verb reconstructions','supports','Publishes the reconstructed family and Old Saxon comparator.'),
(894,592,'hatōn entry: Germanic *hatōn','context','Provides a second reconstruction notation.'),
(895,594,'Item description: work created around 830/840','supports','Supplies the Heliand work-level dating while separating the later Munich copy.'),
(895,596,'Heliand lines 1426–1495 and 4909–4942','context','Publishes the line-level Old Saxon text in a scholarly transcription.'),
(896,594,'Item metadata: Corvey; date second half of the ninth century; shelfmark Cgm 25','supports','Supplies the manuscript attribution, date, and object identity.'),
(897,597,'Description: Heliand ff. 11–175v copied perhaps in England in the middle or second half of the tenth century','supports','Supplies the Cotton witness identity, place range, and manuscript date.'),
(898,592,'hatōn entry: GlG Inf. haton odisse, Wa 62, 12b','supports','Reports the gloss while leaving its directly inspected object layer open.'),
(899,592,'hatōn entry: Middle Low German hāten','supports','Publishes the later Low German continuation.'),
(900,436,'Semantic relations are far from transparent','supports','Marks the deep comparison as unresolved.'),
(900,439,'Qualified conclusion','supports','Supports stopping rather than selecting one convenient origin.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(716,206,'Is hatan the normalized Old Saxon headword?','No. It is the exact manuscript-M infinitive at Heliand 1451. Köbler normalizes the lexeme as hatōn and reports manuscript C haton at the same locus.','established','The dictionary entry and direct Munich image separate lemma normalization from written surface.','resolved','The dossier headword is hatōn; the queue candidate hatan resolves to its own represented variant node.'),
(717,206,'Does Köbler’s count four mean four manuscripts?','No. The entry exposes four cited loci: Heliand 1451, Heliand 4915, Heliand 5423, and one GlG gloss. Manuscript variation yields six displayed witness readings across those loci.','established','The Belegzahl, B field, source sigla, and line numbers are explicit.','resolved','The interface says four loci and six readings, never four manuscripts.'),
(718,206,'Is Heliand 4915 unambiguously a productive present participle?','No. Köbler lists hatandiero or hettendero under the verb hatōn as present participial forms and also under hėttiand, a lexicalized agent noun meaning enemy.','probable','The same dictionary and line references preserve both analyses.','open',NULL),
(719,206,'Is Heliand 4915 unambiguously an enemy noun?','No. The separate hėttiand entry establishes the lexicalized noun analysis, while the verb entry retains the same readings as participial evidence. The surviving phrase alone does not erase the overlap.','probable','Lexicographic double-indexing and the directly inspected hatandiero hop phrase define a genuine category boundary.','open',NULL),
(720,206,'Were the Munich hatan and hatandiero readings directly inspected?','Yes. Full-resolution MDZ images of Cgm 25 scans 45 and 142 were visually checked against the line-level transcription and dictionary inventory.','established','Two structured inspection records preserve the observed forms, contexts, artifacts, and claim limits.','resolved','Only those two Munich readings are marked directly inspected.'),
(721,206,'Were the Cotton haton, hettendero, and hatoda readings directly inspected?','No. Köbler reports the C readings and Biblissima supplies manuscript identity and dating, but their exact folio pixels were not located and inspected in this review.','established','The attestation rows remain source-reported and carry no inspection records.','resolved','Catalog access is not misrepresented as token-level visual verification.'),
(722,206,'Does the Munich manuscript date prove an 875 first use?','No. The manuscript is cataloged to the second half of the ninth century, while the Heliand work is dated circa 830–840. The numeric 875 is only a representative object date for timeline placement.','established','MDZ separates work creation from manuscript date.','resolved','No first-known-use claim is made.'),
(723,206,'Does the Cotton manuscript date equal the Heliand composition date?','No. Biblissima dates the copy to the middle or second half of the tenth century; the Heliand work itself is earlier.','established','The manuscript catalog and MDZ item description provide two different chronological layers.','resolved','Journey and witness records keep text and object clocks separate.'),
(724,206,'Does haton aligned with Latin odisse define the entire verb?','No. It is one bilingual gloss locus. The Heliand supplies distinct syntactic contexts, and a translation equivalent does not recover every sense, construction, or historical stage.','established','Köbler labels the gloss source separately from the Heliand records.','resolved','The gloss remains one source-reported witness, not a universal definition.'),
(725,206,'Did Old Saxon hatōn mean pursue as well as hate?','Köbler lexicographically gives both hassen and verfolgen, so the action range belongs in the record. The four-locus inventory does not by itself assign both readings to every token or establish their chronology.','probable','The dictionary prints the gloss range without a token-by-token semantic distribution.','open',NULL),
(726,206,'Was pursue the securely recovered basic meaning of the root?','No. A daughter-language gloss range cannot establish one Proto-Germanic or Proto-Indo-European basic meaning, and the broader reviewed comparison explicitly remains semantically opaque.','established','Comparative sources distinguish branch evidence from root reconstruction.','resolved','The contrarian claim centers the category boundary, not an origin slogan.'),
(727,206,'Is the Proto-Germanic parent exactly *xatēnan ~ *xatōjanan?','The comparative family is secure, but notation is not singular. Orel prints the alternation while Köbler prints Germanic *hatōn.','probable','Two etymological sources agree on the family but preserve different morphological analyses.','open',NULL),
(728,206,'Was the weak verb formed directly from *hatiz-?','The weak verb and Old Saxon heti belong to the same inherited family, but the exact formation direction and chronology among noun, weak-verb paradigms, and agent noun remain reconstructed.','probable','Orel, Merriam-Webster, and Köbler connect the formations without a dated derivational event.','open',NULL),
(729,206,'Does the hėttiand overlap prove that every enemy is literally a hater?','No. Historical lexicalization explains a word formation, not the psychology of every person denoted by the noun.','established','The agent-noun analysis is linguistic evidence, not an etymological-fallacy license.','resolved','The reveal names the grammatical fossil while rejecting a universal claim about referents.'),
(730,206,'Can hatōn be pinned to one exact birthplace?','No. The Heliand’s poetic place of origin is unknown, the Munich manuscript is cataloged with Corvey, the Cotton witness was copied in England, and the gloss object remains unresolved.','established','The manuscript and edition records preserve distinct production and transmission layers.','resolved','Only the Corvey catalog attribution receives an approximate point.'),
(731,206,'Does hatōn securely descend from *ḱeh₂d-?','Only as a qualified proposal. Formal correspondence is published, but grief, pain, care, mourning, pursuit, hostile action, and hatred do not form one transparent semantic sequence.','probable','Merriam-Webster qualifies the comparison and Liberman challenges its wider semantic unity.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(716,592,'hatōn entry and Heliand 1451 M or C readings','supports','Separates the normalized lemma from written hatan and haton.'),
(716,594,'Cgm 25 scan 45, folio 22r','supports','Directly verifies the exact candidate spelling hatan.'),
(717,592,'Entry count four and complete B field','supports','Provides four cited loci and six manuscript or gloss readings.'),
(718,592,'hatōn B field and hėttiand B field at Heliand 4915','supports','Double-indexes the same readings across verb and lexicalized agent noun.'),
(718,595,'Cgm 25 scan 142, line containing hatandiero hop','context','Directly verifies the Munich written phrase while not deciding category by pixels alone.'),
(719,592,'hatōn and hėttiand entries at Heliand 4915','supports','Publishes the same readings as present-participial verb evidence and as forms of the lexicalized enemy noun.'),
(720,594,'Full-resolution Cgm 25 scan 45','supports','Provides the first directly inspected artifact.'),
(720,595,'Full-resolution Cgm 25 scan 142','supports','Provides the second directly inspected artifact.'),
(721,592,'Heliand 1451 C, 4915 C, and 5423 C reports','supports','Supplies source-reported Cotton readings without object-level inspection.'),
(721,597,'Cotton Caligula A VII catalog and IIIF manifest','context','Supplies manuscript identity and date, not verification of the exact tokens.'),
(722,594,'Item metadata and scan 45','supports','Separates the second-half ninth-century object date from the observed token.'),
(723,597,'Description: Heliand copied in England in the middle or second half of the tenth century','supports','Provides the Cotton object chronology.'),
(723,594,'Item description: Heliand work created around 830/840','context','Provides the distinct work-level chronology.'),
(724,592,'GlG Inf. haton odisse, Wa 62, 12b','supports','Publishes one bilingual gloss locus.'),
(725,592,'hatōn entry glosses hassen, verfolgen','supports','Publishes the branch-level semantic range.'),
(725,596,'Heliand 1451 and 4915 contexts','context','Shows two actual narrative constructions without proving the gloss range for every token.'),
(726,436,'Semantic relations are far from transparent','supports','Blocks a branch gloss from becoming one recovered root meaning.'),
(726,439,'Discussion of pursuit and the wider cognate set','context','Supplies the comparative warning.'),
(727,447,'p. 203, *xatēnan ~ *xatōjanan','supports','Publishes Orel’s reconstruction alternatives.'),
(727,592,'hatōn entry: Germanic *hatōn','context','Publishes a second reconstruction notation.'),
(728,447,'p. 203, noun and weak-verb reconstructions','supports','Groups the formations while preserving alternatives.'),
(728,436,'Verb etymology: derivative from the base of *hatiz-','context','Supplies a more direct analysis for the related Germanic branch.'),
(728,592,'hatōn entry: related heti and hėttiand entries','context','Shows the Old Saxon noun, verb, and agent network.'),
(729,592,'hėttiand entry: enemy agent noun','supports','Establishes the lexicalized linguistic category, not a psychological universal.'),
(730,594,'Item metadata: Corvey and second half ninth century; description notes unknown poetic origin','supports','Separates cataloged manuscript attribution from the place where the poem or lexeme originated.'),
(730,597,'Cotton manuscript place metadata: England, possibly southern England','context','Adds the later English transmission layer.'),
(731,436,'Noun etymology and semantic-transparency note','supports','Publishes and qualifies the Indo-European proposal.'),
(731,439,'Discussion of proposed cognates and pursuit','challenges','Questions the semantic unity and membership of the wider family.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(206,206,2104,'hatōn','Old Saxon hate crosses from verb into enemy noun inside one manuscript locus.','Köbler assigns hatōn four cited loci, but the evidence is not four neat tokens. Heliand 1451 alone varies between Munich hatan and Cotton haton. At Heliand 4915, Munich hatandiero and Cotton hettendero are indexed twice: under the verb as present-participial forms and under hėttiand as the lexicalized agent noun enemy. The Munich hatan and hatandiero pixels are directly inspected. The reveal is therefore grammatical, not mystical: one written formation sits at the boundary between haters and enemies. It does not prove that every enemy hates, that pursue was the first meaning, or that the four-locus dictionary count represents four manuscripts.','A',100,'The exact headword, Belegzahl, paradigm readings, double indexing, manuscript dates, and two Munich pixels are independently recoverable. Cotton token readings and the gloss remain source-reported; category ambiguity remains open rather than being turned into a false verdict.');
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
(206,592,'hatōn and hėttiand entries; Heliand 1451 and 4915 B fields','supports','Supplies the four-locus count, written variants, participial analysis, and duplicate agent-noun indexing.'),
(206,594,'Cgm 25 scan 45, folio 22r, fiund hatan line','supports','Directly verifies the Munich infinitive reading.'),
(206,595,'Cgm 25 scan 142, hatandiero hop line','supports','Directly verifies the Munich category-boundary form and phrase.'),
(206,596,'Heliand 1451 and 4915 transcription contexts','context','Places both readings inside their line-level narrative environments.'),
(206,597,'Cotton Caligula A VII Heliand catalog','context','Supplies the identity and date of the uninspected C witness while not upgrading its token readings.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(162,206,183,'TWO HATE VERBS, TWO PARTICIPIAL FAULT LINES','Old Saxon hatōn reaches hatandiero or hettendero, a Heliand locus indexed both as participial verb evidence and as the enemy noun hėttiand. Gothic hatan survives only in two participles, one of which is substantivized as enemies. Follow the shared Germanic branch to see why a clean English gloss hides different manuscript forms, paradigms, and degrees of lexicalization.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1315 AND 1321
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1317,1318,1319,1320) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1315 THEN 'Normalized Old Saxon lemma promoted with a complete four-locus inventory, six witness readings, two direct manuscript inspections, and an explicit category boundary.' WHEN f.id=1316 THEN 'Exact Munich manuscript spelling represented as a variant inside the hatōn dossier and resolved out of the duplicate candidate queue.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1315 AND 1321;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1110 AND 1115;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1110 AND 1115;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1110 AND 1115;
--> statement-breakpoint

INSERT INTO `candidate_resolutions` (`id`,`form`,`normalized_form`,`language`,`disposition`,`canonical_node_id`,`explanation`,`editorial_status`)
SELECT 2,'hatan','hatan','Old Saxon','represented_variant',node.id,
  'Köbler normalizes the Old Saxon weak verb as hatōn while identifying hatan as the exact Munich-manuscript infinitive at Heliand 1451 and haton as the corresponding Cotton reading. The Munich pixels directly verify hatan, and the reviewed dossier preserves it as an orthographic-variant node inside the same lexeme. Promoting a second Old Saxon hatan dossier would duplicate a written spelling rather than add an independent lexical identity.',
  'reviewed'
FROM lexeme_nodes node
WHERE node.canonical_key='node:92:hatan:attested:sense:hate-verb-manuscript-spelling';
--> statement-breakpoint

INSERT INTO `candidate_resolution_sources` (`resolution_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(2,592,'hatōn entry: H Inf. hatan 1451 M and haton 1451 C','supports','Places the exact candidate spelling and its Cotton counterpart under one normalized Old Saxon verb entry.'),
(2,594,'Cgm 25 scan 45, folio 22r, line containing fiund hatan','supports','Directly verifies hatan as the written Munich form represented by the canonical variant node.'),
(2,593,'Old Saxon reflex rows hatan and hatōn under k̑ād-','context','Independently preserves both spellings in the same comparative root index.');
