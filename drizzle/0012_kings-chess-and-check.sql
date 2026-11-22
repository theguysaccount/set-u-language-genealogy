INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(19,'persian','Persian','Indo-European','Iranian',0,800,2026,'New Persian, including the literary language that continues Middle Persian.'),
(20,'middle-persian','Middle Persian','Indo-European','Iranian',0,-300,900,'Middle Iranian stage of Persian, conventionally including Pahlavi textual evidence.'),
(21,'old-persian','Old Persian','Indo-European','Iranian',0,-600,-300,'Achaemenid royal-inscription language.'),
(22,'sanskrit','Sanskrit','Indo-European','Indo-Aryan',0,-1500,1200,'Classical Indo-Aryan literary language; the chess game-name evidence used here is sixth century CE.');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(93,'mw-check','Check — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/check',NULL,'historical_dictionary'),
(94,'mw-chess','Chess — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/chess',NULL,'historical_dictionary'),
(95,'mw-checkmate','Checkmate — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/checkmate',NULL,'historical_dictionary'),
(96,'mw-shah','Shah — Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/shah',NULL,'historical_dictionary'),
(97,'mw-financial-word-origins','9 Financial Words With Surprising Origins','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/wordplay/financial-word-origins',NULL,'editorial_reference'),
(98,'iranica-chess','Chess','Bo Utas and Encyclopaedia Iranica contributors',1991,'Encyclopaedia Iranica','https://www.iranicaonline.org/articles/chess/',NULL,'scholarly_reference'),
(99,'iranica-achaemenid-dynasty-i','Achaemenid Dynasty I: The Clan and Dynasty','Rüdiger Schmitt',1983,'Encyclopaedia Iranica','https://www.iranicaonline.org/articles/achaemenid-dynasty/achaemenid-dynasty-i-the-clan-and-dynasty/',NULL,'scholarly_reference');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(32,'check','check','check','/tʃɛk/','verb · noun','To verify, restrain, mark, or issue a bank draft today; a word whose oldest English history begins with a threatened king in chess.','Every time you check a fact or write a check, you are using a semantic descendant of the chess warning that named the king.','reviewed'),
(33,'chess','chess','chess','/tʃɛs/','noun','The board game whose English name arrives through French chess vocabulary, with competing scholarly accounts of the deeper Persian and Arabic route.','Chess may be a plural fossil: English borrowed French forms meaning the game or its pieces, tied either to the king-call šāh or to the traveling game-name šatranj.','reviewed'),
(34,'checkmate','checkmate','checkmate','/ˈtʃɛkˌmeɪt/','verb · noun','An inescapable chess defeat and, figuratively, complete thwarting; a compound transmitted through French, Arabic, and Persian chess language.','Checkmate does not securely mean “the king is dead.” The death reading is ancient and possible, but the better-supported Persian analysis is a king left helpless or at a loss.','reviewed'),
(35,'shah','shah','shah','/ʃɑː/','noun','The Persian title for a king or sovereign, borrowed into English in the sixteenth century.','The royal title shah is the living word inside the deep histories of check and chess: bureaucracy, verification, and a global board game all point back toward “king.”','reviewed');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(211,32,1,1,'check','check','verify-restrain-draft',NULL,'/tʃɛk/','attested','14th century–today',1300,2026,'verify, restrain, inspect, mark; a bank draft','Modern senses branch through stop, restraint, control, comparison, and the anti-forgery counterfoil.'),
(212,32,2,2,'chek / chekke','chek-chekke','chess-warning-restraint',NULL,NULL,'attested','14th–15th centuries',1300,1500,'a chess warning; assault, adverse event, restraint','The chess sense is oldest; stop and block develop from the threatened king.'),
(213,32,12,3,'eschec','eschec','chess-check-warning',NULL,NULL,'attested','Anglo-French period',1100,1400,'a king in check; the warning in chess','The singular chess warning enters Middle English.'),
(214,32,8,4,'eschac / eschés','eschac-esches','chess-check-warning',NULL,NULL,'attested','Old French period',1000,1300,'chess pieces; a check against the king','The initial vowel and affricate adapt the Arabic chess call; direct versus Spanish mediation is unresolved.'),
(215,32,15,5,'šāh','shah','king-in-chess','shāh',NULL,'attested','early Islamic chess vocabulary',650,1200,'king; the king in chess','Arabic chess vocabulary borrows the Persian royal word.'),
(216,32,19,6,'šāh','shah','king-sovereign','shāh',NULL,'attested','New Persian',800,2026,'king, sovereign','The royal title is also used for the king in chess.'),
(217,32,20,7,'šāh','shah','king-sovereign','šāh',NULL,'attested','Middle Persian',-300,900,'king, sovereign','Middle Persian stage of the title.'),
(218,32,21,8,'xšāyaθiyā','xshayathiya','king-sovereign','xšāyaθiyā',NULL,'attested','Achaemenid Old Persian',-550,-330,'king, sovereign','An attested Achaemenid title continued by Middle and New Persian šāh.'),
(219,32,6,9,'*tkeH-','tkeh','rule-possess',NULL,NULL,'reconstructed','dialectal Indo-European prehistory',-4500,-2500,'rule, have power, possess','Merriam-Webster publishes this comparison but also records a materially different analysis in the Lexikon der indogermanischen Verben.'),
(220,32,7,10,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the competing Indo-European analyses',NULL,NULL,'No single deeper ancestor is promoted','The graph branches to a rival proposed reconstruction and stops both routes honestly.'),

(221,33,1,1,'chess','chess','board-game',NULL,'/tʃɛs/','attested','14th century–today',1300,2026,'the two-player strategy board game','The modern singular form preserves a French plural history.'),
(222,33,2,2,'chesse / ches / esches','chesse-ches-esches','board-game',NULL,NULL,'attested','14th–15th centuries',1300,1500,'the game of chess','Middle English variants are borrowed from Anglo-French plural forms.'),
(223,33,12,3,'escheks / eschez','escheks-eschez','game-of-chess',NULL,NULL,'attested','Anglo-French period',1100,1400,'the game of chess; literally plural chess terms','The game name is formally plural.'),
(224,33,8,4,'eschés','esches','chess-pieces',NULL,NULL,'attested','Old French period',1000,1300,'chess pieces; chess','This node has two explicitly competing deeper routes in the canonical graph.'),
(225,33,15,5,'šāh','shah','king-in-chess','shāh',NULL,'attested','early Islamic chess vocabulary',650,1200,'king; the king in chess','Merriam-Webster routes the French family through this chess call.'),
(226,33,19,6,'šāh','shah','king-sovereign','shāh',NULL,'attested','New Persian',800,2026,'king, sovereign','Canonical Persian title shared with check and shah.'),
(227,33,20,7,'šāh','shah','king-sovereign','šāh',NULL,'attested','Middle Persian',-300,900,'king, sovereign','Canonical Middle Persian title.'),
(228,33,21,8,'xšāyaθiyā','xshayathiya','king-sovereign','xšāyaθiyā',NULL,'attested','Achaemenid Old Persian',-550,-330,'king, sovereign','Canonical Old Persian title.'),
(229,33,6,9,'*tkeH-','tkeh','rule-possess',NULL,NULL,'reconstructed','dialectal Indo-European prehistory',-4500,-2500,'rule, have power, possess','One of two published deeper comparisons for the Old Persian verbal base.'),
(230,33,7,10,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the competing Indo-European analyses',NULL,NULL,'No single deeper ancestor is promoted','The dossier ends where the royal-title prehistory becomes disputed.'),

(231,34,1,1,'checkmate','checkmate','inescapable-defeat',NULL,'/ˈtʃɛkˌmeɪt/','attested','14th century–today',1300,2026,'an inescapable chess defeat; complete thwarting','The verb already carried chess and frustrate senses in Middle English.'),
(232,34,2,2,'chekmaten / chekmat','chekmaten-chekmat','chess-defeat',NULL,NULL,'attested','14th–15th centuries',1300,1500,'to checkmate or frustrate; the mating position','English derives the verb from the transmitted chess compound.'),
(233,34,12,3,'eschec mat','eschec-mat','checkmate-compound',NULL,NULL,'attested','Anglo-French period',1100,1400,'the announcement that the opponent’s king cannot escape','The canonical graph gives the compound both its eschec and mat parents.'),
(234,34,15,4,'māt','mat','helpless-checkmated','māt',NULL,'attested','Arabic chess vocabulary',650,1200,'checkmated; alternatively interpreted as “has died”','Merriam-Webster and Iranica favor a Persian loan meaning helpless, while preserving the competing native Arabic death analysis.'),
(235,34,19,5,'mānd','mand','left-at-a-loss','mānd',NULL,'attested','Persian chess vocabulary',800,1200,'left, at a loss, helpless','A Persian verbal adjective used to explain the second member of checkmate.'),
(236,34,19,6,'māndan','mandan','remain',NULL,NULL,'attested','Persian',800,2026,'to remain','The proposed source verb for mānd.'),
(237,34,20,7,'mān-','man','remain-wait',NULL,NULL,'attested','Middle Persian',-300,900,'remain, wait','Earlier Iranian verbal base reported by Merriam-Webster.'),
(238,34,21,8,'mān-','man','remain-wait',NULL,NULL,'attested','Old Persian',-550,-330,'remain, wait','Merriam-Webster cites Old Persian amānaya “awaited” as evidence.'),
(239,34,7,9,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before Old Persian mān-',NULL,NULL,'No deeper form asserted from the reviewed sources','The trail stops rather than silently importing an uncited reconstruction.'),

(240,35,1,1,'shah','shah','iranian-sovereign',NULL,'/ʃɑː/','attested','1566–today',1566,2026,'a sovereign of Iran','English borrows the Persian title directly as a historical and political term.'),
(241,35,19,2,'šāh','shah','king-sovereign','shāh',NULL,'attested','New Persian',800,2026,'king, sovereign','Canonical Persian title shared with check and chess.'),
(242,35,20,3,'šāh','shah','king-sovereign','šāh',NULL,'attested','Middle Persian',-300,900,'king, sovereign','Canonical Middle Persian title.'),
(243,35,21,4,'xšāyaθiyā','xshayathiya','king-sovereign','xšāyaθiyā',NULL,'attested','Achaemenid Old Persian',-550,-330,'king, sovereign','Attested Old Persian title analyzed by Encyclopaedia Iranica.'),
(244,35,6,5,'*tkeH-','tkeh','rule-possess',NULL,NULL,'reconstructed','dialectal Indo-European prehistory',-4500,-2500,'rule, have power, possess','A proposed deeper comparison, not a settled ancestor.'),
(245,35,7,6,'UNKNOWN','unknown','default',NULL,NULL,'boundary','before the competing Indo-European analyses',NULL,NULL,'No single deeper ancestor is promoted','A rival proposed root remains a separate canonical branch.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(180,32,211,212,'semantic_continuation','Middle English chek stabilizes as check; the core consonants remain while spelling standardizes.','A chess attack produces stop and restraint, then verification, marks, tokens, and the anti-forgery counterfoil behind the bank sense.','Merriam-Webster Editors','established','The semantic ordering is explicit in Merriam-Webster; several modern branches coexist rather than replacing one another.','Chess and restraint senses are medieval; banking and verification branches develop later.','reviewed'),
(181,32,212,213,'borrowing','Anglo-French eschec loses its initial unstressed vowel as it enters Middle English chek.','The chess warning expands toward assault, obstruction, and adverse event.','Merriam-Webster Editors','established',NULL,'Borrowed in the Middle English period.','reviewed'),
(182,32,213,214,'historical_continuation','Anglo-French eschec continues continental Old French eschac / eschés with vowel leveling.','The king-in-danger chess call remains the core sense.','Merriam-Webster Editors','probable','The exact Old French vowel history may reflect homonym association or ordinary raising.','Old and Anglo-French period.','reviewed'),
(183,32,214,215,'borrowing','Arabic /ʃ/ is adapted as Old French /tʃ/ with an added initial vowel; direct borrowing versus Spanish mediation remains uncertain.','The word “king” is reinterpreted as the chess warning or the pieces/game surrounding that warning.','Merriam-Webster Editors','probable','Merriam-Webster explicitly leaves direct Arabic transmission versus Spanish jaque mediation unresolved.','Arabic-to-Romance chess contact before the Middle English borrowing.','reviewed'),
(184,32,215,216,'borrowing','Persian šāh is borrowed into Arabic chess vocabulary with the initial /ʃ/ and long vowel substantially retained.','The sovereign title is specialized as the chess call naming the threatened king.','Merriam-Webster Editors','established','The borrowing direction is supported by Persian predominance in the chess terminology.','Persian chess vocabulary enters Arabic in the early Islamic period.','reviewed'),
(185,32,216,217,'historical_continuation','New Persian šāh continues Middle Persian šāh with the long vowel and final consonant retained.','The title “king” remains stable across the Iranian language stages.','Rüdiger Schmitt · Merriam-Webster Editors','established','Encyclopaedia Iranica explicitly identifies Middle and New Persian šāh as continuations of the Old Persian title.','Middle Persian to New Persian.','reviewed'),
(186,32,217,218,'historical_continuation','The substantially shorter Middle Persian šāh continues Old Persian xšāyaθiyā; the reviewed record does not invent every unattested intermediate sound change.','The meaning “king, sovereign” remains stable.','Rüdiger Schmitt · Merriam-Webster Editors','established','The continuation is explicit, while the internal contraction history is not overstated.','Achaemenid Old Persian to Middle Persian.','reviewed'),
(187,32,218,219,'proposed_derivation','Old Persian xšāyaθiyā is analyzed through xšāy- “rule, have power, possess” and compared with dialectal Indo-European *tkeH-.','Rule or possession supplies the base for a sovereign title.','Merriam-Webster Editors','proposed','Merriam-Webster also records a materially different Lexikon der indogermanischen Verben analysis from *h₃ekʷ-; neither is promoted as consensus.','The comparison belongs to Indo-European prehistory.','reviewed'),
(188,32,219,220,'knowledge_boundary','No older form is promoted beyond the competing proposed reconstructions.','The reviewed trail ends at a disputed root comparison.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(189,33,221,222,'historical_continuation','Middle English chesse / ches stabilizes as modern chess with final spelling simplification.','The board-game meaning remains stable.','Merriam-Webster Editors','established',NULL,'Fourteenth century to modern English.','reviewed'),
(190,33,222,223,'borrowing','Anglo-French escheks / eschez enters Middle English as chesse, ches, and esches.','The formally plural French game name becomes an English mass/singular game name.','Merriam-Webster Editors','established',NULL,'Borrowed in the fourteenth century.','reviewed'),
(191,33,223,224,'historical_continuation','Anglo-French plural forms continue continental Old French eschés with dialectal spelling differences.','Chess pieces or checks become the name of the game as a whole.','Merriam-Webster Editors','established',NULL,'Old French to Anglo-French.','reviewed'),
(192,33,224,225,'borrowing','Arabic /ʃ/ is adapted as Old French /tʃ/ with an added initial vowel; an alternate šatranj route remains separately graphed.','The chess “king” call becomes a plural name for pieces and then the game.','Merriam-Webster Editors','probable','Merriam-Webster routes the word through šāh; Encyclopaedia Iranica groups English chess with descendants of the traveling game-name šatranj.','Medieval Arabic-to-Romance chess transmission.','reviewed'),
(193,33,225,226,'borrowing','Persian šāh is borrowed into Arabic chess vocabulary with the initial /ʃ/ and long vowel substantially retained.','The sovereign title is specialized as the chess call naming the threatened king.','Merriam-Webster Editors','established','The borrowing direction is supported by Persian predominance in the chess terminology.','Persian chess vocabulary enters Arabic in the early Islamic period.','reviewed'),
(194,33,226,227,'historical_continuation','New Persian šāh continues Middle Persian šāh with the long vowel and final consonant retained.','The title “king” remains stable across the Iranian language stages.','Rüdiger Schmitt · Merriam-Webster Editors','established','Encyclopaedia Iranica explicitly identifies Middle and New Persian šāh as continuations of the Old Persian title.','Middle Persian to New Persian.','reviewed'),
(195,33,227,228,'historical_continuation','The substantially shorter Middle Persian šāh continues Old Persian xšāyaθiyā; the reviewed record does not invent every unattested intermediate sound change.','The meaning “king, sovereign” remains stable.','Rüdiger Schmitt · Merriam-Webster Editors','established','The continuation is explicit, while the internal contraction history is not overstated.','Achaemenid Old Persian to Middle Persian.','reviewed'),
(196,33,228,229,'proposed_derivation','Old Persian xšāyaθiyā is analyzed through xšāy- “rule, have power, possess” and compared with dialectal Indo-European *tkeH-.','Rule or possession supplies the base for a sovereign title.','Merriam-Webster Editors','proposed','Merriam-Webster also records a materially different Lexikon der indogermanischen Verben analysis from *h₃ekʷ-; neither is promoted as consensus.','The comparison belongs to Indo-European prehistory.','reviewed'),
(197,33,229,230,'knowledge_boundary','No older form is promoted beyond the competing proposed reconstructions.','The reviewed trail ends at a disputed root comparison.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(198,34,231,232,'historical_continuation','Middle English chekmaten / chekmat stabilizes as modern checkmate.','Chess defeat and complete frustration continue together into modern English.','Merriam-Webster Editors','established','Merriam-Webster records frustrate alongside the chess meaning already in Middle English.','Fourteenth century to modern English.','reviewed'),
(199,34,232,233,'borrowing_and_derivation','Anglo-French eschec mat is borrowed as Middle English chek mat and supplies the derived verb chekmaten.','The announcement that a king cannot escape becomes both a chess result and complete frustration.','Merriam-Webster Editors','established',NULL,'Middle English borrowing and derivation.','reviewed'),
(200,34,233,234,'compound_member','The second member mat continues Arabic māt with little phonological change in French.','A state of helplessness or defeat supplies the result component of the compound.','Merriam-Webster Editors · Bo Utas','probable','The Persian helpless analysis is favored, but the Arabic “has died” analysis remains a recorded competitor.','Persian and Arabic chess terminology passes through French before English.','reviewed'),
(201,34,234,235,'borrowing','Persian mānd is borrowed into Arabic chess usage as māt, with final consonant adaptation.','Left or helpless is specialized as the state of a trapped king.','Merriam-Webster Editors · Bo Utas','probable','The alternative reading as native Arabic māt “has died” is explicitly preserved as a dispute.','Early Islamic chess vocabulary.','reviewed'),
(202,34,235,236,'inflectional_derivation','Persian mānd is the verbal adjective associated with māndan.','The action “remain” yields the state “left, at a loss, helpless.”','Merriam-Webster Editors','established',NULL,'Persian.','reviewed'),
(203,34,236,237,'historical_continuation','Persian māndan continues the earlier Iranian base mān- with an infinitival ending.','The meaning “remain, wait” continues.','Merriam-Webster Editors','established',NULL,'Middle to New Persian.','reviewed'),
(204,34,237,238,'historical_continuation','Middle Persian mān- continues the Old Persian verbal base evidenced in amānaya.','Remain or wait stays stable.','Merriam-Webster Editors','probable','The source supplies the Old Persian comparison but not a complete paradigm.','Old to Middle Persian.','reviewed'),
(205,34,238,239,'knowledge_boundary','No older form is asserted beyond the reviewed Old Persian evidence.','The trail ends instead of importing an uncited reconstruction.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'),

(206,35,240,241,'borrowing','Persian šāh is borrowed into English as shah with its pronunciation approximated and transliteration simplified.','The sovereign title remains a sovereign title.','Merriam-Webster Editors','established',NULL,'First-known English use is reported in 1566.','reviewed'),
(207,35,241,242,'historical_continuation','New Persian šāh continues Middle Persian šāh with the long vowel and final consonant retained.','The title “king” remains stable across the Iranian language stages.','Rüdiger Schmitt · Merriam-Webster Editors','established','Encyclopaedia Iranica explicitly identifies Middle and New Persian šāh as continuations of the Old Persian title.','Middle Persian to New Persian.','reviewed'),
(208,35,242,243,'historical_continuation','The substantially shorter Middle Persian šāh continues Old Persian xšāyaθiyā; the reviewed record does not invent every unattested intermediate sound change.','The meaning “king, sovereign” remains stable.','Rüdiger Schmitt · Merriam-Webster Editors','established','The continuation is explicit, while the internal contraction history is not overstated.','Achaemenid Old Persian to Middle Persian.','reviewed'),
(209,35,243,244,'proposed_derivation','Old Persian xšāyaθiyā is analyzed through xšāy- “rule, have power, possess” and compared with dialectal Indo-European *tkeH-.','Rule or possession supplies the base for a sovereign title.','Merriam-Webster Editors','proposed','Merriam-Webster also records a materially different Lexikon der indogermanischen Verben analysis from *h₃ekʷ-; neither is promoted as consensus.','The comparison belongs to Indo-European prehistory.','reviewed'),
(210,35,244,245,'knowledge_boundary','No older form is promoted beyond the competing proposed reconstructions.','The reviewed trail ends at a disputed root comparison.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(180,93,'Word History; ordered sense note','supports','Documents chess, restraint, verification, counterfoil, and banking branches.'),(180,97,'Check','supports','Explains the anti-forgery counterfoil behind the financial sense.'),
(181,93,'Etymology — verb and noun','supports','Connects Middle English chek with Anglo-French eschec.'),(182,93,'Etymology note on eschac > eschec','supports','Explains competing phonological accounts for the French vowel.'),(183,93,'Etymology note on Arabic transmission','supports','Records direct Arabic versus Spanish mediation uncertainty.'),
(184,93,'Noun etymology','supports','Connects Arabic šāh with Persian šāh and chess specialization.'),(185,93,'Noun etymology','supports','Traces Persian šāh through Middle Persian.'),(185,99,'Titles, xšāyaθiya','supports','Identifies Middle and New Persian šāh as continuations of Old Persian xšāyaθiyā.'),(186,93,'Noun etymology','supports','Traces Middle Persian to Old Persian.'),(186,99,'Titles, xšāyaθiya','supports','Supplies the attested Old Persian title and Iranian derivation.'),(187,93,'Noun etymology note on Indo-European comparison','supports','Publishes *tkeH- while recording the rival LIV analysis.'),(188,93,'Noun etymology note','context','The documented disagreement defines the evidence horizon.'),
(189,94,'Etymology; First Known Use','supports','Records Middle English forms and fourteenth-century chronology.'),(190,94,'Etymology','supports','Connects Middle English chess with Anglo-French plural forms.'),(191,94,'Etymology and Kids Etymology','supports','Connects the French plural game name with eschec/check.'),(192,93,'Noun etymology','supports','Supplies the šāh route and French sound adaptation.'),(192,98,'Headword summary; history of chess','challenges','Iranica groups English chess with descendants of the traveling game-name šatranj.'),
(193,93,'Noun etymology','supports','Connects Arabic chess šāh with Persian.'),(194,93,'Noun etymology','supports','Traces Persian šāh through Middle Persian.'),(194,99,'Titles, xšāyaθiya','supports','Confirms the Iranian historical stages.'),(195,93,'Noun etymology','supports','Traces Middle Persian to Old Persian.'),(195,99,'Titles, xšāyaθiya','supports','Documents the attested Achaemenid form.'),(196,93,'Noun etymology note','supports','Publishes the proposed root and rival analysis.'),(197,93,'Noun etymology note','context','The disagreement defines the boundary.'),
(198,95,'Etymology — verb; First Known Use','supports','Documents the Middle English verb and its chess/frustrate meanings.'),(199,95,'Etymology — noun and verb','supports','Connects Middle English with Anglo-French eschec mat.'),(200,95,'Etymology — noun','supports','Analyzes the second compound member and favors the Persian helpless reading.'),(200,98,'Chess history, checkmate discussion','supports','Argues that the king becomes powerless rather than killed.'),(201,95,'Etymology note','supports','Traces Arabic māt to Persian mānd and records the death alternative.'),(201,98,'Chess history, checkmate discussion','supports','Treats Persian broken/paralyzed as more plausible than Arabic died.'),(202,95,'Etymology — noun','supports','Connects mānd with māndan.'),(203,95,'Etymology — noun','supports','Traces māndan to Middle Persian mān-.'),(204,95,'Etymology — noun','supports','Cites Old Persian mān- and amānaya.'),(205,95,'Etymology — noun','context','The source stops at Old Persian evidence.'),
(206,96,'Etymology; First Known Use','supports','Reports the Persian borrowing and 1566 first use.'),(207,93,'Noun etymology','supports','Traces Persian through Middle Persian.'),(207,99,'Titles, xšāyaθiya','supports','Confirms the Middle/New Persian continuation.'),(208,93,'Noun etymology','supports','Traces the title to Old Persian.'),(208,99,'Titles, xšāyaθiya','supports','Documents xšāyaθiyā and its derivation.'),(209,93,'Noun etymology note','supports','Publishes both competing deeper analyses.'),(210,93,'Noun etymology note','context','The disputed comparison defines the boundary.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(45,211,93,'14th century',1350,'English lexicographic first-use report for check','First Known Use — verb',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use century; no underlying manuscript witness was directly inspected.'),
(46,221,94,'14th century',1350,'English lexicographic first-use report for chess','First Known Use — game noun',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use century; no underlying manuscript witness was directly inspected.'),
(47,231,95,'14th century',1350,'English lexicographic first-use report for checkmate','First Known Use — verb',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use century; no underlying manuscript witness was directly inspected.'),
(48,240,96,'1566',1566,'English lexicographic first-use report for shah','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use year; no underlying printed witness was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(127,32,'chess','English','same chess-call family',94),(128,32,'checkmate','English','compound relative preserving the chess warning',95),(129,32,'shah','English','parallel borrowing of the Persian royal title',96),(130,32,'cheque','British English','orthographic banking relative',97),
(131,33,'check','English','same French chess-call family',93),(132,33,'shah','English','parallel borrowing of the Persian royal title',96),(133,33,'échecs','French','Romance continuation of the plural chess form',98),(134,33,'šatranj','Persian / Arabic','competing game-name ancestry',98),
(135,34,'check','English','first compound member and chess-family relative',95),(136,34,'shah','English','royal-title relative through the first compound member',93),(137,34,'mate','English','chess verb derived from the second compound member',95),(138,34,'shāh-māt','Persian chess phrase','source expression interpreted as king helpless',98),
(139,35,'check','English','semantic descendant through chess warning',93),(140,35,'chess','English','game-name relative through French chess vocabulary',94),(141,35,'checkmate','English','compound relative containing the king/check family',95),(142,35,'šāhanšāh','Persian','king-of-kings title relative',99);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`) VALUES
(124,32,1,'Achaemenid Iran','6th–4th centuries BCE','Old Persian xšāyaθiyā is attested as a royal title.',NULL,NULL,'broad'),
(125,32,2,'Persian-speaking Iran','Middle and New Persian periods','The title contracts to šāh and becomes central chess vocabulary.',NULL,NULL,'broad'),
(126,32,3,'Arabic-speaking chess cultures','7th–10th centuries','Persian šāh is borrowed as the warning naming the threatened king.',NULL,NULL,'broad'),
(127,32,4,'Northern France and England','11th–14th centuries','French eschec travels into Middle English chek.',NULL,NULL,'broad'),
(128,32,5,'English commercial networks','17th century onward','Restraint and counterfoil senses produce the financial check.',NULL,NULL,'broad'),
(129,32,6,'Global English','Modern period','Verification, marking, restraint, and banking branches coexist.',NULL,NULL,'global'),
(130,33,1,'Northern India','6th century CE','The first certain caturaṅga game-name evidence belongs to the Indian military-game tradition.',NULL,NULL,'broad'),
(131,33,2,'Sasanian and early Islamic Iran','6th–10th centuries','Middle Persian čatrang and Persian šatranj embed the game in Persian culture.',NULL,NULL,'broad'),
(132,33,3,'Arabic-speaking world','7th–11th centuries','The game and its Persian terminology move west through Arabic.',NULL,NULL,'broad'),
(133,33,4,'France and England','11th–14th centuries','Plural French chess forms become Middle English chess.',NULL,NULL,'broad'),
(134,33,5,'Global play','Modern period','The inherited game name travels independently of later rule changes.',NULL,NULL,'global'),
(135,34,1,'Persian-speaking chess culture','late antique–early Islamic period','The king is described as helpless or broken when trapped.',NULL,NULL,'broad'),
(136,34,2,'Arabic-speaking chess cultures','7th–11th centuries','The phrase is borrowed and reanalyzed alongside Arabic māt “died.”',NULL,NULL,'broad'),
(137,34,3,'France and England','11th–15th centuries','Eschec mat becomes chekmat and the verb chekmaten.',NULL,NULL,'broad'),
(138,34,4,'European chess culture','15th–17th centuries','Rules transform, but the victory term persists.',NULL,NULL,'broad'),
(139,34,5,'Global English','Modern period','Checkmate becomes a worldwide metaphor for complete defeat.',NULL,NULL,'global'),
(140,35,1,'Achaemenid Iran','6th–4th centuries BCE','The ancestral title xšāyaθiyā is written in royal inscriptions.',NULL,NULL,'broad'),
(141,35,2,'Persian-speaking Iran','Middle Persian–today','Šāh continues as a royal title and chess term.',NULL,NULL,'broad'),
(142,35,3,'England','1566 onward','English borrows shah as a title for an Iranian sovereign.',NULL,NULL,'approximate'),
(143,35,4,'Global historical discourse','Modern period','Shah remains an international historical and political title.',NULL,NULL,'global');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(67,32,'Did check begin with verification?','No. The oldest sequence starts with chess, then stop and restraint; verification and banking are later semantic branches.','established','Merriam-Webster orders the senses and separately explains the anti-forgery counterfoil behind the bank draft.','resolved','The semantic history displays branching rather than projecting the modern meaning backward.'),
(68,32,'Did Arabic šāh pass directly into French?','The Arabic source is well supported, but Merriam-Webster leaves direct borrowing versus mediation through Spanish jaque unresolved.','probable','Merriam-Webster explicitly presents both transmission possibilities.','open',NULL),
(69,33,'Does chess descend through šāh or through šatranj?','Merriam-Webster routes the French forms through the king-call šāh; Encyclopaedia Iranica groups English chess with descendants of the Indian-Persian-Arabic game-name caturaṅga / čatrang / šatranj.','proposed','Both reviewed authorities are preserved as separately cited graph branches.','open',NULL),
(70,33,'Is the grass called chess part of the game family?','No connection is asserted. Merriam-Webster labels the grass-name origin unknown.','boundary','Merriam-Webster separates the two noun entries and marks the botanical origin unknown.','resolved','Sense keys and dossier scope prevent a spelling match from merging unrelated lexemes.'),
(71,34,'Does checkmate literally mean the king is dead?','That is a longstanding Arabic analysis, but Merriam-Webster and Encyclopaedia Iranica favor a Persian loan meaning left, helpless, broken, or paralyzed.','probable','Merriam-Webster cites Moghadam and calls the death reading more plausibly folk etymology; Iranica argues that other pieces die while the king becomes powerless.','open',NULL),
(72,34,'Is figurative checkmate a late metaphor?','Not entirely. Merriam-Webster reports Middle English chekmaten with both chess and frustrate senses.','established','The historical dictionary explicitly includes frustrate in the Middle English gloss.','resolved','The graph begins the semantic coexistence in Middle English.'),
(73,35,'Did the English word shah produce check?','No. English shah and English check are cousins: both reach back independently to Persian šāh, while check travels through chess, Arabic, and French.','established','Merriam-Webster supplies the direct shah borrowing and the longer check route.','resolved','The canonical Persian node is shared without falsely making one English word the parent of the other.'),
(74,35,'Is the deepest root of xšāyaθiyā settled?','No. Merriam-Webster publishes the traditional *tkeH- comparison and records a materially different LIV derivation from *h₃ekʷ-.','proposed','The competing reconstructions appear as separate canonical parent edges.','open',NULL);
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=`rank`-98;
--> statement-breakpoint
INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(21,34,1,'checkmate','The king is not securely dead.','The familiar “shāh māt = the king died” translation matches Arabic morphology, but the better-supported historical analysis treats māt as a Persian loan meaning helpless, broken, or at a loss.','A-',100,'The competing death analysis remains visible; A- reflects a favored interpretation rather than unanimity.'),
(22,32,2,'check','Your bank check began as a threat to a king.','Persian šāh becomes a chess warning, French eschec, and English check. Stop and restraint later produce verification and the anti-forgery counterfoil behind the bank draft.','A',100,'The medieval route and later semantic ordering are documented by Merriam-Webster.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(17,32,35,'YOUR BANK CHECK BEGAN WITH A KING','Check travels backward through Middle English chek, French eschec, Arabic chess šāh, and Persian šāh “king.” The bank sense develops much later from restraint and an anti-forgery counterfoil.',100,'A','reviewed'),
(18,33,35,'THE GAME HIDES ITS KING IN THE NAME','Merriam-Webster connects chess through plural French chess terms to the šāh call; Encyclopaedia Iranica preserves a competing route through the traveling game-name šatranj. Both branches remain inspectable.',98,'B+','reviewed'),
(19,34,35,'THE KING MAY BE HELPLESS, NOT DEAD','Checkmate contains the king/check family plus a second element more plausibly borrowed from Persian for left or helpless. The famous “king died” reading survives as a recorded competitor.',100,'A-','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
	SELECT f.*, CASE
		WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
		ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
	END AS canonical_key
	FROM forms f WHERE f.entry_id BETWEEN 32 AND 35
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:15:al-satranj:attested:sense:chess-game',15,'al-šaṭranj','al-satranj','chess-game','al-šaṭranj',NULL,'attested','early Islamic Arabic',650,1100,'chess','Graph-only competing game-name route documented by Encyclopaedia Iranica.','reviewed'),
('node:19:satranj:attested:sense:chess-game',19,'šatranj','satranj','chess-game','šatranj',NULL,'attested','Persian',600,1200,'chess','Graph-only Persian game-name stage.','reviewed'),
('node:20:catrang:attested:sense:chess-game',20,'čatrang','catrang','chess-game','čatrang',NULL,'attested','Middle Persian',500,800,'chess','Graph-only Middle Persian game-name stage attested in Pahlavi textual tradition.','reviewed'),
('node:22:caturanga:attested:sense:four-limbed-army-game',22,'caturaṅga','caturanga','four-limbed-army-game','caturaṅga',NULL,'attested','6th century CE',500,600,'four-limbed army; chess game-name','Graph-only Indian game-name stage; Iranica calls the sixth-century occurrence the first certain mention.','reviewed'),
('graph-boundary:chess-indian-name',7,'UNKNOWN','unknown','chess-indian-name',NULL,NULL,'boundary','before the first certain caturaṅga game-name evidence',NULL,NULL,'No older game-name ancestor asserted','The game’s invention stories are not promoted into lexical evidence.','reviewed'),
('node:6:h3ekw:reconstructed:sense:catch-sight-envisage',6,'*h₃ekʷ-','h3ekw','catch-sight-envisage',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'catch sight of, envisage','Graph-only rival reconstruction reported by Merriam-Webster from the Lexikon der indogermanischen Verben.','reviewed'),
('graph-boundary:xshay-rival',7,'UNKNOWN','unknown','xshay-rival',NULL,NULL,'boundary','before the rival *h₃ekʷ- comparison',NULL,NULL,'No older form asserted','The competing reconstruction terminates at its published comparison.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
	WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
	ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.entry_id BETWEEN 32 AND 35;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 32 AND 35;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 32 AND 35;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 32 AND 35;
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'compound_member','Anglo-French eschec mat retains eschec as its first member before English reduction to check.','The threatened king or check supplies the first half of the terminal chess announcement.','Merriam-Webster Editors','established','The second mat branch remains separately represented in the dossier path.','Anglo-French chess terminology.', 'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent WHERE child.canonical_key='node:12:eschec-mat:attested:sense:checkmate-compound' AND parent.canonical_key='node:12:eschec:attested:sense:chess-check-warning';
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'competing_borrowing_route','Encyclopaedia Iranica groups Old French eschés with descendants of Arabic al-šaṭranj; the exact phonological mediation conflicts with the reviewed šāh account.','The traveling name of the game supplies a competing source for the French game name.','Bo Utas and Encyclopaedia Iranica contributors','proposed','This edge is a published competing route, not a synthesized consensus.','Arabic chess vocabulary to medieval French.', 'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent WHERE child.canonical_key='node:8:esches:attested:sense:chess-pieces' AND parent.canonical_key='node:15:al-satranj:attested:sense:chess-game';
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'borrowing','Persian šatranj is borrowed into Arabic with the definite article al- and the game-name consonant frame retained.','The game name remains chess.','Bo Utas','established',NULL,'Early Islamic period.', 'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent WHERE child.canonical_key='node:15:al-satranj:attested:sense:chess-game' AND parent.canonical_key='node:19:satranj:attested:sense:chess-game';
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'historical_continuation','Persian šatranj continues Middle Persian čatrang with palatal and final-consonant development.','The game name remains chess.','Bo Utas','established','Iranica records the Middle and New Persian forms but does not reduce the history to one sound-law formula.','Late Sasanian to New Persian.', 'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent WHERE child.canonical_key='node:19:satranj:attested:sense:chess-game' AND parent.canonical_key='node:20:catrang:attested:sense:chess-game';
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'borrowing','Sanskrit caturaṅga is adapted as Middle Persian čatrang with contraction of the medial syllables.','A “four-limbed” army designation becomes the board-game name.','Bo Utas','probable','Iranica says the origin is obscure but places the first certain Sanskrit mention and Persian introduction in the sixth century.','India to Sasanian Persia in or around the sixth century.', 'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent WHERE child.canonical_key='node:20:catrang:attested:sense:chess-game' AND parent.canonical_key='node:22:caturanga:attested:sense:four-limbed-army-game';
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'knowledge_boundary','No older lexical form is promoted beyond the first certain caturaṅga game-name evidence.','Legendary invention stories remain cultural history rather than asserted ancestry.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent WHERE child.canonical_key='node:22:caturanga:attested:sense:four-limbed-army-game' AND parent.canonical_key='graph-boundary:chess-indian-name';
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'competing_reconstruction','The Old Persian verbal base xšāy- is alternatively derived from reconstructed *h₃ekʷ- rather than *tkeH-.','A proposed “catch sight of, envisage” base develops toward power or rule.','Lexikon der indogermanischen Verben, as summarized by Merriam-Webster','proposed','Merriam-Webster says the traditional comparison is problematic and records this materially different analysis.','Indo-European prehistory to Old Iranian.', 'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent WHERE child.canonical_key='node:21:xshayathiya:attested:sense:king-sovereign' AND parent.canonical_key='node:6:h3ekw:reconstructed:sense:catch-sight-envisage';
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child.id,parent.id,'knowledge_boundary','No older form is promoted beyond the rival *h₃ekʷ- comparison.','The competing route stops at its published reconstruction.','SET-U editorial boundary','boundary',NULL,NULL,'reviewed'
FROM lexeme_nodes child,lexeme_nodes parent WHERE child.canonical_key='node:6:h3ekw:reconstructed:sense:catch-sight-envisage' AND parent.canonical_key='graph-boundary:xshay-rival';
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,95,'Etymology — noun, compound analysis','supports','Supplies eschec as the first member and mat as the second.' FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id JOIN lexeme_nodes parent ON parent.id=edge.parent_node_id WHERE child.canonical_key='node:12:eschec-mat:attested:sense:checkmate-compound' AND parent.canonical_key='node:12:eschec:attested:sense:chess-check-warning' AND edge.relation_type='compound_member';
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,98,'Headword summary and History of Chess in Persia','supports','Documents the caturaṅga, čatrang, šatranj, Arabic, and European game-name route.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE (child.canonical_key='node:8:esches:attested:sense:chess-pieces' AND edge.relation_type='competing_borrowing_route')
   OR (child.canonical_key='node:15:al-satranj:attested:sense:chess-game' AND edge.relation_type='borrowing')
   OR (child.canonical_key='node:19:satranj:attested:sense:chess-game' AND edge.relation_type='historical_continuation')
   OR (child.canonical_key='node:20:catrang:attested:sense:chess-game' AND edge.relation_type='borrowing')
   OR (child.canonical_key='node:22:caturanga:attested:sense:four-limbed-army-game' AND edge.relation_type='knowledge_boundary');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,93,'Noun etymology note on the Indo-Iranian verbal base','supports','Records the rival LIV *h₃ekʷ- analysis and the uncertainty surrounding the traditional comparison.' FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id WHERE child.canonical_key IN ('node:21:xshayathiya:attested:sense:king-sovereign','node:6:h3ekw:reconstructed:sense:catch-sight-envisage') AND edge.relation_type IN ('competing_reconstruction','knowledge_boundary');
