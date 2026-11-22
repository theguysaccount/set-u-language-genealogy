-- Promote Old English fēond from a graph-only Germanic collateral into a
-- complete dossier. The reviewed route preserves the inherited lexicalized
-- agent noun, its irregular nd-stem inflection, the enemy-to-Devil semantic
-- specialization, and one directly inspected Beowulf manuscript witness.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(186,'feond','fēond','feond','/ˈfeː.ond/','Old English strong masculine nd-agent noun','An Old English enemy, foe, and Devil noun inherited from the Germanic lexicalized present-participial formation *fi(j)and-. OED’s revised 2026 entry treats fēond and fīond as dialectal Old English forms, documents i-mutated fīend and fȳnd inside the inherited nd-stem inflection, and traces the word through a highly variable Middle English record into modern fiend. Bosworth–Toller supplies the Old English paradigm and examples; the Middle English Dictionary independently reports 188 quotations across eight senses. Cotton MS Vitellius A XV folio 180v was directly inspected at Beowulf 2289, where feondes modifies fotlast, the foe’s footprint.','Fiend did not begin as the name of a demon. It was the inherited enemy noun—ultimately a lexicalized one-who-hates—and the Devil sense began as the ultimate Enemy.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(509,'oed-fiend-2026','Oxford English Dictionary — fiend, n., revised 2026','Oxford English Dictionary Editors',2026,'Oxford University Press','https://www.oed.com/dictionary/fiend_n',NULL,'historical_dictionary'),
(510,'med-fend','Middle English Dictionary — fẹ̄nd, n.','Middle English Dictionary Editors',2026,'University of Michigan','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED15580',NULL,'historical_dictionary'),
(511,'electronic-beowulf-180v','Cotton MS Vitellius A XV, folio 180v — Electronic Beowulf facsimile','British Library · Kevin Kiernan, editor',2026,'British Library · University of Kentucky College of Arts & Sciences','https://ebeowulf.uky.edu/eBeowulf/CD/o/x0/180v.htm#l2289',NULL,'digitized_primary_source');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1197,186,3,1,'fēond','feond','enemy-foe-devil-agent-noun','fēond','/ˈfeː.ond/','attested','Old English written record',450,1150,'enemy, foe, Devil; strong masculine agent noun','OED records dialectal fēond and fīond, inherited i-mutated inflections including fīend and fȳnd, endingless and re-formed plurals, and later analogical remodeling. The headword does not collapse those forms into separate lexemes.'),
(1198,186,5,2,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a lexicalized enemy formation from an active present participle','Cross-Germanic enemy nouns place lexicalization before the individual recorded branches. The spelling is reconstructed and the exact prehistoric phonetics remain analytical.'),
(1199,186,5,3,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a reconstructed verb meaning hate or be hostile toward','The enemy noun is built on this reconstructed Germanic verb. Old English fēogan or fēon and Gothic fijan are descendants or continuants of the verbal family, not parents written inside the Old English noun.'),
(1200,186,6,4,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base associated with harm, blame, suffering, or hate','The deeper comparison is proposed. It does not recover a written ancestral word, a uniquely original emotion, or a single transparent semantic bridge to enemy.'),
(1201,186,7,5,'UNKNOWN','unknown','feond-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before hater, enemy, Devil, adversary, harm, blame, suffering, or hostility is promoted as one certain prehistoric starting point.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1012,186,1197,1198,'inheritance','Old English fēond continues the Germanic nd-agent formation with West Germanic vowel and inflectional development.','The lexicalized one-who-hates formation remains an enemy or foe noun and also supplies a devil sense in Old English.','Daniel Ayora Estevan · Bosworth–Toller editors','probable','Cross-Germanic comparison and the Old English entry support inheritance; exact intermediate phonetic detail remains reconstructed.','Proto-Germanic reconstruction into the Old English written record.','reviewed'),
(1013,186,1198,1199,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1014,186,1199,1200,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1015,186,1200,1201,'knowledge_boundary','No older form is promoted beyond the proposed *peh₁- comparison.','The trail ends before the Old English enemy, Devil, or demon history is reverse-engineered into one universal prehistoric concept.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1012,509,'Etymology summary and Old English notes','supports','Publishes inherited Germanic ancestry, Old English dialect forms, the nd-agent inflection, and the participial source.'),
(1012,508,'Grammar and etymology from feónd through Germanic comparanda','supports','Supplies the Old English paradigm, hate-verb derivation, senses, and comparative forms.'),
(1012,492,'p. 47 note 24, Old English fēond among inherited Germanic enemy nouns','supports','Places Old English on the pre-Gothic lexicalized-agent branch.'),
(1013,509,'Etymology summary: noun use of the present participle of the hate verb','supports','Independently identifies the agent-noun formation and compares the parallel antonym friend.'),
(1013,492,'pp. 47–49, lexicalized enemy noun beside productive present participles','supports','Publishes the pre-branch lexicalization and living participial system.'),
(1013,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the reconstructed Germanic word-formation relationship.'),
(1014,491,'p. 140, deeper etymological analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used here with reduced confidence.'),
(1015,491,'p. 140, deepest published comparison used in this dossier','supports','Supports stopping after the qualified PIE proposal rather than inventing an earlier node.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(333,1197,511,'late 10th or early 11th century',1000,'Beowulf manuscript, foe’s footprint','Cotton MS Vitellius A XV, fol. 180v, manuscript line 15; Beowulf 2289','stearcheort onfand feondes fotlast','established','manuscript','British Library','Cotton MS Vitellius A XV, fol. 180v','https://ebeowulf.uky.edu/eBeowulf/CD/o/180v/180v.jpg',1,'The Electronic Beowulf folio image was directly inspected after using its line control to align Beowulf 2289 with folio 180v. The pixels visibly preserve feondes before fotlast. This establishes an inflected written form and local foe context; it does not establish the poem’s composition date, first use, complete Old English semantics, or deeper ancestry.'),
(334,1197,509,'early Old English, source-reported',900,'King Alfred’s Pastoral Care, Devil as Old Enemy','Pastoral Care xxxvi. 261','of ðæs ealdan feondes honda','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED cites this early Old English record for the Devil sense. The manuscript object was not directly inspected in this review and the representative year is not a precise copying date.'),
(335,1197,509,'Old English, source-reported',1000,'Beowulf line 101, enemy in hell','Beowulf 101','fyrene fremman, feond on helle','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED cites the Old English enemy or foe sense. The aligned Electronic Beowulf text was consulted, but the folio pixels for this separate occurrence were not directly inspected in this dossier.'),
(336,1197,509,'early Old English, source-reported',900,'Metres of Boethius, Nero as a wicked person','Metres of Boethius xv. 7','Hwæt, se feond swa ðeah his diorlingas duguðum stepte','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED uses Nero as an early example of the malevolent or cruel-person sense. The underlying damaged manuscript object was not directly inspected.'),
(337,1197,508,'Old English, source-reported',1000,'Soul’s enemy example','L. E. I. 3; Thorpe ii 404, 9','Seo ydelnes is ðære sawle feond','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the edited Old English example and its soul’s-enemy sense. No first-use or manuscript-object claim is made.'),
(338,1197,508,'Old English, source-reported',1000,'Dream of the Rood, human enemies','Rood 30; Krapp 33','Genamon me ðær strange feondas','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the plural human-enemies occurrence. Its date is representative and the manuscript image was not inspected here.'),
(339,1197,508,'Old English, source-reported',900,'Boethius, friends and foes contrast','Boethius 20; Fox 72, 21','ðine friend and ðine fynd','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the explicit friend-versus-foe contrast and the i-mutated plural form. The Cotton variant fiend is noted by the dictionary but no manuscript was directly inspected.'),
(340,1197,509,'Old English, source-reported',1000,'Guthlac A, fallen spirits','Guthlac A 421','No þær þa feondas gefeon þorfton','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED cites the plural for fallen angels or evil spirits. This remains a source-reported lexical witness rather than a directly inspected manuscript object.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(37,333,'2026-08-27','SET-U editorial review','visual_facsimile','feondes','stearcheort onfand feondes fotlast','Cotton MS Vitellius A XV, fol. 180v, manuscript line 15; Electronic Beowulf alignment at verse 2289','https://ebeowulf.uky.edu/eBeowulf/CD/o/180v/180v.jpg','Verifies the visible manuscript sequence feondes fotlast after Electronic Beowulf aligns verse 2289 to folio 180v. The object supports a genitive-singular enemy or foe reading in local context; it does not establish an earliest use, the poem’s composition date, the full semantic inventory, modern fiend’s later narrowing, or reconstructed ancestry.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(754,186,'fiend','English','the direct modern continuation; its original enemy sense is obsolete while Devil, demon, and cruel-person senses survive',509),
(755,186,'fẹ̄nd','Middle English','the Middle English headword with 188 dictionary quotations across eight senses',510),
(756,186,'friend','English','the antonym identified by OED as a similar Germanic agent-noun formation, not a descendant of fēond',509),
(757,186,'fīond','Old English','a chiefly Northumbrian and Kentish dialect form of the same noun',509),
(758,186,'fīend','Old English','an inherited i-mutated inflectional form, not a separate modern word',509),
(759,186,'fȳnd','Old English','a late West Saxon i-mutated form and plural',509),
(760,186,'fēondas','Old English','a re-formed strong-masculine plural found especially in Anglian and verse sources',509),
(761,186,'gefīend','Old English','a prefixed plural with the mutated stem',509),
(762,186,'eald-feónd','Old English','an Old English compound or phrase naming the Old Enemy',508),
(763,186,'þeód-feónd','Old English','a derived Old English enemy compound listed by Bosworth–Toller',508),
(764,186,'feónd-ǽt','Old English','a compound entry in the Bosworth–Toller word wheel',508),
(765,186,'feónd-gráp','Old English','a compound entry built on the enemy noun',508),
(766,186,'feóndlīc','Old English','an adjective derived from the enemy noun',508),
(767,186,'fiānd','Old Frisian','a West Germanic cognate from the inherited participial enemy formation',509),
(768,186,'fīunt','Old Dutch','a West Germanic cognate continued by Dutch vijand',509),
(769,186,'fīond','Old Saxon','a West Germanic cognate preserving the enemy noun',509),
(770,186,'fīant','Old High German','a High German cognate continued by German Feind',509),
(771,186,'Feind','German','the modern German continuation of the inherited enemy noun',509),
(772,186,'fjándi','Old Icelandic','a North Germanic cognate from the same participial formation',509),
(773,186,'fiende','Old Swedish','a North Germanic cognate in the comparative set',509),
(774,186,'fjende','Danish','the modern Danish continuation listed in OED’s cognate set',509),
(775,186,'fijands','Gothic','the reviewed Gothic cousin from the same lexicalized Proto-Germanic formation',492),
(776,186,'fēogan','Old English','the Old English hate verb whose present-participial base underlies the agent noun',509);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(746,186,1,'Proto-Indo-European linguistic horizon','proposed *peh₁- comparison','A deeper harm, blame, suffering, or hate comparison is published, but its exact formation and semantic unity remain proposed.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional reconstruction interval, not a dated inscription or mappable speech community.'),
(747,186,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and lexicalized *fi(j)and-','Germanic branches preserve both the hate verb and lexicalized present-participial enemy noun. The asterisked forms are comparative reconstructions.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval rather than an attested spelling date.'),
(748,186,3,'Old English-speaking England','fēond, fīond, fīend, and fȳnd','Dialect and inflection create multiple Old English vowels and plural patterns without creating separate enemy lexemes.',NULL,NULL,'broad',450,1066,'range','The political dates bound a broad Old English stage; they do not date the first utterance or every cited manuscript.'),
(749,186,4,'England, copying place unresolved','Cotton MS Vitellius A XV, folio 180v','The directly inspected Beowulf folio visibly preserves feondes fotlast. The reviewed sources identify the unique manuscript but do not reduce its copying place to one secure coordinate.',NULL,NULL,'broad',975,1025,'range','A conservative manuscript-production horizon; it is not the composition date of Beowulf or the birth date of fēond.'),
(750,186,5,'Middle English written record','fẹ̄nd and extensive spelling variation','The Middle English Dictionary records 188 quotations across enemy, Devil, demon, possession, monster, and related senses, while OED documents inherited and remodeled plurals.',NULL,NULL,'broad',1100,1500,'range','A period-level written-record stage, not one place or single standardized form.'),
(751,186,6,'Early Modern English record','fend, feend, feinde, and fiend','OED records competing long and short vowel pronunciations and extensive spelling variation before the long vowel becomes dominant by the eighteenth century.',NULL,NULL,'broad',1500,1700,'range','The interval summarizes documented form and pronunciation competition without asserting one universal transition date.'),
(752,186,7,'Global English','modern fiend','The literal enemy or foe sense is obsolete, while Devil, demon, wicked-person, harmful-thing, and later figurative uses continue in English.',NULL,NULL,'global',1700,2026,'range','A global language stage cannot honestly be reduced to one map pin.'),
(753,186,8,'Knowledge boundary','beyond the proposed Indo-European comparison','No single hater, enemy, Devil, adversary, harm, blame, suffering, or hostility origin is promoted beyond the qualified route.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(746,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route.'),
(747,492,'p. 47 and note 24, pre-Gothic lexicalization and Germanic parallels','supports','Argues that the enemy noun had lexicalized before the recorded branches.'),
(747,509,'Etymology summary and Germanic cognate set','supports','Independently identifies the participial Germanic formation.'),
(748,509,'Old English etymology notes and forms','supports','Documents dialect vowels, i-mutation, inherited inflection, and analogical plurals.'),
(748,508,'Grammar and Old English examples','context','Supplies the paradigm and broad lexical record.'),
(749,441,'Electronic Beowulf description and folio-line control','supports','Identifies the unique manuscript basis and aligns line 2289 to folio 180v.'),
(749,511,'Folio 180v, line containing feondes fotlast','supports','Supplies the directly inspected manuscript image.'),
(750,510,'Entry fẹ̄nd, 188 quotations in eight senses','supports','Documents the Middle English form and semantic range.'),
(750,509,'Forms and meaning history','context','Links inherited Old English plurals and extensive Middle English spelling variation.'),
(751,509,'Later development and historical forms','supports','Documents long-versus-short vowel competition and the eighteenth-century dominance of the long vowel.'),
(752,509,'Meaning and use, senses 1–6','supports','Separates obsolete enemy from continuing Devil, demon, person, and harmful-thing senses.'),
(753,491,'p. 140, deepest published comparison used here','supports','Supports stopping after the qualified reconstruction.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(434,186,'Did Old English fēond mean only the Devil?','No. Bosworth–Toller gives enemy, foe, and Devil, while OED separates literal enemy, the Devil, demons, and malevolent-person uses already present in Old English.','established','Two historical dictionaries and multiple located Old English examples preserve a polysemous noun.','resolved','The dossier keeps the senses distinct instead of retrojecting modern fiend onto every token.'),
(435,186,'Is English fiend descended from Gothic fijands?','No. English fiend continues Old English fēond; Gothic fijands is a collateral Germanic cousin. Both meet at the reconstructed *fi(j)and- formation.','established','OED and Bosworth–Toller document the direct English line, while Ayora Estevan documents the shared Germanic formation.','resolved','No Gothic-to-English borrowing edge is drawn.'),
(436,186,'Was fēond still just an ordinary Old English present participle?','No. OED classifies it as a strong masculine agent noun originally in the nd-class, and cross-Germanic evidence places lexicalization before Old English. Its participial origin remains historically visible without erasing noun status.','probable','OED morphology and Ayora Estevan’s Germanic analysis agree on a lexicalized agent noun.','resolved','The graph uses lexicalized_participle for historical formation and noun for the attested Old English category.'),
(437,186,'Do fēond, fīond, fīend, and fȳnd name separate words?','No. OED explains unmutated dialect forms and i-mutated inflectional forms inside one inherited paradigm, with later analogical remodeling.','established','The revised forms and etymology sections publish dialect, case, number, and analogical distributions.','resolved','The variants remain relatives and witnesses of one dossier rather than duplicate headwords.'),
(438,186,'Did fiend originally mean demon?','No. OED dates enemy or foe from Old English to 1450 and marks it obsolete; Devil was originally a specific use of enemy as the ultimate adversary.','established','OED’s meaning history explicitly orders enemy before or alongside the specialized Devil use.','resolved','The semantic route preserves specialization rather than replacing the early range with the modern one.'),
(439,186,'Why could enemy become the Devil?','OED explains the Devil as the original or ultimate enemy, early translating Latin hostis and ultimately reflecting the literal adversary sense of Hebrew satan. This is a semantic and translation history, not proof of one coinage event.','established','OED’s revised sense note supplies the adversary bridge and its evidentiary limit.','resolved','The site states the bridge without inventing a unique first metaphor-maker.'),
(440,186,'Did Old English fēond have one regular plural?','No. OED records endingless i-mutated and unmutated plurals, re-formed fēondas or fīondas, and occasional weak forms.','established','The revised Old English notes publish the competing inherited and remodeled patterns.','resolved','The dossier treats inflectional variation as evidence, not noise.'),
(441,186,'Are fiend and friend the same root with opposite meanings?','No. OED says friend is an antonym with a similar agent-noun formation. Similar morphology does not establish one lexical root or cognate pair.','established','The OED etymology explicitly compares the formations while keeping their bases distinct.','resolved','Friend is listed as a morphological parallel, not a parent, child, or cognate.'),
(442,186,'Is the deepest *peh₁- route established?','No. The Germanic verb and lexicalized agent formation are firmer than the proposed Indo-European comparison, whose formal intermediates and semantic unity remain reconstructive.','proposed','Kroonen publishes the deeper route with analytical reconstruction rather than direct attestation.','open',NULL),
(443,186,'Does Beowulf 2289 show a demon sense?','No. The directly inspected folio preserves feondes fotlast in a scene where the dragon finds the foe’s footprint. The pixels establish the form and local context, not the entire lexeme.','established','Electronic Beowulf aligns verse 2289 to Cotton MS Vitellius A XV folio 180v, whose image was directly inspected.','resolved','The witness record is limited to what the page visibly supports.'),
(444,186,'Do 188 Middle English quotations equal the complete history of fiend?','No. They are the Middle English Dictionary’s current quotation set across eight senses, not a count of every historical utterance or surviving token.','established','The MED publishes its bounded quotation and sense counts.','resolved','The count is labeled as dictionary evidence rather than language-wide frequency.'),
(445,186,'Did every early fīend- form arise from inherited i-mutation?','Not necessarily. OED notes that especially in early Mercian, some apparently mutated stems may instead have been re-formed after the present participle of fēon.','probable','The revised etymology preserves inherited inflection and analogical re-formation as alternatives in part of the record.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(434,508,'Definition and examples: enemy, foe, the Devil','supports','Documents the Old English sense range.'),
(434,509,'Meaning and use, senses 1–4','supports','Separates literal enemy, Satan, fallen spirits, and cruel-person uses.'),
(435,509,'Etymology summary and later development','supports','Publishes the direct inherited English line.'),
(435,492,'p. 47 note 24, Gothic and Old English as Germanic parallels','supports','Places the two words on collateral branches.'),
(436,509,'Old English notes: strong masculine nd-agent noun','supports','Publishes the attested noun class and participial origin.'),
(436,492,'p. 47, pre-Gothic lexicalization','supports','Places noun lexicalization before the recorded branch.'),
(437,509,'Old English notes and variant forms','supports','Explains dialectal, mutated, endingless, and remodeled forms.'),
(437,508,'Grammar: feónd, fiónd, fýnd, fiénd and inflection','context','Independently records the paradigm.'),
(438,509,'Sense 1, enemy or foe, obsolete; sense 2, the Devil','supports','Publishes the semantic ordering and survival difference.'),
(438,510,'Eight Middle English senses and forms','context','Shows the enlarged medieval Devil, demon, possession, and monster network.'),
(439,509,'Sense 2 note on ultimate enemy, Latin hostis, and Hebrew satan','supports','Publishes the adversary-based semantic bridge.'),
(440,509,'Old English inflection notes','supports','Documents inherited and remodeled plural systems.'),
(441,509,'Etymology summary: friend shows a similar formation','supports','Establishes morphological analogy without shared lexical ancestry.'),
(442,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed route while leaving it reconstructive.'),
(442,492,'p. 47, firmer lexicalized Germanic formation','context','Supports the shallower relationship more securely.'),
(443,511,'Folio 180v, visible feondes fotlast sequence','supports','Provides the directly inspected manuscript object.'),
(443,441,'Electronic Beowulf line control: verse 2289 to folio 180v','supports','Supplies the repeatable edition-to-object alignment.'),
(444,510,'Entry summary: 188 quotations in eight senses','supports','Defines the bounded MED evidence set.'),
(445,509,'Old English note on possible re-formation after the present participle','supports','Preserves the alternative explanation for some mutated stems.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(186,186,2098,'fēond','The Devil entered English as the Enemy—and the enemy was a fossilized hater.','OED’s revised history identifies fiend as an inherited Germanic noun made from the present participle of the hate verb. Old English fēond meant enemy and foe as well as Devil; OED explains Satan as the ultimate Enemy and marks the literal enemy sense obsolete after the medieval period. Cotton MS Vitellius A XV still visibly preserves feondes in a concrete foe’s-footprint scene at Beowulf 2289.','A',100,'The claim describes documented word formation and semantic specialization. It does not make every Old English token diabolical, reduce Hebrew satan to an English etymon, identify one coinage event, or upgrade the deepest Indo-European proposal.');
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
(186,509,'Etymology summary; senses 1–2 and revised sense note','supports','Publishes the participial Germanic formation, literal enemy sense, and Devil-as-ultimate-enemy specialization.'),
(186,508,'Grammar, definition, and Old English examples','supports','Independently documents the hate-verb formation and enemy, foe, and Devil range.'),
(186,492,'p. 47 and note 24, pre-Gothic lexicalization','supports','Places the one-who-hates to enemy lexicalization at the Germanic level.'),
(186,510,'Entry fẹ̄nd, 188 quotations across eight senses','context','Shows how extensively the medieval semantic network developed.'),
(186,511,'Cotton MS Vitellius A XV fol. 180v','supports','Provides the directly inspected feondes footprint witness.'),
(186,441,'Electronic Beowulf line 2289 and folio 180v alignment','supports','Makes the manuscript inspection repeatable.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(142,186,185,'THE FIEND AND THE ENEMY ARE COUSINS—NOT BORROWINGS','Old English fēond and Gothic fijands independently inherit the same lexicalized *fi(j)and- agent noun. Follow the two-edge family path and modern fiend stops looking like a Gothic loan: both recorded branches descend from the prehistoric one-who-hates formation.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1197 AND 1201
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1198,1199,1200) THEN 'proposed' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1197 THEN 'Canonicalized to the previously cited Old English enemy node and upgraded with a complete paradigm, semantic history, and directly inspected witness.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1197 AND 1201;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1012 AND 1015;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1012 AND 1015;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1012 AND 1015;
--> statement-breakpoint

-- Enrich the already reviewed direct English descendant edge. The route stays
-- compressed through Middle English forms, no false Gothic-to-English edge is
-- introduced.
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,509,'Etymology, forms, and later development','supports','Publishes direct inheritance from Old English through Middle English variation into modern fiend.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:1:fiend:attested:sense:enemy-evil-spirit-hostile-person' AND edge.relation_type='inheritance';
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT edge.id,510,'Entry fẹ̄nd, etymology OE fēond and recorded forms','supports','Independently supplies the Middle English bridge and its extensive spelling variation.'
FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id
WHERE child.canonical_key='node:1:fiend:attested:sense:enemy-evil-spirit-hostile-person' AND edge.relation_type='inheritance';
