UPDATE `sources` SET
  `title`='Etymologia: Quarantine',
  `author`='Emerging Infectious Diseases Editors',
  `year`=2013,
  `doi`='10.3201/eid1902.et1902'
WHERE `id`=28;

UPDATE `sources` SET
  `title`='A Brief Biological History of Quarantine: Modern use of an ancient tool',
  `author`='Lesley Evans Ogden',
  `year`=2021,
  `publisher`='BioScience / Oxford University Press',
  `doi`='10.1093/biosci/biab075'
WHERE `id`=29;

UPDATE `forms` SET
  `date_label`='1617–today',
  `date_start`=1617
WHERE `id`=42;

UPDATE `attestations` SET
  `date_label`='1617',
  `year`=1617,
  `witness`='English noun lexicographic first-use record',
  `editorial_note`='The 1617 date is source-reported for the noun’s forty-day sense. No underlying quotation or facsimile was directly inspected for this record.'
WHERE `id`=12;

UPDATE `places` SET
  `place`='Latin astrum and the astrological frame',
  `date_label`='Latin antiquity; later astrological inheritance',
  `note`='Latin astrum names a star or constellation. The later disaster family preserves the once-literal astrological idea of an unfavorable planetary or stellar aspect, but the lexical sources do not locate that semantic development at one Roman point.',
  `latitude_e6`=NULL,
  `longitude_e6`=NULL,
  `geographic_confidence`='broad',
  `temporal_note`='The Latin star word and the later astrological frame are directly cited, but the reviewed sources do not delimit one numeric interval or point location covering both claims.'
WHERE `id`=20;

UPDATE `places` SET
  `date_label`='Old Italian stage; exact onset unresolved',
  `note`='Old Italian disastro combines the negative prefix dis- with astro “heavenly body.” It could still denote an unfavorable stellar or planetary aspect before the calamity meaning generalized.',
  `temporal_note`='The Italian composition and astrological sense are directly cited, but the reviewed entry does not provide one conservative numeric onset for this stage.'
WHERE `id`=21;

UPDATE `places` SET
  `date_label`='Middle French borrowing; exact onset unresolved',
  `note`='Middle French desastre borrows the Italian calamity word. Merriam-Webster treats both French and Italian as part of the English borrowing history rather than forcing a single donor label.',
  `temporal_note`='The Middle French borrowing is directly cited, but the source does not provide one conservative numeric interval for this route stage.'
WHERE `id`=22;

UPDATE `places` SET
  `place`='English-language disaster senses',
  `date_label`='1567 first-known-use horizon onward',
  `note`='English disaster is recorded from 1567 for a calamitous event and now also applies to failures, harmful results, agitated people, and disorder. The current senses no longer require belief in astrological causation.',
  `latitude_e6`=NULL,
  `longitude_e6`=NULL,
  `date_start`=1567,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='global',
  `temporal_note`='The open interval begins with the reviewed 1567 English first-known-use horizon. It does not date each later figurative or evaluative extension to that year.'
WHERE `id`=23;

UPDATE `places` SET
  `place`='Roman office-seeking practice',
  `date_label`='Roman antiquity; exact onset unresolved',
  `note`='Latin candidātus first describes someone clothed in white and then the office-seeker identified by a bright white toga. The clothing and political use are attested; the word formation alone does not prove a personal claim of moral purity.',
  `temporal_note`='The Roman dress and office-seeking senses are directly cited, but the reviewed lexical records span multiple authors and do not establish one exact onset for the practice.'
WHERE `id`=24;

UPDATE `places` SET
  `place`='French candidat and learned circulation',
  `date_label`='1284 French record; 1546 public-office sense',
  `note`='CNRTL records French candidat in 1284 in an elite-soldier sense and in 1546 for a person seeking public office, with later academic use. This documents European circulation without claiming French was necessarily the direct donor to English.',
  `latitude_e6`=46500000,
  `longitude_e6`=2500000,
  `date_start`=1284,
  `date_end`=1546,
  `temporal_precision`='range',
  `geographic_confidence`='regional',
  `temporal_note`='The 1284–1546 interval connects two explicitly dated French records with different senses. It is a documentary range, not the full life span of French candidat or a claim of continuous unchanged meaning.'
WHERE `id`=25;

UPDATE `places` SET
  `date_label`='1600 English first-known-use horizon',
  `note`='English candidate borrows Latin candidātus for a person seeking office. Merriam-Webster reports 1600 as the first-known-use horizon.',
  `date_start`=1600,
  `date_end`=1600,
  `temporal_precision`='exact',
  `temporal_note`='1600 is the reviewed English first-known-use year, not a claim that the borrowing process or every occurrence began at one instant.'
WHERE `id`=26;

UPDATE `places` SET
  `place`='English-language candidate senses',
  `date_label`='1600 office-seeker onward; later extensions',
  `note`='The office-seeker remains central, while candidate expands to people nominated or qualified for awards, jobs, degrees, surgery, and other possible selection or treatment.',
  `date_start`=1600,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='global',
  `temporal_note`='The open interval begins with the reviewed 1600 office-seeker horizon. It does not assign that onset to every later institutional, academic, medical, or general suitability sense.'
WHERE `id`=27;

UPDATE `places` SET
  `place`='Latin calculus and counting-board practice',
  `note`='Latin calculus names a pebble, a pebble used on a counting board, and the resulting method or account. That physical-computation link is secure; the deeper derivation from calx “lime, limestone” is explicitly uncertain.',
  `latitude_e6`=NULL,
  `longitude_e6`=NULL,
  `geographic_confidence`='broad',
  `temporal_note`='The Latin pebble and counting senses are directly cited, but the lexical sources do not delimit one numeric interval or point location for the distributed practice.'
WHERE `id`=64;

UPDATE `places` SET
  `place`='Late Latin calculating family',
  `note`='Late Latin calculātus is the past participle of calculāre “count, reckon, compute,” derived from calculus. The route keeps this learned formation distinct from the unsettled prehistory of the stone word.',
  `latitude_e6`=NULL,
  `longitude_e6`=NULL,
  `geographic_confidence`='broad',
  `temporal_note`='The Late Latin formation is directly cited, but the reviewed source does not delimit one conservative numeric interval or point location for its scholarly circulation.'
WHERE `id`=65;

UPDATE `places` SET
  `date_label`='1542 English first-known-use horizon',
  `note`='Calculate enters English as a learned mathematical verb. Merriam-Webster reports 1542 for its first known English use in the mathematical sense.',
  `date_start`=1542,
  `date_end`=1542,
  `temporal_precision`='exact',
  `temporal_note`='1542 is the reviewed English first-known-use year for the mathematical verb, not an exact date for every borrowing event.'
WHERE `id`=66;

UPDATE `places` SET
  `place`='English-language calculate senses',
  `date_label`='1542 mathematical verb onward; later extensions',
  `note`='Calculate continues as mathematical determination and expands to practical estimation, interpretation, planning, judging probability, intending, and forecasting consequences.',
  `date_start`=1542,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='global',
  `temporal_note`='The open interval begins with the reviewed 1542 mathematical horizon. It does not date every later judgment, planning, or forecasting sense to that year.'
WHERE `id`=67;

UPDATE `places` SET
  `date_label`='1377 thirty-day trentino law',
  `note`='Ragusa, now Dubrovnik, enacted a thirty-day separation rule in 1377 for arrivals from plague-affected areas. This is the documented civic precursor, called trentino—not yet the forty-day quarantine named by the modern word.',
  `date_start`=1377,
  `date_end`=1377,
  `temporal_precision`='exact',
  `temporal_note`='1377 is directly reported for the Ragusan legislation and its thirty-day rule. The point marks Dubrovnik, the named polity, not every Mediterranean isolation practice.'
WHERE `id`=28;

UPDATE `places` SET
  `place`='Mediterranean port quarantine systems',
  `date_label`='following decades after 1377; exact extension date unresolved',
  `note`='The port-city practice spread and the waiting period was extended from thirty to forty days, producing the quaranta-based name. Whether efficacy, religious symbolism, medical theory, logistics, or several forces explain forty remains unsettled.',
  `latitude_e6`=NULL,
  `longitude_e6`=NULL,
  `geographic_confidence`='broad',
  `temporal_note`='The thirty-to-forty sequence in the decades after 1377 is directly cited, but the reviewed sources do not establish one exact extension date or one point location for the distributed port system.'
WHERE `id`=29;

UPDATE `places` SET
  `place`='French and Italian donors; English reception',
  `date_label`='1617 English noun first-known-use horizon',
  `note`='French quarantaine and Italian quarantena, both built on “forty,” contribute to English quarantine. Merriam-Webster now reports 1617 for the English noun’s first known use in the forty-day sense.',
  `latitude_e6`=NULL,
  `longitude_e6`=NULL,
  `date_start`=1617,
  `date_end`=1617,
  `temporal_precision`='exact',
  `geographic_confidence`='broad',
  `temporal_note`='1617 is the reviewed English noun first-known-use year. It does not date every French or Italian donor occurrence, and it supersedes the previously stored 1663 report for this same source record.'
WHERE `id`=30;

UPDATE `places` SET
  `place`='Global quarantine and biosecurity uses',
  `date_label`='1617 forty-day noun onward; durations now vary',
  `note`='Quarantine now covers restraints on people, ships, goods, animals, plants, pests, and communications. Modern quarantines can last days, weeks, months, or other evidence-based periods; the inherited name preserves forty without requiring forty.',
  `date_start`=1617,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='global',
  `temporal_note`='The open interval begins with the reviewed 1617 English forty-day noun. It does not assign modern public-health, veterinary, agricultural, forestry, or figurative extensions to that year.'
WHERE `id`=31;

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(20,23,'astrum lexical entry','supports','Documents Latin astrum as a star or constellation term; it does not assign a single geographic point to the word’s full ancient use.'),
(20,22,'Obsolete occult sense; Did You Know?','supports','Documents the literal unfavorable planetary or stellar aspect and the astrological belief underlying the later calamity word.'),
(21,22,'Did You Know? and Word History: Etymology','supports','Analyzes Old Italian disastro from dis- plus astro “heavenly body” and preserves the unfavorable-star sense.'),
(22,22,'Word History: Etymology','supports','Reports Middle French desastre as borrowed from Italian disastro and treats both languages as part of the English borrowing history.'),
(23,22,'Definitions 1–3 and Word History: First Known Use','supports','Reports 1567 for the English calamity noun and documents current event, failure, harmful-result, emotional-state, and disorder senses.'),
(24,24,'Lewis and Short: adjective and substantive candidātus','supports','Documents candidātus as “clothed in white” and as an office candidate identified by a bright white toga, with multiple Latin textual references.'),
(24,33,'Did You Know? and Word History: Etymology','supports','Connects Roman office-seeking, the whitened toga, candidātus “dressed in white,” and candidus “bright, white.”'),
(25,25,'Étymol. et Hist. I.1–II.2','supports','Records French candidat in 1284, the public-office sense in 1546, later general and academic senses, and a possible German intermediary without making it the English donor.'),
(26,33,'Word History: Etymology and First Known Use','supports','Derives English candidate from Latin candidātus and reports 1600 as the first-known-use horizon.'),
(27,33,'Current definitions and Word History: First Known Use','supports','Documents office, award, job, degree, medical, and general suitability senses while dating only the core English word to 1600.'),
(64,59,'Word History: Etymology','supports','Derives calculate through calculus and documents calculus as a pebble, counting-board pebble, and method or result of calculation.'),
(64,60,'Did You Know? and Etymology Note','context','Confirms the physical counting-stone history while exposing the deeper calx derivation as irregular and a possible Greek or substrate connection as an alternative.'),
(65,59,'Word History: Etymology and note','supports','Traces Late Latin calculātus through calculāre “count, reckon, compute” to calculus, while noting the verb may already have existed in Latin.'),
(66,59,'Word History: First Known Use','supports','Reports 1542 for the first known English use in the mathematical sense.'),
(67,59,'Current transitive and intransitive definitions','supports','Documents mathematical determination, practical estimation, interpretation, planning, judgment, intention, reliance, and forecasting senses.'),
(28,28,'Etymologia, paragraph on the 1377 Great Council of Ragusa rule','supports','Reports the 1377 Ragusan thirty-day separation period, trentino, for visitors from plague-endemic areas.'),
(28,29,'Historical roots, Dubrovnik legislation','supports','Identifies Dubrovnik’s 1377 legislation and distinguishes the original thirty-day anchoring period from the later forty-day extension.'),
(29,28,'Etymologia, thirty-to-forty sequence','supports','Reports spread to other cities in the following decades and extension from thirty to forty days, while presenting possible efficacy and Biblical explanations cautiously.'),
(29,29,'Historical roots, Mediterranean port systems','supports','Documents Mediterranean port-city controls, the thirty-day period, its later extension to forty or longer, and the Italian forty-day name.'),
(30,30,'Word History: Etymology and noun First Known Use','supports','Traces French quarantaine and Italian quarantena from “forty” and reports 1617 for the English noun’s first known use in the forty-day sense.'),
(31,30,'Current noun and verb definitions','supports','Documents ship, person, goods, pest, place, activity, communication, and enforced-isolation uses that no longer require a forty-day duration.'),
(31,29,'Public-health definition and modern case studies','supports','Defines modern quarantine by exposure rather than a fixed duration and documents present-day periods ranging from seven days to months across human, animal, and plant health.');
