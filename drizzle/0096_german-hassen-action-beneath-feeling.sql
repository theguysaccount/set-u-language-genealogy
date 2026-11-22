-- Promote German hassen from the highest-ranked relative candidate into a
-- complete dossier. Duden and Grimm's DWB both preserve an older pursuit or
-- persecution sense, but the exact prehistoric semantic center remains open.
-- Behaim, Graff, Agricola, and Frisch examples are source-reported because no
-- underlying primary object was directly inspected in this review.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(192,'hassen','hassen','hassen','[ˈhasn̩]','German weak verb','The modern German weak verb for feeling hatred toward a person or for strongly disliking a thing or action. Duden traces it through Middle High German haʒʒen and Old High German haʒʒēn / haʒʒōn and adds that the older verb also meant pursue. Grimm’s DWB makes the semantic contrast explicit: it calls hostile pursuit or persecution the original sense and then describes a later, more muted center in hostile disposition rather than hostile deeds. BMZ and Lexer independently document the Middle High German verb and its literary record. The reviewed ancestry follows the reconstructed Germanic weak-verb alternatives into the *hatiz- family, preserves the qualified *ḱh₂d-es- / *ḱeh₂d- proposal, and then stops.','German hassen has an action buried under the feeling. Duden says its older forms also meant pursue; Grimm’s DWB identifies hostile pursuit or persecution as the original sense and explicitly contrasts it with the later feeling-centered use. That is a source-attributed semantic history, not proof of one certain prehistoric scene.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(526,'duden-hassen','Duden — hassen','Dudenredaktion',2026,'Cornelsen Verlag','https://www.duden.de/rechtschreibung/hassen',NULL,'contemporary_dictionary'),
(527,'dwds-hassen-pfeifer','DWDS — hassen, etymology after Wolfgang Pfeifer','Wolfgang Pfeifer · DWDS editorial team',2026,'Berlin-Brandenburg Academy of Sciences','https://www.dwds.de/wb/hassen',NULL,'etymological_dictionary'),
(528,'dwds-dwb-hassen','Deutsches Wörterbuch von Jacob Grimm und Wilhelm Grimm — hassen','Jacob Grimm · Wilhelm Grimm · DWDS editorial team',2026,'Berlin-Brandenburg Academy of Sciences','https://www.dwds.de/wb/dwb/hassen',NULL,'historical_dictionary'),
(529,'bmz-hazze','Mittelhochdeutsches Wörterbuch — haʒʒe, swv.','Georg Friedrich Benecke · Wilhelm Müller · Friedrich Zarncke',1854,'Wörterbuchnetz · Trier Center for Digital Humanities','https://woerterbuchnetz.de/?sigle=BMZ&lemid=H00608',NULL,'historical_dictionary'),
(530,'lexer-hazzen','Mittelhochdeutsches Handwörterbuch — haʒʒen, swv.','Matthias Lexer',1872,'Wörterbuchnetz · Trier Center for Digital Humanities','https://www.woerterbuchnetz.de/Lexer?lemid=LH00895',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1232,192,30,1,'hassen','hassen','hate-aversion-modern-german-verb','hassen','[ˈhasn̩]','attested','New High German and current German',1650,2026,'to feel hatred toward someone; to feel strong aversion toward a person, thing, or action','Duden separates person-directed hatred from strong aversion toward things or actions. The pronunciation is the current dictionary form, not a claim of unchanged pronunciation since 1650.'),
(1233,192,84,2,'hassen','hassen','hate-dislike-early-new-high-german-verb','hassen',NULL,'attested','Early New High German textual record',1350,1650,'to hate or strongly dislike','DWB reports dated early-print examples. The stable modern-looking spelling does not imply one uniform pronunciation, grammar, or emotional intensity across the period.'),
(1234,192,31,3,'haʒʒen','hazzen','hate-dislike-middle-high-german-verb','haʒʒen',NULL,'attested','Middle High German',1050,1350,'to hate, dislike, or act against with hostility','Duden, DWB, BMZ, and Lexer publish the Middle High German form. Source-reported passages include both hostile feeling and contexts DWB aligns with persecution.'),
(1235,192,32,4,'haʒʒēn / haʒʒōn','hazzēn-hazzōn','hate-pursue-old-high-german-verb','haʒʒēn / haʒʒōn',NULL,'attested','Old High German',750,1050,'to hate; in reported glosses, to pursue or follow hostilely','Duden prints both variants. DWB reports Old High German forms aligned with Latin aemulari, insequamur, and insequuntur; those glosses are source-reported, not directly inspected manuscripts.'),
(1236,192,5,5,'*xatēnan ~ *xatōjanan','xatenan-xatojanan','hate-class-three-reconstruction','*xatēnan ~ *xatōjanan',NULL,'reconstructed','Proto-Germanic reconstruction alternatives',-500,200,'reconstructed class-III or related weak verbs meaning hate','Orel publishes the alternation and includes Old High German hazzōn in the comparative set. The x is Orel’s notation for the Germanic fricative commonly rendered h; the exact weak-verb reconstruction remains disputed.'),
(1237,192,5,6,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','The weak-verb family is grouped with the reconstructed Germanic hate noun base. The graph reuses the reviewed *hatiz- node while preserving uncertainty about formation and semantic direction.'),
(1238,192,6,7,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. The German action history does not make the wider semantic family transparent.'),
(1239,192,6,8,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','This is a comparative reconstruction, not an attested word or a securely recovered original meaning. Pursuit, persecution, grief, care, pain, and hatred remain competing accounts.'),
(1240,192,7,9,'UNKNOWN','unknown','hassen-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before one German action sense or one modern psychological gloss is promoted as the certain essence of the whole family.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1041,192,1232,1233,'historical_continuation','Early New High German hassen continues into New High German with the same normalized spelling while pronunciation, inflection, and usage are standardized over time.','The modern verb retains person-directed hatred and also supports a broad strong-aversion sense for things and actions; the edge does not assign one intensity to every historical token.','Dudenredaktion · Wolfgang Pfeifer · Jacob Grimm','established','The lexical continuation and current senses are directly documented; no single date is assigned to the semantic balance.','Early New High German print into the New High German and current record.','reviewed'),
(1042,192,1233,1234,'historical_continuation','Middle High German haʒʒen continues into the hassen spelling of the Early New High German record as the historical sibilant notation and spelling conventions change.','The Middle High German record already includes ordinary hating and disliking; action-centered persecution contexts recede while hostile disposition becomes central.','Dudenredaktion · Jacob Grimm · Matthias Lexer','established','The form sequence is explicit in the dictionaries. The semantic development is a corpus-based description, not an instantaneous change.','Middle High German into Early New High German textual records.','reviewed'),
(1043,192,1234,1235,'historical_continuation','The reviewed dictionaries connect Middle High German haʒʒen with Old High German haʒʒēn and haʒʒōn. The edge preserves the printed variants rather than inventing one normalized historical token.','DWB aligns Old High German forms with following or pursuing and describes the later feeling-centered sense as more muted; Middle High German evidence contains both hostile action and disposition.','Dudenredaktion · Jacob Grimm · Georg Friedrich Benecke · Wilhelm Müller · Friedrich Zarncke','established','The historical forms and located examples are published. No primary manuscript was directly inspected for this dossier.','Old High German into the Middle High German textual period.','reviewed'),
(1044,192,1235,1236,'inheritance','Old High German haʒʒōn belongs to the comparative weak-verb set Orel reconstructs as *xatēnan ~ *xatōjanan; the High German branch reflects the consonant-shifted Germanic t in the doubled sibilant spelling.','The inherited Germanic hate field continues in the Old High German verb, but pursuit, hostile action, and hostile disposition remain competing candidates for the earlier semantic center.','Vladimir Orel · Dudenredaktion · Jacob Grimm','probable','The Old High German variants and cross-Germanic set are published; the parent alternatives and semantic center are reconstructed.','Proto-Germanic reconstruction into the Old High German record.','reviewed'),
(1045,192,1236,1237,'derivation','Orel groups the weak-verb reconstruction with the Germanic hate-noun base he represents as *xataz ~ *xatez; the graph crosswalks that base to its reviewed *hatiz- node.','A noun family for hate or enmity supplies or associates with weak verbs whose daughter branches express hating, hostility, pursuit, and anger.','Vladimir Orel · Merriam-Webster Editors','probable','The lexical family is secure, but the exact formation of class-III hatan and the direction of any specifically Gothic remodeling remain disputed.','Related Proto-Germanic reconstructed formations rather than independently dated words.','reviewed'),
(1046,192,1237,1238,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1047,192,1238,1239,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1048,192,1239,1240,'knowledge_boundary','No older form is promoted beyond the already disputed *ḱeh₂d- comparison.','The trail stops before pursuit, persecution, feeling, grief, pain, care, or hatred is reverse-engineered into one universal prehistoric act.','SET-U editorial boundary · Anatoly Liberman · Jacob Grimm','boundary','Secure comparison is strongest inside Germanic; the displayed Indo-European lane remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1041,526,'Meanings 1–2, pronunciation, and grammar','supports','Documents the current weak verb, pronunciation, person-directed hatred, and strong-aversion sense.'),
(1041,527,'Current headword, pronunciation, and literary examples','context','Independently documents current usage and pronunciation.'),
(1041,528,'hassen, verb, sense 2 and New High German examples','supports','Documents the later hostile-disposition center and continuing textual usage.'),
(1042,526,'Herkunft: Middle High German haʒʒen','supports','Publishes the historical predecessor of current hassen.'),
(1042,528,'hassen, verb, historical forms and sense transition','supports','Connects the Middle High German form with the later record and explains the semantic contrast.'),
(1042,530,'haʒʒen, swv.; preterites haʒʒete and haʒte','context','Independently documents the Middle High German weak verb and inflection.'),
(1043,526,'Herkunft: Middle High German haʒʒen, Old High German haʒʒēn and haʒʒōn','supports','Directly publishes the High German form sequence.'),
(1043,528,'hassen, verb, opening historical forms and sections 1–2','supports','Separates hostile pursuit from the later feeling-centered sense.'),
(1043,529,'haʒʒe, swv.; Old High German haʒêm and haʒôm comparison','context','Provides the Middle High German lemma, examples, and Old High German comparison.'),
(1043,530,'haʒʒen, swv.; BMZ I. 642a','context','Provides an independent historical-lexicon record for the Middle High German verb.'),
(1044,447,'p. 203, *xatēnan ~ *xatōjanan and Old High German hazzōn','supports','Publishes the Germanic reconstruction alternatives and High German cognate.'),
(1044,526,'Herkunft: Old High German haʒʒēn and haʒʒōn','context','Supplies the attested branch forms.'),
(1044,528,'Opening comparative paragraph: Gothic, Old High German, Middle High German, and wider Germanic forms','context','Places the High German verb in the inherited family.'),
(1045,447,'p. 203, *xataz ~ *xatez beside *xatēnan ~ *xatōjanan','supports','Publishes the noun and weak-verb formations together in the Germanic family.'),
(1045,436,'Noun etymology: Germanic *hatiz- and derived weak verb','context','Supplies the atlas representation of the corresponding Germanic noun base.'),
(1046,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal comparison while flagging semantic opacity.'),
(1046,439,'Discussion of proposed non-Germanic cognates and pursuit','challenges','Questions whether the wider proposed family shares one semantic origin.'),
(1046,473,'p. 101, wider Celto-Germanic HATRED comparison','context','Provides a broader affirmative comparison whose membership remains disputed.'),
(1047,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(1047,473,'p. 101, reconstructed Indo-European analysis','context','Provides a wider comparative treatment.'),
(1048,436,'Etymology note: semantic relations are far from transparent','supports','Marks the deep comparison as semantically unresolved.'),
(1048,439,'Qualified conclusion on pursuit and the deeper comparison','supports','Supports an explicit endpoint rather than an invented first meaning.'),
(1048,528,'hassen, verb, transition between hostile deeds and hostile disposition','context','Shows that even the German action account belongs to a historical analysis rather than an attested prehistoric token.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(377,1235,528,'Old High German record, source-reported',NULL,'Graff lexical record aligned with Latin insequamur','hassen, verb, sense 1; Graff 4, 1071–1072','hatamas — insequamur','probable','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the form and Latin alignment through Graff. Neither the underlying edition nor a manuscript object was directly inspected, and no exact year or universal meaning is asserted.'),
(378,1235,528,'Old High German record, source-reported',NULL,'Graff lexical record aligned with Latin insequuntur','hassen, verb, sense 1; Graff 4, 1071–1072','hatent — insequuntur','probable','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the form and Latin alignment through Graff. The underlying object was not directly inspected, and the record does not prove that every Old High German use was pursuit.'),
(379,1234,528,'1343 textual horizon, source-reported',1343,'Matthias von Beheim, Matthew 5:11','hassen, verb, sense 1; Behaim, Evangelienbuch, Matthew 5:11','sêlig sît ir, wan ûch di lûte ubele sprechin und ûch werden haʒʒin','probable','lexical_corpus_record',NULL,NULL,NULL,0,'DWB aligns the passage with Latin persecuti vos fuerint and later German verfolgen. The 1867 edition and manuscript were not directly inspected; 1343 is the work horizon, not a token-level dating proof.'),
(380,1234,528,'1343 textual horizon, source-reported',1343,'Matthias von Beheim, John 5:16','hassen, verb, sense 1; Behaim, Evangelienbuch, John 5:16','diz haʒʒiten die Juden Jesum','probable','lexical_corpus_record',NULL,NULL,NULL,0,'DWB aligns the clause with Latin persequebantur and German verfolgten. The underlying edition and manuscript were not directly inspected, so the action interpretation remains source-reported.'),
(381,1234,529,'Middle High German literary record, source-reported',NULL,'Iwein occurrence in BMZ','haʒʒe, swv.; Iwein 270','ich haʒʒe den tac','established','lexical_corpus_record',NULL,NULL,NULL,0,'BMZ reports the located literary occurrence. No edition or manuscript object was directly inspected, and the short clause supports a disliked object without defining the whole verb.'),
(382,1233,528,'1560',1560,'Agricola, Sprichwörter','hassen, verb, sense 2; Agricola, Sprichwörter (1560), 89b','ich hasz die den schlaftrunk zu morgens thuͦn','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports this dated printed occurrence under the feeling-centered sense. The 1560 object was not directly inspected, so the passage remains source-reported.'),
(383,1232,527,'1957 literary record, source-reported',1957,'Max Frisch, Homo faber','DWDS example; Frisch, Homo faber, p. 80','Ivy wollte, daß ich mich selbst hasse','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWDS supplies the located literary example. The printed book page was not directly inspected; the year identifies the work’s publication horizon rather than a first use.'),
(384,1232,526,'contemporary dictionary example, source-reported',NULL,'Strong-aversion construction','Meaning 2, examples','sie hasste es, laut zu sprechen','established','lexical_corpus_record',NULL,NULL,NULL,0,'Duden supplies a current example with a clausal object. It was not directly inspected in an underlying speech or print event and does not assign identical intensity to every use.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(870,192,'Hass','German','the reviewed modern noun in the same inherited hate family',526),
(871,192,'hetzen','German','the reviewed pursuit and incitement verb Duden analyzes as a causative relative',452),
(872,192,'hatian','Old English','a reviewed inherited Germanic cognate verb',447),
(873,192,'hata','Old Norse','an inherited Germanic cognate verb',447),
(874,192,'hatan','Gothic','the reviewed class-III hate verb with two surviving participles',447),
(875,192,'hatjan','Gothic','the reviewed class-I hate verb in the neighboring formation',447),
(876,192,'hatia','Old Frisian','an inherited Germanic cognate verb',447),
(877,192,'hazzōn','Old High German','the quantity-normalized Old High German comparison used in the Proto-Germanic reconstruction',447),
(878,192,'Hasser','German','an agent noun meaning a person who hates',528),
(879,192,'haʒʒære','Middle High German','a historical agent noun for a person who hates',529),
(880,192,'hässlich','German','a related adjective in the wider historical word group',527);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(790,192,1,'Disputed Indo-European comparative horizon','*ḱeh₂d- and *ḱh₂d-es-','The formal comparison reaches beyond Germanic, but it does not recover one place, one act, one emotion, or one directly spoken word.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon, not an archaeological location or attestation date.'),
(791,192,2,'Proto-Germanic linguistic horizon','*xatēnan ~ *xatōjanan beside *hatiz-','Comparative Germanic forms support a verb family beside the hate noun base while exact formation, ablaut, and semantic direction remain analytical.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval, not a directly dated token.'),
(792,192,3,'Old High German textual world','haʒʒēn / haʒʒōn and reported pursuit glosses','Duden publishes the variants; DWB reports Graff forms aligned with following or pursuing. No primary object was directly inspected for this stage.',NULL,NULL,'broad',750,1050,'range','The language-period interval does not identify a first use or date the proposed action sense.'),
(793,192,4,'Middle High German textual world','haʒʒen across feeling and persecution contexts','BMZ and Lexer document the weak verb; DWB reports Behaim passages aligned with persecution as well as the later hostile-disposition center.',NULL,NULL,'broad',1050,1350,'range','The conventional period contains the source-reported records; no instantaneous semantic change is asserted.'),
(794,192,5,'Early New High German print record','hassen and hasz in dated examples','DWB reports printed examples including Agricola in 1560, showing continuity into the early modern period without one fixed intensity or spelling.',NULL,NULL,'broad',1350,1650,'range','The interval is the Early New High German period, not a single lexical event.'),
(795,192,6,'Modern German usage','hassen as hatred and strong aversion','Duden separates person-directed hatred from strong aversion toward things and actions; DWDS supplies modern literary usage. The record is linguistic, not one geographic point.',NULL,NULL,'broad',1650,2026,'range','The range models the New High German continuum through the current reviewed dictionaries.'),
(796,192,7,'Knowledge boundary','beyond the disputed Indo-European comparison','The graph stops before pursuit, persecution, hostile feeling, grief, care, pain, or hatred is declared the one prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(790,436,'Noun etymology and semantic-transparency note','supports','Publishes the qualified formal comparison and its semantic problem.'),
(790,439,'Non-Germanic comparison discussion','challenges','Questions whether the wider proposed family has one origin or meaning.'),
(790,473,'p. 101, wider HATRED comparison','context','Provides a broader affirmative comparison while leaving it reconstructive.'),
(791,447,'p. 203, *xatēnan ~ *xatōjanan and *xataz ~ *xatez','supports','Publishes the reconstructed verb and noun formations together.'),
(791,436,'Germanic *hatiz- and derived weak verb','context','Supplies the canonical noun-base notation.'),
(792,526,'Herkunft: Old High German haʒʒēn and haʒʒōn, formerly also pursue','supports','Supplies the branch forms and action-sense note.'),
(792,528,'hassen, verb, sense 1; Graff 4, 1071–1072','supports','Reports the Old High German pursuit alignments.'),
(793,528,'hassen, verb, sections 1–2; Behaim Matthew 5:11 and John 5:16','supports','Documents the historical action-to-disposition contrast and located examples.'),
(793,529,'haʒʒe, swv.; Iwein, Parzival, and Walther citations','supports','Documents the Middle High German weak verb in a historical lexicon.'),
(793,530,'haʒʒen, swv.; cited Middle High German works','context','Independently records the verb and preterite forms.'),
(794,528,'hassen, verb, sense 2; Agricola (1560), 89b','supports','Anchors a dated early-print example.'),
(795,526,'Meanings 1–2, examples, and grammar','supports','Defines the current two-sense system.'),
(795,527,'Current headword, pronunciation, and literary examples','context','Supplies independent modern usage evidence.'),
(796,436,'Semantic relations are far from transparent','supports','Marks the deep comparison as unresolved.'),
(796,439,'Qualified conclusion','supports','Supports stopping rather than selecting one convenient origin.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(504,192,'Does modern hassen apply only to people?','No. Duden separates hatred toward a person from strong aversion toward a thing or action and gives clausal-object examples.','established','The contemporary dictionary explicitly publishes two related senses.','resolved','The dossier keeps both current senses instead of forcing every object into personal hatred.'),
(505,192,'Did hassen once express hostile action or pursuit?','Yes in the reviewed historical accounts. Duden says the old forms also meant pursue; DWB labels hostile pursuit or persecution the original sense and cites Old and Middle High German alignments.','established','Two independent dictionaries publish the action history, and DWB supplies located examples.','resolved','The claim remains source-attributed and does not convert every historical token into persecution.'),
(506,192,'Is hostile pursuit the securely recovered original meaning?','Not beyond dispute. DWB calls it original and Duden independently notes pursue, but the surviving examples, the exact weak-verb reconstruction, and the deeper comparison do not recover one prehistoric scene with certainty.','proposed','The action hypothesis is strongly documented inside German history while the comparative semantic center remains unresolved.','open',NULL),
(507,192,'Was the verb formed directly from the noun Hass?','The Germanic weak-verb family is grouped with the *hatiz- noun base, but the exact historical formation and direction are reconstructed rather than directly witnessed in German.','probable','Orel and Merriam-Webster connect the formations while differing in reconstruction detail.','open',NULL),
(508,192,'Are haʒʒēn and haʒʒōn separate unrelated Old High German verbs?','No such split is established. Duden prints both as historical forms of hassen, while the historical sources preserve variant weak-verb formations and spellings.','probable','The dictionaries group the variants under one lineage without claiming one identical paradigm in every source.','resolved','The route displays both variants in one qualified stage and leaves exact morphology to the reconstruction dispute.'),
(509,192,'Is the Proto-Germanic parent exactly *xatēnan ~ *xatōjanan?','The comparative verb family is secure, but its notation and subclass are not singular. Orel prints the alternatives; Merriam-Webster foregrounds *hatōjan- for the related inherited verb formation.','probable','Two etymological sources agree on the family while preserving different analytical forms.','open',NULL),
(510,192,'Does current hassen ordinarily mean physically persecute?','No. Duden’s current meanings center hatred and strong aversion. Pursuit and persecution belong to the historical semantic account, not a requirement of the current standard verb.','established','The modern definition and historical dictionary division agree on the distinction.','resolved','The headword gloss remains current while the older action lane stays visible.'),
(511,192,'Were the Behaim examples directly inspected in a manuscript?','No. They are located reports in DWB. Browser permissions blocked the available digitized editions during this review, so neither a manuscript nor printed edition object is promoted as directly inspected.','established','The evidence ledger records the dictionary source and explicit inspection limit.','resolved','Both attestations remain source-reported and have no facsimile or inspection record.'),
(512,192,'Does the 1343 Behaim work establish the first use of hassen?','No. It supplies two located historical contexts, not a complete comparison of all earlier witnesses or a token-level earliest-use proof.','established','DWB also reports Old High German material and multiple Middle High German sources.','resolved','The date is a work horizon and the dossier makes no first-known-use claim.'),
(513,192,'Was German hassen borrowed from English hate?','No borrowing is established. German hassen continues Old and Middle High German forms; English hate follows its own Old English branch. They meet only in reconstructed Germanic material.','established','Duden, DWB, Orel, and the connected English dossiers document collateral inheritance.','resolved','The canonical graph joins the branches at reconstruction and draws no English-to-German arrow.'),
(514,192,'Is hetzen simply the same verb as hassen?','No. Duden analyzes hetzen as a causative formation related to hassen—historically make hate or bring to hostile pursuit—while the modern verbs have distinct forms and ordinary meanings.','probable','The etymological note connects the action histories without collapsing the lexemes.','open',NULL),
(515,192,'Does hassen securely descend from *ḱeh₂d-?','Only as a qualified proposal. Formal correspondence is published, but grief, pain, care, mourning, pursuit, and hatred do not form one transparent semantic sequence.','probable','Merriam-Webster qualifies the comparison and Liberman challenges its wider semantic unity.','open',NULL),
(516,192,'Did the shift from persecution to feeling happen in one dated event?','No single event is established. DWB describes a contrast between hostile deeds and a more muted hostile disposition, while historical and modern examples show overlapping contextual ranges.','probable','The dictionaries support a semantic development but do not date one universal switch.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(504,526,'Meanings 1–2 and examples','supports','Separates person-directed hatred from strong aversion toward things or actions.'),
(505,526,'Herkunft: formerly also pursue','supports','Independently preserves the historical action sense.'),
(505,528,'hassen, verb, sense 1 and transition to sense 2','supports','Calls hostile pursuit or persecution original and contrasts later hostile disposition.'),
(506,528,'hassen, verb, opening semantic analysis','supports','Publishes the original-pursuit claim and source-reported examples.'),
(506,439,'Pursuit hypothesis and qualified conclusion','context','Develops the action account while keeping the deeper etymology unresolved.'),
(506,436,'Semantic relations are far from transparent','challenges','Prevents the German action record from solving the whole prehistoric family.'),
(507,447,'p. 203, noun and weak-verb reconstructions','supports','Groups the Germanic formations while preserving alternatives.'),
(507,436,'Verb etymology: derivative from the base of *hatiz-','context','Publishes a clearer noun-to-verb analysis for the related branch.'),
(508,526,'Herkunft: haʒʒēn and haʒʒōn','supports','Prints both Old High German variants under the modern headword.'),
(508,528,'Opening historical forms','context','Groups the Old and Middle High German forms in one verb history.'),
(509,447,'p. 203, *xatēnan ~ *xatōjanan','supports','Publishes the alternative class-III reconstruction.'),
(509,436,'Verb etymology: Germanic *hatōjan-','context','Publishes a different reconstruction notation for the inherited verb family.'),
(510,526,'Current meanings 1–2','supports','Centers the current verb on hatred and strong aversion.'),
(510,528,'Transition from sense 1 to sense 2','context','Places hostile pursuit in the historical analysis.'),
(511,528,'Behaim Matthew 5:11 and John 5:16 citations','supports','Provides the exact source-reported locators without a directly inspected object.'),
(512,528,'Old High German and multiple Middle High German records','supports','Shows that the Behaim passages cannot by themselves establish first use.'),
(513,526,'Herkunft: Middle and Old High German forms','supports','Documents inherited German history rather than English borrowing.'),
(513,447,'p. 203, Germanic cognate verb set','context','Places English and German forms in collateral branches.'),
(514,452,'Herkunft: causative to hassen, make hate or bring to pursue','supports','Publishes the formal and semantic relationship without identity.'),
(514,526,'Current meanings of hassen','context','Supplies the distinct modern hassen range.'),
(515,436,'Noun etymology and semantic-transparency note','supports','Publishes and qualifies the Indo-European proposal.'),
(515,439,'Discussion of proposed cognates and pursuit','challenges','Questions the semantic unity and membership of the wider family.'),
(516,528,'hassen, verb, transition from hostile deeds to hostile disposition','supports','Describes a semantic development without assigning one innovation date.'),
(516,529,'haʒʒe, swv.; varied Middle High German objects and constructions','context','Documents contextual range inside the medieval record.'),
(516,526,'Current two-sense definition','context','Shows the modern outcome remains internally differentiated.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(192,192,2102,'hassen','German hassen has an action buried under the feeling.','Duden says Middle High German haʒʒen and Old High German haʒʒēn / haʒʒōn formerly also meant pursue. Grimm’s DWB goes further: it calls hostile pursuit or persecution the original sense, reports Old High German following or pursuit alignments and Behaim persecution contexts, then explicitly describes the later sense as more about hostile disposition than hostile deeds. Modern Duden centers hatred and strong aversion. The contrast is real; the one certain prehistoric scene is not.','A-',100,'The reveal is grounded in two independent dictionary accounts and located source-reported historical examples. It does not claim that the underlying manuscripts were directly inspected, that every historical use meant persecution, or that the action account settles the disputed Indo-European comparison.');
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
(192,526,'Herkunft and meanings 1–2','supports','Supplies the former pursuit sense and the current feeling-and-aversion contrast.'),
(192,528,'hassen, verb, sense 1 and transition to sense 2','supports','Publishes the hostile-pursuit analysis, located historical examples, and deed-to-disposition contrast.'),
(192,529,'haʒʒe, swv.; Old High German comparison and Middle High German citations','context','Independently documents the medieval verb and its literary range.'),
(192,530,'haʒʒen, swv.; preterites and cited works','context','Supplies a second historical-lexicon record for the Middle High German verb.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(148,192,180,'HATE AND HOUNDING SHARE AN ACTION HISTORY','Duden says older hassen could mean pursue. Its hetzen etymology analyzes that neighboring verb as a causative relative: make hate or bring into hostile pursuit. Grimm’s DWB independently centers pursuit and persecution in the older hassen record. The graph connects the formations inside the Germanic family without pretending that the two modern verbs are identical.',100,'A-','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1232 AND 1240
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1236,1237,1238,1239) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1232 THEN 'Promoted from the highest-ranked German relative candidate into a complete action, feeling, attestation, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1232 AND 1240;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1041 AND 1048;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1041 AND 1048;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1041 AND 1048;
