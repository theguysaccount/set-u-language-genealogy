-- Promote English hate by keeping its noun and verb histories visibly forked.
-- The dossier's direct spine follows the probable Middle English noun-to-verb
-- remodeling route through haten / hatian / *hatōjan- before rejoining
-- Germanic *hatiz-. The already reviewed canonical graph preserves the
-- competing direct noun route hate -> Old English hete. Both routes then share
-- the qualified *ḱh₂d-es- / *ḱeh₂d- proposal and its explicit boundary.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(176,'hate','hate','hate','/heɪt/','noun · verb','An inherited Germanic hostility word whose English noun and verb histories converge imperfectly: Old English preserves both hete and hatian, Middle English may have remodeled the noun from the verb, and the proposed deeper Indo-European family remains semantically opaque.','The oldest English record does not confine hate to an inner feeling. Old English hatian could mean treating someone as an enemy or persecuting them, and Beowulf pairs it with hostile deeds; the still-deeper “pursuit” story remains a proposal, not a fact.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(441,'electronic-beowulf-5','Electronic Beowulf, Fifth Edition','Kevin Kiernan, editor and designer · Emil Iacob, software engineer',2026,'British Library · University of Kentucky College of Arts & Sciences','https://ebeowulf.uky.edu/',NULL,'digital_critical_edition'),
(442,'med-hate-noun-results','hāte n. — Middle English Dictionary search record','Robert E. Lewis et al. · Frances McSparran et al.',2001,'University of Michigan Library','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary?f%5Betyma_language%5D%5B%5D=&f%5Betyma_language%5D%5B%5D=Old+English&f%5Bpos%5D%5B%5D=noun&page=15&per_page=100&search_field=etyma&sort=score+desc',NULL,'historical_dictionary'),
(443,'harrison-sharp-beowulf-glossary','Beowulf: an Anglo-Saxon poem — glossary entry hatian','James A. Harrison · Robert Sharp',1893,'Wikisource digital edition','https://en.wikisource.org/wiki/Beowulf_(Harrison_and_Sharp)/Glossary',NULL,'digitized_scholarly_edition');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1136,176,1,1,'hate','hate','hostility-aversion-enmity-action','hate','/heɪt/','attested','before the 12th century–today',1050,NULL,'as a noun, intense hostility, aversion, or an object of hostility; as a verb, feel enmity or strong aversion','Merriam-Webster reports different historical horizons for the verb and noun. Current use also ranges into milder distaste and the polite formula “I hate to …”; those later weakenings are not projected onto every historical token.'),
(1137,176,2,2,'hate','hate','hate-noun-component','hate',NULL,'attested','Middle English',1150,1500,'hate, extreme anger, hostility, or enmity','This node is deliberately reused from the first component of hatred. Merriam-Webster calls it probably derivative of haten and replacing inherited hete; American Heritage instead gives a direct noun continuation from hete.'),
(1138,176,2,3,'haten','haten','hate-verb-alternative','haten',NULL,'attested','Middle English',1150,1500,'to hate or treat with enmity','The direct dossier spine follows Merriam-Webster’s probable remodeled-noun analysis. The canonical graph simultaneously exposes the competing noun route from hate to Old English hete.'),
(1139,176,3,4,'hatian','hatian','hate-pursue-verb','hatian',NULL,'attested','Old English',450,1150,'to hate, treat as an enemy, persecute, injure, or in contextual translation pursue with hatred','Beowulf preserves hatode at line 2319 and hatian with hostile deeds at line 2466. “Pursue” is a contextual scholarly interpretation, not a universal replacement gloss.'),
(1140,176,5,5,'*hatōjan-','hatojan','hate-verb-formation','*hatōjan-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with enmity','A reconstructed weak verb derived from the Germanic hate noun base.'),
(1141,176,5,6,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','The noun base is reconstructed from Old English hete, Old Saxon heti, Old Norse hatr, Gothic hatis, and related Germanic material.'),
(1142,176,6,7,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is plausible enough to display but the source says the semantic relations are far from transparent.'),
(1143,176,6,8,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','Liberman argues that pursuit and persecution illuminate the Germanic evidence better, while questioning whether all proposed non-Germanic forms belong together.'),
(1144,176,7,9,'UNKNOWN','unknown','hate-deep-boundary',NULL,NULL,'boundary','before the disputed Indo-European comparison',NULL,NULL,'No securely accepted ancestor or uniquely recoverable original meaning is known beyond the Germanic hate family.','The trail ends without choosing among grief, care, mourning, love, pursuit, persecution, and hate as one alleged first meaning.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(961,176,1136,1137,'historical_continuation','Middle English hate continues into modern /heɪt/ through the Great Vowel Shift and regular loss of final inflectional material; noun and verb converge in one spelling.','The hostility and enmity field continues while the verb also develops strong-dislike, distaste, and polite-reluctance uses and the noun develops attributive public uses such as hate speech.','Merriam-Webster Editors · American Heritage Dictionary Editors','established','The modern continuation is secure even though the immediate source of the Middle English noun is disputed.','Middle English into modern English.','reviewed'),
(962,176,1137,1138,'derivation','The noun hate is analyzed as a zero-derived or remodeled form based on Middle English haten; this edge represents Merriam-Webster’s probable analysis, not unanimous consensus.','The verbal act or disposition of hating supplies a remodeled noun for the emotion.','Merriam-Webster Editors','probable','American Heritage instead presents the noun as continuing Old English hete.','Middle English internal derivation or remodeling.','reviewed'),
(963,176,1138,1139,'inheritance','Middle English haten continues Old English hatian with loss of the medial unstressed vowel and inherited infinitive reduction.','Treat as an enemy or persecute continues as hate; a pursuit sense is relevant to one deeper semantic hypothesis.','Merriam-Webster Editors · American Heritage Dictionary Editors · Anatoly Liberman','established','The verb ancestry is secure; the claim that pursuit is primary remains proposed.','Old English into Middle English.','reviewed'),
(964,176,1139,1140,'inheritance','Old English hatian continues the reconstructed Germanic weak verb *hatōjan-, with the inherited stem and reduced inflection.','The Germanic hostile-disposition verb continues in Old English; pursuit or persecution may preserve a more concrete action sense.','Merriam-Webster Editors · Anatoly Liberman','established','The formal inheritance is secure; the semantic priority of pursuit is proposed.','Proto-Germanic reconstruction into attested Old English.','reviewed'),
(965,176,1140,1141,'derivation','The Germanic weak verb *hatōjan- is derived from the base of the hate noun *hatiz-.','A noun for hate or enmity supplies the related verb to hate or treat as an enemy.','Merriam-Webster Editors','established','Merriam-Webster explicitly derives the verb formation from the noun base.','Related Proto-Germanic reconstructed formations.','reviewed'),
(966,176,1141,1142,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(967,176,1142,1143,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(968,176,1143,1144,'knowledge_boundary','No older form or single original concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail stops before pursuit, grief, love, care, or hatred is turned into a prehistoric just-so story.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends at Germanic; the displayed PIE route remains qualified.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(961,436,'Definitions, noun and verb etymologies, and first-known-use sections','supports','Documents the modern categories, historical convergence, and current semantic range.'),
(961,437,'Noun and verb entries','context','Independently documents modern senses and the two historical categories.'),
(962,436,'Noun etymology: probably derivative of haten, replacing hete','supports','Publishes the remodeled-noun analysis and its qualification.'),
(962,437,'Noun etymology: Middle English from Old English hete','challenges','Preserves the competing direct-continuation analysis.'),
(963,436,'Verb etymology: Middle English haten from Old English hatian','supports','Publishes the formal historical path.'),
(963,437,'Verb etymology','context','Independently documents the same stages.'),
(963,443,'Glossary entry hatian, lines 2320 and 2467 in that edition’s numbering','context','Documents hate, enemy action, injury, and the two poetic occurrences.'),
(964,436,'Verb etymology: Germanic *hatōjan-','supports','Publishes the reconstructed inheritance.'),
(964,439,'Old English hatian, pursuit, persecution, and Germanic verb discussion','context','Supplies the proposed concrete-action interpretation.'),
(965,436,'Verb etymology: derivative from the base of *hatiz-','supports','Directly connects the reconstructed verb and noun formations.'),
(966,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal proposal while flagging semantic opacity.'),
(966,439,'Discussion of non-Germanic candidates and semantic uncertainty','challenges','Warns that phonetic similarity does not settle family membership.'),
(967,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the formation and proposed base.'),
(968,436,'Etymology note: semantic relations are far from transparent','supports','Defines the limit of the deep comparison.'),
(968,439,'Conclusion: pursuit is promising, the rest remains murky','supports','Supports an explicit boundary rather than a single invented original sense.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(228,1136,436,'before the 12th century',1050,'Merriam-Webster first-known-use record for hate as a verb','First Known Use, verb','before the 12th century','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported horizon, not an exact token or first spoken use.'),
(229,1136,436,'12th century',1150,'Merriam-Webster first-known-use record for hate as a noun','First Known Use, noun','12th century','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Sense- and category-specific source-reported horizon.'),
(230,1139,441,'Beowulf line 2319',NULL,'Electronic Beowulf critical edition report of hatode','Verse line 2319','hū se gūð-sceaða Gēata lēode hatode and hȳnde','established','lexical_corpus','Electronic Beowulf · British Library · University of Kentucky','Cotton MS Vitellius A XV, verse line 2319',NULL,0,'The current critical edition and line locator were reviewed through its public description and secondary concordance; the manuscript image itself was not directly inspected for this record.'),
(231,1139,441,'Beowulf line 2466',NULL,'Electronic Beowulf critical edition report of hatian','Verse line 2466','nō ðȳ ǣr hē þone hēaðorinc hatian ne meahte lāðum dǣdum','established','lexical_corpus','Electronic Beowulf · British Library · University of Kentucky','Cotton MS Vitellius A XV, verse line 2466',NULL,0,'The cited edition identifies the unique manuscript and verse line; without direct image inspection, this remains a source-reported lexical record.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(626,176,'hatred','English','a younger Middle English compound built from hate plus the dead condition suffix -rede',434),
(627,176,'hete','Old English','the inherited noun whose exact continuation into Middle English hate is disputed',436),
(628,176,'hatis','Gothic','a Germanic noun cognate meaning anger or enmity',436),
(629,176,'hatr','Old Norse','a Germanic noun cognate meaning hatred or spite',436),
(630,176,'Hass','German','a modern German continuation of Old High German haz',439),
(631,176,'hetzen','German','a related action word meaning hound or set dogs on, central to the pursuit hypothesis',439),
(632,176,'hettan','Old English','a related verb meaning persecute in the concrete-action comparison',439),
(633,176,'Hati','Old Norse proper name','the mythic pursuer whose name supports but does not prove the pursuit interpretation',439),
(634,176,'kêdos','Ancient Greek','a proposed comparison involving care, grief, mourning, and marriage connection',436),
(635,176,'cais','Middle Irish','a proposed comparison whose love-and-hatred field makes the semantic problem unusually visible',436);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(674,176,1,'Disputed Indo-European comparative horizon','*ḱeh₂d- and *ḱh₂d-es-','A formal comparison extends beyond Germanic, but neither one original meaning nor one point homeland is established.',NULL,NULL,'uncertain',-4500,-2500,'range','Conventional comparative horizon only.'),
(675,176,2,'Proto-Germanic linguistic horizon','*hatiz- and *hatōjan-','The reconstructed noun and derived weak verb are supported by attested Germanic comparanda.',NULL,NULL,'uncertain',-500,200,'range','Linguistic reconstruction, not an archaeological point.'),
(676,176,3,'Old English records','hete and hatian','English preserves a feeling noun and an action verb; Beowulf places the verb beside hostile deeds and injury.',NULL,NULL,'broad',450,1150,'range','The period contains multiple records; no one token is promoted as the first.'),
(677,176,4,'Middle English records','hate and haten','The noun and verb converge formally. Major dictionaries disagree on whether the noun directly continues hete or was remodeled from haten.',NULL,NULL,'broad',1150,1500,'range','Gradual lexical convergence, not one event.'),
(678,176,5,'Global English','hate as feeling, action, object, modifier, and weakened aversion','The word spans intense enmity, strong dislike, public compounds, and milder reluctance while retaining one spelling for noun and verb.',NULL,NULL,'global',1500,NULL,'open','The modern interval is conventional and semantically nonuniform.'),
(679,176,6,'Knowledge boundary','beyond secure Germanic reconstruction','The graph keeps grief, care, mourning, love, pursuit, persecution, and hate as visible proposals and problems rather than one origin.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the knowledge boundary.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(674,436,'Noun etymology and semantic-transparency note','supports','Publishes the qualified formal comparison.'),
(674,439,'Non-Germanic comparison discussion','challenges','Questions whether all proposed cognates belong together.'),
(675,436,'Noun and verb etymologies: *hatiz- and *hatōjan-','supports','Publishes the reconstructed Germanic formations.'),
(675,439,'Germanic cognate and action-word discussion','context','Adds the comparative action vocabulary.'),
(676,441,'Electronic Beowulf description and verse lines 2319, 2466','supports','Identifies the critical edition, unique manuscript basis, and cited verse locations.'),
(676,443,'Glossary entry hatian','context','Publishes the two occurrences and enemy or injury glosses.'),
(677,436,'Noun and verb etymologies','supports','Documents Middle English convergence and remodeled-noun proposal.'),
(677,437,'Noun and verb etymologies','challenges','Presents direct noun continuation alongside the inherited verb.'),
(677,442,'Result 1421, hāte n., forms and definition','context','Documents the Middle English noun’s hate, anger, wrath, and hostility field.'),
(678,436,'Modern noun and verb definitions','supports','Documents intense and weakened current uses.'),
(678,437,'Modern entries and idiom','context','Independently documents the category and semantic range.'),
(679,439,'Conclusion and unresolved alternatives','supports','Supports the explicit endpoint of secure reconstruction.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(355,176,'Did Middle English hate directly continue Old English hete?','Possibly, but the immediate route is disputed. American Heritage gives direct noun descent; Merriam-Webster says the noun was probably derived from haten and replaced hete.','proposed','Two major historical dictionaries publish different immediate analyses.','open',NULL),
(356,176,'Did hate originally mean pursuit or persecution?','The Germanic action evidence makes pursuit or persecution a serious proposal, not a settled origin. Beowulf, hettan, German hetzen, and Hati support the comparison, but the full deep family remains murky.','proposed','Liberman develops the hypothesis while explicitly refusing a final solution.','open',NULL),
(357,176,'Does hate securely descend from *ḱeh₂d-?','Only probably. The formal correspondence is widely published, but grief, care, mourning, love, and hatred do not form a transparent semantic chain, and some proposed cognates may not belong together.','probable','Merriam-Webster qualifies the proposal; Liberman challenges semantic and membership assumptions.','open',NULL),
(358,176,'Were English love and hate once the same word?','No reviewed evidence connects English love directly to English hate. Middle Irish cais has an ambivalent love-and-hatred field inside a disputed comparison, but that is not a genealogical edge between the English words.','established','Merriam-Webster and Liberman present the Celtic comparison with explicit semantic caution.','resolved','The graph keeps love in its *lewbʰ- family and hate in the Germanic *hatiz- family; their meeting remains contextual and disputed.'),
(359,176,'Has hate always meant extreme enmity?','No. The current verb also covers strong dislike, distaste, and polite reluctance, while older English evidence includes hostile treatment and persecution. One gloss cannot be projected across every period and construction.','established','The modern dictionaries distinguish present senses; the historical sources preserve action-centered meanings.','resolved','Separate semantic claims on the edges and form notes preserve the range.'),
(360,176,'Is hatred the older or more original word?','No. Hate is inherited from Old English noun and verb material; hatred is a Middle English formation first reported in the 13th century. Its suffix names a condition rather than linguistic originality.','established','Merriam-Webster dates and analyzes both words; Traugott documents hatred as an X-RÆDEN relic.','resolved','The rabbit hole connects the two dossiers while keeping their distinct formation histories.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(355,436,'Noun etymology: probably derivative of haten, replacing hete','supports','States the remodeled-noun position.'),
(355,437,'Noun etymology: from Old English hete','challenges','States the direct-continuation position.'),
(356,439,'Old English hatian, Hati, hetzen, hettan, and pursuit conclusion','supports','Develops the pursuit or persecution hypothesis and its limits.'),
(356,443,'Glossary entry hatian','context','Documents hostile action and injury in Beowulf.'),
(357,436,'Noun etymology and semantic note','supports','Publishes the PIE proposal with an explicit qualification.'),
(357,439,'Non-Germanic comparison and conclusion','challenges','Questions semantic unity and candidate membership.'),
(358,436,'Noun etymology: Middle Irish cais “love, hatred”','context','Documents the ambivalent Celtic comparison.'),
(358,439,'Discussion of love, hatred, and semantic skeleton keys','supports','Warns against a direct English love–hate origin claim.'),
(359,436,'Modern noun and verb definitions','supports','Documents current intensity, aversion, and reluctance senses.'),
(359,443,'Glossary entry hatian','context','Documents older enemy-action and injury senses.'),
(360,436,'Hate first-known-use and etymology sections','supports','Places inherited hate before the younger compound.'),
(360,434,'Hatred etymology and 13th-century first known use','supports','Documents the younger Middle English formation.'),
(360,433,'pp. 96–97: hatred as an X-RÆDEN relic','context','Places hatred inside a declining construction.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(176,176,2087,'hate','Hate was enemy-directed action as well as feeling in Old English.','Old English hatian could mean treating as an enemy, persecuting, or injuring; Beowulf puts the verb beside hostile deeds. The deeper claim that pursuit was the first meaning remains open, and the graph says so.','A',100,'The Old English action range is directly supported by located textual scholarship. The more dramatic pursuit hypothesis is retained as an open dispute rather than smuggled into the headline as fact.');
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
(176,443,'Glossary entry hatian, Beowulf lines 2320 and 2467 in the edition','supports','Documents hate as enemy action or injury in the two poetic contexts.'),
(176,441,'Electronic Beowulf edition description and verse lines 2319, 2466','context','Anchors the cited forms to the current critical edition and unique-manuscript tradition.'),
(176,437,'Verb etymology: Old English hatian','supports','Establishes the inherited English verb.'),
(176,439,'Pursuit and persecution discussion plus qualified conclusion','context','Supports the action-centered interpretation while preserving the open deeper claim.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(132,176,175,'HATRED IS THE YOUNGER WORD','Hate inherits Old English noun and verb material. Hatred appears later as a Middle English compound with a dying condition suffix. The longer word is not the more original one.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1136 AND 1144
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1137,1142,1143) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1136 AND 1144;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 961 AND 968;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 961 AND 968;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 961 AND 968;
