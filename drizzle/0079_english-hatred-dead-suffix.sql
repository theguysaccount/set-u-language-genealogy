-- Promote English hatred as a Middle English compound with two inherited
-- components and an explicitly disputed deep ancestry. The direct dossier
-- follows the noun branch hate / Old English hete through Germanic *hatiz-.
-- A graph-only alternative preserves the lexicographers' competing verb route
-- through haten / hatian / *hatōjan-. A second graph branch reuses the
-- reviewed -ræden condition lineage first exposed by kindred.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(175,'hatred','hatred','hatred','/ˈheɪtrɪd/','noun','A Middle English formation built from hate plus the fossilized native condition suffix -rede / -reden, with a secure Germanic hate family but a semantically difficult and explicitly disputed deeper Indo-European proposal.','Hatred is not an immemorial whole word and its -red is not an intensifier. Middle English built it from hate plus a dead suffix meaning a state or condition; beyond Germanic, the trail becomes genuinely uncertain.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(434,'mw-hatred','Hatred — definition, etymology, and first known use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hatred',NULL,'historical_dictionary'),
(435,'ahd-hatred','Hatred — definition and etymology','American Heritage Dictionary Editors',2022,'HarperCollins Publishers','https://ahdictionary.com/word/search.html?q=hatred',NULL,'historical_dictionary'),
(436,'mw-hate','Hate — definition, etymology, and first known use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hate',NULL,'historical_dictionary'),
(437,'ahd-hate','Hate — definition and etymology','American Heritage Dictionary Editors',2022,'HarperCollins Publishers','https://ahdictionary.com/word/search.html?q=+HATE',NULL,'historical_dictionary'),
(438,'liberman-2018-hatred-1','The shortest history of hatred: Part 1','Anatoly Liberman',2018,'Oxford University Press','https://blog.oup.com/2018/08/etymology-shortest-history-hatred-part-1/',NULL,'scholarly_essay'),
(439,'liberman-2018-hatred-2','The shortest history of hatred continued and partly concluded','Anatoly Liberman',2018,'Oxford University Press','https://blog.oup.com/2018/08/etymology-shortest-history-hatred-continued-concluded/',NULL,'scholarly_essay'),
(440,'mec-rolle-english-prose','English prose works of Richard Rolle: a selection','Carl Horstman, editor · Middle English Compendium Editors',1896,'University of Michigan Library','https://quod.lib.umich.edu/c/cme/rollewks/1%3A1?rgn=div1%3Bview%3Dfulltext',NULL,'digital_corpus');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1128,175,1,1,'hatred','hatred','intense-animosity-hostility','hatred','/ˈheɪtrɪd/','attested','13th century–today',1200,NULL,'intense animosity, hostility, extreme dislike, or hostile resentment','The current form continues a Middle English compound. Modern intensity belongs to the lexical meaning; the historical second component was a state or condition suffix, not an intensifier.'),
(1129,175,2,2,'hatrede / hatreden / hateredyn','hatrede-hatreden-hateredyn','hate-condition-compound','hatrede / hatreden / hateredyn',NULL,'attested','Middle English',1150,1500,'hatred; the state or condition of hate','Merriam-Webster prints hatrede; historical records also preserve fuller -reden and -redyn forms. The graph exposes both compound components rather than treating the modern spelling as a simplex.'),
(1130,175,2,3,'hate','hate','hate-noun-component','hate',NULL,'attested','Middle English',1150,1500,'hate, extreme anger, hostility, or the lexical base of hatrede','First component of the Middle English formation. Whether the noun directly continued Old English hete or was remade from the verb haten is preserved as a live lexicographic disagreement.'),
(1131,175,3,4,'hete','hete','hate-anger-hostility-noun','hete',NULL,'attested','Old English',450,1150,'hate, hatred, spite, envy, malice, hostility, or anger','The inherited Old English noun is the direct noun-side comparison. A separate graph branch preserves the competing derivation through the verb hatian.'),
(1132,175,5,5,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','Merriam-Webster reconstructs the Germanic i-stem and aligns Old English hete with Old Saxon heti, Old Norse hatr, and Gothic hatis.'),
(1133,175,6,6,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','Merriam-Webster calls this only a possible source of Germanic *hatiz-. The semantic relationship among the proposed cognates is explicitly far from transparent.'),
(1134,175,6,7,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','This is a comparative proposal, not a recovered original meaning. Liberman argues that pursuit and persecution may better illuminate the Germanic branch and leaves the wider comparison murky.'),
(1135,175,7,8,'UNKNOWN','unknown','hatred-deep-boundary',NULL,NULL,'boundary','before the disputed Indo-European proposal',NULL,NULL,'No securely accepted ancestor or original concrete meaning is currently known beyond the reviewed Germanic family.','The primary trail displays the proposed PIE analysis and then stops. It does not turn Greek care, Irish love, Germanic hate, pursuit, or grief into one falsely settled prehistoric story.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(954,175,1128,1129,'historical_continuation','Middle English hatrede / hatreden loses the final suffixal syllable while the reduced -red spelling and /rɪd/ pronunciation become fixed in modern English.','The medieval state or condition of hate continues as intense animosity, hostility, or extreme dislike; countable hatreds later names particular hostilities.','Merriam-Webster Editors · American Heritage Dictionary Editors · Anatoly Liberman','established','The sources agree on the Middle English whole-word stage and the fossilized second component.','Middle English into modern English; the evidence does not license one year for final-syllable loss.','reviewed'),
(955,175,1129,1130,'compound_component','The first element of Middle English hate-rede is hate. This component edge is morphological analysis, not a claim that the whole compound changed into the bare noun.','Hate supplies the emotion or hostility whose condition the compound names.','Merriam-Webster Editors · American Heritage Dictionary Editors','established','Both dictionaries directly segment the word as hate plus -rede.','A Middle English compound analysis.','reviewed'),
(956,175,1130,1131,'lexical_continuation','Middle English hate stands beside inherited hete, with a remodeled a-vowel form associated with the verb haten. The graph does not pretend the noun-side replacement was a single regular sound law.','Old English hate, hostility, and anger continue in Middle English, while the noun form is remodeled or replaced beside the inherited reflex.','Merriam-Webster Editors · American Heritage Dictionary Editors','probable','American Heritage presents the noun as from Old English hete; Merriam-Webster instead calls Middle English hate probably derivative of haten and replacing hete.','Old English into Middle English, with overlapping inherited and remodeled forms.','reviewed'),
(957,175,1131,1132,'inheritance','The Germanic i-stem *hatiz- yields Old English hete; the exact intermediate West Germanic paradigm is not independently promoted here.','The Germanic hate, anger, enmity, and spite field continues in the Old English noun.','Merriam-Webster Editors · Anatoly Liberman','established','Merriam-Webster directly aligns the i-stem with Old English hete; Liberman supplies the Germanic cognate set.','Proto-Germanic reconstruction into attested Old English.','reviewed'),
(958,175,1132,1133,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(959,175,1133,1134,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(960,175,1134,1135,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail ends before a convenient story about love and hate, pursuit, grief, or care is mistaken for established prehistory.','SET-U editorial boundary · Anatoly Liberman','boundary','The secure path reaches Germanic; the displayed PIE lane is a qualified proposal, not a settled endpoint.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(954,434,'Word History: Middle English hatrede and 13th-century first known use','supports','Documents the whole-word continuation and medieval horizon.'),
(954,435,'Bracketed etymology and modern definition','supports','Independently documents Middle English composition and present meaning.'),
(954,438,'Final paragraph: -red “condition” and hatred displacing Middle English hete','context','Explains the fossilized suffix and lexical competition.'),
(955,434,'Etymology: hate plus -rede','supports','Directly segments the first component.'),
(955,435,'Bracketed etymology: hate plus -rede','supports','Independently segments the first component.'),
(956,436,'Noun etymology: probably derivative of haten, replacing hete','supports','Publishes the remodeled-noun analysis and its qualification.'),
(956,437,'Etymology: noun from Old English hete','challenges','Presents the more direct noun-continuation analysis.'),
(957,436,'Noun etymology: Germanic *hatiz- and Old English hete','supports','Publishes the i-stem ancestry and comparison.'),
(957,439,'Germanic cognate paragraph: Old English hete, Old High German haz, Old Saxon heti, Old Icelandic hatr','context','Supplies the comparative Germanic family.'),
(958,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal proposal while flagging semantic opacity.'),
(958,439,'Discussion of proposed non-Germanic cognates and the murky semantic comparison','challenges','Warns that phonetic candidates need not all belong together.'),
(959,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(960,436,'Etymology note: semantic relations are far from transparent','supports','Defines why secure ancestry cannot simply be extended through the proposal.'),
(960,439,'Conclusion: pursuit looks promising, broader comparisons remain murky','supports','Supports an explicit knowledge boundary rather than a fabricated original meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(225,1128,434,'13th century',1250,'Merriam-Webster first-known-use record for hatred','First Known Use','13th century','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported written-use horizon. The sorting year is a midpoint convention, not an exact token date or first spoken use.'),
(226,1129,440,'Middle English text, edition page 65',NULL,'English prose works of Richard Rolle, selected edition','Page 65 in the Middle English Compendium transcription','speche ne hatreden of men','established','lexical_corpus','Middle English Compendium · University of Michigan Library',NULL,NULL,0,'The public corpus transcription was inspected, but the record remains source-reported because no manuscript leaf or facsimile was directly inspected.'),
(227,1129,440,'Middle English text, edition page 88',NULL,'English prose works of Richard Rolle, selected edition','Page 88 in the Middle English Compendium transcription','in scorn and hatrede','established','lexical_corpus','Middle English Compendium · University of Michigan Library',NULL,NULL,0,'A second corpus spelling. The underlying manuscript object remains to be linked in the witness audit.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(616,175,'hate','English','the first component; its noun history is itself disputed between direct continuation and remodeling from the verb',436),
(617,175,'kindred','English','the other principal modern relic of the dead -rede / -ræden condition construction',433),
(618,175,'hete','Old English','the inherited noun for hate, anger, spite, malice, and hostility',436),
(619,175,'hatian','Old English','the verb-side alternative behind Middle English haten and possibly the remodeled noun hate',437),
(620,175,'hatis','Gothic','a Germanic cognate meaning anger or enmity',436),
(621,175,'hatr','Old Norse','a Germanic cognate meaning hatred or spite',436),
(622,175,'Hass','German','a modern continuation of Old High German haz in the Germanic cognate family',439),
(623,175,'kêdos','Ancient Greek','a proposed but semantically troublesome comparison involving care, grief, mourning, and marriage connection',436),
(624,175,'cás','Old Welsh','a proposed Celtic comparison meaning bitterness or hatred',436),
(625,175,'cais','Middle Irish','a proposed comparison with the strikingly ambivalent field love and hatred',436);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(668,175,1,'Disputed Indo-European comparative horizon','*ḱeh₂d- and *ḱh₂d-es-','A formal comparison has been proposed across Germanic, Italic, Celtic, Greek, and Iranian material, but the semantic unity is expressly unclear and no point homeland is asserted.',NULL,NULL,'uncertain',-4500,-2500,'range','The interval is a conventional reconstruction horizon, not a date for one recoverable word or meaning.'),
(669,175,2,'Proto-Germanic linguistic horizon','*hatiz- and *hatōjan-','The secure comparative family contains a hate or enmity noun and a related verb formation, reconstructed from attested Germanic descendants.',NULL,NULL,'uncertain',-500,200,'range','The range is linguistic, not an archaeological location or first-use date.'),
(670,175,3,'Old English records','hete and hatian','English records preserve both noun and verb. The later noun hate can be analyzed as direct continuation with remodeling or as a derivative from the verb that replaced hete.',NULL,NULL,'broad',450,1150,'range','The Old English forms are attested; their later lexical convergence is not assigned to one event.'),
(671,175,4,'Middle English records','hate + -rede / -reden','English builds the whole word hatred during the period when the wider X-RÆDEN construction is losing productivity.',NULL,NULL,'broad',1150,1500,'range','Merriam-Webster reports a 13th-century horizon; the corpus supplies later spellings but not the first token.'),
(672,175,5,'Global English','hatred','The opaque compound survives after its second component ceases to function as a productive suffix; modern speakers generally parse neither its condition meaning nor its relation to kindred.',NULL,NULL,'global',1500,NULL,'open','The modern-language anchor is conventional and does not imply uniform semantics across every variety.'),
(673,175,6,'Knowledge boundary','beyond secure Germanic reconstruction','Competing stories—care, grief, love, pursuit, persecution, and hatred—remain visible as proposals and disputes rather than being fused into a false origin.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of current knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(668,436,'Noun etymology and semantic-transparency note','supports','Publishes the proposed formal comparison and its semantic problem.'),
(668,439,'Non-Germanic cognate discussion','challenges','Argues that some formal candidates may not belong in one family.'),
(669,436,'Noun and verb etymologies: *hatiz- and *hatōjan-','supports','Publishes the two related Germanic formations.'),
(669,439,'Germanic cognates and pursuit discussion','context','Documents the wider family and concrete-action hypothesis.'),
(670,436,'Noun and verb etymologies','supports','Documents Old English hete and hatian and the remodeled-noun analysis.'),
(670,437,'Bracketed etymologies for noun and verb','context','Independently documents both Old English forms while presenting direct noun ancestry.'),
(671,434,'Hatred etymology and first known use','supports','Documents Middle English composition and the 13th-century horizon.'),
(671,433,'pp. 96–97: X-RÆDEN schema, competition, and hatred as a relic','context','Places the word within the declining construction.'),
(671,440,'Pages 65 and 88','supports','Supplies directly inspected digital corpus spellings hatreden and hatrede.'),
(672,435,'Modern definition and bracketed etymology','supports','Documents current meaning and opaque historical composition.'),
(672,438,'Final paragraph: unproductive -red and competition with hate','context','Explains the relic status in modern English.'),
(673,439,'Conclusion and unresolved alternatives','supports','Supports a knowledge boundary beyond the secure Germanic family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(349,175,'Is the -red in hatred the color red?','No. Middle English -rede / -reden continues Old English -ræden, a suffixal or affixoid element denoting state, condition, or quality.','established','Merriam-Webster and American Heritage segment the compound; Traugott documents the wider X-RÆDEN construction.','resolved','The graph gives the second component its own cited lineage and never connects it to the color word.'),
(350,175,'Was hatred already a whole word in Old English?','No reviewed source gives an Old English whole-word ancestor. The word is documented as a Middle English formation from hate plus -rede, with a 13th-century first-known-use horizon.','established','Both historical dictionaries identify the Middle English compound; Merriam-Webster dates the first known use to the 13th century.','resolved','The direct route begins with Middle English hatrede / hatreden and decomposes there.'),
(351,175,'Did the noun hate directly continue Old English hete?','The inherited noun is part of the history, but the immediate path is disputed. American Heritage presents Middle English hate from Old English hete; Merriam-Webster says the Middle English noun was probably derived from haten and replaced hete.','proposed','Two major historical dictionaries preserve materially different immediate analyses.','open',NULL),
(352,175,'Does the Germanic hate family securely descend from *ḱeh₂d-?','Only probably. Merriam-Webster publishes the proposal but says the semantic relations among grief, mourning, care, and hatred are far from transparent; Liberman questions whether all proposed non-Germanic cognates belong together.','probable','The formal correspondence is plausible, but the semantic bridge and family membership remain contested.','open',NULL),
(353,175,'Did hate originally mean pursuit or persecution?','Possibly, but not securely. Liberman points to Old English hatian in a pursuit context, German hetzen, Old English hettan, and the pursuer Hati; he presents pursuit as the most promising concrete history while leaving the rest murky.','proposed','The action-based account improves the Germanic semantic story but is not a uniquely demonstrated PIE origin.','open',NULL),
(354,175,'Does -red historically make hate more intense?','No evidence reviewed identifies -red as an intensifier. It named a state or condition. Modern hatred can denote extreme animosity, but that lexical intensity is not the historical function of the suffix.','established','The historical dictionaries gloss -rede as state, condition, or quality; Traugott reconstructs a condition-related-to-X schema.','resolved','The semantic edge separates present intensity from historical word formation.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(349,434,'Etymology: -rede, state or quality, from Old English -ræden','supports','Directly identifies the non-color suffix.'),
(349,433,'pp. 96–97: X-RÆDEN condition schema','supports','Documents the productive construction behind the relic.'),
(350,434,'Etymology and First Known Use','supports','Identifies Middle English formation and the 13th-century horizon.'),
(350,435,'Bracketed etymology','supports','Independently identifies Middle English composition.'),
(351,436,'Noun etymology: probably derivative of haten, replacing hete','supports','States the remodeled-noun position.'),
(351,437,'Etymology: noun from Old English hete','challenges','States the direct-continuation position.'),
(352,436,'Noun etymology and explanatory note','supports','Publishes the PIE proposal while flagging semantic opacity.'),
(352,439,'Paragraphs on proposed Greek, Celtic, Iranian, and Italic comparisons','challenges','Questions whether all formal candidates belong together.'),
(353,439,'Old English, Hati, hetzen, hettan, pursuit, and persecution discussion','supports','Develops the concrete pursuit hypothesis and labels the remainder murky.'),
(353,436,'Noun etymology: generally accepted *ḱeh₂d- comparison','challenges','Preserves the alternative grief, pain, and hatred comparison.'),
(354,434,'Etymology: suffix denoting state or quality','supports','Defines the historical function without intensity.'),
(354,433,'pp. 96–97: condition-related-to-X schema','supports','Independently analyzes the constructional function.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(175,175,2086,'hatred','Hatred is medieval—and its -red means neither red nor “more.”','Middle English assembled hate with a dying native element for a state or condition. The compound is younger than its parts; below the secure Germanic hate family, even the celebrated PIE root remains a qualified and semantically difficult proposal.','A',100,'The whole-word history and suffix function are independently established. The leaderboard claim keeps the deeper uncertainty inside the reveal instead of marketing a disputed root as fact.');
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
(175,434,'Etymology and First Known Use','supports','Establishes Middle English composition, suffix function, and medieval horizon.'),
(175,435,'Bracketed etymology','supports','Independently confirms hate plus the condition suffix.'),
(175,433,'pp. 96–97: X-RÆDEN decline and relics','supports','Places hatred inside a dying construction rather than an analyzable modern suffix.'),
(175,436,'Noun etymology and semantic-transparency note','context','Supports the qualified deep-root boundary.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(13,175,1,'disputed_deep_semantic_comparison','LOVE AND HATE MEET ONLY INSIDE AN OPEN COMPARATIVE PROBLEM','Middle Irish cais has been compared with the proposed family behind Germanic hate while carrying a love-and-hatred semantic field. The formal comparison is discussable, but neither the Celtic membership nor one original opposite-spanning meaning is secure. This is a dispute bridge, not a genealogical edge between English love and hatred.','Merriam-Webster Editors · Anatoly Liberman','proposed','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(13,436,'Noun etymology: Middle Irish cais “love, hatred” and semantic note','supports','Documents the proposed comparison and its unusual semantic field while explicitly flagging opacity.'),
(13,439,'Discussion of Irish cais, opposing meanings, and the limits of semantic skeleton keys','challenges','Warns against turning the comparison into a settled love–hate origin story.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(130,175,174,'HATE AND KIN SHARE A DEAD SUFFIX','Hatred and kindred preserve the two best-known relics of X-RÆDEN, once a wider English construction for conditions, statuses, and relations. Their modern -red endings are historical cousins, not the color red.',100,'A','reviewed'),
(131,175,1,'THE LOVE–HATE CONNECTION IS A DISPUTE, NOT A FACT','A proposed Celtic comparison includes Middle Irish cais in a love-and-hatred field. The formal possibility is real enough to investigate, but the semantic family is too murky to turn into a settled claim that love and hate were once the same word.',98,'C','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1128 AND 1135
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1133,1134) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1128 AND 1135;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 954 AND 960;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 954 AND 960;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 954 AND 960;
--> statement-breakpoint

-- Middle English suffix stage and the competing verb-side history of hate.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:2:rede-reden:attested:sense:condition-state-suffix',2,'-rede / -reden','rede-reden','condition-state-suffix','-rede / -reden',NULL,'attested','Middle English',1150,1500,'a state, condition, quality, status, estimation, rule, or relation to X','Graph-only attested component. The wider suffix record includes hatrede and kinrede and preserves fuller -reden forms.','reviewed'),
('node:2:haten:attested:sense:hate-verb-alternative',2,'haten','haten','hate-verb-alternative','haten',NULL,'attested','Middle English',1150,1500,'to hate or treat with enmity','Graph-only alternative: Merriam-Webster considers the noun hate probably derived from this verb, while American Heritage gives a direct noun path from Old English hete.','reviewed'),
('node:3:hatian:attested:sense:hate-pursue-verb',3,'hatian','hatian','hate-pursue-verb','hatian',NULL,'attested','Old English',450,1150,'to hate, treat as an enemy, persecute, or in a cited context pursue','Graph-only verb ancestry. The pursuit gloss is a scholarly semantic argument, not a replacement for all attested hostile meanings.','reviewed'),
('node:5:hatojan:reconstructed:sense:hate-verb-formation',5,'*hatōjan-','hatojan','hate-verb-formation','*hatōjan-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with enmity','Graph-only reconstructed verb derived from the Germanic hate noun base.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:hatrede-hatreden-hateredyn:attested:sense:hate-condition-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:rede-reden:attested:sense:condition-state-suffix'),'compound_component','The second element of hate-rede is Middle English -rede / -reden; this is morphological decomposition, not whole-word sound change.','The condition or state suffix turns hate into the state or condition of hate.','Merriam-Webster Editors · American Heritage Dictionary Editors · Elizabeth Closs Traugott','established','The dictionaries directly segment the word and Traugott places it in the X-RÆDEN schema.','Middle English compound analysis.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:rede-reden:attested:sense:condition-state-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:raeden:attested:sense:condition-status-affixoid'),'inheritance','Middle English -rede / -reden reduces Old English -ræden, including loss and variation of the final weak syllable and regular orthographic simplification.','The older condition, status, estimation, or rule element survives as a narrowing and increasingly fossilized condition-forming suffix.','Middle English Dictionary Editors · Elizabeth Closs Traugott · Merriam-Webster Editors','established','The sources agree on the Old English ancestry and declining medieval productivity.','Old English into Middle English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:hate:attested:sense:hate-noun-component'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:haten:attested:sense:hate-verb-alternative'),'derivation','The noun hate is analyzed as a zero-derived or remodeled form based on Middle English haten; this edge represents Merriam-Webster’s probable analysis, not unanimous consensus.','The verbal act or disposition of hating supplies a remodeled noun for the emotion.','Merriam-Webster Editors','probable','American Heritage instead presents the noun as continuing Old English hete.','Middle English internal derivation or remodeling.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:haten:attested:sense:hate-verb-alternative'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:hatian:attested:sense:hate-pursue-verb'),'inheritance','Middle English haten continues Old English hatian with loss of the medial unstressed vowel and inherited infinitive reduction.','Treat as an enemy or persecute continues as hate; a pursuit sense is relevant to one deeper semantic hypothesis.','Merriam-Webster Editors · American Heritage Dictionary Editors · Anatoly Liberman','established','The verb ancestry is secure; the claim that pursuit is primary remains proposed.','Old English into Middle English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:hatian:attested:sense:hate-pursue-verb'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:hatojan:reconstructed:sense:hate-verb-formation'),'inheritance','Old English hatian continues the reconstructed Germanic weak verb *hatōjan-, with the inherited stem and reduced inflection.','The Germanic hostile-disposition verb continues in Old English; pursuit or persecution may preserve a more concrete action sense.','Merriam-Webster Editors · Anatoly Liberman','established','The formal inheritance is secure; the semantic priority of pursuit is proposed.','Proto-Germanic reconstruction into attested Old English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:hatojan:reconstructed:sense:hate-verb-formation'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:hatiz:reconstructed:sense:hate-anger-germanic-i-stem'),'derivation','The Germanic weak verb *hatōjan- is derived from the base of the hate noun *hatiz-.','A noun for hate or enmity supplies the related verb to hate or treat as an enemy.','Merriam-Webster Editors','established','Merriam-Webster explicitly derives the verb formation from the noun base.','Related Proto-Germanic reconstructed formations.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:hatrede-hatreden-hateredyn:attested:sense:hate-condition-compound' AND p.canonical_key='node:2:rede-reden:attested:sense:condition-state-suffix' AND e.relation_type='compound_component'),434,'Etymology: hate plus -rede','supports','Directly segments the second component and defines it as state or quality.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:hatrede-hatreden-hateredyn:attested:sense:hate-condition-compound' AND p.canonical_key='node:2:rede-reden:attested:sense:condition-state-suffix' AND e.relation_type='compound_component'),435,'Bracketed etymology: -rede, condition','supports','Independently identifies the component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:hatrede-hatreden-hateredyn:attested:sense:hate-condition-compound' AND p.canonical_key='node:2:rede-reden:attested:sense:condition-state-suffix' AND e.relation_type='compound_component'),433,'pp. 96–97: hatred as X-RÆDEN relic','context','Places the word inside the wider condition construction.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:rede-reden:attested:sense:condition-state-suffix' AND p.canonical_key='node:3:raeden:attested:sense:condition-status-affixoid' AND e.relation_type='inheritance'),432,'Etymology, forms, and definition 1','supports','Documents medieval suffix forms and Old English ancestry.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:rede-reden:attested:sense:condition-state-suffix' AND p.canonical_key='node:3:raeden:attested:sense:condition-status-affixoid' AND e.relation_type='inheritance'),433,'pp. 96–97: productivity loss and relic forms','supports','Documents decline across the medieval period.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:hate:attested:sense:hate-noun-component' AND p.canonical_key='node:2:haten:attested:sense:hate-verb-alternative' AND e.relation_type='derivation'),436,'Noun etymology: probably derivative of haten','supports','Publishes the alternative verb-side analysis.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:haten:attested:sense:hate-verb-alternative' AND p.canonical_key='node:3:hatian:attested:sense:hate-pursue-verb' AND e.relation_type='inheritance'),436,'Verb etymology: Middle English haten from Old English hatian','supports','Publishes the historical continuation.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:haten:attested:sense:hate-verb-alternative' AND p.canonical_key='node:3:hatian:attested:sense:hate-pursue-verb' AND e.relation_type='inheritance'),437,'Verb etymology','context','Independently documents the same stages.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:hatian:attested:sense:hate-pursue-verb' AND p.canonical_key='node:5:hatojan:reconstructed:sense:hate-verb-formation' AND e.relation_type='inheritance'),436,'Verb etymology: Germanic *hatōjan-','supports','Publishes the reconstructed formal path.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:hatian:attested:sense:hate-pursue-verb' AND p.canonical_key='node:5:hatojan:reconstructed:sense:hate-verb-formation' AND e.relation_type='inheritance'),439,'Old English pursuit and Germanic verb discussion','context','Supplies the proposed concrete semantic history.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:5:hatojan:reconstructed:sense:hate-verb-formation' AND p.canonical_key='node:5:hatiz:reconstructed:sense:hate-anger-germanic-i-stem' AND e.relation_type='derivation'),436,'Verb etymology: derivative from the base of *hatiz-','supports','Directly connects the reconstructed noun and verb formations.');
