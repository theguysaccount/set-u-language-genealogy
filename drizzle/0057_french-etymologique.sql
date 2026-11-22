-- Promote French étymologique from the graph-derived candidate queue. The
-- dossier follows the adjective through Latin and Greek, distinguishes the
-- adjective from the discipline noun beneath it, and keeps the exact
-- Greek-to-Latin transfer event unresolved rather than inventing a date.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(112,'etymologique-french','étymologique','etymologique','/e.ti.mɔ.lɔ.ʒik/','adjective','A French adjective meaning either related to etymology or conforming to a word’s origin, borrowed from Latin etymologicus.','The French adjective did not begin as the name of modern historical linguistics. Its earliest source-reported use, around 1550, describes compound names that reveal their “true sense”; the current word still has both an analytical and an origin-conforming sense.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(259,'academie-french-etymologique','Étymologique — Dictionnaire de l’Académie française, 9e édition','Académie française Editors',2024,'Académie française','https://www.dictionnaire-academie.fr/article/A9E3025',NULL,'institutional_lexicon'),
(260,'cnrtl-french-etymologique','Étymologique — Trésor de la langue française informatisé','ATILF · CNRS · Université de Lorraine',2012,'Centre National de Ressources Textuelles et Lexicales','https://www.cnrtl.fr/definition/%C3%A9tymologique',NULL,'historical_dictionary'),
(261,'mw-etymological','Etymological — Merriam-Webster.com Dictionary','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/etymological',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(654,112,11,1,'étymologique','etymologique','etymology-related-adjective','étymologique','/e.ti.mɔ.lɔ.ʒik/','attested','c. 1550–today',1550,NULL,'related to etymology; conforming to a word’s origin','CNRTL reports the French word around 1550; the Académie preserves two current senses. An exact first surviving object has not been directly inspected.'),
(655,112,9,2,'etymologicus','etymologicus','etymology-related-adjective','etymologicus',NULL,'attested','Late Latin grammatical tradition',300,600,'etymological; conforming to etymology','Both French sources name this Latin adjective as the donor. CNRTL cites nomina etymologica in Diomedes but does not date a unique borrowing event.'),
(656,112,10,3,'ἐτυμολογικός','etymologikos','etymology-related-adjective','etymologikós',NULL,'attested','post-Classical Ancient Greek, broad horizon',-300,600,'belonging to or based on etymology','Merriam-Webster names Greek etymologikos as the source of Latin etymologicus; the broad chronology is not a first-attestation claim.'),
(657,112,10,4,'ἐτυμολογία','etymologia','word-history-discipline','etymología',NULL,'attested','Hellenistic and later Greek',-300,600,'inquiry into a word’s true sense','Shared canonical Greek technical noun; Merriam-Webster analyzes the adjective from this noun plus -ikos.'),
(658,112,10,5,'ἔτυμος','etymos','true-adjective','étymos','/é.ty.mos/','attested','Archaic and later Ancient Greek',-800,600,'true, real, actual','Shared canonical true-word that supplies the first member of ἐτυμολογία.'),
(659,112,6,6,'*setu-mo-','setu-mo','true-adjective','*setu-mo-',NULL,'reconstructed','Proto-Indo-European formation, proposed',-4500,-2500,'true, real','Shared proposed adjectival formation; it is not a written stage.'),
(660,112,6,7,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared proposed horizon behind the project name.'),
(661,112,7,8,'UNKNOWN','unknown','french-etymologique-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No single older ancestor is promoted.','The attested learned adjective and the proposed prehistoric true-word analysis remain different evidence classes.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(543,112,654,655,'borrowing','French adapted Latin etymologicus as étymologique with French stress, vowels, and the learned -ique ending.','The Latin origin-conforming adjective developed the modern French senses “related to etymology” and “conforming to origin.”','ATILF · Académie française Editors','established',NULL,'CNRTL reports French use around 1550; the Académie dates the word to the sixteenth century.','reviewed'),
(544,112,655,656,'borrowing','Latin etymologicus adapted Greek etymologikos within learned grammatical vocabulary.','The adjective retained the sense of belonging to or based on etymology.','Merriam-Webster Editors','established',NULL,'The reviewed sources establish the donor chain but do not identify one dated transfer event.','reviewed'),
(545,112,656,657,'derivation','Greek ἐτυμολογικός adds the adjectival suffix -ικός to ἐτυμολογία.','The name of an inquiry becomes an adjective meaning belonging to or based on that inquiry.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(546,112,657,658,'derivation','The compound joins ἔτυμος “true, real” and -λογία “account, study.”','A word’s “true sense” becomes an object of analysis.','Ancient Greek lexicography','established',NULL,NULL,'reviewed'),
(547,112,658,659,'inheritance','The Greek form is analyzed from *setu-mo- with loss of initial *s and Greek development of the reconstructed formation.','A reconstructed adjective of truth or reality continues as Greek “true, real, actual.”','Robert Beekes · Martin Gális','proposed','The *setu-mo- morphology is published but not directly attested or universally settled.',NULL,'reviewed'),
(548,112,659,660,'derivation','The proposed *-mo- adjective is built on the reconstructed *set-u- base.','The true-order base becomes an adjective meaning true or real.','Robert Beekes · Charles de Lamberterie','proposed','Both the base and derivational segmentation are reconstructed.',NULL,'reviewed'),
(549,112,660,661,'knowledge_boundary','No older form commands secure consensus beyond the *set-u- proposal.','The French adjective reaches the same open comparative horizon as the wider true-word family.','SET-U editorial boundary','boundary','The boundary preserves competing analyses instead of selecting one as fact.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(543,259,'Étymologie: XVIe siècle; emprunté du latin etymologicus','supports','Names Latin etymologicus as the French donor and supplies century-level chronology.'),
(543,260,'Étymologie et Histoire: c. 1550; emprunt du latin etymologicus','supports','Independently names the Latin donor and gives the earliest source-reported French use.'),
(544,261,'Word History: Latin etymologicus from Greek etymologikos','supports','Supplies the Greek-to-Latin learned borrowing chain.'),
(544,260,'Latin etymologicus; nomina etymologica in Diomedes','context','Documents late Latin grammatical use without defining a unique transfer date.'),
(545,261,'Word History: Greek etymologikos from etymologia + -ikos','supports','Explicitly supplies the noun-plus-suffix analysis.'),
(546,10,'Headword and compound analysis','supports','Documents the Greek technical noun and its true-sense analysis.'),
(547,12,'s.v. ἔτυμος and ἐτεός, pp. 473–475','supports','Publishes the *setu-mo- analysis.'),
(547,254,'Eteocles discussion: ἔτυμος < *setu-mo-','context','Independently summarizes the proposed formation.'),
(548,12,'s.v. ἔτυμος, derivational discussion','supports','Supplies the proposed *-mo- segmentation.'),
(549,11,'Modern etymology and bibliography','supports','Defines the disputed horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(147,654,260,'c. 1550',1550,'CNRTL historical-attestation report for French étymologique','Étymologie et Histoire: Bonivard, cited through Delboulle and the Dictionnaire général','noms étymologiques','established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported approximate date and phrase; neither the underlying Bonivard object nor the cited intermediary edition was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(345,112,'étymologie','French','discipline noun in the same learned family',259),
(346,112,'étymon','French','technical source-form noun in the same true-word family',257),
(347,112,'etymological','English','parallel learned adjective from the same Latin and Greek chain',261),
(348,112,'etymology','English','parallel discipline noun in the same learned family',7),
(349,112,'ἐτυμολογία','Ancient Greek','noun from which the Greek adjective is derived',261),
(350,112,'ἔτυμος','Ancient Greek','true-word inside the deeper compound ancestry',10);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(413,112,1,'Ancient Greek learned tradition','date and transfer center unresolved','Greek ἐτυμολογικός is the named source of the Latin adjective, but the reviewed route source does not identify one earliest object or transfer center.',NULL,NULL,'broad',NULL,NULL,'unresolved','No numeric journey date is promoted from the broad form-model chronology.'),
(414,112,2,'Late Latin grammatical tradition','Diomedes cited; exact event unresolved','CNRTL reports nomina etymologica in Diomedes while leaving the borrowing event itself undated.',NULL,NULL,'broad',NULL,NULL,'unresolved','The author citation supplies context, not a precisely dated lexical transfer.'),
(415,112,3,'French-language record','c. 1550','CNRTL reports noms étymologiques in Bonivard for compound names said to reveal their true sense.',NULL,NULL,'broad',1540,1560,'circa','A twenty-year interval encodes the source’s approximate c. 1550 label rather than false exactness.'),
(416,112,4,'French lexicographic record','1694–today','The Académie records etymologique from its first edition and preserves the adjective through the ninth.',NULL,NULL,'global',1694,NULL,'open','The open interval begins with the source-reported first-edition record, not a directly inspected page object.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(413,261,'Word History: Greek etymologikos','supports','Names the Greek stage while leaving its exact journey date and place unstated.'),
(414,260,'Étymologie et Histoire: nomina etymologica in Diomedes','supports','Documents late Latin grammatical use without licensing one precise transfer event.'),
(415,260,'Étymologie et Histoire: c. 1550, Bonivard','supports','Supplies the approximate French horizon and the source-reported early sense.'),
(416,259,'Histoire du mot: entries in editions 1 (1694) through 9 (2024)','supports','Documents continuous Académie lexicographic representation from the first edition onward.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(202,112,'Was French étymologique created from French étymologie?','The transparent modern relationship does not describe the reported historical route. Both French references call étymologique a borrowing from Latin etymologicus.','established','CNRTL and the Académie independently name the immediate Latin donor.','resolved','The canonical lineage begins with a borrowing edge rather than an unsupported internal French derivation.'),
(203,112,'Did the word first name modern historical linguistics?','No. CNRTL’s earliest source-reported use around 1550 concerns compound names said to reveal their true sense; the current analytical sense is broader.','established','The historical notice separates the early phrase from the current definition.','resolved','The semantic shift is exposed on the French borrowing edge and in the dated witness.'),
(204,112,'Can the Greek-to-Latin adjective transfer be dated to one event?','Not from the reviewed sources. Merriam-Webster establishes Greek etymologikos behind Latin etymologicus, while CNRTL documents late Latin use in Diomedes; neither identifies one precisely dated borrowing event.','boundary','The donor chain is stronger than the event chronology.','open','The journey retains two unresolved stages instead of manufacturing a year or a map pin.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(202,259,'Étymologie: emprunté du latin etymologicus','supports','Names the Latin donor directly.'),
(202,260,'Étymologie et Histoire: emprunt du latin etymologicus','supports','Independently names the same borrowing route.'),
(203,260,'c. 1550: noms étymologiques, names revealing their true sense','supports','Documents the early phrase and gloss.'),
(203,259,'Current senses 1 and 2','context','Shows the later analytical and origin-conforming range.'),
(204,261,'Word History: Latin from Greek etymologikos','supports','Establishes the donor chain but gives no one transfer date.'),
(204,260,'Diomedes: nomina etymologica','context','Documents a late Latin use without locating the original borrowing event.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(97,112,2008,'étymologique','“Etymological” did not first mean scientific.','The earliest source-reported French use around 1550 describes names that reveal their “true sense.” The modern adjective’s relation-to-a-discipline sense arrived over a much older truth-seeking metaphor.','A',100,'The chronology and early gloss come from CNRTL; the current two-sense range is independently preserved by the Académie.');
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
(97,260,'Étymologie et Histoire: c. 1550 noms étymologiques','supports','Supplies the early phrase and its true-sense gloss.'),
(97,259,'Current senses 1 and 2','context','Documents the present analytical and origin-conforming meanings.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(75,112,109,'THE ADJECTIVE IS OLDER THAN THE MODERN SCIENCE','French étymologique reaches c. 1550 and follows a Greek adjective built from ἐτυμολογία; its earliest reported French use is a true-name claim, not a modern sound-law analysis.','100','A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 654 AND 661
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
WHERE f.id BETWEEN 654 AND 661;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 543 AND 549;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 543 AND 549;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 543 AND 549;
