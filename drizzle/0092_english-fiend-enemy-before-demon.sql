-- Promote modern English fiend from a graph-only descendant into a complete
-- dossier. The route reuses the reviewed English and Germanic ancestry edges,
-- keeps Middle English spelling history as evidence rather than a fabricated
-- extra parent, and separates the original enemy sense from later supernatural
-- and malevolent-person specializations.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(188,'fiend','fiend','fiend','/fiːnd/','English noun','An inherited English noun whose earliest recorded sense was enemy or foe, not demon. Old English fēond belonged to a Germanic lexicalized one-who-hates formation; Middle English fẹ̄nd preserved enemy, Satan, demon, possession, and monster senses across extensive spelling variation; modern fiend continues the same English line. OED’s revised 2026 entry marks the literal enemy sense obsolete after the medieval record, explains the Devil as the ultimate Enemy, and documents long-versus-short vowel competition before the long vowel became dominant by the eighteenth century. The Middle English Dictionary independently exposes 188 quotations across eight senses without claiming a complete corpus.','A fiend was an enemy before it was a demon. The Devil sense grew from the idea of an ultimate Enemy, while the word itself fossilizes a prehistoric one-who-hates formation.','reviewed');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1206,188,1,1,'fiend','fiend','enemy-evil-spirit-hostile-person','fiend','/fiːnd/','attested','Middle English to modern English',1100,2026,'an enemy, evil spirit, or cruel and wicked person','The canonical headword spans the inherited English continuation. Enemy or foe is historically primary but obsolete; Devil, demon, cruel-person, harmful-thing, and later figurative uses survive. The form does not imply one unchanged pronunciation or one unchanged semantic center across nine centuries.'),
(1207,188,3,2,'fēond','feond','enemy-foe-devil-agent-noun','fēond','/ˈfeː.ond/','attested','Old English written record',450,1150,'enemy, foe, Devil; strong masculine agent noun','OED records unmutated dialect forms, inherited i-mutated inflections, endingless plurals, and analogical remodeling inside one Old English noun. Fēond is the direct English ancestor, not a Gothic loan.'),
(1208,188,5,3,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a lexicalized enemy formation from an active present participle','Cross-Germanic enemy nouns place lexicalization before the individual recorded branches. The spelling is reconstructed and the exact prehistoric phonetics remain analytical.'),
(1209,188,5,4,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a reconstructed verb meaning hate or be hostile toward','The enemy noun is built on this reconstructed Germanic verb. Old English fēogan or fēon and Gothic fijan are collateral continuants of the verbal family, not later parents written inside fiend.'),
(1210,188,6,5,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base associated with harm, blame, suffering, or hate','The deeper comparison is proposed. It does not recover a written ancestral word, a uniquely original emotion, or a single transparent semantic bridge to enemy.'),
(1211,188,7,6,'UNKNOWN','unknown','fiend-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before hater, enemy, Devil, demon, adversary, harm, blame, suffering, or hostility is promoted as one certain prehistoric starting point.');
--> statement-breakpoint

-- Every shared relation below exactly matches its reviewed canonical edge.
-- That preserves one public claim for every reused pair instead of allowing
-- dossier-specific wording to masquerade as a second history.
INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1019,188,1206,1207,'inheritance','Old English long vowel and inflectional endings pass through Middle English fend, feend, and feond forms into modern fiend.','The inherited enemy and foe noun develops or foregrounds evil-spirit and cruel-person senses in the English branch.','Bosworth–Toller editors','established','The direct English continuation is documented; this edge does not assert that modern senses were absent from Old English.','Old English through Middle English into the modern language.','reviewed'),
(1020,188,1207,1208,'inheritance','Old English fēond continues the Germanic nd-agent formation with West Germanic vowel and inflectional development.','The lexicalized one-who-hates formation remains an enemy or foe noun and also supplies a devil sense in Old English.','Daniel Ayora Estevan · Bosworth–Toller editors','probable','Cross-Germanic comparison and the Old English entry support inheritance; exact intermediate phonetic detail remains reconstructed.','Proto-Germanic reconstruction into the Old English written record.','reviewed'),
(1021,188,1208,1209,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1022,188,1209,1210,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1023,188,1210,1211,'knowledge_boundary','No older form is promoted beyond the proposed *peh₁- comparison.','The trail ends before the Old English enemy, Devil, or demon history is reverse-engineered into one universal prehistoric concept.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1019,509,'Etymology summary, forms, later development, and meanings 1–5','supports','Publishes inherited Germanic ancestry, the Old-to-Middle-English form history, long-versus-short vowel competition, and the changing sense inventory.'),
(1019,510,'Entry fẹ̄nd: forms, Old English etymology, and eight senses','supports','Independently supplies the Middle English bridge, extensive variants, and the enemy-to-Devil-and-demon semantic network.'),
(1019,508,'Grammar, definition, and etymology from feónd through Middle English forms','supports','Supplies the Old English enemy, foe, and Devil noun behind the direct English continuation.'),
(1020,509,'Etymology summary and Old English notes','supports','Publishes inherited Germanic ancestry, Old English dialect forms, nd-agent inflection, and the participial source.'),
(1020,508,'Grammar and etymology from feónd through Germanic comparanda','supports','Supplies the Old English paradigm, hate-verb derivation, senses, and comparative forms.'),
(1020,492,'p. 47 note 24, Old English fēond among inherited Germanic enemy nouns','supports','Places Old English on the pre-Gothic lexicalized-agent branch.'),
(1021,509,'Etymology summary: noun use of the present participle of the hate verb','supports','Independently identifies the agent-noun formation and compares the parallel antonym friend.'),
(1021,492,'pp. 47–49, lexicalized enemy noun beside productive present participles','supports','Publishes the pre-branch lexicalization and living participial system.'),
(1021,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the reconstructed Germanic word-formation relationship.'),
(1022,491,'p. 140, deeper etymological analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used here with reduced confidence.'),
(1023,491,'p. 140, deepest published comparison used in this dossier','supports','Supports stopping after the qualified PIE proposal rather than inventing an earlier node.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(351,1206,509,'a1225, possibly composed in Old English',1225,'Friend-versus-foe contrast','Old English Homilies, 1st Series, p. 231','Ac þis ȝesceod he hadde isett bi-tweone frend and fend','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports this early enemy-or-foe occurrence and notes possible Old English composition. The manuscript object was not directly inspected, and the displayed year is a source-reported horizon rather than a precise copying date.'),
(352,1206,509,'1340',1340,'Enemy in feudal context','Ayenbite, p. 19','deþ in-to þe hond of his uyende','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports the south-eastern variant uyende under the obsolete enemy sense. The record is source-reported and the manuscript object was not directly inspected.'),
(353,1206,509,'circa 1330, possibly composed before 1300',1330,'Demon-like being','Guy of Warwick, Auchinleck manuscript, p. 430','He semes as it were a fende, Þat comen were out of helle','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports this Middle English demon comparison. The manuscript object was not directly inspected, and the representative year does not collapse composition and copying dates.'),
(354,1206,509,'circa 1405, composed circa 1390',1405,'The Devil’s snare','Chaucer, Man of Law’s Tale, line 571','Cristes myght That helpeth folk out of the feendes snare','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports the Devil sense in a Middle English witness. This is a source-reported quotation, not a directly inspected manuscript object.'),
(355,1206,509,'circa 1275, possibly composed before 1200',1275,'Malevolent creatures or monsters','Laȝamon, Brut, Caligula manuscript, line 907','Brutus & his gode folc under-ȝeten þeos feondes','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports this occurrence under the obsolete monster sense. The historical object was not directly inspected and the dating remains source-reported.'),
(356,1206,509,'1608',1608,'Foul Fiend as Devil','Shakespeare, King Lear, scene xiii, line 8','Beware the foule fiend','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports this early modern Devil use. The quoted edition record was not directly inspected in this dossier.'),
(357,1206,509,'1694',1694,'Fiend incarnate as a person','F. Bragge, Practical Discourses, p. 152','Revenge..makes a man a fiend incarnate','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports this malevolent-person use. It is a source-reported lexicographic occurrence, not a directly inspected primary object.'),
(358,1206,509,'2017',2017,'Modern plural evil spirits','T. M. Lakomy, The Shadow Crucible, p. 210','a host of hellish fiends','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports the modern plural under the demon sense. The source object was not directly inspected and no frequency claim is made.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(797,188,'fẹ̄nd','Middle English','the Middle English headword with 188 dictionary quotations across eight senses',510),
(798,188,'fend','Middle English / English','an inherited spelling recorded from late Old English into modern English',509),
(799,188,'feend','Middle English / early modern English','a long-vowel spelling in the inherited English record',509),
(800,188,'feond','Middle English','a continuation of the Old English spelling in the medieval record',509),
(801,188,'feynd','Middle English / early modern English','one of several medieval spellings preserving the inherited noun',509),
(802,188,'fynd','Old and Middle English','an i-mutated Old English form continued in later spelling records',509),
(803,188,'fiende','early modern English','an early modern variant of modern fiend',509),
(804,188,'fient','Scottish / Irish English','a continuing regional spelling in the historical forms record',509),
(805,188,'feint','English regional / Irish English','a regional spelling, not a separate etymon',509),
(806,188,'feen','Irish English','a nineteenth-century-and-later Irish English form',509),
(807,188,'fēond','Old English','the direct Old English ancestor meaning enemy, foe, and Devil',509),
(808,188,'fīond','Old English','a chiefly Northumbrian and Kentish dialect form of the same noun',509),
(809,188,'fīend','Old English','an inherited i-mutated inflectional form, with possible analogical remodeling in part of the record',509),
(810,188,'fȳnd','Old English','a late West Saxon i-mutated form and plural',509),
(811,188,'fiānd','Old Frisian','a West Germanic cognate from the inherited participial enemy formation',509),
(812,188,'fīunt','Old Dutch','a West Germanic cognate continued by Dutch vijand',509),
(813,188,'vijand','Dutch','the modern Dutch continuation of the collateral enemy noun',509),
(814,188,'fīond','Old Saxon','a West Germanic cognate preserving the enemy noun',509),
(815,188,'fīant','Old High German','a High German cognate continued by German Feind',509),
(816,188,'Feind','German','the modern German continuation of the collateral inherited enemy noun',509),
(817,188,'fjándi','Old Icelandic','a North Germanic cognate from the same participial formation',509),
(818,188,'fiende','Swedish','the modern Swedish continuation listed in OED’s cognate set',509),
(819,188,'fjende','Danish','the modern Danish continuation listed in OED’s cognate set',509),
(820,188,'fijands','Gothic','a collateral Germanic enemy noun, not the donor of English fiend',492),
(821,188,'fēogan','Old English','the related hate verb whose Germanic base underlies the lexicalized enemy formation',509),
(822,188,'friend','English','the antonym identified by OED as a similar agent-noun formation, not the same lexical root',509);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(759,188,1,'Proto-Indo-European linguistic horizon','proposed *peh₁- comparison','A deeper harm, blame, suffering, or hate comparison is published, but its exact formation and semantic unity remain proposed.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional reconstruction interval, not a dated inscription or mappable speech community.'),
(760,188,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and lexicalized *fi(j)and-','Germanic branches preserve both the hate verb and lexicalized present-participial enemy noun. The asterisked forms are comparative reconstructions.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval rather than an attested spelling date.'),
(761,188,3,'Old English-speaking England','fēond, fīond, fīend, and fȳnd','Dialect and inflection create multiple Old English vowels and plural patterns without creating separate enemy lexemes. Enemy, foe, and Devil uses coexist in the written record.',NULL,NULL,'broad',450,1066,'range','The political dates bound a broad Old English stage; they do not date the first utterance or every cited manuscript.'),
(762,188,4,'Middle English written record','fẹ̄nd, fend, feend, fiend, and extensive variation','The Middle English Dictionary records 188 quotations across eight senses; OED’s forms preserve inherited plurals and regional spellings while enemy, Devil, demon, possession, and monster uses overlap.',NULL,NULL,'broad',1100,1500,'range','A period-level written-record stage, not one place, pronunciation, or standardized form.'),
(763,188,5,'Early Modern English record','competing long and short vowels','OED reports both long- and short-vowel pronunciations alongside spelling variation before the long vowel becomes dominant.',NULL,NULL,'broad',1500,1700,'range','A documentary interval for pronunciation competition, not one universal sound-change date.'),
(764,188,6,'Eighteenth-century English record','long-vowel pronunciation becomes dominant','OED’s later-development note places the dominance of the long-vowel pronunciation by the eighteenth century.',NULL,NULL,'broad',1700,1799,'century','The source supports century-level dominance, not simultaneous adoption by every speaker.'),
(765,188,7,'Global English','modern fiend','The literal enemy or foe sense is obsolete, while Devil, demon, wicked-person, harmful-thing, and later figurative uses continue in global English.',NULL,NULL,'global',1800,2026,'range','A global language stage cannot honestly be reduced to one map pin.'),
(766,188,8,'Knowledge boundary','beyond the proposed Indo-European comparison','No single hater, enemy, Devil, adversary, harm, blame, suffering, or hostility origin is promoted beyond the qualified route.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(759,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route.'),
(760,492,'p. 47 and note 24, pre-Gothic lexicalization and Germanic parallels','supports','Argues that the enemy noun had lexicalized before the recorded branches.'),
(760,509,'Etymology summary and Germanic cognate set','supports','Independently identifies the participial Germanic formation inherited by English.'),
(761,509,'Old English etymology notes and meanings 1–4','supports','Documents dialect vowels, i-mutation, inherited inflection, analogical plurals, and the early sense range.'),
(761,508,'Grammar, definition, and Old English examples','context','Supplies the paradigm and broad lexical record behind modern fiend.'),
(762,510,'Entry fẹ̄nd, 188 quotations across eight senses','supports','Documents the Middle English forms and semantic range.'),
(762,509,'Historical forms and meanings 1–5','context','Links the medieval record to the direct English continuation.'),
(763,509,'Later development and historical forms','supports','Documents long-versus-short vowel competition in early modern English.'),
(764,509,'Later development: long vowel dominant by the eighteenth century','supports','Supplies the century-level pronunciation horizon.'),
(765,509,'Meaning and use, senses 1–5','supports','Separates obsolete enemy from continuing Devil, demon, person, harmful-thing, and figurative senses.'),
(766,491,'p. 140, deepest published comparison used in this dossier','supports','Supports stopping after the qualified reconstruction.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(458,188,'Did fiend originally mean demon?','No. OED records enemy or foe from Old English to 1450 and explains the Devil as a specific use of enemy as the ultimate adversary.','established','OED’s revised meaning history and the MED’s first sense preserve the literal enemy record.','resolved','The dossier begins with enemy and models Devil and demon as semantic specializations rather than original definitions.'),
(459,188,'Is English fiend descended from Gothic fijands?','No. English fiend continues Old English fēond; Gothic fijands is a collateral Germanic cousin. Both meet at reconstructed *fi(j)and-.','established','OED documents the English inheritance, while Ayora Estevan places Gothic and Old English on inherited Germanic branches.','resolved','No Gothic-to-English borrowing edge is drawn.'),
(460,188,'Was Middle English fẹ̄nd borrowed anew from another language?','No borrowing is established. OED and the Middle English Dictionary both derive the medieval forms from Old English fēond or fīond.','established','Two independent historical-dictionary records publish direct English continuity.','resolved','The graph keeps one inherited English branch through medieval spelling variation.'),
(461,188,'Does the spelling fiend preserve one unchanged pronunciation?','No. OED reports coexisting long and short vowels in Middle and early modern English and says the long vowel became dominant by the eighteenth century.','established','The revised later-development note explicitly documents pronunciation competition.','resolved','The dossier does not read modern spelling backward as a single nine-century sound value.'),
(462,188,'Are fiend and friend the same root with opposite meanings?','No. OED calls friend an antonym with a similar agent-noun formation. Similar morphology does not establish one lexical root.','established','The etymology compares parallel formations while keeping their verbal bases distinct.','resolved','Friend remains a morphological parallel, not a parent, child, or cognate.'),
(463,188,'Did the Devil sense immediately replace the enemy sense?','No. Enemy or foe remains recorded into the fifteenth century while Devil, demon, monster, and other senses coexist through the Middle English record.','established','OED dates and MED’s eight-sense inventory document semantic overlap rather than an instant switch.','resolved','The timeline models specialization and coexistence, not replacement at one moment.'),
(464,188,'Is Hebrew satan an ancestor node of English fiend?','No. OED invokes Hebrew śāṭān, adversary, to explain the conceptual and translation background of the Devil-as-Enemy use; it does not derive the English word from Hebrew.','established','OED’s sense note distinguishes the semantic bridge from the inherited Germanic etymology.','resolved','The graph records the Germanic ancestry and keeps Hebrew out of the lexical parent chain.'),
(465,188,'Did every early fīend- form arise from inherited i-mutation?','Not necessarily. OED notes that especially in early Mercian, some apparently mutated stems may instead have been re-formed after the present participle of fēon.','probable','The revised etymology preserves inherited inflection and analogical re-formation as alternatives in part of the record.','open',NULL),
(466,188,'Is the deepest *peh₁- route established?','No. The Germanic verb and lexicalized agent formation are firmer than the proposed Indo-European comparison, whose formal intermediates and semantic unity remain reconstructive.','proposed','Kroonen publishes the deeper route as analysis rather than direct attestation.','open',NULL),
(467,188,'Do 188 Middle English quotations equal the complete history of fiend?','No. They are the Middle English Dictionary’s current quotation set across eight senses, not every historical utterance, lost witness, or surviving token.','established','The MED exposes a bounded lexicographic evidence set.','resolved','The count is labeled as dictionary evidence rather than total historical frequency.'),
(468,188,'Can one coinage event be named for enemy becoming the Devil?','No unique event is established. OED explains a recurring ultimate-enemy use shaped by Latin hostis and the adversary meaning behind satan, but does not identify one inventor or first metaphorical moment.','speculative','The semantic bridge is documented more securely than any single origin event.','open',NULL),
(469,188,'Is enemy still the ordinary modern meaning of fiend?','No. OED marks the literal enemy or foe sense obsolete and dates that sense through 1450, while supernatural and hostile-person senses continue.','established','The revised sense chronology distinguishes obsolete and continuing uses.','resolved','The contrarian claim is historical, not a prescription for current usage.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(458,509,'Meaning 1 and meaning 2 sense note','supports','Publishes enemy or foe as the early sense and the Devil as the ultimate Enemy.'),
(458,510,'Senses 1–2 and Old English etymology','context','Independently preserves enemy beside the developed Satan sense in Middle English.'),
(459,509,'Etymology summary and later development','supports','Publishes the direct inherited English line.'),
(459,492,'p. 47 note 24, Gothic and Old English as Germanic parallels','supports','Places the two words on collateral branches.'),
(460,509,'Historical forms and inherited-Germanic etymology','supports','Connects Old English forms through Middle English into modern fiend.'),
(460,510,'Etymology: Old English fēond, fīond','supports','Independently states the immediate Old English source of the Middle English headword.'),
(461,509,'Later development: long and short vowels; eighteenth-century dominance','supports','Documents pronunciation competition and later dominance.'),
(462,509,'Etymology summary: friend shows a similar formation','supports','Establishes morphological analogy without shared lexical ancestry.'),
(463,509,'Meanings 1–5 and their date ranges','supports','Documents overlapping enemy, Devil, demon, person, and harmful-thing histories.'),
(463,510,'Eight Middle English senses','context','Shows simultaneous medieval expansion rather than one instantaneous replacement.'),
(464,509,'Meaning 2 note on ultimate enemy, Latin hostis, and Hebrew satan','supports','Publishes the semantic and translation bridge without changing the inherited etymology.'),
(465,509,'Old English note on possible re-formation after the present participle','supports','Preserves the alternative explanation for some mutated stems.'),
(466,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed route while leaving it reconstructive.'),
(466,492,'p. 47, firmer lexicalized Germanic formation','context','Supports the shallower relationship more securely.'),
(467,510,'Entry fẹ̄nd: 188 quotations in eight senses','supports','Defines the bounded MED evidence set.'),
(468,509,'Meaning 2 note on ultimate enemy and translation background','supports','Explains the semantic bridge but supplies no unique coinage event.'),
(469,509,'Meaning 1 marked obsolete, Old English–1450','supports','Documents that literal enemy is historical rather than the ordinary continuing sense.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(188,188,2100,'fiend','A fiend was an enemy before it was a demon.','OED’s revised history starts with enemy or foe and explains the Devil as the ultimate Enemy. The English noun continues Old English fēond, itself inherited from a Germanic lexicalized one-who-hates formation. Middle English then preserves enemy, Satan, demon, possession, and monster senses together before the literal enemy sense becomes obsolete.','A',100,'The reveal states documented semantic specialization and inheritance. It does not claim one coinage event, derive English from Hebrew or Gothic, turn every Old English token into a demon, or upgrade the deepest Indo-European proposal.');
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
(188,509,'Etymology summary; meanings 1–2 and revised sense note','supports','Publishes the inherited Germanic formation, literal enemy sense, and Devil-as-ultimate-enemy specialization.'),
(188,510,'Entry fẹ̄nd: etymology, forms, and eight senses','supports','Shows enemy, Satan, demon, possession, and monster senses across the Middle English record.'),
(188,508,'Grammar, definition, and Old English examples','supports','Independently documents the hate-verb formation and enemy, foe, and Devil range.'),
(188,492,'p. 47 and note 24, pre-Gothic lexicalization','supports','Places the one-who-hates to enemy lexicalization at the Germanic level.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(144,188,186,'THE DEMON WAS ONCE JUST THE ENEMY','Modern fiend descends from Old English fēond, a noun that meant enemy and foe as well as Devil. Follow the direct inherited edge and the supernatural creature resolves into the ultimate adversary—then into a prehistoric lexicalized one-who-hates.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1206 AND 1211
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1208,1209,1210) THEN 'proposed' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1206 THEN 'Canonicalized to the existing English descendant node and upgraded with a complete form, semantic, attestation, dispute, and journey dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1206 AND 1211;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1019 AND 1023;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1019 AND 1023;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1019 AND 1023;
