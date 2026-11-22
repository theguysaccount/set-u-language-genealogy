-- Promote the English technical cluster around etymology. These dossiers keep
-- source-reported first-use horizons distinct from coinage, expose competing
-- formation analyses, and make -al, -ist, and -ize traversable graph branches
-- without pretending that affixes are the lexical ancestors of the base noun.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(113,'etymological','etymological','etymological','/ˌe-tə-mə-ˈlä-ji-kəl/','adjective','Of, relating to, or based on etymology; an Early Modern English adjective whose exact formation is described differently by major historical dictionaries.','Etymological does not mean “true by origin.” Etymology records how a form and meaning developed; it does not overrule the word’s established current meaning.','reviewed'),
(114,'etymologist','etymologist','etymologist','/ˌe-tə-ˈmä-lə-jist/','noun','A specialist in etymology; an English agent noun formed on etymology with -ist.','An etymologist is not literally an ancient “truth expert.” The specialist title is Early Modern English, built on an older learned discipline noun with a productive agent suffix.','reviewed'),
(115,'etymologize','etymologize','etymologize','/ˌe-tə-ˈmä-lə-ˌjīz/','verb','To discover, formulate, state, or study etymologies; an English verb formed from etymology with -ize.','The verb etymologize appears in the English record before etymology is reported in the fully modern “science of linguistic analysis” sense.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(262,'etymonline-etymological','Etymological — Online Etymology Dictionary','Douglas Harper',2026,'Etymonline','https://www.etymonline.com/word/etymological',NULL,'historical_dictionary'),
(263,'mw-etymologist','Etymologist — Merriam-Webster.com Dictionary','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/etymologist',NULL,'historical_dictionary'),
(264,'etymonline-etymologist','Etymologist — Online Etymology Dictionary','Douglas Harper',2026,'Etymonline','https://www.etymonline.com/word/etymologist',NULL,'historical_dictionary'),
(265,'mw-etymologize','Etymologize — Merriam-Webster.com Dictionary','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/etymologize',NULL,'historical_dictionary'),
(266,'etymonline-etymologize','Etymologize — Online Etymology Dictionary','Douglas Harper',2026,'Etymonline','https://www.etymonline.com/word/etymologize',NULL,'historical_dictionary'),
(267,'etymonline-suffix-al','-al — Online Etymology Dictionary','Douglas Harper',2026,'Etymonline','https://www.etymonline.com/word/-al',NULL,'historical_dictionary'),
(268,'etymonline-suffix-ical','-ical — Online Etymology Dictionary','Douglas Harper',2026,'Etymonline','https://www.etymonline.com/word/-ical',NULL,'historical_dictionary'),
(269,'etymonline-suffix-ist','-ist — Online Etymology Dictionary','Douglas Harper',2026,'Etymonline','https://www.etymonline.com/word/-ist',NULL,'historical_dictionary'),
(270,'etymonline-suffix-ize','-ize — Online Etymology Dictionary','Douglas Harper',2026,'Etymonline','https://www.etymonline.com/word/-ize',NULL,'historical_dictionary'),
(271,'mw-first-known-use-guide','What “First Known Use” Means','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/grammar/how-to-use-the-dictionary/first-known-use',NULL,'editorial_method'),
(272,'mw-etymology-faq','Frequently Asked Questions About Etymology','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/help/faq-etymology',NULL,'editorial_method');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(662,113,1,1,'etymological','etymological','etymology-related-adjective','etymological','/ˌe-tə-mə-ˈlä-ji-kəl/','attested','1588–today',1588,NULL,'of, relating to, or based on etymology','Merriam-Webster reports 1588; Etymonline reports the 1590s. These are source horizons, not proof of coinage.'),
(663,113,9,2,'etymologicus','etymologicus','etymology-related-adjective','etymologicus',NULL,'attested','Late Latin grammatical tradition',300,600,'etymological; conforming to etymology','Merriam-Webster identifies Latin etymologicus behind English etymologic and etymological.'),
(664,113,10,3,'ἐτυμολογικός','etymologikos','etymology-related-adjective','etymologikós',NULL,'attested','post-Classical Ancient Greek, broad horizon',-300,600,'belonging to or based on etymology','Shared sense-specific node used by the French étymologique dossier.'),
(665,113,10,4,'ἐτυμολογία','etymologia','word-history-discipline','etymología',NULL,'attested','Hellenistic and later Greek',-300,600,'inquiry into a word’s true sense','The adjective is derived from this Greek technical noun plus -ikos.'),
(666,113,10,5,'ἔτυμος','etymos','true-adjective','étymos','/é.ty.mos/','attested','Archaic and later Ancient Greek',-800,600,'true, real, actual','Attested Greek first member of ἐτυμολογία.'),
(667,113,6,6,'*setu-mo-','setu-mo','true-adjective','*setu-mo-',NULL,'reconstructed','Proto-Indo-European formation, proposed',-4500,-2500,'true, real','Published proposed formation, not a written stage.'),
(668,113,6,7,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared proposed horizon behind the project name.'),
(669,113,7,8,'UNKNOWN','unknown','english-etymological-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No single older ancestor is promoted.','The English formation disagreement does not change the uncertainty of the deepest comparative analysis.'),

(670,114,1,1,'etymologist','etymologist','specialist-person','etymologist','/ˌe-tə-ˈmä-lə-jist/','attested','1604–today',1604,NULL,'a specialist in etymology','Merriam-Webster reports 1604; Etymonline reports the 1630s.'),
(671,114,1,2,'etymology','etymology','default','etymology',NULL,'attested','late 14th century–today',1350,NULL,'the history and origin of a word','The lexical base to which English -ist is added.'),
(672,114,8,3,'ethimologie','ethimologie','default','ethimologie',NULL,'attested','14th century',1300,1400,'derivation of a word','Shared Old French donor node.'),
(673,114,9,4,'etymologia','etymologia','default','etymologia',NULL,'attested','antiquity–medieval',-100,1400,'explanation of a word by its origin','Shared Latin transmission node.'),
(674,114,10,5,'ἐτυμολογία','etymologia','default','etymología',NULL,'attested','Classical and Hellenistic Greek',-400,200,'analysis of a word’s true sense','Shared Greek compound node.'),
(675,114,10,6,'ἔτυμος','etymos','default','étymos',NULL,'attested','Archaic Greek',-800,-400,'true, real, genuine','Shared Greek true-word node in the original etymology path.'),
(676,114,6,7,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared proposed horizon.'),
(677,114,7,8,'UNKNOWN','unknown','english-etymologist-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No single older ancestor is promoted.','The specialist suffix has its own separately traversable history.'),

(678,115,1,1,'etymologize','etymologize','etymology-practice-verb','etymologize','/ˌe-tə-ˈmä-lə-ˌjīz/','attested','1532–today',1532,NULL,'discover, formulate, state, or study etymologies','Merriam-Webster reports transitive use in 1532; Etymonline reports the 1530s and intransitive use from the 1650s.'),
(679,115,1,2,'etymology','etymology','default','etymology',NULL,'attested','late 14th century–today',1350,NULL,'the history and origin of a word','The lexical base to which English -ize is added.'),
(680,115,8,3,'ethimologie','ethimologie','default','ethimologie',NULL,'attested','14th century',1300,1400,'derivation of a word','Shared Old French donor node.'),
(681,115,9,4,'etymologia','etymologia','default','etymologia',NULL,'attested','antiquity–medieval',-100,1400,'explanation of a word by its origin','Shared Latin transmission node.'),
(682,115,10,5,'ἐτυμολογία','etymologia','default','etymología',NULL,'attested','Classical and Hellenistic Greek',-400,200,'analysis of a word’s true sense','Shared Greek compound node.'),
(683,115,10,6,'ἔτυμος','etymos','default','étymos',NULL,'attested','Archaic Greek',-800,-400,'true, real, genuine','Shared Greek true-word node.'),
(684,115,6,7,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared proposed horizon.'),
(685,115,7,8,'UNKNOWN','unknown','english-etymologize-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No single older ancestor is promoted.','French and Medieval Latin comparisons are not promoted as direct donors without evidence of that route.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(550,113,662,663,'learned_formation','English drops Latin -us through the learned adjective etymologic and adds adjectival -al; a competing internal etymology + -ical analysis remains visible in the graph.','A Latin adjective about word origins becomes the English adjective of relation or conformity.','Merriam-Webster Editors','probable','Merriam-Webster and Etymonline segment the English formation differently.','Merriam-Webster reports first known use in 1588; Etymonline reports the 1590s.','reviewed'),
(551,113,663,664,'borrowing','Latin etymologicus adapted Greek etymologikos within learned grammatical vocabulary.','The adjective retained the sense of belonging to or based on etymology.','Merriam-Webster Editors','established',NULL,'The reviewed sources establish the donor chain but do not identify one dated transfer event.','reviewed'),
(552,113,664,665,'derivation','Greek ἐτυμολογικός adds the adjectival suffix -ικός to ἐτυμολογία.','The name of an inquiry becomes an adjective meaning belonging to or based on that inquiry.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(553,113,665,666,'derivation','The compound joins ἔτυμος “true, real” and -λογία “account, study.”','A word’s “true sense” becomes an object of analysis.','Ancient Greek lexicography','established',NULL,NULL,'reviewed'),
(554,113,666,667,'inheritance','The Greek form is analyzed from *setu-mo- with loss of initial *s and Greek development of the reconstructed formation.','A reconstructed adjective of truth or reality continues as Greek “true, real, actual.”','Robert Beekes · Martin Gális','proposed','The *setu-mo- morphology is published but not directly attested or universally settled.',NULL,'reviewed'),
(555,113,667,668,'derivation','The proposed *-mo- adjective is built on the reconstructed *set-u- base.','The true-order base becomes an adjective meaning true or real.','Robert Beekes · Charles de Lamberterie','proposed','Both the base and derivational segmentation are reconstructed.',NULL,'reviewed'),
(556,113,668,669,'knowledge_boundary','No older form commands secure consensus beyond the *set-u- proposal.','The adjective reaches the open comparative horizon rather than a manufactured ultimate root.','SET-U editorial boundary','boundary','The boundary preserves competing analyses.',NULL,'reviewed'),

(557,114,670,671,'derivation','English adds the person-forming suffix -ist to etymology.','The discipline name becomes the title of a specialist who studies word histories.','Merriam-Webster Editors · Douglas Harper','established',NULL,'The sources report different surviving-use horizons: 1604 and the 1630s.','reviewed'),
(558,114,671,672,'borrowing','English adapted the learned French form and later aligned spelling with the classical model.','The technical term broadened into the modern historical discipline.','OED · historical lexicography','established',NULL,NULL,'reviewed'),
(559,114,672,673,'borrowing','Old French transmitted the learned Latin form.','Scholarly explanation of a word’s origin continued.','French historical lexicography','established',NULL,NULL,'reviewed'),
(560,114,673,674,'borrowing','Latin borrowed Greek ἐτυμολογία.','A Greek technical concept entered Latin grammatical tradition.','Latin and Greek lexicography','established',NULL,NULL,'reviewed'),
(561,114,674,675,'derivation','The compound joins ἔτυμος “true, real” and -λογία “account, study.”','A word’s “true sense” becomes an object of analysis.','Ancient Greek lexicography','established',NULL,NULL,'reviewed'),
(562,114,675,676,'inheritance','The attested Greek adjective is analyzed through an earlier *setu-mo- formation; initial *s is lost in the proposed path.','Truth, actuality, and proper order form the reconstructed semantic field.','Beekes 2010 · Pinault · de Lamberterie','proposed','The exact morphology and wider family have competing analyses.',NULL,'reviewed'),
(563,114,676,677,'knowledge_boundary','No older form commands secure consensus.','The title reaches the same disputed comparative horizon as its discipline noun.','SET-U editorial boundary','boundary','The specialist suffix follows a separate branch.',NULL,'reviewed'),

(564,115,678,679,'derivation','English adds verb-forming -ize to etymology.','The name of the inquiry becomes the act of discovering, stating, or studying etymologies.','Merriam-Webster Editors · Douglas Harper','established',NULL,'The transitive use is reported from 1532 or the 1530s; intransitive use is reported from the 1650s.','reviewed'),
(565,115,679,680,'borrowing','English adapted the learned French form and later aligned spelling with the classical model.','The technical term broadened into the modern historical discipline.','OED · historical lexicography','established',NULL,NULL,'reviewed'),
(566,115,680,681,'borrowing','Old French transmitted the learned Latin form.','Scholarly explanation of a word’s origin continued.','French historical lexicography','established',NULL,NULL,'reviewed'),
(567,115,681,682,'borrowing','Latin borrowed Greek ἐτυμολογία.','A Greek technical concept entered Latin grammatical tradition.','Latin and Greek lexicography','established',NULL,NULL,'reviewed'),
(568,115,682,683,'derivation','The compound joins ἔτυμος “true, real” and -λογία “account, study.”','A word’s “true sense” becomes an object of analysis.','Ancient Greek lexicography','established',NULL,NULL,'reviewed'),
(569,115,683,684,'inheritance','The attested Greek adjective is analyzed through an earlier *setu-mo- formation; initial *s is lost in the proposed path.','Truth, actuality, and proper order form the reconstructed semantic field.','Beekes 2010 · Pinault · de Lamberterie','proposed','The exact morphology and wider family have competing analyses.',NULL,'reviewed'),
(570,115,684,685,'knowledge_boundary','No older form commands secure consensus.','The verb reaches the same disputed comparative horizon as its base noun.','SET-U editorial boundary','boundary','The -ize component follows a separately sourced graph branch.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(550,261,'Word History: etymological from etymologic + -al; etymologic from Latin etymologicus','supports','Supplies the preferred learned-formation analysis and Latin base.'),
(550,262,'Word origin: etymology + -ical','challenges','Publishes a competing English segmentation.'),
(551,261,'Word History: Latin etymologicus from Greek etymologikos','supports','Supplies the Greek-to-Latin adjective route.'),
(552,261,'Word History: Greek etymologikos from etymologia + -ikos','supports','Explicitly supplies the noun-plus-suffix analysis.'),
(553,10,'Headword and compound analysis','supports','Documents the Greek technical noun and its true-sense analysis.'),
(554,12,'s.v. ἔτυμος and ἐτεός, pp. 473–475','supports','Publishes the *setu-mo- analysis.'),
(554,254,'Eteocles discussion: ἔτυμος < *setu-mo-','context','Independently summarizes the proposed formation.'),
(555,12,'s.v. ἔτυμος, derivational discussion','supports','Supplies the proposed *-mo- segmentation.'),
(556,11,'Modern etymology and bibliography','supports','Defines the disputed horizon.'),

(557,263,'Headword formation and definition','supports','Defines the specialist and dates the first-known-use horizon to 1604.'),
(557,264,'1630s; etymology + -ist','context','Independently supplies the productive English formation and a later source horizon.'),
(558,7,'Word History','supports','Supplies the English-to-French path of the base noun.'),
(559,8,'Étymologie','supports','Supplies French and Latin transmission.'),
(560,9,'etymologia','supports','Supplies Latin and Greek transmission.'),
(561,10,'ἐτυμολογία','supports','Supplies the Greek compound analysis.'),
(562,11,'ἐτός / ἔτυμος dossier','supports','Publishes the *set-u- analysis and its competing discussion.'),
(562,12,'s.v. ἔτυμος / ἐτεός','context','Publishes the reconstructed morphological analysis.'),
(563,11,'Dossier bibliography','supports','Defines the unresolved deep boundary.'),

(564,265,'Definitions and First Known Use','supports','Defines transitive and intransitive uses and reports 1532.'),
(564,266,'1530s; etymology + -ize; intransitive from 1650s','context','Supplies the productive English formation and sense chronology.'),
(565,7,'Word History','supports','Supplies the English-to-French path of the base noun.'),
(566,8,'Étymologie','supports','Supplies French and Latin transmission.'),
(567,9,'etymologia','supports','Supplies Latin and Greek transmission.'),
(568,10,'ἐτυμολογία','supports','Supplies the Greek compound analysis.'),
(569,11,'ἐτός / ἔτυμος dossier','supports','Publishes the *set-u- analysis and its competing discussion.'),
(569,12,'s.v. ἔτυμος / ἐτεός','context','Publishes the reconstructed morphological analysis.'),
(570,11,'Dossier bibliography','supports','Defines the unresolved deep boundary.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(148,662,261,'1588',1588,'Merriam-Webster first-known-use report for etymological','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported earliest written record located by current scholarship; no underlying 1588 object was directly inspected.'),
(149,670,263,'1604',1604,'Merriam-Webster first-known-use report for etymologist','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported earliest written record located by current scholarship; no underlying 1604 object was directly inspected.'),
(150,678,265,'1532',1532,'Merriam-Webster first-known-use report for transitive etymologize','First Known Use of transitive etymologize',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported earliest written record for the transitive sense; no underlying 1532 object was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(351,113,'etymologic','English','learned adjective beneath the Merriam-Webster formation analysis',261),
(352,113,'etymologically','English','adverb in the same modern family',261),
(353,113,'étymologique','French','parallel learned adjective from Latin etymologicus',259),
(354,113,'etymology','English','base noun in the competing internal segmentation',262),
(355,113,'etymologist','English','specialist noun in the same technical family',263),
(356,113,'etymologize','English','practice verb in the same technical family',265),
(357,114,'etymology','English','base discipline noun',264),
(358,114,'etymologer','English','historical competing specialist formation reported from the 1640s',264),
(359,114,'etymological','English','adjective in the same technical family',261),
(360,114,'etymologize','English','practice verb in the same technical family',265),
(361,115,'etymology','English','base discipline noun',266),
(362,115,'etymologise','British English','spelling variant of the practice verb',265),
(363,115,'etymologist','English','specialist noun in the same technical family',263),
(364,115,'étymologiser','French','source-reported comparison, not promoted as a proven donor',266),
(365,115,'etymologisare','Medieval Latin','source-reported comparison, not promoted as a proven donor',266);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(417,113,1,'Ancient Greek and Latin learned tradition','transfer date unresolved','Greek etymologikos enters Latin as etymologicus, but the reviewed route source does not identify one borrowing event.',NULL,NULL,'broad',NULL,NULL,'unresolved','The donor chain is established more securely than one date or place.'),
(418,113,2,'Early Modern England','1588–1590s source horizons','Two historical dictionaries report close but nonidentical first-record horizons for etymological.',52200000,-1500000,'regional',1588,1599,'range','This interval contains both reports and is not a claim about coinage.'),
(419,113,3,'Global English','current use','The adjective remains current for matters of etymology and etymological analysis.',NULL,NULL,'global',1588,NULL,'open','The open interval begins with the earliest reviewed source report.'),

(420,114,1,'Medieval and Early Modern English learned vocabulary','late 14th century–1604','The base etymology precedes the specialist title; productive -ist creates a person-label in English.',52200000,-1500000,'regional',1350,1604,'range','The lower bound is the reviewed base-noun horizon, not a date for etymologist.'),
(421,114,2,'Early Modern England','1604–1630s source horizons','Merriam-Webster reports 1604 while Etymonline reports the 1630s.',52200000,-1500000,'regional',1604,1639,'range','The interval preserves the source disagreement pending direct witness inspection.'),
(422,114,3,'Global English','current specialist title','Etymologist remains the person-label for a specialist in word histories.',NULL,NULL,'global',1604,NULL,'open','The open interval begins with the earliest reviewed source report.'),

(423,115,1,'Medieval English learned vocabulary','late 14th century onward','The base etymology is established in English before the derived verb appears.',52200000,-1500000,'regional',1350,1531,'range','This stage dates the base, not the verb.'),
(424,115,2,'Early Modern England','1532 transitive horizon','The verb first appears in the reviewed source record for discovering, formulating, or stating an etymology.',52200000,-1500000,'regional',1532,1539,'range','The range contains Merriam-Webster’s exact report and Etymonline’s decade report.'),
(425,115,3,'English semantic expansion','1650s intransitive horizon','Etymonline reports the intransitive study-or-practice use from the 1650s.',52200000,-1500000,'regional',1650,1659,'range','A decade-wide range preserves the source precision.'),
(426,115,4,'Global English','current specialist verb','Transitive and intransitive uses remain lexicographically recognized.',NULL,NULL,'global',1532,NULL,'open','The open interval begins with the earliest reviewed source report.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(417,261,'Word History: Latin etymologicus from Greek etymologikos','supports','Names the learned donor chain while leaving a unique transfer event undated.'),
(418,261,'First Known Use: 1588','supports','Supplies the earliest reviewed exact-year report.'),
(418,262,'1590s','context','Supplies the competing decade-level horizon.'),
(419,261,'Current definition','supports','Documents the adjective’s current scope.'),
(420,7,'Word History and First Known Use','supports','Places the English base noun before the derived specialist title.'),
(420,269,'-ist: one who does or makes','context','Supplies the productive person-forming function.'),
(421,263,'First Known Use: 1604','supports','Supplies the earlier exact-year report.'),
(421,264,'1630s','challenges','Supplies the later decade-level report.'),
(422,263,'Current definition','supports','Documents the current specialist title.'),
(423,7,'Word History and First Known Use','supports','Places the English base noun before the derived verb.'),
(424,265,'First Known Use of transitive etymologize: 1532','supports','Supplies the exact-year report.'),
(424,266,'1530s, transitive','context','Supplies the compatible decade report.'),
(425,266,'Intransitive use from 1650s','supports','Supplies the later sense horizon.'),
(426,265,'Current transitive and intransitive definitions','supports','Documents both current grammatical uses.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(205,113,'How was English etymological formed?','Merriam-Webster analyzes etymologic from Latin etymologicus and etymological as etymologic + -al; Etymonline analyzes etymology + -ical.','probable','Two reviewed historical dictionaries publish different segmentations.','open','The canonical dossier uses the explicit Latin-adjective route while the graph exposes the competing internal derivation.'),
(206,113,'Does the English record begin in 1588 or the 1590s?','The reports differ slightly: Merriam-Webster gives 1588 and Etymonline gives the 1590s. Neither date proves the word was coined then.','probable','The earliest currently located written record can change as scholarship finds earlier evidence.','open','Both reports and the evidence limit remain visible pending direct witness inspection.'),
(207,113,'Does etymological mean correct because of a word’s origin?','No. Etymology is a word’s historical development, distinct from its current definition; origin does not legislate present meaning.','established','Merriam-Webster’s methodological FAQ separates etymology from definition.','resolved','The contrarian truth rejects the etymological fallacy rather than treating a past sense as the real one.'),
(208,114,'Does the specialist title begin in 1604 or the 1630s?','Merriam-Webster reports 1604; Etymonline reports the 1630s. These are different source horizons, not necessarily irreconcilable claims about the same underlying object.','probable','Two reviewed references give different earliest-record labels.','open','The timeline spans both and discloses that no primary token was inspected.'),
(209,114,'Is -ist part of the ancestry of etymology itself?','No. -ist creates the English person-label etymologist; the base etymology has its own older French, Latin, and Greek ancestry.','established','The suffix reference defines the agent-forming function and the word entries identify the base formation.','resolved','The graph branches at etymologist into a lexical-base trail and an affix trail.'),
(210,114,'Was an etymologist an ancient Greek professional title?','No. The English agent noun is reported only from the Early Modern period, though its base ultimately contains Greek material.','established','The English first-record sources and the Greek base history belong to different chronological layers.','resolved','The dossier prevents component meaning from becoming a fabricated ancient occupation.'),
(211,115,'Does etymologize begin in 1532 or the 1530s?','The reports are compatible at different precision: Merriam-Webster gives 1532 and Etymonline gives the 1530s.','established','An exact year falls inside the published decade range.','resolved','Both locators remain attached to the same derived English edge.'),
(212,115,'Did the transitive and intransitive senses appear together?','Not in the reviewed record. Transitive use is reported in the 1530s; Etymonline places the intransitive study-or-practice use in the 1650s.','established','The historical entry distinguishes the two grammatical histories.','resolved','Separate journey stages preserve the semantic chronology.'),
(213,115,'Did English borrow etymologize directly from French or Medieval Latin?','The reviewed entry forms English etymologize from etymology + -ize and merely compares French étymologiser and Medieval Latin etymologisare. Comparison alone does not prove direct borrowing.','established','The source’s grammar distinguishes its formation claim from its comparanda.','resolved','The comparanda are relatives, not parent nodes.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(205,261,'Word History: etymologic + -al; etymologic from Latin etymologicus','supports','Publishes the Latin-adjective-plus-English-suffix analysis.'),
(205,262,'Word origin: etymology + -ical','challenges','Publishes the competing internal segmentation.'),
(205,268,'-ical: -ic + -al historical analysis','context','Documents that -ical itself is a compound suffix history.'),
(206,261,'First Known Use: 1588','supports','Publishes the exact-year horizon.'),
(206,262,'1590s','challenges','Publishes the later decade horizon.'),
(206,271,'First-known-use methodology','context','Explains why the date is an earliest located written record rather than certain coinage.'),
(207,272,'Etymology versus definition FAQ','supports','Separates historical development from current definition.'),
(208,263,'First Known Use: 1604','supports','Publishes the exact-year horizon.'),
(208,264,'1630s','challenges','Publishes the later decade horizon.'),
(208,271,'First-known-use methodology','context','Defines the evidence limit shared by both reports.'),
(209,264,'etymology + -ist','supports','Identifies the base-plus-agent-suffix formation.'),
(209,269,'-ist: one who does or makes','supports','Defines the person-forming function and deeper suffix route.'),
(210,263,'First Known Use: 1604','supports','Places the English title in the Early Modern record.'),
(210,7,'Word History: Greek components beneath etymology','context','Separates ancient component ancestry from the later English title.'),
(211,265,'First Known Use: 1532','supports','Supplies the exact-year report.'),
(211,266,'1530s','context','Supplies the compatible decade report.'),
(212,266,'Transitive 1530s; intransitive from 1650s','supports','Directly separates the sense chronology.'),
(212,265,'Transitive and intransitive definitions','context','Documents both current grammatical uses.'),
(213,266,'etymology + -ize; compare French étymologiser and Medieval Latin etymologisare','supports','Distinguishes the English formation from merely compared forms.'),
(213,270,'Historical route of -ize','context','Supplies the suffix ancestry without turning every comparable whole word into a donor.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(98,113,2009,'etymological','Origin does not get the last word.','Calling something “etymological” describes its historical analysis; it does not make an obsolete sense more correct than a word’s established current meaning.','A',100,'The methodological claim is directly supported; the precise English formation remains openly disputed.'),
(99,114,2010,'etymologist','The ancient-looking title is Early Modern English.','Etymologist is a productive English formation on etymology + -ist, reported from 1604 or the 1630s—not an inherited Greek professional title.','A',99,'The formation is established while the two source horizons remain visible.'),
(100,115,2011,'etymologize','The verb came before the science label.','Etymologize is reported from 1532 or the 1530s, while Etymonline dates etymology in the modern “science of linguistic analysis” sense to the 1640s.','A',100,'The claim compares source-reported sense horizons, not word coinage dates.');
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
(98,272,'Etymology versus definition FAQ','supports','Establishes that word history and current definition are distinct questions.'),
(98,261,'Current definition and Word History','context','Documents the adjective and its learned formation.'),
(99,264,'1630s; etymology + -ist','supports','Supplies the productive English formation and later source horizon.'),
(99,263,'First Known Use: 1604','context','Supplies the earlier source horizon.'),
(100,266,'1530s etymologize; etymology scientific sense from 1640s','supports','Supplies both source-reported semantic horizons.'),
(100,265,'First Known Use: 1532','context','Supplies the exact-year verb report.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(76,113,112,'TWO ADJECTIVES, TWO FORMATION QUESTIONS','English etymological and French étymologique share Latin and Greek ancestry, but the English segmentation remains disputed while French references report a direct Latin borrowing.','99','A','reviewed'),
(77,114,115,'THE PERSON AND THE PRACTICE SPLIT AT THE SUFFIX','Etymologist and etymologize share the entire etymology base trail, then diverge into independently traversable -ist and -ize histories.','98','A','reviewed'),
(78,115,109,'THE VERB PREDATES THE SCIENCE SENSE','English speakers could etymologize in the sixteenth century; the fully modern science label for etymology is reported only from the seventeenth.','100','A','reviewed');
--> statement-breakpoint

-- Canonicalize the dossier forms, reusing the already-reviewed Greek, Latin,
-- French, English-base, and reconstructed nodes where their sense keys match.
WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 662 AND 685
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
WHERE f.id BETWEEN 662 AND 685;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 550 AND 570;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 550 AND 570;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 550 AND 570;
--> statement-breakpoint

-- Graph-only affix nodes. Each node has an explanatory note and every adjacent
-- edge has a claim-level source. Alternative donor routes remain graded rather
-- than being flattened into one invented suffix genealogy.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:1:-al:attested:sense:adjective-suffix',1,'-al','-al','adjective-suffix','-al',NULL,'attested','Middle English–today',1150,NULL,'of, like, related to, or pertaining to','Productive English adjective suffix; Etymonline reports French and direct Latin channels.','reviewed'),
('node:8:-al:attested:sense:adjective-suffix',8,'-al','-al','adjective-suffix','-al',NULL,'attested','Old French period',842,1400,'adjective-forming suffix','A French transmission channel for English -al, ultimately from Latin -alis.','reviewed'),
('node:9:-alis:attested:sense:adjective-suffix',9,'-ālis','-alis','adjective-suffix','-ālis',NULL,'attested','Latin antiquity',-700,700,'of, related to, pertaining to','Latin suffix behind French and English -al formations.','reviewed'),
('boundary:graph:etymological-al',7,'UNKNOWN','unknown','etymological-al-boundary',NULL,NULL,'boundary','before the reviewed Latin suffix analysis',NULL,NULL,'No deeper suffix ancestor is promoted.','The affix branch ends at the reviewed source horizon.','reviewed'),
('node:1:-ist:attested:sense:person-suffix',1,'-ist','-ist','person-suffix','-ist',NULL,'attested','English, 16th century–today',1500,NULL,'one who does, makes, practices, or specializes in','Productive English person suffix with French and direct Latin channels.','reviewed'),
('node:11:-iste:attested:sense:person-suffix',11,'-iste','-iste','person-suffix','-iste',NULL,'attested','French',1400,NULL,'person associated with an activity or doctrine','French channel behind many English -ist formations.','reviewed'),
('node:9:-ista:attested:sense:person-suffix',9,'-ista','-ista','person-suffix','-ista',NULL,'attested','Latin and Late Latin',-100,700,'person associated with an activity','Latin adaptation of Greek -istēs.','reviewed'),
('node:10:-istes:attested:sense:person-suffix',10,'-ιστής','-istes','person-suffix','-istḗs',NULL,'attested','Ancient Greek',-800,600,'agent or person associated with an action','Greek composite person-forming suffix behind Latin -ista.','reviewed'),
('boundary:graph:etymologist-ist',7,'UNKNOWN','unknown','etymologist-ist-boundary',NULL,NULL,'boundary','before the reviewed Greek suffix analysis',NULL,NULL,'No deeper unique suffix ancestor is promoted.','Etymonline calls the Greek suffix composite, but this graph does not invent a single lexical parent.','reviewed'),
('node:1:-ize:attested:sense:verb-suffix',1,'-ize','-ize','verb-suffix','-ize',NULL,'attested','Middle English–today',1150,NULL,'make, become, practice, or perform','Productive English verb suffix transmitted through French and Latin from Greek.','reviewed'),
('node:8:-iser-izer:attested:sense:verb-suffix',8,'-iser / -izer','-iser-izer','verb-suffix','-iser / -izer',NULL,'attested','Old French period',842,1400,'verb-forming suffix','Old French transmission stage behind Middle English -ize.','reviewed'),
('node:14:-izare:attested:sense:verb-suffix',14,'-izāre','-izare','verb-suffix','-izāre',NULL,'attested','Late and Medieval Latin',200,1400,'verb-forming suffix','Latin adaptation of Greek -izein.','reviewed'),
('node:10:-izein:attested:sense:verb-suffix',10,'-ίζειν','-izein','verb-suffix','-ízein',NULL,'attested','Ancient Greek',-800,600,'do or practice the action of the base','Greek verb-forming source behind Latin, French, and English -ize.','reviewed'),
('boundary:graph:etymologize-ize',7,'UNKNOWN','unknown','etymologize-ize-boundary',NULL,NULL,'boundary','before the reviewed Greek suffix analysis',NULL,NULL,'No deeper unique suffix ancestor is promoted.','The graph stops at the source-supported Greek suffix horizon.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:etymological:attested:sense:etymology-related-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:etymology:attested'),'competing_derivation','English etymological is alternatively segmented as etymology plus -ical.','The discipline noun becomes a relational adjective.','Douglas Harper','proposed','This competes with Merriam-Webster’s etymologic + -al analysis.','Etymonline reports the 1590s.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:etymological:attested:sense:etymology-related-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:-al:attested:sense:adjective-suffix'),'derivational_component','The English adjective ends in productive -al under Merriam-Webster’s segmentation.','The suffix marks relation or pertinence.','Merriam-Webster Editors','established',NULL,'The component is synchronic and historical evidence, not the lexical parent of etymology.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:-al:attested:sense:adjective-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:-al:attested:sense:adjective-suffix'),'borrowing','Middle English receives the suffix through French formations.','The adjective-forming function remains stable.','Douglas Harper','probable','The source also allows direct Latin formation.','Middle English onward.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:-al:attested:sense:adjective-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:-alis:attested:sense:adjective-suffix'),'competing_borrowing','English also forms learned words directly on Latin -alis.','The adjective-forming function remains stable.','Douglas Harper','proposed','This is a parallel direct-Latin channel, not a claim that every -al word bypassed French.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:-al:attested:sense:adjective-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:-alis:attested:sense:adjective-suffix'),'inheritance','Old French -al continues Latin -alis through regular Romance loss of final syllables.','The adjective-forming function remains stable.','Douglas Harper','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:-alis:attested:sense:adjective-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:etymological-al'),'knowledge_boundary','No deeper unique source is promoted from the reviewed suffix entry.','The branch stops before unsupported segmentation.','SET-U editorial boundary','boundary','The source horizon is exposed rather than extended.',NULL,'reviewed'),

((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:etymologist:attested:sense:specialist-person'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:-ist:attested:sense:person-suffix'),'derivational_component','English etymologist adds -ist to the discipline noun.','The suffix creates the person or specialist label.','Douglas Harper','established',NULL,'Reported from the 1630s by Etymonline.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:-ist:attested:sense:person-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:11:-iste:attested:sense:person-suffix'),'borrowing','English receives -ist through French -iste in many learned formations.','The agent and adherent function continues.','Douglas Harper','probable','The source also identifies direct Latin formations.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:-ist:attested:sense:person-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:-ista:attested:sense:person-suffix'),'competing_borrowing','English also uses -ist in words formed directly on Latin -ista.','The person-forming function continues.','Douglas Harper','proposed','This is a parallel learned channel.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:11:-iste:attested:sense:person-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:-ista:attested:sense:person-suffix'),'inheritance','French -iste continues Latin -ista.','The person-forming function continues.','Douglas Harper','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:-ista:attested:sense:person-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:-istes:attested:sense:person-suffix'),'borrowing','Latin -ista adapts Greek -istēs.','The agent or adherent sense continues.','Douglas Harper','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:-istes:attested:sense:person-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:etymologist-ist'),'knowledge_boundary','The Greek suffix is composite, but no single deeper lexical parent is promoted here.','The branch ends before unsupported decomposition.','SET-U editorial boundary','boundary','A morphological history need not resolve to one word root.',NULL,'reviewed'),

((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:etymologize:attested:sense:etymology-practice-verb'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:-ize:attested:sense:verb-suffix'),'derivational_component','English adds productive -ize to etymology.','The noun becomes an action or practice verb.','Douglas Harper','established',NULL,'Transitive use is reported from the 1530s.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:-ize:attested:sense:verb-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:-iser-izer:attested:sense:verb-suffix'),'borrowing','Middle English -ize follows Old French -iser and -izer.','The verb-forming function continues.','Douglas Harper','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:-iser-izer:attested:sense:verb-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:14:-izare:attested:sense:verb-suffix'),'borrowing','Old French adapts Late Latin -izare.','The verb-forming function continues.','Douglas Harper','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:14:-izare:attested:sense:verb-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:-izein:attested:sense:verb-suffix'),'borrowing','Late Latin -izare adapts Greek -izein.','Doing or practicing the action of a base continues as a productive verb pattern.','Douglas Harper','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:-izein:attested:sense:verb-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:etymologize-ize'),'knowledge_boundary','No deeper unique source is promoted from the reviewed suffix entry.','The branch stops before unsupported segmentation.','SET-U editorial boundary','boundary','The source-supported history ends at Greek -izein.',NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:etymological:attested:sense:etymology-related-adjective' AND p.canonical_key='node:1:etymology:attested' AND e.relation_type='competing_derivation'),262,'Word origin: etymology + -ical','supports','Publishes the competing internal segmentation.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:etymological:attested:sense:etymology-related-adjective' AND p.canonical_key='node:1:-al:attested:sense:adjective-suffix' AND e.relation_type='derivational_component'),261,'Word History: etymologic + -al','supports','Explicitly identifies the English -al component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:-al:attested:sense:adjective-suffix' AND p.canonical_key='node:8:-al:attested:sense:adjective-suffix' AND e.relation_type='borrowing'),267,'Middle English from French or directly from Latin -alis','supports','Supplies the French channel.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:-al:attested:sense:adjective-suffix' AND p.canonical_key='node:9:-alis:attested:sense:adjective-suffix' AND e.relation_type='competing_borrowing'),267,'Middle English from French or directly from Latin -alis','supports','Supplies the direct Latin channel.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:8:-al:attested:sense:adjective-suffix' AND p.canonical_key='node:9:-alis:attested:sense:adjective-suffix' AND e.relation_type='inheritance'),267,'French -al from Latin -alis','supports','Supplies the Romance suffix route.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:-alis:attested:sense:adjective-suffix' AND p.canonical_key='boundary:graph:etymological-al' AND e.relation_type='knowledge_boundary'),267,'Entry endpoint at Latin -alis','supports','Defines the reviewed horizon.'),

((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:etymologist:attested:sense:specialist-person' AND p.canonical_key='node:1:-ist:attested:sense:person-suffix' AND e.relation_type='derivational_component'),264,'etymology + -ist','supports','Explicitly identifies the component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:-ist:attested:sense:person-suffix' AND p.canonical_key='node:11:-iste:attested:sense:person-suffix' AND e.relation_type='borrowing'),269,'English -ist from French -iste and directly Latin -ista','supports','Supplies the French channel.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:-ist:attested:sense:person-suffix' AND p.canonical_key='node:9:-ista:attested:sense:person-suffix' AND e.relation_type='competing_borrowing'),269,'English -ist from French -iste and directly Latin -ista','supports','Supplies the direct Latin channel.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:11:-iste:attested:sense:person-suffix' AND p.canonical_key='node:9:-ista:attested:sense:person-suffix' AND e.relation_type='inheritance'),269,'French -iste from Latin -ista','supports','Supplies the Romance suffix route.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:-ista:attested:sense:person-suffix' AND p.canonical_key='node:10:-istes:attested:sense:person-suffix' AND e.relation_type='borrowing'),269,'Latin -ista from Greek -istes','supports','Supplies the Greek-to-Latin route.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:-istes:attested:sense:person-suffix' AND p.canonical_key='boundary:graph:etymologist-ist' AND e.relation_type='knowledge_boundary'),269,'Greek -istes described as composite','supports','Defines the reviewed horizon without inventing a unique parent.'),

((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:etymologize:attested:sense:etymology-practice-verb' AND p.canonical_key='node:1:-ize:attested:sense:verb-suffix' AND e.relation_type='derivational_component'),266,'etymology + -ize','supports','Explicitly identifies the component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:-ize:attested:sense:verb-suffix' AND p.canonical_key='node:8:-iser-izer:attested:sense:verb-suffix' AND e.relation_type='borrowing'),270,'Middle English -isen from Old French -iser and -izer','supports','Supplies the French route.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:8:-iser-izer:attested:sense:verb-suffix' AND p.canonical_key='node:14:-izare:attested:sense:verb-suffix' AND e.relation_type='borrowing'),270,'Old French suffix from Late Latin -izare','supports','Supplies the French-to-Latin route.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:14:-izare:attested:sense:verb-suffix' AND p.canonical_key='node:10:-izein:attested:sense:verb-suffix' AND e.relation_type='borrowing'),270,'Late Latin -izare from Greek -izein','supports','Supplies the Latin-to-Greek route.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:-izein:attested:sense:verb-suffix' AND p.canonical_key='boundary:graph:etymologize-ize' AND e.relation_type='knowledge_boundary'),270,'Entry endpoint at Greek -izein','supports','Defines the reviewed horizon.');
