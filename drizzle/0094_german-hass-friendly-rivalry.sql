-- Promote German Hass from a cited relative into a complete dossier.
-- The modern hostile-feeling sense, the 1996 spelling change, the medieval
-- friendly-rivalry record, and the disputed pursuit-versus-sorrow prehistory
-- remain separate claims instead of one falsely singular original meaning.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(190,'hass','Hass','hass','/has/','German masculine noun','The modern German noun for intense aversion, rejection, or hostility toward a person, group, or institution. Duden traces Middle and Old High German haʒ to suffering, sorrow, and resentment and records the 1996 spelling change from Haß to Hass. DWDS/Pfeifer reports the Old High German noun from the eighth century and places it in the Germanic family of Old Saxon heti, Old English hete, Old Norse hatr, Gothic hatis, and related forms. Grimm’s DWB preserves a more complicated semantic record: hostile pursuit or action, anger expressed in deeds, ordinary hostile disposition, and even measured rivalry during friendly competition. The reviewed route reuses *hatiz- and the qualified *ḱh₂d-es- / *ḱeh₂d- comparison, then stops.','Medieval Hass could be friendly. Grimm cites an Erec passage in which riders compete amicably and their bescheiden haʒ is measured rivalry, not modern intense aversion. The record proves a historical side meaning without proving that love and hate share a root.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(517,'duden-hass','Duden — Hass','Dudenredaktion',2026,'Cornelsen Verlag','https://www.duden.de/rechtschreibung/Hass',NULL,'contemporary_dictionary'),
(518,'dwds-hass-pfeifer','DWDS — Hass, etymology after Wolfgang Pfeifer','Wolfgang Pfeifer · DWDS editorial team',2026,'Berlin-Brandenburg Academy of Sciences','https://www.dwds.de/wb/Hass',NULL,'etymological_dictionary'),
(519,'dwds-dwb-hass','Deutsches Wörterbuch von Jacob Grimm und Wilhelm Grimm — hasz, m.','Jacob Grimm · Wilhelm Grimm · DWDS editorial team',2026,'Berlin-Brandenburg Academy of Sciences','https://www.dwds.de/wb/dwb/Hass',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1219,190,30,1,'Hass','hass','intense-aversion-modern-german','Hass','/has/','attested','current German standard spelling since 1996',1996,2026,'intense aversion, rejection, or hostility toward a person, group, or institution','Duden defines the current sense and states that the spelling changed in 1996. The date marks the current standard spelling, not the first historical use of ss in every German variety.'),
(1220,190,30,2,'Haß / hasz','hass-old-spelling','hostile-disposition-new-high-german','Haß / hasz',NULL,'attested','New High German spelling history before the 1996 reform',1350,1996,'hostile disposition, hatred, anger, or hostile action','Haß is the familiar pre-reform standard spelling; DWB’s digitized editorial text represents the character as hasz. The combined node preserves a spelling history, not one uniform pronunciation or typography across six centuries.'),
(1221,190,31,3,'haʒ','haz','hate-action-rivalry-middle-high-german','haʒ',NULL,'attested','Middle High German',1050,1350,'hostility, hostile pursuit or action, anger in action, or measured rivalry','DWB reports ordinary hostile disposition beside action-centered uses and one Erec passage where bescheiden haʒ occurs during friendly competition. A rare contextual sense is not projected onto every medieval token.'),
(1222,190,32,4,'haʒ','haz','hostile-disposition-old-high-german','haʒ',NULL,'attested','Old High German, reported from the eighth century',750,1050,'hostile disposition, resentment, enmity, suffering, or sorrow','DWDS/Pfeifer dates the form to the eighth century. Duden glosses the origin with suffering, sorrow, and resentment; DWB says hostile disposition is the exclusively attested Old High German center. No manuscript object was directly inspected.'),
(1223,190,5,5,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, hostility, or a related action field','Old English hete, Old Saxon heti, Old Norse hatr, Gothic hatis, Old High German haʒ, and other branch forms support the comparative noun. Published notation varies between *hataz and *hatiz-.'),
(1224,190,6,6,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. Semantic relations among the proposed Germanic, Celtic, Greek, Italic, and Iranian material remain disputed.'),
(1225,190,6,7,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','This is a comparative reconstruction, not a directly attested word or one securely recovered original meaning. Pursuit, hostile action, suffering, grief, care, and hatred remain competing semantic accounts.'),
(1226,190,7,8,'UNKNOWN','unknown','hass-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before friendly rivalry, inner aversion, hostile pursuit, suffering, grief, care, love, or pain is promoted as the one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1030,190,1219,1220,'orthographic_standardization','The 1996 German spelling reform writes ss after the short vowel in Hass where the pre-reform standard used ß. No pronunciation change is asserted.','The lexical meaning remains intense aversion or hostility; the edge models spelling standardization, not a new emotional category.','Dudenredaktion','established','Duden explicitly flags a 1996 spelling change. Earlier ss usage in Switzerland or other settings is not dated away by the standardization claim.','Pre-reform Haß to current standard Hass in 1996.','reviewed'),
(1031,190,1220,1221,'historical_continuation','Middle High German haʒ continues through New High German hasz or Haß with capitalization of the noun and changing conventions for the final sibilant.','The modern hostile-disposition center becomes dominant while the older action, pursuit, anger-in-action, and friendly-rivalry uses recede or disappear.','Dudenredaktion · Wolfgang Pfeifer · Jacob Grimm','established','All three dictionaries connect the historical forms. DWB documents the semantic contrast but does not license one date when every side meaning disappeared.','Middle High German through New High German spelling and semantic standardization.','reviewed'),
(1032,190,1221,1222,'historical_continuation','The reviewed dictionaries print the Old and Middle High German noun as haʒ; this edge preserves two attested language periods without inventing a sound change between identical normalized forms.','DWB says hostile disposition is exclusively attested in Old High German, while Middle High German records also expose hostile action, anger enacted, and rivalry. That is a difference in the surviving record, not proof of one instantaneous innovation.','Dudenredaktion · Wolfgang Pfeifer · Jacob Grimm','established','The historical stages are explicit. Semantic coverage reflects cited texts and may not exhaust spoken usage.','Old High German records from the eighth century into the Middle High German textual period.','reviewed'),
(1033,190,1222,1223,'inheritance','Under the comparative analysis, Germanic t develops into the Old High German sibilant written ʒ through the High German consonant shift, while i-stem morphology and gender are remodeled in the High German branch.','The inherited hate, anger, enmity, or hostility field continues as Old High German haʒ; competing sources disagree on whether pursuit, suffering, or hostile disposition best represents the earlier semantic center.','Wolfgang Pfeifer · Jacob Grimm · John T. Koch','probable','The Old High German form and cross-Germanic set are attested; the Proto-Germanic form, exact stem alternation, and semantic center are reconstructed.','Proto-Germanic reconstruction into the eighth-century Old High German record.','reviewed'),
(1034,190,1223,1224,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1035,190,1224,1225,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1036,190,1225,1226,'knowledge_boundary','No older form is promoted beyond the already disputed *ḱeh₂d- comparison.','The trail stops before one medieval rivalry, one modern feeling, or one scholarly pursuit-or-sorrow proposal is reverse-engineered into universal prehistory.','SET-U editorial boundary · Anatoly Liberman · Jacob Grimm','boundary','Secure comparison is strongest inside Germanic; the displayed Indo-European lane remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1030,517,'Current headword, meaning, and Did you know?: spelling changed in 1996','supports','Directly dates the standard spelling change and shows that current Hass remains the same pronounced and defined noun.'),
(1031,517,'Herkunft: Middle High German and Old High German haʒ','supports','Publishes the historical form behind modern Hass.'),
(1031,518,'Pfeifer etymology: Old High German and Middle High German haʒ','supports','Independently connects the High German stages to the modern noun.'),
(1031,519,'hasz, m., sections 1–2','supports','Documents Middle High German action, rivalry, and hostile-disposition uses beside the later New High German center.'),
(1032,517,'Herkunft','supports','Prints the same haʒ form for both Old and Middle High German.'),
(1032,518,'Pfeifer etymology: eighth-century Old High German and Middle High German haʒ','supports','Dates the older stage and supplies the continuation.'),
(1032,519,'hasz, m., historical-form paragraph and sections 1–2','supports','Separates the surviving Old High German semantic center from the wider Middle High German record.'),
(1033,518,'Pfeifer etymology: cross-Germanic old es/os stem','supports','Places Old High German haʒ beside Old Saxon, Dutch, English, Norse, Swedish, and Gothic forms.'),
(1033,519,'hasz, m., opening comparative paragraph','supports','Compares Gothic hatis, Old High German haʒ, Old Norse hatr, Old Saxon heti, and Old English hete.'),
(1033,473,'p. 101, Proto-Germanic *hataz ~ *hatiz- and Old High German haz','supports','Publishes the reconstructed stem alternation and High German descendant.'),
(1033,436,'Noun etymology: Germanic *hatiz- and branch forms','context','Independently supplies the i-stem analysis already used by the connected English dossiers.'),
(1034,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal comparison while flagging semantic opacity.'),
(1034,439,'Discussion of non-Germanic candidates and pursuit','challenges','Questions whether all proposed forms share one origin and advances hostile pursuit as a competing semantic account.'),
(1034,473,'p. 101, wider Celto-Germanic HATRED comparison','context','Publishes a broader affirmative comparison whose membership remains disputed.'),
(1035,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(1035,473,'p. 101, reconstructed Indo-European analysis','context','Provides a wider comparative treatment.'),
(1036,436,'Etymology note: semantic relations are far from transparent','supports','Marks the deep comparison as semantically unresolved.'),
(1036,439,'Conclusion: pursuit is promising while the broader family remains murky','supports','Supports stopping rather than choosing one convenient original meaning.'),
(1036,519,'hasz, m., opening claim of hostile pursuit beside later hostile disposition','context','Shows that even the historical German dictionary’s semantic account differs from Duden’s sorrow-and-resentment gloss.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(367,1222,518,'eighth century, source-reported',750,'Old High German headword horizon','Pfeifer etymology: Old High German haʒ (8th century)','haʒ','established','lexicographic_first_use',NULL,NULL,NULL,0,'DWDS/Pfeifer reports the Old High German form from the eighth century. No manuscript object was directly inspected, and 750 is a representative century marker rather than an exact first token.'),
(368,1221,519,'Middle High German literary record, source-reported',NULL,'Friendly hawking rivalry in Erec','hasz, m., sense 1; Erec 2059','dô sî nâch der beiʒe riten unde friuntlîchen striten, under in was ein bescheiden haʒ','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the passage as evidence for rivalry in pursuit of a goal. The underlying edition or manuscript was not directly inspected, and the record does not claim that every medieval haʒ was friendly.'),
(369,1221,519,'Middle High German literary record, source-reported',NULL,'Hostile pursuit or action in Kudrun','hasz, m., sense 1; Gudrun 638','daʒ dô Herwîc des haʒʒes hie began','probable','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports this passage beneath the hostile-pursuit or action sense. The object was not directly inspected, and the short excerpt does not independently settle the word’s original meaning.'),
(370,1220,519,'1560',1560,'Early New High German proverb record','hasz, m., sense 2; Agricola, Sprichwörter (1560), 120a','regiern freundlich und mit willen thuot vil hasz und hadders stillen','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports this dated printed occurrence for hostile disposition and strife. The 1560 object was not directly inspected, so the claim remains source-reported.'),
(371,1219,517,'contemporary dictionary example, source-reported',NULL,'Love turning into hate','Meaning examples','ihre Liebe schlug in Hass um','established','lexical_corpus_record',NULL,NULL,NULL,0,'Duden supplies a current usage example. It establishes semantic opposition in contemporary German, not shared ancestry between Liebe and Hass or a dated historical event.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(841,190,'hassen','German','the modern cognate verb to hate',518),
(842,190,'hässlich','German','a related adjective in the same historical word group',518),
(843,190,'Hässlichkeit','German','the abstract noun formed in the related ugly word group',518),
(844,190,'hete','Old English','an inherited Germanic noun cognate continued in the English hate family',518),
(845,190,'hate','English','the modern English cognate reached through Old English hete and the parallel verb history',518),
(846,190,'heti','Old Saxon','an inherited Germanic noun glossed enmity or persecution',518),
(847,190,'hōti','Old Saxon','an ablauting adjective meaning hostile or enraged',518),
(848,190,'hāt(e)','Middle Low German','a Low German continuation listed by Pfeifer',518),
(849,190,'hāte / hat','Middle Dutch','Middle Dutch variants in the inherited noun family',518),
(850,190,'haat','Dutch','the modern Dutch cognate',518),
(851,190,'hatr','Old Norse','a Germanic noun cognate for hatred or persecution',518),
(852,190,'hat','Swedish','the modern Swedish cognate',518),
(853,190,'hatis','Gothic','the Gothic noun for hate, anger, or wrath with a complete reviewed dossier',518),
(854,190,'hazzōn','Old High German','a related High German hate verb in the wider Germanic family',447),
(855,190,'hetzen','German','the pursuit and incitement verb relevant to the hostile-action hypothesis',439),
(856,190,'cás','Old Welsh','a proposed Celtic comparison meaning bitterness or hatred',436),
(857,190,'cais','Middle Irish','a disputed comparison with an ambivalent love-and-hatred field',436),
(858,190,'κῆδος','Ancient Greek','a proposed comparison involving care, anxiety, pain, or mourning rather than modern hate',473);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(775,190,1,'Disputed Indo-European comparative horizon','*ḱeh₂d- and *ḱh₂d-es-','Formal comparisons extend beyond Germanic, but the proposed forms do not establish one homeland, one original meaning, or one directly spoken word.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon, not an archaeological location or attestation date.'),
(776,190,2,'Proto-Germanic linguistic horizon','*hatiz-','Germanic branch forms support a reconstructed noun stem while its exact ablaut, inflection, and semantic center remain analytical.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval, not a directly dated token.'),
(777,190,3,'Old High German textual world','haʒ reported from the eighth century','DWDS/Pfeifer dates the form to the eighth century; the public source does not identify one inspected manuscript object in this dossier.',NULL,NULL,'broad',750,799,'century','The representative attestation year is a century marker, not an exact first use.'),
(778,190,4,'Middle High German literary record','haʒ across hostility, action, anger, and rivalry','DWB reports Kudrun, Walther, Iwein, and Erec passages, including friendly competition described as bescheiden haʒ.',NULL,NULL,'broad',1050,1350,'range','The conventional language period contains the cited records; no single coordinate or innovation date is asserted.'),
(779,190,5,'New High German textual continuum','hasz or Haß before the spelling reform','DWB reports hostile-disposition examples from biblical translation, proverb, drama, poetry, and prose traditions, while Duden confirms that the later standard spelling changed.',NULL,NULL,'broad',1350,1996,'range','The long interval models spelling and semantic continuation, not one uniform standard or unchanged pronunciation.'),
(780,190,6,'German orthographic standard','1996 spelling change to Hass','Duden explicitly identifies 1996 as the standard spelling change. This is an orthographic event, not the origin of the word or emotion.',NULL,NULL,'broad',1996,1996,'exact','The year is directly source-reported; no single city or publication is claimed as the entire reform.'),
(781,190,7,'Modern German-language continuum','Hass as intense aversion or hostility','Duden and DWDS document the current feeling-centered sense. German is pluricentric and distributed, so the stage is not reduced to one map pin.',NULL,NULL,'global',1996,2026,'range','The current interval follows the reported spelling reform and does not imply semantic uniformity in every use.'),
(782,190,8,'Knowledge boundary','beyond the disputed Indo-European comparison','The graph stops before rivalry, pursuit, suffering, grief, care, pain, or intense aversion is declared the one prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(775,436,'Noun etymology and semantic-transparency note','supports','Publishes the qualified formal comparison and its semantic problem.'),
(775,439,'Non-Germanic comparison discussion','challenges','Questions whether the wider proposed family has one origin or meaning.'),
(775,473,'p. 101, wider HATRED comparison','context','Provides the broader affirmative comparison while leaving it reconstructive.'),
(776,518,'Pfeifer etymology: cross-Germanic old es/os stem','supports','Supplies the branch evidence for the reconstructed noun.'),
(776,473,'p. 101, Proto-Germanic *hataz ~ *hatiz-','supports','Publishes the reconstructed stem notation.'),
(777,518,'Pfeifer etymology: Old High German haʒ (8th century)','supports','Supplies the century-level Old High German horizon.'),
(777,517,'Herkunft: Old High German haʒ','context','Independently identifies the historical stage.'),
(778,519,'hasz, m., senses 1–2; Gudrun 638, Erec 2059, and hostile-disposition examples','supports','Documents hostile action, measured friendly rivalry, and the more familiar hostile-disposition center in the Middle High German record.'),
(779,519,'hasz, m., sections 1–2 and Agricola (1560), 120a','supports','Supplies New High German spellings and cited semantic records.'),
(779,517,'Did you know?: spelling changed in 1996','context','Defines the endpoint of the pre-reform standard spelling.'),
(780,517,'Did you know?: spelling changed in 1996','supports','Directly dates the orthographic standardization.'),
(781,517,'Meaning and examples','supports','Documents intense aversion and hostility in current German.'),
(781,518,'Meaning and contemporary word profile','context','Independently documents the current feeling-centered noun.'),
(782,436,'Semantic relations are far from transparent','supports','Marks the Indo-European comparison as unresolved.'),
(782,439,'Qualified conclusion','supports','Supports an explicit boundary rather than a single invented origin.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(482,190,'Has Hass always meant only intense inner aversion?','No. Modern Duden centers intense aversion and hostility, but DWB reports Middle High German hostile action, anger expressed in deeds, pursuit, and measured rivalry beside the familiar disposition sense.','established','The modern and historical dictionaries explicitly document different contextual ranges.','resolved','The semantic history preserves the rare side meanings without replacing the current definition.'),
(483,190,'Could medieval haʒ describe friendly competition?','Yes in one cited Erec context. DWB quotes riders who friuntlîchen striten and calls their contest bescheiden haʒ, rivalry in pursuing a goal. This does not make every medieval use friendly.','established','DWB gives the passage, work locator, and its rivalry interpretation.','resolved','The leaderboard claim is limited to the cited contextual sense and source-reported status.'),
(484,190,'Did the 1996 reform create the word Hass?','No. Duden reports a spelling change; the noun continues Old and Middle High German haʒ and centuries of New High German Haß or hasz.','established','Duden dates the orthographic change and all three dictionaries publish the older lineage.','resolved','The graph models spelling reform as an edge, not a lexical birth.'),
(485,190,'Was the original meaning hostile pursuit or suffering and sorrow?','Unresolved. DWB argues for hostile pursuit or persecution as the original center; Duden glosses the origin as suffering, sorrow, and resentment; DWDS foregrounds hostile disposition, resentment, and enmity.','proposed','The reviewed dictionaries preserve competing semantic reconstructions.','open',NULL),
(486,190,'Does the friendly-rivalry sense come from Old High German evidence?','Not in the reviewed record. DWB says hostile disposition is exclusively attested in Old High German and places the friendly-rivalry passage in Middle High German Erec.','established','DWB explicitly separates the historical evidence periods.','resolved','The route does not project the Erec sense backward into the eighth century.'),
(487,190,'Was German Hass borrowed from English hate?','No borrowing is established. German Hass continues Old High German haʒ; English hate continues an Old English noun-and-verb history. The branches meet at reconstructed Germanic material.','established','DWDS and DWB list collateral inherited forms across Germanic.','resolved','The canonical graph joins the words at shared reconstruction and draws no English-to-German arrow.'),
(488,190,'Are Haß and Hass different etymological words?','No. They are standard-spelling stages of the same noun. Duden explicitly flags the 1996 spelling change without a semantic or pronunciation split.','established','The spelling note and historical lineage resolve the distinction.','resolved','The forms remain separate route nodes only so the orthographic event is visible.'),
(489,190,'Is the exact Proto-Germanic noun *hatiz- or *hataz?','The noun is reconstructed, and published notation reflects stem alternation and analytical choices. Koch prints *hataz ~ *hatiz- while Merriam-Webster foregrounds *hatiz-.','probable','The descendants are attested but the Proto-Germanic paradigm is comparative.','open',NULL),
(490,190,'Does Hass securely descend from *ḱeh₂d-?','Only as a qualified proposal. Formal correspondence is published, but the semantic chain through grief, care, pain, pursuit, and hatred is not transparent.','probable','Merriam-Webster qualifies the comparison and Liberman challenges the wider semantic family.','open',NULL),
(491,190,'Do Celtic cais and Greek κῆδος prove that love and hate share one root?','No. They belong to a disputed wider comparison. Middle Irish cais carries a striking love-and-hatred field, but that does not make German Liebe an ancestor or cognate of Hass.','proposed','The comparison is published with explicit semantic and membership cautions.','open',NULL),
(492,190,'Is Hass categorically incapable of a plural?','No across history. DWDS marks current Hass as singular-only, while DWB calls historical plurals rare and quotes theological hasse and poetic die hasse.','established','The sources distinguish current grammar from rare historical usage.','resolved','The dossier does not turn a current grammar label into an eternal ban.'),
(493,190,'Does modern Hass require a hostile action?','No. Duden defines a strong feeling of rejection or hostility; DWB says New High German ordinarily preserves hostile disposition. Action-centered uses matter historically without becoming a requirement for every modern token.','established','Modern definitions and the historical semantic division agree on this distinction.','resolved','The current headword gloss remains feeling-centered while the ancestry edges preserve the action dispute.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(482,517,'Meaning','supports','Centers current Hass on intense aversion, rejection, and hostility.'),
(482,519,'hasz, m., sections 1–2','supports','Documents pursuit, hostile action, anger in action, rivalry, and hostile disposition.'),
(483,519,'hasz, m., sense 1; Erec 2059','supports','Quotes friendly competition and interprets bescheiden haʒ as rivalry in pursuit of a goal.'),
(484,517,'Did you know?: spelling changed in 1996','supports','Identifies the event as spelling reform.'),
(484,518,'Pfeifer etymology: Old High German and Middle High German haʒ','context','Shows that the lexeme long predates the reform.'),
(485,519,'hasz, m., opening paragraph and sense 1','supports','Advances hostile pursuit or persecution as the original meaning.'),
(485,517,'Herkunft: originally suffering, sorrow, resentment','challenges','Publishes a different semantic origin gloss.'),
(485,518,'Pfeifer etymology: hostile disposition, resentment, enmity','context','Foregrounds the inherited hostility field without adopting one pursuit scene.'),
(486,519,'hasz, m., transition from sense 1 to sense 2','supports','Places friendly rivalry in Middle High German while describing Old High German hostile disposition as exclusive.'),
(487,518,'Pfeifer etymology: German, Old English, English, Dutch, Norse, Swedish, and Gothic forms','supports','Shows collateral inheritance rather than borrowing.'),
(487,519,'hasz, m., opening comparative paragraph','context','Independently lists the cross-Germanic cognate set.'),
(488,517,'Current spelling and 1996 spelling-change note','supports','Treats Hass as the current spelling of the inherited noun.'),
(489,473,'p. 101, *hataz ~ *hatiz-','supports','Publishes an alternating reconstruction.'),
(489,436,'Noun etymology: Germanic *hatiz-','context','Publishes the i-stem notation used by connected English dossiers.'),
(490,436,'Noun etymology and semantic-transparency note','supports','Publishes and qualifies the Indo-European comparison.'),
(490,439,'Discussion of proposed cognates and pursuit','challenges','Questions the unity of the wider semantic family.'),
(491,436,'Noun etymology: Middle Irish cais and Greek kēdos comparison','supports','Documents the proposed forms and semantic opacity.'),
(491,439,'Discussion of Irish cais and semantic skeleton keys','challenges','Warns against treating the love-and-hatred pairing as a solved origin.'),
(491,120,'Herkunft: Middle and Old High German Liebe lineage','context','Keeps the distinct German love-word ancestry visible.'),
(492,518,'Grammar: used only in the singular','supports','Documents the current usage label.'),
(492,519,'hasz, m., plural paragraph','context','Reports rare historical plural examples.'),
(493,517,'Meaning','supports','Defines current Hass as a feeling of intense aversion and hostility.'),
(493,519,'hasz, m., sense 2','context','Says New High German ordinarily preserves hostile disposition rather than hostile action.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(190,190,2100,'Hass','Medieval Hass could be friendly competition.','Grimm’s DWB quotes Erec 2059: riders pursue a hawking contest, friuntlîchen striten, and share a bescheiden haʒ. The dictionary interprets this as rivalry in pursuing a goal. Modern Duden instead centers intense aversion and hostility. The contrast reveals a real historical side meaning without claiming that every medieval use was friendly or that Liebe and Hass share ancestry.','A-',100,'The reveal is tied to one located, source-reported literary passage and two dictionary interpretations. It does not promote the underlying edition as directly inspected, generalize the rivalry sense, or settle the disputed prehistoric semantic center.');
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
(190,519,'hasz, m., sense 1; Erec 2059','supports','Quotes friuntlîchen striten and bescheiden haʒ and explains the rivalry-in-pursuit sense.'),
(190,517,'Meaning','context','Provides the modern intense-aversion contrast.'),
(190,518,'Pfeifer etymology: historical hostility and cross-Germanic family','context','Anchors the historical form and inherited family independently.'),
(190,439,'Pursuit hypothesis and conclusion','context','Shows that action-centered semantics are a scholarly proposal rather than a settled universal origin.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(14,190,47,'attested_semantic_opposition_distinct_ancestry','LOVE CAN TURN INTO HATE WITHOUT SHARING A ROOT','Duden’s example ihre Liebe schlug in Hass um and DWB’s repeated love-versus-hate contrasts make the German words semantic opposites inside attested usage. Their reviewed ancestries remain distinct: Liebe follows the *leubīn branch of the desire-and-care family, while Hass follows the Germanic *hatiz- family. This is an attested opposition, not a lexical parent edge.','Dudenredaktion · Jacob Grimm · Rosemarie Lühr','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(14,517,'Meaning example: ihre Liebe schlug in Hass um','supports','Places the two modern German words in direct semantic opposition.'),
(14,519,'hasz, m., sense 2: opposition to love','supports','Documents the historical hostile-disposition contrast with Liebe.'),
(14,120,'Herkunft: Middle and Old High German Liebe','context','Supplies the separate inherited ancestry of the German love noun.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(146,190,47,'LOVE AND HATE MEET IN A SENTENCE, NOT A ROOT','German usage can turn Liebe into Hass, and medieval haʒ can even name friendly rivalry. The graph keeps that semantic electricity visible while refusing the tempting false conclusion that the words share one ancestry. Their connection is cited opposition; their roots remain separate.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1219 AND 1226
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1223,1224,1225) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1219 THEN 'Canonicalized from the German Hass candidate into a complete spelling, semantic, attestation, dispute, context, and journey dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1219 AND 1226;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1030 AND 1036;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1030 AND 1036;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1030 AND 1036;
