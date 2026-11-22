-- The last currently promotion-ready candidate becomes a complete dossier.
-- HUMILIATION preserves its Middle English and Middle French transmission,
-- distinguishes historical humbling and abasement from the modern shame
-- center, and reuses the reviewed HUMILIATUS-to-earth canonical lineage.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(167,'humiliation','humiliation','humiliation','/hjuːˌmɪliˈeɪʃən/','noun','The act, state, or instance of humiliating or being humiliated; degradation, disgrace, or shame.','Humiliation is evidenced in English before the English verb humiliate. Chaucer uses Middle English humiliacioun within a treatment of humility, while French and Christian Latin records preserve humbling, abasement, and mortification. The modern emotional center of disgrace and shame is not the whole recorded history.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(397,'cnrtl-humiliation','Humiliation — étymologie et histoire','CNRTL · ATILF Editors',2026,'CNRS · Université de Lorraine','https://www.cnrtl.fr/etymologie/humiliation',NULL,'historical_dictionary'),
(398,'harvard-chaucer-humiliacioun','Humiliacioun — Chaucer spelling index and Parson’s Tale record','Larry D. Benson · Harvard Chaucer Editors',2026,'Harvard University','https://chaucer.fas.harvard.edu/index-spelling',NULL,'textual_corpus'),
(399,'ahd-humiliation','Humiliation — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=humiliation',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1064,167,1,1,'humiliation','humiliation','disgrace-action-state-noun','humiliation','/hjuːˌmɪliˈeɪʃən/','attested','14th century–today',1300,NULL,'act, state, or instance of humiliating; degradation, disgrace, or shame','American Heritage and Merriam-Webster document the current action, state, and instance structure; the modern shame center does not erase earlier humbling senses.'),
(1065,167,2,2,'humiliacioun','humiliacioun','humbling-abasement-condition','humiliacioun',NULL,'attested','late 14th-century Middle English record',1380,1400,'humbling, abasement, or humbled condition','Harvard’s Chaucer index reports one humiliacioun occurrence in the Parson’s Tale, where the local argument concerns humility.'),
(1066,167,18,3,'humiliation','humiliation','humbling-abasement-action','humiliation',NULL,'attested','Middle French, before 1449–1495 record',1300,1495,'act intended to humble; fact of being humble or humbling oneself','CNRTL preserves both hostile lowering and self-humbling records instead of collapsing the French history into modern shame.'),
(1067,167,77,4,'humiliātiō','humiliatio','lowering-humbling-action-noun','humiliātiō',NULL,'attested','Christian and Late Latin',200,600,'action of lowering; abasement; subduing or humbling through mortification','Merriam-Webster publishes the action-noun formation; CNRTL documents its Christian Latin semantic field.'),
(1068,167,77,5,'humiliātus','humiliatus','made-low-participle','humiliātus',NULL,'attested','Late Latin',200,600,'made low or humble','The exact canonical participle already reviewed in the humiliate dossier.'),
(1069,167,77,6,'humiliāre','humiliare','make-low-verb','humiliāre',NULL,'attested','Late Latin',200,600,'to make low or humble','The exact canonical causative verb already reviewed in the humiliate dossier.'),
(1070,167,9,7,'humilis','humilis','low-ground-adjective','humilis',NULL,'attested','Latin antiquity',-700,700,'near the ground; low; lowly; humble','The exact canonical adjective shared by humility, humiliate, and humble.'),
(1071,167,9,8,'humus','humus','earth-soil','humus',NULL,'attested','Latin antiquity',-700,700,'earth; soil; ground','The exact canonical Latin earth noun shared across the reviewed family.'),
(1072,167,6,9,'*(dh)ghom-o-','dhghom-o','earth-o-grade-formation','*(dh)ghom-o-',NULL,'reconstructed','Proto-Indo-European suffixed o-grade formation',-4500,-2500,'earth; ground','The specific formation printed behind Latin humus.'),
(1073,167,6,10,'*dhghem-','dhghem','earth-root','*dhghem-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'earth','The canonical earth root shared across the reviewed family.'),
(1074,167,6,11,'*dhg̑hem-','dhghem-oldest','earth-oldest-root','*dhg̑hem-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'earth','The oldest printed form in the reviewed root appendix.'),
(1075,167,7,12,'UNKNOWN','unknown','humiliation-deep-boundary',NULL,NULL,'boundary','before the reviewed *dhg̑hem- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed earth root.','A history of lowering explains a semantic structure; it does not naturalize humiliation or assign anyone a lower human worth.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(898,167,1064,1065,'orthographic_continuation','Middle English humiliacioun continues as humiliation with modern -ation spelling and English pronunciation.','A broad humbling or abasement noun develops the current action, state, instance, degradation, disgrace, and shame center.','Merriam-Webster Editors · American Heritage Dictionary Editors','established','The sources identify the form sequence and current senses but do not date one exact semantic switch.','The Middle English occurrence predates the source-reported English verb humiliate.','reviewed'),
(899,167,1065,1066,'borrowing','Middle English humiliacioun adapts Middle French humiliation with the common English -acioun representation of the Romance noun ending.','The action and condition of lowering or humbling crosses into Middle English.','Merriam-Webster Editors','established',NULL,'The surviving Chaucer record does not prove one exact borrowing year.','reviewed'),
(900,167,1066,1067,'borrowing','Middle French humiliation continues Christian Latin humiliātiō within Romance phonology and spelling.','Lowering, abasement, subduing, and self-humbling remain available in the medieval French record.','Merriam-Webster Editors · CNRTL and ATILF Editors','established','CNRTL treats the French noun as a borrowing from Christian Latin and supplies source-reported French sense records.','The French examples are reported before 1449 and in 1495.','reviewed'),
(901,167,1067,1068,'derivation','Late Latin humiliātiō is formed on humiliātus with the Latin action-noun ending -iō.','The made-low participial stem becomes an action, process, or condition noun for lowering and humbling.','Merriam-Webster Editors · CNRTL and ATILF Editors','established','Merriam-Webster publishes the morphological formation; CNRTL independently documents the Christian Latin action-noun senses.',NULL,'reviewed'),
(902,167,1068,1069,'inflection','Late Latin humiliātus is the past participle of humiliāre.','The completed state of being made low preserves the causative verb meaning.','Merriam-Webster Editors','established',NULL,'A Late Latin inflectional relation.','reviewed'),
(903,167,1069,1070,'derivation','Late Latin humiliāre is formed from Latin humilis with verbal morphology.','Low or humble becomes the causative action to make low or humble.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(904,167,1070,1071,'derivation','Latin humilis is formed from humus, earth or ground, with adjectival morphology and vowel adjustment.','Near-the-ground or low develops into low in rank and humble.','Merriam-Webster Editors · Calvert Watkins and American Heritage Dictionary Editors','established','The etymology establishes the formation, not one datable instant of metaphorical change.',NULL,'reviewed'),
(905,167,1071,1072,'inheritance','Latin humus reflects the suffixed o-grade formation *(dh)ghom-o-.','Earth and soil preserve the reconstructed meaning.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(906,167,1072,1073,'morphological_derivation','The suffixed o-grade *(dh)ghom-o- is built on *dhghem-, earth.','The earth meaning remains stable.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(907,167,1073,1074,'root_extension','The appendix identifies *dhg̑hem- as the oldest shape behind centum *dhghem-.','The earth field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(908,167,1074,1075,'knowledge_boundary','No older form is promoted beyond reviewed *dhg̑hem-.','The humiliation trail ends where the published comparative earth root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(898,396,'Etymology: Middle English humiliacioun','supports','Publishes the immediate Middle English form.'),
(898,399,'Definitions: degradation; disgraced state and shame; humiliating circumstance','context','Documents the current semantic center.'),
(899,396,'Middle English humiliacioun from Middle French humiliation','supports','Publishes the French-to-Middle-English route.'),
(900,396,'Middle French humiliation from Late Latin humiliatio','supports','Publishes the French-to-Latin route.'),
(900,397,'Borrowed from Christian Latin humiliatio; French records before 1449 and in 1495','supports','Publishes the Latin source and two historical French sense records.'),
(901,396,'Late Latin humiliatio from humiliatus plus Latin -ion-, -io','supports','Publishes the action-noun formation.'),
(901,397,'Christian Latin humiliatio: lowering, abasement, and humbling through mortification','context','Documents the inherited action-noun semantic field.'),
(902,388,'Humiliatus, past participle of humiliare','supports','Publishes the inflectional relation.'),
(903,388,'Humiliare from Latin humilis low','supports','Publishes the adjective-to-verb formation.'),
(903,389,'Humiliāre, humiliāt-, from humilis','supports','Independently publishes the Late Latin formation.'),
(904,388,'Word Origin: humiliare from humilis low or humble, from humus earth','supports','Publishes the ground-to-low chain.'),
(904,371,'Etymology: Latin humilis from humus earth','supports','Independently publishes the adjective formation.'),
(904,390,'Humilis: near the ground, low down, and figuratively low or lowly','context','Documents both physical and social Latin sense fields.'),
(905,337,'dhghem- item 4: *(dh)ghom-o- to Latin humus and humiliation’s family','supports','Publishes the exact Latin earth formation.'),
(906,337,'dhghem- root heading and item 4','supports','Analyzes the suffixed o-grade under the earth root.'),
(907,337,'dhghem- heading: oldest *dhg̑hem- to centum *dhghem-','supports','Publishes the oldest printed root shape.'),
(908,337,'dhghem- entry endpoint','supports','Defines the deepest reviewed comparative horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(204,1065,398,'late 14th-century Middle English corpus record',NULL,'Geoffrey Chaucer, The Parson’s Tale','Harvard spelling index: humiliacioun n 1','nat sory of his humiliacioun','established','lexical_corpus_record','Harvard Geoffrey Chaucer Website',NULL,NULL,0,'The edited text and index were inspected, but no underlying manuscript object was directly inspected and the occurrence is not claimed as the universally first English use.'),
(205,1066,397,'before 1449 source-reported French record',1449,'Jean de Stavelot, Chronique','page 466 as reported in Godefroy Complément','acte destiné à humilier','established','lexicographic_first_use','CNRTL · ATILF',NULL,NULL,0,'CNRTL’s historical-dictionary report was inspected; the underlying chronicle object and edition page were not, so 1449 is an upper horizon rather than an exact occurrence year.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(559,167,'humiliate','English / Latin route','verb-family relative through Late Latin humiliatus and humiliare',396),
(560,167,'humility','English / Latin route','virtue noun in the parallel humilitas branch from humilis',397),
(561,167,'humble','English / Latin route','adjective relative through the same Latin humilis base',371),
(562,167,'humus','English / Latin route','modern soil noun reusing the Latin earth base',337),
(563,167,'humiliating','English','participial adjective formed in the English humiliate family',388);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(630,167,1,'Indo-European linguistic horizon','*(dh)ghom-o-, *dhghem-, and *dhg̑hem-','The reviewed comparison reaches a reconstructed earth family without assigning it one homeland point.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The source supplies comparative forms but no unique place or first date.'),
(631,167,2,'Christian and Late Latin record','humiliātiō from humiliātus and humiliāre','The action noun carries lowering, abasement, subduing, and mortification fields in the attested Latin record.',NULL,NULL,'broad',200,600,'range','The interval locates the named language stage rather than a first coinage or one datable semantic change.'),
(632,167,3,'Northern France','Middle French before 1449–1495','French records distinguish an act intended to humble from the fact of being humble or humbling oneself.',49000000,2500000,'regional',NULL,1495,'before','The upper bound includes both reported French records without inventing a lower date.'),
(633,167,4,'England','late 14th-century Middle English','Chaucer’s humiliacioun occurs inside a humility passage before the separately reported English verb humiliate.',52200000,-1500000,'regional',1380,1400,'range','The broad range locates the edited Chaucer text; no manuscript or exact composition year was directly verified.'),
(634,167,5,'Global English','modern humiliation','Current definitions center the act, state, or instance of degradation, disgrace, and shame.',NULL,NULL,'global',NULL,NULL,'unresolved','Current distribution is not assigned a fabricated first year or single map point.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(630,337,'dhghem- heading and item 4','supports','Publishes the reconstructed earth forms.'),
(631,396,'Late Latin humiliatio from humiliatus','supports','Publishes the Latin action-noun stage.'),
(631,397,'Christian Latin action of lowering, abasement, and mortifying humbling','supports','Documents the Latin semantic field.'),
(632,397,'French records before 1449 and in 1495','supports','Publishes the French horizons and contrasting senses.'),
(632,396,'Middle French humiliation','context','Publishes the named transmission stage.'),
(633,398,'Humiliacioun n 1 in Chaucer; Parson’s Tale occurrence','supports','Publishes one Middle English corpus record.'),
(633,396,'Middle English humiliacioun','context','Independently publishes the historical English form.'),
(634,399,'Current definitions','supports','Documents degradation, disgraced state, shame, and humiliating circumstance.'),
(634,396,'Current act, state, and instance definitions','supports','Independently documents the current noun structure.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(316,167,'Did humiliation always center disgrace and shame?','No. Christian Latin and historical French include lowering, abasement, mortifying discipline, and self-humbling. Chaucer’s Middle English occurrence appears within a treatment of humility, while current American Heritage definitions center degradation, disgrace, and shame.','established','CNRTL supplies the Latin and French semantic record, Harvard supplies the Chaucer context, and American Heritage supplies the current center.','resolved','The dossier preserves the earlier humbling field on separate nodes and edges instead of projecting modern shame backward.'),
(317,167,'What is the earliest secure English humiliation witness?','Merriam-Webster publishes the Middle English form humiliacioun, and Harvard’s Chaucer corpus indexes one occurrence. This review did not inspect an underlying manuscript, prove an exact composition year, or establish that no earlier English occurrence survives.','probable','The evidence supports a late-fourteenth-century Middle English record, not a directly inspected first object.','open','Promote a specific manuscript or early edition leaf only after facsimile inspection, textual-location verification, and a defensible date.'),
(318,167,'Was English humiliation formed from the English verb humiliate?','The documented chronology points the other way: Middle English humiliacioun is evidenced in Chaucer, whereas Merriam-Webster reports the English verb humiliate only circa 1534. Both English words descend through the Latin humilis family; the noun is not modeled as a modern English derivative of the later-attested verb.','established','Merriam-Webster publishes both routes, Harvard supplies the earlier noun occurrence, and the reviewed humiliate dossier preserves the verb horizon.','resolved','The canonical graph joins the two English words at Late Latin humiliātus and humiliāre rather than drawing a false English verb-to-noun ancestry edge.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(316,397,'Christian Latin meanings and French records before 1449 and in 1495','supports','Publishes lowering, abasement, mortification, hostile humbling, and self-humbling senses.'),
(316,398,'Parson’s Tale occurrence within the remedy for pride','context','Locates the Middle English noun in a humility argument.'),
(316,399,'Current definitions','supports','Documents the modern degradation, disgrace, and shame center.'),
(317,396,'Etymology: Middle English humiliacioun','supports','Publishes the historical form without a located primary witness.'),
(317,398,'Humiliacioun n 1; Parson’s Tale record','context','Supplies one edited corpus occurrence but not an inspected manuscript object.'),
(318,396,'Etymology: Middle English humiliacioun','supports','Publishes the noun’s Middle English stage.'),
(318,388,'First Known Use: circa 1534 for humiliate','supports','Publishes the later English verb horizon.'),
(318,398,'Chaucer humiliacioun occurrence','supports','Documents the earlier noun record in an edited Middle English corpus.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(167,167,2078,'humiliation','Humiliation is evidenced in English before humiliate.','Chaucer’s Middle English humiliacioun occurs in a humility passage; Merriam-Webster reports the English verb humiliate only circa 1534. Christian Latin and French preserve lowering, abasement, mortification, and self-humbling before current definitions center degradation, disgrace, and shame.','A',100,'The reveal distinguishes located evidence from absolute first use and does not claim that the edited Chaucer occurrence is the earliest surviving manuscript object.');
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
(167,398,'Humiliacioun n 1; Parson’s Tale occurrence','supports','Publishes the earlier Middle English noun record and its humility context.'),
(167,388,'Humiliate: First Known Use circa 1534','supports','Publishes the later source-reported English verb horizon.'),
(167,397,'Christian Latin meanings and historical French senses','supports','Documents the older humbling and abasement semantic field.'),
(167,399,'Current definitions','context','Documents the modern degradation, disgrace, and shame center.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(122,167,165,'THE NOUN ARRIVED BEFORE THE VERB','Humiliation is evidenced in Chaucer’s Middle English while humiliate is reported only circa 1534; both rejoin at Late Latin humiliātus and humiliāre rather than one being built from the other inside modern English.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1064 AND 1075
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
WHERE f.id BETWEEN 1064 AND 1075;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 898 AND 908;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 898 AND 908;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 898 AND 908;
