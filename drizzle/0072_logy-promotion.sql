-- Promote the highest-priority evidence-seeded candidate and expose the second
-- half of ETYMOLOGY as its own bound-form dossier. The route preserves the
-- Middle English, Old French, Latin, and Greek stages, then reuses the exact
-- reviewed LOGOS-to-LEG canonical lineage and its live *leg- / *sleg- dispute.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(168,'logy','-logy','-logy','/-lədʒi/','noun combining form','A bound English word element used in formations involving discourse or expression and in names of doctrines, theories, sciences, and fields of study.','-logy never simply meant “the study of.” Its recorded English range includes oral or written expression, discourse, doctrine, theory, and science, and its hyphen marks a bound form rather than a freestanding ancestral word.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(400,'mw-logy','-logy — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/-logy',NULL,'historical_dictionary'),
(401,'ahd-logy','American Heritage Dictionary: -logy or -ology','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=logy',NULL,'historical_dictionary'),
(402,'mw-combining-forms','Combining Forms, Prefixes, and Suffixes — Explanatory Notes','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/help/explanatory-notes/dict-combining-forms',NULL,'lexicographic_methodology'),
(403,'med-etimologie','Middle English Dictionary: etimologie n.','Middle English Dictionary Editors',2026,'University of Michigan','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED14631',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1076,168,1,1,'-logy','-logy','discourse-study-combining-form','-logy','/-lədʒi/','attested','Modern English',1500,NULL,'bound element forming nouns of expression, discourse, doctrine, theory, science, or study','The initial hyphen is evidence-bearing: Merriam-Webster classifies this as a noun combining form, not an independently inherited word.'),
(1077,168,2,2,'-logie','-logie','bound-form-in-learned-words','-logie',NULL,'attested','Middle English',1150,1500,'bound learned element visible in words such as etimologie','The Middle English Dictionary supplies host-word quotations; it does not present -logie as an autonomous token.'),
(1078,168,8,3,'-logie','-logie','learned-noun-forming-element','-logie',NULL,'attested','Old French',842,1400,'learned noun-forming element transmitted into Middle English','American Heritage gives Old French as the immediate pre-English stage.'),
(1079,168,9,4,'-logia','-logia','learned-noun-forming-element','-logia',NULL,'attested','Latin and learned Latin',-100,1700,'learned noun-forming element continuing Greek -logia','The broad interval represents the Latin transmission tradition, not a claim of continuous identical productivity.'),
(1080,168,10,5,'-λογία','-logia','account-discourse-formation','-logíā',NULL,'attested','Ancient Greek',-700,600,'formation associated with speaking, discourse, or an account of a subject','American Heritage derives Greek -logiā from logos “word, speech” and also notes formations in -logos.'),
(1081,168,10,6,'λόγος','logos','default','lógos',NULL,'attested','Ancient Greek',-700,600,'word, speech, account, reckoning, or reason','Reuses the canonical Greek logos node; no one English gloss exhausts its range.'),
(1082,168,10,7,'λέγω','lego','default','légō',NULL,'attested','Ancient Greek',-800,600,'to gather, count, recount, say, or speak','Reuses the canonical Greek verb node.'),
(1083,168,6,8,'*leǵ-','leg','default',NULL,NULL,'reconstructed','Indo-European prehistory',-4500,-2500,'to collect or gather, with descendants involving speech','The competing *sleǵ- root shape remains a published challenge.'),
(1084,168,7,9,'UNKNOWN','unknown','logy-deep-boundary',NULL,NULL,'boundary','before the disputed gather reconstruction',NULL,NULL,'No deeper ancestor is promoted beyond the live *leǵ- / *sleǵ- dispute.','The trail ends at the current comparative horizon rather than converting a disputed reconstruction into fact.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(909,168,1076,1077,'historical_continuation','Middle English -logie is continued by modern English -logy with spelling and pronunciation adapted to later English patterns.','The learned form remains productive across expression, discourse, doctrine, theory, science, and study senses rather than narrowing to one universal gloss.','American Heritage Dictionary Editors · Merriam-Webster Editors','established','The sources establish the historical form and semantic range, but do not supply one coinage date for the combining form itself.','The form is evidenced inside words; the hyphenated dictionary headword is a modern lexicographic representation.','reviewed'),
(910,168,1077,1078,'borrowing','Middle English -logie borrows the formally matching Old French learned element.','The discourse or learned-account function continues within borrowed formations.','American Heritage Dictionary Editors','established',NULL,'American Heritage publishes the route but not one exact transfer event.','reviewed'),
(911,168,1078,1079,'borrowing','Old French -logie continues Latin -logia with Romance phonological and orthographic adaptation.','The learned noun-forming function remains associated with accounts and organized subjects.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(912,168,1079,1080,'borrowing','Latin -logia borrows and transliterates Greek -logiā.','A Greek formation in the speaking and account family becomes a reusable learned Latin element.','American Heritage Dictionary Editors · Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(913,168,1080,1081,'derivation','Greek -logiā is formed in the logos family; American Heritage also records -logos formations as a contributing channel.','Word, speech, and discourse support account-of-a-subject formations; “science” is a later specialization, not the only Greek value.','American Heritage Dictionary Editors · Ancient Greek lexicography','established','The dossier follows the explicitly published -logiā-to-logos route while preserving the related -logos channel in the dispute record.',NULL,'reviewed'),
(914,168,1081,1082,'derivation','λόγος is a verbal noun in the λέγω family, with an o-grade formation represented in traditional analysis.','Gathering, counting, recounting, speech, account, and reason form a historically layered semantic network.','Logeion · comparative Greek lexicography','probable','The semantic sequence should not be reduced to a single just-so story.',NULL,'reviewed'),
(915,168,1082,1083,'inheritance','Greek λέγω is traditionally derived from PIE *leǵ-; some scholarship argues that an initial *s should be reconstructed.','The daughter evidence spans collecting and speaking, but the exact semantic path remains reconstructed.','UT Austin LRC · IE-CoR · Kaczyńska','proposed','The competing *sleǵ- analysis prevents an unqualified grade.',NULL,'reviewed'),
(916,168,1083,1084,'knowledge_boundary','No older form is promoted beyond the disputed reconstruction.','The graph stops rather than laundering a contested root into certainty.','Open research boundary','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(909,401,'-logy or -ology: Middle English -logie','supports','Publishes the Middle English form behind the current suffix or combining form.'),
(909,400,'Definitions 1–2','supports','Documents the modern expression, doctrine, theory, and science range.'),
(910,401,'Middle English -logie, from Old French','supports','Publishes the French-to-Middle-English route.'),
(911,401,'Old French, from Latin -logia','supports','Publishes the Latin-to-French route.'),
(912,401,'Latin -logia, from Greek -logiā','supports','Publishes the Greek-to-Latin route.'),
(912,400,'Etymology: French -logie, Latin -logia, Greek, from logos','context','Independently publishes the French, Latin, and Greek sequence in compressed form.'),
(913,401,'Greek -logiā from logos “word, speech”; and -logos from legein','supports','Publishes the Greek morphological family and the related -logos channel.'),
(913,35,'λόγος','context','Documents the broad semantic range of the Greek base.'),
(914,35,'λόγος','supports','Identifies λόγος as a verbal noun of λέγω.'),
(914,36,'λέγω','supports','Supplies the Greek verbal sense families.'),
(915,37,'Root *leg-','supports','Publishes the traditional reconstruction and Greek reflexes.'),
(915,39,'Cognate set 1529','supports','Independently places Greek λέγω under the reconstructed family.'),
(915,38,'Argument for *sleg-','challenges','Argues that initial *s belongs in the reconstruction.'),
(916,38,'Reconstruction limits','supports','The disagreement over the root shape defines the current evidence horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(206,1076,400,'current lexicographic record',NULL,'Merriam-Webster noun combining-form entry','-logy, noun combining form','oral or written expression; doctrine, theory, science','established','lexical_corpus_record','Merriam-Webster',NULL,NULL,0,'The dictionary entry was inspected as a lexical record. It supplies no first-use date for the bound form and is not treated as a primary historical object.'),
(207,1077,403,'before 1398 source-reported Middle English quotation',1398,'John Trevisa’s translation of Bartholomaeus Anglicus as indexed by the Middle English Dictionary','Trev.Barth. (BL Add MS 27944), fol. 19b/a','What is þe menynge of þe ethimolegia','established','lexical_corpus_record','Middle English Dictionary · University of Michigan','British Library Add MS 27944',NULL,0,'The edited dictionary quotation and manuscript stencil were inspected, but the underlying manuscript leaf was not. The occurrence witnesses -logie inside a host word and is not claimed as an autonomous suffix token or the earliest surviving example.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(564,168,'etymology','English / Greek route','reviewed compound whose -logy member belongs to the Greek logos family',403),
(565,168,'logic','English / Greek route','reviewed sibling through Greek logos and logikos, not a formation in the English combining form',400),
(566,168,'phraseology','English','dictionary example of the expression or discourse sense',400),
(567,168,'ethnology','English','dictionary example of the doctrine, theory, or science sense',400),
(568,168,'prologue','English / Greek route','reviewed logos-family relative whose -logue ending is not the English -logy combining form',203),
(569,168,'dialogue','English / Greek route','reviewed speech-family relative through Greek dialogos and dialegesthai',201);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(635,168,1,'Ancient Greek linguistic record','-logiā, logos, and legein','The bound formation belongs to a dense Greek family of word, speech, discourse, account, reckoning, and speaking.',39000000,22000000,'regional',-700,600,'range','The interval locates the named Ancient Greek record, not the first creation of the formation.'),
(636,168,2,'Latin learned networks','Latin -logia','Greek -logiā enters Latin and remains available to later learned formation across Europe.',NULL,NULL,'broad',-100,1700,'range','The broad transmission interval does not imply one unchanged community, pronunciation, or productivity pattern.'),
(637,168,3,'Northern France','Old French -logie','The Latin learned element continues in Old French before reaching Middle English.',46500000,2500000,'regional',842,1400,'range','The bounds identify the conventional Old French stage rather than one dated borrowing event.'),
(638,168,4,'England','Middle English -logie','A before-1398 Middle English Dictionary quotation shows the element inside ethimolegia; no autonomous suffix token is claimed.',52200000,-1500000,'regional',1150,1500,'range','The language-stage bounds remain broader than the single source-reported quotation.'),
(639,168,5,'Global English','Modern -logy and -ology formations','The word element remains productive across expression, discourse, doctrine, theory, science, and study formations.',NULL,NULL,'global',1500,NULL,'open','Modern productivity is open-ended; no unsupported first productivity date is asserted.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(635,401,'Greek -logiā from logos; -logos from legein','supports','Publishes the Greek morphological family.'),
(635,35,'λόγος','context','Documents the Greek semantic field.'),
(636,401,'Latin -logia','supports','Publishes the Latin transmission stage.'),
(636,400,'Etymology: Latin -logia','context','Independently identifies the Latin learned form.'),
(637,401,'Old French -logie','supports','Publishes the Old French stage.'),
(638,401,'Middle English -logie','supports','Publishes the Middle English form.'),
(638,403,'Before 1398 Trevisa quotation: ethimolegia','supports','Supplies a located host-word occurrence in the Middle English record.'),
(639,400,'Definitions 1–2','supports','Documents the current combining-form range.'),
(639,402,'Hyphenated word elements and -logy example','context','Explains the lexicographic status of -logy as a bound word element.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(319,168,'Does -logy simply mean “the study of”?','No. Merriam-Webster gives oral or written expression as one sense and doctrine, theory, or science as another; American Heritage separately gives discourse or expression and science, theory, or study. “Study of” is a useful reading in many formations, not a universal historical definition.','established','Merriam-Webster and American Heritage independently publish a multi-sense combining form.','resolved','The dossier and truth ledger preserve the wider semantic range instead of substituting one classroom mnemonic.'),
(320,168,'Was -logy a freestanding ancestral word?','No evidence reviewed here supports that representation. Merriam-Webster calls -logy a noun combining form and explains that a hyphenated entry is a word element forming part of a compound; the historical forms are likewise evidenced within larger formations. The unrelated adjective logy “sluggish” has a different history.','established','Merriam-Webster’s entry and explanatory notes distinguish the bound combining form from the unrelated adjective and from an autonomous word.','resolved','Every stage retains the leading hyphen, and the attestation ledger identifies host-word evidence rather than inventing standalone tokens.'),
(321,168,'Are -logy and -logue interchangeable endings?','No. They are relatives in the Greek logos and legein family, but English -logy follows -logie, Latin -logia, and Greek -logiā, while prologue follows Greek prologos through Latin prologus and French prologue. Related ancestry does not erase distinct formations and transmission paths.','established','American Heritage publishes -logiā and -logos channels; the reviewed prologue dossier publishes the separate whole-word route.','resolved','The graph connects both paths at Greek logos without collapsing the English endings into one morpheme.'),
(322,168,'Is the deepest root *leǵ- or *sleǵ-?','The traditional *leǵ- reconstruction remains widely represented, while published scholarship argues that the gather or collect root began with *s. The graph preserves both analyses.','proposed','UT Austin LRC and IE-CoR publish *leg-; Kaczyńska argues for initial *s.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(319,400,'Definitions 1–2','supports','Publishes expression and discourse beside doctrine, theory, and science.'),
(319,401,'Definitions 1–2','supports','Independently publishes discourse or expression beside science, theory, or study.'),
(320,402,'Combining Forms, Prefixes, and Suffixes','supports','Defines a hyphenated entry such as -logy as a word element that forms part of a compound.'),
(320,400,'Separate adjective and noun combining-form entries','supports','Distinguishes unrelated sluggish logy from the bound learned element.'),
(320,403,'Middle English quotations in etimologie','context','Shows the historical element inside larger words rather than as an autonomous token.'),
(321,401,'Greek -logiā and -logos source channels','supports','Publishes related but morphologically distinct Greek formations.'),
(321,203,'Prologue etymology','supports','Publishes the separate prologos to prologus to prologue whole-word route.'),
(322,37,'Root *leg-','supports','Publishes the traditional reconstruction.'),
(322,39,'Cognate set 1529','context','Independently represents the Greek evidence under *leg-.'),
(322,38,'Argument for *sleg-','challenges','Argues that initial *s belongs in the reconstruction.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(168,168,2079,'-logy','-logy never simply meant “the study of.”','The bound form’s recorded range includes expression and discourse as well as doctrine, theory, science, and study. Its trail reaches Greek logos—word, speech, account, reckoning, reason—rather than a prehistoric word meaning “science.”','A',100,'The reveal is directly supported by two major dictionary entries; the deeper logos-to-legein step and *leǵ- / *sleǵ- horizon retain their lower confidence grades.');
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
(168,400,'Definitions 1–2 and Etymology','supports','Publishes the multi-sense combining form and its Greek logos ancestry.'),
(168,401,'Definitions and bracketed etymology','supports','Independently preserves discourse or expression beside science, theory, or study and supplies the complete transmission route.'),
(168,402,'Hyphenated combining-form entry explanation','context','Establishes that the displayed hyphen marks a bound word element.'),
(168,35,'λόγος','context','Documents the Greek semantic field that prevents a one-gloss “science” story.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(123,168,2,'ETYMOLOGY CONTAINS ITS OWN ACCOUNT','The -logy inside etymology is not a generic sticker meaning “science.” Greek etymologia joins the true-word family to a logos-family account or inquiry, while the bound form’s wider history includes expression and discourse.','100','A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1076 AND 1084
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
WHERE f.id BETWEEN 1076 AND 1084;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 909 AND 916;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 909 AND 916;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 909 AND 916;
