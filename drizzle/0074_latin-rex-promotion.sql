-- Promote Latin rēx without treating one case form as the ancestor of another.
-- The clickable Latin paradigm exposes rēgis and the bound stem rēg- before
-- the route crosses into the reconstructed lengthened grade *rēg-. The x is
-- therefore explained as nominative stem-final g plus -s, not as a hidden
-- spelling trick or a direct Latin parent of Celtic and Sanskrit king words.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(170,'rex','rēx','rex','/reːks/','noun','The Latin third-declension noun for a king, ruler, chief, or leader, cited as rēx, rēgis and built on the bound stem rēg-.','The x of rēx is not the whole stem and the g is not a silent letter: nominative rēg- plus -s becomes /reːks/, while genitive rēgis makes the stem visible.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(406,'scaife-ls-rex','rēx — Lewis and Short Latin Dictionary','Charlton T. Lewis · Charles Short · Scaife ATLAS Editors',1879,'Tufts University Scaife ATLAS','https://atlas.perseus.tufts.edu/dictionaries/entry/urn%3Acite2%3Ascaife-viewer%3Adictionary-entries.atlas_v1%3Alat.ls.perseus-eng2-n41625/',NULL,'scholarly_lexicon'),
(407,'mit-historical-linguistics-rex','Lecture 23: Historical Linguistics — Latin rēx, rēgis, and sound change','Norvin W. Richards',2022,'MIT OpenCourseWare','https://ocw.mit.edu/courses/24-900-introduction-to-linguistics-spring-2022/mit24_900s22_lec23.pdf',NULL,'scholarly_reference'),
(408,'vergil-aeneid-perseus-lat2','Aeneid — Latin edition in the Perseus text collection','Publius Vergilius Maro; J. B. Greenough, editor',1881,'Perseus Digital Library · Alpheios Texts','https://texts.alpheios.net/text/urn:cts:latinLit:phi0690.phi003.perseus-lat2',NULL,'digitized_primary_source');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1091,170,9,1,'rēx','rex','king-noun','rēx','/reːks/','attested','Latin antiquity',-700,700,'king, ruler, chief, leader, or master','Nominative singular. The lexicon cites the noun as rēx, rēgis; MIT analyzes the surface x as /ks/ produced when stem-final g meets nominative -s.'),
(1092,170,9,2,'rēgis','regis','king-genitive','rēgis',NULL,'attested','Latin antiquity',-700,700,'of a king; genitive singular of rēx','A real inflected case form that exposes g between vowels. It is a paradigm sibling used to reveal the stem, not the historical ancestor of the nominative.'),
(1093,170,9,3,'rēg-','reg','king-stem','rēg-',NULL,'attested','Latin bound lexical stem',-700,700,'king stem used outside the nominative singular','A bound morphological stem evidenced by rēgis, rēgem, and the rest of the paradigm; the hyphen prevents it from being mistaken for a freestanding Latin token.'),
(1094,170,6,4,'*rēg-','reg-lengthened','king-lengthened-grade','*rēg-',NULL,'reconstructed','Proto-Indo-European lengthened grade',-4500,-2500,'king or ruler formation','The asterisk marks the point where the trail leaves attested Latin morphology and enters comparative reconstruction.'),
(1095,170,6,5,'*h₃reg-','h3reg','straight-direct-centum-root','*h₃reg-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'move in a straight line; direct, lead, rule','Shared analytical centum form for the straight, direct, lead, and rule family.'),
(1096,170,6,6,'*h₃reg̑-','h3reg-palatal','straight-direct-root','*h₃reg̑-',NULL,'reconstructed','oldest published Proto-Indo-European form',-4500,-2500,'move in a straight line; direct, lead, rule','Deepest reviewed root for the family in the current source set.'),
(1097,170,7,7,'UNKNOWN','unknown','rex-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃reg̑- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed straight-and-direct root.','The trail stops before comparative morphology is mistaken for an attested first word or a complete history of kingship.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(922,170,1091,1092,'inflection','Nominative rēx and genitive rēgis belong to one paradigm: stem-final g before nominative -s devoices to k, and Latin writes the resulting /ks/ cluster as x; intervocalic g remains visible in rēgis.','Both forms mean king in different grammatical cases; no semantic ancestry runs from one case form to the other.','Norvin W. Richards · Charlton T. Lewis · Charles Short','established','The edge is a navigational paradigm relation, not a claim that genitive rēgis historically produced nominative rēx.','Synchronic Latin morphology illuminated by historical sound change.','reviewed'),
(923,170,1092,1093,'inflection','Removing the genitive singular ending -is from rēgis exposes the bound stem rēg-.','The stem retains the king meaning across the inflectional paradigm.','Norvin W. Richards · Charlton T. Lewis · Charles Short','established',NULL,'The bound stem is evidenced by multiple Latin case forms and is not printed as an autonomous token.','reviewed'),
(924,170,1093,1094,'inheritance','Latin rēg- reflects the reconstructed Indo-European lengthened king grade *rēg-.','The ruler or king formation remains the lexical center while the attested Latin stem is separated from its reconstructed comparative parent.','Calvert Watkins and American Heritage Dictionary Editors · Norvin W. Richards','established','The macron is shared notation, but only the Proto-Indo-European node carries an asterisk.','Latin is attested; the parent grade is reconstructed.','reviewed'),
(925,170,1094,1095,'derivation','Lengthened-grade *rēg- belongs under centum *h₃reg-.','The ruler or king formation specializes the straight, direct, lead, and rule family.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative ablaut analysis, not one dated institutional event.','reviewed'),
(926,170,1095,1096,'inheritance','Centum *h₃reg- reflects the oldest published form *h₃reg̑-.','The straight, direct, lead, and rule field is preserved across the reconstructed notation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both nodes are reconstructed analytical forms, not separately attested words.','reviewed'),
(927,170,1096,1097,'knowledge_boundary','No older form is promoted beyond the reviewed *h₃reg̑- root.','The graph stops where the current comparative analysis stops.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(922,407,'Lecture slides 74–78; transcript, pp. 15–16','supports','Derives nominative rēx from stem reg- plus -s, explains devoicing of g, and identifies x as the spelling of /ks/.'),
(922,406,'Headword rēx, rēgis, masculine','context','Supplies the paired nominative and genitive forms and their shared lexical identity.'),
(923,407,'Lecture slides 75–77; transcript, p. 16','supports','Prints reg-is and reg-em and explicitly identifies reg- as the stem used outside the nominative.'),
(923,406,'Headword rēx, rēgis, masculine','context','Lexicographically exposes the genitive form used to identify the stem.'),
(924,315,'reg-, lengthened-grade *rēg- and Latin rēx','supports','Publishes the Indo-European king grade and Latin reflex.'),
(924,407,'Lecture slides 74–78','context','Supplies the internally visible Latin stem rēg- on the attested side of the comparison.'),
(925,315,'reg-, lengthened-grade *rēg- section','supports','Analyzes the king formation under the straight-and-direct root.'),
(926,315,'reg- heading: oldest form and centum form','supports','Publishes the two reconstructed notational horizons.'),
(927,315,'reg- entry endpoint','supports','Defines the deepest reviewed source horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(210,1091,408,'first-century BCE poem, inspected through an 1881 digital edition',NULL,'rēx in Vergil’s Aeneid','Book 1, line 544','Rex erat Aeneas nobis','established','lexical_corpus_record','Perseus Digital Library · Alpheios Texts','Aeneid 1.544',NULL,0,'The digital Latin edition was inspected, not an ancient manuscript or first-century physical object. This record verifies the nominative token and its context, not the earliest use of rēx.'),
(211,1092,408,'first-century BCE poem, inspected through an 1881 digital edition',NULL,'rēgis in Vergil’s Aeneid','Book 9, line 286','non moenia regis Acestae','established','lexical_corpus_record','Perseus Digital Library · Alpheios Texts','Aeneid 9.286',NULL,0,'The digital Latin edition was inspected, not an ancient manuscript or first-century physical object. This record verifies a genitive token; the morphological analysis comes from the cited lexicon and MIT materials.'),
(212,1091,406,'nineteenth-century historical lexicon record of ancient Latin usage',NULL,'Lewis and Short lexical record for rēx','Headword rēx, rēgis, masculine','rēx, rēgis','established','lexical_corpus_record','Tufts University Scaife ATLAS','Lewis and Short, rēx',NULL,0,'A digitized historical-lexicon record with cited ancient usages, not a directly inspected manuscript object or a claim for the earliest surviving token.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(576,170,'royal','English / Latin route','descendant through Latin rēgālis and Anglo-French roial',307),
(577,170,'regal','English / Latin route','separate English descendant through Latin rēgālis',310),
(578,170,'rí','Old Irish','inherited Celtic king cognate, not a Latin borrowing',319),
(579,170,'-rīx','Gaulish','inherited Celtic onomastic king cognate, not a Latin suffix',320),
(580,170,'rājā','Sanskrit','Indo-Aryan king cognate from a separate n-stem formation',315),
(581,170,'right','English / Germanic route','deep straight-and-correct cousin under the wider root',315);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(644,170,1,'Indo-European linguistic horizon','*h₃reg̑- to lengthened *rēg-','The straight-and-direct family develops the reconstructed ruler or king grade.',NULL,NULL,'uncertain',-4500,-2500,'range','The interval marks the project’s comparative horizon; it is not a dated king title, homeland point, or social institution.'),
(645,170,2,'Latin linguistic world','rēg- across the rēx, rēgis paradigm','Latin preserves the long vowel of the king grade while case endings make the final stem consonant alternately visible as g and x.',NULL,NULL,'broad',-700,700,'range','The language interval is broad and conventional; it does not claim one first utterance or map coordinate.'),
(646,170,3,'Roman literary transmission','rēx and rēgis in Vergil’s Aeneid','A digital edition provides located nominative and genitive tokens, while remaining distinct from an ancient manuscript-object inspection.',NULL,NULL,'broad',NULL,NULL,'unresolved','The work is ancient and the inspected edition is modern; this dossier does not infer a manuscript date or first lexical use.'),
(647,170,4,'Medieval French and English transmission','rēgālis to royal and regal','The Latin king noun supplies a derived adjective whose Romance and English routes produce two separate modern descendants.',NULL,NULL,'broad',1300,1499,'range','The interval combines the source-reported fourteenth-century horizon for royal and fifteenth-century horizon for regal; it is not one borrowing event.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(644,315,'reg- heading and lengthened-grade king section','supports','Publishes the reconstructed straight-and-direct root and king grade.'),
(645,407,'Lecture slides 74–78; transcript, pp. 15–16','supports','Explains the rēx, rēgis paradigm and the stem-plus-ending sound history.'),
(645,406,'Headword rēx, rēgis, masculine','context','Supplies the Latin lexical identity and inflected citation form.'),
(646,408,'Aeneid 1.544 and 9.286','supports','Provides the located digital Latin occurrences of rēx and rēgis.'),
(647,307,'Royal — etymology and fourteenth-century first-known-use horizon','supports','Publishes the rēgālis-to-royal route and century-level horizon.'),
(647,309,'Regal — etymology and fifteenth-century first-known-use horizon','supports','Publishes the parallel rēgālis-to-regal route and century-level horizon.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(327,170,'Is the x of rēx an inherited single stem consonant?','No. In the Latin nominative, stem rēg- combines with -s; g devoices to k before s and the /ks/ cluster is spelled x. The genitive rēgis preserves visible g.','established','MIT’s slides and transcript explicitly lay out reg-s, reg-is, and the sound changes leading to x.','resolved','The dossier reveals x as a surface cluster without calling g silent or treating spelling as the whole explanation.'),
(328,170,'Did genitive rēgis historically produce nominative rēx?','No. Rēx and rēgis are inflected forms in one paradigm. The graph uses the genitive to expose the stem, not as a chronological parent word.','established','Lewis and Short cite rēx, rēgis together; MIT explains both from the same rēg- stem.','resolved','The edge is typed inflection and its chronology note explicitly denies case-to-case ancestry.'),
(329,170,'Did Latin rēx produce Old Irish rí or Gaulish -rīx?','No. The reviewed comparative sources treat the Latin and Celtic forms as inherited cognates in separate Italic and Celtic branches; Celtic raises inherited *ē to *ī.','established','The Texas Old Irish introduction compares rí, ríg, Gaulish -rix, rēx, and rēgis; Cambridge reconstructs the Celtic branch.','resolved','The graph joins the forms at reconstructed ancestry and draws no Latin-to-Celtic borrowing edge.'),
(330,170,'Did royal and regal enter English through one identical route?','No. Both descend from Latin rēgālis, but royal crosses through Anglo-French roial or real while regal has Old French, Anglo-French, and direct-Latin transmission reported by different authorities.','established','The existing royal and regal dossiers preserve their distinct medieval channels and the documented uncertainty around regal.','resolved','The descendants remain separate dossiers even though they share the Latin king adjective and noun.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(327,407,'Lecture slides 74–78; transcript, p. 16','supports','Explicitly derives reg-s, devoices g, and identifies x as Latin spelling for /ks/.'),
(327,406,'Headword rēx, rēgis, masculine','context','Shows the visible x/g alternation inside the lexical citation form.'),
(328,406,'Headword rēx, rēgis, masculine','supports','Cites nominative and genitive as one noun.'),
(328,407,'Lecture slides 75–77; transcript, p. 16','supports','Explains both surface forms from one stem rather than one case from the other.'),
(329,319,'Old Irish introduction, example 1a','supports','Compares inherited Celtic ī with Latin ē in rēx and rēgis.'),
(329,320,'Celtic chapter, pp. 137–138','supports','Publishes the separate Proto-Celtic lineage and vowel development.'),
(330,307,'Royal — etymology from Anglo-French roial or real and Latin rēgālis','supports','Publishes the royal route.'),
(330,310,'Regal — etymology through Old French from Latin rēgālis','supports','Publishes one documented regal route while the existing dossier preserves alternatives.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(170,170,2081,'rēx','The x of rēx is a whole nominative sound change in one letter.','Latin starts from the bound stem rēg-, adds nominative -s, devoices g to k, and writes the resulting /ks/ as x. Genitive rēgis makes the stem visible—but it is a sibling case form, not an ancestor.','A',100,'MIT publishes the sound sequence directly; Lewis and Short supply the paradigm and semantic range.');
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
(170,407,'Lecture slides 74–78; transcript, pp. 15–16','supports','Publishes stem reg-, nominative -s, devoicing, x as /ks/, and the genitive and accusative forms.'),
(170,406,'Headword rēx, rēgis, masculine','supports','Supplies the paired lexical citation and the noun’s attested semantic range.'),
(170,315,'reg-, lengthened-grade *rēg- and Latin rēx','context','Connects the attested Latin stem analysis to the reconstructed king grade.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(125,170,139,'RĒX AND RĀJĀ BOTH HIDE THEIR KING STEMS','Latin nominative rēx obscures rēg-, visible in rēgis; Sanskrit nominative rājā belongs to rājan-. They are inherited cousins from separate formations, and neither case form descends from the other language.','100','A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1091 AND 1097
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
WHERE f.id BETWEEN 1091 AND 1097;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 922 AND 927;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 922 AND 927;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 922 AND 927;
