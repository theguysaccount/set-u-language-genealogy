UPDATE `places` SET
  `note`='AHD reconstructs *ghos-ti- as a stranger, guest, or host within reciprocal duties and *ghos-pot- as the “guest-master” compound behind Latin hospes. Merriam-Webster publishes the compound analysis while recording objections to the amount of phonetic reduction.',
  `temporal_note`='The comparative reconstruction and its published uncertainty do not support one numeric interval or point location for this prehistoric stage.'
WHERE `id`=84;

UPDATE `places` SET
  `note`='Latin hospes (stem hospit-) can denote guest, visitor, or the person receiving a guest. The duality reflects reciprocal hospitality rather than two unrelated words.',
  `temporal_note`='The Latin lexical stage and reciprocal sense are directly cited, but the reviewed sources do not delimit one conservative numeric interval for the whole stage.'
WHERE `id`=85;

UPDATE `places` SET
  `place`='Anglo-French and Middle English host',
  `date_label`='14th c. English receiving-host horizon',
  `note`='Anglo-French oste / hoste carries Latin hospes into Middle English ost / host, where the hospitality noun can still mean host or guest.',
  `date_start`=1300,
  `date_end`=1399,
  `temporal_precision`='century',
  `temporal_note`='The whole fourteenth century is exposed as the reviewed first-known-use horizon for the receiving-host noun, not as an exact date for every Anglo-French or Middle English form.'
WHERE `id`=86;

UPDATE `places` SET
  `place`='English-language host senses',
  `date_label`='14th c. core noun onward; later extensions',
  `note`='The receiving-host noun continues from the fourteenth century and later extends to event venues, media presenters, biological hosts, and networked computers. The route does not pretend those later senses share one onset.',
  `date_start`=1300,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='broad',
  `temporal_note`='The open interval begins with the source-reported fourteenth-century core noun. It does not date the separate later event, media, biological, or computing branches.'
WHERE `id`=87;

UPDATE `places` SET
  `note`='The reconstructed *ghos-ti- family denotes an outsider, stranger, guest, or host under reciprocal duties. Merriam-Webster cautions that the etymon is limited to three western Indo-European branches.',
  `temporal_note`='The reconstruction is directly supported, but no numeric prehistoric interval or single homeland point is inferred from the lexical comparison.'
WHERE `id`=88;

UPDATE `places` SET
  `note`='Germanic *gasti- / *gastiz preserves guest and stranger senses across Germanic reflexes, forming the inherited branch behind Old and Middle English guest.',
  `temporal_note`='The Germanic branch is directly cited, but the sources do not delimit one numeric interval or point location for the reconstructed speech-community stage.'
WHERE `id`=89;

UPDATE `places` SET
  `place`='Old and Middle English guest forms',
  `date_label`='Old English inheritance; 13th c. first-known-use horizon',
  `note`='Old English giest / gyst / gest / gæst continues into Middle English gest / gyst / gust / gist; Old Norse gestr may partly reinforce the initial g.',
  `date_start`=1200,
  `date_end`=1299,
  `temporal_precision`='century',
  `temporal_note`='The numeric layer exposes Merriam-Webster’s thirteenth-century first-known-use horizon for the English noun. The cited Old English inheritance predates that horizon and is not compressed into an invented exact year.'
WHERE `id`=90;

UPDATE `places` SET
  `place`='English-language guest senses',
  `date_label`='13th c. core noun onward; later extensions',
  `note`='The hospitality recipient remains the core English guest, with later customer, program, performance, biological, and material-science extensions.',
  `date_start`=1200,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='broad',
  `temporal_note`='The open interval begins with the source-reported thirteenth-century core noun. It does not assign that onset to every later extended sense.'
WHERE `id`=91;

UPDATE `places` SET
  `note`='Before the Latin enemy sense, reconstructed *ghos-ti- denotes a reciprocal outsider, stranger, guest, or host. Comparative reflex lists connect the family to both hospitality and hostility branches.',
  `temporal_note`='The reconstruction is directly cited, but no numeric prehistoric interval or single point location is inferred from comparative lexical evidence.'
WHERE `id`=92;

UPDATE `places` SET
  `note`='Latin hostis is reported in early use as foreigner or stranger and later as enemy. The semantic narrowing turns the reciprocal outsider into the hostile outsider without severing the shared ancestry.',
  `temporal_note`='The early-to-later Latin semantic change is directly cited, but the reviewed sources do not supply one defensible numeric transition date.'
WHERE `id`=93;

UPDATE `places` SET
  `place`='Middle French and learned Latin hostile',
  `date_label`='pre-1580 learned transmission; exact donor chronology unresolved',
  `note`='English hostile is borrowed from Middle French and Latin; Latin hostīlis is built from hostis “enemy” plus the relational suffix -īlis.',
  `temporal_note`='The borrowing sources are directly cited, but the 1580 English first-use year does not date every Middle French or learned-Latin donor occurrence.'
WHERE `id`=94;

UPDATE `places` SET
  `place`='English-language hostile senses',
  `date_label`='1580 first-known-use horizon onward',
  `note`='From the enemy-related adjective, English hostile expands to unfriendly, oppositional, legal, corporate, workplace, and environmental senses.',
  `date_start`=1580,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='broad',
  `temporal_note`='The open interval begins with Merriam-Webster’s 1580 first-known-use year. It does not imply that every later legal, corporate, social, or environmental extension arose then.'
WHERE `id`=95;

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(84,82,'Root ghos-ti-, reciprocal duties and compound *ghos-pot-','supports','Defines *ghos-ti- through reciprocal hospitality and publishes *ghos-pot- “guest-master” as the compound behind Latin hospes and hospitality descendants.'),
(84,74,'Noun (1) Etymology and reduction note','context','Publishes the *ghosti-pot- compound analysis but records that the considerable reduction in Latin hospes and Slavic gospodĭ has led some scholars to question the exact etymologies.'),
(85,74,'Noun (1) Etymology and reciprocity note','supports','Documents Latin hospes as guest, visitor, or person receiving guests and explains the host/guest duality through reciprocal obligations.'),
(85,80,'host 1 etymology','supports','Traces the hospitality noun through Latin hospes / hospit- and explicitly glosses the earlier Middle English and French form as both host and guest.'),
(86,74,'Noun (1) Etymology and First Known Use','supports','Traces Anglo-French oste / hoste to Middle English ost / host and reports a fourteenth-century first-known-use horizon for the receiving-host noun.'),
(87,74,'Noun (1) definitions and First Known Use','supports','Documents the continuing receiving-host sense plus event, media, biology, geology, and computing extensions, while dating only the core noun to the fourteenth century.'),
(88,82,'Root ghos-ti-, heading and basic form','supports','Defines the reconstructed reciprocal outsider as stranger, guest, or host and connects Germanic guest with Latin hostis and hospes descendants.'),
(88,75,'Noun Etymology, root note','supports','Reconstructs the dialectal Indo-European outsider or guest etymon and cautions that its direct evidence is limited to three western branches.'),
(89,75,'Noun Etymology, Germanic reflex list','supports','Traces English guest through Germanic *gasti- and lists Frisian, Saxon, High German, Norse, and Gothic reflexes with guest or stranger senses.'),
(89,83,'Pokorny ghosti-s; Germanic reflex sections','supports','Catalogs the guest and stranger reflexes across West, North, and East Germanic, supporting the distributed branch without a single map point.'),
(90,75,'Noun Etymology and First Known Use','supports','Documents Old and Middle English guest variants, cautious partial Old Norse reinforcement, and the thirteenth-century English first-known-use horizon.'),
(91,75,'Current noun definitions and First Known Use','supports','Documents the core hospitality recipient plus customer, program, biological, and material extensions; only the core noun receives the thirteenth-century horizon.'),
(92,82,'Root ghos-ti-, heading and descendants','supports','Defines the reciprocal stranger, guest, or host reconstruction and explicitly connects guest, host, hostile, and Latin hospes descendants.'),
(92,83,'Pokorny ghosti-s and Indo-European reflex table','supports','Catalogs Germanic guest, Latin hospitality and hostility, Slavic guest, and Greek hospitality reflexes under the guest or stranger etymon.'),
(93,75,'Noun Etymology, hostis semantic-history note','supports','Reports early Latin hostis as foreigner or stranger and explains its later restriction to hostile outsider or enemy, including Varro’s observation of the shift.'),
(93,83,'Italic reflexes, hostis and hostilis','supports','Lists Latin hostis with guest, stranger, host, and enemy senses and hostilis as the enemy-related adjective within the same reflex family.'),
(94,76,'Word History: Etymology','supports','Traces English hostile through Middle French and Latin hostīlis, analyzing hostīlis from hostis “enemy” plus -īlis.'),
(95,76,'Definitions and Word History: First Known Use','supports','Documents enemy-related, unfriendly, oppositional, environmental, legal, and corporate senses and reports 1580 as the first known English use.'),
(95,81,'Definition and etymology','supports','Documents current enemy, opposition, and adverse senses and derives Latin hostīlis from hostis while linking the adjective to the ghos-ti- family.');
