UPDATE `places` SET
  `note`='The numeral *dekm̥ “ten” is a comparative reconstruction. AHD identifies its older form as *dek̑m̥ and explicitly lists decimate among the Latin decem descendants.',
  `temporal_note`='The source supports the reconstructed numeral and descendant family but does not assign this lexical stage one defensible calendar interval or point location.'
WHERE `id`=112;

UPDATE `places` SET
  `note`='Latin decimāre is built from decimus “tenth,” from decem “ten,” and includes the historical selection and killing of every tenth member.',
  `temporal_note`='The Latin derivation and Roman punishment sense are directly cited, but the reviewed sources do not delimit one conservative numeric interval for the full Latin stage.'
WHERE `id`=113;

UPDATE `places` SET
  `date_label`='by 1660; sources disagree on the earliest record',
  `note`='Merriam-Webster’s dictionary reports 1660 for the every-tenth English sense, while its usage essay reports a record at the end of the sixteenth century. SET-U preserves the discrepancy instead of choosing a false exact date.',
  `date_start`=NULL,
  `date_end`=1660,
  `temporal_precision`='before',
  `temporal_note`='The before-1661 bound contains both reviewed reports: a dictionary first-known-use year of 1660 and the same publisher’s usage essay placing its earliest record at the end of the sixteenth century.'
WHERE `id`=114;

UPDATE `places` SET
  `place`='English-language decimate senses',
  `date_label`='17th c. onward',
  `note`='The drastic-reduction and severe-destruction senses are not a recent mistake: Merriam-Webster reports that the broader meaning arose within a few decades and has been used steadily since the seventeenth century.',
  `date_start`=1600,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='broad',
  `temporal_note`='The open interval begins at the start of the source-reported seventeenth-century horizon. It is a conservative century boundary, not an invented exact broadening year.'
WHERE `id`=115;

UPDATE `places` SET
  `note`='The numeral *dekm̥ “ten” is a comparative reconstruction. AHD explicitly includes decimal among the Latin decem descendants.',
  `temporal_note`='The source supports the reconstructed numeral and descendant family but does not supply one defensible numeric interval or point location for this prehistoric stage.'
WHERE `id`=116;

UPDATE `places` SET
  `note`='French décimal continues Medieval Latin decimalis “of a tithe,” from Latin decima “tithe”; the attested learned chain is kept separate from the deeper reconstructed numeral stage.',
  `temporal_note`='The etymological chain is directly cited, but the present source does not delimit one numeric interval covering both the Latin and medieval scholarly stages.'
WHERE `id`=117;

UPDATE `places` SET
  `place`='French source and English mathematical use',
  `date_label`='1608 English adjective first-known-use horizon',
  `note`='The French adjective enters English mathematical vocabulary; Merriam-Webster reports 1608 for the adjective’s first known English use.',
  `date_start`=1608,
  `date_end`=1608,
  `temporal_precision`='exact',
  `temporal_note`='1608 is the reviewed English adjective first-known-use year. It does not pretend to date every French occurrence or the entire borrowing process.'
WHERE `id`=118;

UPDATE `places` SET
  `place`='Base-ten mathematical usage',
  `date_label`='1608 adjective; 1623 noun; current use',
  `note`='Decimal functions as a base-ten adjective and noun. Merriam-Webster reports the adjective in 1608 and the noun in 1623, with both continuing in current mathematical use.',
  `date_start`=1608,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='broad',
  `temporal_note`='The open interval begins with the reviewed 1608 adjective horizon; the noun’s separate 1623 horizon remains explicit in the label and evidence note.'
WHERE `id`=119;

UPDATE `places` SET
  `note`='The numeral *dekm̥ “ten” is a comparative reconstruction. AHD explicitly includes December among the Latin decem descendants.',
  `temporal_note`='The source supports the reconstructed numeral and descendant family but does not supply one defensible numeric interval or point location for this prehistoric stage.'
WHERE `id`=120;

UPDATE `places` SET
  `note`='Latin December literally names the “tenth month” from decem “ten”; in the early Roman calendar the year began with March.',
  `temporal_note`='The lexical motivation and March-start calendar are directly cited, but the reviewed dictionary entry does not delimit one numeric interval for the whole Roman stage.'
WHERE `id`=121;

UPDATE `places` SET
  `place`='English transmission from Old English or Anglo-French',
  `date_label`='before the 12th c. English first-known-use horizon',
  `note`='Middle English Decembre continues an Old English or Anglo-French form ultimately borrowed from Latin December.',
  `date_start`=NULL,
  `date_end`=1199,
  `temporal_precision`='before',
  `temporal_note`='Merriam-Webster reports English use before the twelfth century. The before-1200 bound does not choose between the cited Old English and Anglo-French transmission alternatives.'
WHERE `id`=122;

UPDATE `places` SET
  `place`='Gregorian-calendar December usage',
  `date_label`='current month-twelve sense; diffusion onset unresolved',
  `note`='The inherited name built from “ten” now denotes the twelfth month of the Gregorian calendar. No single global diffusion point or onset is inferred.',
  `geographic_confidence`='broad',
  `temporal_note`='The current definition establishes the month-twelve sense, not one defensible numeric onset for its distributed Gregorian-calendar use.'
WHERE `id`=123;

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(112,92,'Root dekm̥, heading and basic form','supports','Defines reconstructed *dekm̥ as “ten,” gives older *dek̑m̥, and lists decimate among the Latin decem derivatives without assigning a calendar interval or point location.'),
(113,88,'Definitions 1 and Word History: Etymology','supports','Documents the historical every-tenth punishment sense and derives Latin decimare through decimus “tenth” from decem “ten.”'),
(114,88,'Word History: First Known Use','supports','Reports 1660 for the first known English use in the every-tenth sense.'),
(114,89,'Paragraph beginning “Was the sense meaning…”','challenges','The same publisher’s usage essay instead reports its earliest record at the end of the sixteenth century, so the route exposes a by-1660 horizon rather than an exact uncontested date.'),
(115,88,'Did You Know?; definitions 3a–b','supports','Reports that the broader severe-damage or destruction meaning arose within a few decades and has been used steadily since the seventeenth century; current definitions preserve it.'),
(115,89,'Discussion of semantic change and multiple meanings','context','Explains why restricting present-day decimate to its Roman every-tenth history is an etymological fallacy and documents early English sense expansion.'),
(116,92,'Root dekm̥, heading and Latin decem derivatives','supports','Defines reconstructed *dekm̥ as “ten” and explicitly lists decimal among descendants of Latin decem.'),
(117,90,'Word History: Etymology','supports','Traces French décimal from Medieval Latin decimalis “of a tithe,” from Latin decima “tithe.”'),
(118,90,'Word History: Etymology and adjective First Known Use','supports','Documents the French source and reports 1608 for the adjective’s first known English use.'),
(119,90,'Definitions; First Known Use for adjective and noun','supports','Defines the base-ten adjective and noun and reports separate first-known-use years of 1608 and 1623.'),
(120,92,'Root dekm̥, heading and Latin decem derivatives','supports','Defines reconstructed *dekm̥ as “ten” and explicitly lists December among descendants of Latin decem.'),
(121,91,'Word History: Etymology; Kids Word Origin','supports','Derives Latin December “tenth month” from decem “ten” and explains that the early Roman year began with March.'),
(122,91,'Word History: Etymology and First Known Use','supports','Traces Middle English Decembre through Old English or Anglo-French to Latin and reports English use before the twelfth century.'),
(123,91,'Definition and Kids Etymology','supports','Documents the current twelfth-month sense while preserving the historical name built from Latin “ten”; it does not establish a single worldwide diffusion onset.');
