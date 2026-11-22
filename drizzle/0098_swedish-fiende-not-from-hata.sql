-- Promote Swedish fiende from the graph-derived evidence-ready queue into a
-- complete dossier. Svenska Akademien says the noun is an inherited Germanic
-- word whose original force was "hating", SAOB and Hellquist analyze the
-- formation as a present participle of the fi(j)- verb family. Swedish hata,
-- however, belongs to the separate hat- family. The dossier therefore makes
-- the grammatical fossil visible without pretending that modern hata is the
-- word's parent or that etymology fixes an enemy's present-day nature.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(86,'swedish','Swedish','Indo-European','North Germanic',0,1526,2026,'Modern Swedish. The reviewed fiende record uses Svenska Akademiens current dictionary and the historical SAOB article.'),
(87,'old-swedish','Old Swedish','Indo-European','North Germanic',0,1225,1526,'The medieval Swedish stage conventionally bounded from the earliest continuous Swedish legal texts to the early modern Bible period. The dossier preserves source date labels rather than converting them into invented token years.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(194,'fiende','fiende','fiende','fiˋende','Swedish common-gender noun','The ordinary Swedish noun for an enemy, opponent, hostile state, or figurative threat continues Old Swedish fiande or fiände and an inherited Germanic present-participial formation: literally the hating one. Svenska Akademiens current dictionary calls the word Common Germanic and gives the original force hatande; SAOB and Hellquist independently derive the noun from the fi(j)- hate verb behind Gothic fijan and Old Norse fjá. Modern Swedish hata belongs to a separate Germanic hat- family, so fiende is not transparently built from the verb Swedish speakers now use for hate. Historical Swedish also used Fienden for the Devil, but that branch is not the word’s only or current central meaning. All medieval and early-modern examples here are source-reported lexical records, not directly inspected manuscript objects.','Swedish fiende is not built from modern hata. It is a frozen present participle of another Germanic hate verb: an inherited one-who-hates that lexicalized as enemy.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(537,'svenska-so-fiende','Svensk ordbok — fiende','Svenska Akademiens ordboksredaktion',2026,'Svenska Akademien','https://svenska.se/?activeTab=so&q=fiende&exactMatch=true&id=148616',NULL,'contemporary_dictionary'),
(538,'saob-fiende','Svenska Akademiens ordbok — FIENDE','Svenska Akademiens ordboksredaktion',1924,'Svenska Akademien','https://svenska.se/?activeTab=saob&q=fiende&exactMatch=true&id=9257024&homografNr=0',NULL,'historical_dictionary'),
(539,'hellquist-1922-fiende','Svensk etymologisk ordbok — fiende, scan p. 135','Elof Hellquist',1922,'C. W. K. Gleerups förlag · Project Runeberg','https://runeberg.org/svetym/0223.html',NULL,'etymological_dictionary'),
(540,'soderwall-fiande','Ordbok öfver svenska medeltids-språket — Fiande','Knut Fredrik Söderwall',NULL,'Svenska fornskriftsällskapet · digital dictionary mirror','https://old-swedish-dictionary.vercel.app/word/fiande',NULL,'historical_dictionary'),
(541,'saob-hata','Svenska Akademiens ordbok — HATA','Svenska Akademiens ordboksredaktion',1930,'Svenska Akademien','https://svenska.se/?activeTab=saob&q=hata&exactMatch=true&id=9305473&homografNr=0',NULL,'historical_dictionary'),
(542,'spraakbanken-soderwall-metadata','Söderwall: Ordbok öfver svenska medeltids-språket — resource metadata','Språkbanken Text',NULL,'University of Gothenburg','https://spraakbanken.gu.se/resurser/soederwall',NULL,'dataset_documentation');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1248,194,86,1,'fiende','fiende','enemy-opponent-hostile-force-swedish','fiende','fiˋende','attested','modern Swedish record',1522,2026,'enemy or opponent; a hostile person, state, force, or figurative threat','SO supplies the current noun, inflection, accent notation, definition, examples, and history. SAOB documents spellings from 1522 onward, military collective use, figurative nonhuman enemies, and the historical Devil branch.'),
(1249,194,87,2,'fiande / fiände','fiande-fiande','enemy-devil-old-swedish','fiande / fiände',NULL,'attested','Old Swedish; recorded from the beginning of the 1300s',1300,1526,'enemy or opponent; also the Devil in recorded medieval use','SO identifies fiande and fiände as Old Swedish forms and reports evidence from the beginning of the 1300s in Skåne-Lagen. Söderwall files Fiande under enemy and especially the Devil, with located edition excerpts. No medieval object was directly inspected.'),
(1250,194,5,3,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic lexicalized participle',-500,200,'the hating one; lexicalized enemy agent noun','Kroonen reconstructs the formation; SAOB and Hellquist independently derive the Swedish noun from the Germanic hate verb. It is a comparative reconstruction, not a written Swedish or Proto-Germanic token.'),
(1251,194,5,4,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with hostility','The enemy formation is built on this reconstructed Germanic verb family, continued by Gothic fijan, Old Norse fjá, and Old High German fīēn. Swedish hata belongs to a different Germanic formation.'),
(1252,194,6,5,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European comparison',-4500,-2500,'a proposed base in a harm, blame, suffering, or hostility field','Kroonen publishes the deeper route. Hellquist gives an older comparison to Indo-European pi and Sanskrit pīyati. The dossier follows the modern qualified route without treating either analysis as a directly recovered original word or essence.'),
(1253,194,7,6,'UNKNOWN','unknown','fiende-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely reconstructed earlier ancestor or uniquely recoverable original semantic scene is known.','The trail ends before hatred, pursuit, harm, blame, enemy, or Devil is declared the one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1055,194,1248,1249,'historical_continuation','Old Swedish fiande and fiände continue through early-modern fiende, fiände, fyende, fynde, fiend, and related spellings before modern fiende becomes standard. The record displays changing vowel notation, glide representation, endings, and orthography rather than one universal intermediate spelling.','Enemy or opponent remains central. Older Devil usage becomes historical, while military collective and figurative nonhuman uses remain available in the modern noun.','Svenska Akademiens ordboksredaktion','established','SO and SAOB publish the form sequence and semantic continuity. The dictionaries do not assign every spelling to one uniform sound change or dialect.','Old Swedish evidence from the early 1300s through early-modern and current Swedish.','reviewed'),
(1056,194,1249,1250,'inheritance','Old Swedish fiande or fiände reflects the North Germanic continuation of the inherited nd-agent formation, with branch vowel development, glide and consonant history, inflection, and scribal spelling represented by the recorded variants.','The already lexicalized one-who-hates formation functions as enemy or opponent. A Devil sense is visible inside the attested Swedish branch and is not projected back into Proto-Germanic.','Svenska Akademiens ordboksredaktion · Elof Hellquist · Guus Kroonen','probable','The Old Swedish record and cross-Germanic comparison support inheritance. The parent is reconstructed, and the dossier does not invent a written Proto-Norse or Proto-Swedish intermediate.','Proto-Germanic reconstruction into the medieval Swedish written record.','reviewed'),
(1057,194,1250,1251,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1058,194,1251,1252,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1059,194,1252,1253,'knowledge_boundary','No older form is promoted beyond the proposed *peh₁- comparison.','The trail ends before enemy, hater, Devil, or harm is reverse-engineered into one universal prehistoric concept.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1055,537,'Headword, inflection, meaning, examples, and HISTORY','supports','Publishes current fiende, Old Swedish fiande or fiände, early-1300s evidence, and modern semantic range.'),
(1055,538,'Historical spellings, senses 1–2, and dated examples','supports','Documents the Old-to-modern spelling record and personal, collective, military, Devil, and figurative senses.'),
(1056,537,'HISTORY: Old Swedish fiande / fiände; Common Germanic; originally hatande','supports','Places the Swedish forms in the inherited Germanic family and states the original participial force.'),
(1056,538,'Etymology: fsv. fiande, fiände and Germanic cognate set','supports','Publishes the Old Swedish forms, collateral descendants, hate-verb comparison, and formation parallel with frände.'),
(1056,539,'p. 135, fiende from fsv. fiænde / fiande and Germanic cognates','supports','Independently analyzes the Swedish noun as the branch continuation of the Germanic participial enemy formation.'),
(1056,491,'p. 140, *fi(j)and- and Germanic descendants','context','Supplies the reconstructed parent and wider comparative set.'),
(1057,537,'HISTORY: originally hatande','context','Gives the current Swedish dictionary’s literal participial analysis.'),
(1057,538,'Etymology: originally present participle to a Germanic verb meaning hate','supports','Publishes the word-formation relation behind fiende.'),
(1057,539,'p. 135, egentl. part. pres. till germ. *fijēn, hata','supports','Independently states the present-participial derivation.'),
(1057,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the Germanic word-formation relationship.'),
(1057,492,'pp. 47–49, lexicalized enemy noun beside productive present participles','context','Shows the lexicalized noun and productive participial category side by side in Gothic.'),
(1058,491,'p. 140, deeper etymological analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used with reduced confidence.'),
(1058,539,'p. 135, older comparison with Indo-European pi and Sanskrit pīyati','context','Records an older deeper comparison without making it the canonical route.'),
(1059,491,'p. 140, deepest modern comparison used in this dossier','supports','Supports stopping after the qualified PIE proposal rather than inventing an earlier node.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(394,1249,537,'beginning of the 1300s',NULL,'Skåne-Lagen first-use report','SO HISTORY, first attested line','fiande / fiände','established','lexicographic_first_use',NULL,NULL,NULL,0,'SO reports the Old Swedish forms and dates the word to the beginning of the 1300s in Skåne-Lagen. The report was inspected; no law-manuscript object was directly inspected, and the date is not converted into a false point year.'),
(395,1249,540,'medieval Swedish; edition locator MP 5:147',NULL,'Söderwall Fiande, MP passage','MP 5:147','mange äro ok the fly wer som. .. wredghas ok ängxlas a mothe gudhi som hans owinir ok fyondhe','established','lexical_corpus_record',NULL,NULL,NULL,0,'Söderwall’s dictionary supplies the displayed edition excerpt and locator. The spelling and punctuation are preserved from the digital lexical record; no medieval witness was directly inspected.'),
(396,1249,540,'medieval Swedish; edition locator SpV 584',NULL,'Söderwall Fiande, Devil passage','SpV 584','sighrin är fanghin aff fiondeomen, som är köthith, wärdhin ok diäffwllin','established','lexical_corpus_record',NULL,NULL,NULL,0,'Söderwall files the passage under Fiande and its especially-Devil semantic branch. This is a source-reported edited text, not a directly inspected manuscript object.'),
(397,1249,538,'1521',1521,'Gustav I’s registratur, friendship-with-enemies clause','GR 1:31','Wj .. viliom inghom aff hanss ... fiendhom annad en venskap.','established','lexical_corpus_record',NULL,NULL,NULL,0,'SAOB locates the early-modern political or collective enemy use. The dictionary record was inspected; no underlying document object was inspected.'),
(398,1248,538,'1526',1526,'Swedish New Testament, Matthew 5:43','NT 1526, Matthew 5:43','Tu skall elska thin nästa, och hata thin fiende.','established','lexical_corpus_record',NULL,NULL,NULL,0,'SAOB locates the enemy token in the love-and-hate contrast. It supports ordinary enemy use and does not make modern hata the morphological parent of fiende.'),
(399,1248,538,'1526',1526,'Swedish New Testament, 1 Peter 5:8','NT 1526, 1 Peter 5:8','Idhar fiende diefuulen.','established','lexical_corpus_record',NULL,NULL,NULL,0,'SAOB records the Devil apposition. The lexical record supports historical Fienden or the enemy as the Devil; no printed-page object was directly inspected.'),
(400,1248,538,'1555',1555,'Olaus Magnus, Devil sense','Hist. 1555, SAOB sense I.1.b','Man råkar aff Fiendans tilskyndan falla j synd.','established','lexical_corpus_record',NULL,NULL,NULL,0,'SAOB locates another early-modern Devil use. It is source-reported evidence and does not show that the demonic branch was the only meaning.'),
(401,1248,538,'1651',1651,'Seventeenth-century figurative tree-enemy use','SAOB sense I.1.c, 1651 example','är doch the andre Trääns Fiende','established','lexical_corpus_record',NULL,NULL,NULL,0,'SAOB records an inanimate figurative enemy relation between trees. The excerpt is lexical evidence, not a claim about modern botanical terminology.'),
(402,1248,538,'1665',1665,'Seventeenth-century hidden-enemy proverb','SAOB sense I.1.a, 1665 example','Hemligh haatare, är wärre än en vppenbar Fiende.','established','lexical_corpus_record',NULL,NULL,NULL,0,'SAOB locates the hater-versus-enemy contrast. The example is historically suggestive but does not by itself establish the prehistoric participial derivation.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(896,194,'fijands','Gothic','the reviewed lexicalized enemy noun closest to the reconstructed formation',538),
(897,194,'fjándi','Old Norse','a North Germanic cognate enemy noun',538),
(898,194,'fjende','Danish','a modern North Germanic cognate',538),
(899,194,'fēond','Old English','the reviewed West Germanic enemy noun behind modern fiend',538),
(900,194,'fīant','Old High German','a West Germanic cognate continued by German Feind',538),
(901,194,'fīond / fīund','Old Saxon','a West Germanic cognate set',538),
(902,194,'vijand','Dutch','the reviewed Dutch continuation that retained ordinary enemy',537),
(903,194,'Feind','German','the reviewed German continuation that retained ordinary enemy',538),
(904,194,'fiend','English','the reviewed English cousin whose demonic branch became central',538),
(905,194,'fijan','Gothic','an attested continuation of the Germanic hate verb behind the enemy formation',538),
(906,194,'fjá','Old Norse / Icelandic','a North Germanic hate-verb cognate cited by the Swedish dictionaries',538),
(907,194,'fīēn','Old High German','a West Germanic hate-verb cognate',538),
(908,194,'hata','Swedish','the modern and historical Swedish hate verb from the separate hat- family, not the parent of fiende',541),
(909,194,'fientlig','Swedish','a derivative adjective meaning hostile; SAOB identifies Low German mediation',538),
(910,194,'fiendskap','Swedish','a derivative noun naming enmity or hostility',538),
(911,194,'ärkefiende','Swedish','a compound naming an arch-enemy',538),
(912,194,'dödsfiende','Swedish','a compound naming a mortal enemy',538);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(805,194,1,'Proposed Indo-European linguistic horizon','proposed *peh₁- comparison','Kroonen’s deeper route is a comparative linguistic proposal, not a word located at one excavated place.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon attached to a proposed analysis, not an archaeological finding.'),
(806,194,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and *fi(j)and-','The hate verb and lexicalized participial enemy noun are comparative reconstructions shared across Germanic branches.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not directly dated spoken tokens or a single geographic point.'),
(807,194,3,'Medieval Swedish legal record','Skåne-Lagen, beginning of the 1300s','SO reports fiende from the beginning of the 1300s in Skåne-Lagen. The title does not by itself justify one manuscript-production coordinate.',NULL,NULL,'broad',1300,1325,'range','A conservative interval for the lexicographic date label, not a token year, coinage date, or directly inspected object.'),
(808,194,4,'Old Swedish textual record','Fiande in Söderwall’s medieval dictionary','Söderwall’s located edition excerpts document ordinary enemy and especially Devil uses. Their source worlds are not collapsed into a single map pin.',NULL,NULL,'broad',1300,1526,'range','A language-period range around multiple edited records, not one uniform regional event.'),
(809,194,5,'Early-modern Swedish record','fiendhom and fiende, 1521–1665','SAOB records political, biblical, demonic, and figurative uses across early-modern Swedish texts.',NULL,NULL,'broad',1521,1665,'range','A multi-source evidence interval; no single coordinate or innovation site is asserted.'),
(810,194,6,'Swedish-language continuum','current fiende and historical dictionary record','SAOB and SO document continuation into modern Swedish, with ordinary enemy or opponent central and military, collective, and figurative uses available.',NULL,NULL,'broad',1924,2026,'range','Dictionary publication and current-use horizon, not a claim of dialectal uniformity.'),
(811,194,7,'Knowledge boundary','beyond the proposed Indo-European comparison','The graph stops before hater, enemy, Devil, hatred, harm, or pursuit is declared the one certain prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(805,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the deepest modern route used with proposed confidence.'),
(805,539,'p. 135, older Indo-European and Sanskrit comparison','context','Records a historical alternative without making it the canonical route.'),
(806,491,'p. 140, *fi(j)ēn- and *fi(j)and-','supports','Publishes the reconstructed Germanic verb and agent noun.'),
(806,492,'pp. 47–49, lexicalization of the nd-formation','context','Documents the inherited formation and category overlap.'),
(806,538,'Etymology and Germanic comparative set','context','Supplies the Swedish-centered cognate and hate-verb comparison.'),
(807,537,'HISTORY: beginning of the 1300s in Skåne-Lagen','supports','Provides the source title, language stage, and bounded date label.'),
(808,540,'Fiande entry and located edition excerpts','supports','Documents multiple Old Swedish enemy and Devil records.'),
(808,542,'Söderwall resource description and corpus metadata','context','Documents the historical dictionary resource rather than a directly inspected medieval object.'),
(809,538,'Dated examples 1521, 1526, 1555, 1651, and 1665','supports','Documents the early-modern semantic range and exact lexical locators.'),
(810,537,'Current headword, meaning, examples, and HISTORY','supports','Documents current Swedish grammar and continuation.'),
(810,538,'Published 1924 article and historical-to-modern senses','context','Supplies the historical dictionary record and broad usage architecture.'),
(811,491,'p. 140, deepest modern comparison used here','supports','Supports an explicit endpoint after the qualified PIE proposal.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(530,194,'Does modern fiende mean only a person who privately hates someone?','No. SO and SAOB cover personal opponents, hostile states or forces, military collectives, natural enemies, and figurative nonhuman threats.','established','The current and historical Academy dictionaries publish a broader semantic range.','resolved','The literal one-who-hates belongs to historical word formation and is not imposed as the definition of every modern token.'),
(531,194,'Was fiende historically a present participle?','Yes at the inherited formation level. SO says originally hatande; SAOB says it is properly a present participle to a Germanic hate verb; Hellquist independently gives the same analysis.','probable','Three Swedish dictionary authorities converge, while the parent form itself remains reconstructed.','resolved','The dossier labels the parent with an asterisk and presents one-who-hates as a word-formation analysis, not an attested Proto-Germanic phrase.'),
(532,194,'Is Swedish fiende formed from modern hata?','No. The fi(j)- verb family behind fiende is distinct from the hat- family behind Swedish hata.','established','SAOB publishes separate etymologies: fiende beside Gothic fijan and Old Norse fjá, hata beside Gothic hatan, Old Norse hata, Old English hatian, and German hassen.','resolved','The graph connects fiende through *fi(j)ēn- and treats hata as a cited collateral semantic comparison, never a parent node.'),
(533,194,'Is modern fiende still a productive Swedish participle?','No. SO and SAOB classify current fiende as a noun. The participial origin is historical and lexicalized.','established','The Academy dictionaries distinguish current word class from historical formation.','resolved','The interface says frozen or lexicalized participle and does not give modern Swedish a fiende verb paradigm.'),
(534,194,'Was Fienden genuinely used for the Devil in Swedish?','Yes. Söderwall gives medieval Devil records, and SAOB gives multiple early-modern uses including the 1526 apposition fiende diefuulen.','established','Independent medieval and historical dictionaries preserve located evidence.','resolved','The demonic branch remains visible as attested Swedish semantic history.'),
(535,194,'Is the Devil the central current meaning of fiende?','No. SO defines an opponent prepared to harm a counterpart and supplies ordinary, military, figurative, and natural-enemy uses. SAOB marks the older Devil use as barely current by 1924.','established','Current and historical Academy labels distinguish the obsolete branch from modern usage.','resolved','The main gloss remains enemy or opponent, not demon.'),
(536,194,'Does definite singular fienden always mean the Devil?','No. Historical religious contexts can use Fienden that way, but SO also notes definite singular in ordinary military use. Grammar alone cannot choose the referent.','established','SO and SAOB publish distinct definite-singular contexts.','resolved','Attestations retain their contexts instead of using capitalization or definiteness as an automatic semantic classifier.'),
(537,194,'Does the beginning-of-the-1300s record date the coinage of fiende?','No. It is the earliest use reported by SO, not a birth certificate. The inherited cross-Germanic formation predates the surviving Swedish record.','established','SO separates first attestation from etymology, and comparative sources place the formation at the reconstructed Germanic level.','resolved','The timeline says first reviewed Swedish evidence, never invention date.'),
(538,194,'Were the medieval and early-modern witness objects directly inspected?','No. This review inspected dictionary records and a scanned etymological dictionary page, not the Skåne-Lagen manuscript, Söderwall’s underlying medieval objects, or the cited early-modern print pages.','established','The source surfaces provide lexicographic reports and edition locators but no completed object-level inspection for these rows.','resolved','Every fiende attestation remains directly_inspected=0, and the dossier creates no witness-inspection record.'),
(539,194,'Does fiende securely descend from exactly *peh₁-?','Only as a qualified modern proposal. Kroonen publishes the route; Hellquist records a historically different deeper comparison, and neither recovers a written ancestral token or unique original semantic scene.','proposed','The Germanic noun-and-verb comparison is firmer than the displayed Proto-Indo-European route.','open',NULL),
(540,194,'Was Swedish fiende borrowed from Danish, German, Dutch, or English?','No borrowing is established. Old Swedish fiande or fiände belongs to the inherited Germanic set alongside Danish fjende, German Feind, Dutch vijand, and English fiend.','probable','SO, SAOB, Hellquist, and Kroonen publish collateral comparative forms.','resolved','The canonical graph reuses the shared reconstructed formation and draws no daughter-language donor arrow into Swedish.'),
(541,194,'Is Swedish frände a cognate from the same lexical root?','Not on the cited evidence. SAOB and Hellquist compare fiende with frände with respect to formation; that morphological parallel does not make the two words descendants of one lexical root.','established','Both dictionaries explicitly frame frände as a comparison of formation.','resolved','Frände is not inserted as an ancestor or root cognate.'),
(542,194,'Can the exact Proto-Germanic pronunciation and lexicalization moment be recovered?','No. *fi(j)and- and *fi(j)ēn- are normalized comparative reconstructions; optional j, branch vowels, and the timing of lexicalization remain analytical.','probable','Kroonen and Ayora Estevan publish compatible forms and pre-Gothic lexicalization without one directly observed event.','open',NULL),
(543,194,'Does the root reveal that every enemy is truly a hater?','No. Etymology records historical formation, not an immutable present-day essence. Modern fiende covers people, states, armies, forces, and figurative threats whether or not literal hatred is evidenced.','established','SO and SAOB supply current semantics; the participial analysis belongs to historical sources.','resolved','The leaderboard reveal exposes hidden morphology while the dossier explicitly rejects the etymological fallacy.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(530,537,'Definitions, constructions, and examples','supports','Documents personal, military, natural, and figurative enemy uses.'),
(530,538,'Senses I.1 and I.2','context','Documents the broader historical semantic architecture.'),
(531,537,'HISTORY: ursprungligen hatande','supports','States the current dictionary’s literal formation analysis.'),
(531,538,'Etymology: eg. p. pr. till ett germ. verb med bet. hata','supports','Publishes the participial derivation and Germanic verb comparison.'),
(531,539,'p. 135, egentl. part. pres. till germ. *fijēn','supports','Independently confirms the same derivation.'),
(532,538,'FIENDE etymology: Gothic fijan and Old Norse fjá','supports','Places fiende in the fi(j)- hate-verb family.'),
(532,541,'HATA etymology: Gothic hatan, Old Norse hata, Old English hatian, German hassen','supports','Places hata in the separate hat- family.'),
(533,537,'Word class: substantiv','supports','Confirms the current noun category.'),
(533,538,'Headword grammar and etymology','context','Separates current noun from historical participial formation.'),
(534,540,'Fiande meaning and Devil excerpts','supports','Provides medieval source-reported Devil evidence.'),
(534,538,'Sense I.1.b and dated Devil examples','supports','Provides repeated early-modern evidence.'),
(535,537,'Current definition and examples','supports','Shows ordinary enemy or opponent as the current center.'),
(535,538,'Sense I.1.b, now barely used','supports','Marks the Devil branch as historical or obsolescent.'),
(536,537,'Usage note on definite singular in military meaning','supports','Shows a non-demonic definite-singular construction.'),
(536,538,'Sense I.1.b, Fienden as the Devil','context','Shows the competing historical referent.'),
(537,537,'HISTORY: attested since the beginning of the 1300s in Skåne-Lagen','supports','Provides a first-use horizon rather than a coinage date.'),
(537,491,'p. 140, reconstructed Germanic formation','context','Places the inherited formation before the Swedish record.'),
(538,537,'Lexicographic first-use report','supports','Supplies no object-level manuscript inspection.'),
(538,540,'Digital historical-dictionary entry and edition locators','supports','Supplies edited lexical records rather than directly inspected medieval objects.'),
(538,542,'Resource description for the Söderwall dictionary','context','Documents the dictionary resource while preserving the primary-witness gap.'),
(539,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the qualified route used in the graph.'),
(539,539,'p. 135, older Indo-European pi and Sanskrit pīyati comparison','context','Shows historical variation in the deeper formal analysis.'),
(540,537,'HISTORY: Common Germanic word and Old Swedish forms','supports','Places Swedish inside inherited Germanic continuity.'),
(540,538,'Germanic cognate inventory','supports','Publishes the collateral daughter forms.'),
(540,491,'p. 140, *fi(j)and- and descendants','context','Places the forms beneath shared ancestry rather than borrowing.'),
(541,538,'Etymology: med avs. på bildningen jfr FRÄNDE','supports','Frames frände as a comparison of formation.'),
(541,539,'p. 135, jfr med avs. på bildningen frände','supports','Independently limits the comparison to formation.'),
(542,491,'p. 140, *fi(j)and- and *fi(j)ēn-','supports','Publishes reconstructed normalized forms.'),
(542,492,'pp. 47–49, pre-Gothic lexicalization and category overlap','context','Supports lexicalization without supplying one observable moment.'),
(543,537,'Current definition, constructions, and examples','supports','Shows that present uses cannot be reduced to literal hatred.'),
(543,538,'Historical formation and semantic range','context','Separates diachronic morphology from synchronic meaning.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(194,194,2102,'fiende','Swedish fiende is not built from modern hata.','SO says fiende originally meant hatande. SAOB and Hellquist make the hidden grammar explicit: the enemy noun is a lexicalized present participle of the Germanic fi(j)- verb, literally one who hates. But SAOB’s separate hata article places the modern Swedish hate verb in the hat- family. Swedish therefore carries two different Germanic hate histories side by side: one fossilized inside the everyday noun enemy, the other alive as the everyday verb hata.','A',100,'The two official SAOB etymologies establish the distinct families; SO and Hellquist independently support the participial origin. The reveal does not claim that every modern enemy literally hates, that fiende is still a participle, or that the proposed *peh₁- route is certain.');
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
(194,537,'HISTORY: Old Swedish forms, Common Germanic, originally hatande','supports','States the current dictionary’s concise participial analysis.'),
(194,538,'FIENDE etymology: present participle to Germanic hate verb','supports','Publishes the hidden word formation and fi(j)- comparative family.'),
(194,539,'p. 135, present participle from Germanic *fijēn','supports','Independently confirms the fossilized-participle analysis.'),
(194,541,'HATA etymology and Germanic cognates','supports','Establishes that modern Swedish hata belongs to the separate hat- family.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(150,194,176,'SWEDISH HID TWO HATE HISTORIES IN ONE SENTENCE','Swedish fiende and hata are semantic partners but not a transparent noun-and-verb pair from one stem. Fiende fossilizes the fi(j)- family’s one-who-hates formation; Swedish hata and reviewed English hate continue the separate hat- family. Follow the English dossier to see how hostile action, persecution, and feeling compete inside that other history.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1248 AND 1253
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1250,1251,1252) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1248 THEN 'Promoted from the graph-derived top evidence-ready candidate into a complete Swedish lexical, historical, comparative, semantic, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1248 AND 1253;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1055 AND 1059;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1055 AND 1059;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1055 AND 1059;
