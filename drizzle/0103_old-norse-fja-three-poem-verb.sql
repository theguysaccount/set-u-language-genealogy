-- Promote Old Norse fjá from the graph-derived evidence-ready queue into a
-- complete dossier. ONP classifies the verb as poetic and exposes no prose
-- citations. Cleasby and Vigfússon, Fritzner, and the poetic concordance point
-- to three Eddic records: active fjá in Hýmiskviða 22, finite fíár in
-- Lokasenna 35, and reflexive fiásk in Skírnismál 33. The exact edited forms
-- are preserved without turning a generated runic widget, an unreviewed
-- concordance count, or a normalized edition into a directly inspected
-- manuscript object.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(199,'fja','fjá','fja','not directly recoverable','Old Norse verb','Old Norse fjá was a verb meaning to hate. The Dictionary of Old Norse Prose classifies it as poetic and exposes zero prose citations; its glossarium links point to the early form fía and the reconstructed Proto-Germanic *fi(j)ēn-. Cleasby and Vigfússon call the verb obsolete, compare Gothic fijan and Old English feon or fjan, and locate it in Hýmiskviða 22 and Lokasenna 35, with the reflexive fjásk in Skírnismál 33. Fritzner independently gives the same three locations. The normalized verse texts preserve three different grammatical surfaces: goð fjá in Hýmiskviða, mangi fíár in Lokasenna, and Freyr fiásk in Skírnismál. Lexicon Poeticum likewise reports three poetic records, but explicitly warns that its concordance is unreviewed and that dates should be checked. These are source-reported lexical and edited-text records, not directly inspected manuscript objects, and three records in the reviewed poetic concordance are not a census of every Old Norse utterance. The finite verb became a tiny poetic fossil while its inherited participial relative fjándi became the ordinary enemy noun and accumulated 222 citations in ONP''s prose corpus. Those corpus totals are not directly frequency-comparable, but the contrast makes the grammatical survival visible. The generated possible runic inscription shown by modern dictionary transcriptions is not historical evidence and is excluded. No historical sound recording exists, so the dossier does not fabricate one exact pronunciation.','The Old Norse hate verb survives in three reviewed poetic contexts, while its participial relative fjándi became the ordinary enemy noun. The enemy outlived the verb that made it legible.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(554,'onp-fja','Dictionary of Old Norse Prose — fjá, poetic verb','Dictionary of Old Norse Prose editors',2010,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?o20912',NULL,'historical_dictionary'),
(555,'cleasby-vigfusson-fja','An Icelandic-English Dictionary — fjá','Richard Cleasby · Guðbrandur Vigfússon',1874,'Clarendon Press · digital transcription','https://cleasby-vigfusson-dictionary.vercel.app/word/fja',NULL,'historical_dictionary'),
(556,'zoega-fja','A Concise Dictionary of Old Icelandic — fjá','Geir T. Zoëga',1910,'Oxford University Press · digital transcription','https://old-icelandic.vercel.app/word/fja',NULL,'historical_dictionary'),
(557,'lexicon-poeticum-fja','Lexicon Poeticum — fjá, verb','Lexicon Poeticum · Skaldic Project editors',NULL,'University of Copenhagen · Skaldic Project','https://lexiconpoeticum.org/gefin/q.php?p=lp/words/word/20430',NULL,'research_database'),
(558,'fritzner-fja','Ordbog over Det gamle norske Sprog — fjá','Johan Fritzner',NULL,'Digital transcription','https://old-norwegian-dictionary.vercel.app/word/fja',NULL,'historical_dictionary'),
(559,'skaldic-teaching-hymiskvida','Teaching Texts — Hýmiskviða','Skaldic Project editors',NULL,'Skaldic Project · University of Aberdeen','https://skaldic.org/m.php?p=teachtext&i=2331',NULL,'historical_text_edition'),
(560,'voluspa-lokasenna','Literal Poetic Edda text — Lokasenna','Voluspa.org editor',NULL,'Voluspa.org','https://www.voluspa.org/literal/lokasenna.htm',NULL,'historical_text_edition'),
(561,'skaldic-teaching-skirnismal','Teaching Texts — Skírnismál','Skaldic Project editors',NULL,'Skaldic Project · University of Aberdeen','https://skaldic.org/m.php?p=teachtext&i=2725',NULL,'historical_text_edition');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1274,199,66,1,'fjá','fja','hate-old-norse-poetic-verb','fjá',NULL,'attested','Old Norse poetic record; exact composition dates not fixed here',900,1300,'to hate; in the reflexive, to hate someone','ONP classifies fjá as a poetic verb and exposes no prose citations. Cleasby and Vigfússon, Fritzner, and Lexicon Poeticum converge on three Eddic contexts, while the concordance warns that its record and dates need review. The displayed range is a broad poetic-transmission horizon, not a first-use claim or manuscript-object date.'),
(1275,199,66,2,'fía','fia','early-surface-of-old-norse-hate-verb','fía',NULL,'attested','early Old Norse form reported by Zoëga and referenced by ONP',700,1200,'to hate','Zoëga labels fía the early form of fjá, and ONP links the lemma to Ásgeir Blöndal Magnússon''s item fía. The relationship is lexicographically published, but this dossier does not assign an exact transition year or treat fía as a directly inspected token.'),
(1276,199,5,3,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with hostility','Kroonen reconstructs the comparative Germanic verb, and ONP explicitly links fjá to EDPG *fi(j)ēn-. It is not a written Old Norse or Proto-Germanic token.'),
(1277,199,6,4,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European comparison',-4500,-2500,'a proposed base in a harm, blame, suffering, or hostility field','Kroonen publishes this deeper comparison. The formal path and original semantic center are less secure than the Germanic comparison.'),
(1278,199,7,5,'UNKNOWN','unknown','fja-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely reconstructed earlier ancestor or uniquely recoverable original semantic scene is known.','The trail ends before hate, hostility, persecution, enmity, harm, or blame is declared the one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1076,199,1274,1275,'historical_surface_development','The early form fía develops into fjá through North Germanic contraction and glide-vowel remodeling. The reviewed lexical sources publish the earlier and later surfaces but do not expose a dated sequence of intermediate written forms.','The verb remains in the hate field; active and reflexive constructions distribute the participant structure differently without creating separate prehistoric roots.','Geir T. Zoëga · Dictionary of Old Norse Prose editors','probable','Zoëga explicitly calls fía the early form and ONP cross-references item fía. The exact phonetic stages, chronology, and geographic spread are not directly observed.','An early Old Norse form into the normalized poetic fjá lemma; no exact transition date is asserted.','reviewed'),
(1077,199,1275,1276,'inheritance','Old Norse fía and fjá continue the reconstructed Germanic fi(j)- verb after North Germanic vowel, glide, contraction, ending, and inflectional developments. The attested surfaces are not treated as one mechanically complete sound law.','The inherited hate or hostility verb remains finite in three poetic contexts; the reflexive fiásk marks a syntactic development rather than a separate ancestral lexeme.','Dictionary of Old Norse Prose editors · Richard Cleasby · Guðbrandur Vigfússon · Guus Kroonen','probable','The Old Norse lemma and forms are attested through reviewed dictionaries and normalized editions, and the cross-Germanic comparison is published. The exact prehistoric phonetic path remains reconstructed.','Proto-Germanic reconstruction into the source-reported Old Norse poetic record.','reviewed'),
(1078,199,1276,1277,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1079,199,1277,1278,'knowledge_boundary','No older form is promoted beyond the qualified *peh₁- comparison.','The trail ends before the poetic hate verb, reflexive construction, enemy noun, or later fiend senses are reverse-engineered into one universal prehistoric essence.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1076,556,'Headword fjá: early form fía; verb to hate; reflexive fjást','supports','Publishes the earlier form and the active-versus-reflexive grammar.'),
(1076,554,'Glossarium links: ÁBlM item fía','supports','Independently cross-references the lemma to fía without assigning an exact transition date.'),
(1077,554,'Headword fjá vb. poet.; Glossarium links EDPG *fi(j)ēn-','supports','Classifies the attested Old Norse verb and links it to the reconstructed Germanic parent.'),
(1077,555,'fjá entry: Gothic fijan, Old English feon or fjan, and three Eddic locations','supports','Publishes the cross-Germanic comparison and the finite and reflexive Old Norse evidence.'),
(1077,558,'fjá entry: hate; Gothic fijan; Hým. 22, Lok. 35, and fjást in Skírn. 33','supports','Independently preserves the comparative and textual location set.'),
(1077,491,'p. 140, *fi(j)ēn- and Old Norse fjá','supports','Publishes the reconstructed parent and Old Norse descendant.'),
(1077,492,'pp. 47–49, living verb beside lexicalized enemy formation','context','Supports the inherited verb family while preserving the verb-versus-enemy-noun distinction.'),
(1078,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used with reduced confidence.'),
(1079,491,'p. 140, deepest modern comparison used in this dossier','supports','Supports stopping after the qualified proposal rather than inventing an earlier form.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(440,1274,559,'Old Norse normalized poetic text; source-reported',NULL,'Hýmiskviða 22','Skaldic Project Teaching Texts, Hýmiskviða 22','Gein við agni sú er goð fjá umgjörð neðan allra landa.','established','lexical_corpus_record',NULL,NULL,NULL,0,'The normalized teaching text was inspected and Cleasby, Fritzner, and Lexicon Poeticum locate the verb in this stanza. No manuscript object, exact composition date, or first-use status is claimed.'),
(441,1274,560,'Old Norse normalized poetic text; source-reported',NULL,'Lokasenna 35','Voluspa.org literal text, Lokasenna 35','þann er mangi fíár, ok þykkir sá ása jaðarr.','probable','lexical_corpus_record',NULL,NULL,NULL,0,'The normalized verse gives the finite form fíár in the clause whom no one hates. Cleasby and Fritzner independently locate the verb at Lokasenna 35. The transcription is not a manuscript inspection, and Skaldic Project''s parallel old-edition surface warns that it should not be cited as a checked edition.'),
(442,1274,561,'Old Norse normalized poetic text; source-reported',NULL,'Skírnismál 33','Skaldic Project Teaching Texts, Skírnismál 33','þik skal Freyr fiásk','established','lexical_corpus_record',NULL,NULL,NULL,0,'The teaching text preserves the reflexive form fiásk in a curse context. Cleasby, Zoëga, and Fritzner classify the reflexive with fjá. No manuscript object or exact composition date was inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(976,199,'fía','Old Norse','the early form of fjá reported by Zoëga and linked by ONP',556),
(977,199,'fíár','Old Norse','the finite surface in Lokasenna 35',560),
(978,199,'fiásk','Old Norse','the reflexive surface in Skírnismál 33',561),
(979,199,'fjást','Old Norse','the dictionary citation form of the reflexive construction',556),
(980,199,'fjándi','Old Norse','the lexicalized enemy noun whose participial history belongs to the same Germanic verb family',555),
(981,199,'fijan','Gothic','a collateral East Germanic hate verb compared by Cleasby, Fritzner, and Kroonen',555),
(982,199,'feon / fjan','Old English','collateral West Germanic verb forms compared by Cleasby and Vigfússon',555),
(983,199,'fīēn','Old High German','a collateral West Germanic hate verb with a source-reported mini-paradigm',544),
(984,199,'*fi(j)and-','Proto-Germanic','the reconstructed participial enemy formation built from the related verb family',491);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(839,199,1,'Proposed Indo-European linguistic horizon','proposed *peh₁- comparison','The deepest route is a comparative linguistic proposal, not a word recovered at one archaeological site.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon attached to a proposed analysis.'),
(840,199,2,'Proto-Germanic linguistic horizon','reconstructed *fi(j)ēn-','Cross-branch evidence places the hate verb before the separate written Germanic traditions.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token or single coordinate.'),
(841,199,3,'Old Norse linguistic horizon','early fía into poetic fjá','The lexical sources preserve an early form and later headword without one dated transition or point of origin.',NULL,NULL,'broad',700,1200,'range','A broad language-stage range, not a directly witnessed change event.'),
(842,199,4,'Old Norse poetic transmission','Hýmiskviða 22: goð fjá','The active verb occurs in a normalized Eddic verse about the world-serpent that hates the gods; no manuscript coordinate is manufactured.',NULL,NULL,'broad',900,1300,'range','A broad poetic-transmission horizon because no exact composition date or manuscript object was verified here.'),
(843,199,5,'Old Norse poetic transmission','Lokasenna 35: mangi fíár','The finite form appears in a normalized verse meaning that no one hates the son; the record is not converted into a false first-use date.',NULL,NULL,'broad',900,1300,'range','A broad poetic-transmission horizon rather than a point date.'),
(844,199,6,'Old Norse poetic transmission','Skírnismál 33: Freyr fiásk','The reflexive form appears in a normalized curse stanza; active and reflexive grammar remain visible without inventing separate origins.',NULL,NULL,'broad',900,1300,'range','A broad poetic-transmission horizon rather than a point date.'),
(845,199,7,'Old Norse lexical boundary','zero ONP prose citations and three Lexicon Poeticum records','The reviewed public tools expose a poetic-only lemma and a tiny concordance record, but do not identify one exact extinction event.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Corpus absence and an unreviewed count do not supply a dated death certificate for the spoken verb.'),
(846,199,8,'Knowledge boundary','beyond the proposed Indo-European comparison','The graph stops before hate, hostility, persecution, enmity, harm, or blame is declared the one certain prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(839,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the deepest comparison used with proposed confidence.'),
(840,491,'p. 140, *fi(j)ēn- and Germanic daughter forms','supports','Publishes the reconstructed Germanic verb and cross-branch evidence.'),
(841,556,'Headword fjá: early form fía','supports','Supplies the source-reported Old Norse surface sequence.'),
(841,554,'Glossarium links: ÁBlM item fía; EDPG *fi(j)ēn-','context','Links the Old Norse lemma both sideways to the early form and backward to the reconstruction.'),
(842,559,'Hýmiskviða 22','supports','Supplies the normalized active-verb context.'),
(842,555,'Hým. 22','context','Independently locates fjá in the poem.'),
(843,560,'Lokasenna 35','supports','Supplies the normalized finite form fíár.'),
(843,558,'Lok. 35','context','Independently locates the verb in the stanza.'),
(844,561,'Skírnismál 33','supports','Supplies the normalized reflexive form fiásk.'),
(844,555,'Skm. 33, reflexive fjásk','context','Independently classifies the reflexive under the verb.'),
(845,554,'Headword fjá vb. poet.; all expected prose genres 0','supports','Supplies the prose-corpus absence and poetic classification.'),
(845,557,'Headword fjá, verb; record count 3; unreviewed-concordance and date warning','supports','Supplies the count while preserving its review limitations.'),
(846,491,'p. 140, deepest comparison used here','supports','Supports an explicit endpoint after the qualified proposal.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(604,199,'Was Old Norse fjá a verb?','Yes. ONP classifies it as a poetic verb; Cleasby, Zoëga, and Fritzner all gloss it as hate and document finite or reflexive grammar.','established','The independent dictionary records agree on lexical category and core gloss.','resolved','The dossier keeps the verb distinct from the lexicalized noun fjándi.'),
(605,199,'Does ONP contain prose citations for fjá?','No. The public ONP lemma marks the word poetic and displays zero citations across every expected prose genre.','established','The official prose dictionary''s entry exposes the absence directly.','resolved','The dossier does not fabricate prose attestations.'),
(606,199,'Are there exactly three surviving Old Norse uses?','Three is the count in the reviewed public Lexicon Poeticum surface and matches the three locations in Cleasby and Fritzner, but it is not presented as a census of every lost or surviving utterance.','probable','The concordance itself warns that it has not been reviewed.','open',NULL),
(607,199,'What is the exact earliest surviving fjá token?','Not established here. The reviewed sources supply poem and stanza locations but no directly inspected manuscript object, exact composition date, or uncontested first-use year.','established','All three attestation rows are source-reported normalized editions.','open',NULL),
(608,199,'Were the underlying manuscript objects directly inspected?','No. This review inspected dictionaries, concordance metadata, and normalized text surfaces, not the manuscripts behind the three poems.','established','Every attestation sets directly_inspected to false and no witness-inspection record is created.','resolved','No facsimile or manuscript-verification claim is attached.'),
(609,199,'Does Hýmiskviða 22 preserve the active form fjá?','Yes in the reviewed normalized teaching text: sú er goð fjá. Cleasby and Fritzner independently locate the verb there.','established','The edited line and two lexicographic references converge.','resolved','The claim is about the normalized textual record, not manuscript pixels.'),
(610,199,'Is fíár in Lokasenna 35 a form of this verb?','Yes in the reviewed normalized text and historical dictionaries: þann er mangi fíár means the one whom no one hates.','probable','Cleasby and Fritzner locate fjá at Lokasenna 35, while the normalized text exposes the finite form.','resolved','The surface form remains an inflectional relative, not a false ancestor node.'),
(611,199,'Is fiásk in Skírnismál 33 a separate verb?','No on the reviewed evidence. Cleasby, Zoëga, and Fritzner classify the reflexive under fjá, and the teaching text preserves þik skal Freyr fiásk.','established','The grammatical descriptions and verse context agree.','resolved','The reflexive form remains evidence inside the same dossier.'),
(612,199,'Did fía become fjá at one exactly recoverable moment?','No exact date or complete phonetic sequence is established. Zoëga calls fía the early form and ONP cross-references it, which supports a historical surface relation but not a point event.','probable','The lexicographic relation is clear while chronology and intermediate written forms remain missing.','open',NULL),
(613,199,'Was fjá obsolete at one exact medieval date?','No. Cleasby calls the word obsolete from a nineteenth-century lexicographic perspective, but the reviewed record does not identify a last speaker or extinction year.','established','Lexicographic obsolescence and a dated loss event are different claims.','open',NULL),
(614,199,'Is fjándi simply another finite form of fjá?','No. Cleasby identifies fjándi as the surviving participial relative, and the separate ONP dossier classifies it as a masculine noun with 222 prose citations.','established','The sources preserve both historical relationship and lexical-category separation.','resolved','The graph joins the words through the reconstructed verb family rather than collapsing their entries.'),
(615,199,'Do the three poetic verb records and 222 fjándi prose citations form a direct frequency comparison?','No. They come from different public corpora with different genres, coverage, editorial states, and counting rules.','established','ONP is a prose dictionary; Lexicon Poeticum is a separately warned poetic concordance.','resolved','The rabbit hole presents the contrast as corpus architecture, not a statistical ratio.'),
(616,199,'Was fjá borrowed from Gothic fijan, Old English feon, or Old High German fīēn?','No daughter-to-daughter borrowing is established. The dictionaries compare them, and Kroonen places them under a reconstructed Germanic verb.','probable','The historical dictionaries and comparative study support collateral inheritance.','resolved','The graph joins them at *fi(j)ēn- and draws no donor arrow among daughters.'),
(617,199,'Is *fi(j)ēn- an attested Old Norse spelling?','No. It is a normalized Proto-Germanic reconstruction used to explain the daughter-language set.','established','Kroonen marks the form as reconstructed, while ONP explicitly cites EDPG *fi(j)ēn-.','resolved','The asterisk remains structural and visible.'),
(618,199,'Can the exact pronunciation and path into fjá be recovered?','Not completely. Vowel quantity, optional glide, contraction, surface variation, and poetic normalization belong to historical analysis rather than recorded audio.','probable','The dictionaries publish forms and comparisons, not a historical sound recording or complete transition series.','open',NULL),
(619,199,'Does fjá securely descend from exactly *peh₁-?','Only as a qualified modern proposal. The Germanic comparison is firmer than the displayed Indo-European route.','proposed','Kroonen publishes the comparison but no written intermediate or uniquely recoverable original semantic scene.','open',NULL),
(620,199,'Is the possible runic inscription shown on modern dictionary pages a historical attestation?','No. It is a generated transliteration widget, not a cited inscription, object, shelfmark, or manuscript record.','established','The modern Cleasby and Zoëga transcription pages label it possible and generate the runes from the headword.','resolved','The runes are excluded from attestations and witness counts.'),
(621,199,'Are Lexicon Poeticum dates and counts definitive without review?','No. The project explicitly says the concordance has not been reviewed and that dates, especially, should be checked.','established','The source publishes its own limitations.','resolved','The dossier preserves count three with probable confidence and assigns no point dates.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(604,554,'Headword fjá vb. poet.','supports','Classifies the word as a poetic verb.'),
(604,555,'fjá entry: to hate; reflexive fjásk','supports','Supplies the active and reflexive verb grammar.'),
(604,556,'fjá entry: verb to hate','supports','Independently classifies and glosses the verb.'),
(605,554,'Expected genres: every prose category 0 (0)','supports','Directly exposes the zero-citation prose record.'),
(606,557,'Headword fjá, verb; count 3; unreviewed warning','supports','Supplies the count together with its limitation.'),
(606,555,'Hým. 22; Ls. 35; reflexive Skm. 33','context','Supplies the same three-location structure from a historical dictionary.'),
(607,555,'Three poem and stanza locations without manuscript-object evidence','supports','Provides locators but no exact first object or year.'),
(608,559,'Normalized Hýmiskviða teaching text','supports','Provides an edited surface rather than manuscript pixels.'),
(608,560,'Normalized Lokasenna text','supports','Provides an edited surface rather than manuscript pixels.'),
(608,561,'Normalized Skírnismál teaching text','supports','Provides an edited surface rather than manuscript pixels.'),
(609,559,'Hýmiskviða 22: sú er goð fjá','supports','Publishes the normalized active form and context.'),
(609,558,'Hým. 22','context','Independently locates the verb there.'),
(610,560,'Lokasenna 35: þann er mangi fíár','supports','Publishes the normalized finite form and clause.'),
(610,555,'Ls. 35','context','Independently assigns this stanza to the verb.'),
(611,561,'Skírnismál 33: þik skal Freyr fiásk','supports','Publishes the normalized reflexive form.'),
(611,556,'Reflexive fjást e-n','supports','Classifies the reflexive under fjá.'),
(612,556,'Headword note: early form fía','supports','Publishes the historical surface relation.'),
(612,554,'Glossarium link: ÁBlM item fía','context','Independently points to the earlier surface.'),
(613,555,'fjá entry: an obsolete word','supports','Supplies the lexicographic label without a dated extinction event.'),
(614,555,'Participle remains; compare fjándi','supports','Publishes the grammatical relationship and lexical survival.'),
(614,546,'fjándi masculine noun; 222 citations','supports','Supplies the separate noun category and prose-corpus scale.'),
(615,554,'ONP prose dictionary: zero fjá citations','supports','Defines one side of the non-equivalent corpus contrast.'),
(615,557,'Lexicon Poeticum: three poetic records and unreviewed warning','supports','Defines the other side and its review limitation.'),
(616,555,'Comparative header: Gothic fijan and Old English feon or fjan','supports','Publishes collateral daughter forms.'),
(616,491,'p. 140, reconstructed parent and daughter forms','supports','Places the daughters under shared ancestry.'),
(617,491,'p. 140, reconstructed *fi(j)ēn-','supports','Marks the parent as a comparative reconstruction.'),
(617,554,'Glossarium link: EDPG *fi(j)ēn-','context','Shows ONP explicitly distinguishes the reconstructed comparison from the attested lemma.'),
(618,556,'Early fía, fjá, and reflexive fjást','supports','Publishes surface variation without a recording or complete transition series.'),
(618,555,'fjá entry and comparative forms','context','Supplies normalized shapes and historical comparison.'),
(619,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the qualified route used in the graph.'),
(620,555,'Modern page widget: possible runic inscription','supports','Shows the generated display lacks a historical object citation.'),
(620,556,'Modern page widget: possible runic inscription','supports','Independently shows the same generator behavior.'),
(621,557,'Site warning: concordance not reviewed; dates should be checked','supports','Publishes the project''s own evidentiary limitation.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(199,199,2107,'fjá','The ordinary Old Norse enemy outlived the finite hate verb behind it.','ONP classifies fjá as poetic and exposes no prose citations. Cleasby, Fritzner, and Lexicon Poeticum converge on three Eddic contexts, while normalized texts preserve active fjá, finite fíár, and reflexive fiásk. Cleasby then points to fjándi as the participial relative that remained across Germanic. ONP gives that separate enemy noun 222 prose citations and a large semantic range. The two corpus totals are not directly frequency-comparable, and neither proves an exact extinction event; together they reveal the asymmetry between a tiny finite-verb record and the prolific lexicalized enemy branch.','A',100,'The reveal follows the official ONP grammar and prose absence, the three-location historical-dictionary record, the warned poetic-concordance count, and three normalized verse surfaces. It claims no directly inspected manuscript, exact composition date, point-coordinate origin, statistical corpus ratio, historical runic inscription, recorded pronunciation, or established deepest PIE route.');
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
(199,554,'Headword fjá vb. poet.; zero expected prose citations','supports','Supplies the poetic classification and prose-corpus absence.'),
(199,555,'Hým. 22; Ls. 35; reflexive Skm. 33; participle survives in fjándi','supports','Supplies the three-location verb record and the surviving participial branch.'),
(199,557,'Headword fjá, verb; count 3; unreviewed-concordance warning','supports','Supplies the poetic count with its limitation.'),
(199,559,'Hýmiskviða 22: sú er goð fjá','supports','Supplies the normalized active surface.'),
(199,560,'Lokasenna 35: þann er mangi fíár','supports','Supplies the normalized finite surface.'),
(199,561,'Skírnismál 33: þik skal Freyr fiásk','supports','Supplies the normalized reflexive surface.'),
(199,546,'fjándi masculine noun; 222 prose citations','context','Supplies the separate enemy noun''s prose-corpus scale without making the corpora equivalent.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(155,199,196,'THREE POETIC VERB RECORDS; 222 PROSE ENEMY CITATIONS','Follow the finite Old Norse hate verb into its participial relative fjándi. The public poetic concordance reports three fjá records; ONP exposes 222 citations for the lexicalized enemy noun. These are different corpora, not a frequency ratio, but their architecture makes one historical asymmetry impossible to miss: the tiny poetic verb record sits beside an enemy word that became ordinary, demonic, derogatory, and prolific.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1274 AND 1278
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1275,1276,1277) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1274 THEN 'Promoted from the graph-derived top evidence-ready candidate into a complete Old Norse lexical, grammatical, poetic-record, semantic, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1274 AND 1278;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1076 AND 1079;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1076 AND 1079;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1076 AND 1079;
