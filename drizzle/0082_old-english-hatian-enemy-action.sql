-- Promote Old English hatian as the action branch of the hate family. The
-- dossier keeps it separate from the quantity-marked homograph hátian "become
-- hot," preserves variation in the reconstructed Germanic verb, and reuses
-- the exact canonical *hatōjan- -> *hatiz- -> qualified PIE route.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(178,'hatian','hatian','hatian','/ˈhɑ.ti.ɑn/','Old English weak verb','An attested Old English verb for hating whose objects include persons, enemies, vices, and deeds. It continues a reconstructed Germanic weak verb commonly represented as *hatōjan-, but published reconstructions vary, its relationship to the noun base is derivational rather than direct word-to-word descent, and the proposed deeper Indo-European route remains semantically opaque.','Old English hate was grammatically directed at conduct as well as people: rulers hate their subjects’ vices, and Gregory’s Pastoral Care distinguishes loving what enemies are from hating what they do.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(446,'bosworth-toller-hatian-lrc','HATIAN — An Anglo-Saxon Dictionary, Dictionary H','Joseph Bosworth · Thomas Northcote Toller · Jonathan Slocum',1898,'Linguistics Research Center, University of Texas at Austin','https://lrc.la.utexas.edu/books/asd/dict-H',NULL,'historical_dictionary'),
(447,'orel-germanic-etymology-hate','A Handbook of Germanic Etymology — *xataz, *xatjanan, and *xatōjanan','Vladimir Orel',2003,'Brill','https://an.univie.ac.at/vba2/vba2020.pdf',NULL,'etymological_dictionary'),
(448,'sweet-pastoral-care-353','King Alfred’s West-Saxon Version of Gregory’s Pastoral Care, page 353','Henry Sweet, editor and translator',1871,'Early English Text Society','https://upload.wikimedia.org/wikipedia/commons/8/82/King_Alfred%27s_West-Saxon_version_of_Gregory%27s_Pastoral_care.pdf',NULL,'digitized_scholarly_edition');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1150,178,3,1,'hatian','hatian','hate-pursue-verb','hatian','/ˈhɑ.ti.ɑn/','attested','Old English',450,1150,'to hate; direct hostility toward a person, enemy, vice, deed, or other object','Bosworth–Toller documents persons, enemies, vices, and deeds as grammatical objects. Clark Hall independently glosses the verb as hate or treat as an enemy. This short-a verb remains distinct from hátian, “become or get hot.”'),
(1151,178,5,2,'*hatōjan-','hatojan','hate-verb-formation','*hatōjan-',NULL,'reconstructed','Proto-Germanic',-500,200,'a reconstructed weak verb meaning hate or treat with enmity','Merriam-Webster prints *hatōjan-. Orel gives a wider reconstructed alternation, *xatēnan ~ *xatōjanan; the dossier keeps that notation disagreement public.'),
(1152,178,5,3,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','The verb is analyzed as derived from the Germanic noun base represented elsewhere in the family by Old English hete and Gothic hatis.'),
(1153,178,6,4,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but expressly qualified; the meanings do not yield one transparent historical sequence.'),
(1154,178,6,5,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','Pursuit and persecution remain a competing semantic hypothesis rather than a recovered first meaning.'),
(1155,178,7,6,'UNKNOWN','unknown','hatian-deep-boundary',NULL,NULL,'boundary','before the disputed Indo-European comparison',NULL,NULL,'No securely accepted ancestor or uniquely recoverable original meaning is known beyond the Germanic hate family.','The trail stops without turning grief, care, love, pursuit, persecution, or hate into one certain prehistoric definition.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(973,178,1150,1151,'inheritance','Old English hatian continues the reconstructed Germanic weak verb *hatōjan-, with the inherited stem and reduced inflection.','The Germanic hostile-disposition verb continues in Old English; pursuit or persecution may preserve a more concrete action sense.','Merriam-Webster Editors · Anatoly Liberman','established','The formal inheritance is secure; the semantic priority of pursuit is proposed.','Proto-Germanic reconstruction into attested Old English.','reviewed'),
(974,178,1151,1152,'derivation','The Germanic weak verb *hatōjan- is derived from the base of the hate noun *hatiz-.','A noun for hate or enmity supplies the related verb to hate or treat as an enemy.','Merriam-Webster Editors','established','Merriam-Webster explicitly derives the verb formation from the noun base.','Related Proto-Germanic reconstructed formations.','reviewed'),
(975,178,1152,1153,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(976,178,1153,1154,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(977,178,1154,1155,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail ends before the Old English verb’s objects are reverse-engineered into one unevidenced prehistoric action or feeling.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends at Germanic; the displayed PIE route remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(973,436,'Verb etymology: Middle English haten, Old English hatian, Germanic *hatōjan-','supports','Publishes the reconstructed inheritance.'),
(973,446,'HATIAN entry, grammar and examples','supports','Documents the Old English weak verb and its attested syntactic range.'),
(973,447,'p. 203, *xatēnan ~ *xatōjanan','context','Supplies the Germanic verb reconstruction and cognate set while preserving notation variation.'),
(974,436,'Verb etymology: derivative from the base of *hatiz-','supports','Directly connects the reconstructed verb formation to the Germanic noun base.'),
(974,447,'p. 203, *xataz and *xatēnan ~ *xatōjanan','context','Places the noun and weak verb formations together in the Germanic family.'),
(975,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal proposal while flagging semantic opacity.'),
(975,439,'Discussion of proposed non-Germanic cognates','challenges','Warns that the deeper semantic and membership claims remain unsettled.'),
(976,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(977,436,'Etymology note: semantic relations are far from transparent','supports','Defines the limit of the deep comparison.'),
(977,439,'Qualified conclusion on pursuit and the deeper comparison','supports','Supports an explicit endpoint rather than an invented first meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(235,1150,446,'Old English West Saxon Gospel record',NULL,'John 7:7 occurrence reported by Bosworth–Toller','Jn. Bos. 7, 7','Ne mæg middaneard eów hatian ac hé hataþ mé','established','lexical_corpus','Bosworth–Toller citation index · West Saxon Gospels',NULL,NULL,0,'A located dictionary report with a textual locator, not a directly inspected manuscript token or earliest-use claim.'),
(236,1150,446,'Old English Pastoral Care record',NULL,'Pastoral Care occurrence reported by Bosworth–Toller','Past. 18; Swt. 137, 4','Hie hatigaþ hiera hiéramonna unþeáwas','established','lexical_corpus','Bosworth–Toller citation index · Gregory’s Pastoral Care',NULL,NULL,0,'The edited occurrence is source-reported. It establishes vices as the object in this passage, not a universal definition.'),
(237,1150,448,'Old English Pastoral Care record',NULL,'Sweet’s edited Pastoral Care distinction','p. 353, lines 5–8','Swa mon ðonne sceal fulfremedlice Godes fiend hatigean, ðætte mon lufige ðæt ðæt hie beoð, & hatige ðæt ðæt hie doð','established','lexical_corpus','Early English Text Society digitization · Hatton and Cotton textual tradition',NULL,NULL,0,'The located scholarly edition distinguishes loving what enemies are from hating what they do. The underlying manuscript image was not directly inspected for this record.'),
(238,1150,441,'Beowulf line 2466',NULL,'Electronic Beowulf critical-edition report of hatian','Verse line 2466','nō ðȳ ǣr hē þone hēaðorinc hatian ne meahte lāðum dǣdum','established','lexical_corpus','Electronic Beowulf · British Library · University of Kentucky','Cotton MS Vitellius A XV, verse line 2466',NULL,0,'The critical-edition locator anchors the occurrence; the manuscript image itself remains uninspected for this record.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(647,178,'hate','English','the modern noun and verb whose immediate noun history remains forked',436),
(648,178,'hete','Old English','the related inherited noun beside the action verb',446),
(649,178,'hatigend','Old English','an agent noun meaning one who hates or an enemy',446),
(650,178,'hatung','Old English','an action noun meaning hating, hate, or hatred',446),
(651,178,'hátian','Old English','a quantity-marked homograph meaning become or get hot, not a hate-family ancestor',446),
(652,178,'hatan / hatjan','Gothic','Germanic cognate verbs meaning hate',447),
(653,178,'hata','Old Norse','a Germanic cognate verb meaning hate',447),
(654,178,'hatia','Old Frisian','a Germanic cognate verb meaning hate',447),
(655,178,'hazzōn','Old High German','a Germanic cognate verb meaning hate',447),
(656,178,'hassen','German','the modern German verb in the same inherited family',446),
(657,178,'hettan','Old English','a related hate-family verb meaning persecute or attack in the action comparison',439);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(684,178,1,'Proto-Germanic linguistic horizon','*hatēnan ~ *hatōjanan','Published notation varies, but the comparative Germanic verb family is supported by Gothic, Old English, Old Frisian, Old Saxon, Old Norse, and Old High German forms.',NULL,NULL,'uncertain',-500,200,'range','A conventional comparative-linguistic interval, not an archaeological point.'),
(685,178,2,'Old English textual traditions','hatian directed at persons, enemies, vices, and deeds','Gospel, Pastoral Care, poetic, legal, and other edited records preserve the verb across different objects and contexts.',NULL,NULL,'broad',450,1150,'range','A language-period range; none of the located records is promoted as the first token.'),
(686,178,3,'Middle English lexical transition','hatian to haten and hate','The inherited verb continues into Middle English while the noun may have been remodeled from it or may directly continue hete.',NULL,NULL,'broad',1150,1500,'range','The transition and noun remodeling dispute are gradual rather than one dated event.'),
(687,178,4,'Knowledge boundary','beyond secure Germanic reconstruction','The qualified PIE comparison remains visible, but no single grief, care, pursuit, love, or hate origin is promoted.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(684,447,'p. 203, *xatēnan ~ *xatōjanan and cognates','supports','Publishes the Germanic reconstruction and comparative verb set.'),
(684,436,'Verb etymology: Germanic *hatōjan-','context','Supplies a second reconstruction notation.'),
(685,446,'HATIAN entry, full example list','supports','Documents persons, vices, enemies, and deeds in located textual records.'),
(685,445,'Lines 1044–1047, hatian','context','Independently records hate and treat-as-enemy senses.'),
(686,436,'Noun and verb etymologies','supports','Documents the inherited verb and probable noun remodeling.'),
(686,437,'Noun and verb etymologies','challenges','Preserves the competing direct noun continuation from hete.'),
(687,436,'Semantic-transparency note','supports','Marks the deeper comparison as semantically opaque.'),
(687,439,'Qualified conclusion and comparison discussion','supports','Supports stopping beyond the secure Germanic family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(366,178,'Is the Germanic parent exactly *hatōjan-?','The inherited weak verb is secure, but scholarly notation varies. Merriam-Webster prints *hatōjan-; Orel prints *xatēnan ~ *xatōjanan and includes a second related *xatjanan formation.','probable','Two etymological sources agree on the family while differing in reconstruction detail.','open',NULL),
(367,178,'Did hatian mean only an inward feeling?','No. Its grammatical objects include the world or people, a righteous person, subjects’ vices, former enemies, divine enemies, robbers, plunderers, and hostile deeds.','established','Bosworth–Toller supplies located textual examples; Clark Hall independently includes treating as an enemy.','resolved','The dossier records object and context variation without replacing every occurrence with one modern psychological gloss.'),
(368,178,'Are hatian “hate” and hátian “become hot” one word?','No. Bosworth–Toller lists separate headwords with different vowel quantity, meanings, examples, and Germanic comparisons. Modern typography that drops macrons can hide the distinction.','established','The historical dictionary explicitly separates the entries.','resolved','The quantity-marked homograph is a cited relative, never an ancestor or duplicate sense of the hate verb.'),
(369,178,'Was pursuit the original meaning of hatian?','Possibly relevant, not established. Beowulf, hettan, German hetzen, and the action contexts motivate a pursuit or persecution proposal, but the deeper semantic comparison remains unresolved.','proposed','Liberman develops the action hypothesis while refusing a final solution.','open',NULL),
(370,178,'Does the John 7:7 record establish the first use of hatian?','No. It is one edited occurrence among many textual traditions. Without a complete witness comparison and direct manuscript inspection, it cannot be promoted as the earliest surviving token.','established','Bosworth–Toller lists gospel, psalm, prose, legal, and poetic records rather than one privileged first occurrence.','resolved','The attestation is labeled source-reported and makes no earliest-use claim.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(366,436,'Verb etymology: Germanic *hatōjan-','supports','Publishes one reconstruction.'),
(366,447,'p. 203, *xatjanan and *xatēnan ~ *xatōjanan','challenges','Publishes a more differentiated reconstruction set.'),
(367,446,'HATIAN entry, examples','supports','Documents the range of grammatical objects and contexts.'),
(367,445,'Line 1045, hatian','context','Independently records hate and treat-as-enemy senses.'),
(367,448,'p. 353, lines 5–8','supports','Prints the distinction between loving what enemies are and hating what they do.'),
(368,446,'HATIAN and HÁTIAN entries','supports','Separates the short-vowel hate verb from the long-vowel heat verb.'),
(369,439,'Old English hatian, Hati, hetzen, hettan, and pursuit conclusion','supports','Develops the action-centered proposal and states its limits.'),
(369,443,'Glossary entry hatian','context','Documents enemy action and injury in the Beowulf passages.'),
(370,446,'HATIAN entry, multiple textual examples','supports','Shows that the gospel occurrence is one item in a broad edited record.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(178,178,2089,'hatian','Old English hated vices and deeds as well as people.','Bosworth–Toller’s Pastoral Care examples make conduct grammatical: rulers hate their subjects’ vices, and the text distinguishes loving what enemies are from hating what they do. The historical verb therefore records directed moral and hostile judgment, not only an inward emotion label.','A',100,'The reveal is grounded in located edited examples. It does not claim that every occurrence meant moral judgment or that pursuit was the original meaning.');
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
(178,446,'HATIAN entry, Past. 18; Swt. 137, 4','supports','Documents subjects’ vices as the object of the verb.'),
(178,448,'p. 353, lines 5–8','supports','Prints the distinction between loving what enemies are and hating what they do.'),
(178,445,'Line 1045, hatian','context','Independently identifies treating as an enemy within the verb’s range.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(134,178,176,'THE VERB MAY HAVE REMADE THE NOUN','Merriam-Webster says Middle English hate was probably rebuilt from haten, the continuation of hatian, and replaced inherited hete. American Heritage preserves a direct noun route. The graph shows both instead of making the fork disappear.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1150 AND 1155
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1153,1154) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1150 AND 1155;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 973 AND 977;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 973 AND 977;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 973 AND 977;
