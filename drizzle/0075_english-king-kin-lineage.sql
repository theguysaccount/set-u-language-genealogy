-- Promote English king as an inherited Germanic lineage, not as a translation
-- descendant of Latin rēx. The main spine follows Modern English through
-- Middle English king and Old English cyning to Proto-Germanic *kuninga-.
-- That reconstructed formation then branches: one edge exposes the kin/clan
-- base *kunja-, while a graph-only edge exposes the suffix *-inga-/*-unga-.
-- Finnish kuningas is preserved as an early borrowing and comparative witness,
-- never inverted into an ancestor of English.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(171,'king','king','king','/kɪŋ/','noun · verb','An inherited English title continuing Old English cyning and reconstructed Germanic *kuninga-, a formation built on the Germanic kin or lineage base.','King is a kin-word, not a member of the Latin rēx, royal, and regal family—and the viral gloss “leader of the kin” is more specific than the evidence permits.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(409,'mw-king','King — definition, etymology, and first known use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/king',NULL,'historical_dictionary'),
(410,'med-king','King n. — Middle English Dictionary','Robert E. Lewis et al. · Frances McSparran et al.',2001,'University of Michigan Library','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED24299',NULL,'historical_dictionary'),
(411,'bt-cyning','Cyning — Bosworth–Toller Anglo-Saxon Dictionary','Joseph Bosworth · T. Northcote Toller · online editors',1898,'Bosworth–Toller Anglo-Saxon Dictionary Online','https://bosworthtoller.com/42433',NULL,'historical_dictionary'),
(412,'ewa-kuning','Kuning — Etymologisches Wörterbuch des Althochdeutschen V','Rosemarie Lühr',2014,'Vandenhoeck & Ruprecht · Sächsische Akademie der Wissenschaften zu Leipzig','https://ewa.saw-leipzig.de/articles/87240/de',NULL,'scholarly_dictionary'),
(413,'ewa-kunni','Kunni — Etymologisches Wörterbuch des Althochdeutschen V','Rosemarie Lühr',2014,'Vandenhoeck & Ruprecht · Sächsische Akademie der Wissenschaften zu Leipzig','https://ewa.saw-leipzig.de/articles/87340/de',NULL,'scholarly_dictionary'),
(414,'ahd-ie-gene','Indo-European Root genə-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(415,'moon-old-english-i-umlaut','I-Umlaut in Old English: A Weak Trigger Effect','Annah Moon',2011,'The English Language and Literature Association of Korea','https://www.kci.go.kr/kciportal/landing/article.kci?arti_id=ART001621723','10.15794/jell.2011.57.6.007','scholarly_article'),
(416,'barber-beal-shaw-english-language','The English Language: A Historical Introduction, second edition','Charles Barber · Joan C. Beal · Philip A. Shaw',2009,'Cambridge University Press','https://englishilm.com/wp-content/uploads/2023/02/The-English-Language-A-Historical-Introduction.pdf',NULL,'monograph'),
(417,'meli-kuningaz','Nota sull’etimologia di germanico *kuningaz','Marcello Meli',1996,'Linguistica e Filologia · Università degli Studi di Padova Research Archive','https://hdl.handle.net/11577/2487804',NULL,'scholarly_article');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1098,171,1,1,'king','king','monarch-title','king','/kɪŋ/','attested','before the 12th century–today',450,NULL,'a monarch; by extension a preeminent person, game piece, card, or crowned checker','The inherited monarch title later expands into supremacy, chess, card, checkers, and verbal senses. The first-known-use horizon is source-reported, not a claim for the first spoken use.'),
(1099,171,2,2,'king / kyng','king-kyng','monarch-title','king / kyng',NULL,'attested','Middle English',1150,1500,'king or monarch','The Middle English Dictionary records king plus numerous variants, including early disyllabic kining and cining. The paired display does not imply only two medieval spellings.'),
(1100,171,3,3,'cyning','cyning','monarch-title','cyning',NULL,'attested','Old English',450,1150,'king, ruler, or emperor','Bosworth–Toller records cyning and cyng. The y reflects pre-Old-English i-umlaut of earlier u before the following i.'),
(1101,171,5,4,'*kuninga-','kuninga','king-lineage-formation','*kuninga-',NULL,'reconstructed','Proto-Germanic',-500,200,'king; lineage-member title formation','EWA reconstructs the a-stem *kuninga-; American Heritage and Barber, Beal, and Shaw print nominative-style *kuningaz. These are compatible notational views of the reconstructed lexeme.'),
(1102,171,5,5,'*kunja-','kunja','kin-lineage-base','*kunja-',NULL,'reconstructed','Proto-Germanic',-500,200,'lineage, family, kin, descent, or people','The Germanic kin base is reconstructed from Old English cynn, Old High German kunni, and wider Germanic comparison.'),
(1103,171,6,6,'*gn̥ə-yo-','gneh-yo','kin-generation-formation','*gn̥ə-yo-',NULL,'reconstructed','Proto-Indo-European suffixed zero grade',-4500,-2500,'generation, lineage, or kin formation','American Heritage publishes this suffixed zero-grade formation behind Germanic *kunjam; EWA gives the laryngeal analysis behind Germanic *kunja-.'),
(1104,171,6,7,'*ǵenh₁-','genh1','beget-birth-root','*ǵenh₁-',NULL,'reconstructed','oldest reviewed Proto-Indo-European form',-4500,-2500,'give birth; beget; produce, with derivatives for family and tribal groups','The spelling follows current laryngeal notation; American Heritage prints the oldest form as *g̑enh₁- and the centum development as *genh₁-.'),
(1105,171,7,8,'UNKNOWN','unknown','king-deep-boundary',NULL,NULL,'boundary','before the reviewed birth-and-generation root',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed *ǵenh₁- root.','The trail stops before a reconstructed root is mistaken for an attested first word, an original monarchy, or a complete theory of social organization.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(928,171,1098,1099,'historical_continuation','The Middle English spelling king survives into Present-Day English; later phonetic and orthographic standardization is not compressed into one unsupported sound law.','The monarch sense continues while preeminence, chess, card, checkers, and verbal extensions accumulate.','Merriam-Webster Editors · Middle English Dictionary Editors','established','The modern semantic branches are documented; this edge does not assign each branch an invented exact date.','Middle English into modern English.','reviewed'),
(929,171,1099,1100,'inheritance','Middle English records early kining and cining beside syncopated king forms: the unstressed medial vowel is lost, Old English y is unrounded toward i in Middle English, and k spelling disambiguates the inherited hard consonant.','The inherited title for a king or monarch remains stable through the contraction.','Middle English Dictionary Editors','established','The MED directly supplies both disyllabic and contracted forms; the graph does not claim that one surviving spelling alone generated every dialectal form.','Old English into Middle English.','reviewed'),
(930,171,1100,1101,'inheritance','Pre-Old-English i-umlaut fronts short u to y before the following unstressed i: reconstructed *kuning- yields Old English cyning; inherited endings are reduced or lost.','The reconstructed Germanic king title continues as the attested Old English ruler title.','Annah Moon · Rosemarie Lühr','established','Moon explicitly exemplifies cyning from *kuning as u > y; EWA independently aligns Old English cyning with *kuninga-.','Proto-Germanic comparison to attested Old English.','reviewed'),
(931,171,1101,1102,'derivation','Proto-Germanic *kuninga- is formed on *kunja- with the reconstructed suffix *-inga-/-unga-; this main-spine edge follows the lexical base while a parallel graph edge preserves the suffix.','A lineage or kin term produces a person-title. EWA glosses the original formation as a member of a noble lineage; Meli proposes one who brings distinction to the lineage.','Rosemarie Lühr · Marcello Meli','established','The kin-base derivation is supported independently by EWA and American Heritage; the precise original social interpretation remains an open dispute.','A reconstructed morphological relationship, not one dated coronation or political event.','reviewed'),
(932,171,1102,1103,'inheritance','Proto-Germanic k reflects the Indo-European palatal stop under Grimm’s Law, while the suffixed zero-grade formation develops into Germanic *kunja-.','A birth or generation formation develops the lineage, family, and kin field.','Calvert Watkins and American Heritage Dictionary Editors · Rosemarie Lühr','established','American Heritage directly places Germanic *kunjam under *gn̥ə-yo-; EWA publishes the laryngeal correspondence.','Proto-Indo-European to Proto-Germanic reconstruction.','reviewed'),
(933,171,1103,1104,'derivation','The suffixed zero grade suppresses the root e and combines the reduced root with *-yo-; the full oldest root is reconstructed as *ǵenh₁-.','Give birth and beget supply derivatives for generation, lineage, family, and tribal groups.','Calvert Watkins and American Heritage Dictionary Editors · Rosemarie Lühr','established',NULL,'Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(934,171,1104,1105,'knowledge_boundary','No older form is promoted beyond the reviewed *ǵenh₁- root.','The graph stops before comparative reconstruction becomes a creation myth for monarchy.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word or a claim about one original institution.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(928,409,'King: senses, etymology, and first-known-use section','supports','Documents the inherited headword, modern senses, and before-twelfth-century written horizon.'),
(928,410,'Entry forms and sense 1a','context','Documents medieval king forms and the monarch sense.'),
(929,410,'Forms and Etymology: OE cyning','supports','Records early kining and cining, syncopated king forms, and direct Old English ancestry.'),
(929,412,'Columns 884–885: ae. cyning, me. king','context','Independently aligns the Old and Middle English forms.'),
(930,415,'Section II, example (6a), pp. 1048–1049','supports','Explicitly exemplifies short u > y in cyning from *kuning under Old English i-umlaut.'),
(930,412,'Columns 884–885: ae. cyning < Proto-Germanic *kuninga-','supports','Publishes the comparative Germanic reconstruction.'),
(931,412,'Column 885: *-inga-/*-unga- from *kunja- and original gloss','supports','Directly analyzes the title as a suffixed derivative of the lineage noun.'),
(931,414,'genə-, zero-grade *gn̥ə-yo-: Germanic *kunjam and *kuningaz','supports','Independently places king and kin under the same Germanic family base.'),
(931,417,'Repository abstract','context','Publishes a competing original semantic interpretation while retaining the lineage analysis.'),
(932,414,'genə-, zero-grade *gn̥ə-yo- section','supports','Publishes Germanic *kunjam under the suffixed Indo-European zero grade.'),
(932,413,'Column 892: *kunja- < Indo-European suffixed formation','supports','Gives the corresponding laryngeal derivation for the Germanic kin noun.'),
(933,414,'genə- heading and zero-grade *gn̥ə-yo- section','supports','Publishes the full oldest root, its meaning, and the suffixed zero grade.'),
(933,413,'Column 892: derivation from verbal root *ǵenh₁- “beget”','supports','Independently derives the kin formation from the birth-and-generation root.'),
(934,414,'genə- entry endpoint','supports','Defines the deepest reviewed root horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(213,1098,409,'before the 12th century',1050,'Merriam-Webster first-known-use record for king','First Known Use','before the 12th century','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported written-use horizon. The sorting year 1050 is a midpoint inside the stated period, not an exact token date or first spoken use.'),
(214,1099,410,'Middle English dictionary record',NULL,'Middle English Dictionary lexical record for king','MED24299, Forms and Etymology','king n. … early kining, cining … Etymology: OE cyning','established','lexical_corpus_record','Middle English Compendium · University of Michigan Library','MED24299',NULL,0,'The dictionary entry was inspected, not any one underlying medieval manuscript. It verifies the reported forms and ancestry, not one earliest physical witness.'),
(215,1100,411,'Old English dictionary record',NULL,'Bosworth–Toller lexical record for cyning','Headword cyning; Matthew 2:2 example','Se Iudéa cyning — the king of the Jews','established','lexical_corpus_record','Bosworth–Toller Anglo-Saxon Dictionary Online','cyning, entry 42433',NULL,0,'A digitized historical-lexicon record with located Old English examples. No manuscript object was directly inspected and this is not promoted as the earliest surviving occurrence.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(582,171,'kin','English','direct inherited cousin continuing Old English cynn and the same Germanic lineage base',414),
(583,171,'kind','English','deeper birth-and-family relative under the same Indo-European root',414),
(584,171,'König','German','Germanic title cognate continuing the *kuninga- family',412),
(585,171,'koning','Dutch','Germanic title cognate continuing the *kuninga- family',412),
(586,171,'konungr','Old Norse','North Germanic title cognate from the *kununga- suffix variant',412),
(587,171,'kuning','Old High German','attested West Germanic title cognate',412),
(588,171,'kuningas','Finnish','early Germanic loan that conserves an archaic-looking form; not an English ancestor',416),
(589,171,'gene','English / Greek route','deep birth-and-generation cousin under *ǵenh₁-',414);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(648,171,1,'Indo-European comparative horizon','*ǵenh₁- and suffixed zero grade','The reviewed trail begins in a reconstructed birth-and-generation family whose derivatives name lineage and kin.',NULL,NULL,'uncertain',-4500,-2500,'range','The interval is the project’s comparative horizon, not a point homeland, first word, or date for monarchy.'),
(649,171,2,'Proto-Germanic linguistic horizon','*kunja- plus *-inga-/*-unga-','A lineage noun and person-forming suffix produce the reconstructed king title; Germanic contact also lends an archaic form into Finnic.',NULL,NULL,'uncertain',-500,200,'range','The broad language interval does not date one formation or borrowing event; EWA supplies the derivation and borrowing direction.'),
(650,171,3,'Old English records','cyning','Pre-Old-English i-umlaut fronts u to y, and Old English records the inherited ruler title.',NULL,NULL,'broad',450,1150,'range','The interval is the attested Old English language period; the cited lexicon record is not a claim that every token spans it.'),
(651,171,4,'Middle English records','king, kyng, kining, and cining forms','Disyllabic and syncopated spellings coexist before the contracted king form stabilizes.',NULL,NULL,'broad',1150,1500,'range','The Middle English Dictionary supplies the form inventory but not one single date for the contraction across every dialect.'),
(652,171,5,'Global English','king as monarch and extended supremacy term','The inherited title expands into chess, cards, checkers, preeminence, and verbal uses while remaining the ordinary monarch word.',NULL,NULL,'global',1500,NULL,'open','The modern-language anchor is conventional; the reviewed source does not license exact first dates for every surviving sense.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(648,414,'genə- heading and zero-grade *gn̥ə-yo- section','supports','Publishes the reconstructed birth root and family-forming derivative.'),
(648,413,'Column 892: *kunja- from *ǵenh₁-','context','Independently links the Germanic kin base to the birth-and-generation root.'),
(649,412,'Column 885: *kuninga-/*kununga-, suffix analysis, and Germanic loans','supports','Publishes the reconstructed title, morphological analysis, and borrowing direction.'),
(649,416,'Chapter 4, p. 92 in print; PDF p. 106','context','Uses Finnish kuningas as comparative evidence for reconstructed *kuningaz.'),
(650,415,'Section II, example (6a), pp. 1048–1049','supports','Documents the exact *kuning to cyning i-umlaut example.'),
(650,411,'Headword cyning and cited Old English examples','context','Supplies the attested Old English lexical record.'),
(651,410,'Forms and Etymology','supports','Publishes early disyllabic and contracted Middle English forms from Old English cyning.'),
(652,409,'King senses and Word History','supports','Documents the modern semantic range and inherited English history.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(331,171,'Is English king descended from Latin rēx?','No. King is inherited through Old English cyning from a Germanic kin formation. Latin rēx belongs to the separate straight, direct, and rule family. Translation equivalence does not create ancestry.','established','EWA and American Heritage publish the king-and-kin route; the existing rēx dossier publishes the independent Latin route.','resolved','The dossiers remain in separate lexical families and are joined only by a sourced historical-context link.'),
(332,171,'What did Proto-Germanic *kuninga- originally designate?','The kin-base derivation is secure in the reviewed sources, but its exact social interpretation is not. EWA gives a member of a noble lineage; Meli proposes one who brings distinction to his lineage. “Leader of the kin” is not a neutral translation of either analysis.','proposed','EWA publishes the formation and one semantic reconstruction; Meli’s article abstract explicitly rejects that gloss and proposes another.','open',NULL),
(333,171,'Is Finnish kuningas an ancestor of English king?','No. Finnish borrowed the word from Germanic. Its conservative shape is evidence for reconstruction, not a donor on the English lineage.','established','EWA gives the Germanic-to-Finnic borrowing direction; Barber, Beal, and Shaw explain why the Finnish form preserves useful archaic structure.','resolved','Finnish is a cited descendant branch from the reconstructed node, never a parent of Old English.'),
(334,171,'Do the chess, card, and supremacy senses reveal the original meaning of king?','No. The inherited ruler title is older; the game-piece and preeminence senses are semantic extensions documented in the modern entry.','established','Merriam-Webster separates the monarch, preeminence, chess, card, checkers, and verbal senses while tracing the word to Old English cyning.','resolved','The dossier preserves later semantic branches without projecting them backward into Proto-Germanic social life.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(331,412,'Columns 884–885: English and Germanic title family','supports','Publishes king’s Germanic lineage.'),
(331,414,'genə-: king and kin under Germanic *kunjam','supports','Places English king under the birth-and-family root.'),
(331,315,'reg-: lengthened king grade and Latin rēx','context','Publishes the separate Latin ruler formation.'),
(332,412,'Column 885: original member-of-lineage gloss','supports','Publishes one reconstruction of the formation’s original social meaning.'),
(332,417,'Repository abstract','challenges','Explicitly rejects the noble-lineage gloss and proposes one who illustrates or distinguishes the lineage.'),
(333,412,'Column 885: Germanic loan into Finnish kuningas','supports','States the borrowing direction.'),
(333,416,'Chapter 4, p. 92 in print; PDF p. 106','supports','Explains that Finnish preserves a more archaic form useful for reconstructing *kuningaz.'),
(334,409,'Modern senses and etymology','supports','Separates later semantic branches from the inherited monarch title.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(171,171,2082,'king','King is a kin-word, not a royal word.','English king continues Old English cyning and Germanic *kuninga-, built on the kin or lineage base *kunja-. Latin rēx, royal, and regal belong to a different root—and even “leader of the kin” overstates the disputed original Germanic sense.','A',100,'EWA publishes the formation; American Heritage independently joins king and kin; the rēx family remains genealogically separate.');
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
(171,412,'Columns 884–885: *kuninga- from *kunja- plus suffix','supports','Publishes the Germanic kin-base formation and comparative descendants.'),
(171,414,'genə-, zero-grade *gn̥ə-yo-: king and kin','supports','Independently places king and kin in the birth-and-family root family.'),
(171,315,'reg-: Latin rēx and the lengthened ruler grade','context','Documents the separate rēx, royal, and regal family used in the contrast.'),
(171,417,'Repository abstract','context','Prevents the kin-based reveal from hardening into one uncontested original social gloss.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(12,171,170,'semantic_equivalents_distinct_ancestry','SAME TITLE, TWO DIFFERENT GENEALOGIES','English king is inherited from the Germanic kin-lineage formation *kuninga-. Latin rēx descends from the straight, direct, and rule root. Historical translation makes them semantic equivalents; it does not place one word inside the other’s family tree.','Rosemarie Lühr · Calvert Watkins and American Heritage Dictionary Editors · Lewis and Short','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(12,412,'Columns 884–885: Germanic king family and *kunja- derivation','supports','Documents king’s inherited Germanic ancestry.'),
(12,414,'genə- entry: king and kin','supports','Documents the deeper birth-and-family root.'),
(12,315,'reg- entry: lengthened king grade and Latin rēx','supports','Documents rēx in the separate straight-and-rule family.'),
(12,406,'Headword rēx, rēgis, masculine','context','Documents the Latin title’s lexical identity and semantic equivalence.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(126,171,170,'THE ENGLISH KING IS NOT IN THE ROYAL FAMILY','King is inherited Germanic and built on the kin or lineage base. Rēx, royal, and regal occupy the separate straight-and-rule family. They meet in meaning and translation, not in direct ancestry.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1098 AND 1105
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
WHERE f.id BETWEEN 1098 AND 1105;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 928 AND 934;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 928 AND 934;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 928 AND 934;
--> statement-breakpoint

-- The derivational suffix and Finnish borrowing are graph branches rather than
-- a fabricated linear ancestry. Each graph-only node states its provenance,
-- every edge is directly cited, and the suffix receives its own boundary.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:5:inga-unga:reconstructed:sense:lineage-member-suffix',5,'*-inga- / *-unga-','inga-unga','lineage-member-suffix','*-inga- / *-unga-',NULL,'reconstructed','Proto-Germanic',-500,200,'person associated with or belonging to a lineage','Graph-only reconstructed suffix explicitly identified by EWA as the second component of the king formation.','reviewed'),
('boundary:graph:king-inga-suffix',7,'UNKNOWN','unknown','king-suffix-boundary',NULL,NULL,'boundary','before the reviewed Proto-Germanic suffix analysis',NULL,NULL,'No deeper unique ancestor of this suffix is promoted from the reviewed source set.','Graph-only boundary: a suffix history need not be invented as a freestanding word genealogy.','reviewed'),
('node:36:kuningas:attested:sense:germanic-king-loan',36,'kuningas','kuningas','germanic-king-loan','kuningas',NULL,'attested','Finnish',1500,NULL,'king','Graph-only Finnish borrowing identified by EWA and used by Barber, Beal, and Shaw as conservative evidence for Proto-Germanic *kuningaz.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:kuninga:reconstructed:sense:king-lineage-formation'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:inga-unga:reconstructed:sense:lineage-member-suffix'),'derivational_component','The reconstructed title contains the suffix variant *-inga- beside North Germanic *-unga-.','The suffix forms a person associated with or belonging to the lineage base.','Rosemarie Lühr','established','This is the suffix branch alongside the main-spine *kunja- lexical base.','Reconstructed Proto-Germanic morphology, not a freestanding attested token.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:inga-unga:reconstructed:sense:lineage-member-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:king-inga-suffix'),'knowledge_boundary','The reviewed source identifies the Proto-Germanic suffix but does not license one deeper unique lexical ancestor.','The morphological branch stops without pretending the suffix was an autonomous first word.','SET-U editorial boundary','boundary','The source horizon is explicit.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:36:kuningas:attested:sense:germanic-king-loan'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:kuninga:reconstructed:sense:king-lineage-formation'),'borrowing','Finnish kuningas preserves the reconstructed word’s fuller syllabic shape and final consonant in an adapted Finnic form.','The borrowed meaning remains king.','Rosemarie Lühr · Charles Barber · Joan C. Beal · Philip A. Shaw','established','The sources identify Germanic as donor; the exact contact date is not claimed.','An early Germanic-to-Finnic loan known through comparative evidence.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:5:kuninga:reconstructed:sense:king-lineage-formation' AND p.canonical_key='node:5:inga-unga:reconstructed:sense:lineage-member-suffix' AND e.relation_type='derivational_component'),412,'Column 885: suffix *-inga-/*-unga-','supports','Explicitly identifies the reconstructed suffix and its function in the title.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:5:inga-unga:reconstructed:sense:lineage-member-suffix' AND p.canonical_key='boundary:graph:king-inga-suffix' AND e.relation_type='knowledge_boundary'),412,'Column 885: analysis stops at Proto-Germanic suffix variants','supports','Defines the reviewed suffix horizon without a fabricated deeper word.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:36:kuningas:attested:sense:germanic-king-loan' AND p.canonical_key='node:5:kuninga:reconstructed:sense:king-lineage-formation' AND e.relation_type='borrowing'),412,'Column 885: Germanic loan into Finnish kuningas','supports','States the borrowing direction.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:36:kuningas:attested:sense:germanic-king-loan' AND p.canonical_key='node:5:kuninga:reconstructed:sense:king-lineage-formation' AND e.relation_type='borrowing'),416,'Chapter 4, p. 92 in print; PDF p. 106','supports','Explains why Finnish preserves comparative evidence for reconstructed *kuningaz.');
