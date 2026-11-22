-- Make the project name itself auditable. Five dossiers expose the attested
-- Greek true-word family, the proposed Armenian comparison, and the French
-- and English technical descendants without turning *set-u- into a certainty.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(76,'armenian','Armenian','Indo-European','Armenian',0,405,NULL,'The dossier uses classical ստոյգ as its display form while preserving the modern spelling distinction in notes and disputes.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(105,'etymos','ἔτυμος','etymos','/é.ty.mos/','adjective · later substantivized neuter','An Ancient Greek adjective meaning true, real, or actual; its neuter later supplied a technical noun for a word’s true sense according to its origin.','ἔτυμος did not itself mean the modern science of etymology. The path from “true” to a technical account of word history is a later semantic and compound history.','reviewed'),
(106,'eteos','ἐτεός','eteos','/e.te.ós/','adjective · adverb','A Homeric Greek true-word related to ἔτυμος and ἐτήτυμος, with a proposed prehistory in *set-eu-o- and *set-u-.','The asterisked form behind ἐτεός is an analysis, not an inscription. Even the proposed loss of initial *s and its possible contact history remain open scholarship.','reviewed'),
(107,'stoyg','ստոյգ','stoyg','/stojɡ/','adjective · adverb','The classical Armenian word for true, certain, real, or genuine, compared by Indo-European etymologists with the Greek true-word family.','Armenian ստոյգ is powerful comparative evidence for the *set-u- proposal, but a comparison is not the same thing as a directly attested common ancestor.','reviewed'),
(108,'etymon','etymon','etymon','/ˈe-tə-ˌmän/','noun','A technical English noun for an earlier source form, a foreign donor, or a base used in composition or derivation.','An etymon is not necessarily the deepest root. It can be any earlier form, loan source, word, or morpheme from which the form under study is historically derived.','reviewed'),
(109,'etymologie-french','étymologie','etymologie','/e.ti.mɔ.lɔ.ʒi/','noun','The French word for the study or historical explanation of word origins, attested in medieval forms long before its modern scientific scope stabilized.','French had forms of étymologie centuries before the word named the modern historical-linguistic discipline. The earliest records do not all carry today’s technical sense.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(248,'scaife-lsj-etymos','ἔτυμος — A Greek-English Lexicon','Henry George Liddell · Robert Scott · Henry Stuart Jones',1940,'Scaife ATLAS · Perseus Digital Library','https://atlas.perseus.tufts.edu/dictionaries/entry/urn:cite2:scaife-viewer:dictionaries.v1:lsj-n43304/',NULL,'historical_dictionary'),
(249,'scaife-cunliffe-eteos','ἐτεός — A Lexicon of the Homeric Dialect','Richard John Cunliffe',1924,'Scaife ATLAS · Perseus Digital Library','https://atlas.perseus.tufts.edu/nodes/urn:cts:greekLit:tlg0012.tlg002.perseus-grc2:3.122/',NULL,'historical_dictionary'),
(250,'mw-etymon','Etymon — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/etymon',NULL,'historical_dictionary'),
(251,'academie-etymologie','Étymologie — Dictionnaire de l’Académie française, 9e édition','Académie française Editors',2024,'Académie française','https://www.dictionnaire-academie.fr/article/A9E3024',NULL,'institutional_lexicon'),
(252,'calfa-stoyg','Ստոյգ, ուգաց — Enriched Dictionaries of Armenian','Calfa Armenian Lexicography Project Editors',2026,'Calfa.fr','https://calfa.fr/entries/%D5%8D%D5%BF%D5%B8%D5%B5%D5%A3%2C%D5%B8%D6%82%D5%A3%D5%A1%D6%81',NULL,'lexical_database'),
(253,'martirosyan-2010','Etymological Dictionary of the Armenian Inherited Lexicon','Hrach K. Martirosyan',2010,'Brill','https://books.google.com/books/about/Etymological_Dictionary_of_Armenian.html?id=340lAQAAMAAJ',NULL,'scholarly_dictionary'),
(254,'galis-2017-mycenae','Mycenae, Troy and Anatolia: Mycenaean Names in Hittite Documents, and Anatolian Names in the Homeric Iliad','Martin Gális',2017,'Charles University, Faculty of Arts','https://dspace.cuni.cz/handle/20.500.11956/92943?locale-attribute=en',NULL,'academic_thesis');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(615,105,10,1,'ἔτυμος','etymos','true-adjective','étymos','/é.ty.mos/','attested','Archaic and later Ancient Greek',-800,600,'true, real, actual; in the neuter, the true sense of a word','LSJ separates the adjective from the later substantivized neuter technical sense.'),
(616,105,6,2,'*setu-mo-','setu-mo','true-adjective','*setu-mo-',NULL,'reconstructed','Proto-Indo-European formation, proposed',-4500,-2500,'true, real','Beekes and the reviewed synthesis analyze ἔτυμος as a *-mo- formation; the morphology is proposed.'),
(617,105,6,3,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared canonical node with the etymology dossier; the reconstruction remains disputed.'),
(618,105,7,4,'UNKNOWN','unknown','etymos-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No single older ancestor is promoted.','The path stops where published analyses diverge.'),

(619,106,10,1,'ἐτεός','eteos','true-adjective','eteós','/e.te.ós/','attested','Homeric and later Ancient Greek',-800,600,'in accordance with truth; true; really','Cunliffe documents Homeric adjective and adverbial uses and cross-references ἔτυμος and ἐτήτυμος.'),
(620,106,6,2,'*set-eu-o-','set-eu-o','true-adjective','*set-eu-o-',NULL,'reconstructed','Proto-Indo-European adjectival formation, proposed',-4500,-2500,'having or containing true order; real','Gális summarizes this possessive-adjective analysis and its proposed Greek phonological development.'),
(621,106,6,3,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared canonical proposed horizon.'),
(622,106,7,4,'UNKNOWN','unknown','eteos-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No single older ancestor is promoted.','The loss of initial *s and wider root analysis remain evidence boundaries.'),

(623,107,76,1,'ստոյգ','stoyg','true-adjective','stoyg','/stojɡ/','attested','Classical Armenian record–later Armenian',405,NULL,'true, just, certain, sure, real, authentic','Classical orthography is displayed because it is the form compared in the etymological literature; modern Armenian spelling is ստույգ.'),
(624,107,6,2,'*stéu-gho-','steu-gho','true-adjective','*stéu-gho-',NULL,'reconstructed','Proto-Indo-European Armenian preform, proposed',-4500,-2500,'real; certain','A proposed preform reported in the reviewed comparative discussion, not an attested Armenian word.'),
(625,107,6,3,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European comparative horizon, proposed',-4500,-2500,'true; real; in true order','The Greek-Armenian comparison supports this horizon only at proposed confidence.'),
(626,107,7,4,'UNKNOWN','unknown','stoyg-deep-boundary',NULL,NULL,'boundary','beyond the proposed Greek-Armenian comparison',NULL,NULL,'No securely reconstructed unique ancestor is promoted.','The trail ends in competing morphological analyses.'),

(627,108,1,1,'etymon','etymon','technical-source-form','etymon','/ˈe-tə-ˌmän/','attested','1573–today',1573,NULL,'an earlier source form, foreign donor, or derivational base','Merriam-Webster records both etyma and etymons as plurals.'),
(628,108,9,2,'etymon','etymon','technical-source-form','etymon',NULL,'attested','Latin scholarly use',-100,1400,'the literal or original meaning of a word','Latin borrowed the Greek substantivized neuter.'),
(629,108,10,3,'ἔτυμον','etymon','technical-source-form','étymon',NULL,'attested','Later Ancient Greek',-300,600,'the true sense of a word according to its origin','LSJ documents the substantivized neuter and its technical sense in later authors.'),
(630,108,10,4,'ἔτυμος','etymos','true-adjective','étymos','/é.ty.mos/','attested','Archaic and later Ancient Greek',-800,600,'true, real, actual','Shared canonical adjective node.'),
(631,108,6,5,'*setu-mo-','setu-mo','true-adjective','*setu-mo-',NULL,'reconstructed','Proto-Indo-European formation, proposed',-4500,-2500,'true, real','Shared proposed adjectival formation.'),
(632,108,6,6,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared proposed horizon.'),
(633,108,7,7,'UNKNOWN','unknown','etymon-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No single older ancestor is promoted.','The technical noun is secure; the deepest reconstruction remains open.'),

(634,109,11,1,'étymologie','etymologie','word-history-discipline','étymologie','/e.ti.mɔ.lɔ.ʒi/','attested','Modern French record–today',1400,NULL,'study or explanation of the origin and historical development of words','CNRTL distinguishes several historical senses and dates the modern science sense much later than the earliest spellings.'),
(635,109,8,2,'ethimologie','ethimologie','word-history-discipline','ethimologie',NULL,'attested','Old French records from c. 1175',1175,1400,'title reference, word explanation, or learned wordplay depending on the witness','The earliest French records do not all instantiate the modern linguistic sense.'),
(636,109,9,3,'etymologia','etymologia','word-history-discipline','etymologia',NULL,'attested','Classical Latin–medieval learned Latin',-100,1400,'etymology; explanation by origin','CNRTL reports Latin transmission and attestation in Varro.'),
(637,109,10,4,'ἐτυμολογία','etymologia','word-history-discipline','etymología',NULL,'attested','Hellenistic and later Greek',-300,600,'inquiry into a word’s true sense','Shared canonical Greek technical noun.'),
(638,109,10,5,'ἔτυμος','etymos','true-adjective','étymos','/é.ty.mos/','attested','Archaic and later Ancient Greek',-800,600,'true, real, actual','The first member of the Greek compound.'),
(639,109,6,6,'*setu-mo-','setu-mo','true-adjective','*setu-mo-',NULL,'reconstructed','Proto-Indo-European formation, proposed',-4500,-2500,'true, real','Shared proposed adjectival formation.'),
(640,109,6,7,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared proposed horizon.'),
(641,109,7,8,'UNKNOWN','unknown','french-etymologie-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No single older ancestor is promoted.','The French lineage is attested; the deepest comparative morphology remains open.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(511,105,615,616,'inheritance','The Greek form is analyzed from *setu-mo- with loss of initial *s and Greek development of the reconstructed formation.','A reconstructed adjective of truth or reality continues as Greek “true, real, actual.”','Robert Beekes · Martin Gális','proposed','The *setu-mo- morphology is published but not directly attested or universally settled.',NULL,'reviewed'),
(512,105,616,617,'derivation','The proposed *-mo- adjective is built on the reconstructed *set-u- base.','The true-order base becomes an adjective meaning true or real.','Robert Beekes · Charles de Lamberterie','proposed','Both the base and derivational segmentation are reconstructed.',NULL,'reviewed'),
(513,105,617,618,'knowledge_boundary','No older form commands secure consensus beyond the *set-u- proposal.','The Greek true-word family reaches its present comparative evidence horizon.','SET-U editorial boundary','boundary','The boundary does not deny alternative proposals; it refuses to select one as fact.',NULL,'reviewed'),

(514,106,619,620,'inheritance','The proposed path from *set-eu-o- to Greek ἐτεός includes loss of the inherited initial sibilant; Gális discusses psilosis and only tentatively raises contact as an explanation.','A possessive true-order adjective yields the attested senses true and really.','Martin Gális · Robert Beekes','proposed','The preform and phonological account are scholarly reconstructions, not written stages.',NULL,'reviewed'),
(515,106,620,621,'derivation','The proposed possessive adjective *set-eu-o- is analyzed from a *set-u- or *steu- base.','The base notion of true order becomes “having true order; real.”','Martin Gális · Robert Beekes','proposed','The exact ablaut and suffixal analysis remain debated.',NULL,'reviewed'),
(516,106,621,622,'knowledge_boundary','No older form is promoted beyond the disputed *set-u- horizon.','The ἐτεός line ends where competing analyses begin.','SET-U editorial boundary','boundary','The boundary preserves the uncertainty exposed by the etymological sources.',NULL,'reviewed'),

(517,107,623,624,'inheritance','Classical Armenian ստոյգ is compared with a reconstructed *stéu-gho- preform; the consonant sequence and vocalism are comparative, not attested.','The reconstructed real or certain sense continues in the Armenian adjective and adverb.','Hrach Martirosyan · Robert Beekes','proposed','The lexical identity is secure, while this exact preform belongs to a proposed Indo-European analysis.',NULL,'reviewed'),
(518,107,624,625,'comparative_derivation','The proposed Armenian preform is connected through extension and reorganization of the *set-u- or *steu- base; no single intermediate is written.','The comparative field remains truth, certainty, and reality.','Hrach Martirosyan · Robert Beekes · Martin Gális','proposed','This edge encodes a published comparison, not proof of one uncontested parent form.',NULL,'reviewed'),
(519,107,625,626,'knowledge_boundary','No unique older ancestor is selected beyond the Greek-Armenian *set-u- comparison.','The comparative trail ends in competing morphological analyses.','SET-U editorial boundary','boundary','A cognate proposal is not converted into a certain proto-word.',NULL,'reviewed'),

(520,108,627,628,'borrowing','English borrowed Latin etymon with learned spelling and English pronunciation.','The source-word sense was retained and generalized across same-language, foreign-language, and derivational sources.','Merriam-Webster Editors','established',NULL,'Merriam-Webster reports English use from 1573.','reviewed'),
(521,108,628,629,'borrowing','Latin etymon borrowed the Greek neuter noun with direct learned adaptation.','The true or original sense of a word remained the technical referent.','Merriam-Webster Editors · Greek lexicography','established',NULL,NULL,'reviewed'),
(522,108,629,630,'substantivization','The neuter form ἔτυμον of the adjective ἔτυμος was used substantivally.','“The true” becomes the true sense of a word according to its origin.','Liddell · Scott · Jones','established',NULL,'LSJ marks the technical noun in later writers rather than Attic prose.','reviewed'),
(523,108,630,631,'inheritance','The Greek form is analyzed from *setu-mo- with loss of initial *s and Greek development of the reconstructed formation.','A reconstructed adjective of truth or reality continues as Greek “true, real, actual.”','Robert Beekes · Martin Gális','proposed','The *setu-mo- morphology is published but not directly attested or universally settled.',NULL,'reviewed'),
(524,108,631,632,'derivation','The proposed *-mo- adjective is built on the reconstructed *set-u- base.','The true-order base becomes an adjective meaning true or real.','Robert Beekes · Charles de Lamberterie','proposed','Both the base and derivational segmentation are reconstructed.',NULL,'reviewed'),
(525,108,632,633,'knowledge_boundary','No older form commands secure consensus beyond the *set-u- proposal.','The technical noun’s deep line reaches the same open comparative horizon.','SET-U editorial boundary','boundary','The secure Greco-Latin-English route does not make the prehistoric morphology certain.',NULL,'reviewed'),

(526,109,634,635,'historical_continuation','French spelling regularized medieval variants such as ethimologie toward étymologie.','A learned word used for titles, word explanations, and wordplay developed the modern linguistic senses.','CNRTL Editors · Académie française Editors','established',NULL,'CNRTL separates the earliest records from the later technical senses.','reviewed'),
(527,109,635,636,'borrowing','Old French transmitted the learned Latin form.','Scholarly explanation of a word’s origin continued.','French historical lexicography','established',NULL,NULL,'reviewed'),
(528,109,636,637,'borrowing','Latin borrowed Greek ἐτυμολογία.','A Greek technical concept entered Latin grammatical tradition.','Latin and Greek lexicography','established',NULL,NULL,'reviewed'),
(529,109,637,638,'derivation','The compound joins ἔτυμος “true, real” and -λογία “account, study.”','A word’s “true sense” becomes an object of analysis.','Ancient Greek lexicography','established',NULL,NULL,'reviewed'),
(530,109,638,639,'inheritance','The Greek form is analyzed from *setu-mo- with loss of initial *s and Greek development of the reconstructed formation.','A reconstructed adjective of truth or reality continues as Greek “true, real, actual.”','Robert Beekes · Martin Gális','proposed','The *setu-mo- morphology is published but not directly attested or universally settled.',NULL,'reviewed'),
(531,109,639,640,'derivation','The proposed *-mo- adjective is built on the reconstructed *set-u- base.','The true-order base becomes an adjective meaning true or real.','Robert Beekes · Charles de Lamberterie','proposed','Both the base and derivational segmentation are reconstructed.',NULL,'reviewed'),
(532,109,640,641,'knowledge_boundary','No older form commands secure consensus beyond the *set-u- proposal.','The French word’s deep line reaches the same open comparative horizon.','SET-U editorial boundary','boundary','The attested French transmission and disputed proto-analysis remain separate evidence classes.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(511,12,'s.v. ἔτυμος and ἐτεός, pp. 473–475','supports','Publishes the *setu-mo- analysis while marking the wider etymology uncertain.'),
(511,254,'Eteocles discussion: ἔτυμος < *setu-mo-','context','Independently summarizes the proposed adjectival formation.'),
(512,12,'s.v. ἔτυμος and ἐτεός, derivational discussion','supports','Supplies the proposed *-mo- segmentation.'),
(512,11,'Modern etymology section','context','Places ἔτυμος in the proposed *set-u- family.'),
(513,11,'Modern etymology and bibliography','supports','Exposes competing analyses and defines the stopping point.'),
(514,254,'Eteocles etymology: *set-eu-o- and proposed psilosis','supports','Supplies the preform and carefully qualified phonological account.'),
(514,11,'Modern etymology section for ἐτεός','context','Independently places ἐτεός in the proposed *set-u- family.'),
(515,254,'Eteocles etymology: *set-eu-o- from *sét-u- or *steu-','supports','Documents the proposed base and derivation.'),
(515,12,'s.v. ἐτεός','context','Publishes the u-stem analysis while keeping deeper analysis uncertain.'),
(516,11,'Modern etymology and bibliography','supports','Defines the reviewed horizon rather than a certain older root.'),
(517,253,'s.v. stoyg','supports','Publishes the inherited Armenian analysis and comparative prehistory.'),
(517,252,'Headword senses and etymologies','context','Documents the attested Armenian lexical identity and historical dictionary tradition.'),
(518,254,'Eteocles etymology: Armenian stoyg < *stéu-gho-','supports','Summarizes the proposed connection to the Greek true-word family.'),
(518,11,'Modern etymology: comparison with Armenian stoyg','context','Records the comparison without elevating it to certainty.'),
(519,253,'s.v. stoyg, competing etymological discussion','supports','The alternative analyses define the deep boundary.'),
(520,250,'Word History; First Known Use; definitions 1–2','supports','Documents Latin origin, English chronology, and the modern range of technical senses.'),
(521,250,'Etymology: Latin from Greek','supports','Supplies the learned borrowing chain.'),
(521,248,'Substantive ἔτυμον, sense II','context','Documents the Greek technical noun behind the Latin form.'),
(522,248,'Sense II: ἔτυμον as substantive','supports','Explicitly defines the true sense of a word according to its origin.'),
(523,12,'s.v. ἔτυμος and ἐτεός, pp. 473–475','supports','Publishes the *setu-mo- analysis.'),
(523,254,'Eteocles discussion: ἔτυμος < *setu-mo-','context','Independently summarizes the proposed formation.'),
(524,12,'s.v. ἔτυμος, derivational discussion','supports','Supplies the proposed *-mo- segmentation.'),
(525,11,'Modern etymology and bibliography','supports','Defines the disputed horizon.'),
(526,8,'History sections 0, A, and B','supports','Separates early spellings and special uses from the modern scientific sense.'),
(526,251,'Headword definition and usage examples','context','Documents the current French endpoint.'),
(527,8,'Origin: Latin etymologia','supports','Documents the French borrowing from Latin.'),
(528,8,'Origin: Latin from Greek ἐτυμολογία','supports','Documents the Greek-to-Latin route.'),
(528,10,'Headword ἐτυμολογία','context','Supplies Greek lexical evidence.'),
(529,10,'Headword and compound analysis','supports','Documents the Greek technical noun and its true-sense analysis.'),
(530,12,'s.v. ἔτυμος and ἐτεός, pp. 473–475','supports','Publishes the *setu-mo- analysis.'),
(530,254,'Eteocles discussion: ἔτυμος < *setu-mo-','context','Independently summarizes the proposed formation.'),
(531,12,'s.v. ἔτυμος, derivational discussion','supports','Supplies the proposed *-mo- segmentation.'),
(532,11,'Modern etymology and bibliography','supports','Defines the disputed horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(140,615,248,'Homeric epic',NULL,'LSJ lexical-corpus report for ἔτυμος','Iliad 10.534; Odyssey 19.203','ψεύδεα πολλὰ λέγων ἐτύμοισιν ὁμοῖα','established','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported corpus references; the underlying manuscript objects were not directly inspected.'),
(141,619,249,'Homeric epic',NULL,'Cunliffe lexical-corpus report for ἐτεός','Iliad 14.125; Iliad 20.255','εἰ ἐτεόν περ','established','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported Homeric citations; this record does not claim a directly inspected manuscript or a precise composition year.'),
(142,623,252,'Classical Armenian lexical tradition',NULL,'Calfa aggregation of historical Armenian dictionary witnesses','Headword Ստոյգ, ուգաց; adjective and adverb sections',NULL,'established','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported dictionary and textual citations; no single underlying Armenian manuscript object was directly inspected.'),
(143,627,250,'1573',1573,'Merriam-Webster lexicographic first-use report for etymon','First Known Use, sense 1a',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported year; no underlying 1573 printed object was directly inspected.'),
(144,635,8,'c. 1175',1175,'CNRTL historical first-attestation report for French ethimologie','History: Benoît de Sainte-Maure, Chronique des ducs de Normandie, verse 904','Si trois en l’ethimologie','established','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported medieval text and locator; the underlying manuscript or edition page was not directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(317,105,'ἐτεός','Ancient Greek','attested member of the same true-word family',249),
(318,105,'ἐτήτυμος','Ancient Greek','expressive or reduplicated true-word formation',248),
(319,105,'ստոյգ','Armenian','proposed cognate meaning true or real',11),
(320,105,'etymology','English','remote learned descendant through Greek compounding, Latin, and French',7),
(321,106,'ἔτυμος','Ancient Greek','attested member of the same true-word family',248),
(322,106,'ἐτήτυμος','Ancient Greek','related Homeric true-word formation',249),
(323,106,'Ἐτεοκλῆς','Ancient Greek personal name','compound containing ἐτεο- under the reviewed analysis',254),
(324,106,'ստոյգ','Armenian','proposed comparative cognate',11),
(325,107,'ἔτυμος','Ancient Greek','proposed cognate in the true-word family',11),
(326,107,'ἐτεός','Ancient Greek','proposed cognate in the true-word family',11),
(327,107,'ստուգաբան','Old Armenian','derivative compound built on ստոյգ plus բան',252),
(328,107,'ստույգ','Modern Armenian','modern orthographic continuation',252),
(329,108,'etymology','English','learned family descendant with a distinct technical meaning',250),
(330,108,'etyma','English','learned plural of etymon',250),
(331,108,'etymons','English','alternative English plural',250),
(332,108,'étymon','French','French technical counterpart',8),
(333,109,'etymology','English','English descendant through French transmission',7),
(334,109,'etymon','English','parallel technical noun ultimately from Greek ἔτυμον',250),
(335,109,'étymon','French','French technical noun for a source form',8),
(336,109,'étymologique','French','French adjective in the same learned family',251);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(388,105,1,'Indo-European comparative horizon','prehistoric, exact location unresolved','*set-u- and *setu-mo- are scholarly reconstructions, not mapped written forms.',NULL,NULL,'broad',NULL,NULL,'unresolved','The sources do not license one exact place or date for the reconstructed formation.'),
(389,105,2,'Homeric Greek epic tradition','late 8th–7th century BCE textual horizon','LSJ reports ἔτυμος in Homeric passages as true or real.',NULL,NULL,'broad',-750,-650,'range','The interval is a conventional textual horizon and does not date a surviving manuscript object.'),
(390,105,3,'Later Greek learned usage','Hellenistic and Roman-period records','The substantivized neuter ἔτυμον develops the technical sense “true sense according to origin.”',39000000,22000000,'regional',-300,300,'range','The bounds cover the later authors cited by LSJ rather than one coinage event.'),

(391,106,1,'Indo-European comparative horizon','prehistoric, exact location unresolved','*set-eu-o- and *set-u- are proposed analytical stages.',NULL,NULL,'broad',NULL,NULL,'unresolved','Neither a single map point nor an exact proto-date is supplied by the reviewed evidence.'),
(392,106,2,'Homeric Greek epic tradition','late 8th–7th century BCE textual horizon','Cunliffe records ἐτεός as true and really across the Iliad and Odyssey.',NULL,NULL,'broad',-750,-650,'range','The interval is a conventional textual horizon, not a dated manuscript token.'),
(393,106,3,'Greek and Anatolian name-contact scholarship','Late Bronze Age contact context; analysis published 2017','The ἐτεο- element also appears in Eteocles, whose cross-linguistic name history motivates a carefully qualified phonological discussion.',NULL,NULL,'broad',2017,2017,'exact','2017 dates the reviewed thesis analysis, not the ancient personal name.'),

(394,107,1,'Indo-European comparative horizon','prehistoric, exact location unresolved','*stéu-gho- and its connection to *set-u- are proposed reconstructions.',NULL,NULL,'broad',NULL,NULL,'unresolved','The comparative sources do not reduce the proto-analysis to one point or year.'),
(395,107,2,'Classical Armenian written tradition','from the 5th century CE','Calfa aggregates classical senses and historical citations for ստոյգ.',NULL,NULL,'broad',405,700,'range','The range marks the beginning and an early span of Armenian writing, not a first surviving token claim.'),
(396,107,3,'Historical Armenian lexicography','19th-century dictionaries–today','The classical spelling, senses, derivations, and competing etymologies are preserved in Armenian dictionary traditions.',40000000,45000000,'regional',1836,NULL,'open','1836 marks the beginning of the New Dictionary of the Armenian Language publication range cited by the lexical tradition.'),

(397,108,1,'Later Ancient Greek learned usage','Hellenistic and Roman periods','The substantivized neuter ἔτυμον denotes the true sense of a word according to its origin.',39000000,22000000,'regional',-300,300,'range','The span covers the later Greek evidence cited by LSJ.'),
(398,108,2,'Latin scholarly transmission','antiquity–medieval learned use','Latin borrowed Greek etymon before the English learned borrowing.',42000000,12500000,'regional',-100,1400,'range','The wide range reflects Latin transmission, not a single dated borrowing witness.'),
(399,108,3,'English printed record','1573','Merriam-Webster reports the first known English use of etymon.',52000000,-1000000,'broad',1573,1573,'exact','The year is source-reported and the underlying print object was not directly inspected.'),
(400,108,4,'Modern linguistic usage','1573–today','The English noun now covers earlier forms, foreign donors, words, and morphemes used in derivation.',NULL,NULL,'global',1573,NULL,'open','The open interval begins at the source-reported English horizon.'),

(401,109,1,'Ancient Greek learned tradition','Hellenistic and later Greek','Greek ἐτυμολογία supplies the learned compound behind the Latin and French word.',39000000,22000000,'regional',-300,600,'range','The bounds represent the reviewed Greek technical tradition.'),
(402,109,2,'Latin grammatical tradition','antiquity–medieval Europe','Latin etymologia transmitted the Greek technical noun into Romance learned use.',42000000,12500000,'regional',-100,1400,'range','The interval is a transmission horizon rather than one borrowing date.'),
(403,109,3,'Old French textual record','c. 1175–1188','CNRTL reports early ethimologie and ethymelogie forms in two medieval works with special contextual uses.',47000000,2000000,'regional',1175,1188,'range','The range is defined by the two source-reported early attestations.'),
(404,109,4,'French technical specialization','1529–1756','French moves from explanations of particular words toward a named general inquiry into word origins.',48856600,2352200,'regional',1529,1756,'range','CNRTL dates the filiation sense to 1529 and the generalized research sense to 1756.'),
(405,109,5,'Present French scholarship','1756–today','Étymologie becomes the standard French name for word-origin research and historical explanation.',NULL,NULL,'global',1756,NULL,'open','The open interval begins at CNRTL’s generalized research-sense horizon.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(388,12,'s.v. ἔτυμος and ἐτεός','supports','Supplies the proposed reconstructed horizon while preserving uncertainty.'),
(389,248,'Adjective sense and Homeric citations','supports','Documents the epic textual horizon and true/real senses.'),
(390,248,'Substantive sense II and later-author citations','supports','Documents the later technical semantic development.'),
(391,254,'Eteocles etymology: *set-eu-o- from *sét-u- or *steu-','supports','Supplies the proposed prehistory and its geographic limits.'),
(392,249,'Headword ἐτεός and Homeric citation list','supports','Documents the Homeric distribution and meanings.'),
(393,254,'Repository metadata and Eteocles discussion','supports','Dates the reviewed analysis and supplies the contact-linguistic context.'),
(394,253,'s.v. stoyg','supports','Supplies the proposed Armenian prehistory.'),
(395,252,'Headword senses and classical citations','supports','Documents the Armenian lexical tradition without inventing one first token.'),
(396,252,'Historical dictionary etymologies and derivative list','supports','Preserves the classical spelling and lexicographic record.'),
(397,248,'Substantive sense II and citations','supports','Documents later Greek use of the technical noun.'),
(398,250,'Etymology: Latin from Greek','supports','Supplies the Latin transmission stage.'),
(399,250,'First Known Use: 1573','supports','Supplies the exact English source-reported horizon.'),
(400,250,'Definitions 1a, 1b, and 2','supports','Documents the present technical sense range.'),
(401,10,'Headword ἐτυμολογία','supports','Documents the Greek technical word.'),
(402,8,'Origin: Latin etymologia; Varro reference','supports','Documents Latin transmission and ancient attestation.'),
(403,8,'History: c. 1175 and 1188 attestations','supports','Supplies the two early French records and their special contexts.'),
(404,8,'History B and A: 1529 and 1756','supports','Supplies the dated semantic specialization.'),
(405,8,'History A and Origin','supports','Documents the generalized French research sense.'),
(405,251,'Current definition and examples','context','Documents the current French endpoint.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(188,105,'Is *setu-mo- the certain ancestor of ἔτυμος?','No. The analysis is serious and published, but the exact morphology and wider *set-u- family remain debated.','proposed','Beekes, Etygram, and the independent synthesis publish the analysis while retaining uncertainty.','open','The asterisked nodes and proposed confidence remain visible on every reused edge.'),
(189,105,'Did ἔτυμος itself mean the modern discipline etymology?','No. It meant true, real, or actual; only its substantivized neuter developed a technical true-sense meaning, and ἐτυμολογία is a later compound.','established','LSJ separates the adjectival and substantivized senses and dates the latter to later writers.','resolved','The dossier makes the semantic and morphological steps separately clickable.'),
(190,106,'Does ἐτεός securely prove *set-u-?','It supports the proposal, but the reconstructed preform, ablaut, and suffixation are not directly attested or unanimous.','proposed','Etygram says probably; Beekes and Gális publish analyses while preserving uncertainty.','open','The path ends at a boundary instead of treating the reconstruction as a fossil spelling.'),
(191,106,'Did Lydian contact cause the loss of initial aspiration?','Gális presents Lydian contact only as a theoretical possibility, not an established cause of Greek psilosis.','speculative','The thesis distinguishes the phonological observation from the contact explanation.','open','The contact hypothesis remains in the dispute layer and is not encoded as a factual ancestry edge.'),
(192,107,'Is Armenian ստոյգ an uncontested cognate of ἔτυμος and ἐτεός?','It is a published comparison that strengthens the *set-u- analysis, but the exact Armenian preform and common-base morphology remain proposed.','proposed','Martirosyan, Beekes, Etygram, and Gális preserve the comparison at different levels of detail.','open','The graph connects the branches at proposed confidence and stops before a fabricated certainty.'),
(193,107,'Is classical ստոյգ identical to the modern written form?','The lexeme continues, but modern Eastern Armenian normally writes ստույգ; the dossier displays the classical form because that is the comparative form in the historical literature.','established','Calfa preserves the classical headword and the modern continuation is recorded separately.','resolved','Orthographic chronology is disclosed in the form note rather than erased.'),
(194,108,'Must an etymon be the deepest reconstructable root?','No. Merriam-Webster defines it as an earlier same-language or ancestral form, a foreign loan source, or a word or morpheme used in composition or derivation.','established','The modern technical definition is broader than “ultimate root.”','resolved','The truth claim uses the dictionary’s full definition rather than a simplified slogan.'),
(195,108,'Are etyma and etymons both permitted plurals?','Yes. Merriam-Webster records etyma and etymons, with etyma preserving the learned Greek-style plural.','established','Current lexicography records both forms.','resolved','Both variants remain visible as cited relatives.'),
(196,109,'Did the c. 1175 French witness already mean modern linguistic science?','No. CNRTL treats the earliest records as a title reference and contextual wordplay distinct from the modern scientific sense.','established','The updated CNRTL history separates early witnesses from the 1529 filiation sense and the 1756 generalized research sense.','resolved','Journey stages and witness notes keep spelling attestation separate from semantic identity.'),
(197,109,'When did French étymologie become the name of a science?','CNRTL reports a generalized research sense from 1756 but notes that the word continued to be called an art; it reports an explicit science definition only in 1836.','established','The historical notice supplies separate dates for the research sense and science label.','resolved','The dossier resists assigning one false birth date to a discipline that stabilized in stages.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(188,12,'s.v. ἔτυμος and ἐτεός','supports','Publishes the reconstruction while marking further analysis uncertain.'),
(188,11,'Modern etymology and bibliography','context','Displays the proposed family and competing discussion.'),
(189,248,'Adjective sense; substantive sense II','supports','Separates true/real from the later technical noun.'),
(189,10,'Headword ἐτυμολογία','context','Documents the later compound.'),
(190,11,'Modern etymology: “probably” from *set-u-','supports','The source itself calibrates the reconstruction.'),
(190,254,'Eteocles etymology and comparative discussion','context','Supplies a detailed proposed derivation.'),
(191,254,'Eteocles discussion: psilosis and possible Lydian contact','supports','Explicitly frames contact as theoretical rather than established.'),
(192,253,'s.v. stoyg','supports','Publishes the Armenian inherited analysis.'),
(192,11,'Modern etymology: Armenian comparison','context','Connects the Armenian and Greek true-word families.'),
(193,252,'Headword Ստոյգ and current lexical presentation','supports','Documents the classical form and continuing lexeme.'),
(194,250,'Definitions 1a, 1b, and 2','supports','Shows that an etymon may be an intermediate, foreign, or derivational source.'),
(195,250,'Headword plural line','supports','Records both etyma and etymons.'),
(196,8,'History: c. 1175 and 1188; remarks on modern tradition','supports','Separates the earliest records from the modern linguistic sense.'),
(197,8,'History A: 1756 generalized research; 1836 science definition','supports','Documents staged disciplinary specialization.'),
(197,251,'Current definition','context','Anchors the present French endpoint.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(90,105,2001,'ἔτυμος','“True” is not yet “etymology.”','Greek ἔτυμος meant true, real, or actual. A neuter technical noun and then the compound ἐτυμολογία had to turn truth into an inquiry about words.','A',100,'LSJ supplies the semantic distinction; the deeper reconstruction remains separately graded.'),
(91,106,2002,'ἐτεός','The reconstructed root has grammar, not just letters.','The proposed path is not simply *set-u- with an asterisk. Scholars analyze formations such as *set-eu-o-, debate the vowel structure, and qualify the loss of initial *s.','A-',99,'A- reflects strong documentation of the proposal without consensus certainty.'),
(92,107,2003,'ստոյգ','A cognate can strengthen a reconstruction without proving it.','Armenian ստոյգ “true, real” is one reason the Greek *set-u- analysis is attractive; its own preform and the exact common morphology remain reconstructed.','A-',99,'The lexical match and published comparison are real; the graph refuses to turn them into an attested proto-word.'),
(93,108,2004,'etymon','The etymon is not always the root of the root.','In technical use an etymon may be an earlier form, a foreign loan source, or a derivational word or morpheme—not necessarily the deepest reachable ancestor.','A',100,'The reveal follows the full dictionary definition.'),
(94,109,2005,'étymologie','The word existed before the science it now names.','French records reach c. 1175, but CNRTL dates the generalized inquiry into word origins to 1756 and an explicit science definition to 1836.','A',100,'The semantic chronology is source-dated rather than inferred from spelling alone.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id, ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT ranked.new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(90,248,'Adjective sense and substantive sense II','supports','Separates the ordinary true-word from the later technical noun.'),
(90,10,'Headword ἐτυμολογία','context','Documents the compound that becomes etymology.'),
(91,254,'Eteocles etymology: *set-eu-o-, *sét-u-, and psilosis','supports','Exposes the grammatical and phonological analysis behind the short root label.'),
(91,11,'Modern etymology section','context','Independently calibrates the *set-u- proposal.'),
(92,253,'s.v. stoyg','supports','Supplies the Armenian inherited analysis.'),
(92,11,'Modern etymology: Armenian stoyg comparison','context','Places Armenian beside the Greek true-word family.'),
(93,250,'Definitions 1a, 1b, and 2','supports','Directly establishes the broader technical meaning.'),
(93,248,'Substantive ἔτυμον, sense II','context','Shows the Greek historical source of the technical noun.'),
(94,8,'History: c. 1175, 1756, and 1836','supports','Dates the spelling record, generalized research sense, and explicit science label separately.'),
(94,251,'Current definition','context','Documents the present French endpoint.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(68,105,2,'TRUE BEFORE ETYMOLOGY','The ordinary Greek adjective ἔτυμος is the semantic first member inside the learned compound that became English etymology.','100','A','reviewed'),
(69,106,105,'TWO GREEK ROADS TO TRUE','ἐτεός and ἔτυμος are attested siblings in a family whose exact reconstructed morphology remains disputed.','99','A-','reviewed'),
(70,107,105,'THE ARMENIAN ARGUMENT INSIDE THE BRAND','Armenian ստոյգ is not an ancestor of Greek ἔτυμος; it is comparative evidence used to argue for a deeper shared family.','100','A-','reviewed'),
(71,108,2,'THE UNIT INSIDE THE DISCIPLINE','An etymon is one source-form unit inside etymological work, not a synonym for the whole discipline or necessarily its deepest root.','99','A','reviewed'),
(72,109,2,'THE FRENCH BRIDGE WITH ITS OWN HISTORY','English etymology passed through a French learned tradition whose word existed centuries before its modern scientific sense stabilized.','100','A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 615 AND 641
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
WHERE f.id BETWEEN 615 AND 641;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 511 AND 532;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 511 AND 532;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 511 AND 532;
