UPDATE `sources`
SET `url`='https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED26245'
WHERE `id`=2 AND `citation_key`='med-love';

UPDATE `sources`
SET `url`='https://bosworthtoller.com/54831'
WHERE `id`=3 AND `citation_key`='bt-lufu';

UPDATE `sources`
SET `url`='https://lrc.la.utexas.edu/lex/master/1188'
WHERE `id`=6 AND `citation_key`='uta-pie-love';

UPDATE `sources`
SET `url`='https://academic.oup.com/book/48521',
  `doi`='10.1093/oso/9780199287918.001.0001'
WHERE `id`=15 AND `citation_key`='mallory-adams-2006';

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(108,'crystal-2003-global-english','Why English? The historical context','David Crystal',2003,'Cambridge University Press','https://www.cambridge.org/core/books/abs/english-as-a-global-language/why-english-the-historical-context/39284D2FB6C02AA7106B6B9313CD9E6B','10.1017/CBO9780511486999.004','monograph_chapter');

UPDATE `places` SET
  `date_label`='Proto-Indo-European prehistory',
  `note`='The *leubh- form is reconstructed from daughter-language evidence. The approximate point visualizes a broad steppe-homeland hypothesis; it is not the location of an excavated word.'
WHERE `id`=1;

UPDATE `places` SET
  `place`='Proto-Germanic speech community',
  `date_label`='Proto-Germanic prehistory',
  `note`='Comparative Germanic evidence supports reconstructed *lubō. The speech community is deliberately not reduced to one map coordinate.',
  `latitude_e6`=NULL,
  `longitude_e6`=NULL,
  `geographic_confidence`='broad'
WHERE `id`=2;

UPDATE `places` SET
  `date_label`='Old English period; English record before 12th c.',
  `note`='Bosworth–Toller documents Old English lufu; Merriam-Webster traces Middle English love from that form and reports English use before the twelfth century.',
  `date_end`=1199,
  `temporal_precision`='before',
  `temporal_note`='The directly reviewed lexicographic record establishes an English first-known-use horizon before the twelfth century. The route does not promote the older undemonstrated “before 725” label into numeric chronology.'
WHERE `id`=3;

UPDATE `places` SET
  `note`='The word continues through the worldwide history of English: colonial expansion, migration, localization, and modern international use.',
  `date_start`=1500,
  `temporal_precision`='open',
  `temporal_note`='The numeric layer marks the early-modern-to-current global-English stage, not the first known use of love. Cambridge traces the worldwide expansion of English from early modern voyages through colonial and postcolonial adoption.'
WHERE `id`=4;

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1,6,'Pokorny Etymon leubh- and Indo-European reflex table','supports','Publishes reconstructed leubh- “to love, like, care for” and the cross-branch reflexes that motivate it; it does not localize the prehistoric speech community.'),
(1,15,'Ch. 6 “A Place in Time,” pp. 86–105; Ch. 26 “Origins: The Never-Ending Story,” pp. 442–463','context','Frames Proto-Indo-European time depth as the dating of a hypothetical construct and surveys the unresolved homeland problem. It supports cautious temporal and geographic context, not a word-specific archaeological location.'),
(2,4,'s.v. *lubō, Germanic love noun','supports','Supplies the reconstructed Proto-Germanic love noun used for this linguistic stage. The geographic point has been removed because this lexical source does not establish one precise location.'),
(3,3,'Entry “lufu,” permanent record 54831','supports','Documents Old English lufu with cited textual uses and meanings including love and acts prompted by love.'),
(3,1,'Word History: Etymology and First Known Use','supports','Traces Middle English love from Old English lufu and reports first known noun and verb use before the twelfth century.'),
(4,1,'Definitions 1–8; Word History','supports','Documents the living English noun and verb across affection, desire, devotion, address, activity, and other current senses while preserving the Old English lineage.'),
(4,108,'Chapter 2, “Why English? The historical context,” pp. 29–71','context','Traces English across the Americas, Asia, the Antipodes, Africa, and the Pacific and explains why its representation is global. This supports the route context, not a claim that love itself drove that expansion.');
