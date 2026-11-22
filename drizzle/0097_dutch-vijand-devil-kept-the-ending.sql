-- Promote the highest-ranked evidence-ready candidate, Dutch vijand, into a
-- complete dossier. The established claim is a lexicalized present participle:
-- literally the hating one. The memorable second claim remains a hypothesis:
-- several Dutch etymologists propose that the medieval Devil sense helped the
-- full ending survive. ONW also preserves a disputed Dfiunt / fiunt reading and
-- states that its Wachtendonck Psalms records survive in much later copies.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(85,'old-dutch','Old Dutch','Indo-European','West Germanic',0,500,1200,'The oldest documented Dutch stage. The ONW covers roughly 500–1200 and explicitly records the dates and later-copy status of its Wachtendonck Psalms evidence.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(193,'vijand','vijand','vijand','/ˈvɛijɑnt/','Dutch masculine noun','The ordinary Dutch noun for an enemy or opponent descends through Middle Dutch viant or vient and Old Dutch fīunt or fīant from a Germanic present-participial formation: literally the hating one. ONW counts twenty-six Old Dutch records and says the corresponding hate verb is no longer known in Dutch; VMNW counts 407 thirteenth-century records across enemy, Devil, and monster senses. Several Dutch etymologists propose that the medieval use for the Devil helped preserve the word’s full ending, unlike vriend, but they mark that explanation as possible or probable rather than demonstrated. The earliest Old Dutch Devil reading is itself textually disputed, and the Wachtendonck Psalms witnesses are later copies, not directly inspected tenth-century objects.','The Devil may have preserved part of Dutch vijand. Its origin as a fossilized present participle—one who hates—is established. The more startling claim is explicitly tentative: several Dutch etymologists propose that medieval use for the Devil helped keep the word disyllabic with a full ending while vriend reduced.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(531,'ewn-vijand','Etymologisch Woordenboek van het Nederlands — vijand','Marlies Philippa · Frans Debrabandere · Arend Quak · Tanneke Schoonheim · Nicoline van der Sijs',2009,'Etymologiebank · Instituut voor de Nederlandse Taal','https://etymologiebank.nl/trefwoord/vijand',NULL,'etymological_dictionary'),
(532,'onw-fiunt','Oudnederlands Woordenboek — fīunt','Instituut voor de Nederlandse Taal editorial team',2009,'Instituut voor de Nederlandse Taal','https://gtb.ivdnt.org/iWDB/search?actie=article_content&wdb=ONW&id=ID3660',NULL,'historical_dictionary'),
(533,'vmnw-viant','Vroegmiddelnederlands Woordenboek — VIANT I','Instituut voor de Nederlandse Taal editorial team',1998,'Instituut voor de Nederlandse Taal','https://gtb.ivdnt.org/iWDB/search?actie=article_content&wdb=VMNW&id=ID74012',NULL,'historical_dictionary'),
(534,'wnt-vijand','Woordenboek der Nederlandsche Taal — VIJAND','Instituut voor de Nederlandse Taal editorial team',1959,'Instituut voor de Nederlandse Taal','https://gtb.ivdnt.org/iWDB/search?actie=article_content&wdb=WNT&id=M080125',NULL,'historical_dictionary'),
(535,'anw-vijand','Algemeen Nederlands Woordenboek — vijand, grammar and corpus examples','Instituut voor de Nederlandse Taal editorial team',NULL,'Instituut voor de Nederlandse Taal','https://anw.ivdnt.org/article/vijand',NULL,'contemporary_dictionary'),
(536,'wiktionary-nl-vijand-pronunciation','WikiWoordenboek — vijand pronunciation and syllabification','WikiWoordenboek contributors',NULL,'Wikimedia Foundation','https://nl.wiktionary.org/wiki/vijand',NULL,'pronunciation_reference');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1241,193,23,1,'vijand','vijand','enemy-opponent-modern-dutch','vijand','/ˈvɛijɑnt/','attested','New Dutch and current Dutch',1550,2026,'enemy or opponent; a hostile person, group, force, or figurative threat','ANW classifies the masculine de-noun as a person name, abstract noun, and collective noun. EWN defines opponent; WNT documents personal, collective, military, ideological, figurative, animal, and plant-threat uses. WikiWoordenboek supplies the current IPA and explicitly labels the form as two syllables; it is retained as a community pronunciation reference rather than as historical evidence.'),
(1242,193,33,2,'viant / vient','viant-vient','enemy-devil-monster-middle-dutch','viant / vient',NULL,'attested','Middle Dutch',1200,1500,'enemy or opponent; also the Devil, an evil spirit, or a monster in recorded contexts','VMNW counts 407 thirteenth-century records and ten spelling patterns, including viant, viand, uiant, and vient. Its semantic profile explicitly separates ordinary opponent, Devil, evil-spirit, and monster branches.'),
(1243,193,85,3,'fīunt / fīant','fiunt-fiant','enemy-opponent-disputed-devil-old-dutch','fīunt / fīant',NULL,'attested','Old Dutch',901,1200,'enemy or opponent; one disputed record may denote the Devil','ONW gives fīunt as the lemma, modern vijand as its continuation, twenty-six corpus records, and 901–1000 as the oldest attestation range. The displayed fīant variant follows EWN. The Devil reading Dfiunt / fiunt is disputed and does not define every Old Dutch use.'),
(1244,193,5,4,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic lexicalized participle',-500,200,'the hating one; lexicalized enemy agent noun','Kroonen reconstructs the Germanic formation. EWN and ONW independently analyze the daughter noun as an originally present-participial formation. It is reconstructed, not a written Dutch token.'),
(1245,193,5,5,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with hostility','The noun formation is built on this reconstructed verb. ONW stresses that the corresponding verb did not survive as a known Dutch verb, even though Gothic, Old High German, Old English, and Old Norse preserve cognates.'),
(1246,193,6,6,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European comparison',-4500,-2500,'a proposed base in a harm, blame, suffering, or hostility field','Kroonen publishes the deeper route; EWN prints related *peh₁i- and *pih₁- analyses. The formal and semantic path is proposed, not a recovered original word or meaning.'),
(1247,193,7,7,'UNKNOWN','unknown','vijand-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely reconstructed earlier ancestor or uniquely recoverable original semantic scene is known.','The trail ends before enemy, Devil, hatred, harm, blame, or suffering is declared the one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1049,193,1241,1242,'historical_continuation','Middle Dutch viant, viand, uiant, and vient continue into New Dutch vijand and vyand as initial consonant spelling, vowel representation, final d or t, and the full ending become standardized unevenly across the record.','The ordinary enemy or opponent remains central. Medieval Devil and monster branches become historical rather than the default modern Dutch sense, while figurative opponent uses expand.','Marlies Philippa · Frans Debrabandere · WNT editorial team','established','The dictionaries publish the form and sense continuity. No single sound change or semantic switch is assigned to every dialect and token.','Middle Dutch textual evidence into New Dutch and current usage.','reviewed'),
(1050,193,1242,1243,'historical_continuation','Old Dutch fīunt and fīant continue into Middle Dutch viant, viand, uiant, and vient through West Germanic vowel, initial fricative, glide, inflectional, and spelling developments that the corpus preserves as variants rather than one universal intermediate.','Enemy or opponent continues. A Devil sense is securely widespread in Middle Dutch, while the earliest Old Dutch Devil reading remains textually disputed.','ONW editorial team · VMNW editorial team · Marlies Philippa · Frans Debrabandere','established','ONW and VMNW provide bounded corpus inventories, dated forms, and explicit sense profiles. The exact reading of one Old Dutch Devil token remains open.','Old Dutch records from 901–1200 into the thirteenth-century Middle Dutch corpus.','reviewed'),
(1051,193,1243,1244,'inheritance','Old Dutch fīunt or fīant reflects the Germanic nd-agent formation after West Germanic and Dutch-branch vowel, glide, consonant, and inflectional development.','The already lexicalized one-who-hates formation is inherited as the ordinary enemy noun; Christian Devil usage develops inside the attested daughter record rather than inside the reconstruction.','Guus Kroonen · Marlies Philippa · Arend Quak · ONW editorial team','probable','The daughter forms and participial analysis are independently published. The parent remains reconstructed and no written Proto-Germanic token exists.','Proto-Germanic reconstruction into Old Dutch textual evidence.','reviewed'),
(1052,193,1244,1245,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1053,193,1245,1246,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1054,193,1246,1247,'knowledge_boundary','No older form is promoted beyond the proposed *peh₁- comparison.','The trail ends before enemy or evil spirit is reverse-engineered into one universal prehistoric concept.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1049,531,'EWN vijand: Old, Middle, and New Dutch forms; full-ending discussion','supports','Publishes the Dutch form sequence and distinguishes the established lineage from the proposed preservation explanation.'),
(1049,534,'Opening etymology and noun sense architecture','supports','Publishes Middle Dutch variants, modern vijand, and the historical-to-current semantic range.'),
(1049,535,'General grammatical data and CHN examples','context','Confirms current masculine de-noun grammar and contemporary personal, collective, and figurative uses.'),
(1049,536,'Pronunciation /ˈvɛijɑnt/ and syllabification vij·and','context','Supplies the current pronunciation and explicit two-syllable analysis without supporting the historical causal hypothesis.'),
(1050,531,'EWN vijand: Onl. fīunt / fīant; mnl. viant; vnnl. vijand / vyand','supports','Publishes the Old-to-Middle-to-New Dutch sequence.'),
(1050,532,'Lemma, inflection, twenty-six-record inventory, senses 1–2','supports','Provides the Old Dutch forms, chronology, ordinary enemy record, and disputed Devil reading.'),
(1050,533,'Lemma, spelling inventory, 407-record frequency, senses 1–3','supports','Provides the Middle Dutch form range and opponent, Devil, evil-spirit, and monster branches.'),
(1050,534,'Opening historical forms and etymology','context','Independently connects Old and Middle Dutch forms with the wider Germanic noun.'),
(1051,531,'EWN analysis: early lexicalized present participle of Proto-Germanic *fijēn-','supports','Publishes the daughter forms, Germanic participial reconstruction, and literal one-who-hates analysis.'),
(1051,532,'Morphology: originally the present participle of the lost corresponding Dutch verb','supports','Independently analyzes Old Dutch fīunt as inherited from the hate-verb formation.'),
(1051,491,'p. 140, *fi(j)and- and Germanic descendants','supports','Publishes the reconstructed parent and daughter set.'),
(1052,531,'EWN: originally present participle, early used independently in all Germanic languages','supports','Connects the Dutch noun to the inherited agent formation.'),
(1052,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the Germanic word-formation relationship.'),
(1052,492,'pp. 47–49, lexicalized enemy noun beside productive present participles','context','Shows the lexicalized noun and still-productive participial category side by side in Gothic.'),
(1053,531,'EWN: *peh₁i- / *pih₁- and LIV 459 comparison','context','Publishes one deeper formal analysis and non-Germanic comparisons.'),
(1053,491,'p. 140, deeper etymological analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used with reduced confidence.'),
(1054,491,'p. 140, deepest published comparison used in this dossier','supports','Supports stopping after the qualified proposal rather than inventing an earlier node.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(385,1243,532,'901–1000; surviving copy 1595–1605',NULL,'Wachtendonck Psalms, Psalm 53:9','Sense 1; WPs manuscript H, 053,09; South Lower Rhine','Vuanda … ouir fiunda mina scouuuola oga min.','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports the Old Dutch text, modern translation, Latin inimicos alignment, regional label, language-period date, and later-copy date. No tenth-century manuscript object was directly inspected.'),
(386,1243,532,'901–1000; surviving copy 1595–1605',NULL,'Wachtendonck Psalms, Psalm 54:13','Sense 1; WPs manuscript H, 054,13; South Lower Rhine','Vuanda of fiunt flukit mi …','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports the enemy clause and Latin inimicus alignment. The later copy was not directly inspected and the range is not converted into a false point year.'),
(387,1243,532,'901–1000; surviving copy circa 1598',NULL,'Wachtendonck Psalms glosses, Habakkuk 3:5','Sense 2; WPs glosses, Abac. 003,05; South Lower Rhine','Dfiunt (l. fiunt ?). diabolus','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'ONW says most editions read fiunt, while Heyne proposed an error for diufil and both readings can represent Latin diabolus. The dossier preserves the textual dispute and does not promote this as a secure earliest Devil token.'),
(388,1243,532,'circa 1100',1100,'Leiden Willeram, enemy of God clause','Sense 1; LW 013,12; Egmond, Holland','ande sint auor thine uiande','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW locates and translates the clause as however they are your enemies. The lexical record was inspected; no underlying codex page was directly inspected.'),
(389,1242,533,'1236',1236,'Ghent documentary record','Sense 1; Corpus I, p. 26, lines 5–7; Ghent, East Flanders','dat si gode mogen bidden hertelike ouer hare uiande','established','lexical_corpus_record',NULL,NULL,NULL,0,'VMNW identifies this as the oldest attestation in its thirteenth-century corpus. It is a located corpus report, not a directly inspected charter object or proof of coinage.'),
(390,1242,533,'1265–1270',NULL,'Life of Saint Lutgard, Devil sense','Sense 2.1; Lutg.K, p. 395, lines 38–39; West Brabant','Dos laett regneren din viant Got in die werelt met gedoege','established','lexical_corpus_record',NULL,NULL,NULL,0,'VMNW translates din viant here as the Devil and locates the passage. The range is preserved rather than collapsed into one invented year.'),
(391,1242,533,'1285',1285,'Rijmbijbel, Lucifer apposition','Sense 2.1; Rijmb., p. 531, lines 24–26; West Flanders','Den ouden viant luciferre','established','lexical_corpus_record',NULL,NULL,NULL,0,'VMNW explicitly files the passage under the Devil or fallen archangel sense. The edition and manuscript object were not directly inspected.'),
(392,1242,533,'1291–1300',NULL,'Liège Diatessaron, friend-enemy contrast','Sense 1; Diat., p. 44, lines 27–30; West Brabant','du sout lief hebben dinen vrint, ende haten dinen vient','established','lexical_corpus_record',NULL,NULL,NULL,0,'VMNW locates the love-your-friend and hate-your-enemy contrast. The lexical record supports the ordinary enemy sense and the visible vriend / vient contrast, not the later causal hypothesis about vowel retention.'),
(393,1241,535,'2017 corpus example',2017,'Corpus Hedendaags Nederlands selection','ANW selected examples, 2017','De belangrijkste vijanden van de VS zijn Iran …','established','lexical_corpus_record',NULL,NULL,NULL,0,'ANW supplies a contemporary plural example for a collective geopolitical enemy. The full source document was not directly inspected and no first-use claim is made.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(881,193,'fijands','Gothic','the reviewed lexicalized enemy noun beside productive participial overlap',491),
(882,193,'Feind','German','the reviewed High German continuation that retained ordinary enemy at its center',531),
(883,193,'fiend','English','the reviewed English cousin whose demonic branch displaced ordinary enemy in current use',531),
(884,193,'fēond','Old English','the reviewed West Germanic enemy noun behind modern fiend',531),
(885,193,'fiānd / fiūnd','Old Frisian','a West Germanic cognate pair',532),
(886,193,'fīant','Old High German','a West Germanic cognate continued by German Feind',531),
(887,193,'fīund / fīand','Old Saxon','a West Germanic cognate set',531),
(888,193,'fjándi','Old Norse','a North Germanic cognate enemy noun',531),
(889,193,'fiende','Swedish','a modern North Germanic continuation',531),
(890,193,'vriend','Dutch','a structurally comparable lexicalized participle with a different root and different ending history, not an ancestor',531),
(891,193,'vijandschap','Dutch','a derivative naming enmity or hostility',534),
(892,193,'vijandig','Dutch','a derivative adjective meaning hostile',534),
(893,193,'aartsvijand','Dutch','a compound naming an arch-enemy',534),
(894,193,'doodsvijand','Dutch','a compound naming a mortal enemy',534),
(895,193,'vyand','Afrikaans','a Dutch loan continued in Afrikaans',531);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(797,193,1,'Proposed Indo-European comparative horizon','*peh₁-','The displayed base is already a proposed comparison. It does not recover one homeland, one pronunciation, or one original enemy concept.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional linguistic horizon attached to a proposed comparison, not an archaeological finding.'),
(798,193,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and *fi(j)and-','The hate verb and lexicalized participial enemy noun are comparative reconstructions shared across Germanic branches.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not directly dated spoken tokens.'),
(799,193,3,'South Lower Rhine Old Dutch record','Wachtendonck Psalms, 901–1000','ONW locates most early records in the South Lower Rhine and labels the surviving witnesses as copies from 1595–1605, circa 1598, or later.',NULL,NULL,'broad',901,1000,'range','The language-period date and later-copy date are distinct; no original tenth-century object is claimed.'),
(800,193,4,'Egmond, Holland','uiande in the Leiden Willeram, circa 1100','ONW locates a God-and-heretics enemy clause at Egmond. The named textual context does not justify one manuscript-production coordinate.',NULL,NULL,'broad',1075,1125,'range','A bounded circa interval around the corpus date, not an exact token year.'),
(801,193,5,'Ghent, East Flanders','earliest VMNW record, 1236','VMNW locates its earliest thirteenth-century record in a Ghent documentary source.',NULL,NULL,'regional',1236,1236,'exact','Exact corpus year for the located documentary record, not the birth date of the word.'),
(802,193,6,'West Brabant and West Flanders','secure Devil-sense record, 1265–1300','VMNW records repeated Devil or Lucifer uses in the Life of Saint Lutgard, Rijmbijbel, and Liège Diatessaron textual worlds.',NULL,NULL,'broad',1265,1300,'range','A corpus interval covering multiple named sources and regions, not one innovation event.'),
(803,193,7,'Dutch-language continuum','New Dutch vijand and current usage','EWN, WNT, and ANW document continuation into standard Dutch, with ordinary enemy or opponent remaining central and figurative uses extending beyond people.',NULL,NULL,'broad',1550,2026,'range','A language-wide continuum, not a claim that one form or meaning was uniform everywhere.'),
(804,193,8,'Knowledge boundary','beyond the proposed Indo-European comparison','The graph stops before hatred, harm, blame, enemy, Devil, or suffering is declared the one certain prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(797,491,'p. 140, deeper proposal for *fi(j)ēn-','supports','Publishes the deepest route used with proposed confidence.'),
(797,531,'EWN *peh₁i- / *pih₁- and LIV comparison','context','Provides an alternative notation and the wider semantic comparison.'),
(798,491,'p. 140, *fi(j)ēn- and *fi(j)and-','supports','Publishes the reconstructed Germanic verb and agent noun.'),
(798,492,'pp. 47–49, nd-formations and lexicalization','context','Documents the formation and category overlap in comparative analysis.'),
(798,531,'EWN Germanic descendant set','context','Supplies the Dutch-centered comparative family.'),
(799,532,'WPs records, regional labels, language dates, and copy dates','supports','Directly reports the South Lower Rhine attribution and separates Old Dutch date from later copy date.'),
(800,532,'LW 013,12; Egmond, Holland; circa 1100','supports','Provides the named place, source, and bounded date.'),
(801,533,'Oldest attestation; Corpus I, p. 26, lines 5–7; Ghent; 1236','supports','Provides the exact corpus year and regional label.'),
(802,533,'Sense 2.1; Lutg.K, Rijmb., and Diat. records','supports','Documents repeated Devil or Lucifer usage across West Brabant and West Flanders sources.'),
(803,531,'EWN Old, Middle, and New Dutch form sequence','supports','Documents continuation into New Dutch.'),
(803,534,'Historical forms and broad noun sense architecture','supports','Documents ordinary and figurative historical Dutch uses.'),
(803,535,'Current grammar and CHN examples','context','Documents current noun grammar and corpus use.'),
(804,491,'p. 140, deepest published comparison used here','supports','Supports an explicit endpoint after the qualified PIE proposal.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(517,193,'Does modern vijand refer only to one personally hated individual?','No. Current and historical Dutch evidence covers persons, groups, political or military opponents, figurative threats, diseases, animals, and plant threats.','established','ANW, WNT, and EWN document broader grammar and usage.','resolved','The headword gloss keeps enemy or opponent broad and does not force every token into private hatred.'),
(518,193,'Was vijand historically a present participle?','Yes at the inherited formation level. EWN calls it an early independently used present participle, ONW calls it originally the present participle of the lost corresponding verb, and Kroonen reconstructs *fi(j)and-.','probable','Independent Dutch and Proto-Germanic authorities converge on the analysis, while the parent form remains reconstructed.','resolved','The dossier labels the parent with an asterisk and states literal one-who-hates as a word-formation analysis, not an attested Dutch sentence.'),
(519,193,'Is modern vijand still a productive Dutch participle?','No. ONW classifies the Old Dutch noun as synchronically unsegmented and says the corresponding verb is no longer known in Dutch; ANW classifies current vijand as a masculine noun.','established','The historical origin and modern grammatical category are explicitly distinct in the sources.','resolved','The dossier uses fossilized or lexicalized participle, never a modern participial parse.'),
(520,193,'Was vijand genuinely used for the Devil in medieval Dutch?','Yes. VMNW has a dedicated Devil branch with multiple located thirteenth-century Lucifer and evil-spirit passages. ONW also lists a possible earlier Devil record.','established','The Middle Dutch record is repeated and explicit even though the earliest Old Dutch token is disputed.','resolved','Secure Middle Dutch Devil evidence is kept separate from the uncertain Old Dutch reading.'),
(521,193,'Does Dfiunt / fiunt securely name the Devil in the earliest Old Dutch record?','No. ONW reports that most editions read fiunt, Heyne proposed an error for diufil, both can render Latin diabolus, and the initial D has competing analyses.','proposed','The historical dictionary itself publishes the textual dispute and alternative readings.','open',NULL),
(522,193,'Are the 901–1000 Wachtendonck Psalms forms directly inspected tenth-century manuscript tokens?','No. ONW labels the records with much later copy dates, including 1595–1605 and circa 1598. This review inspected the lexical corpus record, not an original tenth-century object.','established','The corpus metadata separates linguistic dating from surviving-copy dating.','resolved','All Wachtendonck Psalms attestations remain source-reported and receive no facsimile or witness-inspection record.'),
(523,193,'Did the Devil preserve vijand’s full ending?','Possibly, not certainly. Van Veen, De Vries, Van Haeringen, and EWN repeat variants of the proposal that medieval Devil usage made vijand a church or consecrated term whose full ending resisted the reduction seen in vriend. Their wording is maybe or probably.','proposed','Several etymologists publish the same causal hypothesis, but no source demonstrates a controlled historical mechanism or excludes alternatives.','open',NULL),
(524,193,'Did the Devil sense create the word vijand?','No. The inherited enemy noun comes from the Germanic one-who-hates formation. Devil is an attested religious sense inside Dutch, not the origin of the agent noun.','established','The comparative derivation and ordinary enemy records are older and structurally independent of the preservation hypothesis.','resolved','The leaderboard reveal says may have preserved part of the form, never created the word.'),
(525,193,'Did Dutch vijand undergo the same enemy-to-demon replacement as English fiend?','No. Dutch retained ordinary enemy or opponent as the central modern sense. The Devil branch is historical; English fiend developed a different modern semantic center.','established','EWN, WNT, ANW, and the reviewed fiend dossier show collateral inheritance followed by different daughter-language outcomes.','resolved','The graph joins the words at reconstructed ancestry and does not copy English semantic history into Dutch.'),
(526,193,'Does Dutch still preserve the inherited hate verb behind vijand?','Not as the corresponding inherited verb. ONW says the verb matching Old High German fīēn and Gothic fijan is no longer known in Dutch.','established','The historical dictionary makes the lexical loss explicit.','resolved','The verb is shown only as a starred Proto-Germanic node, while modern vijand remains a noun.'),
(527,193,'Was Dutch vijand borrowed from German Feind or English fiend?','No borrowing is established. Old Dutch fīunt / fīant, German Feind, English fiend, Gothic fijands, and the Nordic forms are collateral inherited descendants.','established','EWN, ONW, WNT, and Kroonen publish the comparative descendant set.','resolved','The canonical graph reuses the shared reconstructed nodes and draws no German-to-Dutch or English-to-Dutch arrow.'),
(528,193,'Does vijand securely descend from exactly *peh₁-?','Only as a qualified proposal. Kroonen and EWN publish deeper laryngeal-bearing analyses, but their notation and intermediate formation differ and the harm, blame, suffering, hostility, and hate path is not uniquely recoverable.','proposed','The Germanic noun and verb comparison is firmer than the displayed Proto-Indo-European route.','open',NULL),
(529,193,'Does the 901–1000 corpus range prove when vijand was coined?','No. It is the oldest attestation range published by ONW, not a birth certificate. The inherited formation must predate the daughter-language record, and the surviving sources are incomplete.','established','ONW distinguishes oldest attestation from etymology, and Kroonen places the formation at the reconstructed Germanic level.','resolved','The timeline labels first reviewed corpus evidence and never calls it coinage.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(517,535,'General grammatical data and selected CHN examples','supports','Documents current grammatical classes and personal, collective, and figurative uses.'),
(517,534,'Noun senses I.A and I.B','context','Documents the broad historical semantic architecture.'),
(518,531,'EWN: independently used present participle of Proto-Germanic *fijēn-','supports','Publishes the literal agent analysis and descendant set.'),
(518,532,'Morphology: originally present participle of the corresponding lost verb','supports','Independently confirms the participial origin in the Old Dutch entry.'),
(518,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the reconstructed formation.'),
(519,532,'Morphology: ongeleed and corresponding verb no longer known in Dutch','supports','Separates inherited formation from synchronic Old Dutch analysis.'),
(519,535,'Word class: masculine noun','supports','Confirms the current noun category.'),
(520,533,'Sense 2.1 and 2.2, multiple Devil and evil-spirit records','supports','Provides repeated located medieval evidence.'),
(520,532,'Sense 2 and disputed Habakkuk gloss','context','Supplies the possible earlier record with its textual limits.'),
(521,532,'Sense 2 commentary and Abac. 003,05 variants','supports','Publishes the competing fiunt, diufil, and initial-D analyses.'),
(522,532,'WPs witness labels and copy dates','supports','Explicitly marks later copies beside the Old Dutch date range.'),
(523,531,'EWN and embedded Van Veen, De Vries, Van Haeringen discussions','supports','Publishes the repeated possible or probable church-term preservation hypothesis.'),
(523,533,'407-token Middle Dutch corpus and dedicated Devil branch','context','Shows the religious sense was real without proving that it caused phonological retention.'),
(523,536,'Current pronunciation and two-syllable label','context','Documents the modern two-syllable outcome while providing no evidence for why it survived.'),
(524,531,'EWN participial origin and Devil-preservation discussion','supports','Separates the inherited formation from the later causal hypothesis.'),
(525,531,'Dutch form history and Germanic cognates','supports','Shows Dutch ordinary enemy continuation beside English fiend.'),
(525,535,'Current corpus examples','context','Confirms ordinary modern enemy use.'),
(526,532,'Morphology: corresponding verb no longer known in Dutch','supports','Directly states the Dutch lexical loss.'),
(527,531,'Germanic cognate inventory','supports','Publishes collateral forms across the family.'),
(527,491,'p. 140, reconstructed parent and descendants','context','Places daughter nouns under shared ancestry rather than borrowing.'),
(528,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the qualified route used in the graph.'),
(528,531,'EWN *peh₁i- / *pih₁- analysis and non-Germanic comparisons','context','Shows alternative formal detail inside the wider proposal.'),
(529,532,'Oldest attestation 901–1000; corpus and copy metadata','supports','Provides a bounded evidence horizon rather than a coinage date.'),
(529,491,'p. 140, Proto-Germanic reconstruction','context','Places the formation before the Dutch textual record.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(193,193,2103,'vijand','The Devil may have preserved the second syllable of Dutch vijand.','The solid layer is already strange: vijand is a fossilized present participle, literally one who hates. The speculative layer is stranger. EWN, Van Veen, De Vries, and Van Haeringen propose that medieval use for the Devil made vijand a church or consecrated term whose full ending resisted the reduction seen in vriend. VMNW proves the Devil sense was real with repeated thirteenth-century records. It does not prove the phonological cause. The correct reveal is may have preserved, not did preserve.','B',100,'The participial origin and medieval Devil sense are strongly evidenced. The causal retention claim remains explicitly proposed, the earliest Old Dutch Devil reading remains disputed, and no later copy is mislabeled as an inspected tenth-century manuscript.');
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
(193,531,'EWN participial analysis and full-ending hypothesis; Van Veen, De Vries, and Van Haeringen excerpts','supports','Publishes both the established word formation and the explicitly tentative preservation hypothesis.'),
(193,533,'Frequency, spelling inventory, and sense 2.1 Devil records','supports','Demonstrates that the medieval Devil sense was repeated and substantial.'),
(193,532,'Morphology, sense 2, disputed Dfiunt / fiunt reading, and copy dates','challenges','Prevents the reveal from treating the earliest Devil token or a tenth-century manuscript object as secure.'),
(193,491,'p. 140, *fi(j)and- from *fi(j)ēn-','context','Supplies the reconstructed participial formation behind the literal one-who-hates layer.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(149,193,188,'ONE ENEMY KEPT THE DEVIL; THE OTHER BECAME ONE','Dutch vijand and English fiend inherit the same lexicalized one-who-hates formation. Medieval Dutch used viant for Lucifer, and several etymologists propose that the sacred euphemism helped preserve its full ending—yet modern Dutch kept ordinary enemy at the center. English moved the cognate toward demon. One family produced opposite semantic outcomes while the Devil appears in both histories.',100,'B','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1241 AND 1247
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1244,1245,1246) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1241 THEN 'Promoted from the graph-derived top evidence-ready candidate into a complete corpus, manuscript-provenance, semantic, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1241 AND 1247;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1049 AND 1054;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1049 AND 1054;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1049 AND 1054;
