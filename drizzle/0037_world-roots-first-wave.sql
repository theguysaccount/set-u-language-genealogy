INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(35,'japanese','Japanese','Japonic','Japanese',0,1868,NULL,'Modern Japanese; the numeric start is a broad period anchor, not a first-attestation claim for every form.'),
(36,'finnish','Finnish','Uralic','Finnic',0,1500,NULL,'Attested Finnic language; the numeric start is a broad written-language anchor.'),
(37,'proto-finnic','Proto-Finnic','Uralic','Finnic',1,-500,500,'Comparatively reconstructed Finnic ancestor; dates are deliberately broad.'),
(38,'palaeo-germanic','Palaeo-Germanic','Indo-European','Germanic',1,-1500,-500,'Early reconstructed Germanic horizon used in Petri Kallio''s proposed sauna etymology; dates are approximate.'),
(39,'isizulu','isiZulu','Niger-Congo','Atlantic-Congo · Bantu · Nguni',0,1800,NULL,'Attested Nguni Bantu language; the numeric start is a broad modern-language anchor.'),
(40,'isixhosa','isiXhosa','Niger-Congo','Atlantic-Congo · Bantu · Nguni',0,1800,NULL,'Attested Nguni Bantu language; the numeric start is a broad modern-language anchor.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(51,'emoji','emoji','emoji','/iːˈmoʊdʒi/','noun','An English borrowing of Japanese 絵文字, literally a picture-character compound built from 絵 e “picture” and 文字 moji “written character.”','Emoji is not emotion plus icon. That is emoticon. Emoji is Japanese 絵 e “picture” plus 文字 moji “written character.”','reviewed'),
(52,'sauna','sauna','sauna','/ˈsɔːnə/','noun','The English name of a Finnish steam bath, borrowed from Finnish sauna; its deeper Finnic history is secure enough to reconstruct, while a proposed ancient Germanic source remains actively qualified.','The internationally emblematic Finnish word may itself be an ancient Germanic loan from a word for a pile or stack—perhaps the heated stone pile at the heart of the early sauna.','reviewed'),
(53,'ubuntu','ubuntu','ubuntu','/ʊˈbʊntuː/','noun','A South African English borrowing associated with isiXhosa and isiZulu ubuntu “humanity, goodness,” morphologically connected to the human stem -ntu and, in Nguni analysis, an abstract-noun prefix ubu-.','Ubuntu is not morphologically a sentence meaning “I am because we are.” Its word structure is more exact: an abstract-noun formation on the stem for human or person.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(130,'mw-emoji','Emoji — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/emoji',NULL,'historical_dictionary'),
(131,'unicode-emoji-faq','FAQ — Emoji and Pictographs','Unicode Consortium',NULL,'Unicode Consortium','https://www.unicode.org/faq/emoji_dingbats.html',NULL,'technical_reference'),
(132,'mw-sauna','Sauna — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/sauna',NULL,'historical_dictionary'),
(133,'kotus-sauna','Sauna','Kirsti Aapala · Klaas Ruppel',2019,'Institute for the Languages of Finland (Kotus)','https://kotus.fi/sana/sauna/',NULL,'scholarly_reference'),
(134,'kallio-2008-sauna','The Etymology of Finnish sauna “Sauna”','Petri Kallio',2008,'Peeters · University of Helsinki Research Portal','https://researchportal.helsinki.fi/en/publications/the-etymology-of-finnish-sauna-sauna/',NULL,'peer_reviewed_chapter'),
(135,'ylikoski-kiuas','Suomen kiuas, karjalan kiukua ja havaintoja etymologian tutkimusperinteestä','Jussi Ylikoski',NULL,'Sananjalka','https://journal.fi/sananjalka/article/download/86743/45491',NULL,'scholarly_article'),
(136,'dsae-ubuntu','Ubuntu, noun','Dictionary of South African English Editors',NULL,'Dictionary of South African English','https://dsae.co.za/entry/ubuntu/e07415',NULL,'historical_dictionary'),
(137,'praeg-magadla-ubuntu','Ubuntu: Curating the Archive','Leonhard Praeg · Siphokazi Magadla, editors',2014,'University of KwaZulu-Natal Press · University of Pretoria repository','https://www.up.ac.za/media/shared/82/Thinking%20Africa/Update%20Sep%202019/ubuntu-curating-the-archive-text.zp180337.pdf',NULL,'scholarly_book');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(335,51,1,1,'emoji','emoji','digital-picture-character',NULL,'/iːˈmoʊdʒi/','attested','1997–today',1997,NULL,'a small image, symbol, or icon used in electronic communication','Merriam-Webster reports English first known use in 1997 and the Japanese borrowing analysis.'),
(336,51,35,2,'絵文字','絵文字','pictograph-compound','emoji',NULL,'attested','Modern Japanese',1868,NULL,'picture character; pictograph','The modern-language date is only a period anchor. Unicode and Merriam-Webster analyze the form as 絵 e “picture” plus 文字 moji “character.”'),
(337,51,7,3,'UNKNOWN','unknown','emoji-whole-word-boundary',NULL,NULL,'boundary','before any single whole-word ancestor of 絵文字',NULL,NULL,'No single linear lexical parent is promoted for the Japanese compound.','The canonical graph branches from 絵文字 into its two cited components instead of pretending the compound has one whole-word parent.'),
(338,52,1,1,'sauna','sauna','steam-bath',NULL,'/ˈsɔːnə/','attested','1881–today',1881,NULL,'a Finnish-style steam bath or the room in which it is taken','Merriam-Webster reports English first known use in 1881 and direct borrowing from Finnish.'),
(339,52,36,2,'sauna','sauna','bath-building',NULL,NULL,'attested','Finnish',1500,NULL,'sauna; bathhouse','The date is a broad Finnish-language anchor, not a claimed first use. Kotus documents the word in Finnish and close Finnic languages.'),
(340,52,37,3,'*sakna','sakna','sauna-stove-building',NULL,NULL,'reconstructed','Proto-Finnic reconstruction',-500,500,'sauna; proposed earlier stove reference','Kallio reconstructs *sakna; the dating is intentionally broad and the earlier stove sense belongs to the proposed Germanic analysis.'),
(341,52,38,4,'*stagh-ná-','staghna','pile-stack-stove',NULL,NULL,'reconstructed','Palaeo-Germanic reconstruction',-1500,-500,'pile or stack; proposed source of a stone-pile stove term','Kallio''s proposed donor form as reported and discussed in the peer-reviewed record; the exact notation is a reconstruction, not an attested word.'),
(342,52,7,5,'UNKNOWN','unknown','sauna-deep-boundary',NULL,NULL,'boundary','before the proposed Palaeo-Germanic comparison',NULL,NULL,'No deeper ancestor is promoted beyond the reviewed proposal.','The trail stops at a disputed reconstructed comparison rather than presenting a speculative deeper lineage as fact.'),
(343,53,1,1,'ubuntu','ubuntu','humanity-philosophy',NULL,'/ʊˈbʊntuː/','attested','1926–today',1926,NULL,'human-heartedness, compassion, essential humanity; a philosophy associated with these qualities','The Dictionary of South African English supplies a 1926 source-reported citation and identifies isiXhosa and isiZulu origin.'),
(344,53,39,2,'ubuntu','ubuntu','humanity-compound',NULL,NULL,'attested','Modern isiZulu',1800,NULL,'humanity; goodness','The numeric date is only a modern-language anchor. The whole form branches morphologically into ubu- and -ntu in the canonical graph.'),
(345,53,7,3,'UNKNOWN','unknown','ubuntu-whole-word-boundary',NULL,NULL,'boundary','before any single whole-word ancestor of ubuntu',NULL,NULL,'No single linear whole-word parent is promoted for the Nguni formation.','The graph exposes the prefix and human stem separately and also preserves isiXhosa as a parallel source-language route.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(285,51,335,336,'borrowing','Japanese emoji was romanized and adapted to English phonology without treating its spelling as an English compound.','Japanese “picture character” entered English as the name for the digital symbols.','Merriam-Webster Editors · Unicode Consortium','established','Both sources explicitly identify the Japanese word and its two components.','Merriam-Webster reports English use by 1997.','reviewed'),
(286,51,336,337,'knowledge_boundary','No single predecessor form is asserted because 絵文字 is synchronically analyzable as a two-component Japanese compound.','The whole-word lineage stops while the canonical graph branches into “picture” and “written character.”','SET-U editorial boundary · Unicode Consortium','boundary','This is a topology boundary, not a claim that the Japanese components have no histories of their own.',NULL,'reviewed'),
(287,52,338,339,'borrowing','Finnish sauna entered English with only modest adaptation to English pronunciation.','The Finnish bath and bathhouse word retained its central referent in English.','Merriam-Webster Editors','established','Merriam-Webster explicitly gives Finnish as the source language.','English first known use is reported as 1881.','reviewed'),
(288,52,339,340,'inheritance','Modern Finnish sauna continues reconstructed Proto-Finnic *sakna through Finnic sound development; the intermediate changes are not over-specified here.','The sauna or bath-building sense continues, while an earlier stove reference remains tied to the deeper proposal.','Petri Kallio · Kotus editors','probable','The Finnish form is attested and the Proto-Finnic form is comparative reconstruction.','Proto-Finnic prehistory to attested Finnish.','reviewed'),
(289,52,340,341,'proposed_borrowing','Kallio compares Proto-Finnic *sakna with Palaeo-Germanic *stagh-ná- as an ancient borrowing adapted to Finnic phonotactics.','A Germanic pile or stack term is proposed to have named a stone-pile stove, then the sauna containing it.','Petri Kallio · Jussi Ylikoski','proposed','Kotus says the Germanic proposal has gained support; Ylikoski also records explicit scholarly skepticism.','Proposed prehistoric borrowing before attested Finnish.','reviewed'),
(290,52,341,342,'knowledge_boundary','No deeper form is promoted beyond the disputed Palaeo-Germanic reconstruction in this dossier.','The dossier reaches the current reviewed proposal and stops.','SET-U editorial boundary','boundary','A proposed donor form is not converted into a certain ancestral chain.',NULL,'reviewed'),
(291,53,343,344,'borrowing','The Nguni form was adopted into South African English with the source-language spelling substantially preserved.','A word for humanity or goodness became an English philosophical and ethical term.','Dictionary of South African English Editors','probable','The dictionary names both isiXhosa and isiZulu; the dossier uses isiZulu as one representative route while the canonical graph preserves isiXhosa as a parallel competing donor.','The English record is attested by 1926.','reviewed'),
(292,53,344,345,'knowledge_boundary','No single whole-word predecessor is asserted because ubuntu is morphologically analyzable and the source-language route is not uniquely isolated.','The whole-word lineage stops while the graph exposes the abstract prefix and human stem.','SET-U editorial boundary · Praeg and Magadla','boundary','The boundary prevents a productive Bantu noun-class formation from being flattened into one fictional lexical parent.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(285,130,'Word History — Etymology; First Known Use','supports','Identifies borrowing from Japanese and reports English use in 1997.'),
(285,131,'What are emoji?','supports','Identifies Japanese 絵文字 and its two components.'),
(286,131,'What are emoji? — 絵 e plus 文字 moji','supports','Supports branching the compound into two components rather than inventing one whole-word parent.'),
(287,132,'Word History — Etymology; First Known Use','supports','Identifies Finnish as the English source and reports 1881.'),
(288,133,'Answer — Finnic distribution and Germanic proposal','supports','Documents the Finnish word and its close Finnic distribution.'),
(288,134,'pp. 313–319; Proto-Finnic *sakna analysis','supports','Publishes the reconstructed Finnic form used in the proposed account.'),
(289,134,'pp. 313–319; Palaeo-Germanic comparison','supports','Publishes the ancient Germanic loan proposal.'),
(289,133,'Answer — Germanic origin has gained support','supports','Reports the proposal and its pile or stone-stove semantic bridge.'),
(289,135,'Discussion of Kallio 2008 and LÄGLOS response','challenges','Records that LÄGLOS treats the etymology skeptically while Koivulehto saw no problem.'),
(290,134,'Publication record and proposal horizon','context','Defines the reviewed reconstruction at which this dossier stops.'),
(291,136,'Origin; sense a; 1926 citation','supports','Names isiXhosa and isiZulu origin, humanity and goodness senses, and the 1926 English-language record.'),
(292,137,'Introduction — ubu- abstract prefix plus -ntu human stem','supports','Supports a branching morphological analysis instead of a single whole-word predecessor.'),
(292,136,'Origin — formed on noun stem -ntu','supports','Independently locates the human stem within the word family.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(66,335,130,'1997',1997,'English lexicographic first-use record for emoji','First Known Use','1997','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1997 object or facsimile was identified or directly inspected in this tranche.'),
(67,338,132,'1881',1881,'English lexicographic first-use record for sauna','First Known Use','1881','established','lexicographic_first_use',NULL,NULL,NULL,0,'The lexicographic first-use report was reviewed; no underlying 1881 object or facsimile was identified or directly inspected in this tranche.'),
(68,343,136,'1926',1926,'G. Callaway, Fellowship of Veld, source-reported by DSAE','Sense a, first quotation; Fellowship of Veld, p. 25','qualities which go to make up ubuntu','established','lexical_corpus_record',NULL,NULL,NULL,0,'The dictionary''s located quotation was reviewed; the underlying 1926 book page was not directly inspected, so this remains a source-reported lexical record.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(195,51,'絵','Japanese','picture component of the compound 絵文字',131),
(196,51,'文字','Japanese','written-character component of the compound 絵文字',131),
(197,51,'emoticon','English','contrast term actually formed from emotion plus icon',131),
(198,52,'saun','Estonian','close Finnic cognate with the same central sense',133),
(199,52,'stakkr','Old Norse','Germanic pile or stack relative in the proposed donor family',133),
(200,52,'stack','English','Germanic cognate in the proposed donor family, not a direct English parent of sauna',135),
(201,52,'takka','Finnish','later Germanic loan naming a hearth or fireplace; semantic comparator, not the source of sauna',133),
(202,53,'ubuntu','isiXhosa','parallel Nguni source-language form named by the historical dictionary',136),
(203,53,'botho','Sotho','same-sense southern African counterpart documented in compounds and quotations',136),
(204,53,'umntu','isiXhosa','person word exhibiting the human stem -ntu',136),
(205,53,'umuntu','isiZulu','person formation on the same human stem',137);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(208,51,1,'Japan','Modern Japanese source form','Japanese 絵文字 supplies the lexical source and the internal picture-plus-character analysis.',NULL,NULL,'regional',NULL,NULL,'unresolved','The reviewed sources establish Japan and Japanese mobile-phone context but do not warrant one numeric word-coinage date here.'),
(209,51,2,'Global English','1997 English record','Merriam-Webster reports English first known use in 1997.',NULL,NULL,'global',1997,1997,'exact','The year is a lexicographic first-use report, not a claim that no earlier token can exist.'),
(210,52,1,'Palaeo-Germanic linguistic horizon','proposed prehistoric donor','Kallio proposes a reconstructed Germanic pile or stack form as the ancient source; the geography remains broad and the analysis disputed.',NULL,NULL,'broad',NULL,NULL,'unresolved','Neither a directly attested donor object nor an exact borrowing date is claimed.'),
(211,52,2,'Proto-Finnic linguistic horizon','reconstructed *sakna','Comparative analysis reconstructs the Finnic form behind Finnish sauna and its close relatives.',NULL,NULL,'broad',NULL,NULL,'unresolved','The form is reconstructed rather than localized in one artifact.'),
(212,52,3,'Finland and the Finnic language area','Finnish sauna','Kotus documents the word in Finnish and several close Finnic languages with the same central sense.',NULL,NULL,'regional',NULL,NULL,'unresolved','The reviewed source does not supply one numeric first-use date for Finnish sauna.'),
(213,52,4,'Global English','1881 English record','Merriam-Webster reports the English borrowing by 1881.',NULL,NULL,'global',1881,1881,'exact','The year is a lexicographic first-use report, not an earliest surviving object inspected by SET-U.'),
(214,53,1,'Southern African Nguni-language region','isiXhosa and isiZulu source forms','The Dictionary of South African English identifies both isiXhosa and isiZulu as sources and defines the central humanity and goodness senses.',NULL,NULL,'regional',NULL,NULL,'unresolved','The lexical origin is regional; no single point or coinage date is asserted.'),
(215,53,2,'South African English','1926 source-reported record','The dictionary''s earliest listed quotation comes from G. Callaway''s Fellowship of Veld.',NULL,NULL,'regional',1926,1926,'exact','The date is exact for the dictionary''s reported quotation, while the underlying page remains uninspected in this tranche.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(208,131,'What are emoji?','supports','Places the source word in Japanese mobile-phone usage and identifies its components.'),
(209,130,'First Known Use','supports','Reports 1997 as the English first-known-use year.'),
(210,134,'pp. 313–319; proposed Germanic donor','supports','Supplies the proposed reconstructed donor horizon.'),
(210,135,'Discussion of Kallio 2008','challenges','Preserves published skepticism about the proposed donor route.'),
(211,134,'pp. 313–319; Proto-Finnic *sakna','supports','Supplies the reconstructed Finnic stage.'),
(212,133,'Answer — Finnish and close Finnic distribution','supports','Documents regional Finnic distribution without one exact witness date.'),
(213,132,'First Known Use','supports','Reports 1881 as the English first-known-use year.'),
(214,136,'Origin','supports','Names isiXhosa and isiZulu as the source languages.'),
(215,136,'Sense a, 1926 G. Callaway quotation','supports','Supplies the exact year and located source-reported record.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(92,51,'Is emoji formed from emotion plus icon?','No. Unicode and Merriam-Webster identify Japanese 絵 e “picture” plus 文字 moji “written character.” Emotion plus icon is the distinct English formation emoticon.','established','Two independent institutional references give the same Japanese compound analysis and Unicode explicitly contrasts emoticon.','resolved','The canonical graph branches 絵文字 into 絵 and 文字; it does not create emotion or icon parents.'),
(93,52,'Is Finnish sauna ultimately an ancient Germanic loan?','Petri Kallio proposes Proto-Finnic *sakna as an ancient borrowing from Palaeo-Germanic *stagh-ná-, with pile or stack developing through stone-pile stove to sauna. The proposal has support but remains disputed.','proposed','Kotus says the Germanic account has gained support; Ylikoski reports both LÄGLOS skepticism and Koivulehto''s acceptance.','open','SET-U preserves the proposed edge, the semantic bridge, the challenge, and the stopping boundary together.'),
(94,53,'Does ubuntu literally parse as “I am because we are”?','No at the level of word formation. The lexical sources analyze a human stem -ntu and an abstract-noun prefix ubu-; the familiar sentence is a philosophical gloss rather than a component-by-component translation.','probable','The historical dictionary identifies the -ntu human stem; the scholarly volume explicitly analyzes ubu- plus -ntu.','resolved','The graph exposes the morphemes while keeping philosophical interpretations distinct from lexical morphology.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(92,130,'Word History — Etymology','supports','Gives Japanese e “picture” plus moji “letter, character.”'),
(92,131,'What are emoji?; How do emoji differ from emoticons?','supports','Analyzes 絵文字 and separately defines emoticon as emotion plus icon.'),
(93,134,'pp. 313–319','supports','Publishes the ancient Germanic borrowing proposal.'),
(93,133,'Answer — Germanic origin has gained support','supports','Reports institutional recognition of the proposal and the pile-to-stove semantic bridge.'),
(93,135,'Discussion of Kallio 2008; LÄGLOS and Koivulehto','challenges','Records a skeptical scholarly assessment alongside a supportive one.'),
(94,136,'Origin — formed on noun stem -ntu','supports','Identifies the human-related noun stem in the lexical formation.'),
(94,137,'Introduction — ubu- abstract prefix plus -ntu human stem','supports','Supplies the explicit two-part morphological analysis.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=CASE
  WHEN `rank`<=106 THEN `rank`-100
  WHEN `rank`<=111 THEN `rank`-99
  WHEN `rank`<=113 THEN `rank`-98
  ELSE `rank`-97
END;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(36,51,7,'emoji','It has nothing to do with emotion.','Emoji is Japanese 絵 e “picture” plus 文字 moji “written character.” Emotion plus icon produced the separate word emoticon.','A',99,'The component analysis and the emoticon contrast are explicit in Unicode and Merriam-Webster.'),
(37,52,13,'sauna','The Finnish icon may be an ancient import.','A published proposal derives Proto-Finnic *sakna from a reconstructed Germanic pile or stack word through the heated stone pile of an early sauna stove. The edge remains visibly disputed.','B',97,'The surprise is evidence-backed, but the disputed prehistoric borrowing is never upgraded beyond proposed.'),
(38,53,16,'ubuntu','Its morphology is not a sentence.','Ubuntu is analyzed as an abstract-noun formation on the human stem -ntu. “I am because we are” is a philosophical gloss, not a literal morpheme-by-morpheme translation.','B+',96,'The morphology is sourced directly; the distinction between morphology and philosophical gloss is an editorial inference stated at that limited level.');
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(36,130,'Word History — Etymology','supports','Documents e “picture” plus moji “letter, character.”'),
(36,131,'What are emoji?; How do emoji differ from emoticons?','supports','Documents both the Japanese compound and the distinct emotion-plus-icon formation.'),
(37,134,'pp. 313–319','supports','Publishes the proposed Germanic borrowing and stone-pile semantic bridge.'),
(37,133,'Answer — Germanic origin has gained support','supports','Reports support for the proposal.'),
(37,135,'Discussion of Kallio 2008','challenges','Ensures the leaderboard reveal carries the published skepticism with it.'),
(38,136,'Origin — formed on noun stem -ntu','supports','Identifies the human stem in the lexical formation.'),
(38,137,'Introduction — ubu- abstract prefix plus -ntu human stem','supports','Supplies the abstract-prefix and human-root analysis.');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id IN (51,52,53)
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:35:絵:attested:sense:picture-morpheme',35,'絵','絵','picture-morpheme','e',NULL,'attested','Modern Japanese',1868,NULL,'picture; drawing','Graph-only compound component identified by Unicode and Merriam-Webster. The date is a language-period anchor, not a first-use claim.','reviewed'),
('node:35:文字:attested:sense:written-character-morpheme',35,'文字','文字','written-character-morpheme','moji',NULL,'attested','Modern Japanese',1868,NULL,'written character; letter','Graph-only compound component identified by Unicode and Merriam-Webster. The date is a language-period anchor, not a first-use claim.','reviewed'),
('node:39:ubu:attested:sense:abstract-noun-prefix',39,'ubu-','ubu','abstract-noun-prefix',NULL,NULL,'attested','Modern isiZulu',1800,NULL,'abstract-noun class prefix','Graph-only morphological component reported in the scholarly ubuntu volume. The date is a language-period anchor.','reviewed'),
('node:39:ntu:attested:sense:human-stem',39,'-ntu','ntu','human-stem',NULL,NULL,'attested','Modern isiZulu',1800,NULL,'human; person stem','Graph-only human stem supported by the Dictionary of South African English and the scholarly ubuntu volume.','reviewed'),
('node:40:ubuntu:attested:sense:humanity',40,'ubuntu','ubuntu','humanity',NULL,NULL,'attested','Modern isiXhosa',1800,NULL,'humanity; goodness','Graph-only parallel source-language node named by the Dictionary of South African English. The date is a language-period anchor.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.entry_id IN (51,52,53);
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id IN (51,52,53);
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id IN (51,52,53);
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id IN (51,52,53);
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:35:絵文字:attested:sense:pictograph-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:35:絵:attested:sense:picture-morpheme'),'compound_component','Synchronic Japanese compound analysis; no historical sound change is asserted between the whole and this component.','The picture component contributes the pictorial half of “picture character.”','Unicode Consortium · Merriam-Webster Editors','established','Both sources explicitly identify 絵 e as picture or drawing.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:35:絵文字:attested:sense:pictograph-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:35:文字:attested:sense:written-character-morpheme'),'compound_component','Synchronic Japanese compound analysis; no historical sound change is asserted between the whole and this component.','The written-character component contributes the character or letter half of “picture character.”','Unicode Consortium · Merriam-Webster Editors','established','Both sources explicitly identify 文字 moji as character or letter.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:39:ubuntu:attested:sense:humanity-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:39:ubu:attested:sense:abstract-noun-prefix'),'compound_component','Synchronic Nguni noun-class morphology; no sound change is asserted between the whole and the prefix.','The prefix forms an abstract noun rather than supplying an independent sentence meaning.','Praeg and Magadla','established','The scholarly volume explicitly identifies ubu- as the abstract-forming prefix.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:39:ubuntu:attested:sense:humanity-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:39:ntu:attested:sense:human-stem'),'compound_component','Synchronic Nguni morphology; no sound change is asserted between the whole and the human stem.','The -ntu stem contributes the human or person semantic core.','Dictionary of South African English Editors · Praeg and Magadla','established','Both sources identify the human stem.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:ubuntu:attested:sense:humanity-philosophy'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:40:ubuntu:attested:sense:humanity'),'competing_borrowing','The isiXhosa form entered English with its spelling substantially preserved; the exact immediate donor cannot be isolated from the reviewed source.','The humanity and goodness field becomes an English ethical and philosophical term.','Dictionary of South African English Editors','proposed','The source names both isiXhosa and isiZulu, so this parallel route remains proposed rather than pretending one donor is uniquely established.','English record by 1926.','reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:35:絵文字:attested:sense:pictograph-compound' AND p.canonical_key='node:35:絵:attested:sense:picture-morpheme' AND e.relation_type='compound_component'),131,'What are emoji? — 絵 e means picture','supports','Directly identifies the first compound component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:35:絵文字:attested:sense:pictograph-compound' AND p.canonical_key='node:35:文字:attested:sense:written-character-morpheme' AND e.relation_type='compound_component'),131,'What are emoji? — 文字 moji means character','supports','Directly identifies the second compound component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:39:ubuntu:attested:sense:humanity-compound' AND p.canonical_key='node:39:ubu:attested:sense:abstract-noun-prefix' AND e.relation_type='compound_component'),137,'Introduction — ubu- abstract prefix','supports','Directly supports the abstract-noun prefix analysis.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:39:ubuntu:attested:sense:humanity-compound' AND p.canonical_key='node:39:ntu:attested:sense:human-stem' AND e.relation_type='compound_component'),136,'Origin — noun stem -ntu used for human-related words','supports','Directly supports the human-stem analysis.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:39:ubuntu:attested:sense:humanity-compound' AND p.canonical_key='node:39:ntu:attested:sense:human-stem' AND e.relation_type='compound_component'),137,'Introduction — -ntu human stem','supports','Independently supports the human-stem analysis.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:ubuntu:attested:sense:humanity-philosophy' AND p.canonical_key='node:40:ubuntu:attested:sense:humanity' AND e.relation_type='competing_borrowing'),136,'Origin — IsiXhosa, isiZulu','supports','Names isiXhosa alongside isiZulu as a source language and preserves the ambiguity as a parallel route.');
