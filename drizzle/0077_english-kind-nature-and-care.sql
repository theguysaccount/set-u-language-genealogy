-- Promote English kind without collapsing its noun and adjective histories.
-- The noun route continues Old English cynd / gecynd through Proto-Germanic
-- *kundjaz, a graph-only adjective branch continues Old English gecynde through
-- *kundiz. Both formations meet the birth root only at PIE *gn̥ə-t- / *ǵenh₁-.
-- A second graph-only descendant records the later grammaticalization of
-- kind of / kinda as a hedge, never as an ancestor of the lexical headword.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(173,'kind','kind','kind','/kaɪnd/','noun · adjective','An inherited English word whose noun history runs through nature, birth, class, and family while its adjective history runs through what is natural, native, fitting, and only later benevolent.','Kind is not kin plus d, and it did not begin as niceness. The two words meet only deeper at the Indo-European birth root, while benevolence grows from an older sense of what is natural, fitting, or properly felt.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(423,'mw-kind','Kind — definition, etymology, and first known use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/kind',NULL,'historical_dictionary'),
(424,'med-kinde-noun','Kīnde n. — Middle English Dictionary','Robert E. Lewis et al. · Frances McSparran et al.',2001,'University of Michigan Library','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED24248',NULL,'historical_dictionary'),
(425,'med-kinde-adjective','Kīnd(e adj. — Middle English Dictionary','Robert E. Lewis et al. · Frances McSparran et al.',2001,'University of Michigan Library','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED24249',NULL,'historical_dictionary'),
(426,'bt-gecynd','Ge-cynd — Bosworth–Toller Anglo-Saxon Dictionary','Joseph Bosworth · T. Northcote Toller · online editors',1898,'Bosworth–Toller Anglo-Saxon Dictionary Online','https://bosworthtoller.com/13997',NULL,'historical_dictionary'),
(427,'bt-gecynde','Ge-cynde — Bosworth–Toller Anglo-Saxon Dictionary','Joseph Bosworth · T. Northcote Toller · online editors',1898,'Bosworth–Toller Anglo-Saxon Dictionary Online','https://bosworthtoller.com/47571',NULL,'historical_dictionary'),
(428,'ewa-kind','Kind — Etymologisches Wörterbuch des Althochdeutschen V','Rosemarie Lühr',2014,'Vandenhoeck & Ruprecht · Sächsische Akademie der Wissenschaften zu Leipzig','https://ewa.saw-leipzig.de/articles/81970/en',NULL,'scholarly_dictionary'),
(429,'loureiro-porto-kind-of','Pragmatic Markers in World Englishes: Kind of and Sort of as a Case in Point','Lucía Loureiro-Porto',2024,'Publicacions de la Universitat de València','https://dspace.uib.es/xmlui/handle/11201/166976','10.7203/PUV-OA-307-9','monograph');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1113,173,1,1,'kind','kind','nature-category-benevolence','kind','/kaɪnd/','attested','before the 12th century–today',450,NULL,'a nature or class; goods rather than money; natural, fitting, or benevolent','The modern spelling carries distinct noun and adjective histories. The direct dossier spine follows the noun; the adjective lineage and pragmatic kind of descendant are preserved as cited canonical graph branches.'),
(1114,173,2,2,'kīnde','kinde','nature-origin-class-noun','kīnde',NULL,'attested','Middle English',1150,1500,'essential nature, origin, family, species, class, sex, manner, or the created order','The Middle English Dictionary records kinde, cinde, kiend, kint, kund, cund, and other forms. The displayed head form represents that attested noun inventory rather than one uniform medieval spelling.'),
(1115,173,3,3,'cynd / gecynd','cynd-gecynd','origin-nature-kind-noun','cynd / gecynd',NULL,'attested','Old English',450,1150,'nature, kind, manner, condition, origin, generation, offspring, or sex','Bosworth–Toller documents ge-cynd and ge-cind; American Heritage also records Old English cynd / gecynd(e). The prefixal variation is represented explicitly rather than forced into one token.'),
(1116,173,5,4,'*kundjaz','kundjaz','origin-family-kind-noun','*kundjaz',NULL,'reconstructed','Proto-Germanic',-500,200,'origin, birth, family, race, or kind','American Heritage reconstructs the noun formation behind Old English cynd / gecynd(e). It is distinct from the *kunja- formation behind kin.'),
(1117,173,6,5,'*gn̥ə-t-','gneh-t','born-nature-formation','*gn̥ə-t-',NULL,'reconstructed','Proto-Indo-European suffixed zero grade',-4500,-2500,'born or produced; a birth-, nature-, or kind-forming derivative','American Heritage publishes this zero-grade suffixed formation under the birth root. Germanic reconstructions differ in stem shape and voicing, so the transition is graded rather than presented as one observed word.'),
(1118,173,6,6,'*ǵenh₁-','genh1','beget-birth-root','*ǵenh₁-',NULL,'reconstructed','oldest reviewed Proto-Indo-European form',-4500,-2500,'give birth; beget; produce, with derivatives for family, kind, and generation','This is the same canonical birth root reached independently by kin and king. Shared depth does not make their distinct Germanic formations interchangeable.'),
(1119,173,7,7,'UNKNOWN','unknown','kind-deep-boundary',NULL,NULL,'boundary','before the reviewed birth-and-generation root',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed *ǵenh₁- root.','The trail stops before a reconstructed birth root is mistaken for an attested first word, an original taxonomy, or a moral theory of human kindness.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(941,173,1113,1114,'historical_continuation','Middle English kinde and related spellings converge on modern kind; the final unstressed vowel is lost and the vowel participates in the later history that yields /aɪ/.','The noun retains class, sort, nature, and in-kind senses while the older origin, family, sex, and created-order field recedes or survives in compounds and fixed uses.','Merriam-Webster Editors · Middle English Dictionary Editors','established','The dictionaries directly document the ancestry and sense inventories; the edge does not assign one date to every spelling or semantic loss.','Middle English into modern English.','reviewed'),
(942,173,1114,1115,'inheritance','Middle English kīnde, cinde, kunde, cunde, and related forms continue Old English cynd / gecynd with dialectal vowel and spelling variation; inherited endings and some prefixal marking recede.','Old English nature, origin, generation, condition, and kind meanings expand and reorganize into medieval essential nature, creation, family, class, species, sex, and manner senses.','Middle English Dictionary Editors · Joseph Bosworth · T. Northcote Toller','established','The historical dictionaries publish the direct ancestry and broad overlap; no one representative spelling is promoted as the source of every dialectal form.','Old English into Middle English.','reviewed'),
(943,173,1115,1116,'inheritance','Proto-Germanic *kundjaz develops through West Germanic history to Old English cynd / gecynd: the following j conditions fronting of u to y before the glide and ending disappear; the ge- variant is not treated as part of the reconstructed stem.','A reconstructed origin, birth, family, race, or kind noun continues in Old English nature, origin, generation, offspring, and category senses.','Calvert Watkins and American Heritage Dictionary Editors · Bosworth–Toller Editors','established','American Heritage directly prints the Germanic and Old English forms; Bosworth–Toller supplies the attested Old English inventory. The graph distinguishes lexical inheritance from optional prefixal form.','Proto-Germanic comparison through West Germanic prehistory into attested Old English.','reviewed'),
(944,173,1116,1117,'comparative_derivation','The Indo-European palatal stop develops as Germanic k under Grimm’s Law, while a suffixed zero-grade *gn̥ə-t- formation is represented in Germanic *kund- material; the exact consonant and stem reconstruction varies across analyses.','A formation meaning born or produced develops the origin, family, race, nature, and kind noun field.','Calvert Watkins and American Heritage Dictionary Editors · Rosemarie Lühr','probable','American Heritage publishes *kundjaz from the zero-grade formation. EWA’s comparative discussion preserves *kenþa-, *kunđa-, and *kunđi- analyses and unresolved voicing or borrowing questions for parts of the Germanic evidence.','Proto-Indo-European to Proto-Germanic reconstruction, without a directly attested intermediate token.','reviewed'),
(945,173,1117,1118,'derivation','The zero grade suppresses the root vowel and adds the *-t- formation to the birth root; the full oldest root is represented as *ǵenh₁-.','Give birth and beget produce derivatives for what is born, natural, generated, familial, or classed by kind.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(946,173,1118,1119,'knowledge_boundary','No older form is promoted beyond the reviewed *ǵenh₁- root.','The graph stops before lexical evidence is turned into a universal claim about nature, moral goodness, or human classification.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first use of kind or a proof that natural and morally good were originally identical.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(941,423,'Kind noun and adjective senses, etymology, and first-known-use sections','supports','Documents the modern noun and adjective fields, Middle and Old English ancestry, and written-use horizons.'),
(941,424,'MED24248, Forms and senses 1–8','context','Documents the medieval noun spelling inventory and its much broader semantic range.'),
(942,424,'MED24248, Forms, Etymology: OE cynd, and senses 1–8','supports','Publishes the Middle English noun variants, direct Old English ancestry, and semantic inventory.'),
(942,426,'Headword GE-CYND and semantic inventory','supports','Publishes the Old English noun forms and nature, kind, condition, generation, and offspring field.'),
(943,414,'genə-, zero-grade *gn̥ə-t- section: Germanic *kundjaz and Old English cynd / gecynd(e)','supports','Directly aligns the Germanic noun reconstruction with the Old English forms.'),
(943,426,'Headword GE-CYND, forms and examples','context','Supplies the attested Old English variants and meanings.'),
(944,414,'genə-, zero-grade *gn̥ə-t- section: Germanic *kundjaz','supports','Publishes the Germanic noun under the suffixed zero-grade formation.'),
(944,428,'Comparative discussion of *kenþa-, *kunđa-, and *kunđi-','context','Shows why one undifferentiated Germanic *kund- reconstruction should retain a stated confidence limit.'),
(945,414,'genə- heading and zero-grade *gn̥ə-t- section','supports','Publishes the full oldest birth root and its suffixed zero-grade derivative.'),
(946,414,'genə- entry endpoint','supports','Defines the deepest reviewed comparative horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(219,1113,423,'before the 12th century',1050,'Merriam-Webster first-known-use record for kind as a noun','First Known Use, noun','before the 12th century','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported written-use horizon for the noun. The sorting year 1050 is a midpoint inside the stated period, not an exact token date or first spoken use.'),
(220,1115,429,'circa 888 passage reported from Alfred’s Boethius',888,'Old English gecynde passage reported by Loureiro-Porto','Chapter 2, historical development of kind of','Hæfdan him gecynde cyningas twegen','established','lexical_corpus_record','Universitat de València open monograph · source edition reported in chapter 2','Alfred’s Boethius, source-reported',NULL,0,'The scholarly monograph and edited excerpt were inspected, not the underlying manuscript object. The form is reported in an Old English passage and is not promoted as the earliest surviving token.'),
(221,1114,424,'circa 1175 quotation reported by the Middle English Dictionary',1175,'Bodleian Homilies cynde quotation in the Middle English Dictionary','MED24248, sense 1a','heo ðreo an God wuniȝende on ane cynde','established','lexical_corpus_record','Middle English Compendium · University of Michigan Library','MED24248 · Bodleian Homilies',NULL,0,'The dictionary record and edited quotation were inspected, not the underlying manuscript object. This verifies a located medieval noun use, not the first surviving token.');
--> statement-breakpoint

-- Correct the preliminary kin-relative label now that the full kind dossier
-- establishes distinct Germanic formations that meet only at PIE depth.
UPDATE `relatives`
SET `relation`='deeper birth-and-family cousin under the same Indo-European root, not the same Germanic base', `source_id`=414
WHERE `id`=590;
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(598,173,'kin','English','deep cousin from a distinct Germanic formation that meets kind at the Indo-European birth root',414),
(599,173,'king','English','kin-derived title that meets kind only at the deeper Indo-European birth root',414),
(600,173,'Kind','German','Germanic child and birth relative; a cognate branch, not the English donor',428),
(601,173,'kindred','English','historical descendant in the kind, family, and relationship field',414),
(602,173,'kindness','English','transparent modern derivative of the benevolent adjective',423),
(603,173,'kindly','English','transparent modern derivative of the adjective and manner field',423),
(604,173,'kind of','English','category construction later reanalyzed as a hedge and pragmatic marker',429),
(605,173,'kinda','English','reduced written representation of the grammaticalized pragmatic construction',429);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(658,173,1,'Indo-European comparative horizon','*ǵenh₁- and suffixed zero grade *gn̥ə-t-','The reviewed trail begins with a reconstructed birth root and a derived formation for what is born or produced, not with an attested moral category.',NULL,NULL,'uncertain',-4500,-2500,'range','The interval is the project’s comparative horizon, not a point homeland, first token, or proof that nature and moral goodness were one concept.'),
(659,173,2,'Proto-Germanic linguistic horizon','noun *kundjaz and adjective *kundiz','Distinct reconstructed noun and adjective formations carry origin, family, nature, native, and fitting senses toward West Germanic.',NULL,NULL,'uncertain',-500,200,'range','The broad interval brackets reconstructed developments. The exact Germanic stem shapes and voicing are comparative analyses, not directly dated utterances.'),
(660,173,3,'Old English records','cynd / gecynd and gecynde','The noun names nature, origin, generation, kind, and offspring while the adjective means natural, native, innate, proper, or inherited by birth.',NULL,NULL,'broad',450,1150,'range','The conventional Old English interval contains source-reported records; it does not assign every sense or prefixal variant to the entire period.'),
(661,173,4,'Middle English records','kīnde noun and kīnd(e adjective','Class, species, essential nature, and origin remain active while the adjective’s fitting and affectionate senses develop toward modern benevolence.',NULL,NULL,'broad',1150,1500,'range','The Middle English Dictionary supplies dated quotations and distinct noun and adjective entries, not one simultaneous semantic event across every dialect.'),
(662,173,5,'Global English','kind, kind of, and kinda','The noun centers on class and nature, the adjective on benevolence, and the category phrase also develops hedge and discourse-marker functions.',NULL,NULL,'global',1500,NULL,'open','The modern-language anchor is conventional. The sources document layered functions but do not license one exact date for every pragmatic use or reduced spelling.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(658,414,'genə- heading and zero-grade *gn̥ə-t- section','supports','Publishes the reconstructed birth root and the suffixed formation behind the kind family.'),
(658,428,'Comparative discussion of the birth-root derivatives','context','Supplies a laryngeal comparative analysis and variant Germanic formations.'),
(659,414,'genə-, Germanic *kundjaz and *kundiz','supports','Publishes the distinct reconstructed noun and adjective formations.'),
(659,428,'Comparative discussion of *kenþa-, *kunđa-, and *kunđi-','context','Documents analytical complexity inside the wider Germanic evidence.'),
(660,426,'Headword GE-CYND, forms, senses, and examples','supports','Supplies the Old English noun record and semantic range.'),
(660,427,'Headword GE-CYNDE, forms, senses, and examples','supports','Supplies the distinct Old English adjective record.'),
(661,424,'MED24248, noun forms, senses, and dated quotations','supports','Publishes the medieval noun inventory and historical meanings.'),
(661,425,'MED24249, adjective forms, senses, and dated quotations','supports','Publishes the medieval adjective inventory, including natural, fitting, affectionate, and benevolent uses.'),
(662,423,'Kind noun and adjective senses and first-known-use sections','supports','Documents the modern class, nature, in-kind, natural, fitting, and benevolent fields.'),
(662,429,'Chapter 2, historical development of kind of and sort of','supports','Documents reanalysis from category construction to hedge and pragmatic marker, including reduced forms.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(339,173,'Is kind simply kin plus a final d?','No. Kin continues Germanic *kunja- from a *-yo- formation, while kind continues noun *kundjaz and adjective *kundiz from a *-t- formation. They are deep cousins that meet at *ǵenh₁-, not one modern word built by adding d to the other.','established','American Heritage publishes the two separate zero-grade formations and their Germanic descendants; EWA’s kunni entry independently assigns kin to *kunja-.','resolved','The canonical graph joins the dossiers only at the shared birth root and never draws a kin-to-kind derivation.'),
(340,173,'Did kind always mean benevolent or nice?','No. Old English gecynde is natural, native, innate, fitting, proper, or inherited by birth. Middle English evidence adds affectionate and benevolent uses, making modern moral kindness a semantic development rather than the original whole meaning.','established','Bosworth–Toller documents the Old English adjective field; the Middle English Dictionary documents later loving and benevolent senses.','resolved','The adjective branch exposes the semantic change separately from the noun lineage.'),
(341,173,'Does kind of always mean a literal category or type?','No. Alongside the compositional category construction, kind of has been reanalyzed as an approximator, hedge, downtoner, and pragmatic marker; reduced kinda represents that later constructional history.','established','Loureiro-Porto reviews the historical development and corpus evidence for category, hedge, and pragmatic-marker functions.','resolved','A graph-only descendant edge records grammaticalization without making the pragmatic construction an ancestor of kind.'),
(342,173,'Is German Kind the source of English kind?','No. German Kind belongs to the comparative Germanic birth family, but it is a cognate branch rather than a donor into English. Similar form and a child sense do not establish a borrowing route.','established','American Heritage derives the English noun and adjective through Old English; EWA treats German Kind through its own Germanic comparative history.','resolved','German Kind remains a cited relative and never appears on the English ancestry spine.'),
(343,173,'Is there one completely settled Proto-Germanic *kund- reconstruction?','The English noun and adjective routes are well supported, but the exact prehistoric consonant, stem, and derivational analyses across the wider Germanic family are not reducible to one unqualified form. American Heritage prints *kundjaz and *kundiz; EWA discusses *kenþa-, *kunđa-, and *kunđi- plus unresolved voicing and borrowing questions.','proposed','The reviewed references agree on the birth-root family while preserving different reconstructed stem analyses and confidence limits.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(339,414,'genə-, separate zero-grade *gn̥ə-yo- and *gn̥ə-t- sections','supports','Separates Germanic *kunjam behind kin from *kundjaz and *kundiz behind kind.'),
(339,413,'Column 892: *kunja- and Old English cynn','context','Independently publishes the kin formation that must not be collapsed into kind.'),
(340,427,'Headword GE-CYNDE, senses I–III','supports','Documents natural, native, innate, proper, and birthright meanings without a primary benevolent gloss.'),
(340,425,'MED24249, especially senses 1–5 and dated quotations','supports','Documents the medieval natural, fitting, affectionate, loving, and benevolent range.'),
(341,429,'Chapter 2, especially the nominal-to-pragmatic development','supports','Documents category use, reanalysis, hedge functions, pragmatic marking, and reduced forms.'),
(342,414,'genə-, English kind noun and adjective derivatives','supports','Publishes an inherited Old English route for English kind.'),
(342,428,'Kind entry and comparative Germanic discussion','supports','Publishes German Kind inside its own comparative formation rather than as an English donor.'),
(343,414,'genə-, Germanic *kundjaz and *kundiz','supports','Supplies one explicit pair of Germanic reconstructions.'),
(343,428,'Comparative discussion of *kenþa-, *kunđa-, and *kunđi-','supports','Preserves alternate stem analyses and unresolved voicing or borrowing issues.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(173,173,2084,'kind','Kind is not kin with a d—and kindness did not begin as niceness.','Kind and kin descend through separate Germanic formations and meet only at the deeper birth root. The adjective first carries natural, native, fitting, and proper senses; benevolence becomes prominent through later semantic development.','A',100,'American Heritage separates the prehistoric formations; Old and Middle English dictionaries expose the semantic sequence; the exact wider Germanic stem analysis remains open.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id,ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,evidence_grade ASC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT ranked.new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(173,414,'genə-, separate *gn̥ə-yo- and *gn̥ə-t- formations','supports','Shows that kin and kind use distinct formations before reaching the shared birth root.'),
(173,427,'Headword GE-CYNDE, senses I–III','supports','Documents the older natural, native, fitting, proper, and inherited adjective field.'),
(173,425,'MED24249, especially sense 5 and dated quotations','supports','Documents the later affectionate, loving, and benevolent semantic development.'),
(173,423,'Kind noun and adjective senses and etymology','context','Documents the modern class, nature, fitting, and benevolent endpoints.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(128,173,172,'KIN AND KIND MEET BELOW THE GERMANIC SURFACE','Kin follows the *kunja- and *gn̥ə-yo- branch; kind follows *kundjaz / *kundiz and *gn̥ə-t-. Their resemblance is real family history, but the first canonical node they share is the deeper *ǵenh₁- birth root.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1113 AND 1119
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
WHERE f.id BETWEEN 1113 AND 1119;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 941 AND 946;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 941 AND 946;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 941 AND 946;
--> statement-breakpoint

-- Graph-only adjective branch. The node notes disclose that these forms are
-- outside the linear noun spine, and every adjacency is directly cited.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:2:kinde:attested:sense:natural-fitting-benevolent-adjective',2,'kīnd(e)','kinde','natural-fitting-benevolent-adjective','kīnd(e)',NULL,'attested','Middle English',1150,1500,'natural, innate, fitting, proper, native, affectionate, loving, or benevolent','Graph-only attested adjective branch: the Middle English Dictionary separates this adjective from the noun and documents both older natural or fitting senses and later affectionate or benevolent uses.','reviewed'),
('node:3:gecynde:attested:sense:natural-native-fitting-adjective',3,'gecynde','gecynde','natural-native-fitting-adjective','gecynde',NULL,'attested','Old English',450,1150,'natural, native, innate, proper, fitting, or inherited by birth','Graph-only attested adjective branch: Bosworth–Toller documents the form and semantic inventory; it is not collapsed into the cynd / gecynd noun node.','reviewed'),
('node:5:kundiz:reconstructed:sense:natural-native-adjective',5,'*kundiz','kundiz','natural-native-adjective','*kundiz',NULL,'reconstructed','Proto-Germanic',-500,200,'natural, native, or fitting','Graph-only reconstructed adjective branch: American Heritage publishes *kundiz separately from noun *kundjaz; EWA supplies comparative limits for the wider Germanic *kund- material.','reviewed'),
('node:1:kind-of-kinda:attested:sense:hedge-pragmatic-marker',1,'kind of / kinda','kind-of-kinda','hedge-pragmatic-marker','kind of / kinda',NULL,'attested','Modern English construction',1700,NULL,'a category expression reanalyzed as an approximator, hedge, downtoner, or pragmatic marker','Graph-only attested descendant construction: Loureiro-Porto documents its development from nominal category use to pragmatic functions and reduced forms. It is not an ancestor of lexical kind.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:kind:attested:sense:nature-category-benevolence'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:kinde:attested:sense:natural-fitting-benevolent-adjective'),'historical_continuation','Middle English kīnd(e) loses the final unstressed vowel and participates in the later vowel history that yields modern /aɪ/; no single spelling is made the donor for every dialect.','Natural, innate, fitting, proper, native, affectionate, and benevolent uses reorganize around the modern fitting and benevolent adjective.','Merriam-Webster Editors · Middle English Dictionary Editors','established','The adjective continuity and sense inventories are documented independently from the noun route.','Middle English into modern English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:kinde:attested:sense:natural-fitting-benevolent-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:gecynde:attested:sense:natural-native-fitting-adjective'),'inheritance','Middle English kīnd(e), kende, kunde, and related adjective spellings continue Old English gecynde with loss or reduction of inherited morphology and dialectal vowel variation.','Old English natural, native, innate, proper, fitting, and inherited senses continue; affectionate, loving, and benevolent uses become visible in the medieval record.','Middle English Dictionary Editors · Bosworth–Toller Editors','established','The dictionaries publish direct ancestry and distinct semantic inventories; the emergence of benevolent senses is located to the medieval record without claiming one moment of change.','Old English into Middle English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:gecynde:attested:sense:natural-native-fitting-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:kundiz:reconstructed:sense:natural-native-adjective'),'inheritance','Proto-Germanic *kundiz develops into Old English gecynde through West Germanic history, including fronting conditioned by the following high segment and loss or reshaping of inherited endings; ge- is not treated as part of the reconstructed stem.','The reconstructed natural or native adjective continues as Old English natural, innate, native, fitting, proper, and birthright senses.','Calvert Watkins and American Heritage Dictionary Editors · Bosworth–Toller Editors','established','American Heritage directly links the reconstructed and Old English adjectives; Bosworth–Toller supplies the attested form and senses.','Proto-Germanic comparison through West Germanic prehistory into Old English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:kundiz:reconstructed:sense:natural-native-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:gneh-t:reconstructed:sense:born-nature-formation'),'comparative_derivation','Germanic k reflects the Indo-European palatal stop under Grimm’s Law while the *-t- derivative is represented in the reconstructed *kund- adjective; exact stem and voicing analyses vary in the wider family.','What is born or produced develops the natural, native, innate, and fitting adjective field.','Calvert Watkins and American Heritage Dictionary Editors · Rosemarie Lühr','probable','American Heritage publishes *kundiz under *gn̥ə-t-. EWA’s wider Germanic comparison requires the same explicit analytical caution as the noun route.','Proto-Indo-European to Proto-Germanic reconstruction.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:kind-of-kinda:attested:sense:hedge-pragmatic-marker'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:kind:attested:sense:nature-category-benevolence'),'grammaticalization','The lexical sequence kind of remains orthographically visible while frequent constructional use permits phonological reduction represented as kinda.','A compositional category phrase develops approximating, hedging, downtoning, and discourse-management functions.','Lucía Loureiro-Porto','established','The source documents a historical cline and multiple present functions; the edge does not imply that every kind of token is pragmatic or reduced.','Documented from early modern category constructions into modern pragmatic-marker uses.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:kind:attested:sense:nature-category-benevolence' AND p.canonical_key='node:2:kinde:attested:sense:natural-fitting-benevolent-adjective' AND e.relation_type='historical_continuation'),423,'Kind adjective etymology and senses','supports','Documents the modern adjective, Middle and Old English ancestry, and modern fitting and benevolent range.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:kind:attested:sense:nature-category-benevolence' AND p.canonical_key='node:2:kinde:attested:sense:natural-fitting-benevolent-adjective' AND e.relation_type='historical_continuation'),425,'MED24249, Forms and senses 1–5','supports','Publishes the medieval adjective spellings and natural, fitting, affectionate, and benevolent senses.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:kinde:attested:sense:natural-fitting-benevolent-adjective' AND p.canonical_key='node:3:gecynde:attested:sense:natural-native-fitting-adjective' AND e.relation_type='inheritance'),425,'MED24249, Etymology: compare OE gecynde, and senses 1–5','supports','Aligns the medieval adjective with Old English and publishes its expanded sense inventory.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:kinde:attested:sense:natural-fitting-benevolent-adjective' AND p.canonical_key='node:3:gecynde:attested:sense:natural-native-fitting-adjective' AND e.relation_type='inheritance'),427,'Headword GE-CYNDE, forms and senses I–III','supports','Publishes the Old English adjective and natural, native, innate, proper, fitting, and inherited meanings.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:gecynde:attested:sense:natural-native-fitting-adjective' AND p.canonical_key='node:5:kundiz:reconstructed:sense:natural-native-adjective' AND e.relation_type='inheritance'),414,'genə-, zero-grade *gn̥ə-t- section: Germanic *kundiz and Old English gecynde','supports','Directly aligns the Germanic and Old English adjective forms.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:gecynde:attested:sense:natural-native-fitting-adjective' AND p.canonical_key='node:5:kundiz:reconstructed:sense:natural-native-adjective' AND e.relation_type='inheritance'),427,'Headword GE-CYNDE, forms and semantic inventory','context','Supplies the attested English side of the inheritance claim.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:5:kundiz:reconstructed:sense:natural-native-adjective' AND p.canonical_key='node:6:gneh-t:reconstructed:sense:born-nature-formation' AND e.relation_type='comparative_derivation'),414,'genə-, zero-grade *gn̥ə-t- section: Germanic *kundiz','supports','Publishes the adjective reconstruction under the birth-root derivative.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:5:kundiz:reconstructed:sense:natural-native-adjective' AND p.canonical_key='node:6:gneh-t:reconstructed:sense:born-nature-formation' AND e.relation_type='comparative_derivation'),428,'Comparative discussion of the Germanic *kund- formations','context','Preserves the wider family’s reconstruction and voicing limits.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:kind-of-kinda:attested:sense:hedge-pragmatic-marker' AND p.canonical_key='node:1:kind:attested:sense:nature-category-benevolence' AND e.relation_type='grammaticalization'),429,'Chapter 2, historical development and grammaticalization cline','supports','Documents the nominal category construction, semantic and pragmatic reanalysis, and reduced modern forms.');
