INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(30,'german','German','Indo-European','West Germanic',0,1650,NULL,'Present-day standard German and its modern written continuum.'),
(31,'middle-high-german','Middle High German','Indo-European','West Germanic',0,1050,1350,'The conventional Middle High German textual period.'),
(32,'old-high-german','Old High German','Indo-European','West Germanic',0,750,1050,'The attested Old High German textual period.'),
(33,'middle-dutch','Middle Dutch','Indo-European','West Germanic',0,1200,1500,'The conventional Middle Dutch textual period.'),
(34,'gothic','Gothic','Indo-European','East Germanic',0,300,600,'The extinct East Germanic language attested chiefly by the Gothic biblical tradition.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(47,'liebe','Liebe','liebe','/ˈliːbə/','noun','The German noun for love, inherited through Middle and Old High German and a Germanic abstract-noun formation distinct from the immediate noun ancestry of English love.','German Liebe is not English love wearing a German spelling. The two nouns follow different Germanic formations and meet only deeper in the shared desire-and-care family.','reviewed'),
(48,'lief','lief','lief','/lif/','adjective · noun','The Dutch adjective for dear, sweet, or kind and its substantivized use for a beloved person, inherited through the Germanic adjective branch.','Dutch lief is not descended from English love. It is an inherited adjective whose closest graph neighbors include Gothic liufs and German lieb.','reviewed'),
(49,'liufs','liufs','liufs','/liufs/','adjective','The normalized Gothic adjective meaning dear or beloved, preserved through inflected manuscript forms including liuba and liubans.','The star in Project Wulfila’s lemma *liufs does not turn Gothic into a reconstructed language. The lexeme is manuscript-attested; only its normalized citation form is inferred from surviving inflections.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(120,'duden-liebe','Liebe — Rechtschreibung, Bedeutung, Definition, Herkunft','Dudenredaktion',2026,'Duden','https://www.duden.de/rechtschreibung/Liebe',NULL,'historical_dictionary'),
(121,'ewa-liuben','liuben; giliuben; liubi; liubî — Etymologisches Wörterbuch des Althochdeutschen','Rosemarie Lühr',2014,'Sächsische Akademie der Wissenschaften zu Leipzig','https://ewa.saw-leipzig.de/articles/92970/de',NULL,'scholarly_dictionary'),
(122,'duden-lieb','lieb — Rechtschreibung, Bedeutung, Definition, Herkunft','Dudenredaktion',2026,'Duden','https://www.duden.de/rechtschreibung/lieb',NULL,'historical_dictionary'),
(123,'anw-lief','lief — Algemeen Nederlands Woordenboek','Instituut voor de Nederlandse Taal editors',2026,'Instituut voor de Nederlandse Taal','https://anw.ivdnt.org/article/lief',NULL,'historical_dictionary'),
(124,'franck-lief','Franck’s Etymologisch Woordenboek der Nederlandsche Taal — liefhebben, liefde, lief','N. van Wijk, after Johannes Franck',1912,'Instituut voor de Nederlandse Taal digital edition','https://dagenta.ivdnt.org/wp-content/uploads/pdf/1912_franck_etymologisch-woordenboek.pdf',NULL,'scholarly_dictionary'),
(125,'vmnw-smeken-lief','smeken — Vroegmiddelnederlands Woordenboek','Instituut voor de Nederlandse Taal editors',2000,'Instituut voor de Nederlandse Taal','https://gtb.ivdnt.org/iWDB/search?actie=article_content&id=ID42742&wdb=VMNW',NULL,'historical_dictionary'),
(126,'wulfila-liufs','Lemma *liufs — Gothic dictionary','Project Wulfila editors; Wilhelm Streitberg',2026,'Project Wulfila','https://www.wulfila.be/gothic/browse/lemma/1862.html',NULL,'research_database'),
(127,'wulfila-mark-1-11','Gothic Bible word analysis — Mark 1:11','Project Wulfila editors; Wilhelm Streitberg',2026,'Project Wulfila','https://www.wulfila.be/gothic/browse/text/04/01/11.html',NULL,'research_database'),
(128,'codex-argenteus-57v','Codex Argenteus facsimile 276 — folio 57v, Mark 1:6–13','Uppsala University Library; Project Codex Argenteus Online',1927,'Project Codex Argenteus Online','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/276mc1f.html',NULL,'digitized_primary_source'),
(129,'uppsala-codex-argenteus-history','The history of Codex argenteus','Uppsala University Library',2026,'Uppsala University','https://www.uu.se/en/library/visit-and-contact/exhibitions/codex-argenteus/the-history-of-codex-argenteus',NULL,'manuscript_catalog');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(314,47,30,1,'Liebe','liebe','love-abstract',NULL,'/ˈliːbə/','attested','Present-day German',1650,NULL,'love; strong affection; a beloved person','Duden records the modern feminine noun, its senses, and its Middle and Old High German ancestry.'),
(315,47,31,2,'liebe','liebe','love-abstract',NULL,NULL,'attested','Middle High German',1050,1350,'favor, affection, love','Duden identifies Middle High German liebe as the immediate historical stage.'),
(316,47,32,3,'liubī','liubi','love-abstract',NULL,NULL,'attested','Old High German, attested from the tenth century',750,1050,'love, affection, esteem, pleasure, favor','The EWA article documents liubî and lioba, their senses, dated records, and their deadjectival formation.'),
(317,47,5,4,'*leubīn','leubin','love-abstract',NULL,NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'love; affection as an abstract noun','The EWA article reconstructs Germanic *leubī- and *leubīn behind Old High German liubî.'),
(318,47,6,5,'*lewbʰ-','leubh','default',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'to care for, desire, love','Shared canonical root with the English love dossier; its semantic field is broader than modern romance.'),
(319,47,7,6,'UNKNOWN','unknown','liebe-deep-boundary',NULL,NULL,'boundary','before secure reconstruction of *lewbʰ-',NULL,NULL,'No securely reviewed ancestor beyond the reconstructed desire-and-care root.','The trail ends without presenting one deeper proposal as established.'),

(320,48,23,1,'lief','lief','dear-kind-adjective',NULL,'/lif/','attested','Present-day Dutch',1550,NULL,'dear, sweet, kind; substantivized, a beloved person','ANW records the adjective, its inflection, pronunciation, and substantivized use.'),
(321,48,33,2,'lief','lief','dear-kind-adjective',NULL,NULL,'attested','Middle Dutch',1200,1500,'dear, beloved, pleasant','The historical Dutch dictionaries preserve early uses and relate the form to the wider Germanic adjective family.'),
(322,48,5,3,'*leubaz','leubaz','dear-beloved-adjective',NULL,NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'dear, beloved, pleasing','Shared canonical adjective reconstruction with Gothic liufs.'),
(323,48,6,4,'*lewbʰ-','leubh','default',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'to care for, desire, love','Shared canonical desire-and-care root with love and Liebe.'),
(324,48,7,5,'UNKNOWN','unknown','lief-deep-boundary',NULL,NULL,'boundary','before secure reconstruction of *lewbʰ-',NULL,NULL,'No securely reviewed ancestor beyond the reconstructed desire-and-care root.','The boundary distinguishes an evidence horizon from an assertion of absolute unknowability.'),

(325,49,34,1,'liufs','liufs','dear-beloved-adjective',NULL,'/liufs/','attested','Gothic biblical tradition',300,600,'dear, beloved','The pronunciation is a broad normalized reading, not a recording. This citation form represents a manuscript-attested lexeme; Project Wulfila lists 33 inflected occurrences including liuba, liuban, liubans, liubin, and liubai.'),
(326,49,5,2,'*leubaz','leubaz','dear-beloved-adjective',NULL,NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'dear, beloved, pleasing','Shared canonical adjective reconstruction with Dutch lief.'),
(327,49,6,3,'*lewbʰ-','leubh','default',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'to care for, desire, love','Shared canonical desire-and-care root with love, Liebe, and lief.'),
(328,49,7,4,'UNKNOWN','unknown','liufs-deep-boundary',NULL,NULL,'boundary','before secure reconstruction of *lewbʰ-',NULL,NULL,'No securely reviewed ancestor beyond the reconstructed desire-and-care root.','The manuscript record and the reconstructed prehistory remain visibly separate.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(268,47,314,315,'historical_continuation','Middle High German liebe continues into modern German Liebe with capitalization of the noun and standardization of spelling and pronunciation.','The inherited abstract noun remains centered on affection while broadening across personal, religious, and object-directed uses.','Dudenredaktion','established','The immediate Middle High German stage is explicit in the modern dictionary.','Middle High German to present-day German.','reviewed'),
(269,47,315,316,'inheritance','Old High German liubī develops into Middle High German liebe through regular High German vowel and ending development.','Love, favor, pleasure, and affection remain overlapping parts of the semantic field.','Dudenredaktion · Rosemarie Lühr','established','Both historical stages and their continuity are directly reported.','Old High German to Middle High German.','reviewed'),
(270,47,316,317,'inheritance','Old High German liubī reflects the reconstructed Germanic feminine abstract formation *leubīn, with inherited diphthong and later High German reshaping.','The abstract meaning remains love, affection, esteem, or pleasure.','Rosemarie Lühr','probable','The Old High German form is attested; the Germanic parent is reconstructed from comparative morphology.','Proto-Germanic prehistory to Old High German records from the tenth century.','reviewed'),
(271,47,317,318,'derivation','Germanic *leubīn is an abstract-noun formation within the *lewbʰ- desire-and-care family.','A broad root meaning care for, desire, or love yields a noun for affection and pleasure.','Rosemarie Lühr · Guus Kroonen · University of Texas LRC','probable','The morphological comparison is published, but the parent root is reconstructed rather than attested.','Proto-Indo-European to Proto-Germanic prehistory.','reviewed'),
(272,47,318,319,'knowledge_boundary','No older form is promoted beyond the reviewed *lewbʰ- reconstruction.','The German love-noun history reaches the current secure evidence horizon.','SET-U editorial boundary','boundary','This is an explicit knowledge boundary, not a claim that no deeper proposal has ever been made.',NULL,'reviewed'),

(273,48,320,321,'historical_continuation','Middle Dutch lief continues into modern Dutch lief with stable spelling and later standardization of pronunciation and inflection.','Dear, beloved, pleasant, and kind remain within the inherited adjective’s semantic range.','Instituut voor de Nederlandse Taal editors · N. van Wijk','established','Modern grammar and the historical form are directly documented.','Middle Dutch to present-day Dutch.','reviewed'),
(274,48,321,322,'inheritance','Middle Dutch lief reflects the West Germanic continuation of reconstructed *leubaz, including the diphthong history represented by Dutch ie and final f.','The adjective preserves the sense dear, beloved, or pleasing.','N. van Wijk · Guus Kroonen','probable','The Dutch form is attested; the Proto-Germanic parent and exact sound stages are comparative reconstructions.','Proto-Germanic prehistory to Middle Dutch.','reviewed'),
(275,48,322,323,'inheritance','Proto-Germanic *leubaz continues the *lewbʰ- family with Germanic *b corresponding to Indo-European *bʰ and adjective-stem formation.','A broad field of caring, desiring, and loving develops the adjective sense dear, beloved, or pleasing.','Guus Kroonen · University of Texas LRC','probable','The cross-branch comparison is strong, while both parent forms are reconstructed.','Proto-Indo-European to Proto-Germanic prehistory.','reviewed'),
(276,48,323,324,'knowledge_boundary','No older form is promoted beyond the reviewed *lewbʰ- reconstruction.','The Dutch adjective history reaches the current secure evidence horizon.','SET-U editorial boundary','boundary','The boundary preserves the difference between reviewed reconstruction and unknown deeper prehistory.',NULL,'reviewed'),

(277,49,325,326,'inheritance','Proto-Germanic *eu is reflected as Gothic iu; the stem-final fricative appears as f in the normalized nominative liufs and as b in manuscript inflections such as liuba and liubans.','The sense dear or beloved remains stable in the surviving biblical uses.','Guus Kroonen · Wilhelm Streitberg · Project Wulfila editors','probable','The inflectional alternation is manuscript-attested; the Proto-Germanic parent and phonological staging are reconstructed.','Proto-Germanic prehistory to the fourth-century Gothic translation tradition and early-sixth-century manuscript.','reviewed'),
(278,49,326,327,'inheritance','Proto-Germanic *leubaz continues the *lewbʰ- family with Germanic *b corresponding to Indo-European *bʰ and adjective-stem formation.','A broad field of caring, desiring, and loving develops the adjective sense dear, beloved, or pleasing.','Guus Kroonen · University of Texas LRC','probable','The cross-branch comparison is strong, while both parent forms are reconstructed.','Proto-Indo-European to Proto-Germanic prehistory.','reviewed'),
(279,49,327,328,'knowledge_boundary','No older form is promoted beyond the reviewed *lewbʰ- reconstruction.','The Gothic adjective history reaches the current secure evidence horizon.','SET-U editorial boundary','boundary','The boundary keeps the attested Gothic lexeme separate from unknown deeper prehistory.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(268,120,'Herkunft: mittelhochdeutsch liebe; modern noun senses','supports','Identifies the immediate Middle High German source and the continuing modern noun.'),
(269,120,'Herkunft: mittelhochdeutsch liebe, althochdeutsch liubī','supports','Publishes the Old-to-Middle-to-modern sequence.'),
(269,121,'Band V, Spalte 1387, liubî paragraph','supports','Documents Old High German liubî, Middle High German liebe, and Modern German Liebe.'),
(270,121,'Band V, Spalte 1387, liubî: Etymologie germ. *leubī-, *leubīn','supports','Supplies the attested Old High German noun and its reconstructed Germanic abstract formation.'),
(270,4,'s.v. Germanic love family','context','Provides independent comparative Germanic context for the love family.'),
(271,121,'Band V, Spalte 1387, liubî: deadjectival abstract formation and Indo-European *leubh- comparison','supports','Connects the Germanic abstract noun to the deeper desire-and-care family.'),
(271,6,'Pokorny etymon leubh- and Indo-European reflex table','context','Publishes the reconstructed cross-branch root and semantic field.'),
(272,6,'Emotion 16.27, reconstructed root leubh-','context','Defines the reviewed reconstruction at which the dossier stops.'),
(273,123,'Adjective and noun sections: spelling, inflection, word formation, pronunciation','supports','Documents present-day Dutch lief and its substantivized use.'),
(273,124,'pp. 384–385, entries liefhebben and liefde','supports','Documents Middle Dutch and wider Dutch forms in the inherited lief family.'),
(274,124,'pp. 384–385, Germanic comparison under liefhebben','supports','Compares Dutch lief with Old High German liob, Gothic liufs, and other Germanic adjective reflexes.'),
(274,4,'s.v. *leubaz, Germanic adjective family','context','Supplies the comparative Proto-Germanic reconstruction behind the daughter forms.'),
(275,4,'s.v. *leubaz and the Germanic love family','supports','Provides the reconstructed Germanic adjective and comparative reflexes.'),
(275,6,'Pokorny etymon leubh- and Indo-European reflex table','supports','Places the Germanic adjective within the wider reconstructed desire-and-care family.'),
(276,6,'Emotion 16.27, reconstructed root leubh-','context','Defines the reviewed reconstruction at which the dossier stops.'),
(277,126,'Lemma *liufs; occurrences liuba, liuban, liubans, liubin, liubai','supports','Documents the normalized lemma and 33 manuscript-linked inflected occurrences.'),
(277,127,'Mark 1:11, token liuba; Streitberg 1910 p. 85','supports','Links an actual Codex Argenteus token to the liufs lexeme and displays the f/b stem alternation.'),
(277,4,'s.v. *leubaz, Gothic liufs','context','Supplies the reconstructed Germanic parent of the Gothic adjective.'),
(278,4,'s.v. *leubaz and the Germanic love family','supports','Provides the reconstructed Germanic adjective and comparative reflexes.'),
(278,6,'Pokorny etymon leubh- and Indo-European reflex table','supports','Places the Germanic adjective within the wider reconstructed desire-and-care family.'),
(279,6,'Emotion 16.27, reconstructed root leubh-','context','Defines the reviewed reconstruction at which the dossier stops.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(62,316,121,'10th century',NULL,'Old High German liubî record reported by the EWA article','Band V, Spalte 1387; liubî paragraph','duruh sîna liubî','established','lexical_corpus_record',NULL,NULL,NULL,0,'The dictionary excerpt and dated source horizon were reviewed; no underlying manuscript image was directly inspected.'),
(63,321,125,'1276–1300',NULL,'Lutgart A, as reported by the Vroegmiddelnederlands Woordenboek','Lutg.A p. 57, lines 20–23','hi vuedet ende heuet lief ende smeket ende huedet','established','lexical_corpus_record',NULL,NULL,NULL,0,'The period-dictionary record and excerpt were reviewed; the underlying manuscript or edition image was not directly inspected.'),
(64,325,128,'early 6th century',510,'Codex Argenteus, Mark 1:11','DG 1, fol. 57v; facsimile 276; token liuba','þu is sunus meins sa liuba','probable','manuscript','Uppsala University Library','DG 1, fol. 57v','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/276mc1f.html',0,'Project Wulfila’s transcription and folio link were reviewed. The manuscript pixels were not independently re-collated, and the year is a representative point within the official early-sixth-century dating.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(180,47,'love','English','cognate through a different Germanic abstract-noun branch',4),
(181,47,'lieb','German','adjectival base and close inherited family member',122),
(182,47,'lief','Dutch','Germanic adjective cousin',124),
(183,47,'liufs','Gothic','early attested Germanic adjective cousin',126),
(184,48,'love','English','distant inherited cousin through the shared desire-and-care root',4),
(185,48,'Liebe','German','parallel German love-family descendant',121),
(186,48,'liufs','Gothic','Germanic adjective cognate',126),
(187,48,'liefde','Dutch','Dutch abstract noun derived within the same family',124),
(188,49,'lief','Dutch','West Germanic adjective cognate',124),
(189,49,'lieb','German','West Germanic adjective cognate',122),
(190,49,'love','English','distant noun cousin through the shared desire-and-care root',4);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(190,47,1,'Indo-European linguistic horizon','Proto-Indo-European reconstruction','Comparative evidence reconstructs *lewbʰ- without turning the root into an excavated word or assigning it one exact point.',NULL,NULL,'broad',NULL,NULL,'unresolved','The root source establishes linguistic comparison but no single directly evidenced date or location.'),
(191,47,2,'Proto-Germanic linguistic horizon','Germanic abstract-noun formation','The German branch develops an abstract love noun reconstructed as *leubīn, distinct from the *lubō formation behind English lufu.',NULL,NULL,'broad',NULL,NULL,'unresolved','Comparative morphology supports the formation; the reviewed sources do not supply one exact archaeological location or date.'),
(192,47,3,'Old High German textual world','10th-century liubî records','The EWA article reports liubî and lioba in glosses and named Old High German sources from the tenth century.',NULL,NULL,'broad',900,999,'century','The century belongs to the reported Old High German textual horizon, not a claim about first spoken use.'),
(193,47,4,'Middle High German textual continuum','Middle High German liebe','The noun continues as Middle High German liebe before the modern German form.',NULL,NULL,'broad',NULL,NULL,'unresolved','The lexical sequence is explicit, but the headword sources do not assign one numeric first-use interval here.'),
(194,47,5,'Present-day German','modern Liebe','Duden records the living feminine noun and its broad contemporary meanings.',NULL,NULL,'regional',NULL,NULL,'unresolved','Current standard-language use is documented without inventing one onset date or point coordinate.'),

(195,48,1,'Indo-European linguistic horizon','Proto-Indo-European reconstruction','The Dutch adjective ultimately reaches reconstructed *lewbʰ-, a comparison rather than one datable migration event.',NULL,NULL,'broad',NULL,NULL,'unresolved','The comparative root source does not establish one exact date or place.'),
(196,48,2,'Proto-Germanic linguistic horizon','Germanic adjective *leubaz','Comparative Germanic evidence reconstructs the adjective ancestral to Dutch lief and cognate with Gothic liufs.',NULL,NULL,'broad',NULL,NULL,'unresolved','The form is reconstructed across daughter languages, not directly located in an artifact.'),
(197,48,3,'Eastern Brabant','1276–1300 Middle Dutch record','The Vroegmiddelnederlands Woordenboek cites heuet lief in Lutgart A and localizes the record to eastern Brabant.',NULL,NULL,'regional',1276,1300,'range','The interval dates the reported textual witness, not the origin of the adjective in speech.'),
(198,48,4,'Present-day Dutch','modern lief','ANW documents the living adjective, its inflection, pronunciation, and substantivized use.',NULL,NULL,'regional',NULL,NULL,'unresolved','The current dictionary record supports living use but not one numeric onset or point location.'),

(199,49,1,'Indo-European linguistic horizon','Proto-Indo-European reconstruction','The Gothic adjective ultimately reaches reconstructed *lewbʰ- through comparative evidence.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstruction is a linguistic relationship, not a directly located artifact.'),
(200,49,2,'Proto-Germanic linguistic horizon','Germanic adjective *leubaz','The East and West Germanic adjective reflexes support a shared reconstructed parent.',NULL,NULL,'broad',NULL,NULL,'unresolved','The comparative sources do not assign the lexical form one exact archaeological point.'),
(201,49,3,'Gothic biblical translation tradition','4th-century translation','The Gothic gospel translation belongs to the fourth century, although the surviving Codex Argenteus was copied later.',NULL,NULL,'broad',300,399,'century','The century dates the translation tradition described by Uppsala University, not the surviving manuscript object.'),
(202,49,4,'Ravenna','early-6th-century Codex Argenteus','The manuscript preserving Mark 1:11 liuba was probably copied in Ravenna at the beginning of the sixth century.',44118100,12203000,'regional',500,525,'range','The range operationalizes the official early-sixth-century dating and remains approximate rather than a precise production date.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(190,6,'Pokorny etymon leubh- and reflex table','supports','Supplies the reconstructed family while leaving exact geography unresolved.'),
(191,121,'Band V, Spalte 1387, liubî: Germanic *leubī-, *leubīn','supports','Documents the distinct Germanic abstract formation without localizing it to one point.'),
(192,121,'Band V, Spalte 1387, liubî paragraph: records from the 10th century','supports','Supplies the numeric century and reported Old High German sources.'),
(193,120,'Herkunft: mittelhochdeutsch liebe','supports','Documents the Middle High German stage.'),
(194,120,'Modern noun entry, meanings and grammar','supports','Documents present-day standard German Liebe.'),
(195,6,'Pokorny etymon leubh- and reflex table','supports','Supplies the reconstructed family while leaving exact geography unresolved.'),
(196,4,'s.v. *leubaz, Germanic adjective reflexes','supports','Supports the shared reconstructed adjective without an invented point location.'),
(197,125,'Lutg.A p. 57, lines 20–23; Brabant-Oost, 1276–1300','supports','Provides both the reported textual interval and regional attribution.'),
(198,123,'Adjective and noun sections','supports','Documents the living Dutch forms and uses.'),
(199,6,'Pokorny etymon leubh- and reflex table','supports','Supplies the reconstructed family while leaving exact geography unresolved.'),
(200,4,'s.v. *leubaz, Gothic and West Germanic reflexes','supports','Supports the shared Proto-Germanic adjective without a point location.'),
(201,129,'The four gospels in the Gothic language: fourth-century translation','supports','Dates the Gothic translation tradition to the fourth century.'),
(202,129,'The four gospels in the Gothic language: copied in Ravenna at the beginning of the sixth century','supports','Supports the manuscript’s approximate place and date.'),
(202,127,'Mark 1:11, Codex Argenteus fol. 57v, token liuba','supports','Connects the located manuscript stage to the lexical token.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(88,47,'Are German Liebe and English love the same immediate inherited noun?','No. Their histories converge deeper in the desire-and-care family, but Old High German liubî is analyzed through Germanic *leubīn while Old English lufu follows the *lubō branch.','probable','The EWA article publishes the German formation; Kroonen supplies the comparative Germanic family already used by the English dossier.','resolved','The graph keeps the two Germanic noun formations distinct and joins them only at reconstructed *lewbʰ-.'),
(89,48,'Did Dutch lief come from English love?','No. Dutch lief is an inherited Germanic adjective cognate with forms including Gothic liufs and German lieb; English love is a separate noun descendant in the same wider family.','probable','Franck’s dictionary compares the Germanic adjective reflexes, and Kroonen supplies the reconstructed family.','resolved','The graph treats lief and love as cousins, not parent and child.'),
(90,49,'Does the asterisk in Project Wulfila’s lemma *liufs mean Gothic itself is reconstructed?','No. Project Wulfila links the normalized lemma to 33 inflected occurrences in surviving Gothic manuscripts. The citation form is inferred, while the lexeme and its inflections are attested.','established','The lemma page labels *liufs and enumerates manuscript-linked liuba, liuban, liubans, liubin, and liubai tokens; Mark 1:11 links liuba to Codex Argenteus folio 57v.','resolved','SET-U stores liufs as an attested lexical headword, discloses the normalized citation-form issue, and reserves reconstructed status for Proto-Germanic *leubaz and PIE *lewbʰ-.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(88,121,'Band V, Spalte 1387, liubî: Germanic *leubī-, *leubīn','supports','Publishes the formation behind Old High German liubî and German Liebe.'),
(88,4,'s.v. Germanic love noun and adjective family','supports','Supplies the separate reconstructed branches used by the comparative graph.'),
(89,124,'pp. 384–385, Germanic comparison under liefhebben and liefde','supports','Lists Dutch lief with Gothic liufs, German lieb, and other inherited adjective reflexes.'),
(89,4,'s.v. *leubaz and *lubō','context','Separates the adjective and noun formations within the wider Germanic family.'),
(90,126,'Lemma *liufs; 33 listed occurrences','supports','Shows that the normalized starred lemma is backed by multiple inflected manuscript tokens.'),
(90,127,'Mark 1:11, token liuba; Codex Argenteus fol. 57v','supports','Links one inflected token to an exact biblical location and manuscript folio.'),
(90,129,'The four gospels in the Gothic language','context','Confirms that Gothic is preserved in an early-sixth-century manuscript of a fourth-century translation.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=CASE
  WHEN `rank` BETWEEN 101 AND 108 THEN `rank`-100
  WHEN `rank` BETWEEN 109 AND 114 THEN `rank`-99
  WHEN `rank` BETWEEN 115 AND 117 THEN `rank`-98
  ELSE `rank`-97 END;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(32,49,9,'liufs','A starred Gothic lemma can still be manuscript-attested.','Project Wulfila writes *liufs because the normalized citation form is inferred from inflections. Forms such as liuba and liubans survive in named codices, so this is not the same kind of star as Proto-Germanic *leubaz.','A',98,'The corpus evidence is direct at the inflected-token level; the normalized nominative is editorially inferred.'),
(33,47,16,'Liebe','German and English took different noun roads to love.','German Liebe follows Old High German liubî and reconstructed *leubīn; English love follows Old English lufu and *lubō. The graph joins them only at the deeper desire-and-care root.','A-',95,'The separate Germanic formations are published; exact Proto-Germanic morphology remains reconstructed.'),
(34,48,20,'lief','Dutch lief is love’s adjective cousin, not its child.','Dutch lief belongs with Gothic liufs and German lieb in the inherited dear-or-beloved adjective branch. English love is a separate noun route in the same deeper family.','A-',93,'The cross-Germanic comparison is strong, while the Proto-Germanic parent remains reconstructed.');
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(32,126,'Lemma *liufs; occurrence inventory','supports','Documents the starred normalized lemma and its 33 inflected Gothic occurrences.'),
(32,127,'Mark 1:11, liuba, Codex Argenteus fol. 57v','supports','Provides an exact manuscript-linked inflected token.'),
(33,121,'Band V, Spalte 1387, liubî and Germanic *leubīn','supports','Documents the German abstract-noun lineage.'),
(33,4,'s.v. Germanic love family','supports','Supplies the distinct Germanic comparison used by the English love dossier.'),
(34,124,'pp. 384–385, Germanic comparison under liefhebben','supports','Places Dutch lief beside Gothic liufs and German lieb.'),
(34,4,'s.v. *leubaz and *lubō','context','Distinguishes the adjective branch from the English noun branch.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(28,47,1,'GERMAN AND ENGLISH BUILT DIFFERENT LOVE NOUNS','Liebe reaches reconstructed *leubīn; love reaches *lubō. They are family, but neither is the other in disguise, and their reviewed paths meet only at deeper *lewbʰ-.',98,'A-','reviewed'),
(29,48,1,'LIEF IS LOVE’S ADJECTIVE COUSIN','Dutch lief preserves the dear-or-beloved adjective branch while English love follows a noun branch. The family reunion happens deeper in prehistory.',96,'A-','reviewed'),
(30,49,1,'A MANUSCRIPT LOVE WORD HIDES BEHIND A STAR','Gothic liufs survives through inflected Codex forms such as liuba. Its lexicographic star marks a normalized citation form, while the deeper Proto-Germanic and PIE stars mark reconstruction.',99,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id BETWEEN 47 AND 49
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.entry_id BETWEEN 47 AND 49;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 47 AND 49;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 47 AND 49;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 47 AND 49;
