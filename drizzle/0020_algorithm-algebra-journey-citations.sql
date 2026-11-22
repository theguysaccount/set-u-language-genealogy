INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(107,'mactutor-al-khwarizmi','Abu Ja''far Muhammad ibn Musa Al-Khwarizmi','J. J. O''Connor and E. F. Robertson',1999,'MacTutor History of Mathematics, University of St Andrews','https://mathshistory.st-andrews.ac.uk/Biographies/Al-Khwarizmi/',NULL,'scholarly_reference');

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(56,107,'Biography, discussion of the al-Khwarizmi nisba and Khwarizm south of the Aral Sea','supports','Explains that the name may indicate origin in Khwarizm south of the Aral Sea while preserving biographical uncertainty about whether the scholar or his ancestors came from there.'),
(57,107,'Biography, House of Wisdom in Baghdad','supports','Places al-Khwarizmi and his colleagues at the House of Wisdom in Baghdad and identifies his work on arithmetic and algebra there.'),
(58,58,'ALGORITHM entry: twelfth-century Latin translation and Middle English forms','supports','Documents Latin transmission of al-Khwarizmi''s arithmetic and the later augrim and algorisme forms used for Hindu-Arabic numeral calculation.'),
(59,53,'Definition senses 1–2 and Did You Know?','supports','Defines the modern mathematical, computing, automated-ranking, and public-platform senses and explains the term''s early-twentieth-century technical history.'),
(60,107,'Biography, House of Wisdom and Hisab al-jabr w''al-muqabala','supports','Places al-Khwarizmi''s algebra treatise in his Baghdad scholarly setting and explains that the work''s title supplies the word algebra.'),
(61,58,'ALGEBRA entry: Spanish transmission and Robert of Chester''s Latin translation','supports','Describes al-jabr moving through Spain and Robert of Chester''s circa-1140 Latin translation as Liber algebrae et almucabala.'),
(62,55,'Word History: Etymology and First Known Use','supports','Reports Medieval Latin and Arabic al-jabr ancestry and dates the first known English use to 1551.'),
(63,55,'Definitions 1–2','supports','Defines both elementary symbolic algebra and the wider modern family of abstract mathematical and logical systems.');
