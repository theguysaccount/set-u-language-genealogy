-- Promote Old High German hazzōn from the graph-derived evidence-ready queue.
-- The dossier separates a normalized citation form from source-reported tokens,
-- exposes the ēn / ōn double-form problem, and refuses to turn historical
-- pursuit glosses into a securely recovered prehistoric basic meaning.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(204,'hazzon','hazzōn','hazzon','not directly recoverable','Old High German weak-verb citation form','An Old High German citation form in the inherited Germanic hate-verb family, printed beside hazzēn and spelling variants hazēn, hazōn, haʒʒēn, and haʒʒōn. Starling’s source record dates hazzēn to the eighth century and hazzōn to the ninth; Duden and Grimm’s DWB group the ēn and ōn forms in the history of German hassen. Corpus-wide research independently shows that some Old High German class-III ēn verbs also occur with class-II ōn forms, but the accessible abstract does not establish that hazzōn is one of its twenty repeatedly attested double forms. DWB reports haʒôn aligned with Latin aemulari and the forms hatamas and hatent with insequamur and insequuntur. Those reports support an action range involving following or hostile pursuit; they are not directly inspected manuscript tokens. Pokorny’s account, as transmitted by Starling, explicitly warns that the Germanic evidence does not prove “pursue” was the root’s basic meaning. The route therefore distinguishes the normalized headword, the combined historical variants, the reconstructed Germanic weak verb and noun family, the qualified Indo-European comparison, and the point where knowledge ends.','Old High German hazzōn is a paradigm fault line, not proof that hate originally meant pursue. Sources preserve both ēn and ōn forms and report pursuit alignments, while the comparative record explicitly says the Germanic facts do not establish pursuit as the root’s basic meaning.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(590,'ut-ohg-reflex-index-kad','Old High German Reflex Index — Pokorny k̑ād-','Linguistics Research Center editors',2026,'The University of Texas at Austin','https://lrc.la.utexas.edu/lex/languages/OHG',NULL,'research_database'),
(591,'marti-heinzle-ohg-en-on-double-forms','Doppelformen von ēn- und ōn-Verben im Althochdeutschen','Mirjam Marti Heinzle',2013,'NOWELE · John Benjamins Publishing Company','https://www.jbe-platform.com/content/journals/10.1075/nowele.66.2.04hei','10.1075/nowele.66.2.04hei','journal_article');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1302,204,32,1,'hazzōn','hazzon','hate-pursue-old-high-german-citation-form','hazzōn',NULL,'attested','Old High German; ō-form source-reported from the ninth century',800,899,'to hate; in reported glosses, to emulate, follow, or pursue','The macronized headword is a scholarly citation form. Starling reports hazzōn for the ninth century, but no manuscript token was directly inspected and no first-use claim is made. The route immediately opens the wider ēn / ōn and spelling-variant problem.'),
(1303,204,32,2,'haʒʒēn / haʒʒōn','hazzēn-hazzōn','hate-pursue-old-high-german-verb','haʒʒēn / haʒʒōn',NULL,'attested','Old High German',750,1050,'to hate; in reported glosses, to pursue or follow hostilely','Duden prints both variants. DWB reports Old High German forms aligned with Latin aemulari, insequamur, and insequuntur; those glosses are source-reported, not directly inspected manuscripts.'),
(1304,204,5,3,'*xatēnan ~ *xatōjanan','xatenan-xatojanan','hate-class-three-reconstruction','*xatēnan ~ *xatōjanan',NULL,'reconstructed','Proto-Germanic reconstruction alternatives',-500,200,'reconstructed class-III or related weak verbs meaning hate','Orel publishes the alternation and includes Old High German hazzōn in the comparative set. The x is Orel’s notation for the Germanic fricative commonly rendered h; the exact weak-verb reconstruction remains disputed.'),
(1305,204,5,4,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','The weak-verb family is grouped with the reconstructed Germanic hate noun base. The graph reuses the reviewed *hatiz- node while preserving uncertainty about formation and semantic direction.'),
(1306,204,6,5,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. The Old High German pursuit reports do not make the wider semantic family transparent.'),
(1307,204,6,6,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','This is a comparative reconstruction, not an attested word or a securely recovered original meaning. Pursuit, persecution, grief, care, pain, and hatred remain competing accounts.'),
(1308,204,7,7,'UNKNOWN','unknown','hazzon-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before one dictionary gloss, one weak-verb paradigm, or one modern emotion is promoted as the certain essence of the entire family.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1099,204,1302,1303,'paradigm_variant','The quantity-normalized citation form hazzōn selects the ōn member of a source set also printed as hazōn and haʒʒōn; hazzēn, hazēn, and haʒʒēn represent the neighboring ēn member. This edge is paradigm navigation, not a claim that one written form changed directly into the combined display.','The variants occupy the same reviewed hate, emulation, following, and hostile-pursuit field. The edge does not assign every gloss to every token or prove that the ēn and ōn records were interchangeable in every dialect.','Dudenredaktion · Jacob Grimm · Starling editors · University of Texas Linguistics Research Center · Mirjam Marti Heinzle','probable','Independent sources print both vowel-class forms, and corpus-wide research establishes ēn / ōn double forms as an Old High German phenomenon. The accessible article abstract does not verify hazzōn among its twenty repeated examples, and no underlying token was directly inspected.','Old High German citation and source-reporting layers rather than two directly dated adjacent sound changes.','reviewed'),
(1100,204,1303,1304,'inheritance','Old High German haʒʒōn belongs to the comparative weak-verb set Orel reconstructs as *xatēnan ~ *xatōjanan; the High German branch reflects the consonant-shifted Germanic t in the doubled sibilant spelling.','The inherited Germanic hate field continues in the Old High German verb, but pursuit, hostile action, and hostile disposition remain competing candidates for the earlier semantic center.','Vladimir Orel · Dudenredaktion · Jacob Grimm','probable','The Old High German variants and cross-Germanic set are published; the parent alternatives and semantic center are reconstructed.','Proto-Germanic reconstruction into the Old High German record.','reviewed'),
(1101,204,1304,1305,'derivation','Orel groups the weak-verb reconstruction with the Germanic hate-noun base he represents as *xataz ~ *xatez; the graph crosswalks that base to its reviewed *hatiz- node.','A noun family for hate or enmity supplies or associates with weak verbs whose daughter branches express hating, hostility, pursuit, and anger.','Vladimir Orel · Merriam-Webster Editors','probable','The lexical family is secure, but the exact formation of class-III hatan and the direction of any specifically Gothic remodeling remain disputed.','Related Proto-Germanic reconstructed formations rather than independently dated words.','reviewed'),
(1102,204,1305,1306,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1103,204,1306,1307,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1104,204,1307,1308,'knowledge_boundary','No older form is promoted beyond the already disputed *ḱeh₂d- comparison.','The trail stops before pursuit, persecution, feeling, grief, pain, care, or hatred is reverse-engineered into one universal prehistoric act.','SET-U editorial boundary · Anatoly Liberman · Jacob Grimm','boundary','Secure comparison is strongest inside Germanic; the displayed Indo-European lane remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1099,590,'Old High German reflex rows hazēn, hazōn, hazzēn, and hazzōn under Pokorny k̑ād-','supports','Prints all four normalized spelling and vowel-class variants in one reflex index.'),
(1099,591,'Abstract: Old High German class-III ēn verbs with class-II ōn forms and twenty repeatedly attested double forms','context','Establishes the corpus-wide double-form phenomenon without proving this headword is one of the article’s twenty examples.'),
(1099,583,'Old High German: hazzēn (8th century) and hazzōn (9th century)','supports','Separates the source-reported century labels for the ēn and ōn citation forms.'),
(1099,526,'Herkunft: Old High German haʒʒēn and haʒʒōn','supports','Prints both variants in the history of current hassen.'),
(1099,528,'Opening comparative paragraph: Old High German haʒên and haʒôn','context','Independently preserves the paired Old High German forms.'),
(1100,447,'p. 203, *xatēnan ~ *xatōjanan and Old High German hazzōn','supports','Publishes the Germanic reconstruction alternatives and High German cognate.'),
(1100,526,'Herkunft: Old High German haʒʒēn and haʒʒōn','context','Supplies the attested branch forms.'),
(1100,528,'Opening comparative paragraph: Gothic, Old High German, Middle High German, and wider Germanic forms','context','Places the High German verb in the inherited family.'),
(1100,583,'Proto-Germanic *xatōn-, -ēn- beside Old High German hazzēn and hazzōn','supports','Publishes both the reconstructed alternatives and the branch forms.'),
(1101,447,'p. 203, *xataz ~ *xatez beside *xatēnan ~ *xatōjanan','supports','Publishes the noun and weak-verb formations together in the Germanic family.'),
(1101,436,'Noun etymology: Germanic *hatiz- and derived weak verb','context','Supplies the atlas representation of the corresponding Germanic noun base.'),
(1102,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal comparison while flagging semantic opacity.'),
(1102,439,'Discussion of proposed non-Germanic cognates and pursuit','challenges','Questions whether the wider proposed family shares one semantic origin.'),
(1102,473,'p. 101, wider Celto-Germanic HATRED comparison','context','Provides a broader affirmative comparison whose membership remains disputed.'),
(1103,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(1103,473,'p. 101, reconstructed Indo-European analysis','context','Provides a wider comparative treatment.'),
(1104,436,'Etymology note: semantic relations are far from transparent','supports','Marks the deep comparison as semantically unresolved.'),
(1104,439,'Qualified conclusion on pursuit and the deeper comparison','supports','Supports an explicit endpoint rather than an invented first meaning.'),
(1104,583,'Pokorny discussion: Germanic evidence does not establish pursue as the root’s basic meaning','context','Shows that even the strongest branch-level action account does not recover one prehistoric semantic origin.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(467,1303,528,'Old High German lexical record, source-reported',NULL,'Graff lexical record aligned with Latin aemulari','hassen, verb, sense 1; Graff 4, 1071–1072','haʒôn — aemulari','probable','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the normalized form and Latin alignment through Graff. Neither the underlying edition nor a manuscript object was directly inspected, and aemulari does not force one English gloss in every context.'),
(468,1303,528,'Old High German lexical record, source-reported',NULL,'Graff lexical record aligned with Latin insequamur','hassen, verb, sense 1; Graff 4, 1071–1072','hatamas — insequamur','probable','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the form and Latin alignment through Graff. Neither the underlying edition nor a manuscript object was directly inspected, and no exact year, headword spelling, or universal meaning is asserted.'),
(469,1303,528,'Old High German lexical record, source-reported',NULL,'Graff lexical record aligned with Latin insequuntur','hassen, verb, sense 1; Graff 4, 1071–1072','hatent — insequuntur','probable','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the form and Latin alignment through Graff. The underlying object was not directly inspected, and the record does not prove that every Old High German use was pursuit.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1034,204,'hazzēn','Old High German','the source-reported ēn citation form dated to the eighth century',583),
(1035,204,'hazēn','Old High German','an ēn spelling variant indexed under the same older root comparison',590),
(1036,204,'hazōn','Old High German','an ōn spelling variant indexed beside hazzōn',590),
(1037,204,'haʒʒēn','Old High German','the historical ēn form printed by Duden with the ʒ spelling convention',526),
(1038,204,'haʒʒōn','Old High German','the historical ōn form printed by Duden with the ʒ spelling convention',526),
(1039,204,'haʒôn','Old High German','the DWB citation form aligned through Graff with Latin aemulari',528),
(1040,204,'hatamas','Old High German','a source-reported inflection aligned with Latin insequamur',528),
(1041,204,'hatent','Old High German','a source-reported inflection aligned with Latin insequuntur',528),
(1042,204,'haʒʒen','Middle High German','the later High German continuation printed in the hassen history',526),
(1043,204,'hassen','German','the reviewed modern descendant dossier',526),
(1044,204,'Hass','German','the reviewed modern noun in the inherited hate family',526),
(1045,204,'hetzen','German','a reviewed related causative and pursuit-history branch',452),
(1046,204,'hatan','Gothic','a collateral inherited hate verb grouped in the comparative weak-verb set',447),
(1047,204,'hatizōn','Gothic','a similar-looking class-II denominative built from hatis, not the same reviewed immediate formation',472),
(1048,204,'hatian','Old English','a collateral inherited Germanic hate verb',447);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(877,204,1,'Disputed Indo-European comparative horizon','*ḱeh₂d- and *ḱh₂d-es-','The formal comparison reaches beyond Germanic, but it does not recover one place, one action, one emotion, or one directly spoken word.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon, not an archaeological location or attestation date.'),
(878,204,2,'Proto-Germanic linguistic horizon','*xatēnan ~ *xatōjanan beside *hatiz-','Comparative Germanic forms support a weak-verb family beside the hate noun base while exact formation, ablaut, and semantic direction remain analytical.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval, not a directly dated token.'),
(879,204,3,'Old High German transmission','ēn / ōn double forms as a corpus-wide problem','Research on the complete attested Old High German ēn-verb corpus finds recurring ōn double forms and identifies the Franconian area as a transition zone. The accessible abstract does not establish hazzōn as one of its twenty repeated examples.',NULL,NULL,'broad',750,1050,'range','The interval represents the Old High German textual period, not a date for one token or one paradigm shift.'),
(880,204,4,'Old High German textual world','hazzēn source-reported in the eighth century','Starling prints the ēn citation form with an eighth-century label. This is a database report, not a directly inspected witness or proof of first use.',NULL,NULL,'broad',700,799,'century','A source-reported century label rather than an exact token date.'),
(881,204,5,'Old High German textual world','hazzōn source-reported in the ninth century','Starling prints the ōn citation form with a ninth-century label. The label bounds the current claim but does not establish the earliest surviving use.',NULL,NULL,'broad',800,899,'century','A source-reported century label rather than an exact token date.'),
(882,204,6,'Middle High German textual world','haʒʒen','Duden and DWB continue the paired Old High German forms into Middle High German haʒʒen. The stage represents a language-period record, not one geographic point.',NULL,NULL,'broad',1050,1350,'range','The conventional Middle High German period, not an instantaneous merger of paradigms.'),
(883,204,7,'Modern German usage','hassen','Modern hassen centers person-directed hatred and strong aversion, while its dictionaries retain the older action history. This stage is linguistic rather than a single point on a map.',NULL,NULL,'broad',1650,2026,'range','The range models New High German continuity through the currently reviewed dictionaries.'),
(884,204,8,'Knowledge boundary','beyond the disputed Indo-European comparison','The graph stops before pursuit, persecution, hostile feeling, grief, care, pain, or hatred is declared the one prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(877,436,'Noun etymology and semantic-transparency note','supports','Publishes the qualified formal comparison and its semantic problem.'),
(877,439,'Non-Germanic comparison discussion','challenges','Questions whether the wider proposed family has one origin or meaning.'),
(877,473,'p. 101, wider HATRED comparison','context','Provides a broader affirmative comparison while leaving it reconstructive.'),
(878,447,'p. 203, *xatēnan ~ *xatōjanan and *xataz ~ *xatez','supports','Publishes the reconstructed verb and noun formations together.'),
(878,583,'Proto-Germanic *xatiz, *xatōn-, -ēn-, *xatjan-','context','Provides an independent multi-formation Germanic reconstruction.'),
(879,591,'Abstract: earliest transmission, class-III ēn verbs with class-II ōn forms, and Franconian transition zone','supports','Documents the corpus-wide morphological setting while not naming this headword in the accessible abstract.'),
(880,583,'Old High German hazzēn (8th century)','supports','Supplies the source-reported century label for the ēn citation form.'),
(881,583,'Old High German hazzōn (9th century)','supports','Supplies the source-reported century label for the ōn citation form.'),
(882,526,'Herkunft: Middle High German haʒʒen after Old High German haʒʒēn and haʒʒōn','supports','Publishes the High German form sequence.'),
(882,528,'Opening historical forms','context','Independently connects the Old and Middle High German records.'),
(883,526,'Meanings 1–2 and Herkunft','supports','Defines current usage while preserving the older pursuit note.'),
(883,528,'Transition from hostile deeds to hostile disposition','context','Supplies the historical action-to-feeling account.'),
(884,436,'Semantic relations are far from transparent','supports','Marks the deep comparison as unresolved.'),
(884,439,'Qualified conclusion','supports','Supports stopping rather than selecting one convenient origin.'),
(884,583,'Pokorny discussion of the pursuit hypothesis','context','Explicitly refuses to derive the root’s basic meaning from Germanic pursuit evidence alone.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(688,204,'Is hazzōn itself a directly inspected manuscript token?','No. The current dossier verifies dictionary and research-database records plus three source-reported lexical alignments; it does not claim a manuscript object for the normalized infinitive.','established','The evidence ledger marks all three attestations uninspected and separates them from the citation headword.','resolved','The headword remains an attested-language citation form, while direct-object inspection stays at zero.'),
(689,204,'Did Old High German preserve only the ōn form?','No. Duden prints haʒʒēn and haʒʒōn, Starling prints hazzēn and hazzōn, and the UT index adds hazēn and hazōn spellings.','established','Three independent reference systems expose both vowel-class forms.','resolved','The route uses a combined historical-variant node rather than erasing the ēn evidence.'),
(690,204,'Were hazzēn and hazzōn separate unrelated verbs?','That is not established. Dictionaries group both forms under the history of hassen, while corpus-wide scholarship shows that ēn verbs can acquire ōn double forms. The exact relationship for this lexeme still requires token-level paradigm study.','probable','The grouping is secure at dictionary level, but the accessible journal abstract does not identify hazzōn among its twenty repeated double forms.','open',NULL),
(691,204,'Does the ninth-century label prove the first use of hazzōn?','No. It is the century attached to the form in one comparative database, not a demonstrated search of every earlier manuscript, gloss, and edition.','established','Starling supplies the label but makes no token-level earliest-use proof on the reviewed record.','resolved','The date remains source-reported and the dossier makes no first-known-use claim.'),
(692,204,'Could the Old High German verb express following or hostile pursuit?','Yes in the reviewed lexical reports. DWB aligns haʒôn with aemulari and hatamas and hatent with forms of insequi; Duden independently says the older verb also meant pursue.','established','Two independent dictionaries preserve the action range, with DWB providing located Graff references.','resolved','The action evidence is included without assigning pursuit to every historical token.'),
(693,204,'Was pursue the securely recovered basic meaning of the root?','No consensus is established. DWB calls hostile pursuit or persecution original inside the German history, while Pokorny’s account explicitly says the Germanic facts do not establish pursue as the root’s basic meaning.','proposed','The reviewed scholarship contains a direct branch-level claim and a direct comparative caution.','open',NULL),
(694,204,'Is hazzōn straightforwardly one class-II verb?','The ōn citation form has class-II morphology, but the historical record also preserves ēn forms associated with class III. Corpus-wide scholarship treats such double forms as a real Old High German problem rather than a typographic nuisance.','probable','The form sets and the general double-paradigm phenomenon are documented; exact token distribution for hazzōn remains unverified here.','open',NULL),
(695,204,'Is the Proto-Germanic parent exactly *xatēnan ~ *xatōjanan?','The comparative verb family is secure, but its notation and subclass are not singular. Orel prints *xatēnan ~ *xatōjanan, while Starling prints *xatōn-, -ēn- beside other related formations.','probable','Two etymological sources agree on the family while preserving different analytical representations.','open',NULL),
(696,204,'Was the weak verb formed directly from *hatiz-?','The weak-verb reconstructions are grouped with the *hatiz- noun family, but the exact formation, chronological direction, and relation among the ēn, ōn, and jan verbs are reconstructed rather than witnessed.','probable','Orel and the wider reviewed Germanic evidence connect the formations without producing a dated derivational event.','open',NULL),
(697,204,'Is Old High German hazzōn the same formation as Gothic hatizōn?','No such identity is established. Gothic hatizōn is explicitly analyzed as a class-II denominative from hatis through the stem hatiz-, while Orel places Old High German hazzōn under the *xatēnan ~ *xatōjanan alternatives. Similar normalized endings do not erase distinct immediate analyses.','probable','Independent grammatical and comparative routes converge only deeper in the shared hate family.','resolved','The rabbit hole connects the dossiers through their evidence-backed graph path without flattening their immediate parents.'),
(698,204,'Is hazzōn the only correct historical spelling?','No. The reviewed references print hazēn, hazōn, hazzēn, hazzōn, haʒʒēn, haʒʒōn, and haʒôn according to their editorial systems and source conventions.','established','The UT index, Starling, Duden, and DWB visibly use different but overlapping representations.','resolved','The entry treats hazzōn as a navigable citation form rather than a unique manuscript spelling.'),
(699,204,'Can the exact Old High German pronunciation be recovered from the citation forms?','Not from the reviewed records alone. Quantity marks and consonant spellings encode scholarly analyses, but no audio exists and the dossier does not infer one dialect-neutral phonetic realization.','established','The references provide written forms and morphological categories, not a directly recorded pronunciation.','resolved','The pronunciation field remains explicitly not directly recoverable.'),
(700,204,'Can the hazzōn record be pinned to one exact place?','No. The sources identify Old High German forms and a corpus-wide Franconian transition-zone finding, but the accessible evidence does not locate this headword’s reviewed records to a single manuscript place.','established','The journal abstract gives a general dialect-geographic result while the dictionaries do not supply a directly inspected object location for this form.','resolved','The journey uses broad linguistic horizons and no invented map coordinates.'),
(701,204,'Does hazzōn securely descend from *ḱeh₂d-?','Only as a qualified proposal. Formal correspondence is published, but grief, pain, care, mourning, pursuit, and hatred do not form one transparent semantic sequence.','probable','Merriam-Webster qualifies the comparison and Liberman challenges its wider semantic unity.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(688,526,'Herkunft: Old High German citation forms','supports','Supplies a normalized lexicographic form rather than a manuscript object.'),
(688,528,'Graff 4, 1071–1072 reports','context','Supplies source-reported lexical evidence whose underlying objects were not inspected.'),
(689,526,'Herkunft: haʒʒēn and haʒʒōn','supports','Prints both Old High German vowel-class forms.'),
(689,583,'Old High German hazzēn and hazzōn','supports','Independently prints both forms with century labels.'),
(689,590,'Rows hazēn, hazōn, hazzēn, and hazzōn','context','Adds two consonant-spelling representations to the paired vowel classes.'),
(690,526,'Herkunft: paired Old High German forms under hassen','supports','Groups the forms in one historical lineage.'),
(690,591,'Abstract: synonymous double forms from ēn and ōn paradigms','context','Establishes the general phenomenon but does not name this verb in the accessible abstract.'),
(691,583,'Old High German hazzōn (9th century)','supports','Provides only the bounded century-level database record.'),
(692,526,'Herkunft: originally also pursue','supports','Independently preserves the older action range.'),
(692,528,'hassen, verb, sense 1; Graff 4, 1071–1072','supports','Reports aemulari, insequamur, and insequuntur alignments.'),
(693,528,'hassen, verb, sense 1','supports','Publishes hostile pursuit or persecution as the original branch meaning.'),
(693,583,'Pokorny discussion: Germanic evidence and the proposed pursue base','challenges','Explicitly says Germanic evidence does not establish pursue as the root’s basic meaning.'),
(694,591,'Abstract: class-III ēn verbs with class-II ōn forms','supports','Documents the morphological double-form problem across the full attested ēn corpus.'),
(694,583,'Old High German hazzēn and hazzōn','context','Shows both morphological citation forms for this lexeme in one comparative record.'),
(695,447,'p. 203, *xatēnan ~ *xatōjanan','supports','Publishes Orel’s reconstruction alternatives.'),
(695,583,'Proto-Germanic *xatōn-, -ēn- verb','context','Publishes a second representation of the comparative set.'),
(696,447,'p. 203, noun and weak-verb reconstructions','supports','Groups the Germanic formations while preserving alternatives.'),
(696,436,'Verb etymology: derivative from the base of *hatiz-','context','Supplies a more direct derivational analysis for a related Germanic branch.'),
(697,472,'Lesson 8, hatis → hatiz- → hatizōn','supports','Explicitly derives the Gothic class-II verb from the noun stem.'),
(697,447,'p. 203, Old High German hazzōn under *xatēnan ~ *xatōjanan','supports','Places the Old High German form in a different immediate comparative route.'),
(698,590,'Rows hazēn, hazōn, hazzēn, and hazzōn','supports','Displays four editorial representations.'),
(698,526,'Herkunft: haʒʒēn and haʒʒōn','context','Displays the historical ʒ-based spellings.'),
(698,528,'Opening forms and haʒôn lexical report','context','Adds DWB’s representation.'),
(699,590,'Old High German reflex spellings','supports','Provides orthographic and quantity-marked forms but no phonetic recording.'),
(700,591,'Abstract: Franconian as a transition zone','supports','Gives a corpus-wide regional result without locating this reviewed headword record to one point.'),
(700,528,'Graff 4, 1071–1072 reports','context','Provides lexical locators but no directly inspected manuscript place.'),
(701,436,'Noun etymology and semantic-transparency note','supports','Publishes and qualifies the Indo-European proposal.'),
(701,439,'Discussion of proposed cognates and pursuit','challenges','Questions the semantic unity and membership of the wider family.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(204,204,2102,'hazzōn','Old High German hazzōn is a paradigm fault line, not proof that hate originally meant pursue.','The clean dictionary headword conceals paired ēn and ōn forms: Starling reports hazzēn in the eighth century and hazzōn in the ninth, Duden prints haʒʒēn and haʒʒōn, and the UT reflex index also records hazēn and hazōn. Corpus-wide research confirms that Old High German ēn verbs can show ōn double forms. DWB reports aemulari and insequi alignments that support emulation, following, or hostile pursuit—but Pokorny’s comparative warning is exact: Germanic evidence does not prove that pursue was the root’s basic meaning. The normalized form, the source-reported tokens, the paradigm analysis, and the prehistoric semantic claim are four different evidence layers.','A',100,'The reveal combines independent lexicographic, morphological, chronological, and comparative evidence. It does not claim direct inspection of an Old High German object, inclusion among the article’s twenty repeated double forms, a first use, an exact pronunciation, or one certain prehistoric scene.');
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
(204,583,'Old High German hazzēn (8th century), hazzōn (9th century), and Pokorny pursuit discussion','supports','Supplies both the chronological contrast and the explicit warning against recovering pursue as the root’s basic meaning.'),
(204,526,'Herkunft: haʒʒēn and haʒʒōn, originally also pursue','supports','Supplies the paired historical forms and an independent action-sense note.'),
(204,528,'Opening historical forms and Graff 4, 1071–1072','supports','Reports aemulari, insequamur, and insequuntur evidence.'),
(204,590,'Rows hazēn, hazōn, hazzēn, and hazzōn','supports','Displays the four indexed Old High German citation variants.'),
(204,591,'Abstract: class-III ēn verbs with class-II ōn double forms','context','Establishes the general corpus-wide paradigm phenomenon and its evidentiary limit here.'),
(204,447,'p. 203, Old High German hazzōn and *xatēnan ~ *xatōjanan','context','Places the citation form in the reconstructed Germanic weak-verb family.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(160,204,203,'THE SAME-LOOKING VERBS TAKE DIFFERENT IMMEDIATE ROUTES','Old High German hazzōn and Gothic hatizōn look nearly identical in normalized citation form. The reviewed analyses do not flatten them: Orel places the Old High German form under *xatēnan ~ *xatōjanan, while the University of Texas grammar explicitly derives Gothic hatizōn from hatis through its stem hatiz-. Their paths meet deeper in the shared hate family, not at an invented one-step identity.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1302 AND 1308
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1304,1305,1306,1307) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1302 THEN 'Normalized citation form promoted with source-reported chronology, explicit paradigm uncertainty, and no direct-manuscript claim.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1302 AND 1308;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1099 AND 1104;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1099 AND 1104;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1099 AND 1104;
