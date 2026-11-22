UPDATE `sources`
SET `url`='https://www.iranicaonline.org/articles/chess/chess-i-the-history-of-chess-in-persia/'
WHERE `id`=98 AND `citation_key`='iranica-chess';

UPDATE `sources`
SET `url`='https://www.iranicaonline.org/articles/achaemenid-dynasty/'
WHERE `id`=99 AND `citation_key`='iranica-achaemenid-dynasty-i';

UPDATE `places` SET
  `note`='The Persian chess expression presents the trapped king as helpless or paralyzed rather than securely “dead.” The stage is linguistic and cultural, not one point on a map.',
  `temporal_note`='The cited chess history supports the Persian analysis but does not assign this lexical stage one conservative numeric interval.'
WHERE `id`=135;

UPDATE `places` SET
  `note`='Arabic chess usage receives the Persian expression while a native Arabic “has died” analysis remains a historically influential but less likely reinterpretation.',
  `temporal_note`='The transmission and competing interpretation are cited, but their present sources do not delimit one numeric Arabic-stage interval.'
WHERE `id`=136;

UPDATE `places` SET
  `date_label`='14th–15th c. English first-use horizons',
  `note`='Anglo-French eschec mat reaches Middle English chekmat and the derived verb chekmaten; the verb is reported in the fourteenth century and the noun in the fifteenth.',
  `date_start`=1300,
  `date_end`=1499,
  `temporal_precision`='range',
  `temporal_note`='The interval conservatively combines the reviewed fourteenth-century verb and fifteenth-century noun first-use horizons; it does not date every French or English occurrence.'
WHERE `id`=137;

UPDATE `places` SET
  `note`='European chess rules changed substantially from the fifteenth through early seventeenth centuries, while the checkmate victory term persisted.',
  `date_start`=1400,
  `date_end`=1699,
  `temporal_precision`='range',
  `temporal_note`='The broad 1400–1699 interval contains the source''s mid-fifteenth-century queen reform and early-seventeenth-century castling reform without inventing exact years.'
WHERE `id`=138;

UPDATE `places` SET
  `place`='English-language checkmate senses',
  `date_label`='current chess and figurative senses; onset unresolved',
  `note`='Modern English preserves both the inescapable chess position and the figurative sense “thwart completely.” No global diffusion date is inferred.',
  `geographic_confidence`='broad',
  `temporal_note`='Current definitions support coexistence of the chess and figurative senses, not one defensible onset for a worldwide stage.'
WHERE `id`=139;

UPDATE `places` SET
  `date_label`='Achaemenid period, c. 550–330 BCE',
  `note`='Old Persian xšāyaθiya is attested in official Achaemenid royal protocol and continues in Middle and New Persian šāh.',
  `date_start`=-550,
  `date_end`=-330,
  `temporal_precision`='range',
  `temporal_note`='The range locates the attested Achaemenid royal-title stage, not an exact coinage date for xšāyaθiya.'
WHERE `id`=124;

UPDATE `places` SET
  `note`='The Old Persian royal title continues as Middle and New Persian šāh and becomes part of Persian chess vocabulary; the distributed linguistic stage is deliberately unpinned.',
  `temporal_note`='The sources establish historical continuation and chess use but do not supply one numeric interval for the entire Middle-to-New Persian stage.'
WHERE `id`=125;

UPDATE `places` SET
  `note`='Arabic chess vocabulary borrows Persian šāh “king”; the royal title becomes the call naming the threatened king.',
  `temporal_note`='The borrowing path is directly cited, but no single numeric interval is promoted for its distributed Arabic chess stage.'
WHERE `id`=126;

UPDATE `places` SET
  `date_label`='14th–15th c. English first-use horizons',
  `note`='Anglo-French eschec and Old French eschac / eschés reach Middle English chek / chekke; the verb is reported in the fourteenth century and the noun in the fifteenth.',
  `date_start`=1300,
  `date_end`=1499,
  `temporal_precision`='range',
  `temporal_note`='The interval conservatively combines the reviewed fourteenth-century verb and fifteenth-century noun first-use horizons instead of dating the full French transmission.'
WHERE `id`=127;

UPDATE `places` SET
  `date_label`='early 18th c. onward',
  `note`='The restraint sense is applied first to an anti-forgery counterfoil and then to the bank draft itself.',
  `date_start`=1700,
  `temporal_precision`='open',
  `temporal_note`='The source places counterfoil usage in the early eighteenth century and the bank-draft sense after it; the interval remains open rather than inventing an end.'
WHERE `id`=128;

UPDATE `places` SET
  `place`='English-language check senses',
  `date_label`='current sense network; onset unresolved',
  `note`='Verification, marking, restraint, comparison, and banking senses coexist in current English. No single diffusion date or map point is inferred.',
  `geographic_confidence`='broad',
  `temporal_note`='Current dictionary senses establish coexistence, not one defensible numeric onset for the distributed semantic network.'
WHERE `id`=129;

UPDATE `places` SET
  `note`='The comparison of Latin scīre with a reconstructed cutting or separating root is published but disputed; it remains unpinned and unnormalized.',
  `temporal_note`='The sources disagree about formation and semantic development, so no numeric prehistoric interval is attached to this proposed route stage.'
WHERE `id`=104;

UPDATE `places` SET
  `note`='Latin nescius “ignorant” belongs to the negative nescīre “not know” family built around scīre “know.” The deeper prehistory remains outside this attested stage.',
  `temporal_note`='The lexical family is directly cited, but the route does not treat “Latin antiquity” as one source-bounded numeric interval.'
WHERE `id`=105;

UPDATE `places` SET
  `date_label`='14th c. English first-known-use horizon',
  `note`='Nice enters Middle English through Anglo-French with foolish, wanton, silly, and simple senses.',
  `date_start`=1300,
  `date_end`=1399,
  `temporal_precision`='century',
  `temporal_note`='The whole fourteenth century is exposed as a conservative first-known-use horizon, not an invented exact borrowing year.'
WHERE `id`=106;

UPDATE `places` SET
  `place`='English-language nice senses',
  `date_label`='19th c. onward',
  `note`='Pleasant and agreeable senses become established in the nineteenth century while precision and fastidiousness senses survive.',
  `date_start`=1800,
  `temporal_precision`='open',
  `temporal_note`='The source places the familiar pleasant and agreeable development in the nineteenth century; the interval remains open into current usage.'
WHERE `id`=107;

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(135,98,'Chess i, discussion of šāh-māt and the powerless king','supports','Explains that the king becomes powerless or paralyzed rather than being killed and treats the expression as Persian chess terminology. It does not license a single geographic point.'),
(136,95,'Word History: Etymology note on Arabic māt','supports','Records the native Arabic “has died” analysis but judges it more plausibly a folk-etymological interpretation of a Persian loan.'),
(136,98,'Chess i, checkmate discussion','supports','Argues that early Arabic usage points to a Persian loan and that the king becomes powerless rather than dead, while documenting the competing death-word reading.'),
(137,95,'Word History: Etymology and First Known Use','supports','Traces Anglo-French eschec mat into Middle English chekmat and chekmaten and reports the verb in the fourteenth century and noun in the fifteenth.'),
(138,98,'Chess i, rules changes and persistence of šāh-māt','supports','Dates major queen-movement reform to mid-fifteenth-century Spain and modern castling to the early seventeenth century while noting that the victory term persisted.'),
(139,95,'Definitions; “Figurative Checkmate and Other Chess Terms”','supports','Documents both the inescapable chess position and the extended meaning “thwart completely.” It does not establish one global diffusion onset.'),
(124,99,'“Titles,” official royal protocol and xšāyaθiya','supports','Documents xšāyaθiya in official Achaemenid royal protocol and explicitly relates it to Middle and New Persian šāh “king.”'),
(125,99,'“Titles,” xšāyaθiya and Middle/New Persian šāh','supports','Supports the historical royal-title continuation from Old Persian xšāyaθiya to Middle and New Persian šāh.'),
(125,98,'Chess i, Persian names and šāh-māt','supports','Documents the Persian chess term and the royal word šāh within the game''s Persian history; it supports a distributed chess-culture stage, not a point coordinate.'),
(126,93,'Word History: noun etymology, Persian šāh through Arabic','supports','Traces the Persian word for king through Arabic chess vocabulary on the route to French and English check.'),
(127,93,'Word History: Etymology and First Known Use','supports','Traces Old and Anglo-French chess forms to Middle English chek / chekke and reports the verb in the fourteenth century and noun in the fifteenth.'),
(128,97,'“Check,” counterfoil and bank-draft development','supports','Explains that check named an anti-forgery counterfoil in the early eighteenth century before it named the bank draft itself.'),
(129,93,'Definitions and Word History: ordered sense note','supports','Documents the current verification, marking, restraint, comparison, and banking branches and their ordering from the chess history; it does not date global diffusion.'),
(104,87,'Root *skei-, section 2','supports','Publishes the reconstructed “cut, split” root and derives Latin scīre through a “distinguish, know” development, while the route keeps the comparison explicitly proposed.'),
(104,86,'Word History: Etymology notes on scīre','challenges','Reviews competing formations for Latin scīre and says the semantic development from cutting or flaying to knowing is questionable, preventing the route from presenting *skei- as settled.'),
(105,84,'Word History: Etymology and Kids Etymology','supports','Traces Latin nescius “ignorant” through nescīre “not know,” explicitly analyzing the negative knowing family around scīre.'),
(106,84,'Word History: Etymology and First Known Use','supports','Reports Middle English foolish and wanton senses, Anglo-French silly and simple, Latin nescius “ignorant,” and a fourteenth-century English first-known-use horizon.'),
(107,84,'Kids Word Origin and current definitions','supports','Places pleasant and agreeable senses in the nineteenth century and documents their coexistence with precision and fastidiousness senses in current English.');
