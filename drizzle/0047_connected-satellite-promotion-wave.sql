INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(71,'clew','clew','clew','/kluː/','noun · verb','A ball of thread, a nautical corner or line, and the older spelling behind clue.','The clue was first a clew: a literal ball of thread that could guide someone through a maze. The evidence sense came later; the nautical word kept the old spelling.','reviewed'),
(72,'candid','candid','candid','/ˈkændɪd/','adjective','Open or frank in modern English, inherited through French and Latin from a family of brightness and whiteness.','Candid did not begin as a personality trait. Its first recorded English sense was white, before brightness and purity were moralized into frank honesty.','reviewed'),
(73,'candor','candor','candor','/ˈkændər/','noun','Frankness or honest expression, historically a word for brightness, radiance, whiteness, and unstained purity.','Candor was brightness before it was honesty. The modern moral quality is a semantic afterimage of physical radiance and unstained whiteness.','reviewed'),
(74,'calculus','calculus','calculus','/ˈkælkjələs/','noun','A mathematical system, a method of reasoning, or a bodily stone; borrowed from a Latin word for a pebble used in counting.','Calculus was a pebble before it was higher mathematics. Even the pebble''s deeper ancestry is disputed: limestone and a shared Mediterranean substrate source remain competing routes.','reviewed'),
(75,'intellect','intellect','intellect','/ˈɪntəˌlɛkt/','noun','The power or capacity of knowing and reasoning, inherited from Latin intellectus and intellegere.','Intellect belongs to the same Latin gather-and-select family as intelligence, lecture, and collect—but “choosing between” is evidence about morphology, not a complete theory of thought.','reviewed'),
(76,'hospitality','hospitality','hospitality','/ˌhɒspɪˈtælɪti/','noun','The reception and care of guests, inherited through French from the Latin reciprocal host-and-guest family.','Hospitality contains both sides of the door. Its Latin ancestor hospes could name the guest or the host because the relationship was reciprocal.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(183,'mw-clew','Clew — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/clew',NULL,'historical_dictionary'),
(184,'ahd-clew','American Heritage Dictionary: clew','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=clew',NULL,'historical_dictionary'),
(185,'mw-candid','Candid — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/candid',NULL,'historical_dictionary'),
(186,'mw-candor','Candor — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/candor',NULL,'historical_dictionary'),
(187,'mw-intellect','Intellect — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/intellect',NULL,'historical_dictionary'),
(188,'ahd-intellect','American Heritage Dictionary: intellect','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=intellect',NULL,'historical_dictionary'),
(189,'mw-hospitality','Hospitality — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hospitality',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(412,71,1,1,'clew','clew','thread-and-nautical',NULL,'/kluː/','attested','before the 12th century–today',1100,NULL,'a ball of thread; a guiding clue; a nautical corner, loop, or line','The literal and nautical spellings survive beside the now-dominant figurative spelling clue.'),
(413,71,2,2,'clew / clewe','clew','default',NULL,NULL,'attested','Middle English, c. 1100–1500',1100,1500,'a ball of thread, yarn, or cord','Normalized to the reviewed Middle English clew node shared with the clue dossier.'),
(414,71,3,3,'cliewen','cliewen','default',NULL,NULL,'attested','Old English, before 1150',700,1150,'a ball, sphere, or ball of thread',NULL),
(415,71,7,4,'UNKNOWN','unknown','clew-deep-boundary',NULL,NULL,'boundary','before the reviewed Old English form',NULL,NULL,'No direct deeper ancestor is promoted as secure.','Old High German and Sanskrit comparisons remain relatives rather than a forced linear parent.'),

(416,72,1,1,'candid','candid','frank-honest',NULL,'/ˈkændɪd/','attested','1597–today',1597,NULL,'open, frank, honest; originally white in English','The photographic sense is later and is not treated as the source of the honesty sense.'),
(417,72,18,2,'candide','candide','bright-favorable',NULL,NULL,'attested','Middle French, c. 1300–1600',1300,1600,'brilliant; favorably disposed',NULL),
(418,72,9,3,'candidus','candidus','default',NULL,NULL,'attested','Latin antiquity',-300,500,'bright, white, clear; favorable or kind',NULL),
(419,72,9,4,'candēre','candere','default',NULL,NULL,'attested','Latin antiquity',-300,500,'to shine, gleam, or be white',NULL),
(420,72,6,5,'*(s)kend-','skend','shine-make-shine',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'to shine or make shine','Merriam-Webster reconstructs this root behind the Latin brightness family; the older *kand- analysis remains a separate proposed route in the graph.'),
(421,72,7,6,'UNKNOWN','unknown','candid-deep-boundary',NULL,NULL,'boundary','before the reviewed shining reconstruction',NULL,NULL,'No deeper ancestor is promoted as secure.',NULL),

(422,73,1,1,'candor','candor','frankness',NULL,'/ˈkændər/','attested','14th century–today',1300,NULL,'frankness or honest expression; earlier brightness and purity',NULL),
(423,73,11,2,'candeur','candeur','brightness-purity',NULL,NULL,'attested','French',1100,NULL,'brightness, purity, innocence, or candor',NULL),
(424,73,9,3,'candor','candor','brightness-radiance',NULL,NULL,'attested','Latin antiquity',-300,500,'brightness, radiance, whiteness; favorable disposition',NULL),
(425,73,9,4,'candēre','candere','default',NULL,NULL,'attested','Latin antiquity',-300,500,'to shine, gleam, or be white',NULL),
(426,73,6,5,'*(s)kend-','skend','shine-make-shine',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'to shine or make shine','Shared with the candid dossier; the reconstruction remains inferential.'),
(427,73,7,6,'UNKNOWN','unknown','candor-deep-boundary',NULL,NULL,'boundary','before the reviewed shining reconstruction',NULL,NULL,'No deeper ancestor is promoted as secure.',NULL),

(428,74,1,1,'calculus','calculus','mathematics-and-reckoning',NULL,'/ˈkælkjələs/','attested','1666–today',1666,NULL,'a mathematical method; a system of reckoning; also a bodily stone',NULL),
(429,74,9,2,'calculus','calculus','default',NULL,NULL,'attested','Latin antiquity',-300,500,'pebble; bodily stone; counting-board pebble; calculation or account',NULL),
(430,74,9,3,'calx','calx','default',NULL,NULL,'attested','Latin antiquity',-500,500,'lime or limestone','The traditional derivation of calculus from calx is explicitly proposed, not settled.'),
(431,74,7,4,'UNKNOWN','unknown','calculus-traditional-boundary',NULL,NULL,'boundary','before the disputed Latin stone route',NULL,NULL,'No single deeper ancestor is selected for the traditional calx analysis.','A competing common-substrate hypothesis is preserved as a separate canonical branch.'),

(432,75,1,1,'intellect','intellect','reasoning-capacity',NULL,'/ˈɪntəˌlɛkt/','attested','14th century–today',1300,NULL,'the power or capacity of knowing, reasoning, or understanding',NULL),
(433,75,15,2,'intellecte','intellecte','perception-understanding',NULL,NULL,'attested','Old French, c. 800–1400',800,1400,'perception or understanding','American Heritage publishes the French route; Merriam-Webster permits either French or direct Latin transmission.'),
(434,75,9,3,'intellectus','intellectus','perception-understanding',NULL,NULL,'attested','Latin antiquity',-300,500,'perception, discernment, or understanding',NULL),
(435,75,9,4,'intellegere / intelligere','intellegere intelligere','default',NULL,NULL,'attested','Latin antiquity',-300,500,'to understand, perceive, or discern',NULL),
(436,75,9,5,'legere','legere','default',NULL,NULL,'attested','Latin antiquity',-700,500,'to gather, select, choose, or read',NULL),
(437,75,6,6,'*leǵ-','leg','default',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'to collect or gather','The competing *sleǵ- root shape remains a published challenge.'),
(438,75,7,7,'UNKNOWN','unknown','intellect-deep-boundary',NULL,NULL,'boundary','before the disputed gather reconstruction',NULL,NULL,'No deeper ancestor is promoted beyond the live *leǵ- / *sleǵ- dispute.',NULL),

(439,76,1,1,'hospitality','hospitality','guest-reception',NULL,'/ˌhɒspɪˈtælɪti/','attested','14th century–today',1300,NULL,'reception of guests; provision of lodging; generous treatment of visitors',NULL),
(440,76,2,2,'hospitalite','hospitalite','guest-reception',NULL,NULL,'attested','Middle English, c. 1100–1500',1100,1500,'reception of guests or provision of lodging',NULL),
(441,76,12,3,'hospitalité','hospitalite','guest-reception',NULL,NULL,'attested','Anglo-French, c. 1000–1400',1000,1400,'hospitality or entertainment of guests',NULL),
(442,76,9,4,'hospitālitās','hospitalitas','guest-entertainment',NULL,NULL,'attested','Latin antiquity',-300,500,'entertainment or reception of guests',NULL),
(443,76,9,5,'hospitālis','hospitalis','hospitality-quality',NULL,NULL,'attested','Latin antiquity',-300,500,'of a guest; of hospitality; hospitable',NULL),
(444,76,9,6,'hospes (hospit-)','hospes hospit','reciprocal-host-guest',NULL,NULL,'attested','Latin antiquity',-500,500,'guest, visitor, or the person receiving a guest',NULL),
(445,76,6,7,'*ghos-pot-','ghos-pot','guest-master-compound',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'guest-master; participant embodying reciprocal hospitality',NULL),
(446,76,6,8,'*ghos-ti-','ghos-ti','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'stranger, guest, or host under reciprocal duties',NULL),
(447,76,7,9,'UNKNOWN','unknown','hospitality-deep-boundary',NULL,NULL,'boundary','before the secure hospitality reconstruction',NULL,NULL,'No single deeper ancestor of *ghos-ti- is treated as secure.','A hypothetical exchange-root analysis remains a separate proposed branch in the graph.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(342,71,412,413,'inheritance','Middle English clew / clewe survives as Modern English clew with loss of inflection and stabilized spelling.','The literal thread-ball sense survives; nautical senses develop from the corner or fastening of a sail and the guiding spelling clue diverges later.','Merriam-Webster · American Heritage editors','established',NULL,'The modern spelling overlaps chronologically with the historical evidence sense.','reviewed'),
(343,71,413,414,'inheritance','Old English vowel sequence and inflection simplified in Middle English.','A concrete ball or wound thread was retained.','Bosworth–Toller · historical lexicography','established',NULL,NULL,'reviewed'),
(344,71,414,415,'knowledge_boundary','The reviewed sources compare related forms but do not promote one direct ancestor beyond Old English cliewen.','The thread-ball history reaches the current evidence horizon.','SET-U editorial boundary','boundary','Akin forms are preserved as relatives, not converted into a linear parent.',NULL,'reviewed'),

(345,72,416,417,'borrowing','English borrowed the adjective through Middle French candide with spelling and pronunciation adapted to English.','Brightness, favor, and unblemished quality develop toward openness, fairness, and frank expression.','Merriam-Webster editors','established',NULL,'The first reported English sense in 1597 is white.','reviewed'),
(346,72,417,418,'borrowing','Middle French candide was borrowed from Latin candidus with regular Romance adaptation.','Latin brightness and whiteness support French brilliance and favorable disposition.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(347,72,418,419,'derivation','candidus belongs to the candēre family of shining and whiteness.','Physical brightness and whiteness extended to clarity and unblemished quality.','Latin lexicography','established',NULL,NULL,'reviewed'),
(348,72,419,420,'inheritance','Latin candēre is derived from a zero-grade stative formation of reconstructed *(s)kend-.','Shining, gleaming, and whiteness retain the reconstructed brightness core.','Merriam-Webster editors','probable','The form is reconstructed and the graph also preserves an older proposed *kand- route.',NULL,'reviewed'),
(349,72,420,421,'knowledge_boundary','No older form is promoted beyond the reviewed *(s)kend- reconstruction.','The brightness history reaches its current comparative horizon.','SET-U editorial boundary','boundary','The asterisk marks an inference; the boundary prevents it from becoming an invented deeper word.',NULL,'reviewed'),

(350,73,422,423,'borrowing','English candor was borrowed through French candeur with English spelling and pronunciation.','Brightness and unstained purity become frankness and honest expression.','Merriam-Webster editors','established',NULL,'Merriam-Webster also allows direct Latin participation in the borrowing history.','reviewed'),
(351,73,423,424,'borrowing','French candeur was borrowed from Latin candor with Romance sound and spelling adaptation.','Radiance, whiteness, and favorable disposition support purity, innocence, and later frankness.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(352,73,424,425,'derivation','Latin candor is an abstract noun in -or formed beside candēre.','The act or state of shining yields brightness, radiance, and whiteness.','Merriam-Webster · Latin lexicography','established',NULL,NULL,'reviewed'),
(353,73,425,426,'inheritance','Latin candēre is derived from a zero-grade stative formation of reconstructed *(s)kend-.','Shining, gleaming, and whiteness retain the reconstructed brightness core.','Merriam-Webster editors','probable','The form is reconstructed and the graph also preserves an older proposed *kand- route.',NULL,'reviewed'),
(354,73,426,427,'knowledge_boundary','No older form is promoted beyond the reviewed *(s)kend- reconstruction.','The brightness history reaches its current comparative horizon.','SET-U editorial boundary','boundary','The asterisk marks an inference; the boundary prevents it from becoming an invented deeper word.',NULL,'reviewed'),

(355,74,428,429,'borrowing','English borrowed Latin calculus without a mediating vernacular form in the reviewed route; pronunciation and plural behavior were anglicized.','Latin counting and reckoning specialize into mathematical systems while the bodily-stone sense also survives.','Merriam-Webster editors','established',NULL,'Merriam-Webster reports English use in 1666.','reviewed'),
(356,74,429,430,'proposed_derivation','Calculus has traditionally been treated as an irregular diminutive of calx, but the phonology and meanings are problematic and a shared non-Indo-European source with a Greek stone-word has been proposed.','A small stone or pebble may connect to lime or limestone; the route is unsettled.','Merriam-Webster editors summarizing Festus and Beekes','proposed','The calculus-to-calx derivation is not secure.',NULL,'reviewed'),
(357,74,430,431,'knowledge_boundary','The traditional limestone route and substrate alternatives do not yield a single secure deeper chain.','The graph stops at the live etymological dispute.','SET-U editorial boundary','boundary','The competing Greek/common-source branch is preserved separately.',NULL,'reviewed'),

(358,75,432,433,'borrowing','English intellect continues a medieval French or directly Latin learned form; this dossier displays the published Old French route.','Perception and understanding become the modern capacity for knowing and reasoning.','Merriam-Webster · American Heritage editors','probable','Merriam-Webster allows Middle French or direct Latin transmission; American Heritage specifies Old French intellecte.','The English record begins in the 14th century.','reviewed'),
(359,75,433,434,'borrowing','Old French intellecte was borrowed from Latin intellectus with Romance spelling and pronunciation.','Latin perception and understanding remain the core meaning.','American Heritage editors','established',NULL,NULL,'reviewed'),
(360,75,434,435,'derivation','Latin intellectus is the action noun and participial formation of intellegere.','The act of perceiving or understanding becomes the faculty or product of understanding.','Merriam-Webster · American Heritage editors','established',NULL,NULL,'reviewed'),
(361,75,435,436,'derivation','Latin intellegere is traditionally analyzed as inter- plus legere, with phonological assimilation.','Selecting or discerning among becomes understanding; the exact semantic bridge should not be over-literalized.','Merriam-Webster · Latin lexicography','probable','The morphology is strong; a slogan such as “choose between” is not a full semantic history.',NULL,'reviewed'),
(362,75,436,437,'inheritance','Latin legere is traditionally assigned to the *leǵ- family; *sleǵ- remains a published alternative.','Gathering and selecting extend into reading.','Indo-European lexicography','probable','Root shape is disputed.',NULL,'reviewed'),
(363,75,437,438,'knowledge_boundary','No deeper ancestor is promoted beyond *leǵ-.','The gathering, selection, and understanding path reaches its reviewed horizon.','SET-U editorial boundary','boundary','The boundary preserves the live *leǵ- / *sleǵ- dispute.',NULL,'reviewed'),

(364,76,439,440,'inheritance','Middle English hospitalite loses final -e and stabilizes as hospitality under learned spelling influence.','Reception of guests and provision of lodging broaden into the modern social and commercial hospitality field.','Merriam-Webster editors','established',NULL,'English use is reported from the 14th century.','reviewed'),
(365,76,440,441,'borrowing','Middle English hospitalite was borrowed from Anglo-French hospitalité with English spelling adaptation.','Reception and accommodation of guests remain central.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(366,76,441,442,'borrowing','Anglo-French hospitalité continues Latin hospitālitās through Romance sound and suffix adaptation.','Entertainment or reception of guests remains the inherited meaning.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(367,76,442,443,'derivation','Latin hospitālitās is an abstract noun in -itās formed from hospitālis.','The adjective “hospitable” becomes the state or practice of entertaining guests.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(368,76,443,444,'derivation','Latin hospitālis is formed from the stem hospit- of hospes with the adjective suffix -ālis.','The host/guest relationship becomes the quality of being for guests or hospitable.','Merriam-Webster editors','established',NULL,NULL,'reviewed'),
(369,76,444,445,'compound_reflex','Latin hospes (stem hospit-) is analyzed as a reduced reflex of the compound *ghos-pot-, with substantial phonetic reduction acknowledged by the sources.','A “guest-master” encoded the reciprocal role in which the same person could be guest on one occasion and host on another.','Merriam-Webster · American Heritage Indo-European Roots','probable','The host/guest reciprocity is well supported; Merriam-Webster notes that the degree of phonetic reduction has led some scholars to question the precise compound etymology.',NULL,'reviewed'),
(370,76,445,446,'compound_component','The first member *ghos- of *ghos-pot- continues the *ghos-ti- guest/stranger base; the compound also contains *pot- “master.”','The reciprocal outsider becomes the “guest-master,” the person who stands for mutual duties of hospitality.','Merriam-Webster · American Heritage Indo-European Roots','probable','The compound analysis is reconstructed and has a separate *pot- component edge in the canonical graph.',NULL,'reviewed'),
(371,76,446,447,'knowledge_boundary','No single deeper ancestor of *ghos-ti- is selected for this dossier.','The hospitality lineage reaches an explicit evidence boundary.','SET-U editorial boundary','boundary','A proposed *ǵhes- analysis remains a competing branch elsewhere in the graph.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(342,183,'Definitions; Did You Know?; Word History: Etymology','supports','Documents the surviving literal and nautical senses and the Middle English to Old English line.'),
(342,184,'Headword clew; etymology','context','Independently publishes the Middle English and Old English ancestry.'),
(343,183,'Word History: Middle English clewe, from Old English cliewen','supports','Supplies the direct historical sequence.'),
(343,21,'Headword cliewen','supports','Provides the reviewed Old English lexical form.'),
(344,183,'Word History: akin forms after Old English cliewen','supports','The source offers comparisons rather than one promoted direct parent, defining the editorial boundary.'),

(345,185,'Did You Know?; Word History; First Known Use','supports','Documents the original white sense, French transmission, and later honesty family.'),
(346,185,'Word History: Middle French candide from Latin candidus','supports','Supplies the French-to-Latin borrowing.'),
(347,185,'Word History: candidus corresponding to candēre','supports','Connects the Latin adjective to the shining verb.'),
(347,26,'Headword candidus','context','Supplies independent Latin lexical evidence.'),
(348,185,'Word History: Indo-European *(s)kend- analysis','supports','Publishes the zero-grade stative derivation and comparative brightness family.'),
(349,185,'Word History: deepest published reconstruction','supports','Defines the reviewed horizon beyond which no ancestor is asserted.'),

(350,186,'Did You Know?; Word History: French and Latin borrowing','supports','Documents the path from brightness and purity to honest expression.'),
(351,186,'Word History: French candeur from Latin candor','supports','Supplies the French-to-Latin borrowing.'),
(352,186,'Word History: candor corresponding to candēre','supports','Documents the Latin abstract noun formation.'),
(352,27,'Headword candeo','context','Supplies independent Latin lexical evidence for the shining verb.'),
(353,185,'Word History: Indo-European *(s)kend- analysis','supports','Publishes the zero-grade stative derivation and comparative brightness family.'),
(354,185,'Word History: deepest published reconstruction','supports','Defines the reviewed horizon beyond which no ancestor is asserted.'),

(355,60,'Etymology and First Known Use','supports','Documents direct Latin borrowing, the pebble and calculation senses, and the 1666 English horizon.'),
(356,60,'Etymology note','supports','Reports the traditional calx derivation and the competing Greek/common-substrate hypothesis.'),
(356,61,'Etymology note','challenges','Records problems with the limestone-family derivation.'),
(357,60,'Etymology note: unresolved alternatives','supports','The unresolved Latin, Greek, and substrate routes define the boundary.'),

(358,187,'Word History: Middle English from Middle French or Latin; First Known Use','supports','Preserves the source''s route ambiguity and 14th-century horizon.'),
(358,188,'Headword etymology: Middle English from Old French intellecte','supports','Publishes the specific French route displayed in the dossier.'),
(359,188,'Headword etymology: Old French intellecte from Latin intellectus','supports','Supplies the French-to-Latin borrowing.'),
(360,187,'Word History: intellectus from intellegere','supports','Connects the Latin noun to the understanding verb.'),
(360,188,'Headword etymology: Latin intellectus from intellegere','context','Independently publishes the same Latin derivation.'),
(361,45,'Word History: inter- plus legere','supports','Documents the traditional morphological analysis.'),
(361,50,'Headword intellegō','context','Supplies Latin lexical evidence.'),
(362,37,'Root *leg-','supports','Publishes the traditional reconstruction and Latin reflex.'),
(362,38,'Argument for *sleg-','challenges','Preserves the competing initial-s reconstruction.'),
(363,38,'Reconstruction boundary','supports','The root-shape dispute defines the reviewed stopping point.'),

(364,189,'Word History: Middle English hospitalite; First Known Use','supports','Documents the English historical form and 14th-century horizon.'),
(365,189,'Word History: borrowed from Anglo-French hospitalité','supports','Supplies the Anglo-French borrowing.'),
(366,189,'Word History: hospitalité borrowed from Latin hospitālitās','supports','Supplies the Romance-to-Latin sequence.'),
(367,189,'Word History: hospitālitās from hospitālis plus -itās','supports','Documents the Latin abstract-noun derivation.'),
(368,189,'Word History: hospitālis from hospit-, hospes','supports','Documents the adjective formation from the reciprocal host/guest noun.'),
(368,77,'Word History: hospitālis from hospes','context','Independently supports the shared canonical edge.'),
(369,74,'Word History: hospes and reconstructed compound','supports','Reports the reciprocal roles and the compound analysis with phonological caution.'),
(369,82,'Root ghos-ti-; compound *ghos-pot-','context','Publishes the reconstructed guest-master compound.'),
(370,82,'Root ghos-ti-; compound *ghos-pot-','supports','Identifies the guest base and *pot- master component.'),
(371,82,'Root ghos-ti- horizon','supports','Defines the secure reviewed reconstruction while deeper proposals remain separate.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(106,412,183,'before the 12th century',NULL,'Merriam-Webster lexicographic first-use record for clew','First Known Use, noun sense 1',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported horizon for the literal ball-of-thread sense; no underlying Old or Middle English object was directly inspected.'),
(107,416,185,'1597',1597,'Merriam-Webster lexicographic first-use record for candid','First Known Use, adjective sense 4',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported year for the English white sense; no underlying 1597 printed witness was directly inspected.'),
(108,422,186,'14th century',NULL,'Merriam-Webster lexicographic first-use record for candor','First Known Use, brightness sense',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported century for the English brightness sense; no underlying medieval witness was directly inspected.'),
(109,428,60,'1666',1666,'Merriam-Webster lexicographic first-use record for calculus','First Known Use, calculation sense',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported year; no underlying 1666 printed witness was directly inspected.'),
(110,432,187,'14th century',NULL,'Merriam-Webster lexicographic first-use record for intellect','First Known Use, capacity-for-knowledge sense',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported century; no underlying medieval witness was directly inspected.'),
(111,439,189,'14th century',NULL,'Merriam-Webster lexicographic first-use record for hospitality','First Known Use, reception-of-guests sense',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported century; no underlying medieval witness was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(229,71,'clue','English','later dominant spelling for the figurative evidence sense',183),
(230,71,'kliuwa','Old High German','published akin form meaning ball',183),
(231,71,'glauḥ','Sanskrit','published akin form meaning lump',183),
(232,72,'candidate','English','white-clad office-seeker from the same Latin brightness family',185),
(233,72,'candor','English','parallel brightness-to-honesty descendant',185),
(234,72,'candle','English','distant brightness and burning-family relative',185),
(235,73,'candid','English','parallel brightness-to-honesty adjective',186),
(236,73,'candidate','English','white-clad office-family cousin',26),
(237,73,'candescence','English','learned shining-family descendant',27),
(238,74,'calculate','English','verb descendant through Latin calculāre',60),
(239,74,'calculator','English','instrument and agent descendant of the reckoning family',60),
(240,74,'κάχληξ','Ancient Greek','proposed stone-word comparison, not a direct ancestor',60),
(241,75,'intelligence','English','parallel descendant of Latin intellegere',187),
(242,75,'intelligent','English','adjective from the same understanding verb',45),
(243,75,'lecture','English','cousin through Latin legere and the gather/read family',50),
(244,76,'hospital','English','institutional descendant of the same hospitality family',189),
(245,76,'hotel','English','lodging doublet from the hospes family',79),
(246,76,'host','English','role-word cousin through Latin hospes',74);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(260,71,1,'Anglo-Saxon England','Old English, before the 12th century','Old English cliewen names the ball or wound thread behind later clew.',52200000,-1500000,'regional',NULL,1100,'before','The numeric ceiling represents the source''s before-the-12th-century horizon, not a first spoken use.'),
(261,71,2,'Medieval England','Middle English, c. 1100–1500','Middle English clewe / clew continues the literal thread-ball word.',52200000,-1500000,'regional',1100,1500,'range','The interval is the dossier''s historical-language range, not a claim that every spelling persisted uniformly.'),
(262,71,3,'English maritime world','nautical specialization, date unresolved','Clew develops specialized senses for sail corners, loops, and the lines attached to them.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reviewed source documents the nautical senses but does not supply one first date or point location.'),
(263,71,4,'Global English','literal and nautical survival to today','Clew survives beside clue; clue dominates the figurative evidence sense while clew remains required in nautical uses.',NULL,NULL,'global',1100,NULL,'open','The open interval begins at the reviewed English horizon; it does not date every sense or spelling separately.'),

(264,72,1,'Indo-European linguistic horizon','reconstructed *(s)kend-','Comparative evidence reconstructs a shining root without locating one archaeological point.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The source establishes a linguistic reconstruction, not a datable migration coordinate.'),
(265,72,2,'Latin-speaking Mediterranean','Latin antiquity','Candēre and candidus name shining, brightness, and whiteness.',41900000,12500000,'broad',-300,500,'range','The broad interval locates the reviewed Latin lexical horizon, not one moment of semantic innovation.'),
(266,72,3,'France','Middle French, c. 1300–1600','French candide carries brilliance and favorable disposition toward English.',46600000,2200000,'regional',1300,1600,'range','The interval is the dossier''s Middle French range; the source does not identify one first borrowing event.'),
(267,72,4,'England and global English','1597–today','English candid begins in the source record with white and develops clear, fair, honest, frank, and photographic senses.',52200000,-1500000,'broad',1597,NULL,'open','1597 is a lexicographic first-known-use year, not proof of coinage or first speech.'),

(268,73,1,'Latin-speaking Mediterranean','Latin antiquity','Latin candor names brightness, radiance, whiteness, and favorable disposition.',41900000,12500000,'broad',-300,500,'range','The interval locates the reviewed Latin horizon rather than one first occurrence.'),
(269,73,2,'France','French transmission, date unresolved','French candeur carries brightness and purity into the borrowing history.',46600000,2200000,'regional',NULL,NULL,'unresolved','The reviewed source gives the French route but not one precise first date.'),
(270,73,3,'England','14th-century English record','Candor is first reported in English in its brightness or unstained-purity family.',52200000,-1500000,'regional',1300,1399,'century','The bounds encode the reported century, not a directly inspected earliest object.'),
(271,73,4,'Global English','14th century–today','The moral sense of frank and honest expression becomes dominant while the brightness history remains recoverable.',NULL,NULL,'global',1300,NULL,'open','The open interval begins with the reported English century and does not date the completion of the semantic shift.'),

(272,74,1,'Roman world','Latin antiquity','Latin calculus names a pebble, a bodily stone, a counting-board pebble, a calculation, or an account.',41900000,12500000,'broad',-300,500,'range','The interval locates the reviewed Latin lexical horizon, not the first use of each sense.'),
(273,74,2,'Mediterranean stone-word contact zone','deeper route unresolved','Traditional Latin limestone derivation competes with a Greek comparison and a possible shared non-Indo-European source.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The source explicitly leaves both chronology and geographic origin unresolved.'),
(274,74,3,'England','1666 English record','Merriam-Webster reports calculus in English in 1666 for a method or result of calculation.',52200000,-1500000,'regional',1666,1666,'exact','1666 is the reviewed lexicographic first-known-use year, not proof of the first spoken use.'),
(275,74,4,'Global mathematical and scientific English','1666–today','Calculus expands across mathematics, logic, decision theory, medicine, and dentistry.',NULL,NULL,'global',1666,NULL,'open','The interval begins at the reviewed English horizon; later technical specializations are not assigned invented first dates.'),

(276,75,1,'Roman world','Latin antiquity','Latin intellectus and intellegere name perception, discernment, and understanding.',41900000,12500000,'broad',-300,500,'range','The interval locates the reviewed Latin lexical horizon rather than one first occurrence.'),
(277,75,2,'Medieval France','Old French transmission, c. 800–1400','French intellecte is one published route into English; direct Latin influence remains possible.',46600000,2200000,'regional',800,1400,'range','The interval is the dossier''s Old French range and does not resolve the competing direct-Latin route.'),
(278,75,3,'England','14th-century English record','Intellect appears in the English record for the capacity for knowledge or understanding.',52200000,-1500000,'regional',1300,1399,'century','The bounds encode the reported century, not a directly inspected earliest object.'),
(279,75,4,'Global English','14th century–today','Intellect names a faculty, an individual capacity, and a person of notable reasoning ability.',NULL,NULL,'global',1300,NULL,'open','The interval begins at the reviewed English horizon without claiming uniform global adoption.'),

(280,76,1,'Indo-European linguistic horizon','reconstructed hospitality family','Comparative evidence reconstructs the reciprocal outsider and guest-master forms without locating one archaeological point.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The sources establish linguistic comparison, not a precise place or date.'),
(281,76,2,'Latin-speaking Mediterranean','Latin antiquity','Hospes, hospitālis, and hospitālitās encode reciprocal guest and host roles and the practice of receiving guests.',41900000,12500000,'broad',-500,500,'range','The interval locates the reviewed Latin family rather than one innovation event.'),
(282,76,3,'France and England','medieval French and English transmission','Anglo-French hospitalité enters Middle English as hospitalite.',50000000,1000000,'broad',1100,1500,'range','The broad interval covers the dossier''s medieval transmission stages without inventing one crossing date.'),
(283,76,4,'Global English','14th century–today','Hospitality expands from reception and lodging into social, institutional, travel, and commercial domains.',NULL,NULL,'global',1300,NULL,'open','The interval begins with the reported English century and does not date every later specialization.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(260,183,'Word History: Old English cliewen; First Known Use','supports','Documents the Old English form and the before-12th-century horizon.'),
(261,183,'Word History: Middle English clewe','supports','Documents the Middle English stage.'),
(262,183,'Definitions: nautical senses','supports','Documents sail-corner, loop, and line senses while leaving their first date unresolved.'),
(263,183,'Did You Know? and definitions','supports','Documents the spelling split and continued literal and nautical use.'),
(264,185,'Word History: Indo-European *(s)kend-','supports','Supplies the reconstruction without an archaeological point.'),
(265,185,'Word History: Latin candidus and candēre','supports','Documents the Latin brightness family.'),
(266,185,'Word History: Middle French candide','supports','Documents the French transmission stage.'),
(267,185,'Did You Know? and First Known Use','supports','Reports 1597 for the white sense and traces the later semantic range.'),
(268,186,'Word History: Latin candor and candēre','supports','Documents the Latin brightness family.'),
(269,186,'Word History: French candeur','supports','Documents French transmission while leaving its exact date unresolved.'),
(270,186,'First Known Use','supports','Reports the 14th-century English horizon.'),
(271,186,'Did You Know?; definitions; First Known Use','supports','Documents the shift from brightness and purity toward honest expression.'),
(272,60,'Etymology: Latin calculus senses','supports','Documents pebble, bodily stone, counting, calculation, and account senses.'),
(273,60,'Etymology note','supports','Preserves the unresolved Latin, Greek, and substrate alternatives without geographic overclaim.'),
(274,60,'First Known Use','supports','Reports 1666 for the English calculation sense.'),
(275,60,'Definitions and First Known Use','supports','Documents the English horizon and modern technical range.'),
(276,187,'Word History: Latin intellectus and intellegere','supports','Documents the Latin understanding family.'),
(277,188,'Headword etymology: Old French intellecte','supports','Documents the French route displayed by the dossier.'),
(278,187,'First Known Use','supports','Reports the 14th-century English horizon.'),
(279,187,'Definitions and First Known Use','supports','Documents the continuing faculty, capacity, and person senses.'),
(280,82,'Root ghos-ti- and compound *ghos-pot-','supports','Supplies the reconstructed hospitality horizon without a point location.'),
(281,189,'Word History: hospitālitās, hospitālis, hospes','supports','Documents the Latin guest-reception family.'),
(282,189,'Word History: Anglo-French hospitalité to Middle English hospitalite','supports','Documents the medieval French-to-English transmission.'),
(283,189,'Definitions and First Known Use','supports','Documents the English hospitality sense from the 14th century onward.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(112,71,'Was a clew originally evidence?','No. The oldest reviewed sense is a ball of thread. The guiding and evidence senses develop from stories in which a thread leads someone through a difficult place.','established','Merriam-Webster distinguishes the literal sense, the mythic guiding association, and the later 17th-century clue spelling.','resolved','The dossier keeps clew and clue connected while separating literal ancestry from later metaphor.'),
(113,71,'Can the akin German and Sanskrit forms be used as direct parents?','No. The reviewed source labels Old High German kliuwa and Sanskrit glauḥ as akin forms, not successive ancestors of English clew.','established','Merriam-Webster supplies comparisons after the Old English form but no single direct parent beyond it.','resolved','The comparisons appear as relatives and the direct path ends at an explicit boundary.'),
(114,72,'Did candid always mean honest?','No. The first reported English sense is white; clear, pure, fair, honest, frank, and photographic senses develop later.','established','Merriam-Webster reports the 1597 white sense and explains the semantic expansion from Latin and French brightness.','resolved','The dossier orders physical color before moral and behavioral meanings.'),
(115,72,'Is the deepest brightness root *kand- or *(s)kend-?','The graph preserves both published analyses. The newer Merriam-Webster route uses *(s)kend- and explains candēre through a zero-grade stative formation; the prior *kand- route remains proposed.','proposed','Merriam-Webster publishes *(s)kend- while the existing reviewed candidate dossier preserves a proposed *kand- analysis.','open',NULL),
(116,73,'Was candor originally frankness?','Not exclusively. Its earliest English family includes brightness and unstained purity; straightforward honesty becomes the dominant modern sense.','established','Merriam-Webster explicitly contrasts the earliest brightness and purity senses with modern honest expression.','resolved','The semantic sequence is shown as radiance to purity to frankness, without claiming one instantaneous shift.'),
(117,73,'Did English borrow candor only through French?','French candeur is a published route, while Merriam-Webster describes the English borrowing as French and Latin. Direct learned Latin influence therefore remains visible.','probable','Merriam-Webster gives both French and Latin in the English borrowing history.','open',NULL),
(118,74,'Is Latin calculus securely a diminutive of calx?','No. Festus accepted the traditional limestone derivation, but the phonology and meanings are problematic. The edge remains proposed.','proposed','Merriam-Webster records the traditional analysis and its problems rather than presenting it as settled.','open',NULL),
(119,74,'Could Latin calculus and Greek káchlēx share a non-Indo-European source?','Yes, as a proposal. Beekes'' substrate diagnostics for Greek variants motivate a possible common source, but no form is securely reconstructed.','proposed','Merriam-Webster summarizes the Greek comparison, Beekes'' variant evidence, and the shared-source hypothesis.','open',NULL),
(120,75,'Did intellect enter English through French or directly from Latin?','Both routes are published. American Heritage specifies Old French intellecte; Merriam-Webster permits Middle French or Latin. The displayed French route is probable, not exclusive.','probable','Two reviewed dictionaries preserve different levels of specificity for the transmission route.','open',NULL),
(121,75,'Does intellect literally mean “choosing between”?','The morphology of intellegere is traditionally analyzed through inter- and legere, and selection informs the semantic history. That slogan is not a complete theory of cognition.','probable','Merriam-Webster and Latin lexicography support the morphology; SET-U separates it from over-literal psychological claims.','resolved','The edge carries the morphological insight and an explicit anti-essentialist confidence note.'),
(122,76,'Could Latin hospes mean both host and guest?','Yes. The reciprocal hospitality relationship allowed the same participant to receive hospitality on one occasion and return it on another.','established','Merriam-Webster and American Heritage publish both roles under the same Latin form.','resolved','The graph preserves one polysemous Latin node rather than inventing unrelated homonyms.'),
(123,76,'Is hospes securely reduced from *ghos-pot-?','The guest-master compound is a strong published analysis, but the amount of phonetic reduction has led scholars to question its exact form.','probable','Merriam-Webster records the phonological objection while American Heritage publishes the compound analysis.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(112,183,'Did You Know?; First Known Use','supports','Separates the literal thread-ball sense from the guiding metaphor and later clue spelling.'),
(113,183,'Word History: akin to Old High German kliuwa and Sanskrit glauḥ','supports','Labels the forms as comparisons rather than a linear ancestry chain.'),
(113,184,'Etymology: Middle English clewe from Old English cliwen','context','Independently stops the direct published path at Old English.'),
(114,185,'Did You Know?; First Known Use','supports','Reports white as the original English sense and traces later honesty meanings.'),
(115,185,'Word History: *(s)kend- derivation','supports','Publishes the reconstructed shining root used by the new dossiers.'),
(115,27,'Headword candeo and existing proposed *kand- route','context','Preserves the older reviewed Latin base and its separately qualified deeper analysis.'),
(116,186,'Earliest-use note; Did You Know?','supports','Contrasts brightness and unstained purity with modern frank expression.'),
(117,186,'Word History: borrowed from French and Latin','supports','Keeps both channels visible in the borrowing history.'),
(118,60,'Etymology note: Festus and irregular diminutive analysis','supports','Documents the traditional claim and why it is not secure.'),
(118,61,'Etymology note','challenges','Supplies the limestone-family objections.'),
(119,60,'Etymology note: Greek káchlēx and Beekes substrate variants','supports','Documents the possible common non-Indo-European source without reconstructing it.'),
(120,187,'Word History: Middle French or Latin','supports','Publishes the route ambiguity.'),
(120,188,'Headword etymology: Old French intellecte','supports','Publishes the specific French route.'),
(121,45,'Word History: inter- plus legere','supports','Documents the traditional morphological analysis.'),
(121,50,'Headword intellegō','context','Supplies the Latin lexical evidence while not turning morphology into a theory of mind.'),
(122,189,'Word History: hospes “guest, host”','supports','Documents both reciprocal roles.'),
(122,74,'Did You Know? and Word History','context','Explains reciprocity across host and guest.'),
(123,74,'Word History: *ghos-pot- and phonetic-reduction objection','supports','Publishes both the compound and the scholarly caution.'),
(123,82,'Root ghos-ti- and compound *ghos-pot-','context','Provides independent comparative support for the compound analysis.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(56,71,2001,'clew','A clue was a ball of thread.','The literal clew could guide someone through a maze; only later did clue become the dominant spelling for evidence that guides reasoning.','A',96,'The semantic sequence and spelling split are explicit; deeper direct ancestry stops at Old English.'),
(57,72,2002,'candid','Candid was white before it was honest.','English first records candid in the white sense. Brightness and unblemished clarity later support fairness, frankness, and honest expression.','A',97,'The color-first sequence is directly reported; the deeper reconstructed root remains qualified.'),
(58,73,2003,'candor','Candor was radiance before frankness.','Latin candor and the earliest English family name brightness, whiteness, or unstained purity before modern honest expression becomes dominant.','A',96,'The semantic contrast is explicit in the reviewed source.'),
(59,74,2004,'calculus','Higher mathematics began with a pebble.','Latin calculus named a counting-board pebble and a calculation. Its deeper stone ancestry is still disputed between a limestone derivation and a possible shared Mediterranean substrate source.','A−',99,'The pebble-to-calculation link is strong; the pre-Latin route is explicitly unresolved.'),
(60,75,2005,'intellect','Intellect belongs to the gather-and-select family.','Latin morphology connects understanding with inter- and legere, the gather, select, and read family—but the historical pieces are not a complete theory of cognition.','A−',94,'The morphology is strong and the claim explicitly resists root essentialism.'),
(61,76,2006,'hospitality','Hospitality contains both host and guest.','Latin hospes could name either participant in reciprocal hospitality; the modern practice descends from a relationship, not just the host''s action.','A',98,'The reciprocal polysemy is directly published; the remote compound reduction remains probable.');
--> statement-breakpoint
WITH ranked AS (
  SELECT id, ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT ranked.new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(56,183,'Did You Know?; Word History; First Known Use','supports','Documents the literal thread-ball origin, guiding metaphor, and later clue spelling.'),
(57,185,'Did You Know?; Word History; First Known Use','supports','Documents the 1597 white sense and the brightness-to-honesty history.'),
(58,186,'Earliest-use note; Did You Know?; Word History','supports','Documents brightness, radiance, whiteness, purity, and later honest expression.'),
(59,60,'Etymology and etymology note','supports','Documents counting pebbles and the unresolved limestone, Greek, and substrate alternatives.'),
(60,45,'Word History: inter- plus legere','supports','Documents the traditional gather/select morphology.'),
(60,38,'Argument for *sleg-','context','Preserves the root-shape dispute behind the deeper family.'),
(61,189,'Word History: hospes “guest, host”','supports','Documents the reciprocal roles inside the hospitality lineage.'),
(61,74,'Did You Know? and reconstructed compound note','context','Explains reciprocity and preserves caution about the remote compound.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(34,71,5,'THE THREAD BECAME THE EVIDENCE','Clew keeps the literal thread-ball and nautical spelling; clue follows the same word into a figurative guide for reasoning.',100,'A','reviewed'),
(35,72,7,'THE HONEST PERSON AND THE WHITE-CLAD CANDIDATE','Candid moves brightness and whiteness toward frankness; candidate names the Roman office-seeker made conspicuous by white clothing.',99,'A','reviewed'),
(36,73,7,'THE FRANK ANSWER AND THE WHITE TOGA','Candor and candidate meet in the Latin shining family: one moralizes brightness, the other names the bright-white office-seeker.',98,'A','reviewed'),
(37,74,17,'THE EQUATION STILL CONTAINS THE PEBBLE','Calculus is the Latin counting pebble; calculate follows the same noun through the verb for reckoning.',100,'A','reviewed'),
(38,75,13,'INTELLECT AND INTELLIGENCE SHARE DISCERNMENT','Intellect and intelligence diverge as Latin nouns but converge at intellegere, traditionally analyzed through inter- and legere.',99,'A−','reviewed'),
(39,76,25,'THE WELCOME AND THE WARD SHARE THE GUEST','Hospitality and hospital both descend through hospitālis and hospes; social welcome and medical institution split from one guest-and-host family.',99,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id BETWEEN 71 AND 76
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.entry_id BETWEEN 71 AND 76;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 71 AND 76;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 71 AND 76;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 71 AND 76;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:10:kachlex:attested:sense:shore-shingle',10,'κάχληξ','kachlex','shore-shingle','attested','Ancient Greek',-700,600,'a shingle or pebble on a shoreline','Graph-only comparison published in the calculus etymology note; not a direct ancestor of Latin calculus.','reviewed'),
('boundary:canonical:calculus-common-substrate',7,'UNKNOWN SUBSTRATE SOURCE','unknown-substrate-source','calculus-common-substrate','boundary','undated Mediterranean substrate hypothesis',NULL,NULL,'A possible non-Indo-European source shared by Latin calculus and Greek káchlēx','No lexical form is securely reconstructed; the shared-source proposal ends at an explicit boundary.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'competing_source','Latin calculus may be a borrowing from the same unidentified source as Greek káchlēx; no donor form is reconstructed.','Both words denote a small stone or shoreline shingle, but the direction and mechanism of transmission are unknown.','Merriam-Webster editors summarizing Beekes','proposed','This is a shared-source hypothesis, not a Greek-to-Latin ancestry claim.',NULL,'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent
WHERE child.canonical_key='node:9:calculus:attested' AND parent.canonical_key='boundary:canonical:calculus-common-substrate';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'competing_source','Greek káchlēx and its cited variants display alternations Beekes treats as substrate signals; no donor form is reconstructed.','The Greek shoreline-shingle word may share an unidentified source with Latin calculus.','Merriam-Webster editors summarizing Beekes','proposed','The alternations motivate a substrate hypothesis but do not identify a historical donor language or form.',NULL,'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent
WHERE child.canonical_key='node:10:kachlex:attested:sense:shore-shingle' AND parent.canonical_key='boundary:canonical:calculus-common-substrate';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,60,'Etymology note: Greek káchlēx, Beekes variants, and possible common source','supports','Publishes the shared non-Indo-European source proposal while withholding a reconstructed donor form.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id
WHERE child.canonical_key='node:9:calculus:attested' AND parent.canonical_key='boundary:canonical:calculus-common-substrate' AND edge.relation_type='competing_source';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,60,'Etymology note: káchlēx, kóchlax, áchlax, and substrate diagnostics','supports','Documents the Greek comparison and the alternations used to motivate the substrate analysis.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id
WHERE child.canonical_key='node:10:kachlex:attested:sense:shore-shingle' AND parent.canonical_key='boundary:canonical:calculus-common-substrate' AND edge.relation_type='competing_source';
