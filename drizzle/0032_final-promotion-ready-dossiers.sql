INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(29,'modern-greek','Modern Greek','Indo-European','Hellenic',0,1453,NULL,'Present-day Greek and its post-medieval continuum.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(44,'hostis','hostis','hostis','/ˈhɔs.tis/','noun','The Latin word for an outsider or public enemy, preserving the historical semantic turn from foreign stranger to armed opponent.','The Latin enemy was once the stranger. Hostis originally named a foreigner or legally recognized outsider before narrowing toward public enemy.','reviewed'),
(45,'mys','μυς','mūs','/mis/','noun','The Modern Greek anatomical word for muscle, continued from Ancient Greek μῦς, which could name both a mouse and a body muscle.','In Greek, the mouse and the muscle were one word. Ancient μῦς carried both senses, and Modern Greek μυς preserves the anatomical branch.','reviewed'),
(46,'nescience','nescience','nescience','/ˈnɛʃəns/','noun','Lack of knowledge or awareness, borrowed from the Latin negative-knowing family also underlying science and the older history of nice.','Nescience is not a modern joke formed from science. It descends through Latin nescientia and nescīre—literally the not-knowing mirror of science.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(116,'ls-hostis','hostis — Lewis and Short Latin Dictionary','Charlton T. Lewis and Charles Short',1879,'Scaife ATLAS · Perseus Digital Library','https://atlas.perseus.tufts.edu/dictionaries/entry/urn:cite2:scaife-viewer:dictionary-entries.atlas_v1:lat.ls.perseus-eng2-n21026/',NULL,'historical_dictionary'),
(117,'cgl-ls-mys','μῦς — Liddell and Scott Ancient Greek Dictionary','H. G. Liddell and R. Scott; Centre for the Greek Language editors',2007,'Centre for the Greek Language','https://www.greek-language.gr/digitalResources/ancient_greek/tools/liddell-scott/search.html?lq=%CE%BC%E1%BF%A6%CF%82',NULL,'historical_dictionary'),
(118,'cgl-modern-mys','μυς — Dictionary of Standard Modern Greek','Institute for Modern Greek Studies editors',1998,'Centre for the Greek Language','https://www.greek-language.gr/greekLang/modern_greek/tools/lexica/search.html?lq=%CE%BC%CF%85%CF%82',NULL,'historical_dictionary'),
(119,'mw-nescience','Nescience — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/nescience',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(300,44,9,1,'hostis','hostis','outsider-enemy',NULL,'/ˈhɔs.tis/','attested','Latin Republic and classical period',-500,500,'foreigner or stranger in early use; later a public enemy','Lewis and Short preserve Cicero, Varro, and Festus on the semantic restriction from peregrinus to armed opponent.'),
(301,44,6,2,'*ghos-ti-','ghos-ti','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Indo-European reconstruction',-4500,-2500,'stranger, guest, host; person in reciprocal hospitality','Shared canonical root with guest, host, hostile, hospital, hotel, hostel, and hospice.'),
(302,44,7,3,'UNKNOWN','unknown','hostis-deep-boundary',NULL,NULL,'boundary','before secure reconstruction of *ghos-ti-',NULL,NULL,'No single deeper ancestor is treated as secure.','The proposed *ǵhes- comparison remains a qualified graph edge rather than this dossier’s sole ancestry.'),

(303,45,29,1,'μυς','mūs','anatomical-muscle','mys','/mis/','attested','Modern Greek',1453,NULL,'a body muscle; in learned use, also a mouse','The Dictionary of Standard Modern Greek records the anatomical sense and a learned mouse sense from Ancient Greek.'),
(304,45,10,2,'μῦς','mūs','mouse-muscle-polysemy','mŷs','/mŷːs/','attested','Ancient Greek literary record',-500,300,'mouse; also a muscle of the body','The Liddell–Scott entry cites the rodent sense in Greek literature and the anatomical sense in the same lexical entry.'),
(305,45,6,3,'*mūs-','mus','mouse-family',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'mouse; the family also produced specialized muscle words','Shared canonical reconstruction with mouse, muscle, and mussel.'),
(306,45,7,4,'UNKNOWN','unknown','mys-deep-boundary',NULL,NULL,'boundary','before the reviewed *mūs- reconstruction',NULL,NULL,'No deeper ancestor is promoted as secure.','The explicit boundary prevents comparative reconstruction from being presented as an attested word.'),

(307,46,1,1,'nescience','nescience','lack-of-knowledge',NULL,'/ˈnɛʃəns/','attested','1612–today',1612,NULL,'lack of knowledge or awareness; ignorance','Merriam-Webster reports the English noun from 1612 and traces it through Late Latin.'),
(308,46,9,2,'nescientia','nescientia','lack-of-knowledge',NULL,NULL,'attested','Late Latin',200,700,'ignorance; lack of knowledge','The abstract noun is formed on the Latin present-participial stem nescient-.'),
(309,46,9,3,'nesciens','nesciens','not-knowing-participle',NULL,NULL,'attested','Latin antiquity',-200,700,'not knowing; ignorant','Present participle of nescīre.'),
(310,46,9,4,'nescīre','nescire','not-know',NULL,NULL,'attested','Latin antiquity',-200,700,'not to know; to be unfamiliar with','Shared canonical negative-knowing node with nice.'),
(311,46,9,5,'scīre','scire','know-discern',NULL,NULL,'attested','Latin antiquity',-200,700,'to know','Shared canonical knowing node with nice and science.'),
(312,46,6,6,'*skei-','skei','cut-separate-discern',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'cut, split; proposed source of a discern-to-know development','The deeper comparison is published but explicitly disputed.'),
(313,46,7,7,'UNKNOWN','unknown','nescience-deep-boundary',NULL,NULL,'boundary','before the proposed *skei- analysis',NULL,NULL,'No securely reviewed ancestor beyond the disputed comparison.','The trail stops rather than flattening a proposed prehistory into fact.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(257,44,300,301,'inheritance','Latin hostis continues *ghos-ti- with Italic sound development and preservation of the host- stem.','The reciprocal or legally recognized outsider becomes the hostile outsider and enemy as Roman usage changes.','Merriam-Webster · American Heritage Indo-European Roots · University of Texas LRC','probable','The family connection is strong; the semantic narrowing unfolded historically rather than at one recoverable moment.',NULL,'reviewed'),
(258,44,301,302,'knowledge_boundary','No older form is promoted beyond the reviewed *ghos-ti- reconstruction.','The outsider history reaches the present evidence horizon.','SET-U editorial boundary','boundary','A proposed deeper *ǵhes- analysis remains separately labeled proposed.',NULL,'reviewed'),

(259,45,303,304,'historical_continuation','Ancient long /yː/ develops through Greek iotacism to Modern Greek /i/, while polytonic μῦς is written monotonic μυς.','The anatomical muscle sense becomes the ordinary modern center; the mouse sense survives as learned vocabulary while everyday Greek normally uses another rodent word.','Centre for the Greek Language editors','established','Both the modern anatomical entry and its Ancient Greek source are directly documented.','Ancient Greek to Modern Greek.','reviewed'),
(260,45,304,305,'inheritance','Greek μῦς preserves the inherited long-vowel mouse stem represented by reconstructed *mūs-; the inflected stem appears as μυ-.','The inherited mouse word also acquires the anatomical muscle sense within Greek.','Liddell and Scott · American Heritage Dictionary Editors · University of Texas LRC','probable','The Greek form and polysemy are attested; the Indo-European ancestor is reconstructed by cross-branch comparison.','Proto-Indo-European prehistory to attested Ancient Greek.','reviewed'),
(261,45,305,306,'knowledge_boundary','No older form is promoted beyond the reviewed Indo-European *mūs- reconstruction.','The mouse-and-muscle history reaches the present evidence horizon.','SET-U editorial boundary','boundary','This is an evidence boundary, not a claim that no deeper proposal exists.',NULL,'reviewed'),

(262,46,307,308,'borrowing','Late Latin nescientia is adapted into English nescience with loss of the Latin ending and English stress and consonant development.','The abstract meaning remains lack of knowledge or awareness.','Merriam-Webster Editors','established','The borrowing path and 1612 English record are directly reported.','Late Latin to English by 1612.','reviewed'),
(263,46,308,309,'derivation','Late Latin nescientia is built on the present-participial stem nescient- of nesciens.','A not-knowing person or state supplies the abstract noun for ignorance.','Merriam-Webster Editors','established','The morphological sequence is explicit in the etymology.','Late Latin derivation.','reviewed'),
(264,46,309,310,'inflectional_derivation','Latin nesciens is the present participle of nescīre.','The activity or state of not knowing is expressed as “not knowing.”','Merriam-Webster Editors','established','The participial relationship is explicit in the etymology.','Latin derivation.','reviewed'),
(265,46,310,311,'negative_compound','Latin nescīre contains the negative element ne- plus scīre “to know.”','Knowing is negated: “know” becomes “not know, be unfamiliar with.”','Merriam-Webster Editors','established','The internal Latin negative relationship is secure even though the deeper prehistory of scīre is disputed.',NULL,'reviewed'),
(266,46,311,312,'proposed_derivation','Latin scīre has been compared with an Indo-European cutting/separating base; the exact formation and even the semantic bridge remain disputed.','A proposed development moves from cutting or separating to distinguishing and then knowing.','Merriam-Webster Editors · de Vaan · Ernout and Meillet · American Heritage','proposed','Merriam-Webster records competing morphological analyses and calls the semantic progression questionable; Ernout and Meillet call the comparison uncertain.','The comparison belongs to prehistory, not a directly attested change.','reviewed'),
(267,46,312,313,'knowledge_boundary','No older form is promoted beyond the disputed *skei- comparison.','The negative-knowing history reaches the present evidence horizon.','SET-U editorial boundary','boundary','The boundary preserves the difference between a proposed reconstruction and a securely attested ancestor.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(257,116,'Headword introduction; Cicero De officiis 1.12.37 and Varro De lingua Latina 5.3','supports','Documents hostis as foreigner or stranger in older usage and its later restriction to armed enemy.'),
(257,82,'Root ghos-ti-, Latin descendants','supports','Connects Latin hostis to the reconstructed reciprocal-outsider family.'),
(258,82,'Root ghos-ti-','context','Defines the reviewed reconstruction at which this dossier stops.'),
(259,118,'Entries μυς 1 and μυς 2; etymology from Ancient Greek μῦς','supports','Documents the modern anatomical sense, learned mouse sense, pronunciation, and Ancient Greek source.'),
(259,117,'Headword μῦς, senses I and II','supports','Documents both mouse and body-muscle senses in Ancient Greek.'),
(260,117,'Headword μῦς, senses I and II','supports','Supplies the attested Greek form and its mouse-to-muscle polysemy.'),
(260,71,'Indo-European root mūs-, Greek and Latin reflexes','supports','Places Greek μῦς in the reconstructed cross-branch mouse family.'),
(260,72,'Indo-European Lexicon mūs-, Greek reflex','context','Provides independent comparative support for the reconstructed mouse family.'),
(261,71,'Root mūs-','context','Defines the reviewed reconstruction at which this dossier stops.'),
(262,119,'Word History: Etymology and First Known Use','supports','Traces English nescience from Late Latin nescientia and reports use in 1612.'),
(263,119,'Word History: Etymology','supports','Derives nescientia from the participial stem nescient- and nesciens.'),
(264,119,'Word History: Etymology','supports','Identifies nesciens as the present participle of nescīre.'),
(265,119,'Did You Know? and Word History: Etymology','supports','Analyzes the negative not-knowing formation through ne- and scīre.'),
(266,86,'Etymology notes on the prehistory of scīre','supports','Records competing analyses and the uncertainty of the proposed discern-from-cutting route.'),
(266,87,'Root skei-, section 2','context','Publishes the proposed cutting, separating, and discerning comparison.'),
(267,86,'Etymology notes','context','The published uncertainty defines the current evidence boundary.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(59,300,116,'44 BCE',-44,'Cicero, De officiis 1.12.37, as reported in Lewis and Short','Headword introduction; Cic. Off. 1.12.37','hostis ... apud majores nostros ... quem nunc peregrinum dicimus','established','lexical_corpus_record',NULL,NULL,NULL,0,'The dictionary citation and excerpt were reviewed; no manuscript or edition image was directly inspected.'),
(60,304,117,'c. 430 BCE',-430,'Herodotus occurrence reported by the Liddell–Scott entry','Sense I; μῦς ἀρουραῖος, cited to Herodotus','μῦς ἀρουραῖος','probable','lexical_corpus_record',NULL,NULL,NULL,0,'The lexicon-reported Herodotean occurrence was reviewed; the underlying historical text object was not directly inspected.'),
(61,307,119,'1612',1612,'English lexicographic first-use record for nescience','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use year; no underlying printed witness was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(172,44,'guest','English','Germanic cognate through reconstructed *ghos-ti-',82),
(173,44,'hostile','English','English derivative family through Latin hostīlis',116),
(174,44,'host','English','hospitality cousin through the reciprocal-outsider compound branch',82),
(175,45,'mouse','English','Germanic cognate from the same reconstructed mouse family',71),
(176,45,'muscle','English','parallel body-part naming through the Latin mouse branch',71),
(177,45,'mussel','English','distant English cousin through the Latin mouse-derived family',71),
(178,46,'science','English','positive knowing cousin through Latin scīre',119),
(179,46,'nice','English','negative-knowing cousin through Latin nescīre',119);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(178,44,1,'Indo-European linguistic horizon','Proto-Indo-European reconstruction','The dossier reaches reconstructed *ghos-ti-. The form describes a comparative linguistic relationship, not one archaeological point.',NULL,NULL,'broad',NULL,NULL,'unresolved','The comparative sources do not assign one directly evidenced place or numeric onset to the reconstruction.'),
(179,44,2,'Early Latin legal and foreign relations','older Roman usage','Hostis names a foreigner, stranger, or legally recognized outsider before the later enemy-centered restriction.',NULL,NULL,'broad',NULL,NULL,'unresolved','Lewis and Short report the semantic contrast but not one first occurrence or point location for the older sense.'),
(180,44,3,'Rome','Cicero’s 44 BCE semantic testimony','Cicero explicitly contrasts the ancestral outsider sense with the later armed-enemy restriction.',41902800,12496100,'regional',-44,-44,'exact','The year locates Cicero’s De officiis testimony, not the beginning of either sense.'),
(181,44,4,'Classical Latin literary and political usage','enemy-centered classical record','Hostis is widely used for an enemy in arms or of the state while older semantic history remains visible to Roman authors.',NULL,NULL,'broad',NULL,NULL,'unresolved','The lexicon cites many authors, but no single universal end date or geographic point is asserted.'),

(182,45,1,'Indo-European linguistic horizon','Proto-Indo-European reconstruction','Comparative evidence reconstructs *mūs- across Greek, Latin, Germanic, and other branches without locating one archaeological point.',NULL,NULL,'broad',NULL,NULL,'unresolved','The root sources establish comparison, not one datable migration event.'),
(183,45,2,'Ancient Greek literary world','mouse sense in Greek literature','The Liddell–Scott entry cites the mouse word in the Batrachomyomachia, Herodotus, and Theocritus.',NULL,NULL,'broad',NULL,NULL,'unresolved','The citations span genres and periods; SET-U does not turn them into an invented first-use interval.'),
(184,45,3,'Ancient Greek anatomical vocabulary','mouse and muscle polysemy','The same entry records μῦς as a body muscle as well as a mouse.',NULL,NULL,'broad',NULL,NULL,'unresolved','The semantic coexistence is explicit, but the reviewed source does not date one moment of metaphorical innovation.'),
(185,45,4,'Modern Greece','current anatomical usage','Modern Greek μυς is the ordinary anatomical muscle word, with a learned mouse sense also recorded.',37983763,23727700,'regional',NULL,NULL,'unresolved','The modern dictionary supports current use; it does not supply one numeric onset for the surviving anatomical branch.'),

(186,46,1,'Proposed Indo-European linguistic horizon','disputed prehistory of Latin scīre','The dossier preserves the proposed *skei- comparison without treating a discern-from-cutting path as settled or geographically pinpointed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The sources explicitly dispute the deeper analysis and do not provide one datable place.'),
(187,46,2,'Latin learned vocabulary','Latin nescīre to Late Latin nescientia','The negative knowing verb and participle produce an abstract noun for lack of knowledge.',NULL,NULL,'broad',NULL,NULL,'unresolved','The morphological lineage is explicit, but the reviewed source supplies no single place or first date for the Latin formations.'),
(188,46,3,'England','1612 English record','Merriam-Webster reports nescience in English in 1612 with the meaning lack of knowledge or awareness.',52355500,-1174300,'regional',1612,1612,'exact','1612 is the reviewed lexicographic first-use year, not proof of the first spoken use.'),
(189,46,4,'Global English','1612 onward','Nescience remains an uncommon learned noun for ignorance or lack of awareness.',NULL,NULL,'global',1612,NULL,'open','The interval begins at the reviewed English horizon; it does not date every later occurrence or variety.' );
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(178,82,'Root ghos-ti-, heading and Latin reflexes','supports','Places hostis in the reconstructed outsider family without asserting one archaeological point.'),
(178,83,'Indo-European Lexicon ghos-ti-, Italic reflexes','context','Provides independent comparative reflex evidence while leaving geography unresolved.'),
(179,116,'Headword introduction; Cicero and Varro semantic notes','supports','Reports older foreigner or stranger usage and later restriction to enemy.'),
(180,116,'Cicero, De officiis 1.12.37','supports','Provides the located 44 BCE testimony contrasting ancestral and later senses.'),
(181,116,'Enemy sense and classical citation inventory','supports','Documents broad classical use for an enemy in arms or of the state.'),
(182,71,'Root mūs-, cross-branch derivatives','supports','Supplies the comparative mouse reconstruction without a point location.'),
(182,72,'Indo-European Lexicon mūs-','context','Provides independent cross-branch evidence for the reconstruction.'),
(183,117,'Headword μῦς, sense I and cited authors','supports','Records mouse uses in the Batrachomyomachia, Herodotus, and Theocritus.'),
(184,117,'Headword μῦς, sense II','supports','Records the body-muscle sense in the same Ancient Greek lexical entry.'),
(185,118,'Entries μυς 1 and μυς 2','supports','Documents Modern Greek anatomical μυς, pronunciation, learned mouse use, and Ancient Greek ancestry.'),
(186,86,'Etymology notes on scīre','supports','Preserves the uncertainty of the deeper comparison rather than assigning an invented location.'),
(186,87,'Root skei-, section 2','context','Supplies the proposed comparative root used by the graph.'),
(187,119,'Word History: Etymology','supports','Documents nescientia, nesciens, nescīre, and the negative scīre formation.'),
(188,119,'First Known Use','supports','Reports the English noun in 1612.'),
(189,119,'Definition, examples, and First Known Use','supports','Documents the continuing learned noun and its reviewed English horizon.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(85,44,'Did Latin hostis always mean enemy?','No. Roman sources remembered an older foreigner or stranger sense before usage restricted the word toward a public or armed enemy.','established','Lewis and Short cite Cicero, Varro, and Festus on the semantic shift; comparative sources connect the older outsider to *ghos-ti-.','resolved','The dossier separates the older outsider horizon from the later enemy-centered use.'),
(86,45,'Are Greek mouse and muscle merely accidental homonyms?','The reviewed Liddell–Scott entry treats μῦς as one lexical entry with both rodent and body-muscle senses, and Modern Greek explicitly derives both learned senses from Ancient Greek.','established','The Centre for the Greek Language publishes both the Ancient Greek polysemy and the Modern Greek continuation.','resolved','The graph keeps the two senses together in Greek while distinguishing the parallel Latin and Germanic branches.'),
(87,46,'Was nescience coined in modern English by negating science?','No. English borrowed the learned noun through Late Latin nescientia, itself built through nesciens and nescīre from the Latin negative plus scīre.','established','Merriam-Webster supplies the complete Latin sequence and reports English use in 1612.','resolved','The graph joins nescience and science at Latin scīre without making either English word the parent of the other.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(85,116,'Headword introduction; Cicero De officiis 1.12.37; Varro De lingua Latina 5.3','supports','Directly reports the older stranger or foreigner sense and later enemy restriction.'),
(85,82,'Root ghos-ti-, Latin derivatives','context','Places the older outsider meaning in the wider reciprocal-stranger family.'),
(86,117,'Headword μῦς, senses I and II','supports','Records mouse and body muscle under the same Ancient Greek headword.'),
(86,118,'Entries μυς 1 and μυς 2; etymology','supports','Documents the Modern Greek anatomical and learned mouse senses from Ancient Greek μῦς.'),
(87,119,'Did You Know?; Word History: Etymology; First Known Use','supports','Traces the complete negative-knowing lineage and the 1612 English record.'),
(87,86,'Science etymology and Latin scīre','context','Shows science as a separate English descendant of the same Latin knowing verb.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=CASE
  WHEN `rank`<=109 THEN `rank`-100
  WHEN `rank`=110 THEN 11
  WHEN `rank`=111 THEN 13
  ELSE `rank`-97 END;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(29,44,10,'hostis','The enemy was once the stranger.','Older Latin hostis named a foreigner or legally recognized outsider. Roman authors themselves explain how usage narrowed toward the armed or public enemy.','A',97,'The semantic testimony is explicit; the exact social chronology remains a process rather than one coinage event.'),
(30,45,12,'μυς','In Greek, a muscle is still a mouse.','Ancient Greek μῦς named both the rodent and a body muscle. Modern Greek μυς preserves the anatomical branch and records the mouse sense as learned vocabulary.','A',96,'Both senses and the historical continuation are directly documented in Greek-language reference works.'),
(31,46,14,'nescience','Not knowing has its own science-family word.','Nescience descends through Latin nescientia and nescīre, built from ne- “not” plus scīre “know.” It is science’s historical negative cousin, not a recent parody.','A',95,'The complete Latin formation and 1612 English horizon are directly reported.');
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(29,116,'Headword introduction; Cicero and Varro semantic testimony','supports','Documents the foreigner or stranger sense and its later enemy restriction.'),
(29,82,'Root ghos-ti-, Latin reflexes','context','Connects the semantic history to the reconstructed reciprocal-outsider family.'),
(30,117,'Headword μῦς, senses I and II','supports','Documents the rodent and body-muscle senses in Ancient Greek.'),
(30,118,'Entries μυς 1 and μυς 2','supports','Documents the Modern Greek anatomical continuation and learned mouse sense.'),
(31,119,'Did You Know? and Word History: Etymology','supports','Traces nescience through the Latin negative-knowing formation.'),
(31,86,'Science etymology','context','Documents science as a separate descendant of Latin scīre.' );
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(25,44,23,'THE ENEMY AND THE GUEST SHARE AN OUTSIDER','Latin hostis narrows the stranger into an enemy; English guest inherits the visitor branch. Their paths meet only at reconstructed *ghos-ti-.',100,'A','reviewed'),
(26,45,19,'THE GREEK MUSCLE IS STILL A MOUSE','Modern Greek μυς continues Ancient Greek μῦς, whose single lexical entry names both mouse and muscle; English muscle reaches the same deep family through Latin.',99,'A','reviewed'),
(27,46,27,'NICE AND NESCIENCE SHARE NOT KNOWING','Nescience stays close to literal lack of knowledge; nice wanders through ignorant and foolish before becoming pleasant. Both routes pass through Latin nescīre.',99,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id BETWEEN 44 AND 46
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
WHERE f.entry_id BETWEEN 44 AND 46;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 44 AND 46;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 44 AND 46;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 44 AND 46;
--> statement-breakpoint

UPDATE `relations` SET
  `sound_change`=(SELECT edge.sound_change FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `semantic_change`=(SELECT edge.semantic_change FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `scholar`=(SELECT edge.scholar FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `confidence`=(SELECT edge.confidence FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `confidence_note`=(SELECT edge.confidence_note FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `chronology_note`=(SELECT edge.chronology_note FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `editorial_status`=(SELECT edge.editorial_status FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id)
WHERE `id` IN (257,265,266);
