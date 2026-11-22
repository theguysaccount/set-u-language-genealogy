-- Promote German Freund and Dutch vriend together so the already reviewed
-- English friend dossier becomes a real cross-language evidence family. Both
-- nouns continue the same Germanic loving-agent formation. Their antonyms
-- Feind and vijand show parallel participial architecture on a different hate
-- base, so those comparisons are cited context links rather than ancestry.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(211,'freund','Freund','freund','/fʁɔʏ̯nt/','German masculine noun','German Freund continues Middle High German vriunt and Old High German friunt. DWDS/Pfeifer, Duden, and Grimm independently analyze the inherited Germanic formation as a substantivized present participle of the verb represented by Gothic frijōn and Old English frēogan: historically a loving or favorably disposed one. The record is semantically wider than a modern close companion: the historical dictionaries also document neighbor, relative, lover, ally, supporter, patron, address, and euphemistic uses. The graph joins the High German line to the same reviewed *frijōnd- and *frī- nodes as English friend, keeps *prī- proposed, and stops.','Freund fossilizes a loving-one formation; it is not a derivative of modern Freude. German Freund and Feind are grammatical mirrors built on different love and hate bases, not one root split into moral opposites.','reviewed'),
(212,'vriend','vriend','vriend','/vrint/','Dutch masculine de-noun','Dutch vriend continues Middle Dutch vrient and Old Dutch friunt. EWN identifies Old Dutch records around 1100 and derives the word from Proto-Germanic *frijōnd-, the old present participle of *frijōn-, to love; WNT and MNW independently preserve the participial analysis and a much wider historical sense field including companion, relative, ally, patron, lover, address, mediator, and supporter. The modern spelling has one syllable and the pronunciation /vrint/; historical vrind and vrund variants prevent spelling from being mistaken for unchanged sound. The graph reuses the same reviewed *frijōnd-, *frī-, and proposed *prī- nodes as English friend and German Freund, then stops.','vriend and vijand are grammatical mirror fossils—historically a loving one beside a hating one or enemy—but they are not cognates. The parallel is morphological; the reconstructed verb bases remain distinct.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(612,'dwds-freund-pfeifer','DWDS — Freund, etymology after Wolfgang Pfeifer','Wolfgang Pfeifer · DWDS editorial team',2026,'Berlin-Brandenburg Academy of Sciences','https://www.dwds.de/wb/Freund',NULL,'etymological_dictionary'),
(613,'duden-freund','Duden — Freund','Dudenredaktion',2026,'Cornelsen Verlag','https://www.duden.de/rechtschreibung/Freund',NULL,'contemporary_dictionary'),
(614,'dwb-freund','Deutsches Wörterbuch von Jacob Grimm und Wilhelm Grimm — Freund','Jacob Grimm · Wilhelm Grimm',1878,'S. Hirzel · digital presentation by DWDS','https://www.dwds.de/wb/dwb/Freund',NULL,'historical_dictionary'),
(615,'ewn-vriend','Etymologisch Woordenboek van het Nederlands — vriend','Marlies Philippa · Frans Debrabandere · Arend Quak · Tanneke Schoonheim · Nicoline van der Sijs',2009,'Etymologiebank · Instituut voor de Nederlandse Taal','https://www.etymologiebank.nl/trefwoord/vriend',NULL,'etymological_dictionary'),
(616,'wnt-vriend','Woordenboek der Nederlandsche Taal — VRIEND I','Instituut voor de Nederlandse Taal editorial team',NULL,'Instituut voor de Nederlandse Taal','https://gtb.ivdnt.org/iWDB/search?wdb=WNT&actie=article&uitvoer=HTML&id=M082777',NULL,'historical_dictionary'),
(617,'mnw-vrient','Middelnederlandsch Woordenboek — VRIENT I','Eelco Verwijs · Jacob Verdam · Instituut voor de Nederlandse Taal',1929,'Instituut voor de Nederlandse Taal','https://gtb.ivdnt.org/iWDB/search?wdb=MNW&actie=article&uitvoer=HTML&id=69150',NULL,'historical_dictionary'),
(618,'anw-vriend','Algemeen Nederlands Woordenboek — vriend, grammar record','Instituut voor de Nederlandse Taal editorial team',NULL,'Instituut voor de Nederlandse Taal','https://anw.ivdnt.org/article/vriend',NULL,'contemporary_dictionary'),
(619,'wikiwoordenboek-vriend-pronunciation','WikiWoordenboek — vriend pronunciation and syllabification','WikiWoordenboek contributors',NULL,'Wikimedia Foundation','https://nl.wiktionary.org/wiki/vriend',NULL,'pronunciation_reference');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1343,211,30,1,'Freund','freund','companion-relative-lover-supporter-modern-german','Freund','/fʁɔʏ̯nt/','attested','New High German and current German',1350,2026,'friend, trusted companion, romantic partner, supporter, patron, ally, or familiar form of address','DWDS and Duden separate the contemporary senses and grammar. Grammatical masculine does not force every historical referent to be male; Grimm records uses of the noun for women. Freund Hein is a euphemistic personification of death, not an ancestral sense.'),
(1344,211,31,2,'vriunt','vriunt','friend-neighbor-lover-relative-middle-high-german','vriunt',NULL,'attested','Middle High German',1050,1350,'friend, neighbor, lover, or relative','DWDS/Pfeifer prints vriunt and explicitly records the wider semantic field. Grimm supplies literary quotations. One normalized headword does not erase manuscript spelling and dialect variation.'),
(1345,211,32,3,'friunt','friunt','loving-one-friend-relative-old-high-german','friunt',NULL,'attested','Old High German, recorded from the eighth century',750,1050,'friend, favored person, or relation; inherited loving-agent noun','DWDS/Pfeifer dates friunt to the eighth century. Grimm also prints an older disyllabic scholarly form frîônt; that formal detail remains a dispute rather than a duplicate ancestor.'),
(1346,211,5,4,'*frijōnd-','frijond','loving-one-proto-germanic-present-participle','*frijōnd-',NULL,'reconstructed','normalized Proto-Germanic participial formation',-500,200,'a reconstructed present-participial formation, the loving or favorably disposed one','The exact normalized spelling is reconstructive. German, Dutch, English, Gothic, Frisian, Saxon, and Nordic comparanda support the inherited formation; no written Proto-Germanic token survives.'),
(1347,211,5,5,'*frī-','fri','love-like-befriend-free-germanic-base','*frī-',NULL,'reconstructed','Germanic lexical base',-500,200,'to like, love, or be friendly to; also represented in the free family','The shared canonical node follows the reviewed English friend dossier. DWDS/Pfeifer connects the verb family with German frei, while the exact prehistoric paradigm remains reconstructed.'),
(1348,211,6,6,'*prī-','pri','love-like-friend-proposed-indo-european-root','*prī-',NULL,'reconstructed','proposed Indo-European comparison',-4500,-2500,'a proposed Indo-European root compared with the Germanic friend and free family','This is a published comparative horizon already reviewed through English friend, not a written word or a uniquely recoverable prehistoric social institution.'),
(1349,211,7,7,'UNKNOWN','unknown','freund-deep-boundary',NULL,NULL,'boundary','beyond the proposed *prī- comparison',NULL,NULL,'No securely reviewed older ancestor or uniquely recoverable original social meaning is currently known.','The trail ends before love, freedom, kinship, friendship, or social membership is declared the one universal prehistoric essence.'),
(1350,212,23,1,'vriend','vriend','companion-relative-lover-supporter-modern-dutch','vriend','/vrint/','attested','New Dutch and current Dutch',1500,2026,'friend, companion, intimate, supporter, ally, relation, lover, or familiar form of address','ANW classifies the current masculine de-noun; WikiWoordenboek supplies the one-syllable /vrint/ pronunciation. WNT documents historical senses beyond the modern core. The community pronunciation record is not used as ancestry evidence.'),
(1351,212,33,2,'vrient','vrient','friend-relative-lover-ally-middle-dutch','vrient',NULL,'attested','Middle Dutch, recorded from the early thirteenth century',1200,1500,'friend, ally, relation, lover, confidant, partisan, or form of address','EWN reports vrient in a 1201–1225 Floyris record and further spellings vreent and vrunt. MNW prints vrint, vreent, vrent, and vrunt beside the normalized lemma.'),
(1352,212,85,3,'friunt','friunt','loving-one-friend-old-dutch','friunt',NULL,'attested','Old Dutch, recorded around 1100',1050,1200,'friend, beloved companion, or favored person; inherited loving-agent noun','EWN reports friunt and inflected friunde in the Old Dutch Willeram around 1100. These are source-reported edited quotations, not directly inspected manuscript objects.'),
(1353,212,5,4,'*frijōnd-','frijond','loving-one-proto-germanic-present-participle','*frijōnd-',NULL,'reconstructed','normalized Proto-Germanic participial formation',-500,200,'a reconstructed present-participial formation, the loving or favorably disposed one','EWN explicitly prints *frijōnd- and derives it from the old present participle of *frijōn-. WNT and MNW independently state the participial analysis.'),
(1354,212,5,5,'*frī-','fri','love-like-befriend-free-germanic-base','*frī-',NULL,'reconstructed','Germanic lexical base',-500,200,'to like, love, or be friendly to; also represented in the free family','This shared canonical node is supported by the reviewed English friend route. EWN links the Dutch formation to vrijen and vrij without making modern vrij a parent word.'),
(1355,212,6,6,'*prī-','pri','love-like-friend-proposed-indo-european-root','*prī-',NULL,'reconstructed','proposed Indo-European comparison',-4500,-2500,'a proposed Indo-European root compared with the Germanic friend and free family','The deep comparison is displayed at proposed confidence. It does not establish a recorded Proto-Indo-European word or one original social meaning.'),
(1356,212,7,7,'UNKNOWN','unknown','vriend-deep-boundary',NULL,NULL,'boundary','beyond the proposed *prī- comparison',NULL,NULL,'No securely reviewed older ancestor or uniquely recoverable original social meaning is currently known.','The trail ends before a ritual-kinship hypothesis, freedom, love, or friendship is promoted as the single prehistoric origin.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1133,211,1343,1344,'historical_continuation','Middle High German initial v in the written tradition gives way to modern F; the historical vowel and glide develop into the modern /ɔʏ̯/ diphthong, while final obstruent devoicing yields /t/ in the citation form. Capitalization standardizes with the German noun.','Friend, relative, lover, ally, and supporter senses continue with different weights; the modern lexical category is not reduced to an active participle.','Wolfgang Pfeifer · Dudenredaktion · Jacob Grimm','established','All three German sources publish the direct Middle High German continuation. The description does not assign every regional sound or spelling change to one date.','Middle High German through Early New High German into the modern written standard.','reviewed'),
(1134,211,1344,1345,'historical_continuation','Old High German friunt continues as Middle High German vriunt with High German orthographic and phonological development; historical f and v spellings do not mark a new lexical root.','The inherited friend and relation noun expands across neighbor, lover, trusted companion, and social ally uses.','Wolfgang Pfeifer · Jacob Grimm','established','DWDS/Pfeifer and Grimm explicitly give Old High German friunt followed by Middle High German vriunt.','Old High German into the Middle High German textual record.','reviewed'),
(1135,211,1345,1346,'inheritance','Old High German friunt reflects the inherited Germanic participial stem represented as *frijōnd-. The exact pre-High-German vowel sequence and full paradigm are reconstructed from the cognate set.','An inherited loving or favorably disposed participant is already lexicalized as an ordinary friend or relation noun in the recorded High German branch.','Wolfgang Pfeifer · Jacob Grimm','probable','The daughter-language forms and participial analysis are explicit, but the parent form was not written and no exact lexicalization event survives.','Proto-Germanic reconstruction into the eighth-century Old High German record.','reviewed'),
(1136,211,1346,1347,'participial_derivation','The agent noun is built with Germanic present-participial nd-morphology on the *frī- or earlier *frij- base. OED traces the later *iu diphthong to contraction with the suffixal vowel.','A productive loving or favorably disposed participant becomes a lexical noun for friend or relation. The derivation does not make every later friend literally a person performing a continuous act of loving.','Oxford English Dictionary editors · Bosworth · Toller · American Heritage Dictionary editors','probable','Three independent dictionary treatments identify the participial relation. The exact lexicalization date and every prehistoric inflection remain unrecoverable.','Germanic derivation before the daughter-language records.','reviewed'),
(1137,211,1347,1348,'comparative_derivation','American Heritage compares Germanic *frī- with Indo-European *prī-. The initial Germanic f corresponds to the older labial stop under the comparative analysis; the exact intermediate morphology is not promoted as attested.','The reconstructed like, love, or friendliness field is compared across Indo-European, but no one original institution of friendship or freedom is recovered.','American Heritage Dictionary editors','proposed','The source publishes the root cross-reference, while the accessible record does not establish one directly attested proto-form, sentence, or social structure.','Proposed Indo-European base to Germanic reconstruction.','reviewed'),
(1138,211,1348,1349,'knowledge_boundary','No older form is promoted beyond the proposed *prī- comparison.','The graph stops before one prehistoric essence is reverse-engineered from love, kinship, freedom, peace, or friendship.','SET-U editorial boundary','boundary','The deepest displayed form is reconstructed and proposed; no reviewed earlier node clears the evidence boundary.',NULL,'reviewed'),
(1139,212,1350,1351,'historical_continuation','Middle Dutch vrient and its reduced variants continue into modern vriend. The current spelling retains ie while standard pronunciation is one syllable /vrint/; WNT discusses vrind as reduction and vriend as potentially etymologizing spelling.','The ordinary friend sense continues while historical relation, lover, ally, patron, mediator, and supporter uses remain separately documented.','EWN editors · WNT editors · MNW editors','established','The dictionaries directly publish the Middle-to-modern continuation and variants. The exact social diffusion of each spelling is not collapsed into one event.','Middle Dutch into New Dutch and the current standard.','reviewed'),
(1140,212,1351,1352,'historical_continuation','Old Dutch friunt continues into Middle Dutch vrient and variants vreent, vrint, and vrunt through West Germanic and Dutch sound and spelling development.','The inherited friend or favored-person noun persists while recorded ally, relation, lover, and address uses diversify.','EWN editors · MNW editors · WNT editors','established','EWN supplies the Old and Middle Dutch records; MNW and WNT independently inventory the later forms.','Old Dutch around 1100 into the early Middle Dutch record.','reviewed'),
(1141,212,1352,1353,'inheritance','Old Dutch friunt reflects reconstructed *frijōnd-, with daughter-language vowel and participial-stem evidence supporting the comparison rather than one preserved proto-spelling.','An inherited loving or favorably disposed participant is lexicalized as the noun friend before the surviving Old Dutch record.','EWN editors · WNT editors · MNW editors','probable','EWN explicitly prints the reconstruction and all three dictionaries identify the participial origin; the parent form itself is unattested.','Proto-Germanic reconstruction into the Old Dutch record around 1100.','reviewed'),
(1142,212,1353,1354,'participial_derivation','The agent noun is built with Germanic present-participial nd-morphology on the *frī- or earlier *frij- base. OED traces the later *iu diphthong to contraction with the suffixal vowel.','A productive loving or favorably disposed participant becomes a lexical noun for friend or relation. The derivation does not make every later friend literally a person performing a continuous act of loving.','Oxford English Dictionary editors · Bosworth · Toller · American Heritage Dictionary editors','probable','Three independent dictionary treatments identify the participial relation. The exact lexicalization date and every prehistoric inflection remain unrecoverable.','Germanic derivation before the daughter-language records.','reviewed'),
(1143,212,1354,1355,'comparative_derivation','American Heritage compares Germanic *frī- with Indo-European *prī-. The initial Germanic f corresponds to the older labial stop under the comparative analysis; the exact intermediate morphology is not promoted as attested.','The reconstructed like, love, or friendliness field is compared across Indo-European, but no one original institution of friendship or freedom is recovered.','American Heritage Dictionary editors','proposed','The source publishes the root cross-reference, while the accessible record does not establish one directly attested proto-form, sentence, or social structure.','Proposed Indo-European base to Germanic reconstruction.','reviewed'),
(1144,212,1355,1356,'knowledge_boundary','No older form is promoted beyond the proposed *prī- comparison.','The route stops before De Vries or Weijnen ritual-kinship proposals, freedom, love, or friendship are declared the unique prehistoric origin.','SET-U editorial boundary','boundary','No reviewed earlier node clears the evidence boundary.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1133,612,'Pfeifer etymology: Middle High German vriunt to modern Freund','supports','Publishes the direct continuation and historical semantic range.'),
(1133,613,'Herkunft, Aussprache, Grammatik, Bedeutungen','supports','Supplies the modern headword, pronunciation, grammar, senses, and High German ancestry.'),
(1133,614,'Etymology and numbered meanings','context','Independently supplies the High German form history and historical uses.'),
(1134,612,'Pfeifer etymology: Old High German friunt; Middle High German vriunt','supports','Directly links the two attested High German stages.'),
(1134,614,'Opening etymology: OHG friunt; MHG vriunt','supports','Independently publishes the continuation.'),
(1135,612,'Pfeifer etymology: Germanic *frijōnd- participial formation','supports','Derives the Old High German form from the reconstructed Germanic agent noun.'),
(1135,614,'Opening etymology: Gothic frijônds and Germanic comparanda','supports','Supplies independent participial and cross-Germanic evidence.'),
(1136,612,'Pfeifer etymology: erstarrtes substantiviertes Präsenspartizip','supports','Identifies the frozen substantivized present participle and love verb.'),
(1136,614,'Opening etymology: participle of frijôn, amare','supports','Independently glosses the formation as a loving one.'),
(1137,611,'American Heritage friend: Germanic *frī-; see prī-','supports','Carries the shared canonical Germanic base to the proposed deep comparison.'),
(1137,612,'Pfeifer etymology: connection with frei','context','Supports the Germanic love and free family without independently fixing the PIE label.'),
(1138,611,'Deepest displayed prī- cross-reference','supports','Supports stopping after the proposed comparative root.'),
(1139,615,'EWN main entry and subentries: vrient, vrind, vrunt to vriend','supports','Publishes the Dutch form continuum.'),
(1139,616,'Headword forms and historical sense groups','supports','Supplies variants and historical semantic range.'),
(1139,619,'Uitspraak: IPA /vrint/, one syllable','context','Documents current standard pronunciation only.'),
(1140,615,'EWN dated forms: Old Dutch friunt; Middle Dutch vrient','supports','Directly links the Old and Middle Dutch records.'),
(1140,617,'Headword VRIENT I and variant inventory','supports','Independently supplies Middle Dutch forms and meanings.'),
(1140,616,'Headword VRIEND I; Middle Dutch forms','context','Supplies a second historical form inventory.'),
(1141,615,'EWN etymology: < Proto-Germanic *frijōnd-','supports','Explicitly publishes the reconstructed parent.'),
(1141,616,'Opening etymology and Germanic cognate set','supports','Independently identifies the participial comparison.'),
(1141,617,'Opening etymology: participle of Germanic vriën','supports','Adds the Middle Dutch lexicographic analysis.'),
(1142,615,'EWN: old present participle of *frijōn- to love','supports','Explicitly supplies the participial derivation.'),
(1142,616,'Opening etymology: present participle of Germanic *frijon','supports','Independently supports the derivation.'),
(1142,617,'Opening etymology: participle of Germanic vriën, Gothic frijōn','supports','Adds a third historical-dictionary analysis.'),
(1143,611,'American Heritage friend: see Indo-European prī-','supports','Supplies the reviewed shared deep comparison.'),
(1143,615,'Pokorny-linked prāi-, prǝi-, prī- comparisons on Etymologiebank','context','Shows a wider comparative proposal without turning every listed item into a direct parent.'),
(1144,611,'Deepest displayed prī- cross-reference','supports','Supports the explicit knowledge boundary.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(514,1345,614,'ninth century, source-reported',870,'Otfried, friends addressed directly','DWB Freund; O. II.8,45','ir birut friuntâ mînê.','established','lexical_corpus_record',NULL,NULL,NULL,0,'Grimm reports the edited Old High German quotation and locator. No manuscript object was directly inspected and the representative year does not claim an exact copying date.'),
(515,1345,614,'ninth century, source-reported',870,'Otfried, beloved friends','DWB Freund; O. V.25,54','thie sëlbun drûtâ sînê joh liabê friuntâ mînê.','established','lexical_corpus_record',NULL,NULL,NULL,0,'The historical dictionary supplies the quotation. The underlying object was not directly inspected.'),
(516,1344,614,'circa 1200, source-reported',1200,'Iwein, best friend','DWB Freund; Iwein 2742','den besten vriunt den ich hân','established','lexical_corpus_record',NULL,NULL,NULL,0,'Grimm reports the literary quotation and line. No manuscript object was directly inspected and the year remains approximate.'),
(517,1344,614,'circa 1200, source-reported',1200,'Iwein, Gawain as best friend','DWB Freund; Iwein 4850','sîn best vriunt hër Gâwein','established','lexical_corpus_record',NULL,NULL,NULL,0,'The dictionary supplies the edited line; SET-U did not inspect a medieval witness.'),
(518,1343,614,'1808, source-reported',1808,'Goethe, Faust I, Marthe on social order','DWB Freund; Goethe bibliography link','ich bin von je der ordnung freund gewesen.','established','lexical_corpus_record',NULL,NULL,NULL,0,'Grimm reports the printed-text quotation. The primary edition was not directly inspected, and the token demonstrates a supporter-of sense rather than an original meaning.'),
(519,1352,615,'circa 1100, source-reported',1100,'Old Dutch Willeram, plural friends addressed','EWN vroegnnl.; Willeram','Ezzet, mine friunde, drinket ande werthet drunkan, mine lieueston!','established','lexical_corpus_record',NULL,NULL,NULL,0,'EWN supplies the edited quotation and approximate date. No manuscript object was directly inspected.'),
(520,1352,615,'circa 1100, source-reported',1100,'Old Dutch Willeram, beloved companion and friend','EWN vroegnnl.; Willeram','Sulich is min drut, ande her is ouch min friund','established','lexical_corpus_record',NULL,NULL,NULL,0,'EWN reports the edited text. The record does not claim first use or direct object inspection.'),
(521,1351,615,'1201–1225, source-reported',1213,'Floyris, hearing the words of his friend','EWN mnl.; VMNW citation','Do floyres gehorte. siner uriende worte','established','lexical_corpus_record',NULL,NULL,NULL,0,'EWN supplies the dated edited quotation. The representative midpoint year supports discovery only; no manuscript object was inspected.'),
(522,1351,615,'1201–1250, source-reported',1225,'Van Veen and Van der Sijs early Middle Dutch form inventory','EWN subentry Van Veen and Van der Sijs','vrient, vre(e)nt, vrunt','established','lexical_corpus_record',NULL,NULL,NULL,0,'This is a source-reported historical form inventory, not a directly inspected medieval token or an exact first-use claim.'),
(523,1351,617,'Middle Dutch, source-reported',NULL,'MNW headword and variant record','VRIENT I, opening forms','vrint, vreent, vrent, vrunt','established','lexical_corpus_record',NULL,NULL,NULL,0,'The MNW article was visually inspected as a dictionary page. No underlying manuscript object or quoted locus was directly inspected.'),
(524,1350,619,'current Dutch pronunciation record',2026,'WikiWoordenboek pronunciation entry','Uitspraak; IPA','vriend /vrint/ — 1 lettergreep','established','lexical_corpus_record',NULL,NULL,NULL,0,'The community entry was inspected only for current IPA and syllable count. It does not establish ancestry, historical pronunciation, or first use.');
-- All eleven records remain directly_inspected=0: the dictionary and
-- pronunciation pages were read, but no underlying primary object was
-- visually inspected.
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1147,211,'friend','English','the reviewed West Germanic cognate sharing the loving-agent formation',612),
(1148,211,'vriend','Dutch','the reviewed Dutch continuation from the same inherited formation',612),
(1149,211,'friund','Old Saxon','a West Germanic cognate named by Pfeifer and Grimm',612),
(1150,211,'friōnd','Old Frisian','a West Germanic cognate named by Grimm',614),
(1151,211,'frēond','Old English','the reviewed Old English cognate behind English friend',612),
(1152,211,'frændi','Old Norse','a North Germanic cognate whose recorded semantic center includes relative',612),
(1153,211,'frijōnds','Gothic','the East Germanic cognate preserving transparent participial morphology',612),
(1154,211,'Freundschaft','German','a derivative recorded from Old High German friuntscaf and Middle High German vriuntschaft',612),
(1155,211,'freundlich','German','an adjective continued from Old High German friuntlīh',612),
(1156,211,'frei','German','a collateral historical relative through the Germanic love and free base, not the parent word Freund',612),
(1157,212,'friend','English','the reviewed English cognate sharing the loving-agent formation',615),
(1158,212,'Freund','German','the reviewed High German cognate sharing the inherited formation',615),
(1159,212,'friund','Old Saxon','a West Germanic cognate listed by EWN',615),
(1160,212,'friūnd','Old Frisian','a West Germanic cognate listed by EWN',615),
(1161,212,'frēond','Old English','a West Germanic cognate behind reviewed English friend',615),
(1162,212,'frændi','Old Norse','a North Germanic cognate listed by EWN',615),
(1163,212,'frijōnds','Gothic','the East Germanic cognate named by EWN and the historical Dutch dictionaries',615),
(1164,212,'vrijen','Dutch','the surviving Dutch love or court verb used by EWN to explain the historical base',615),
(1165,212,'vrij','Dutch','a collateral relative through the wider Germanic love and free family, not the parent word vriend',615),
(1166,212,'vrind','Dutch','a reduced historical and regional variant discussed by WNT',616),
(1167,212,'vijand','Dutch','the reviewed hating-one enemy noun with parallel participial grammar but a distinct lexical root',615);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(933,211,1,'Proposed Indo-European comparative horizon','*prī-','The shared friend-family route reaches a proposed comparative root, not one archaeological site, written token, or recoverable institution.',NULL,NULL,'uncertain',-4500,-2500,'range','Conventional comparative bounds for a proposed reconstruction.'),
(934,211,2,'Proto-Germanic lexical horizon','*frī-','The love or favor base is reconstructed from daughter-language evidence; no single homeland point or recorded token is claimed.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval.'),
(935,211,3,'Germanic participial-formation horizon','*frijōnd-','The loving-agent noun predates the daughter-language records, but its exact lexicalization moment remains reconstructed.',NULL,NULL,'uncertain',-500,200,'range','The broad horizon does not imply an exact coinage date.'),
(936,211,4,'Old High German textual record','friunt from the eighth century','Pfeifer dates the form to the eighth century; Grimm supplies source-reported Old High German quotations.',NULL,NULL,'broad',750,1050,'range','Conventional Old High German bounds with individually qualified witness records.'),
(937,211,5,'Middle High German textual record','vriunt','Pfeifer and Grimm document friend, neighbor, lover, and relative senses across the Middle High German record.',NULL,NULL,'broad',1050,1350,'range','Conventional Middle High German bounds, not one standardization event.'),
(938,211,6,'Modern German-language continuum','Freund','DWDS and Duden document current companion, partner, supporter, patron, ally, and address senses. German is pluricentric and is not reduced to one map pin.',NULL,NULL,'global',1350,2026,'range','A broad written and contemporary continuum.'),
(939,211,7,'Knowledge boundary','beyond proposed *prī-','The route stops before love, freedom, kinship, and friendship are merged into one prehistoric story.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No defensible earlier date or coordinate is known.'),
(940,212,1,'Proposed Indo-European comparative horizon','*prī-','The shared friend-family route reaches a proposed comparison, not one archaeological place or directly attested proto-word.',NULL,NULL,'uncertain',-4500,-2500,'range','Conventional comparative bounds for a proposed reconstruction.'),
(941,212,2,'Proto-Germanic lexical horizon','*frī-','The love or favor base is reconstructed from daughter-language evidence and is not pinned to one location.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval.'),
(942,212,3,'Germanic participial-formation horizon','*frijōnd-','The loving-agent formation predates Old Dutch; no exact coinage event survives.',NULL,NULL,'uncertain',-500,200,'range','A reconstruction horizon, not direct attestation.'),
(943,212,4,'Old Dutch textual record','friunt and friunde around 1100','EWN reports two Willeram quotations while SET-U keeps the underlying objects uninspected.',NULL,NULL,'broad',1050,1200,'range','Conservative Old Dutch bounds around the cited record.'),
(944,212,5,'Middle Dutch textual record','vrient and variants','EWN, MNW, and WNT document early-thirteenth-century and later Middle Dutch forms and a wide semantic inventory.',NULL,NULL,'broad',1200,1500,'range','Conventional Middle Dutch bounds.'),
(945,212,6,'Modern Dutch-language continuum','vriend /vrint/','The current one-syllable noun coexists with historical and regional variant evidence. Dutch-language use is distributed and is not reduced to one map pin.',NULL,NULL,'global',1500,2026,'range','A broad New Dutch and current-language continuum.'),
(946,212,7,'Knowledge boundary','beyond proposed *prī-','The route stops before ritual kinship, love, freedom, or friendship is declared the one prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No defensible earlier date or coordinate is known.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(933,611,'Indo-European root prī- cross-reference','supports','Supplies the proposed deep horizon.'),
(934,612,'Pfeifer etymology: relation with frei','supports','Supplies the Germanic love and free base.'),
(935,612,'Pfeifer etymology: Germanic *frijōnd-','supports','Publishes the participial horizon.'),
(936,612,'Pfeifer etymology: Old High German friunt, eighth century','supports','Dates the earliest stated High German stage.'),
(936,614,'Old High German quotations','context','Supplies source-reported textual evidence.'),
(937,612,'Middle High German vriunt and meanings','supports','Publishes the medieval stage and semantic range.'),
(938,612,'Current senses and etymology','supports','Documents the modern continuum.'),
(938,613,'Bedeutungen and grammar','supports','Independently supplies contemporary uses.'),
(939,611,'Deepest displayed prī- comparison','supports','Supports the explicit endpoint.'),
(940,611,'Indo-European root prī- cross-reference','supports','Supplies the proposed deep horizon.'),
(941,615,'EWN etymology: *frijōn-, see vrijen and vrij','supports','Supplies the Germanic lexical horizon.'),
(942,615,'EWN etymology: *frijōnd-','supports','Publishes the participial reconstruction.'),
(943,615,'Old Dutch Willeram records around 1100','supports','Documents the earliest displayed Dutch stage.'),
(944,615,'Early Middle Dutch vrient record','supports','Documents the thirteenth-century stage.'),
(944,617,'VRIENT I forms and meanings','context','Supplies independent Middle Dutch coverage.'),
(945,618,'Grammar record for current vriend','supports','Supplies the current lexical category.'),
(945,619,'Uitspraak: /vrint/, one syllable','context','Supplies current pronunciation.'),
(946,611,'Deepest displayed prī- comparison','supports','Supports the explicit endpoint.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(811,211,'Was Freund historically a loving-agent noun?','Yes at the word-formation level. Pfeifer and Grimm identify a substantivized present participle of the Germanic love verb; Duden paraphrases the original sense as the loving one.','established','Three German dictionary treatments converge on the analysis.','resolved','The dossier states historical morphology, not a mandatory modern definition.'),
(812,211,'Does Freund derive from modern Freude?','No. The reviewed ancestry runs through vriunt and friunt to the Germanic love or favor verb family. Modern Freude is not inserted as its parent.','established','Pfeifer, Duden, and Grimm give the historical stages and participial derivation.','resolved','Collateral family resemblance is not direct derivation.'),
(813,211,'Are Freund and Feind the same root with opposite meanings?','No. Grimm explicitly contrasts the love verb behind Freund with the different hate verb behind Feind. Parallel agent morphology and antonymy do not establish cognacy.','established','The DWB discussion distinguishes the lexical bases.','resolved','A context link connects the grammatical mirror without an ancestry edge.'),
(814,211,'Did Freund always mean only a close non-relative companion?','No. Pfeifer and Grimm document neighbor, lover, blood relative, ally, supporter, patron, and address uses.','established','The historical sense inventories are explicit.','resolved','The dossier preserves semantic plurality.'),
(815,211,'Can Freund historically refer to a woman?','Yes. Grimm records older and contextual uses of the masculine noun for female referents. Grammatical gender and referent sex are not identical.','established','The historical dictionary explicitly discusses feminine reference.','resolved','Modern stylistic expectations are not projected backward.'),
(816,211,'Is *frijōnd- an attested Proto-Germanic spelling?','No. It is a normalized comparative reconstruction behind the daughter-language cognates.','established','The sources publish a reconstructed formation and written daughter forms.','resolved','The asterisk remains visible.'),
(817,211,'Can the exact Proto-Germanic pronunciation and paradigm be recovered?','Not completely. Comparative forms support the morphology, but no recording or written Proto-Germanic paradigm survives.','probable','The evidence is reconstructive.','open',NULL),
(818,211,'Can the exact lexicalization date of the loving participle be known?','No. The formation predates the daughter-language records and is already nominal in the earliest High German evidence.','probable','Relative chronology does not supply a coinage year.','open',NULL),
(819,211,'Does Freund securely descend from exactly *prī-?','The comparison is published on the shared friend-family route but remains proposed and less secure than the Germanic formation.','proposed','No Proto-Indo-European token survives.','open',NULL),
(820,211,'Was the relative sense inherited or independently strengthened in Germanic branches?','The sources establish the sense across German and Nordic evidence but do not recover one complete prehistoric semantic tree.','probable','Later daughter-language distributions do not uniquely date the kinship branch.','open',NULL),
(821,211,'Does modern Freund literally mean someone currently loving?','No. The participial source is diachronic morphology; contemporary dictionaries give lexical friend, partner, supporter, and ally senses.','established','Modern sense inventories are separate from the etymological analysis.','resolved','The leaderboard avoids the etymological fallacy.'),
(822,211,'Is one older ancestor securely known beyond proposed *prī-?','No reviewed earlier node clears the evidence boundary.','established','The accessible cited trail ends at the proposed comparison.','resolved','The route ends at UNKNOWN.'),
(823,212,'Was vriend historically a loving-agent noun?','Yes at the word-formation level. EWN, WNT, and MNW independently analyze the noun as an old present participle of the Germanic love verb.','established','Three Dutch lexicographic traditions converge.','resolved','Historical morphology does not impose a compositional modern definition.'),
(824,212,'Are vriend and vijand cognates?','No. EWN compares their parallel participial formation, but the reviewed vijand dossier follows a different hate verb base.','established','The grammatical analogy is explicit and the canonical roots remain separate.','resolved','A context link records the mirror without merging families.'),
(825,212,'Was vriend always pronounced as its spelling might suggest?','No single unchanged pronunciation is established. WNT discusses reduced vrind and vrund variants, while the current reference gives one-syllable /vrint/.','established','Historical form inventories and the current pronunciation record are distinct evidence layers.','resolved','Spelling continuity is not phonetic stasis.'),
(826,212,'Is current /vrint/ evidence for Old Dutch pronunciation?','No. It is a present-day pronunciation record only. Historical sound values are reconstructed from written and comparative evidence.','established','WikiWoordenboek supplies only the current IPA.','resolved','No current audio is projected backward.'),
(827,212,'Did vriend always mean only a non-relative companion?','No. WNT and MNW document relation, lover, ally, patron, address, mediator, and supporter senses.','established','The numbered historical senses are explicit.','resolved','The modern core does not erase older branches.'),
(828,212,'Did ritual blood relationship create the kin sense?','De Vries proposes a ritual social explanation, but the accessible evidence does not establish it as the unique historical path.','speculative','Etymologiebank reports the hypothesis as an etymological proposal.','open',NULL),
(829,212,'Can the relative sense be proved older than the friend sense?','No. The early records and comparative languages show both social fields, but the reviewed sources do not recover a single semantic priority event.','probable','Polysemy and uneven textual survival block a clean sequence.','open',NULL),
(830,212,'Is modern vriend merely an etymologizing spelling of vrind?','WNT raises the historical spelling issue, but the route preserves both written and spoken evidence rather than reducing the standard word to one editorial intervention.','probable','The historical dictionary discusses reduction and spelling, not one universally dated respelling event.','open',NULL),
(831,212,'Can the exact Proto-Germanic pronunciation and paradigm be recovered?','Not completely. The participial reconstruction is well supported, but no recorded Proto-Germanic token or full paradigm survives.','probable','Comparative reconstruction has real but bounded force.','open',NULL),
(832,212,'Does vriend securely descend from exactly *prī-?','The shared deep comparison is published but remains proposed and less secure than Old Dutch and Germanic *frijōnd-.','proposed','The proto-root is not directly attested.','open',NULL),
(833,212,'Does modern vriend literally mean someone currently loving?','No. Historical morphology and current lexical meaning are different layers.','established','ANW gives the current noun category while the historical dictionaries give etymology.','resolved','The graph prevents an etymological-fallacy slogan.'),
(834,212,'Is one older ancestor securely known beyond proposed *prī-?','No reviewed earlier node clears the evidence boundary.','established','The cited route stops after the proposed comparison.','resolved','The route ends at UNKNOWN.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(811,612,'Pfeifer etymology: substantivized present participle','supports','Identifies the loving-agent formation.'),(811,613,'Herkunft: ursprünglich der Liebende','supports','Independently paraphrases the historical agent sense.'),(811,614,'Opening etymology: participle of frijôn','supports','Adds Grimm lexical evidence.'),
(812,612,'High German route and connection with frei','supports','Gives vriunt and friunt rather than Freude as parent stages.'),(812,613,'Herkunft','supports','Confirms the inherited route.'),
(813,614,'Opening etymology: contrast with feind and fijan','supports','Separates the love and hate bases.'),(813,515,'Pfeifer Feind: comparison with Freund','context','Confirms the morphological analogy from the enemy side.'),
(814,612,'Pfeifer historical meanings','supports','Documents friend, neighbor, lover, and relative.'),(814,614,'Numbered meanings','supports','Supplies the wider historical inventory.'),
(815,614,'Grammatical and semantic discussion','supports','Documents use with female referents.'),
(816,612,'Germanic *frijōnd- comparison','supports','Supplies reconstruction rather than attestation.'),
(817,612,'Cross-Germanic form inventory','supports','Supports comparative recovery but no exact audio or full paradigm.'),
(818,612,'Old High German eighth-century record after reconstructed formation','supports','Supplies relative chronology only.'),
(819,611,'Indo-European prī- cross-reference','supports','Publishes the proposed deep comparison.'),
(820,612,'German blood-relative and Nordic relative senses','supports','Documents the distribution without proving one lexicalization sequence.'),
(821,612,'Modern senses versus etymology','supports','Separates current meaning from historical formation.'),(821,613,'Bedeutungen and Herkunft','supports','Independently separates the layers.'),
(822,611,'Deepest displayed prī- comparison','supports','Supports the explicit boundary.'),
(823,615,'EWN: old present participle of *frijōn-','supports','Identifies the loving-agent formation.'),(823,616,'Opening etymology: present participle of Germanic *frijon','supports','Independent historical-dictionary support.'),(823,617,'Opening etymology: participle of Germanic vriën','supports','Adds Middle Dutch lexicographic support.'),
(824,615,'EWN etymology: compare vijand','supports','Publishes the parallel formation.'),(824,531,'EWN vijand: comparison with vriend','context','Confirms the analogy from the enemy side.'),
(825,616,'Headword forms: vrind and vrund; spelling note','supports','Documents reduction and variant spelling.'),(825,619,'Uitspraak: /vrint/, one syllable','supports','Supplies current pronunciation.'),
(826,619,'Current pronunciation entry','supports','Provides no historical audio claim.'),
(827,616,'Numbered meanings 1–8','supports','Documents the historical range.'),(827,617,'Meanings 1–5','context','Adds Middle Dutch semantic evidence.'),
(828,615,'De Vries 1971 subentry: ritual blood-relative proposal','supports','Reports the hypothesis without establishing it.'),
(829,615,'EWN cognates and historical meanings','supports','Documents multiple branches but no unique priority event.'),(829,616,'Friend and kin senses','context','Shows overlapping historical fields.'),
(830,616,'Opening form-history note on vrind and vriend spelling','supports','Raises the reduction and spelling question.'),
(831,615,'Proto-Germanic reconstruction and daughter forms','supports','Provides comparative evidence but not exact historical audio.'),
(832,611,'Indo-European prī- cross-reference','supports','Publishes the proposed deep comparison.'),(832,615,'Pokorny-linked comparisons','context','Shows wider comparison without direct attestation.'),
(833,618,'Current grammar record','supports','Supplies synchronic category.'),(833,615,'Historical participial analysis','context','Supplies the diachronic layer.'),
(834,611,'Deepest displayed prī- comparison','supports','Supports the explicit boundary.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(211,211,2103,'Freund','Freund fossilizes the loving one—but it does not come from Freude.','Pfeifer, Duden, and Grimm route Freund through Middle High German vriunt and Old High German friunt to a substantivized Germanic present participle of the love verb. Grimm also makes the structural contrast explicit: Feind is built on a different hate verb. The unveiling is grammatical rather than mystical—Freund and Feind look like a moral pair because both preserve agent-noun architecture, not because one ancient root split into love and hate.','A',100,'The High German lineage, historical sense range, participial morphology, and distinct Feind base are multiply sourced. Exact Proto-Germanic phonetics, lexicalization date, kin-sense sequence, and the PIE comparison remain qualified.'),
(212,212,2104,'vriend','vriend and vijand are loving-one and hating-one mirror fossils—not cognates.','EWN, WNT, and MNW independently analyze vriend as an old present participle of the Germanic verb to love. EWN explicitly compares the formation of vijand, whose reviewed ancestry follows a different hate verb. Modern /vrint/ also makes visible how far living pronunciation can move from historical spelling. The real truth is a shared grammatical blueprint with distinct roots, not a manufactured story of one word dividing into friend and enemy.','A',100,'The Old and Middle Dutch record, participial analysis, current pronunciation, broad semantic history, and distinct vijand ancestry are cited. Ritual-kinship proposals, exact prehistoric sound, and the deepest comparison remain open or proposed.');
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
(211,612,'Pfeifer etymology and historical meanings','supports','Publishes the High German route, participial formation, and semantic range.'),
(211,613,'Herkunft: ursprünglich der Liebende','supports','Independently states the loving-agent analysis.'),
(211,614,'Opening etymology and contrast with feind','supports','Supplies the grammatical mirror and distinct verb bases.'),
(211,515,'Feind etymology: comparison with Freund','context','Confirms the parallel from the hate-family dossier.'),
(212,615,'EWN etymology and dated forms','supports','Publishes the Dutch route, *frijōnd-, love verb, and vijand comparison.'),
(212,616,'Opening etymology, form history, and senses','supports','Independently supplies the participial analysis and historical range.'),
(212,617,'Opening etymology and meanings','supports','Adds Middle Dutch forms and analysis.'),
(212,619,'Uitspraak: /vrint/, one syllable','context','Documents current sound without projecting it backward.'),
(212,531,'EWN vijand etymology','context','Confirms the distinct hating-agent side of the mirror.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(17,211,189,'parallel_agent_nouns_distinct_roots','FREUND AND FEIND: LOVING-ONE AND HATING-ONE GRAMMAR, NOT ONE ROOT','Grimm explicitly analyzes Freund from the Germanic love verb and contrasts Feind from the different hate verb. Both nouns preserve agent formation and later lexicalization. The bridge records morphology and antonymy without drawing a genealogical edge.','Jacob Grimm · Wilhelm Grimm · Wolfgang Pfeifer · SET-U editorial review','established','reviewed'),
(18,212,193,'parallel_agent_nouns_distinct_roots','VRIEND AND VIJAND: MIRROR PARTICIPLES, DISTINCT ROOTS','EWN compares the formations: vriend continues an old loving participle while vijand continues a hating participle that lexicalized as enemy. The bridge preserves the genuine grammatical symmetry and the equally important non-cognacy.','EWN editors · SET-U editorial review','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(17,614,'Opening etymology: Freund from frijôn contrasted with Feind from fijan','supports','Explicitly separates the love and hate bases while comparing formation.'),
(17,515,'Pfeifer Feind etymology: comparison with Freund','context','Confirms the parallel from the reviewed enemy dossier.'),
(18,615,'EWN etymology: old participle of *frijōn-; compare vijand','supports','Publishes the loving-agent side and the formal comparison.'),
(18,531,'EWN vijand: present participle of the lost hate verb; comparison with vriend','supports','Publishes the hating-agent side and distinct base.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(167,211,189,'FREUND / FEIND: THE GERMAN MORAL PAIR IS A GRAMMATICAL MIRROR','Travel sideways from the loving-agent fossil to the hating-agent enemy. Their agent-noun structure and antonymy are historical; their verb bases are different. The rabbit hole reveals morphology without inventing a shared moral root.',100,'A','reviewed'),
(168,212,193,'VRIEND / VIJAND: ONE SYLLABLE HIDES HALF OF A PARTICIPIAL MIRROR','Move from modern /vrint/ into the old loving participle, then sideways to vijand, the lexicalized hating participant. The similarity is real enough to teach historical grammar and bounded enough to forbid a false ancestry edge.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1343 AND 1356
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.status='boundary' THEN 'boundary' WHEN f.id BETWEEN 1343 AND 1345 OR f.id BETWEEN 1350 AND 1352 THEN 'established' WHEN f.normalized_form IN ('frijond','fri') THEN 'probable' ELSE 'proposed' END,
  CASE WHEN f.status='boundary' THEN 'Dossier-specific endpoint beyond the proposed *prī- comparison.' WHEN f.status='attested' THEN 'Attested daughter-language stage supported by historical dictionary records.' ELSE 'Canonicalized reconstructed form; comparative uncertainty remains on the cited edges.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1343 AND 1356;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1133 AND 1144;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_form_link ON parent_form_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_form_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1133 AND 1144;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1133 AND 1144;
