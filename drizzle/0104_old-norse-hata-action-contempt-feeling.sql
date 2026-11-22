-- Promote Old Norse hata from the graph-derived evidence-ready queue into a
-- complete dossier. ONP structures 101 prose citations across persecution,
-- rejection or contempt, humiliation, ordinary hatred, participles, and
-- reflexive or reciprocal hostility. One c1200 manuscript leaf was directly
-- inspected, the remaining lexical and poetic records stay source-reported.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(200,'hata','hata','hata','not directly recoverable','Old Norse weak verb','Old Norse hata is not only a medieval label for an inward feeling. The Dictionary of Old Norse Prose structures 101 prose citations under four active senses before its participial and reflexive branches: persecute; despise, reject, or cast aside; mock or humiliate; and hate, despise, or stand hostile toward. That ordering is a lexicographic analysis, not a chronology of semantic change. Fritzner independently begins with pursue or seek to destroy, continues through damage or destruction, and only then gives hate opposed to love. Zoëga likewise preserves poetic damage or destruction beside ordinary hate, while Cleasby and Vigfússon record active, reflexive, reciprocal, participial, and disputed poetic uses. Lexicon Poeticum displays eleven linked rows, including variants, damage, destruction, persecution, loathing, haters, and the gold-spending formula, but warns that its concordance has not been reviewed and that dates need checking. A c1200 scan of Holm perg 15 4°, folio 89v, was directly inspected against ONP''s diplomatic transcription and visibly preserves hata in the line Elſcaþu hréinlife oc hata engi maɴ. All other rows remain source-reported. The generated possible runic inscriptions on modern dictionary transcriptions are excluded, and no exact historical pronunciation is invented.','Old Norse hate was not trapped inside the mind. The same verb could persecute, reject, humiliate, damage, destroy, and enter reciprocal hostility before a dictionary ever reached the familiar feeling sense.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(562,'onp-hata','Dictionary of Old Norse Prose — hata, verb','Dictionary of Old Norse Prose editors',2023,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?o31879',NULL,'historical_dictionary'),
(563,'cleasby-vigfusson-hata','An Icelandic-English Dictionary — hata','Richard Cleasby · Guðbrandur Vigfússon',1874,'Clarendon Press · digital transcription','https://cleasby-vigfusson-dictionary.vercel.app/word/hata',NULL,'historical_dictionary'),
(564,'zoega-hata','A Concise Dictionary of Old Icelandic — hata','Geir T. Zoëga',1910,'Oxford University Press · digital transcription','https://old-icelandic.vercel.app/word/hata',NULL,'historical_dictionary'),
(565,'fritzner-hata','Ordbog over Det gamle norske Sprog — hata','Johan Fritzner',NULL,'Digital transcription','https://old-norwegian-dictionary.vercel.app/word/hata',NULL,'historical_dictionary'),
(566,'lexicon-poeticum-hata','Lexicon Poeticum — hata, verb','Lexicon Poeticum · Skaldic Project editors',NULL,'University of Copenhagen · Skaldic Project','https://lexiconpoeticum.org/gefin/q.php?p=lp/words/word/32430',NULL,'research_database'),
(567,'onp-hata-pall-216','ONP citation — hata in Páls saga postula 216','Dictionary of Old Norse Prose editors · Unger edition',2023,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?c265665',NULL,'lexical_corpus_record'),
(568,'onp-hata-ragn-136','ONP citation — hata in Ragnars saga loðbrókar 136','Dictionary of Old Norse Prose editors · Olsen edition',2023,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?c818600',NULL,'lexical_corpus_record'),
(569,'onp-hata-di-vi-242','ONP citation — hata in Diplomatarium Islandicum VI 242','Dictionary of Old Norse Prose editors · Jón Þorkelsson edition',2023,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?c265750',NULL,'lexical_corpus_record'),
(570,'onp-hata-homisl-89v20','ONP citation — hata in Hómilíubók, Holm perg 15 4° folio 89v20','Dictionary of Old Norse Prose editors · de Leeuw van Weenen edition',2023,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?c265666',NULL,'lexical_corpus_record'),
(571,'holm-perg-15-89v-hata','ONP manuscript record — Holm perg 15 4° with folio 89v scan','Sprogsamlinger · University of Copenhagen',1200,'ONP manuscript catalog and viewer','https://onp.ku.dk/onp/onp.php?m448',NULL,'digitized_primary_source'),
(572,'onp-hata-mork-103','ONP citation — hataz in Morkinskinna 103','Dictionary of Old Norse Prose editors · Finnur Jónsson edition',2023,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?c265758',NULL,'lexical_corpus_record');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1279,200,66,1,'hata','hata','persecute-reject-humiliate-hate-old-norse-verb','hata',NULL,'attested','Old Norse prose and poetic record',700,1500,'to persecute; reject or despise; humiliate; hate; damage or destroy in poetic use; become or remain hostile in reflexive constructions','ONP exposes 101 prose citations and a structured sense inventory. The full range is not treated as one timeless definition or a proven chronological sequence. One c1200 manuscript token is directly inspected; the rest remain source-reported.'),
(1280,200,5,2,'*xatēnan ~ *xatōjanan','xatenan-xatojanan','hate-class-three-reconstruction','*xatēnan ~ *xatōjanan',NULL,'reconstructed','Proto-Germanic reconstruction alternatives',-500,200,'reconstructed class-III or related weak verbs in the hate and hostility field','Orel publishes the alternation and explicitly includes Old Norse hata with Gothic hatan, Old English hatian, Old Frisian hatia, Old Saxon hatan, and Old High German hazzōn. The x is Orel''s notation for the Germanic fricative commonly written h.'),
(1281,200,5,3,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','The weak-verb family is grouped with the Germanic hate-noun base represented in the reviewed graph by *hatiz-. The exact verb formation and semantic priority remain disputed.'),
(1282,200,6,4,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. Old Norse persecution, contempt, humiliation, destruction, and feeling do not reveal one certain prehistoric semantic scene.'),
(1283,200,6,5,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','The analytical base is reconstructed and its proposed semantic members are not transparently unified.'),
(1284,200,7,6,'UNKNOWN','unknown','hata-old-norse-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before pursuit, rejection, humiliation, destruction, hatred, grief, pain, or care is promoted as the one certain essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1080,200,1279,1280,'inheritance','Old Norse h continues the Germanic fricative Orel writes x, while the weak-verb stem and North Germanic inflection produce the attested hata paradigm. The reviewed sources do not expose one complete dated series of intermediate spoken forms.','The inherited hostility verb is distributed across persecution, rejection, humiliation, hate, damage or destruction, participial, and reciprocal constructions. Dictionary sense order is not promoted as a chronological semantic path.','Vladimir Orel · Dictionary of Old Norse Prose editors · Johan Fritzner','probable','The comparative family is published across Germanic branches, but reconstruction notation varies and the exact prehistoric semantic center is not recoverable.','Proto-Germanic reconstruction into Old Norse prose, poetry, and a directly inspected c1200 manuscript token.','reviewed'),
(1081,200,1280,1281,'derivation','Orel groups the weak-verb reconstruction with the Germanic hate-noun base he represents as *xataz ~ *xatez; the graph crosswalks that base to its reviewed *hatiz- node.','A noun family for hate or enmity supplies or associates with weak verbs whose daughter branches express hating, hostility, pursuit, and anger.','Vladimir Orel · Merriam-Webster Editors','probable','The lexical family is secure, but the exact formation of class-III hatan and the direction of any specifically Gothic remodeling remain disputed.','Related Proto-Germanic reconstructed formations rather than independently dated words.','reviewed'),
(1082,200,1281,1282,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1083,200,1282,1283,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1084,200,1283,1284,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The graph stops before Old Norse pursuit, contempt, humiliation, damage, or feeling is reverse-engineered into one certain prehistoric origin.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends inside the Germanic family; the displayed PIE route remains qualified.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1080,447,'p. 203, *xatēnan ~ *xatōjanan and Old Norse hata','supports','Publishes the reconstructed weak-verb alternation and the Old Norse daughter.'),
(1080,562,'Headword hata vb. [-að-], 101 structured prose citations','supports','Documents the attested Old Norse verb, inflectional class, and semantic and grammatical range.'),
(1080,565,'Headword hata, senses persecute, damage or destroy, and hate','supports','Independently preserves the action-to-feeling range and Germanic comparisons.'),
(1080,563,'Headword hata and Germanic cognate list','context','Supplies active, reflexive, reciprocal, and participial Old Norse grammar.'),
(1081,447,'p. 203, *xataz ~ *xatez beside *xatēnan ~ *xatōjanan','supports','Publishes the noun and weak-verb formations together in the Germanic family.'),
(1081,436,'Noun etymology: Germanic *hatiz- and derived weak verb','context','Supplies the graph''s cross-source representation of the corresponding noun base.'),
(1082,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the deeper formal proposal while flagging semantic opacity.'),
(1082,439,'Discussion of proposed non-Germanic cognates','challenges','Questions whether the proposed deeper members form one secure semantic family.'),
(1083,436,'Noun etymology: *ḱh₂d-es- from *ḱeh₂d-','supports','Publishes the proposed formation and analytical base.'),
(1084,436,'Etymology note: semantic relations are far from transparent','supports','Defines the limit of the deep comparison.'),
(1084,439,'Qualified conclusion on pursuit and the deeper comparison','supports','Supports an explicit endpoint rather than an invented first meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(443,1279,567,'AM 645 4° manuscript c1225-1250; source-reported',NULL,'Páls saga postula','ONP c265665; Páll¹ 21617','Ec em Jesus enn nadverske, er þu hatar','established','lexical_corpus_record','ONP citation index · AM collection','AM 645 4°',NULL,0,'ONP assigns the token to sense one, persecute, and aligns it with Latin quem tu persequeris in Acts 9:5. The exact manuscript leaf behind the edited page was not directly inspected.'),
(444,1279,568,'NKS 1824 b 4° manuscript c1400-1425; source-reported',NULL,'Ragnars saga loðbrókar','ONP c818600; Ragn 13612','þat virdir Ragnar sva, sem hann villde hata gullinu','established','lexical_corpus_record','ONP citation index · Royal Danish Library tradition','NKS 1824 b 4°',NULL,0,'ONP assigns the clause to despise, reject, or cast aside. It is distinct from the disputed poetic gold-spending formula and the underlying manuscript object was not directly inspected.'),
(445,1279,569,'document dated 1479; surviving JS 308 copy c1750',1479,'Skriptamál Ólafar Loftsdóttur','ONP c265750; DI VI 24226','helldr hatadi eg optsinnis guds veslinga med mo᷎rgum meinyrdum','established','lexical_corpus_record','ONP citation index','JS 308 8°ˣ',NULL,0,'ONP assigns the confession to mock or humiliate with abusive words. The date belongs to the document tradition; the cited manuscript copy is later and was not directly inspected.'),
(446,1279,571,'c1200',1200,'Holm perg 15 4° folio 89v','folio 89v, line 20; scan 1722110','Elſcaþu hréinlife oc hata engi maɴ','established','manuscript','ONP · Sprogsamlinger digital manuscript collection','Holm perg 15 4°, fol. 89v','https://onp.ku.dk/onp/onp.php?i1722110',1,'The scan pixels were directly inspected against ONP''s diplomatic transcription and citation c265666. They verify written hata in the command to love chastity and hate no person; they do not establish the headword''s first use, complete paradigm, exact pronunciation, or prehistoric ancestry.'),
(447,1279,572,'GKS 1009 fol manuscript c1275; source-reported',1275,'Morkinskinna','ONP c265758; Mork 10321','ver hofom ecki viþ verit þꜹ en miclo tiþindi er þer hafit viþ hataz frafall favþor yþars','established','lexical_corpus_record','ONP citation index','GKS 1009 fol',NULL,0,'ONP assigns the middle-voice construction hataz við to hostile opposition. The manuscript object was linked but not directly inspected for this token.'),
(448,1279,566,'poem attributed 1221; concordance date unreviewed',1221,'Snorri Sturluson, Háttatal 19','Lexicon Poeticum word record 290540','(grunn) djúp hata unna.','probable','lexical_corpus_record','Lexicon Poeticum · Skaldic Project',NULL,NULL,0,'The poetic record is translated with damage to the deep wave-ground. The public concordance warns that records and dates require review, so the token is not promoted as a directly inspected manuscript or an uncontested semantic stage.'),
(449,1279,566,'poem attributed 1335; concordance date unreviewed',1335,'Anonymous, Fourth Grammatical Treatise verse 8','Lexicon Poeticum word record 241911','hataz dygð; *rataz lygðir;','probable','lexical_corpus_record','Lexicon Poeticum · Skaldic Project',NULL,NULL,0,'The poetic record is translated virtue is destroyed. The asterisk on rataz belongs to the edition''s reading, not to a Proto-form, and the source warns that its concordance and dates require review.'),
(450,1279,566,'poem attributed 1104; concordance date unreviewed',1104,'Gísl Illugason, Magnússflokkr 7','Lexicon Poeticum word record 89176','við hatendr sína.','probable','lexical_corpus_record','Lexicon Poeticum · Skaldic Project',NULL,NULL,0,'The present participle is translated as his enemies, showing lexicalized hostile participants. The attribution date and concordance row remain source-reported and unreviewed.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(39,446,'2026-08-27','SET-U editorial review','visual_facsimile','hata','Elſcaþu hréinlife oc hata engi maɴ','Holm perg 15 4°, folio 89v, line 20, ONP scan 1722110','https://onp.ku.dk/onp/onp.php?i1722110','Verifies the visible manuscript sequence transcribed hata in the line aligned by ONP to folio 89v20. It does not by itself establish normalized headword status, the full sense inventory, earliest use, exact spoken realization, or deep reconstruction.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(985,200,'hatask / hataz','Old Norse','the middle-voice and reciprocal paradigm used for hostile opposition',562),
(986,200,'hatandi','Old Norse','the present participle, both one who hates and one who should be hated in ONP''s structure',562),
(987,200,'hatendr','Old Norse','the plural participle lexicalized as haters or enemies in poetry',566),
(988,200,'hata gulli','Old Norse','a disputed poetic gold-spending formula whose reading and original semantic interpretation remain open',563),
(989,200,'hatan','Gothic','a collateral class-III hate verb represented by two surviving participles',447),
(990,200,'hatian','Old English','a collateral weak verb directed at people, enemies, vices, and deeds',447),
(991,200,'hatia','Old Frisian','a collateral Germanic hate verb in Orel''s comparative set',447),
(992,200,'hatan','Old Saxon','a collateral class-III Germanic hate verb',447),
(993,200,'hazzōn','Old High German','a collateral Germanic hate verb',447),
(994,200,'hassen','German','the modern German continuation in the inherited hat- family',565),
(995,200,'hate','English','the modern English cousin reached through the distinct Old English branch',563),
(996,200,'hatr','Old Norse','the related noun for hate, hostility, sorrow, or grammatical vexation',563),
(997,200,'hatizōn','Gothic','a related class-II denominative meaning be angry',472),
(998,200,'fjá','Old Norse','a different inherited hate verb from the Germanic fi(j)- family, not a form of hata',554);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(847,200,1,'Proposed Indo-European linguistic horizon','qualified *ḱeh₂d- comparison','The deepest displayed route is a comparative proposal whose semantic members remain disputed.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon, not an attested word or archaeological point.'),
(848,200,2,'Proto-Germanic linguistic horizon','*xatēnan ~ *xatōjanan beside *hatiz-','Orel''s Gothic, Old English, Old Frisian, Old Saxon, Old Norse, and Old High German set supports a shared verb family while leaving reconstruction detail open.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token.'),
(849,200,3,'Old Norse homily manuscript tradition','Holm perg 15 4° folio 89v, c1200','A directly inspected leaf writes hata in a command that contrasts love with hating no person. The scan establishes a textual object, not one geographic birthplace.',NULL,NULL,'broad',1175,1225,'circa','The interval operationalizes ONP''s c1200 manuscript date.'),
(850,200,4,'Thirteenth-century Old Norse prose traditions','persecution and reciprocal hostility','Páls saga postula and Morkinskinna records show the verb in pursuit and hostile middle-voice constructions.',NULL,NULL,'broad',1225,1275,'range','Manuscript ranges anchor the reviewed records without claiming first use.'),
(851,200,5,'Old Norse poetic transmission','damage, destruction, haters, and gold imagery','Lexicon Poeticum exposes multiple poetic constructions and dates while warning that its concordance has not been reviewed.',NULL,NULL,'broad',1100,1400,'range','A source-reported poetic horizon whose individual dates require checking.'),
(852,200,6,'Late-medieval and early-modern textual transmission','rejection, humiliation, and ordinary hate','ONP citations preserve contempt for gold, humiliation with insults, and many love-versus-hate contexts across later witnesses.',NULL,NULL,'broad',1400,1500,'range','A textual-transmission range, not proof that any meaning began or ended there.'),
(853,200,7,'Modern research boundary','101 ONP prose citations and an unreviewed poetic concordance','The corpus architecture makes action, contempt, humiliation, feeling, participles, and reciprocal hostility inspectable without pretending the surviving records equal all historical usage.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Current database coverage and editorial state do not supply one historical frequency total.'),
(854,200,8,'Knowledge boundary','beyond the qualified Indo-European comparison','The graph stops before pursuit, rejection, humiliation, destruction, feeling, grief, care, or pain becomes one certain original essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(847,436,'Proposed *ḱh₂d-es- and *ḱeh₂d- analysis','supports','Publishes the deepest formal comparison with explicit semantic caution.'),
(847,439,'Qualified non-Germanic comparison','challenges','Preserves the dispute over semantic unity and membership.'),
(848,447,'p. 203, *xatēnan ~ *xatōjanan and Germanic daughters','supports','Publishes the comparative verb set including Old Norse hata.'),
(849,571,'Holm perg 15 4°, folio 89v, scan 1722110','supports','Supplies the directly inspected c1200 manuscript surface.'),
(849,570,'HómÍsl⁵³(1993) 89v20 and diplomatic transcription','context','Aligns the visible token to the edited line and sense-four citation.'),
(850,567,'Páll¹ 21617, AM 645 4° c1225-1250','supports','Supplies the persecution record and manuscript range.'),
(850,572,'Mork 10321, GKS 1009 fol c1275','supports','Supplies the hostile middle-voice record and manuscript date.'),
(851,566,'Eleven visible linked poetic rows and project warning','supports','Supplies the poetic constructions while publishing its own review limitation.'),
(852,568,'Ragn 13612, NKS 1824 b 4° c1400-1425','supports','Supplies the rejection or contempt record.'),
(852,569,'DI VI 24226, document dated 1479','supports','Supplies the humiliation-with-insults record.'),
(853,562,'Headword hata, 101 citations and structured branches','supports','Defines the bounded prose-corpus architecture.'),
(853,566,'Concordance warning and visible poetic rows','challenges','Prevents the poetic surface from becoming a definitive total.'),
(854,436,'Semantic-transparency warning','supports','Marks the deep comparison as semantically opaque.'),
(854,439,'Qualified conclusion','supports','Supports stopping beyond the secure Germanic family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(622,200,'Was Old Norse hata a verb?','Yes. ONP marks hata vb. with the weak stem [-að-], and Cleasby, Zoëga, and Fritzner independently classify the lemma as a verb.','established','Four historical dictionaries agree on lexical category and expose finite, participial, or middle-voice grammar.','resolved','The dossier keeps the verb distinct from the noun hatr and from the different verb fjá.'),
(623,200,'Does ONP expose 101 prose citations?','Yes on the reviewed public entry. The number is a current dictionary-citation count, not a census of every surviving token, lost text, or spoken use.','established','ONP labels the search box Search/filter 101 citations.','resolved','Every public count remains bounded to the named research surface.'),
(624,200,'Did hata mean only an inward feeling?','No. ONP structures persecution, rejection, humiliation, ordinary hate, participles, and hostile middle-voice constructions; Fritzner independently preserves persecution and damage or destruction.','established','The semantic branches contain located examples rather than modern paraphrase alone.','resolved','The contrarian reveal states range, not one first meaning.'),
(625,200,'Could hata mean persecute?','Yes. ONP''s first sense is persecute, and its Páls saga citation aligns er þu hatar with Latin quem tu persequeris. Fritzner gives the same passage under pursue.','established','The dictionary structure, exact citation, and Latin alignment converge.','resolved','The persecution sense is kept distinct from ordinary feeling.'),
(626,200,'Could hata mean reject or despise?','Yes. ONP''s second sense includes despise, reject, and cast aside; Ragnars saga uses hata gullinu in that prose structure.','established','The exact citation page assigns the clause to sense two.','resolved','This prose record is not collapsed into the disputed poetic gold-spending formula.'),
(627,200,'Could hata mean mock or humiliate?','Yes. ONP''s third sense is mock or humiliate and locates a 1479 confession in which the speaker hatadi God''s poor with many insults.','established','The structured sense and source-reported line agree.','resolved','The dossier records the social action without treating it as every token''s meaning.'),
(628,200,'Could poetic hata mean damage or destroy?','Probably. Zoëga states damage or destroy; Fritzner supplies poetic examples under damage, spoil, or destroy; the poetic concordance translates records with damage and destruction.','probable','Three lexical surfaces converge, but the public poetic concordance warns that it is unreviewed.','open',NULL),
(629,200,'Was shun the original meaning of hata?','Not established. Cleasby and Vigfússon propose that the poetic dative shun sense was probably original, then immediately say hatta with double t may be the better reading.','proposed','The same source both advances and destabilizes the claim.','open',NULL),
(630,200,'Does hata gulli simply mean hate gold?','Not securely. Cleasby treats the dative phrase as spend gold, ONP has a separate prose contempt-for-gold record, and the poetic reading itself is questioned.','proposed','Grammar, genre, metaphor, and textual reading prevent a single literal gloss.','open',NULL),
(631,200,'Was any underlying manuscript object directly inspected?','Yes, exactly one in this dossier: Holm perg 15 4° folio 89v. All other prose and poetic records remain source-reported.','established','The scan visibly preserves hata and has one structured witness-inspection record.','resolved','Direct inspection is never generalized from one leaf to the whole corpus.'),
(632,200,'Is the c1200 homily token the earliest surviving use?','Not established. It is an early directly inspected object, but the review did not compare every manuscript witness, poetic attribution, variant, or dating claim.','established','ONP and Lexicon Poeticum expose broader records with different dating models.','open',NULL),
(633,200,'Is the Proto-Germanic parent exactly *xatēnan ~ *xatōjanan?','The inherited verb family is secure enough for comparison, but reconstruction notation and the relationship among class-III and related weak formations vary.','probable','Orel publishes an alternation; other reviewed dossiers use *hatōjan- or discuss class fluctuation.','open',NULL),
(634,200,'Was the verb mechanically derived from *hatiz- in one recoverable step?','The noun and verb formations belong together, but the exact formation, chronology, and semantic direction are reconstructed rather than witnessed.','probable','Orel and Merriam-Webster connect the formations at different levels of specificity.','open',NULL),
(635,200,'Does hata securely descend from exactly *ḱeh₂d-?','Only as a qualified proposal. The Germanic comparison is firmer than the displayed Indo-European route, whose semantic members are far from transparent.','proposed','Merriam-Webster qualifies the route and Liberman challenges parts of the comparison.','open',NULL),
(636,200,'Can one exact Old Norse pronunciation be recovered?','No. Orthographic forms and comparative analysis constrain the history, but no sound recording or complete transition series exists.','established','The reviewed sources publish spellings, grammar, and comparison rather than audio.','open',NULL),
(637,200,'Are the possible runic inscriptions on modern dictionary pages historical attestations?','No. They are generated transliteration widgets without an object, inscription identifier, shelfmark, or historical locator.','established','The Cleasby, Zoëga, and Fritzner transcription pages generate forms from the headword.','resolved','Generated runes are excluded from attestations and witness counts.'),
(638,200,'Does Lexicon Poeticum establish exactly ten or eleven poetic tokens?','No definitive total is promoted. The h-word list reports ten, while the headword page exposes eleven linked rows including variants; the project warns that the concordance is unreviewed.','established','The public interfaces and warning are internally sufficient to reject a false definitive total.','open',NULL),
(639,200,'Does ONP''s sense order prove a chronological semantic sequence?','No. A structured dictionary article groups meanings for analysis; it does not by itself prove that persecution came before rejection, humiliation, or ordinary hate in speech.','established','No dated continuous transition series is published in the entry.','resolved','The leaderboard says sense order and semantic range, never a proven chronology.'),
(640,200,'Are hata and fjá forms of one Old Norse verb?','No. Both can be glossed hate, but hata belongs to the Germanic hat- family while fjá continues the different fi(j)- verb family.','established','Orel places hata in the hat- set; ONP and Kroonen place fjá under *fi(j)ēn-.','resolved','The graph keeps two entries and joins each to its own reconstructed family.'),
(641,200,'Is hatask a separate unrelated verb?','No on the reviewed evidence. ONP and Cleasby treat the middle-voice, reflexive, and reciprocal constructions inside the hata paradigm.','established','The sources document hatask with particles and reciprocal hostility under the same headword.','resolved','Inflectional and constructional variation remains visible without creating a false ancestor.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(622,562,'Headword hata vb. [-að-]','supports','Classifies the Old Norse weak verb.'),
(622,563,'Headword hata, active and reflexive grammar','supports','Independently documents the verb.'),
(623,562,'Search/filter 101 citations','supports','Supplies the bounded public prose count.'),
(624,562,'Senses 1-4 plus participial and hatask branches','supports','Publishes the multi-action and feeling range.'),
(624,565,'Senses persecute, damage or destroy, and hate','supports','Independently preserves the same broad semantic architecture.'),
(625,567,'Páll¹ 21617: er þu hatar ~ quem tu persequeris','supports','Supplies the located persecution alignment.'),
(625,565,'Sense 1, pursue or seek to destroy','supports','Independently interprets the action sense.'),
(626,568,'Ragn 13612 assigned to reject or despise','supports','Supplies the located prose contempt-for-gold record.'),
(627,569,'DI VI 24226 assigned to mock or humiliate','supports','Supplies the located humiliation-with-insults record.'),
(628,564,'Sense 2: damage, destroy, poetic','supports','Publishes the poetic action gloss.'),
(628,565,'Sense 2: damage, spoil, destroy','supports','Independently supplies examples and glosses.'),
(628,566,'Damage and destruction poetic rows; concordance warning','challenges','Supports the range while preserving the review limitation.'),
(629,563,'Poetic dative sense and original-sense proposal; immediate hatta caveat','supports','Publishes both the proposal and its textual objection.'),
(630,563,'hata gulli, spend gold; reading caveat','supports','Publishes the poetic formula and dispute.'),
(630,568,'Prose hata gullinu under reject or despise','challenges','Shows that a similar surface can occupy a different prose construction.'),
(631,571,'Holm perg 15 4°, folio 89v scan 1722110','supports','Supplies the directly inspected object.'),
(631,570,'Diplomatic transcription and c1200 metadata','context','Aligns the visible token to line 20.'),
(632,570,'HómÍsl⁵³(1993) 89v20','supports','Supplies one early object without a global earliest-use comparison.'),
(632,566,'Poetic records with attribution dates and date warning','challenges','Prevents a first-use claim from one inspected leaf.'),
(633,447,'p. 203, *xatēnan ~ *xatōjanan','supports','Publishes one comparative reconstruction.'),
(633,436,'Verb etymology: *hatōjan-','challenges','Supplies different reconstruction specificity.'),
(634,447,'p. 203, noun and weak-verb formations','supports','Connects the reconstructed family.'),
(634,436,'Noun base and derived weak verb','supports','Publishes a more directional analysis.'),
(635,436,'Qualified *ḱh₂d-es- and *ḱeh₂d- route','supports','Publishes the proposal with semantic caution.'),
(635,439,'Non-Germanic comparison discussion','challenges','Questions membership and semantic unity.'),
(636,562,'Orthographic paradigm and citations','supports','Supplies written evidence but no historical recording.'),
(637,563,'Modern page widget: possible runic inscription','supports','Shows the generated display lacks a historical object citation.'),
(637,564,'Modern page widget: possible runic inscription','supports','Independently shows the same generator behavior.'),
(637,565,'Modern page widget: possible runic inscription','supports','Shows the same non-historical generator on a third transcription.'),
(638,566,'Word-list count ten; eleven visible linked rows; unreviewed warning','supports','Publishes the mismatch and limitation.'),
(639,562,'Structured senses without a chronological transition series','supports','Supplies semantic organization, not a dated sequence.'),
(640,447,'p. 203, Old Norse hata under the hat- family','supports','Places hata in its comparative family.'),
(640,554,'ONP fjá links to EDPG *fi(j)ēn-','challenges','Places the other Old Norse hate verb in a different family.'),
(641,562,'C and D branches: hatask and particle constructions','supports','Classifies the middle-voice forms under hata.'),
(641,563,'Reflexive and reciprocal hata constructions','supports','Independently documents the grammar.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(200,200,2108,'hata','Old Norse hate was action, contempt, humiliation, and feeling inside one verb.','ONP''s 101-citation prose article orders four active senses before its participial and reciprocal branches: persecute; despise, reject, or cast aside; mock or humiliate; and hate, despise, or stand hostile. Fritzner independently moves from pursuit and destruction to ordinary hate. A c1200 manuscript leaf visibly writes hata in a command to love chastity and hate no person. The article''s sense order is not a chronology, and the poetic concordance is explicitly unreviewed; the reveal is the documented semantic range, not an invented first essence.','A',100,'The claim is supported by ONP''s structured prose entry, exact citation pages, one directly inspected manuscript token, Fritzner''s independent sense structure, and the warned poetic record. It does not claim a chronological order, definitive corpus total, exact pronunciation, historical runic inscription, or certain deepest PIE route.');
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
(200,562,'101 citations; senses persecute, reject, humiliate, hate; participial and hatask branches','supports','Supplies the prose semantic and grammatical architecture.'),
(200,567,'Páll¹ 21617: er þu hatar ~ quem tu persequeris','supports','Anchors the persecution sense.'),
(200,568,'Ragn 13612: hata gullinu under reject or despise','supports','Anchors the contempt or rejection sense.'),
(200,569,'DI VI 24226: humiliation with insults','supports','Anchors the humiliation sense.'),
(200,571,'Holm perg 15 4°, folio 89v, scan 1722110','supports','Supplies the directly inspected written hata token.'),
(200,570,'HómÍsl⁵³(1993) 89v20 and diplomatic transcription','context','Aligns the visible manuscript word to the love-versus-hate command.'),
(200,565,'Senses pursue, damage or destroy, and hate','supports','Independently preserves action, damage, and feeling.'),
(200,566,'Poetic constructions and explicit concordance warning','context','Extends the range while preserving the source''s limitation.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(156,200,199,'TWO OLD NORSE HATE VERBS; TWO GERMANIC HISTORIES','Old Norse hata and fjá can both be translated hate, but their evidence architectures diverge. ONP gives hata 101 prose citations and four active semantic branches before participial and reciprocal constructions. Fjá is marked poetic with no prose citations and three warned poetic records. More importantly, hata belongs to the Germanic hat- family while fjá continues *fi(j)ēn-. Translation makes them look like one idea; the graph reveals two inherited histories.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1279 AND 1284
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1280,1281,1282,1283) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1279 THEN 'Promoted from the graph-derived top evidence-ready candidate into a complete Old Norse semantic, grammatical, corpus, manuscript, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1279 AND 1284;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1080 AND 1084;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1080 AND 1084;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1080 AND 1084;
