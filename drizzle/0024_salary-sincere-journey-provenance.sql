UPDATE `sources`
SET `url`='https://www.cnrtl.fr/etymologie/sincere'
WHERE `id`=17 AND `citation_key`='cnrtl-sincere';

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(109,'mw-sincere','Sincere — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/sincere',NULL,'historical_dictionary');

UPDATE `forms` SET
  `date_label`='1533–today',
  `date_start`=1533
WHERE `id`=21;

UPDATE `lexeme_nodes` SET
  `date_label`='1533–today',
  `date_start`=1533
WHERE `id`=(SELECT `node_id` FROM `form_node_links` WHERE `form_id`=21);

UPDATE `forms` SET
  `date_label`='15th c.',
  `date_start`=1400,
  `date_end`=1499
WHERE `id`=22;

UPDATE `lexeme_nodes` SET
  `date_label`='15th c.',
  `date_start`=1400,
  `date_end`=1499
WHERE `id`=(SELECT `node_id` FROM `form_node_links` WHERE `form_id`=22);

UPDATE `attestations` SET
  `source_id`=109,
  `date_label`='1533 first known use',
  `year`=1533,
  `witness`='English lexicographic first-use record',
  `locator`='Word History: First Known Use',
  `editorial_note`='This is a lexicographic first-use report from Merriam-Webster, not a directly inspected primary object.'
WHERE `id`=6;

UPDATE `places` SET
  `note`='Comparative evidence supports a reconstructed Proto-Indo-European salt family. Exact stem notation varies, and no point or numeric interval is inferred from the lexical reconstruction.',
  `geographic_confidence`='uncertain',
  `temporal_note`='The cited comparative wordlist supports a prehistoric reconstruction but does not assign this lexical stage one defensible calendar interval.'
WHERE `id`=9;

UPDATE `places` SET
  `note`='Latin salārium denotes official pay and is morphologically connected with salt. The sources do not say Roman soldiers received ordinary wages in literal salt.',
  `temporal_note`='The Roman lexical stage is directly cited, but the current sources do not define a conservative numeric interval for the route.'
WHERE `id`=10;

UPDATE `places` SET
  `note`='Old French and Anglo-French compensation forms carry the Latin payment word toward English; no narrower numeric transmission window is promoted from the current source.',
  `temporal_note`='The borrowing chain is directly supported, but its current route evidence does not justify normalizing the prose period into calendar bounds.'
WHERE `id`=11;

UPDATE `places` SET
  `date_label`='13th c. first-known-use horizon',
  `note`='Merriam-Webster reports the first known English use of salary in the thirteenth century.',
  `date_start`=1200,
  `date_end`=1299,
  `temporal_precision`='century',
  `temporal_note`='The whole thirteenth century is exposed as a conservative first-known-use horizon; it is not an invented exact year.'
WHERE `id`=12;

UPDATE `places` SET
  `note`='Latin sincerus is attested with a field including whole, pure, and genuine. A published probable deeper analysis remains contextual rather than a settled parent node.',
  `temporal_note`='The Latin lexical stage is directly cited, but the route does not infer one numeric interval for all of its senses or attestations.'
WHERE `id`=13;

UPDATE `places` SET
  `date_label`='15th c.; attestations in 1441 and 1474',
  `note`='CNRTL records French sincère in 1441 and again in 1474 as a learned borrowing from Latin sincerus.',
  `date_start`=1400,
  `date_end`=1499,
  `temporal_precision`='century',
  `temporal_note`='The numeric layer exposes the fifteenth century containing the reviewed 1441 and 1474 attestations instead of pretending they delimit the word''s full life.'
WHERE `id`=14;

UPDATE `places` SET
  `date_label`='1533 first-known-use horizon',
  `note`='Merriam-Webster reports 1533 as the first known English use of sincere.',
  `date_start`=1533,
  `date_end`=1533,
  `temporal_precision`='exact',
  `temporal_note`='1533 is the reviewed lexicographic first-known-use year, not a claim that every English use began at one instant.'
WHERE `id`=15;

UPDATE `places` SET
  `place`='Folk-etymology record',
  `date_label`='modern circulation; onset unresolved',
  `note`='The sine cera story appears here only as a rejected explanation. The cited record does not establish where or when that story originated.',
  `geographic_confidence`='uncertain',
  `temporal_note`='A rejection source does not date the origin or diffusion of the myth, so no numeric onset is encoded.'
WHERE `id`=16;

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(9,15,'Appendix 2, “Proto-Indo-European to English” wordlist, salt item','supports','Lists the Proto-Indo-European salt item and its Latin reflex behind this stage. Exact stem notation varies among sources, so the route asserts a reconstructed salt family without inventing a location or date.'),
(10,13,'Word History: Etymology and Note','supports','Derives Latin salārium “official pay” through salārius from sāl “salt” while explaining that the familiar soldiers-paid-in-salt story has no ancient-source basis.'),
(10,14,'s.v. salārium','supports','Records salārium as an attested Latin lexical item for the Roman stage. The entry supports the word, not payment in literal salt.'),
(11,13,'Word History: Etymology','supports','Traces English salary through Middle English salarie or salaire from Anglo-French and Old French before Latin salārium.'),
(12,13,'Word History: First Known Use','supports','Reports the first known English use of salary in the thirteenth century; the route encodes that century rather than inventing an exact year.'),
(13,18,'s.v. sincerus','supports','Documents the attested Latin adjective and its range of whole, pure, sound, and genuine senses used for this lexical stage.'),
(13,109,'Word History: Etymology','context','Offers a probable deeper analysis involving sem- and a growth element. SET-U preserves it as a proposal and does not convert it into a consensus ancestor.'),
(14,17,'Étymologie et Histoire, attestations dated 1441 and 1474','supports','Records French sincère in 1441 and 1474 and identifies it as a learned borrowing from classical Latin sincerus.'),
(15,109,'Word History: First Known Use','supports','Reports 1533 as the first known English use of sincere; this supports the exact first-use horizon, not the date of every English occurrence.'),
(16,16,'Etymology section: rejection of sine cera','supports','Rejects the “without wax” derivation. The route therefore presents the story as a disconfirmed explanation and withholds an unsupported origin date and map point.');
