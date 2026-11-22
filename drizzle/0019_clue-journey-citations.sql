UPDATE `sources`
SET `url`='https://bosworthtoller.com/6361'
WHERE `id`=21 AND `citation_key`='bt-cliewen';

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(17,21,'Headword cliwen; Cod. Dipl. Apndx. 461 (A.D. 956)','supports','Records Old English cliwen and its spelling variants as a ball or ball of thread, including a dated 956 example, supporting the Anglo-Saxon stage.'),
(18,20,'Historical senses: literal clew and figurative guide','supports','Documents the transition from a literal ball or guiding thread to a figurative guide, the semantic change represented by the English-literature stage.'),
(19,19,'Definition sense 1; Did You Know?; Word History','supports','Defines the modern evidence-and-guidance sense, explains its development from clew and the labyrinth motif, and reports the noun from circa 1665.');
