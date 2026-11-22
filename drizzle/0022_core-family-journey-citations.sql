UPDATE `sources`
SET `url`='https://idus.us.es/bitstreams/a0de61e5-85d2-4867-96f6-2ca8a30402c3/download'
WHERE `id`=38 AND `citation_key`='kaczynska-2013-lex';

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(5,11,'Modern etymology section for ἐτός and ἔτυμος','supports','Reports the probable *set-u- reconstruction behind the ἐτεός/ἐτός/ἔτυμος family and compares Armenian stoyg “real”; this supports a reconstructed horizon, not a directly attested word *set-u-.'),
(6,11,'Ancient evidence and Modern etymology sections for ἐτός and ἔτυμος','supports','Documents the Greek true/genuine family through ancient lexicographic passages and separates those attested forms from the modern *set-u- reconstruction.'),
(7,7,'Word History: Etymology and First Known Use','supports','Traces Middle English through Anglo-French, Latin etymologia, and Greek etymon + -logia, and places the first known English use in the fourteenth century.'),
(8,7,'Definitions 1–2','supports','Defines etymology as tracing form history, transmission, components, cognates, and ancestral forms, and as the linguistic branch concerned with that work; it supports the modern disciplinary stage without assigning it a single start year.'),

(32,37,'Pokorny Etymon leg̑- and reflex inventory','supports','Preserves the traditional reconstructed leg̑- “to gather, collect” analysis and groups the Greek, Latin, French, and English family under it.'),
(32,38,'Sections 1 and 6–7, Habis 44 (2013), pp. 7–14','challenges','Argues that the traditional *leg- reconstruction should instead be *sleg- on Greek, Albanian, Indic, and Italic evidence; the competing citation is why SET-U does not flatten the initial consonant question.'),
(33,37,'Hellenic reflexes: λέγω, λογική, λογικός, λόγος','supports','Lists Greek λέγω with gather/speak senses and the related logic, reason, word, and speech forms used for the Ancient Greek stage.'),
(34,34,'Word History: Etymology and First Known Use','supports','Traces Middle English logik through Anglo-French and Latin logica to Greek logikē and reports first known English use in the twelfth century.'),
(35,34,'Definitions 1 and 1d; First Known Use','supports','Documents the formal-reasoning and computing/circuit senses while anchoring the English record in the twelfth century; it does not date every later semantic expansion.'),

(36,37,'Pokorny Etymon leg̑-; Latin reflex lex and English legal','supports','Records the traditional gather-root grouping and lists Latin lex “law” and English legal among its reflexes.'),
(36,38,'Sections 1 and 6–7, Habis 44 (2013), pp. 7–14','challenges','Proposes *sleg- rather than traditional *leg- and analyzes Latin lēx as an inherited root noun related to gathering; SET-U retains this as a competing scholarly route.'),
(37,37,'Italic reflexes: lēgālis and lex, legis','supports','Lists Latin lēgālis “of the law” and lēx “law,” supporting the Roman lexical stage without claiming that their deeper etymology is settled.'),
(38,41,'Word History: Etymology','supports','Reports Anglo-French legal from Latin legalis and leg-/lex “law,” directly supporting the medieval transmission stage.'),
(39,41,'Definitions 1–6 and First Known Use','supports','Documents modern law-, institution-, court-, and rule-related senses and dates the first known adjectival English use to the fifteenth century.'),

(40,37,'Pokorny Etymon leg̑- and lecture reflexes','supports','Places Latin legere and English lecture in the traditional gather/select root inventory.'),
(40,38,'Sections 1 and 6, Habis 44 (2013), pp. 7–13','challenges','Explains why Greek and Latin leg- may continue an earlier *sleg- root, preserving the competing initial-consonant analysis behind the reading family.'),
(41,37,'Italic reflexes: legō/legere/lēctus and Late Latin lectura','supports','Lists Latin legere “to read,” its lēctus stem, and Late Latin lectura “reading,” supporting the Roman and medieval scholarly stage.'),
(42,42,'Word History: Etymology and First Known Use','supports','Traces Middle English lecture “act of reading” from Late Latin lectura and Latin lectus/legere, with first known English use in the fifteenth century.'),
(43,42,'Definitions 1–2 for noun and 1–3 for verb','supports','Documents current instructional-talk and reprimand senses while leaving their individual semantic dates unspecified.'),

(44,37,'Pokorny Etymon leg̑- and legend reflexes','supports','Places Latin legendus, Medieval Latin legenda, and English legend in the traditional gather/select root inventory.'),
(44,38,'Sections 1 and 6, Habis 44 (2013), pp. 7–13','challenges','Supplies the competing *sleg- reconstruction behind Greek and Latin leg- forms; the stage therefore remains explicitly disputed.'),
(45,43,'Word History: Etymology; Kids Word Origin','supports','Explains Medieval Latin legenda as “things to be read,” especially narratives of saints, from Latin legere.'),
(46,43,'Word History: First Known Use','supports','Dates the first known English use of legend to circa 1500.'),
(47,43,'Definitions 1–2 and Kids Definition','supports','Documents current story, famous-person, inscription, caption, and map-key senses without assigning them one shared onset.'),

(48,37,'Pokorny Etymon leg̑- and intelligence reflexes','supports','Places Latin intellegere/intelligens and English intelligent in the traditional gather/select family.'),
(48,38,'Sections 1 and 6, Habis 44 (2013), pp. 7–13','challenges','Argues for *sleg- rather than *leg- behind the relevant Greek and Latin family, preserving the reconstruction dispute.'),
(49,37,'Italic reflexes: intellegō and intelligens','supports','Lists Latin intellegere “to understand” and intelligens “intelligent, understanding,” supporting the Roman discernment stage.'),
(50,44,'Word History: Etymology and First Known Use','supports','Traces Middle English through Middle French to Latin intelligentia and dates first known English use to the fourteenth century.'),
(51,44,'Definitions 1–7 and Medical Definition','supports','Documents cognitive, informational, espionage, and measurement senses; modern computing examples are contextual usage and do not establish a single semantic start year.'),

(52,37,'Pokorny Etymon leg̑- and collect reflexes','supports','Places Latin colligere and English collect in the traditional “gather, collect” root inventory.'),
(52,38,'Sections 1 and 6, Habis 44 (2013), pp. 7–13','challenges','Uses Greek, Albanian, Indic, and Italic evidence to prefer *sleg- over the traditional *leg- reconstruction, preserving the family-level dispute.'),
(53,46,'Word History: Etymology, Verb','supports','Analyzes Latin colligere “gather together” as com- plus legere “gather by picking, select,” supporting the Roman compound stage.'),
(54,46,'Word History: Etymology and First Known Use, Noun and Verb','supports','Separates the prayer noun transmitted through Anglo-French/Medieval Latin from the accumulation verb and dates their English records to before the twelfth century and the fifteenth century respectively.'),
(55,46,'Verb definitions 1–5 and noun definitions 1–2','supports','Documents current gathering, accumulating, receiving-payment, retrieving, inferring, and self-composure senses without assigning the whole semantic bundle one start year.');

UPDATE `places` SET
  `date_end`=1399,
  `temporal_precision`='before',
  `temporal_note`='The reviewed transmission chain reaches its first known English record in the fourteenth century. Only an upper bound is encoded because the Greek, Latin, and French portions begin much earlier.'
WHERE `id`=7;

UPDATE `places` SET
  `date_end`=1199,
  `temporal_precision`='before',
  `temporal_note`='The reviewed Greek-to-Latin-to-French chain reaches English by the twelfth century. The numeric layer encodes only that upper bound, not a fabricated ancient start year.'
WHERE `id`=34;

UPDATE `places` SET
  `date_start`=1100,
  `temporal_precision`='open',
  `temporal_note`='English logic is attested from the twelfth-century first-known-use horizon and remains current; later reasoning and computing senses are not assigned separate invented start dates.'
WHERE `id`=35;

UPDATE `places` SET
  `date_start`=1400,
  `temporal_precision`='open',
  `temporal_note`='The English adjective is attested from the fifteenth-century first-known-use horizon and remains current across later legal and rule-governed senses.'
WHERE `id`=39;

UPDATE `places` SET
  `date_start`=1400,
  `date_end`=1499,
  `temporal_precision`='century',
  `temporal_note`='The first known English noun use is reported at fifteenth-century precision; the bounds expose the whole century rather than inventing an exact year.'
WHERE `id`=42;

UPDATE `places` SET
  `date_start`=1500,
  `date_end`=1500,
  `temporal_precision`='circa',
  `temporal_note`='The reviewed first-known-use claim is circa 1500. The central year is encoded with circa precision, not promoted to an exact attestation date.'
WHERE `id`=46;

UPDATE `places` SET
  `date_start`=1300,
  `date_end`=1399,
  `temporal_precision`='century',
  `temporal_note`='The first known English use is reported at fourteenth-century precision; no exact year is inferred.'
WHERE `id`=50;

UPDATE `places` SET
  `date_end`=1499,
  `temporal_precision`='before',
  `temporal_note`='The two reviewed English transmission histories are attested before the twelfth century for the prayer noun and in the fifteenth century for the verb. The numeric layer exposes only their shared upper bound.'
WHERE `id`=54;
