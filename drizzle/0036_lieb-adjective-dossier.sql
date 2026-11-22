INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(50,'lieb','lieb','lieb','/liːp/','adjective','The German adjective for dear, beloved, kind, or welcome, inherited through Middle High German liep and Old High German liob from the Germanic adjective branch also represented by Dutch lief and Gothic liufs.','German lieb is older than the modern noun Liebe. Liebe belongs to an abstract-noun formation built within the same family; lieb is not a clipping of it.','reviewed');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(329,50,30,1,'lieb','lieb','dear-beloved-adjective',NULL,'/liːp/','attested','Present-day German',1650,NULL,'dear, beloved, kind, pleasant, welcome','Duden records the living adjective, its inflectional and substantivized uses, and its Middle and Old High German ancestry.'),
(330,50,31,2,'liep','liep','dear-beloved-adjective',NULL,NULL,'attested','Middle High German',1050,1350,'dear, beloved, pleasing','Duden identifies Middle High German liep as the immediate historical form.'),
(331,50,32,3,'liob','liob','dear-beloved-adjective',NULL,NULL,'attested','Old High German',750,1050,'dear, beloved, pleasing','Duden identifies Old High German liob; the wider Old High German love family is treated comparatively in the EWA article.'),
(332,50,5,4,'*leubaz','leubaz','dear-beloved-adjective',NULL,NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'dear, beloved, pleasing','Shared canonical adjective reconstruction with Dutch lief and Gothic liufs.'),
(333,50,6,5,'*lewbʰ-','leubh','default',NULL,NULL,'reconstructed','Proto-Indo-European prehistory',-4500,-2500,'to care for, desire, love','Shared canonical desire-and-care root with the other reviewed love-family dossiers.'),
(334,50,7,6,'UNKNOWN','unknown','lieb-deep-boundary',NULL,NULL,'boundary','before secure reconstruction of *lewbʰ-',NULL,NULL,'No securely reviewed ancestor beyond the reconstructed desire-and-care root.','The trail stops without converting the present comparative horizon into absolute unknowability.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(280,50,329,330,'historical_continuation','Middle High German liep continues into modern German lieb through regular final devoicing in pronunciation and later spelling standardization.','The inherited field of dear, beloved, pleasing, and welcome remains productive, with later kind or well-behaved uses in particular contexts.','Dudenredaktion','established','Duden explicitly supplies the Middle High German form and the modern adjective’s living senses.','Middle High German to present-day German.','reviewed'),
(281,50,330,331,'inheritance','Old High German liob develops into Middle High German liep with the inherited diphthong and High German obstruent pattern reflected in the historical spellings.','The adjective remains centered on what is dear, beloved, or pleasing.','Dudenredaktion','established','Duden publishes the immediate Old High German and Middle High German sequence.','Old High German to Middle High German.','reviewed'),
(282,50,331,332,'inheritance','Old High German liob reflects the West Germanic continuation of reconstructed *leubaz, with the inherited diphthong and consonant represented in the daughter form.','The adjective preserves the sense dear, beloved, or pleasing.','Dudenredaktion · Guus Kroonen','probable','The Old High German form is attested; its Proto-Germanic parent and precise phonological staging are comparative reconstructions.','Proto-Germanic prehistory to the Old High German textual period.','reviewed'),
(283,50,332,333,'inheritance','Proto-Germanic *leubaz continues the *lewbʰ- family with Germanic *b corresponding to Indo-European *bʰ and adjective-stem formation.','A broad field of caring, desiring, and loving develops the adjective sense dear, beloved, or pleasing.','Guus Kroonen · University of Texas LRC','probable','The cross-branch comparison is strong, while both parent forms are reconstructed.','Proto-Indo-European to Proto-Germanic prehistory.','reviewed'),
(284,50,333,334,'knowledge_boundary','No older form is promoted beyond the reviewed *lewbʰ- reconstruction.','The German adjective history reaches the current secure evidence horizon.','SET-U editorial boundary','boundary','The boundary preserves the distinction between reviewed reconstruction and unknown deeper prehistory.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(280,122,'Modern adjective senses; Herkunft: mittelhochdeutsch liep','supports','Documents the modern adjective and identifies its immediate Middle High German form.'),
(281,122,'Herkunft: mittelhochdeutsch liep, althochdeutsch liob','supports','Publishes the Old-to-Middle-to-modern German sequence.'),
(282,122,'Herkunft: althochdeutsch liob','supports','Supplies the attested Old High German historical form.'),
(282,4,'s.v. *leubaz, German lieb and Germanic adjective reflexes','supports','Places German lieb and its Old High German history in the reconstructed Germanic adjective family.'),
(283,4,'s.v. *leubaz and the Germanic love family','supports','Provides the reconstructed Germanic adjective and comparative reflexes.'),
(283,6,'Pokorny etymon leubh- and Indo-European reflex table','supports','Places the Germanic adjective within the wider reconstructed desire-and-care family.'),
(284,6,'Emotion 16.27, reconstructed root leubh-','context','Defines the reviewed reconstruction at which the dossier stops.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(65,331,122,'Old High German period',NULL,'Old High German historical-form record for liob reported by Duden','Herkunft: mittelhochdeutsch liep, althochdeutsch liob','althochdeutsch liob','established','lexical_corpus_record',NULL,NULL,NULL,0,'The lexicographic historical-form report was reviewed. No underlying Old High German manuscript occurrence or image was identified or directly inspected in this tranche.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(191,50,'Liebe','German','abstract noun in the same inherited love family',121),
(192,50,'lief','Dutch','West Germanic adjective cognate',124),
(193,50,'liufs','Gothic','East Germanic adjective cognate',126),
(194,50,'love','English','distant noun cousin through the shared desire-and-care root',4);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(203,50,1,'Indo-European linguistic horizon','Proto-Indo-European reconstruction','The German adjective ultimately reaches reconstructed *lewbʰ- through comparative evidence rather than one datable migration event.',NULL,NULL,'broad',NULL,NULL,'unresolved','The comparative root source does not establish one exact date or place.'),
(204,50,2,'Proto-Germanic linguistic horizon','Germanic adjective *leubaz','Comparative Germanic evidence reconstructs the adjective ancestral to German lieb, Dutch lief, and Gothic liufs.',NULL,NULL,'broad',NULL,NULL,'unresolved','The form is reconstructed across daughter languages, not directly located in an artifact.'),
(205,50,3,'Old High German textual world','Old High German liob','Duden reports the Old High German historical form without identifying one manuscript occurrence or localizable first use.',NULL,NULL,'broad',NULL,NULL,'unresolved','The language stage is explicit, but the reviewed source does not warrant a numeric witness date or single point.'),
(206,50,4,'Middle High German textual continuum','Middle High German liep','The adjective continues as Middle High German liep before the modern German form.',NULL,NULL,'broad',NULL,NULL,'unresolved','The lexical sequence is explicit, but the headword source does not assign one numeric first-use interval.'),
(207,50,5,'Present-day German','modern lieb','Duden records the living adjective and its contemporary dear, kind, beloved, and welcome uses.',NULL,NULL,'regional',NULL,NULL,'unresolved','Current standard-language use is documented without inventing one onset date or point coordinate.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(203,6,'Pokorny etymon leubh- and reflex table','supports','Supplies the reconstructed family while leaving exact geography unresolved.'),
(204,4,'s.v. *leubaz, Germanic adjective reflexes','supports','Supports the shared reconstructed adjective without an invented point location.'),
(205,122,'Herkunft: althochdeutsch liob','supports','Documents the Old High German stage but no exact witness date or place.'),
(206,122,'Herkunft: mittelhochdeutsch liep','supports','Documents the Middle High German stage but no exact witness date or place.'),
(207,122,'Modern adjective meanings, grammar, and usage','supports','Documents present-day standard German lieb.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(91,50,'Is German lieb a shortened form of Liebe?','No. The adjective descends through Middle High German liep and Old High German liob. The noun Liebe continues a related abstract-noun formation analyzed as deadjectival within the older family.','probable','Duden supplies the adjective’s independent historical sequence; the EWA article analyzes the Old High German love noun as a deadjectival abstract formation.','resolved','The graph gives lieb its own inherited adjective route, connects Liebe through its distinct abstract-noun formation, and joins both only at the deeper desire-and-care family.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(91,122,'Herkunft: mittelhochdeutsch liep, althochdeutsch liob','supports','Documents an inherited adjective history independent of the modern noun spelling.'),
(91,121,'Band V, Spalte 1387, liubî: deadjectival abstract formation','supports','Analyzes the historical noun formation as built from the adjective family.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=CASE WHEN `rank`>=118 THEN `rank`-99 ELSE `rank`-100 END;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(35,50,18,'lieb','The adjective came before the modern noun shape.','German lieb descends through Middle High German liep and Old High German liob. Liebe is an abstract noun within the same older family, not the source from which lieb was clipped.','A-',94,'The historical adjective sequence and the deadjectival noun analysis are published; their deeper parents remain reconstructed.');
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(35,122,'Herkunft: mittelhochdeutsch liep, althochdeutsch liob','supports','Documents the adjective’s independent inherited history.'),
(35,121,'Band V, Spalte 1387, liubî: deadjectival abstract formation','supports','Shows that the historical love noun is analyzed as an abstract formation from the adjective family.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(31,50,47,'LIEB DID NOT FALL OUT OF LIEBE','The modern forms look like adjective and noun pieces of one another, but the adjective has its own Old and Middle High German ancestry while Liebe follows a distinct Germanic abstract-noun formation.',97,'A-','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id=50
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
WHERE f.entry_id=50;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id=50;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id=50;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id=50;
