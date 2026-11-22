UPDATE `places` SET
  `place`='Reconstructed Proto-Slavic speech communities',
  `note`='University of Warsaw reconstructs Proto-Slavic *orbota and derives the North Slavic robota forms through an initial metathesis. The route does not turn that distributed comparative reconstruction into a single homeland point.',
  `latitude_e6`=NULL,
  `longitude_e6`=NULL,
  `geographic_confidence`='uncertain',
  `temporal_note`='The reconstructed lexical stage is directly cited, but the reviewed source does not delimit one numeric prehistoric interval or a single geographic point.'
WHERE `id`=68;

UPDATE `places` SET
  `date_label`='1920 R.U.R. coinage',
  `note`='Karel Čapek used robot in the 1920 Czech play R.U.R.; Merriam-Webster reports that his brother Josef suggested the name from Czech robota “forced labor.”',
  `date_start`=1920,
  `date_end`=1920,
  `temporal_precision`='exact',
  `temporal_note`='1920 is the cited date of the Czech R.U.R. coinage. The source supports Prague as the play’s named cultural origin, while the coordinate represents the city rather than every early occurrence.'
WHERE `id`=69;

UPDATE `places` SET
  `place`='English-language R.U.R. translation and print',
  `date_label`='1922 first-use horizon; inspected 1923 edition',
  `note`='Merriam-Webster reports English robot in 1922 through translation of R.U.R. A separately preserved 1923 English edition was directly inspected: its photographed title page prints “Rossum’s Universal Robots,” but SET-U does not mislabel that object as the first English use.',
  `date_start`=1922,
  `date_end`=1923,
  `temporal_precision`='range',
  `temporal_note`='The 1922–1923 interval joins two distinct cited claims: the lexicographic 1922 first-use horizon and the directly inspected 1923 title-page object. It is not a claim that the borrowing process lasted exactly two years.'
WHERE `id`=70;

UPDATE `places` SET
  `place`='English-language robot senses',
  `date_label`='1922 core word onward; later extensions',
  `note`='The fictional artificial worker becomes the English term for machines performing tasks, automatic mechanisms, and people behaving in a mechanical or unfeeling way. The route leaves software and other later uses to their own evidence instead of assigning all extensions to 1922.',
  `date_start`=1922,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='broad',
  `temporal_note`='The open interval begins with Merriam-Webster’s 1922 English first-known-use horizon. It does not date every later mechanical, figurative, software, or automation sense to that year.'
WHERE `id`=71;

UPDATE `places` SET
  `note`='Latin musculus is a diminutive of mūs “mouse”: literally a little mouse, then an anatomical muscle name. The morphology is secure, while Merriam-Webster leaves the motivating resemblance open between shape, tendon, and movement beneath the skin.',
  `temporal_note`='The Latin derivation and the uncertainty around its visual motivation are directly cited, but the reviewed sources do not delimit one conservative numeric interval or point location for the whole Latin stage.'
WHERE `id`=72;

UPDATE `places` SET
  `place`='Old French anatomical muscle',
  `note`='American Heritage traces the anatomical word through Old French muscle from Latin musculus. The route names the transmission language without inventing a northern-French point or a numeric borrowing date.',
  `geographic_confidence`='broad',
  `temporal_note`='The Old French borrowing channel is directly cited, but the reviewed entry does not supply one conservative numeric interval or a point location for this route stage.'
WHERE `id`=73;

UPDATE `places` SET
  `place`='Middle English anatomical muscle',
  `date_label`='Middle English borrowing; 14th c. first-use horizon',
  `note`='Old French muscle enters Middle English as the anatomical word. Merriam-Webster reports a fourteenth-century English first-known-use horizon; the same spelling could also name the mollusk, so the anatomical sense remains explicit.',
  `date_start`=1300,
  `date_end`=1399,
  `temporal_precision`='century',
  `geographic_confidence`='broad',
  `temporal_note`='The full fourteenth century is exposed as the source-reported English first-use horizon for the anatomical noun, not as an exact date for every Middle English form or French-to-English contact.'
WHERE `id`=74;

UPDATE `places` SET
  `place`='English-language muscle senses',
  `date_label`='14th c. anatomical noun onward; later extensions',
  `note`='The anatomical noun continues from the fourteenth century and extends figuratively to strength, force, and coercive power. SET-U keeps this route separate from mussel even though both words shared the spelling muscle in Middle English and converge in the Latin mouse family.',
  `date_start`=1300,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='broad',
  `temporal_note`='The open interval begins with the reviewed fourteenth-century anatomical horizon. It does not date every figurative strength, force, or power extension to that century.'
WHERE `id`=75;

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(68,64,'Formal development from Proto-Indo-European *orbʰo- to Proto-Slavic *orb-ota and North Slavic *robota','supports','Reconstructs Proto-Slavic *orbota, analyzes its derivational family, and describes the formal development toward Czech robota without assigning a single homeland point.'),
(69,62,'Word History: Czech R.U.R. and naming note','supports','Reports the 1920 Czech play R.U.R., Karel Čapek’s use of robot, Josef Čapek’s naming suggestion, and Czech robota “forced labor” as the immediate lexical source.'),
(70,62,'Word History: English translation and First Known Use','supports','Reports that robot entered English through translation of R.U.R. and gives 1922 as the first-known-use horizon.'),
(70,101,'Directly inspected 1923 title-page spread','supports','The photographed English title page prints “R.U.R. (Rossum’s Universal Robots).” This directly inspected object verifies the plural word in that edition, not the first English use.'),
(71,62,'Current definitions and Word History: First Known Use','supports','Documents machine, automatic-mechanism, and machinelike-person senses while dating only the core English word to the 1922 first-known-use horizon.'),
(72,65,'Did You Know? and Word History: Etymology','supports','Derives Latin musculus as the diminutive of mūs “mouse” and explains the muscle name through perceived resemblance to a mouse.'),
(72,73,'Muscle and mussel history, resemblance discussion','context','Records multiple cautious resemblance explanations—shape with tendon or movement beneath skin—without selecting one as securely established.'),
(73,68,'Etymology: Middle English, Old French, and Latin chain','supports','Traces anatomical muscle through Old French muscle from Latin musculus, supporting the transmission language without a fabricated point location.'),
(74,68,'Etymology: Middle English from Old French','supports','Documents the anatomical Middle English borrowing through Old French muscle.'),
(74,65,'Word History: Etymology and First Known Use','supports','Reports the Middle English and Latin history and a fourteenth-century first-known-use horizon for the English anatomical noun.'),
(75,65,'Current definitions and Word History: First Known Use','supports','Documents the continuing anatomical noun plus strength, power, and force senses, while dating only the core English noun to the fourteenth century.'),
(75,73,'Muscle and mussel history, Middle English spelling overlap','context','Documents that anatomical muscle and the mollusk word were both spelled muscle in Middle English, supporting the explicit sense split rather than a collapsed route.');
