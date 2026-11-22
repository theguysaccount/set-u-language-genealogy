-- Promote Old English fēogan from a cited relative into a complete dossier.
-- The route keeps the attested verb distinct from its lexicalized enemy noun,
-- preserves the source-level strong-versus-weak grammatical tension, and ends
-- after the qualified Indo-European comparison rather than inventing a root.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(187,'feogan','fēogan','feogan','/ˈfeːo.ɣɑn/','Old English verb','An Old English verb meaning hate or persecute, recorded as FEÓGAN, feógean, fiógan, contracted feón and fión, with participle feógende and a broad present-and-past paradigm. Bosworth–Toller supplies examples whose objects include crimes, evil ways, law, peace, a temple, friends, and people. The verb continues reconstructed Proto-Germanic *fi(j)ēn-. Its active-participial formation lexicalized prehistorically as the enemy noun behind Old English fēond and modern fiend, but the verb, participle, and noun are not one interchangeable category.','Old English had a native verb for hate whose fossilized one-who-hates formation survives as fiend. The verb and the enemy noun are family, not the same word.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(512,'bosworth-toller-feogan','Bosworth–Toller Anglo-Saxon Dictionary — FEÓGAN','Joseph Bosworth · Thomas Northcote Toller · Christ Sean · Ondřej Tichý',2014,'Faculty of Arts, Charles University','https://bosworthtoller.com/10320',NULL,'historical_dictionary'),
(513,'bosworth-toller-feon-hate','Bosworth–Toller Anglo-Saxon Dictionary — feón, to hate','Joseph Bosworth · Thomas Northcote Toller · Christ Sean · Ondřej Tichý',2014,'Faculty of Arts, Charles University','https://bosworthtoller.com/10363',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1202,187,3,1,'fēogan','feogan','hate-persecute-verb','fēogan','/ˈfeːo.ɣɑn/','attested','Old English written record',450,1150,'to hate or persecute','The headword normalizes Bosworth–Toller’s accented FEÓGAN. Feógean, fiógan, contracted feón and fión, participle feógende, and the cited finite forms belong to the same reviewed verb dossier rather than separate ancestral steps.'),
(1203,187,5,2,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a reconstructed verb meaning hate or be hostile toward','The form is comparative reconstruction, not a written Germanic infinitive. Gothic fijan and Old English fēogan are recorded branch continuants; exact prehistoric vocalism and stem shape remain analytical.'),
(1204,187,6,3,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base associated with harm, blame, suffering, or hate','The deeper comparison is proposed. It does not recover one written ancestral word or one uniquely original emotion.'),
(1205,187,7,4,'UNKNOWN','unknown','feogan-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before hate, harm, blame, persecution, hostility, or suffering is promoted as one certain prehistoric starting point.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1016,187,1202,1203,'inheritance','Old English fēogan and contracted feón continue the Germanic fi(j)- verb with West Germanic vocalic, consonantal, and inflectional development; the exact prehistoric sequence behind every recorded variant remains reconstructed.','The inherited Germanic hate or hostility verb remains a transitive verb meaning hate or persecute in Old English.','Joseph Bosworth · Thomas Northcote Toller · Guus Kroonen','probable','Old English forms and cross-Germanic comparison support inheritance; the exact intermediate phonetic history is not directly attested.','Proto-Germanic reconstruction into the Old English written record.','reviewed'),
(1017,187,1203,1204,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1018,187,1204,1205,'knowledge_boundary','No older form is promoted beyond the proposed *peh₁- comparison.','The trail ends before the Old English acts of hating or persecuting are reverse-engineered into one universal prehistoric concept.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1016,512,'Grammar, definition, examples, and Germanic comparison','supports','Publishes the Old English paradigm, hate-or-persecute range, and Old High German, Gothic, and Icelandic comparisons.'),
(1016,513,'Grammar and sense: feón, he feóþ, past feóde; to hate','supports','Documents the contracted variant and its finite forms under a linked entry.'),
(1016,491,'p. 140, *fi(j)ēn- and Germanic descendants','supports','Publishes the reconstructed Germanic verb and Old English branch comparison.'),
(1017,491,'p. 140, deeper etymological analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used here with reduced confidence.'),
(1018,491,'p. 140, deepest published comparison used in this dossier','supports','Supports stopping after the qualified PIE proposal rather than inventing an earlier node.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(341,1202,512,'Old English, source-reported',1000,'Resignation of the World, hating crimes','Exeter Book 98a; Thorpe 366, 16; Reb. 13','Uton we firene feógan','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the edited example “let us hate crimes.” The manuscript object was not directly inspected and the representative year is not a precise copying date.'),
(342,1202,512,'Old English, source-reported',1000,'Psalm, hands of haters','Ps. Th. 105, 10','He hí alýsde of feógendra folmum','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports an inflected participial form in a Psalm translation. This establishes a source-reported lexical occurrence, not direct manuscript inspection.'),
(343,1202,512,'Old English, source-reported',1000,'Psalm, hating unjust ways','Ps. Th. 118, 128; 138, 19','Ic unrihte wegas ealle feóge','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the first-person form with unjust ways as object. No claim is made that this is a first use.'),
(344,1202,512,'Old English, source-reported',1000,'Elene, animals and friends','Elene 360; Kemble 719','Ða wéregan neát nales feógaþ frýnd hiera','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports a plural present form in the proposition that brute animals do not hate their friends. The manuscript pixels were not inspected.'),
(345,1202,512,'Old English, source-reported',1000,'Psalm, people who hate without cause','Ps. Th. 68, 4; 73, 22','Ðe me earwunga ealle feógeaþ','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the plural variant feógeaþ. The record is an edited dictionary example, not a complete corpus count.'),
(346,1202,512,'Old English, source-reported',1000,'Psalm, hating workers of deceit','Ps. Th. 100, 3; 118, 113','Ic feóde fácnes wyrcend','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports a past-tense form. Its source location is preserved without claiming direct access to the historical object.'),
(347,1202,512,'Old English, source-reported',1000,'Juliana and Elene, hating the Lord’s law','Exeter Book 66a; Thorpe 243, 21; Juliana 14; Elene 356','Hí Dryhtnes ǽ feódon','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the plural past form and its law object. The entry aggregates two editorial references; neither manuscript was directly inspected here.'),
(348,1202,512,'Old English, source-reported',1000,'Psalm, those who hate peace','Ps. Spl. C. 119, 6','Ðe feódun sybbe','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the plural past variant feódun. The source report does not prove one standardized spelling.'),
(349,1202,512,'Old English, source-reported',1000,'Christ, hating God’s temple','Exeter Book 18a; Thorpe 44, 27; Christ 709','Hí Godes tempel feódan','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the plural past variant feódan. The date is representative and the manuscript object was not directly inspected.'),
(350,1202,512,'Old English, source-reported',1000,'Psalm, imperative to hate evil','Ps. Spl. C. 96, 10','Feógeaþ [fiógaþ MS. T.] yfel','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports both the edited form and manuscript-T variant. This supports variation inside the verb; it does not independently establish pronunciation or a separate lexeme.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(777,187,'feógean','Old English','an expanded infinitive variant inside the same verb paradigm',512),
(778,187,'fiógan','Old English','a vowel variant inside the same hate verb',512),
(779,187,'feón','Old English','a contracted infinitive variant given its own linked dictionary entry',513),
(780,187,'fión','Old English','a contracted vowel variant of the hate verb',512),
(781,187,'feógende','Old English','the productive present participle, distinct from the lexicalized enemy noun',512),
(782,187,'feógeþ','Old English','a third-person singular finite form',512),
(783,187,'feógaþ','Old English','a plural present form',512),
(784,187,'feóde','Old English','a singular past form',512),
(785,187,'feódon','Old English','a plural past form',512),
(786,187,'feóung','Old English','a linked deverbal noun recorded by Bosworth–Toller',512),
(787,187,'ge-feógan','Old English','a prefixed Old English hate verb recorded in the dictionary search family',512),
(788,187,'fijan','Gothic','the reviewed Gothic cognate continuing the reconstructed Germanic verb',491),
(789,187,'fian','Gothic','a Gothic orthographic variant or related lemma in the same verbal family',512),
(790,187,'fiēn','Old High German','a High German cognate in the dictionary comparison',512),
(791,187,'fjá','Old Icelandic','a North Germanic cognate meaning hate',512),
(792,187,'fēond','Old English','the lexicalized enemy agent noun formed from the Germanic verbal base, not an inflection of fēogan',509),
(793,187,'fiend','English','the modern descendant of the lexicalized enemy noun, not a continuation of fēogan as an ordinary verb',509),
(794,187,'fijands','Gothic','the reviewed Gothic lexicalized enemy noun beside productive participial uses',492),
(795,187,'Feind','German','a modern German descendant of the lexicalized enemy formation',509),
(796,187,'vijand','Dutch','a modern Dutch descendant of the lexicalized enemy formation',509);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(754,187,1,'Proto-Indo-European linguistic horizon','proposed *peh₁- comparison','A deeper harm, blame, suffering, or hate comparison is published, but its exact formation and semantic unity remain proposed.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional reconstruction interval, not a dated inscription or mappable speech community.'),
(755,187,2,'Proto-Germanic linguistic horizon','reconstructed *fi(j)ēn-','Germanic branches preserve related hate verbs, but the displayed form is comparative reconstruction.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval rather than an attested spelling date.'),
(756,187,3,'Old English-speaking England','fēogan, fiógan, feón, and fión','The dictionary paradigm and examples preserve a native hate-or-persecute verb across spelling, contraction, and inflectional variation.',NULL,NULL,'broad',450,1066,'range','A broad language-period bound, not a first-utterance date or one defensible coordinate.'),
(757,187,4,'Old English written record, witness locations unresolved','poetic and Psalm examples','Bosworth–Toller locates ten edited occurrences, but this dossier did not inspect their manuscript objects or reduce their copying histories to one route.',NULL,NULL,'broad',800,1100,'range','A conservative written-record interval; individual witnesses require object-level review before tighter dates or map points are justified.'),
(758,187,5,'Knowledge boundary','later verb continuation and deeper ancestry unresolved','The reviewed trail stops after the Old English verb record and qualified prehistory. The noun family’s later survival does not silently become a continued history of the verb.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(754,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route.'),
(755,491,'p. 140, reconstructed *fi(j)ēn- and descendants','supports','Publishes the comparative Germanic verb.'),
(755,492,'pp. 47–49, productive verb beside lexicalized enemy noun','context','Places the verb and agent-noun systems in their Germanic relationship.'),
(756,512,'Grammar, definition, examples, and etymology','supports','Documents the Old English variants, inflection, sense, and Germanic comparisons.'),
(756,513,'Grammar: contracted feón and finite forms','supports','Documents the contracted variant inside the hate-verb family.'),
(757,512,'Ten located Old English examples','supports','Supplies the edited lexical record while leaving manuscript inspection undone.'),
(758,491,'p. 140, deepest published comparison used here','supports','Supports stopping after the qualified reconstruction.'),
(758,509,'Fiend etymology and later development','context','Shows survival through the lexicalized noun branch without making that noun the continued verb.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(446,187,'Is fēogan a strong verb or a weak contracted verb?','Bosworth–Toller labels the full FEÓGAN entry strong, but labels linked contracted feón weak and contracted. The displayed past forms in -de also require grammatical explanation. The dossier preserves the source-level tension rather than silently harmonizing it.','probable','The two linked dictionary records use different class labels for the same hate-verb family.','open',NULL),
(447,187,'Are fēogan and feón separate hate verbs?','No secure split is modeled. Bosworth–Toller links feón directly as a similar entry and the full paradigm lists feón among fēogan’s contracted variants.','established','The grammar and cross-links place both infinitives in one lexical dossier.','resolved','Feón remains a variant relative rather than a second ancestry node.'),
(448,187,'Did fēogan mean only an inward emotion?','No. The dictionary glosses hate and persecute, while examples take people, crimes, evil, unjust ways, law, peace, and a temple as objects.','established','The definition and ten located examples document both affective and hostile-action contexts.','resolved','The dossier keeps the historical transitive range instead of substituting a single modern psychological gloss.'),
(449,187,'Is fēogan the direct historical parent of English fiend?','Not as a simple word-to-word descent. Fiend continues Old English fēond, the lexicalized Germanic one-who-hates formation; fēogan continues the related verb base.','established','OED and the Germanic analysis separate the recorded English noun line from the cognate verb line.','resolved','The graph joins them at reconstructed word formation and draws no fēogan-to-fiend borrowing edge.'),
(450,187,'Is feógende automatically the noun fēond?','No. Feógende is the productive Old English participle listed in the verb paradigm. Fēond is a lexicalized nd-agent noun inherited from the prehistoric formation.','probable','Bosworth–Toller supplies both categories, while Ayora Estevan places noun lexicalization before the recorded branches.','resolved','Morphological ancestry is preserved without erasing lexical category.'),
(451,187,'Is this hate verb the same word as feón meaning rejoice?','No. Bosworth–Toller records a separate homographic feón meaning rejoice, be glad, or exult. Shared spelling after contraction does not establish shared sense or ancestry.','established','Dictionary search results and linked entries distinguish the hate and rejoice verbs.','resolved','The rejoice homograph is excluded from the ancestry trail.'),
(452,187,'Was fēogan borrowed from Gothic fijan?','No borrowing is established. Bosworth–Toller presents Gothic, Old High German, and Old Icelandic comparisons, while Kroonen reconstructs their Germanic verbal ancestor.','probable','Comparative Germanic evidence supports collateral inheritance rather than a Gothic-to-English transfer.','resolved','The graph uses inheritance from *fi(j)ēn-, not borrowing from Gothic.'),
(453,187,'Is the deepest *peh₁- route established?','No. The Germanic verb comparison is firmer than the proposed Indo-European analysis, whose formal intermediates and semantic unity remain reconstructive.','proposed','Kroonen publishes the deeper route as analysis rather than direct attestation.','open',NULL),
(454,187,'Do feógean, fiógan, feón, and fión prove separate lexemes?','No. They are presented inside one paradigm or as linked contracted forms. Variation in vowel, spelling, and contraction is evidence about the verb, not a license to multiply headwords.','established','The FEÓGAN grammar lists the variants together and the feón entry links back to feógan.','resolved','The variants remain relatives attached to one canonical headword node.'),
(455,187,'Are the ten Bosworth–Toller examples the complete fēogan corpus?','No. They are the examples exposed by this dictionary entry, not a count of every surviving token, manuscript, lost text, or spoken use.','established','The source is a historical dictionary entry with an edited example list.','resolved','The dossier labels every occurrence source-reported and makes no corpus-total claim.'),
(456,187,'Does the fiógaþ manuscript variant establish exact Old English pronunciation?','No. A spelling variant supports textual variation but does not by itself fix one phonetic value across dialects, periods, and inflections.','established','Bosworth–Toller reports Feógeaþ with fiógaþ in manuscript T.','resolved','The form is preserved without converting orthography into false acoustic certainty.'),
(457,187,'When did fēogan cease to be an ordinary verb?','The reviewed evidence does not establish one last-use date or a complete Middle English continuation. The trail therefore stops at the Old English written record instead of inventing an extinction year.','speculative','The current sources establish Old English use and the noun family’s later survival, but not a final verb occurrence.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(446,512,'Headword label “strong” and full paradigm','supports','Publishes the strong label and forms including -de pasts.'),
(446,513,'Headword label “weak, contracted” and paradigm','challenges','Publishes a different class label for contracted feón.'),
(447,512,'Grammar variants and similar-entry link to feón','supports','Places feón inside the fēogan paradigm.'),
(447,513,'Linked entry feón, similar entry feógan','supports','Confirms the reciprocal dictionary relationship.'),
(448,512,'Definition and ten examples','supports','Documents hate, persecute, and the range of objects.'),
(449,509,'Etymology: fiend from the participial Germanic hate-verb base','supports','Publishes the direct noun line and its verbal formation.'),
(449,491,'p. 140, *fi(j)ēn- and *fi(j)and-','supports','Separates reconstructed verb and lexicalized agent noun.'),
(450,512,'Grammar: participle feógende','supports','Documents the productive Old English participle.'),
(450,492,'pp. 47–49, pre-Gothic lexicalization','supports','Documents the separate lexicalized enemy noun.'),
(451,513,'Entry feón, to hate','supports','Documents the hate homograph.'),
(451,512,'Linked-entry neighborhood and search distinction','context','Keeps the hate verb separate from the rejoice entry.'),
(452,512,'Etymology: Old High German, Gothic, and Icelandic comparisons','supports','Presents collateral Germanic forms.'),
(452,491,'p. 140, reconstructed Germanic verb','supports','Supplies the inherited comparative ancestor.'),
(453,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed route while leaving it reconstructive.'),
(454,512,'Grammar: FEÓGAN, feógean, fiógan, feón, fión','supports','Lists the forms inside one paradigm.'),
(454,513,'Similar entry feógan','supports','Links the contracted entry back to the full verb.'),
(455,512,'Displayed example list','supports','Defines the bounded dictionary evidence set.'),
(456,512,'Example Feógeaþ [fiógaþ MS. T.] yfel','supports','Documents orthographic variation without phonetic recording.'),
(457,512,'Old English grammar and examples','supports','Establishes the reviewed written period but not a final use.'),
(457,509,'Later survival of the lexicalized noun as fiend','context','Shows that noun-family survival is not evidence for continued ordinary use of the verb.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(187,187,2099,'fēogan','The verb disappeared from ordinary English; its prehistoric hater survived as fiend.','Old English fēogan meant hate or persecute and had a productive paradigm including feógende. The Germanic active-participial formation had already lexicalized as an enemy noun before the recorded branches. English therefore preserves the family most visibly not in its ordinary verb hate, but in fēond and modern fiend.','A',99,'The claim distinguishes the attested Old English verb, reconstructed Germanic base, lexicalized agent noun, and modern noun descendant. “Disappeared” describes the absence of a promoted later verb continuation in the reviewed evidence, not a precisely dated last utterance.');
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
(187,512,'Grammar, definition, examples, and etymology','supports','Publishes the Old English verb paradigm, hate-or-persecute sense, and Germanic comparisons.'),
(187,513,'Contracted feón entry','context','Documents the contracted form and its linked relationship to feógan.'),
(187,491,'p. 140, *fi(j)ēn- and *fi(j)and-','supports','Publishes the reconstructed verb and related enemy formation.'),
(187,492,'pp. 47–49, lexicalized enemy noun beside productive participles','supports','Places agent-noun lexicalization before the recorded branches.'),
(187,509,'Fiend etymology and later development','supports','Publishes the inherited English survival through fēond into fiend.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(143,187,186,'THE VERB FADED; ITS HATER BECAME THE FIEND','Old English fēogan was the living verb “hate, persecute.” Its Germanic participial formation lexicalized as “enemy,” producing fēond and eventually fiend. Follow the shared reconstructed verb and the modern supernatural noun resolves into a frozen agent of an ordinary human action.',99,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1202 AND 1205
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1203,1204) THEN 'proposed' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1202 AND 1205;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1016 AND 1018;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1016 AND 1018;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1016 AND 1018;
