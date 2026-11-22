INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(23,'dutch','Dutch','Indo-European','Germanic',0,1550,NULL,'The Dutch maritime-trade stage in the European tea-word family.'),
(24,'xiamen-min-chinese','Xiamen Min Chinese','Sino-Tibetan','Sinitic',0,1500,NULL,'The Southern Min variety associated with Xiamen, historically called Amoy.'),
(25,'middle-chinese-reconstructed','Middle Chinese (reconstructed reading)','Sino-Tibetan','Sinitic',1,600,1000,'A scholarly reconstruction of the phonological system represented by medieval Chinese rhyme traditions.'),
(26,'old-chinese-reconstructed','Old Chinese (reconstructed)','Sino-Tibetan','Sinitic',1,-1200,200,'The prehistoric and early historic Chinese stage represented here by explicit scholarly reconstructions.'),
(27,'mandarin-chinese','Mandarin Chinese','Sino-Tibetan','Sinitic',0,1300,NULL,'The Sinitic branch represented by modern Mandarin chá.'),
(28,'hindustani','Hindustani (Hindi–Urdu)','Indo-European','Indo-Aryan',0,1200,NULL,'The Hindi–Urdu continuum; both scripts are retained for the tea word where useful.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(36,'tea','tea','tea','/tiː/','noun','The English name of the beverage, carried through the Dutch maritime network from a Southern Min form of the Chinese word 茶.','Tea and chai are not independent root stories. They are two global descendants of the same Chinese word, separated largely—but not universally—by maritime and overland transmission.','reviewed'),
(37,'chai','chai','chai','/tʃaɪ/','noun','In current English, a South Asian-style tea commonly prepared with milk and spices; the word belongs to the overland cha/chay transmission family ultimately derived from Chinese 茶.','English chai means a particular style of tea, but its source-language relatives simply mean tea. The exotic-seeming second word is a returning cousin of English tea.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(102,'wals-tea','Chapter 138: Tea','Östen Dahl',2013,'The World Atlas of Language Structures Online','https://wals.info/chapter/138',NULL,'typological_database'),
(103,'mw-tea','Tea — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/tea',NULL,'historical_dictionary'),
(104,'mw-chai','Chai — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/chai',NULL,'historical_dictionary'),
(105,'baxter-sagart-tea','Baxter–Sagart Old Chinese Reconstruction, Version 1.1','William H. Baxter and Laurent Sagart',2014,'University of Michigan Linguistics','https://sites.lsa.umich.edu/ocbaxtersagart/wp-content/uploads/sites/1415/2025/03/BaxterSagartOCbyMandarinMC2014-09-20.pdf',NULL,'scholarly_database'),
(106,'iranica-tea','ČĀY — Tea','Daniel Balland and Marcel Bazin',2013,'Encyclopaedia Iranica','https://www.iranicaonline.org/articles/cay-tea/',NULL,'scholarly_reference');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(246,36,1,1,'tea','tea','tea-beverage',NULL,'/tiː/','attested','1655–today',1655,NULL,'the leaves of Camellia sinensis or a beverage made by infusing them','This dossier follows the beverage sense. Later meal, social-event, herbal-infusion, and slang senses belong to separate semantic branches.'),
(247,36,23,2,'thee','thee','tea-beverage',NULL,NULL,'attested','17th century–today',1600,NULL,'tea','WALS describes Dutch adoption of a Southern Min form and subsequent diffusion through Europe and Dutch maritime networks.'),
(248,36,24,3,'茶','te','tea-beverage','tê / dé',NULL,'attested','Southern Min, attested in modern descriptions',1500,NULL,'tea','WALS gives Min Nan forms such as te55; Merriam-Webster writes the Xiamen donor form dé. The difference is transliteration and variety, not a second lexeme.'),
(249,36,26,4,'*lˤra','lra','tea-beverage','*lˤra',NULL,'reconstructed','Old Chinese reconstruction',-1200,200,'name of a plant','Baxter and Sagart reconstruct Old Chinese *lˤra for 茶. The Southern Min connection is displayed as a probable Sinitic reflex, not as descent through the later Middle Chinese reading.'),
(250,36,7,5,'UNKNOWN','unknown','tea-deep-boundary',NULL,NULL,'boundary','before the reviewed Old Chinese reconstruction',NULL,NULL,'No unique deeper ancestor is promoted by this dossier.','The boundary does not deny published deeper proposals; it marks the end of the reviewed evidence encoded here.'),
(251,37,1,1,'chai','chai','spiced-tea',NULL,'/tʃaɪ/','attested','1984–today',1984,NULL,'a tea beverage commonly prepared with spices, milk, and sweetener','Merriam-Webster reports the first known use of this English culinary sense in 1984.'),
(252,37,28,2,'चाय / چائے','cay','tea-beverage','cāy',NULL,'attested','modern Hindi–Urdu',1800,NULL,'tea','The English culinary term is associated with South Asian tea culture, but historical dictionaries do not select one unique donor among Hindi, Urdu, Persian, Turkish, and Russian forms.'),
(253,37,27,3,'茶','cha','tea-beverage','chá','/ʈʂʰa˧˥/','attested','modern Mandarin',1300,NULL,'tea','The cha-like source family spread widely overland. The displayed Hindustani-to-Chinese route summarizes a borrowing family whose intermediaries remain disputed.'),
(254,37,25,4,'*drae','drae','tea-beverage','*drae',NULL,'reconstructed','Middle Chinese reconstruction',600,1000,'tea; name of a plant','Baxter and Sagart give Middle Chinese drae. SET-U adds the visible asterisk because the phonological form is reconstructed.'),
(255,37,26,5,'*lˤra','lra','tea-beverage','*lˤra',NULL,'reconstructed','Old Chinese reconstruction',-1200,200,'name of a plant','Shared canonical node with the maritime tea dossier.'),
(256,37,7,6,'UNKNOWN','unknown','chai-deep-boundary',NULL,NULL,'boundary','before the reviewed Old Chinese reconstruction',NULL,NULL,'No unique deeper ancestor is promoted by this dossier.','The boundary preserves proposed deeper comparisons outside the established path until they receive their own cited competing edges.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(211,36,246,247,'borrowing','English tea reflects the Dutch thee-type form; the modern /iː/ follows the wider English raising of earlier /eː/.','The plant and beverage senses were retained, then English developed additional meal, social-event, infusion, and slang branches.','Östen Dahl','probable','WALS describes Dutch-mediated European diffusion, while Merriam-Webster compresses the etymology to borrowing from Xiamen Chinese. The Dutch stage is therefore shown but disputed.','English is recorded from 1655; Dutch maritime diffusion belongs to the seventeenth century.','reviewed'),
(212,36,247,248,'borrowing','Dutch thee adapts the Southern Min te-type pronunciation with Dutch spelling conventions.','The meaning remains tea.','Östen Dahl','established','WALS explicitly connects Dutch contacts at Amoy/Xiamen with Dutch thee.','Dutch commercial contact with Xiamen and wider Asian maritime trade intensified in the seventeenth century.','reviewed'),
(213,36,248,249,'sinitic_reflex','Southern Min te is treated as a divergent Sinitic reflex of the word reconstructed by Baxter and Sagart as Old Chinese *lˤra; the exact sound history is not reduced here to one uncontroversial rule.','The plant or beverage meaning remains tea.','Östen Dahl · William H. Baxter · Laurent Sagart','probable','WALS establishes the Min Nan te family; Baxter and Sagart establish the reviewed Old Chinese reconstruction. The Min branch is not falsely routed through the later Middle Chinese *drae reading.','Old Chinese reconstruction to the historically documented Southern Min form.','reviewed'),
(214,36,249,250,'knowledge_boundary','No older form is promoted beyond Baxter and Sagart’s *lˤra in this reviewed path.','The plant-name history reaches the present editorial evidence horizon.','SET-U editorial boundary','boundary','This is a boundary of the selected evidence, not proof that no deeper proposal has ever been published.',NULL,'reviewed'),
(215,37,251,252,'borrowing','English chai adapts the chay/cāy form as /tʃaɪ/.','A general word for tea specializes in English toward South Asian-style spiced tea.','Merriam-Webster Editors','probable','Merriam-Webster names Hindi and Urdu among several source-language forms without selecting a single donor; the displayed Hindustani stage is representative rather than exclusive.','First known use of the modern English culinary sense: 1984.','reviewed'),
(216,37,252,253,'overland_borrowing_route','Hindustani cāy belongs to the cha/chay family derived from Chinese chá; the final glide and exact sequence of intermediaries are not treated as one settled sound law.','The core meaning remains tea, while preparation traditions vary across receiving languages.','Östen Dahl · Merriam-Webster Editors','probable','WALS supports a broad overland cha/chai pattern, and Merriam-Webster lists multiple intermediate language forms. This edge represents the family route, not a claim of direct Hindi–Mandarin contact.','Overland transmission preceded the modern English borrowing; individual regional dates vary.','reviewed'),
(217,37,253,254,'historical_continuation','Modern Mandarin chá continues the Chinese word represented by reconstructed Middle Chinese *drae, with the onset and vowel changes summarized by the Baxter–Sagart correspondence table.','The tea meaning remains stable.','William H. Baxter · Laurent Sagart','probable','The modern form is attested, while the Middle Chinese phonological value is reconstructed.','Middle Chinese to modern Mandarin.','reviewed'),
(218,37,254,255,'historical_reconstruction','Baxter and Sagart reconstruct Middle Chinese drae from Old Chinese *lˤra for the same character 茶.','The gloss remains a plant name associated with tea.','William H. Baxter · Laurent Sagart','probable','Both phonological stages are scholarly reconstructions even though the character and lexical tradition are historically attested.','Old Chinese to Middle Chinese.','reviewed'),
(219,37,255,256,'knowledge_boundary','No older form is promoted beyond Baxter and Sagart’s *lˤra in this reviewed path.','The plant-name history reaches the present editorial evidence horizon.','SET-U editorial boundary','boundary','This is a boundary of the selected evidence, not proof that no deeper proposal has ever been published.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(211,102,'Chapter 138, discussion of Dutch diffusion from Amoy/Xiamen','supports','Describes Dutch adoption of the Southern Min form and its spread through European and colonial maritime routes.'),
(211,103,'Etymology and First Known Use','context','Compresses the English etymology to Chinese (Xiamen) dé and supplies the 1655 first-use date.'),
(212,102,'Chapter 138, discussion of Min Nan and Dutch contacts','supports','Connects forms such as Min Nan te55 with Dutch thee through contact at Amoy/Xiamen.'),
(213,102,'Chapter 138, values 1 and 2 and explanatory discussion','supports','Establishes the two major Chinese-derived cha and te distributions and identifies the Min Nan te-type family.'),
(213,105,'Table row 茶 chá, PDF page 11: Middle Chinese drae; Old Chinese *lˤra','supports','Supplies the reviewed Old Chinese reconstruction without routing Southern Min through Middle Chinese.'),
(214,105,'Table row 茶 chá, PDF page 11','supports','The selected reconstruction table reaches Old Chinese *lˤra; SET-U makes the end of this reviewed chain explicit.'),
(215,104,'Etymology and First Known Use','supports','Lists Hindi and Urdu chay among the source forms and dates the English culinary word to 1984.'),
(216,102,'Chapter 138, discussion of overland chai-type transmission','supports','Documents the tendency for overland receiving languages to use cha/chai-type forms.'),
(216,104,'Etymology','context','Lists Turkish, Russian, Persian, Hindi, and Urdu chay forms without selecting one unique English donor.'),
(217,105,'Table row 茶 chá, PDF page 11','supports','Aligns Mandarin chá with reconstructed Middle Chinese drae.'),
(218,105,'Table row 茶 chá, PDF page 11','supports','Reconstructs Middle Chinese drae and Old Chinese *lˤra for 茶.'),
(219,105,'Table row 茶 chá, PDF page 11','supports','The selected reconstruction table reaches Old Chinese *lˤra; SET-U makes the end of this reviewed chain explicit.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(51,246,103,'First known use reported as 1655',1655,'Merriam-Webster first-known-use record for tea','First Known Use of tea',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported lexicographic date. SET-U did not inspect the underlying 1655 primary object in this tranche.'),
(52,251,104,'First known use reported as 1984',1984,'Merriam-Webster first-known-use record for chai','First Known Use of chai',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported lexicographic date for the modern English culinary sense. SET-U did not inspect the underlying primary object.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(143,36,'thé','French','Maritime te-type descendant associated with Dutch-mediated European diffusion.',102),
(144,36,'té','Spanish','Maritime te-type descendant associated with Dutch-mediated European diffusion.',102),
(145,36,'Tee','German','Maritime te-type descendant associated with Dutch-mediated European diffusion.',102),
(146,36,'chá','Portuguese','A European cha-type exception linked by WALS to Portuguese contact through Macao rather than the Dutch Xiamen route.',102),
(147,37,'čāy','Persian','Overland cha/chay relative explicitly derived from Chinese ch’a by Encyclopaedia Iranica.',106),
(148,37,'çay','Turkish','Chay-type source relative named in Merriam-Webster’s English etymology.',104),
(149,37,'чай (čaj)','Russian','Chay-type source relative named in Merriam-Webster’s English etymology.',104),
(150,37,'چائے (cāy)','Urdu','Hindustani counterpart represented in Perso-Arabic script.',104);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(144,36,1,'Chinese linguistic horizon','Old Chinese reconstruction','Baxter and Sagart reconstruct *lˤra for 茶; a reconstruction is not a pinpointed archaeological location.',NULL,NULL,'broad'),
(145,36,2,'Xiamen, Fujian','Southern Min contact era','The te-type form associated with Amoy/Xiamen enters the Dutch maritime network.',24479800,118089400,'approximate'),
(146,36,3,'Dutch maritime network','17th century','Dutch thee spreads through European commerce and later colonial routes.',NULL,NULL,'broad'),
(147,36,4,'England','1655 onward','The English tea form is lexicographically reported by 1655.',52355500,-1174300,'regional'),
(148,36,5,'Global te-type distribution','Modern era','WALS classifies 84 of its 230-language sample as deriving from Min Nan te-type forms.',NULL,NULL,'global'),
(149,37,1,'Chinese linguistic horizon','Old and Middle Chinese reconstructions','The cha branch is connected to reconstructed *drae and *lˤra, without pretending that a reconstruction has one exact map point.',NULL,NULL,'broad'),
(150,37,2,'Eurasian overland networks','Historical diffusion','WALS identifies an overland tendency for cha/chai-type forms, with route-specific exceptions.',NULL,NULL,'broad'),
(151,37,3,'Persian-speaking world','By the 11th century in a source report','Encyclopaedia Iranica reports Bīrūnī discussing čāy and its use in China and Tibet.',NULL,NULL,'broad'),
(152,37,4,'South Asia','Modern Hindi–Urdu','The general tea word cāy becomes the culturally salient source family for English culinary chai.',NULL,NULL,'regional'),
(153,37,5,'Global English','1984 onward','Merriam-Webster dates the current English chai entry to 1984.',NULL,NULL,'global');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(75,36,'Does every language follow a simple sea-versus-land rule?','No. WALS documents a powerful distributional tendency, not a universal law: 110 sampled languages have Sinitic cha-derived forms, 84 have Min Nan te-derived forms, and 36 belong to neither class.','established','WALS supplies the 230-language classification and discusses exceptions including Portuguese chá and non-Chinese native terms.','resolved','SET-U presents maritime and overland routes as tendencies and keeps the “other” class visible.'),
(76,36,'Did English tea pass through Dutch?','WALS describes a Dutch-mediated European route, while Merriam-Webster compresses the etymology to borrowing from Xiamen Chinese dé. The displayed Dutch stage is probable, not silently declared unanimous.','probable','The two reviewed references differ in how much transmission history they encode.','open',NULL),
(77,37,'Did English chai come from one identifiable donor language?','The modern culinary sense strongly points toward South Asian usage, but Merriam-Webster lists Turkish, Russian, Persian, Hindi, and Urdu source forms without selecting one unique donor.','probable','The dossier uses Hindustani as a representative route and labels the edge probable rather than erasing the alternatives.','open',NULL),
(78,37,'Is *lˤra the final word on the ancestry of tea?','It is the final reviewed reconstruction in this dossier, not a declaration that no deeper hypothesis exists. No unique deeper form is promoted until a competing analysis is encoded with direct evidence.','boundary','Baxter and Sagart provide the Old Chinese reconstruction; WALS supports the Chinese-derived global families but does not establish one deeper ancestor.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(75,102,'Chapter 138, values and discussion','supports','Counts the cha, te, and other classes and explicitly documents exceptions to the route-level tendency.'),
(76,102,'Chapter 138, Dutch and Amoy/Xiamen discussion','supports','Describes Dutch adoption and diffusion of the Min Nan form.'),
(76,103,'Etymology','challenges','Labels tea as borrowed from Chinese (Xiamen) dé without naming Dutch as the immediate donor.'),
(77,104,'Etymology','supports','Names Turkish, Russian, Persian, Hindi, and Urdu chay forms, leaving the precise immediate source unresolved.'),
(78,105,'Table row 茶 chá, PDF page 11','supports','Supplies *lˤra as the reviewed Old Chinese reconstruction and no single deeper form in this dataset.'),
(78,102,'Chapter 138, introductory and distributional discussion','context','Supports Chinese origin for the major global families while also documenting forms outside them.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`-99;
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(23,36,1,'tea ↔ chai','Tea and chai are the same word after different journeys.','Both routes ultimately reach Chinese 茶. The te-type form traveled especially through Southern Min and Dutch maritime networks; the cha/chai-type family spread especially overland. WALS shows this is a global tendency with real exceptions, not a perfect rule.','A-',100,'The shared Chinese origin and broad route split are strongly sourced. A- preserves exceptions and uncertainty over particular intermediaries.');
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(23,102,'Chapter 138, values and discussion','supports','Documents the two major Chinese-derived word families, their maritime and overland distributions, and the 36-language other class.'),
(23,105,'Table row 茶 chá, PDF page 11','supports','Links Mandarin chá to reconstructed Middle Chinese drae and Old Chinese *lˤra for the same character and lexeme.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(20,36,37,'THE SAME WORD CAME BACK BY ANOTHER ROAD','Tea follows the Southern Min and maritime branch; chai follows the cha/chay and overland branch. Their reviewed paths meet at the shared Old Chinese reconstruction *lˤra, while route exceptions and donor disputes remain visible.',100,'A-','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
	SELECT f.*, CASE
		WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
		ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
	END AS canonical_key
	FROM forms f WHERE f.entry_id BETWEEN 36 AND 37
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:19:cay:attested:sense:tea-beverage',19,'چای','cay','tea-beverage','čāy',NULL,'attested','Persian, reported by the 11th century',1000,NULL,'tea','Graph-only overland branch documented by Encyclopaedia Iranica as derived from Chinese ch’a.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
	WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
	ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.entry_id BETWEEN 36 AND 37;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 36 AND 37;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 36 AND 37;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 36 AND 37;
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'borrowing','Persian čāy is reported as derived from Chinese ch’a, retaining the cha onset and adding the final glide represented in Persian transliteration.','The meaning remains tea.','Daniel Balland · Marcel Bazin','probable','Encyclopaedia Iranica gives the Chinese derivation but says the date and mechanism of Persian adoption remain uncertain.','Chinese to Persian overland transmission; Persian awareness is reported by the 11th century.','reviewed'
FROM lexeme_nodes child,lexeme_nodes parent
WHERE child.canonical_key='node:19:cay:attested:sense:tea-beverage' AND parent.canonical_key='node:27:cha:attested:sense:tea-beverage';
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,106,'Headword etymology and The spread of tea in the Persian world','supports','Derives Persian čāy from Chinese ch’a while explicitly preserving uncertainty over when Persian speakers first encountered the beverage.'
FROM lexeme_edges edge
JOIN lexeme_nodes child ON child.id=edge.child_node_id
JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id
WHERE child.canonical_key='node:19:cay:attested:sense:tea-beverage' AND parent.canonical_key='node:27:cha:attested:sense:tea-beverage' AND edge.relation_type='borrowing';
