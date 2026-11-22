-- Promote Old Saxon hōti as a three-locus, five-reading adjective dossier.
-- Köbler's lexical entry cross-references hatōn but gives a distinct etymology
-- through Germanic *hwōtja- beside *hwōtō "threat" and Pokorny's
-- *kʷē̆d- / *kʷō̆d- "bore, prick, stab" family. The University of Texas
-- instead files hōti with the inherited hate family under k̑ād-. Both routes
-- are therefore shown as competing inheritance hypotheses rather than being
-- silently harmonized. Munich hotie and hotean were directly inspected, the
-- three Cotton readings remain source-reported.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(208,'hoti','hōti','hoti','not directly recoverable','Old Saxon adjective','Old Saxon hōti is a normalized adjective headword supported by three Heliand loci and five reported witness readings: nominative plural hotie in manuscript M and huotia in C at line 5183; accusative singular hotean in M and huotian in C at line 5246; and nominative singular huoti in C at line 5285. The Munich forms hotie and hotean are directly visible in Cgm 25 scans 150 and 152; the three Cotton readings remain source-reported. Köbler nevertheless prints hōti* with a trailing star, so the mark cannot be reduced to “no nominative exists”: the same entry explicitly reports nominative huoti. The deeper genealogy splits. UT groups hōti with the inherited hate family under Pokorny''s k̑ād- “hate, displeasure, uneasiness”; Köbler cross-references hatōn as a headword but gives the adjective a distinct etymology through Germanic *hwōtja- beside *hwōtō “threat” and Pokorny''s *kʷē̆d- / *kʷō̆d- complex “bore, prick, stab,” whose wider reflexes include whetting and inciting. The graph preserves both lanes. It does not turn hostile intent into a timeless essence, infer exact pronunciation from spelling, or pretend that a dictionary cross-reference settles ancestry.','The Old Saxon adjective that looks semantically closest to hate may belong to the family of whetting, pricking, threatening, and inciting instead. The sources disagree: UT files hōti with hate, while Köbler gives it a separate *hwōtja- / *hwōtō / *kʷē̆d- route. Even its trailing star resists the usual shortcut, because nominative huoti is explicitly attested.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(601,'mdz-cgm25-scan150-hotie','Heliand — BSB Cgm 25, scan 150, hotie locus','Bayerische Staatsbibliothek · Münchener DigitalisierungsZentrum',875,'Bayerische Staatsbibliothek','https://www.digitale-sammlungen.de/en/view/bsb00026305?page=150',NULL,'digitized_primary_source'),
(602,'mdz-cgm25-scan152-hotean','Heliand — BSB Cgm 25, scan 152, hotean locus','Bayerische Staatsbibliothek · Münchener DigitalisierungsZentrum',875,'Bayerische Staatsbibliothek','https://www.digitale-sammlungen.de/en/view/bsb00026305?page=152',NULL,'digitized_primary_source'),
(603,'ut-pie-kwed-bore-prick-reflex-page','Indo-European Lexicon — kʷē̆d-, kʷō̆d- and its bore, prick, whet, and incite reflexes','Linguistics Research Center editors',2026,'The University of Texas at Austin','https://lrc.la.utexas.edu/lex/master/1087',NULL,'research_database');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1327,208,92,1,'hōti','hoti','hostile-enraged-old-saxon-adjective','hōti',NULL,'attested','Old Saxon Heliand record',830,999,'hostile, inimical, or enraged','Köbler normalizes the adjective as hōti* and reports hotie, huotia, hotean, huotian, and huoti at three loci. The headword macron and citation form are editorial; none of the five reported surfaces is exactly hōti.'),
(1328,208,5,2,'*hwōtja-','hwotja','hostile-threatening-germanic-adjective','*hwōtja-',NULL,'reconstructed','Proto-Germanic adjective reconstruction',-500,200,'hostile or threatening','Köbler gives this reconstruction in the E field of the hōti entry. It is a comparative analysis, not an attested token, and the source''s headword cross-reference to hatōn does not erase the separate reconstruction.'),
(1329,208,5,3,'*hwōtō','hwoto','threat-reprimand-germanic-noun','*hwōtō',NULL,'reconstructed','Proto-Germanic related noun reconstruction',-500,200,'threat or reprimand','Köbler compares the adjective reconstruction with this strong feminine noun meaning threat. The exact derivational direction is not independently secured by the located evidence.'),
(1330,208,6,4,'*kʷē̆d- / *kʷō̆d-','kwed-kwod','bore-prick-stab-whet-incite-base','*kʷē̆d- / *kʷō̆d-',NULL,'reconstructed','Pokorny Indo-European etymon',-4500,-2500,'to bore, drill, prick, or stab; in Germanic reflexes, sharpen, whet, or incite','Köbler points to Pokorny 636; the UT reflex page independently publishes the etymon and Germanic whet or incite reflexes. UT does not place hōti on this page, so the branch-to-root assignment remains Köbler''s analysis.'),
(1331,208,7,5,'UNKNOWN','unknown','hoti-two-root-boundary',NULL,NULL,'boundary','beyond the competing Indo-European analyses',NULL,NULL,'No securely accepted earlier ancestor, uniquely recoverable original meaning, or single reconciled route is currently known.','The linear dossier lane follows Köbler and stops here. The canonical graph separately branches from hōti to the reviewed *hatiz- node for UT''s competing hate-family hypothesis.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1120,208,1327,1328,'competing_inheritance','Under Köbler''s analysis, the normalized Old Saxon h-ō-t-i frame continues a Germanic *hw-ō-t-j- adjective. The five written Old Saxon surfaces vary between ho- and huo- and across inflectional endings; the edge does not assign one exact phonetic date to those spellings.','A reconstructed hostile or threatening adjective continues in Heliand contexts of hostile minds and hostile intent. The branch evidence does not prove that sharpened or incited was the adjective''s consciously felt meaning.','Gerhard Köbler','proposed','Köbler explicitly publishes the reconstruction, but UT assigns the same Old Saxon adjective to the hate family instead.','Proto-Germanic reconstruction into the ninth- and tenth-century Heliand witness record.','reviewed'),
(1121,208,1328,1329,'derivation','The adjective in *-ja- is compared with the long-vowel Germanic noun *hwōtō. The located entry does not independently settle whether the adjective derives from the noun, the noun from a related verb, or both from a shared base.','The compared noun means threat while the adjective means hostile or enraged. The graph preserves the semantic proximity without converting it into one documented derivational event.','Gerhard Köbler','proposed','Köbler prints “compare Germanic *hwōtō” rather than a fully argued direction of derivation.','Related Proto-Germanic reconstructed formations.','reviewed'),
(1122,208,1329,1330,'comparative_derivation','Köbler compares the Germanic hwōt- formation with Pokorny''s labiovelar *kʷē̆d- / *kʷō̆d- complex; the UT page independently displays reflexes with Germanic hw- and meanings sharpen, whet, and incite.','A physical field of boring, pricking, or stabbing develops in Germanic comparanda toward sharpness, whetting, incitement, and threat. The exact path to the Old Saxon hostile adjective remains proposed.','Gerhard Köbler · Linguistics Research Center editors','proposed','The deep etymon and Germanic reflex field are published independently, but the specific *hwōtō link is supplied by Köbler and is not listed on UT''s reflex page.','Proposed Indo-European comparison into Proto-Germanic reconstructed formations.','reviewed'),
(1123,208,1330,1331,'knowledge_boundary','No older form is promoted beyond the *kʷē̆d- / *kʷō̆d- comparison.','The trail stops before boring, pricking, whetting, inciting, threatening, and hostility are compressed into one recoverable prehistoric scene.','SET-U editorial boundary · Linguistics Research Center editors','boundary','The displayed etymon is already reconstructed, and the UT database warns that its reflex pages remain under active construction.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1120,592,'hōti* entry, E field: Germanic *hwōtja-, *hwōtjaz','supports','Publishes the direct Germanic adjective reconstruction beneath the Old Saxon entry.'),
(1120,600,'Old Saxon hōti row under k̑ād-','challenges','Assigns the same Old Saxon form to the inherited hate family instead.'),
(1121,592,'hōti* entry, E field: compare Germanic *hwōtō, threat','supports','Publishes the related formation while leaving derivational direction implicit.'),
(1122,592,'hōti* entry, E field: Pokorny 636, *kʷē̆d- / *kʷō̆d- complex','supports','Connects the Germanic adjective and threat noun with the bore, sharpen, and incite etymon.'),
(1122,603,'Pokorny etymon and Germanic reflex table','context','Independently publishes the deep etymon plus Old English, Old High German, North Germanic, and Gothic whet or incite reflexes.'),
(1123,603,'Construction notice and reconstructed etymon','supports','Marks the deepest displayed form as reconstructed and the current database as revisable.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(497,1327,601,'Heliand composition circa 830–840; Munich manuscript second half of the ninth century',875,'Heliand manuscript M, Pilate question','Cgm 25, scan 150; Heliand 5183; line containing hugea hotie','an iuuuomu hugea hotie','established','manuscript','Bayerische Staatsbibliothek','Cgm 25, scan 150','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00150/full/full/0/default.jpg',1,'The full-resolution facsimile was directly inspected against Köbler and the LWL transcription. It verifies nominative plural hotie in the phrase about the hearers'' hostile minds, not the normalized headword hōti, a first use, exact pronunciation, or either deeper ancestry lane. The year is representative within the cataloged second half of the ninth century.'),
(498,1327,592,'Heliand composition circa 830–840; Cotton witness mid or second half of the tenth century',NULL,'Heliand manuscript C, Pilate question','Heliand 5183 C','huotia','established','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports nominative plural huotia at the same lexical locus where M writes hotie. The Cotton object is separately cataloged, but this exact token''s pixels were not inspected.'),
(499,1327,602,'Heliand composition circa 830–840; Munich manuscript second half of the ninth century',875,'Heliand manuscript M, accusation before Pilate','Cgm 25, scan 152; Heliand 5246; line containing hotean hugi','uuerod iudeono thurh hotean hugi','established','manuscript','Bayerische Staatsbibliothek','Cgm 25, scan 152','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00152/full/full/0/default.jpg',1,'The full-resolution facsimile directly verifies accusative singular hotean in the hostile-intent phrase when aligned with Köbler and the LWL transcription. It does not establish the normalized headword, first use, pronunciation, or a unique root route.'),
(500,1327,592,'Heliand composition circa 830–840; Cotton witness mid or second half of the tenth century',NULL,'Heliand manuscript C, accusation before Pilate','Heliand 5246 C','huotian','established','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports accusative singular huotian at the same lexical locus where M writes hotean. The exact Cotton page was not directly inspected.'),
(501,1327,592,'Heliand composition circa 830–840; Cotton witness mid or second half of the tenth century',NULL,'Heliand manuscript C, Herod and his host','Heliand 5285 C','im uuarđ thie uueroldcuning an is huge huoti','established','lexical_corpus_record',NULL,NULL,NULL,0,'Köbler reports nominative singular masculine huoti in the clause where the worldly king becomes hostile or enraged in mind. This is the key evidence that the trailing star cannot simply mean “no nominative is attested.” The Cotton token remains source-reported.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(44,497,'2026-08-27','SET-U editorial review','visual_facsimile','hotie','an iuuuomu hugea hotie','Bayerische Staatsbibliothek Cgm 25, scan 150, Heliand 5183, line containing hugea hotie','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00150/full/full/0/default.jpg','Verifies the written Munich token hotie and its immediate phrase. It does not verify Cotton huotia, the normalized macron, exact pronunciation, first use, a unique translation, or either reconstructed ancestry lane.','reviewed'),
(45,499,'2026-08-27','SET-U editorial review','visual_facsimile','hotean','uuerod iudeono thurh hotean hugi','Bayerische Staatsbibliothek Cgm 25, scan 152, Heliand 5246, line containing hotean hugi','https://api.digitale-sammlungen.de/iiif/image/v2/bsb00026305_00152/full/full/0/default.jpg','Verifies the written Munich token hotean and its hostile-intent phrase. It does not verify Cotton huotian, the normalized headword, exact pronunciation, first use, or one settled reconstructed parent.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1098,208,'hatōn','Old Saxon','the dictionary headword cross-reference and the reviewed hate verb, not by itself proof of ancestry',592),
(1099,208,'heti','Old Saxon','the reviewed hate noun grouped with hōti by the UT alternative analysis',600),
(1100,208,'hwat','Old Saxon','a quick, active, or bold adjective placed under the *kʷē̆d- reflex complex',603),
(1101,208,'hwettan','Old English','a weak verb meaning whet or incite in the *kʷē̆d- reflex table',603),
(1102,208,'hwæt','Old English','a quick, active, or bold adjective in the proposed sharpen-incite family',603),
(1103,208,'whet','English','the modern sharpen-by-rubbing verb in the *kʷē̆d- reflex table',603),
(1104,208,'(h)waz','Old High German','a sharp, rough, or severe adjective in the proposed comparison',603),
(1105,208,'wezzan / wezzen','Old High German','verbs meaning sharpen or whet in the proposed comparison',603),
(1106,208,'wetzen','German','the modern German whet verb listed in the deep reflex table',603),
(1107,208,'hvass','Old Norse','a sharp or prickly adjective in the proposed comparison',603),
(1108,208,'hvetja','Old Icelandic','a whet or sharpen verb in the proposed comparison',603),
(1109,208,'ga-ƕatjan','Gothic','a sharpen, incite, or entice verb in the proposed comparison',603),
(1110,208,'höt / höte','Middle Low German','later hostile, bad, or violent adjectives compared by Köbler',592),
(1111,208,'*huozi?','Old High German','a question-marked comparison printed by Köbler and retained as uncertain',592),
(1112,208,'hate','English','a modern reflex in UT''s competing k̑ād- classification, not a descendant of Old Saxon hōti',600),
(1113,208,'Hass','German','a modern German hate noun in UT''s competing k̑ād- classification',600);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(909,208,1,'Proposed Indo-European bore-prick horizon','Köbler and Pokorny *kʷē̆d- / *kʷō̆d- lane','One competing route connects the adjective through threat and Germanic whet or incite comparanda. A reconstructed linguistic horizon is not one archaeological point.',NULL,NULL,'uncertain',-4500,-2500,'range','Conventional comparative bounds attached to a proposed route.'),
(910,208,2,'Proposed Indo-European hate-grief horizon','UT k̑ād- lane crosswalked to the reviewed *ḱeh₂d- proposal','The other route places hōti with the hate family. Its semantic unity and exact reconstruction remain qualified.',NULL,NULL,'uncertain',-4500,-2500,'range','Competing comparative lane, not a second event in a single linear journey.'),
(911,208,3,'Proto-Germanic linguistic horizon','competing *hwōtja- and *hatiz- parent analyses','Cross-source disagreement begins before the Old Saxon record: one source reconstructs a threat-related adjective, another classifies the form with hate.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken form or exact homeland.'),
(912,208,4,'Unresolved deep boundary','no reconciled parent before the competing routes','The trail ends without choosing one original essence or inventing an older common node.',NULL,NULL,'global',NULL,NULL,'unresolved','No defensible temporal interval or single coordinate is known.'),
(913,208,5,'Old Saxon Heliand textual horizon','work created circa 830–840; place of poetic origin unknown','Three lexical loci belong to the work layer, distinct from the dates and locations of the surviving manuscript objects.',NULL,NULL,'broad',830,840,'range','Work chronology, not first use or manuscript-copy chronology.'),
(914,208,6,'Corvey catalog attribution','Cgm 25, second half of the ninth century','The Munich witness directly preserves hotie and hotean. The point represents a catalog attribution, not the adjective''s birthplace.',51778300,9409000,'approximate',850,899,'range','A bounded manuscript-production interval represented by an approximate catalog point.'),
(915,208,7,'English Cotton manuscript transmission','Cotton Caligula A VII, mid or second half of the tenth century','Köbler reports huotia, huotian, and huoti from manuscript C. None of those three exact page images was inspected in this review.',NULL,NULL,'broad',950,999,'range','Representative catalog range; the three readings remain source-reported.'),
(916,208,8,'Middle Low German comparison horizon','later höt or höte comparanda','Köbler supplies later hostile, bad, or violent adjectives as comparanda, not as direct proof of one exact Old Saxon-to-Middle-Low-German token chain.',NULL,NULL,'broad',1100,1600,'range','Conventional language-period envelope; no first or last occurrence is claimed.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(909,592,'hōti* E field and Pokorny 636 citation','supports','Supplies the proposed *kʷē̆d- / *kʷō̆d- route.'),
(909,603,'Pokorny etymon and reflex table','context','Independently exposes the deep bore, prick, whet, and incite comparison.'),
(910,600,'k̑ād- page containing Old Saxon hōti','supports','Supplies the competing hate-family route.'),
(911,592,'Germanic *hwōtja- and *hwōtō','supports','Publishes the threat-related Proto-Germanic reconstruction lane.'),
(911,600,'Old Saxon hōti in the k̑ād- reflex table','challenges','Publishes the competing inherited hate-family lane.'),
(912,592,'Question-marked deep forms and separate headword cross-reference','supports','Shows why the two lanes are not collapsed into a secure common ancestor.'),
(912,603,'Construction notice','context','Marks the comparative database as revisable.'),
(913,592,'H 830 and complete three-locus B field','supports','Supplies work chronology and the line inventory.'),
(913,596,'Heliand lines around 5183 and 5246','context','Publishes the line-level Old Saxon contexts in a scholarly transcription.'),
(914,601,'Cgm 25 scan 150, hotie','supports','Supplies one directly inspected Munich manuscript form.'),
(914,602,'Cgm 25 scan 152, hotean','supports','Supplies the second directly inspected Munich manuscript form.'),
(914,598,'Cgm 25 item metadata','context','Supplies the wider manuscript catalog chronology and attribution.'),
(915,592,'Heliand 5183 C, 5246 C, and 5285 C','supports','Reports the three Cotton readings.'),
(915,597,'Cotton Caligula A VII Heliand catalog','context','Supplies a separate object-level catalog without proving exact token pixels.'),
(916,592,'hōti* W field: Middle Low German höt, höte','supports','Publishes the later Low German comparison.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(750,208,'Is Old Saxon hōti supported by attested forms?','Yes. Köbler reports five written inflectional readings at three Heliand loci, and Munich hotie and hotean are directly visible.','established','Dictionary inventory, scholarly transcription, and two primary-object inspections converge on the lexical record.','resolved','The dossier uses normalized hōti while preserving every reported surface form.'),
(751,208,'Is Köbler''s hōti* a Proto-Germanic reconstruction?','No. It is the starred headword of an Old Saxon entry whose B field lists Heliand forms; the entry separately labels Germanic *hwōtja- as etymology.','established','The source keeps the Old Saxon entry layer and the older Germanic reconstruction layer distinct.','resolved','The interface does not move the trailing star backward in time.'),
(752,208,'Does the trailing star mean that no nominative form is attested?','No simple rule of that kind fits this entry: Köbler explicitly reports nominative plural hotie and huotia plus nominative singular huoti beneath hōti*. The exact convention remains unstated in the located material.','established','The cases are explicit even though a full typographic legend was not located.','open',NULL),
(753,208,'Does Köbler''s count three mean three manuscripts or five occurrences?','Neither. It denotes three Heliand line loci; two loci have M and C readings, while one has C only, producing five witness readings.','established','Line numbers, cases, and manuscript sigla are explicit.','resolved','The interface separates three loci from five readings.'),
(754,208,'Are hotie and huotia two separate Heliand uses?','No. They are manuscript M and C readings at the same Heliand 5183 locus. The same distinction applies to hotean and huotian at 5246.','established','Köbler assigns each pair to one line number with distinct witness sigla.','resolved','Witness variation is not inflated into extra lexical occurrences.'),
(755,208,'Was Munich hotie directly inspected?','Yes. Cgm 25 scan 150 visibly preserves hotie in the phrase an iuuuomu hugea hotie.','established','The facsimile, dictionary locator, and LWL transcription align.','resolved','Only the observed form and bounded immediate context are marked inspected.'),
(756,208,'Was Munich hotean directly inspected?','Yes. Cgm 25 scan 152 visibly preserves hotean in the phrase thurh hotean hugi.','established','The facsimile, dictionary locator, and LWL transcription align.','resolved','The inspection does not select one ancestry hypothesis.'),
(757,208,'Were Cotton huotia, huotian, and huoti directly inspected?','No. All three are source-reported through Köbler; the Cotton manuscript is cataloged separately, but no exact page pixels were inspected for these tokens.','established','No witness-inspection record is attached to the three Cotton attestations.','resolved','A catalog record is not misrepresented as token inspection.'),
(758,208,'Do the manuscript dates prove a first known use?','No. The Heliand work predates both copies, and the surviving witnesses are transmission objects rather than the adjective''s origin event.','established','Work chronology, manuscript chronology, and lexical first use are different claims.','resolved','No first-known-use claim is made.'),
(759,208,'Is exact surface hōti written in one of the five reported readings?','No. The reported forms are hotie, huotia, hotean, huotian, and huoti. The macronized citation form hōti is an editorial normalization.','established','The complete B field exposes the distinction.','resolved','Search uses the normalized lemma while witness cards show exact surfaces.'),
(760,208,'Does every Heliand context simply mean hate?','No. The located contexts concern hostile minds, hostile intent, and a ruler becoming hostile or enraged in mind. Those are compatible with hostility but do not force the modern noun hate into every token.','established','Two line contexts were checked against the manuscript and transcription; Köbler quotes the third.','resolved','Token context and reconstructed family classification remain separate.'),
(761,208,'Do ho- and huo- spellings prove one precisely dated sound change?','No. They establish witness variation across M and C. The available spellings, manuscript dates, and editorial macrons do not by themselves recover one exact phonetic sequence.','established','The paired readings are explicit, but written variation is not audio.','open',NULL),
(762,208,'Does hōti belong to the hate family or the threat-whet-incite family?','The reviewed sources disagree. UT files hōti under k̑ād- with hate reflexes; Köbler reconstructs *hwōtja- beside *hwōtō and the *kʷē̆d- / *kʷō̆d- complex.','proposed','Both analyses are published and address the exact Old Saxon form, but neither source resolves the conflict against the other.','open',NULL),
(763,208,'Does Köbler''s headword cross-reference to hatōn settle the ancestry?','No. “See hatōn” is a lexical cross-reference; the same entry''s E field supplies the distinct *hwōtja- etymology. Cross-reference, semantic neighborhood, and parent edge are separate claim types.','established','The Hw and E fields coexist on the same entry.','open',NULL),
(764,208,'Is *hwōtja- securely derived from *hwōtō in that direction?','Not from the located evidence. Köbler says compare the noun *hwōtō “threat,” which establishes a proposed relationship but not a fully demonstrated direction of formation.','proposed','Only one located source explicitly joins the reconstructed forms.','open',NULL),
(765,208,'Does English whet descend from Old Saxon hōti?','No such direct descent is claimed. UT places whet and other Germanic sharpen or incite reflexes under *kʷē̆d- / *kʷō̆d-; Köbler uses that etymon for hōti, making them proposed deeper relatives if his route is right.','established','The comparative pages distinguish daughter reflexes from direct word-to-word ancestry.','resolved','The rabbit hole follows a shared proposed root, never an Old-Saxon-to-English arrow.'),
(766,208,'Is *kʷē̆d- / *kʷō̆d- a securely attested prehistoric word?','No. It is a Pokorny etymon adapted in a comparative database whose pages are explicitly under active construction. Its link to hōti is a published proposal.','established','The source labels the record as an etymon and describes its own revisability.','open',NULL),
(767,208,'Can one exact Old Saxon pronunciation of hōti be recovered?','No. Spellings, cases, manuscript variation, and editorial vowel length do not supply recorded speech or one completely dated phonetic reconstruction.','established','No reviewed source provides audio or a uniquely recoverable pronunciation.','open',NULL),
(768,208,'Can hōti be pinned to one exact birthplace?','No. Heliand''s place of poetic origin is unresolved, and the Munich and Cotton objects belong to different transmission settings.','established','Text creation and manuscript production are distinct evidence layers.','resolved','Only the Corvey catalog attribution receives an approximate point.'),
(769,208,'Does the threat-whet route unveil the word''s one true nature as sharpened hostility?','No. That is an evocative modern paraphrase, not an attested ancient definition. The route itself is disputed, and the visible contexts establish hostile disposition or intent without recovering prehistoric consciousness.','established','The source disagreement and semantic limits block essence-language.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(750,592,'hōti* B field: five readings at Heliand 5183, 5246, and 5285','supports','Publishes the full inflectional inventory.'),
(750,601,'Cgm 25 scan 150, hotie','supports','Directly verifies one written form.'),
(750,602,'Cgm 25 scan 152, hotean','supports','Directly verifies the second Munich form.'),
(751,592,'Old Saxon hōti* headword and separate Germanic *hwōtja- E field','supports','Separates the dictionary-headword star from the reconstruction.'),
(752,592,'Nom. plural hotie and huotia; Nom. singular huoti','supports','Shows that nominative evidence exists beneath the starred headword.'),
(753,592,'Count three and complete B field','supports','Provides three line loci and five readings.'),
(754,592,'Heliand 5183 M C and 5246 M C','supports','Assigns each manuscript pair to one textual locus.'),
(755,601,'Full-resolution Cgm 25 scan 150','supports','Provides the directly inspected artifact.'),
(755,596,'Late Heliand transcription, phrase hugea hotie','context','Supplies a line-level textual control.'),
(756,602,'Full-resolution Cgm 25 scan 152','supports','Provides the directly inspected artifact.'),
(756,596,'Late Heliand transcription, phrase thurh hotean hugi','context','Supplies a line-level textual control.'),
(757,592,'Heliand 5183 C, 5246 C, and 5285 C','supports','Supplies the source-reported Cotton readings.'),
(757,597,'Cotton Caligula A VII Heliand catalog','context','Supplies object metadata without exact token inspection.'),
(758,592,'H 830 and three-locus inventory','supports','Separates work-level evidence from later surviving objects.'),
(758,598,'Cgm 25 item metadata','context','Dates the inspected Munich manuscript layer.'),
(758,597,'Cotton Caligula A VII catalog','context','Dates the uninspected Cotton witness layer.'),
(759,592,'hōti* headword and B-field surfaces','supports','Exposes the difference between normalized lemma and written inflections.'),
(760,592,'Quoted contexts for the three loci','supports','Publishes hostile or enraged contextual readings.'),
(760,596,'Late Heliand transcription around hotie and hotean','context','Provides two complete textual settings.'),
(761,592,'M hotie / hotean and C huotia / huotian pairs','supports','Publishes witness variation without phonetic dating.'),
(762,600,'k̑ād- reflex table containing hōti','supports','Publishes the hate-family classification.'),
(762,592,'hōti* E field: *hwōtja-, *hwōtō, Pokorny 636','challenges','Publishes the distinct threat-whet-incite route.'),
(762,603,'*kʷē̆d- / *kʷō̆d- reflex page','context','Independently exposes the proposed deep root''s Germanic semantic field.'),
(763,592,'Hw: see hatōn; E: Germanic *hwōtja-','supports','Places lexical cross-reference and ancestry analysis in separate fields.'),
(764,592,'Compare Germanic *hwōtō, threat','supports','Publishes a comparison but no fully argued formation direction.'),
(765,603,'Old English hwettan, English whet, and Germanic comparanda','supports','Places whet in the deeper reconstructed family rather than under Old Saxon hōti.'),
(765,592,'hōti* E field and Pokorny 636 citation','context','Provides the proposed shared-root bridge.'),
(766,603,'Pokorny etymon and construction notice','supports','Identifies the reconstructed and revisable comparative layer.'),
(766,592,'Question-marked root variants in the E field','context','Preserves Köbler''s own formal uncertainty.'),
(767,592,'Five written forms and normalized headword','supports','Supplies orthographic and editorial evidence, not recorded speech.'),
(768,598,'Cgm 25 catalog attribution','supports','Provides one manuscript-production setting.'),
(768,597,'Cotton Heliand catalog','context','Adds a distinct transmission setting.'),
(769,592,'Hostile adjective gloss, contextual quotations, and proposed etymology','supports','Keeps branch meaning, token context, and root proposal distinct.'),
(769,600,'Competing hate-family classification','challenges','Blocks the threat-whet lane from becoming an uncontested essence.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(208,208,2106,'hōti','The hostile adjective may belong to whet and threat, not hate—and its starred lemma still has a nominative.','Köbler''s Old Saxon entry reports five written readings at three Heliand loci, including nominative hotie, huotia, and huoti, yet heads the entry hōti*. The asterisk therefore cannot be explained away as “no nominative survives.” More radically, the sources split at the root. UT groups hōti with hatōn and heti under the inherited hate etymon k̑ād-. Köbler''s same entry cross-references hatōn but reconstructs a different *hwōtja- adjective beside *hwōtō “threat” and Pokorny''s *kʷē̆d- / *kʷō̆d- family of boring, pricking, sharpening, whetting, and inciting. Munich hotie and hotean are directly visible in contexts of hostile minds and hostile intent; Cotton huotia, huotian, and huoti remain source-reported. The unveiling is not “hostility secretly means sharpened hate.” It is that rigorous etymology sometimes reveals two irreconcilable maps where a flat dictionary would print one arrow.','A',100,'The three loci, five readings, cases, manuscript sigla, two Munich pixels, two complete line contexts, and two published root assignments are recoverable. The Cotton pixels, exact asterisk convention, derivational direction inside the *hwōt- family, pronunciation, first use, birthplace, and winning ancestry hypothesis remain explicitly unresolved.');
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
(208,592,'hōti* entry: count three; five readings; contexts; *hwōtja- and *kʷē̆d- analysis','supports','Supplies the starred headword puzzle, full lexical inventory, and threat-whet-incite route.'),
(208,600,'k̑ād- reflex table containing Old Saxon hōti','challenges','Supplies the competing inherited hate-family classification.'),
(208,603,'*kʷē̆d- / *kʷō̆d- reflex table','context','Independently exposes the bore, prick, whet, and incite semantic complex.'),
(208,601,'Cgm 25 scan 150, hotie','supports','Directly verifies the first Munich surface form.'),
(208,602,'Cgm 25 scan 152, hotean','supports','Directly verifies the second Munich surface form.'),
(208,596,'Late Heliand transcription around hotie and hotean','context','Supplies the complete hostile-mind and hostile-intent contexts.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(164,208,207,'TWO OLD SAXON NEIGHBORS; TWO COMPETING ROOT MAPS','Old Saxon heti securely occupies the inherited hate family even while its deepest Indo-European comparison remains qualified. Nearby hōti means hostile or enraged, but Köbler reconstructs it through *hwōtja- beside *hwōtō “threat” and the *kʷē̆d- family behind whetting and inciting; UT instead files it with heti. Follow the shared alternative node and the separate Köbler lane to see why semantic proximity does not guarantee one genealogy.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1327 AND 1331
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.status='boundary' THEN 'boundary' WHEN f.id=1327 THEN 'established' ELSE 'probable' END,CASE WHEN f.status='boundary' THEN 'Dossier-specific endpoint for Köbler''s linear route; UT''s competing hate-family route continues through an existing canonical branch.' WHEN f.id=1327 THEN 'Attested Old Saxon adjective promoted with three loci, five readings, two direct manuscript inspections, and an explicit two-root dispute.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status; route confidence remains visible on the edges.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1327 AND 1331;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1120 AND 1123;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_form_link ON parent_form_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_form_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1120 AND 1123;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1120 AND 1123;
--> statement-breakpoint

-- UT's competing hate-family analysis is a second canonical parent, not a
-- fake adjacent step in the dossier's linear Köbler route. The reviewed
-- *hatiz- node already continues through the separately sourced hate-family
-- graph, so this edge joins the hypotheses without duplicating that history.
INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:92:hoti:attested:sense:hostile-enraged-old-saxon-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:hatiz:reconstructed:sense:hate-anger-germanic-i-stem'),'competing_inheritance','UT places Old Saxon hōti in the same reflex table as hatōn, heti, and the wider Germanic hate family. The atlas crosswalks that classification to its reviewed *hatiz- node without claiming an observed Proto-Germanic token.','The hostile or inimical adjective is grouped with hate, displeasure, enmity, anger, and persecution. Köbler''s distinct *hwōtja- analysis prevents this semantic grouping from being treated as a settled single parent.','Linguistics Research Center editors · SET-U cross-source review','proposed','UT explicitly groups the form with the hate family; Köbler''s E field explicitly reconstructs another Germanic family.','Alternative Proto-Germanic reconstruction into the Old Saxon Heliand record.','reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT edge.id FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id WHERE child.canonical_key='node:92:hoti:attested:sense:hostile-enraged-old-saxon-adjective' AND parent.canonical_key='node:5:hatiz:reconstructed:sense:hate-anger-germanic-i-stem' AND edge.relation_type='competing_inheritance'),600,'Old Saxon hōti row in the k̑ād- hate-family reflex table','supports','Explicitly groups the adjective with Old Saxon hatōn and heti and the wider hate family.'),
((SELECT edge.id FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id WHERE child.canonical_key='node:92:hoti:attested:sense:hostile-enraged-old-saxon-adjective' AND parent.canonical_key='node:5:hatiz:reconstructed:sense:hate-anger-germanic-i-stem' AND edge.relation_type='competing_inheritance'),592,'hōti* entry, separate E field *hwōtja- and *kʷē̆d- comparison','challenges','Publishes a competing parent family despite the entry''s headword cross-reference to hatōn.');
