-- Promote the highest-priority evidence-seeded candidate as an attested
-- Gaulish onomastic element, not an invented freestanding word. The leading
-- hyphen preserves its recorded position inside compound personal names,
-- the macron and phonemic transcription are scholarly notation. The trail
-- then reuses the reviewed Proto-Celtic and Indo-European king lineage.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(83,'gaulish','Gaulish','Indo-European','Celtic · Continental Celtic',0,NULL,NULL,'Poorly attested ancient Continental Celtic, especially through onomastic and epigraphic material. This dossier leaves the full language interval unset rather than inferring it from two named hosts.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(169,'rix','-rīx','rix','/-rīxs/','onomastic compound element','An attested Gaulish second member meaning “king” or “prince,” visible in compound personal names such as Dumnorix and Vercingetorix and inherited from Proto-Celtic *rīx-s.','The famous Gaulish ending is not a decorative -ix suffix. The evidence-bearing unit is -rīx, a king or prince element inside compound names—and scholarship does not assign it one identical semantic force in every name.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(404,'bolelli-campanile-rix','Sur la préhistoire des noms gaulois en -rīx','Tristano Bolelli and Enrico Campanile',1972,'Études Celtiques · Persée','https://www.persee.fr/doc/ecelt_0373-1928_1972_num_13_1_1498','10.3406/ecelt.1972.1498','scholarly_article'),
(405,'caesar-gallic-war-scaife','De Bello Gallico — Latin edition in the Scaife Viewer','Gaius Julius Caesar; T. Rice Holmes, editor',1914,'Perseus Digital Library · Scaife Viewer','https://scaife.perseus.org/reader/urn:cts:latinLit:phi0448.phi001.perseus-lat2:1.18/',NULL,'digitized_primary_source');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1085,169,83,1,'-rīx','rix','king-onomastic-element','-rīx','/-rīxs/','attested','first-century BCE onomastic hosts',-100,-1,'king or prince as the second member of compound personal names','The numeric interval locates the reviewed Dumnorix and Vercingetorix host evidence, not the whole life of Gaulish. The leading hyphen marks second-member position, the macron marks vowel length, and the source prints the surviving spelling -rix with phonemic /-rīxs/; no autonomous token is claimed.'),
(1086,169,78,2,'*rīx-s','rix-s','king-nominative','*rīx-s',NULL,'reconstructed','Proto-Celtic',-1300,-800,'king, nominative singular','The asterisk marks the reconstructed Proto-Celtic parent, unlike the attested Gaulish host-name element.'),
(1087,169,6,3,'*rēg-','reg-lengthened','king-lengthened-grade','*rēg-',NULL,'reconstructed','Proto-Indo-European lengthened grade',-4500,-2500,'king or ruler formation','Shared reconstructed grade behind Celtic, Latin, and Indo-Aryan king words.'),
(1088,169,6,4,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared analytical centum form for the straight, direct, lead, and rule family.'),
(1089,169,6,5,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Deepest reviewed root for the family in the current source set.'),
(1090,169,7,6,'UNKNOWN','unknown','rix-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The trail stops before a reconstruction is mistaken for an attested first word or a complete theory of prehistoric kingship.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(917,169,1085,1086,'inheritance','The attested Gaulish spelling -rix represents /-rīxs/ and aligns with reconstructed Proto-Celtic *rīx-s; the written host names do not preserve a macron.','The inherited king noun functions as a compound-name member; its precise contribution can range beyond one mechanically compositional gloss.','Anders Richardt Jørgensen · Tristano Bolelli · Enrico Campanile','established','The ancestry and king or prince value are established, while the semantic force in every individual name is not.','Gaulish is attested in ancient onomastic material; Proto-Celtic is reconstructed.','reviewed'),
(918,169,1086,1087,'inheritance','Proto-Celtic *rīx-s reflects the Indo-European lengthened king grade *rēg-.','King remains the central meaning while Celtic raises inherited *ē to *ī and develops the final cluster.','Anders Richardt Jørgensen','established',NULL,'The source gives *rīx-s and genitive *rīg-os from PIE *(h₃)rēg̑-.','reviewed'),
(919,169,1087,1088,'derivation','Lengthened-grade *rēg- belongs under centum *h₃reg-.','The ruler or king formation specializes the straight, direct, lead, and rule family.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative ablaut analysis, not one dated institutional event.','reviewed'),
(920,169,1088,1089,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(921,169,1089,1090,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The graph stops where the current comparative analysis stops.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(917,320,'Celtic chapter, p. 138: Gaulish onomastic -rix /-rīxs/ in Dumnorix and Vercingetorix','supports','Publishes the attested onomastic element, its pronunciation, host names, king gloss, and Proto-Celtic parent.'),
(917,404,'p. 123: second member -rīx “roi, prince” in two-member Gaulish personal names','supports','Independently identifies -rīx as the second member of compound names and surveys variation in its function.'),
(917,405,'De Bello Gallico 1.18 and 7.4','context','The digital Latin edition confirms Dumnorix and Vercingetorix as historical host spellings but does not itself analyze their internal etymology.'),
(918,320,'Celtic chapter, pp. 137–138: PIE *ē > Proto-Celtic *ī; *rīx-s from PIE *(h₃)rēg̑-','supports','Publishes the Celtic vowel development, reconstructed nominative, and deeper ancestry.'),
(919,315,'reg-, lengthened-grade *rēg- section','supports','Analyzes the king formation under the straight-and-direct root.'),
(920,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(921,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(208,1085,405,'first-century BCE work, inspected through a 1914 digital edition',NULL,'Dumnorix in Caesar’s De Bello Gallico','Book 1, section 18','Dumnorix','established','lexical_corpus_record','Perseus Digital Library · Scaife Viewer','De Bello Gallico 1.18',NULL,0,'The digital Latin edition was inspected, not an ancient manuscript or first-century physical object. This record verifies the host spelling Dumnorix in the passage; the internal -rīx analysis comes from the cited linguistic sources.'),
(209,1085,405,'first-century BCE work, inspected through a 1914 digital edition',NULL,'Vercingetorix in Caesar’s De Bello Gallico','Book 7, section 4','Vercingetorix','established','lexical_corpus_record','Perseus Digital Library · Scaife Viewer','De Bello Gallico 7.4',NULL,0,'The digital Latin edition was inspected, not an ancient manuscript or first-century physical object. This record verifies the host spelling Vercingetorix in the passage; the internal -rīx analysis comes from the cited linguistic sources.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(570,169,'Dumnorix','Gaulish','attested compound-name host containing the -rīx element',320),
(571,169,'Vercingetorix','Gaulish','attested compound-name host containing the -rīx element',320),
(572,169,'rí','Old Irish','inherited Celtic king cognate from Proto-Celtic *rīx-s',320),
(573,169,'rēx','Latin','Italic king cognate preserving PIE *ē rather than the Celtic raising to ī',319),
(574,169,'rājā','Sanskrit','Indo-Aryan king cognate from a separate n-stem formation',315),
(575,169,'rich','English / Celtic-Germanic route','deep relative through Celtic *rīg-yo- borrowed into Germanic, not a descendant of the Gaulish name element',315);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(640,169,1,'Indo-European linguistic horizon','*h₃reg̑- and lengthened *rēg-','The straight-and-direct family develops a ruler or king formation.',NULL,NULL,'uncertain',-4500,-2500,'range','The interval marks the project’s comparative horizon; it is not a pinpointed homeland, event, or attested token.'),
(641,169,2,'Proto-Celtic linguistic horizon','*rīx-s','Celtic raises inherited *ē to *ī in the reconstructed king nominative.',NULL,NULL,'broad',-1300,-800,'range','Proto-Celtic and these bounds are reconstructed analytical horizons rather than directly witnessed coordinates.'),
(642,169,3,'Ancient Gaulish onomastic record','-rix /-rīxs/ inside compound personal names','Dumnorix and Vercingetorix preserve the meaningful second member in written host names; no freestanding occurrence is claimed.',NULL,NULL,'broad',NULL,NULL,'unresolved','The cited sources establish ancient onomastic hosts but this dossier does not infer one exact first use or a complete Gaulish date span.'),
(643,169,4,'Roman textual transmission','Dumnorix and Vercingetorix in Caesar’s De Bello Gallico','A surviving digital edition of Caesar’s Latin text records two famous hosts while remaining separate from the linguistic analysis of their Gaulish morphology.',NULL,NULL,'broad',NULL,NULL,'unresolved','The work is ancient, the inspected digital text is based on a 1914 edition, and no manuscript-object date is promoted.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(640,315,'reg- heading and lengthened-grade king section','supports','Publishes the reconstructed straight-and-direct root and king grade.'),
(641,320,'Celtic chapter, pp. 137–138','supports','Publishes PIE *ē to Celtic *ī and Proto-Celtic *rīx-s.'),
(642,320,'Celtic chapter, p. 138','supports','Names the Gaulish onomastic element and the Dumnorix and Vercingetorix hosts.'),
(642,404,'p. 123 and article scope, pp. 123–140','context','Documents the frequency and semantic analysis of ancient Celtic compound names in -rīx.'),
(643,405,'De Bello Gallico 1.18 and 7.4','supports','Supplies the inspected digital Latin occurrences of both host names.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(323,169,'Was Gaulish -rīx an attested freestanding word?','No freestanding token is established by the reviewed evidence. Cambridge calls it an onomastic element and Bolelli and Campanile call it the second member of compound personal names. The form is attested through those hosts, while Proto-Celtic *rīx-s is reconstructed.','established','Two scholarly sources describe the form in compounds; the digital Caesar witnesses confirm whole names rather than an autonomous token.','resolved','The dossier retains a leading hyphen, identifies host witnesses, and keeps the asterisk on the reconstructed Proto-Celtic parent only.'),
(324,169,'Did -rīx mean exactly “king” in every compound name?','Not necessarily. The king or prince value is secure for the element, but scholarship distinguishes names where it is determinative from analyses in which it is semantically bleached or intensifying. Each host therefore requires its own compositional claim.','probable','Bolelli and Campanile review Schmidt’s three-way semantic classification and the larger Gaulish personal-name evidence.','open',NULL),
(325,169,'Is the historically meaningful Gaulish ending simply -ix?','No. The linguistic sources segment -rīx or orthographic -rix as the onomastic element and align it with Proto-Celtic *rīx-s. Treating -ix alone as the inherited unit cuts through the initial r of the morpheme.','established','Cambridge prints -rix /-rīxs/ and Bolelli and Campanile print -rīx as the second member.','resolved','The headword and witnesses distinguish the evidence-bearing element from a modern visual stereotype about Gaulish names.'),
(326,169,'Was Gaulish -rīx borrowed from Latin rēx?','No borrowing is required by the reviewed comparative account. Celtic -rīx and Latin rēx are inherited cognates: Celtic raises Indo-European *ē to *ī, while Latin preserves ē.','established','Cambridge derives the Gaulish and Proto-Celtic form from PIE *(h₃)rēg̑-; the Texas Old Irish introduction explicitly compares Celtic ī with Latin ē.','resolved','The graph joins the branches at reconstructed ancestry and draws no Latin-to-Gaulish edge.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(323,320,'Celtic chapter, p. 138: “Gaul. onomastic element -rix”','supports','Classifies the attested form as an onomastic element and names its hosts.'),
(323,404,'p. 123: second member of two-member personal names','supports','Independently locates -rīx inside compound personal names.'),
(323,405,'De Bello Gallico 1.18 and 7.4','context','Confirms whole host-name spellings, not a freestanding -rīx token.'),
(324,404,'p. 123: discussion of three values assigned to -rīx','supports','Reports determinative king or prince, semantically extended, and intensifying analyses.'),
(325,320,'Celtic chapter, p. 138: -rix /-rīxs/','supports','Segments and transcribes the full onomastic element.'),
(325,404,'Title and p. 123: names in -rīx','supports','Independently identifies -rīx, not -ix, as the second member.'),
(326,320,'Celtic chapter, pp. 137–138: Celtic *ē > *ī and *rīx-s from PIE *(h₃)rēg̑-','supports','Publishes the inherited Celtic sound development and deeper source.'),
(326,319,'Old Irish introduction, example 1a','supports','Contrasts Celtic ī in Gaulish -rix and Old Irish rí with Latin ē in rēx and rēgis.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(169,169,2080,'-rīx','The famous Gaulish ending is -rīx, not decorative -ix.','Cambridge identifies Gaulish -rix /-rīxs/ “king” inside Dumnorix and Vercingetorix and derives it from Proto-Celtic *rīx-s. The r belongs to the historical element; the exact force of that element still varies across individual names.','A',100,'The headline segmentation and ancestry are established. The open dispute prevents the king gloss from being imposed mechanically on every host compound.');
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
(169,320,'Celtic chapter, p. 138','supports','Publishes the -rix /-rīxs/ segmentation, king gloss, host names, Proto-Celtic form, and deeper ancestry.'),
(169,404,'Title and p. 123','supports','Independently identifies -rīx as the second member of compound Gaulish personal names and preserves semantic variation.'),
(169,405,'De Bello Gallico 1.18 and 7.4','context','Confirms the whole Dumnorix and Vercingetorix host spellings in a digital Latin edition.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(124,169,138,'GAULISH -RĪX AND IRISH RÍ ARE THE SAME KING BRANCH','Gaulish preserves the king noun visibly inside compound names as -rīx; Old Irish nominative rí loses the visible final consonant while genitive ríg preserves its stem. Both converge on reconstructed Proto-Celtic *rīx-s rather than descending from one another.','100','A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1085 AND 1090
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
WHERE f.id BETWEEN 1085 AND 1090;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 917 AND 921;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 917 AND 921;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 917 AND 921;
