-- Promote Old English frēond from the graph-derived candidate queue into a
-- complete source-language dossier. The word has inherited participial
-- ancestry, but the written record already treats it as an ordinary strong
-- masculine noun spanning companion, ally, relation, patron, and legal helper.

INSERT INTO entries (id,slug,headword,normalized_headword,pronunciation,part_of_speech,summary,contrarian_truth,editorial_status) VALUES
(214,'freond','frēond','freond','approx. /ˈfreːo̯nd/','Old English strong masculine nd-stem noun','Old English frēond is the directly attested source-language noun behind modern friend. OED analyzes it as an inherited strong masculine agent noun in -nd, ultimately a noun use of the present participle of the Germanic base behind free, and documents West Saxon frēond, Northumbrian and Kentish frīond, Kentish frīand, mutated frīend and frȳnd, endingless plurals, and re-formed frēondas. Bosworth–Toller prints freónd and friónd, explicitly links freónde loving to freón or freógan, and supplies examples for companion, ally, relation, friend of God, friend versus foe, and friends acting as arbitrators. OED independently preserves close companion, non-enemy, ally, and kinsman senses in Old English. Cotton MS Vitellius A XV folio 152r was directly inspected at Beowulf 1018, where the pixels visibly preserve freondum in Heorot innan wæs freondum afylled. The route reuses the reviewed *frijōnd-, *frī-, and proposed *prī- nodes and then stops. The displayed pronunciation is a normalized approximation, not a recorded voice.','Old English frēond was already more than a modern private friend: the inherited loving-agent noun could denote a companion, ally, relation, God’s friend, or people empowered to arbitrate. Historical formation did not freeze contextual meaning.','reviewed');
--> statement-breakpoint

INSERT INTO sources (id,citation_key,title,author,year,publisher,url,doi,source_type) VALUES
(624,'electronic-beowulf-152r','Cotton MS Vitellius A XV, folio 152r — Electronic Beowulf facsimile','British Library · Kevin Kiernan, editor',2026,'British Library · University of Kentucky College of Arts & Sciences','https://ebeowulf.uky.edu/eBeowulf/CD/o/x0/152r.htm#l1018',NULL,'digitized_primary_source');
--> statement-breakpoint

INSERT INTO forms (id,entry_id,language_id,step_order,form,normalized_form,sense_key,transliteration,pronunciation,status,date_label,date_start,date_end,gloss,notes) VALUES
(1362,214,3,1,'frēond','freond','loving-one-friend-old-english-nd-stem','frēond','approx. /ˈfreːo̯nd/','attested','Old English written record',450,1150,'friend, companion, ally, relation, well-wisher, patron, or favored person; a strong masculine nd-stem noun','OED documents frēond, frīond, frīand, frend, mutated inflections, endingless plurals, and analogically re-formed plurals. Bosworth–Toller prints freónd and friónd. Macron, acute accent, and IPA are editorial normalizations rather than one manuscript orthography or recorded pronunciation.'),
(1363,214,5,2,'*frijōnd-','frijond','loving-one-proto-germanic-present-participle','*frijōnd-',NULL,'reconstructed','normalized Proto-Germanic participial formation',-500,200,'a reconstructed present-participial formation, the loving or favorably disposed one','The exact spelling is reconstructive. OED supplies the cross-Germanic descendant set and participial analysis; no Proto-Germanic document preserves this normalized form.'),
(1364,214,5,3,'*frī-','fri','love-like-befriend-free-germanic-base','*frī-',NULL,'reconstructed','Germanic lexical base',-500,200,'to like, love, or be friendly to; also represented in the free verb family','American Heritage prints the Germanic root *frī-; OED describes *ī from earlier *ij and connects the base with free. The gloss is a comparative field, not one recoverable sentence.'),
(1365,214,6,4,'*prī-','pri','love-like-friend-proposed-indo-european-root','*prī-',NULL,'reconstructed','proposed Indo-European comparison',-4500,-2500,'a proposed Indo-European root compared with the Germanic friend and free family','American Heritage publishes this comparison. It is a reconstructed label, not a recorded proto-word, exact pronunciation, or uniquely recoverable social institution.'),
(1366,214,7,5,'UNKNOWN','unknown','freond-deep-boundary',NULL,NULL,'boundary','beyond the proposed *prī- comparison',NULL,NULL,'No securely reviewed older ancestor or uniquely recoverable original social meaning is currently known.','The trail ends before love, freedom, friendship, kinship, alliance, or social membership is declared the one universal prehistoric essence.');
--> statement-breakpoint

-- The first three claims exactly reuse the canonical claims already reviewed
-- for the same nodes in the English friend dossier. Canonical identity must
-- not fork merely because the Old English node gains its own dossier.
INSERT INTO relations (id,entry_id,child_form_id,parent_form_id,relation_type,sound_change,semantic_change,scholar,confidence,confidence_note,chronology_note,editorial_status) VALUES
(1149,214,1362,1363,'inheritance','OED derives the West Germanic stem vowel from *iu, produced by contraction of the base vowel *ī, earlier *ij, with the participial suffix vowel; Old English ēo and īo reflect branch and dialect development.','An inherited present-participial agent formation functions as the ordinary noun friend, relation, or favored person in Old English.','Oxford English Dictionary editors · American Heritage Dictionary editors','probable','The cross-Germanic set and participial morphology are published, but *frijōnd- is reconstructed and the exact prehistoric phonetic sequence was never written down.','Proto-Germanic reconstruction into Old English textual evidence.','reviewed'),
(1150,214,1363,1364,'participial_derivation','The agent noun is built with Germanic present-participial nd-morphology on the *frī- or earlier *frij- base. OED traces the later *iu diphthong to contraction with the suffixal vowel.','A productive loving or favorably disposed participant becomes a lexical noun for friend or relation. The derivation does not make every later friend literally a person performing a continuous act of loving.','Oxford English Dictionary editors · Bosworth · Toller · American Heritage Dictionary editors','probable','Three independent dictionary treatments identify the participial relation. The exact lexicalization date and every prehistoric inflection remain unrecoverable.','Germanic derivation before the daughter-language records.','reviewed'),
(1151,214,1364,1365,'comparative_derivation','American Heritage compares Germanic *frī- with Indo-European *prī-. The initial Germanic f corresponds to the older labial stop under the comparative analysis; the exact intermediate morphology is not promoted as attested.','The reconstructed like, love, or friendliness field is compared across Indo-European, but no one original institution of friendship or freedom is recovered.','American Heritage Dictionary editors','proposed','The source publishes the root cross-reference, while the accessible record does not establish one directly attested proto-form, sentence, or social structure.','Proposed Indo-European base to Germanic reconstruction.','reviewed'),
(1152,214,1365,1366,'knowledge_boundary','No older form is promoted beyond the proposed *prī- comparison.','The graph stops before the Old English social range is reverse-engineered into one universal prehistoric institution of love, freedom, friendship, kinship, or alliance.','SET-U editorial boundary · American Heritage Dictionary editors','boundary','The deepest displayed form is already reconstructed and proposed; no reviewed earlier node clears the evidence boundary.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO relation_sources (relation_id,source_id,locator,stance,evidence_note) VALUES
(1149,607,'Etymology Summary and Form history','supports','Publishes the West Germanic vowel history, Old English dialect forms, nd-stem inflection, and inherited participial formation.'),
(1149,609,'Grammar and etymology: freónd, friónd; freónde loving','supports','Supplies the attested Old English noun, paradigm, and explicit participial analysis.'),
(1149,611,'Etymology and Word History','context','Independently connects Old English frēond with the Germanic loving-agent formation.'),
(1150,607,'Etymology Summary; agent nouns in -nd','supports','Identifies noun use of the present participle and the inherited agent-noun class.'),
(1150,609,'Grammar: freónd, freónde loving, participle of freón','supports','Makes the Old English participial relation explicit.'),
(1150,610,'Headword freón: to free, love','supports','Supplies the attested Old English verb used in the historical analysis.'),
(1150,611,'Word History: originally one who loves; Germanic *frī-','supports','Independently explains the agent meaning and prints the Germanic base.'),
(1151,611,'Etymology: see prī- in the Appendix of Indo-European roots','supports','Publishes the Indo-European comparison with proposed confidence.'),
(1152,611,'Deepest displayed prī- cross-reference','supports','Supports stopping after the proposed comparison rather than inventing an earlier form.');
--> statement-breakpoint

INSERT INTO attestations (id,form_id,source_id,date_label,year,witness,locator,excerpt,confidence,witness_type,repository,shelfmark,facsimile_url,directly_inspected,editorial_note) VALUES
(531,1362,624,'late 10th or early 11th century',1000,'Beowulf manuscript, Heorot filled with friends','Cotton MS Vitellius A XV, fol. 152r; Electronic Beowulf alignment at verse 1018','Heorot innan wæs freondum afylled','established','manuscript','British Library','Cotton MS Vitellius A XV, fol. 152r','https://ebeowulf.uky.edu/eBeowulf/CD/o/152r/152r.jpg',1,'The Electronic Beowulf line control aligned verse 1018 to folio 152r, and the folio image was directly inspected. The pixels visibly preserve freondum between wæs and afylled. This establishes an inflected written form and local hall-company context; it does not establish the poem’s composition date, first use, every participant’s social relationship, or reconstructed ancestry.'),
(532,1362,609,'Old English, source-reported',NULL,'Elene, friend and foe antithesis','Elene 954; Elen. Kmbl. 1904; Exon. 43a','Se feónd and se freónd','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the edited antithetical phrase. No manuscript object was directly inspected for this record, and the pairing does not make the words cognates.'),
(533,1362,609,'Old English, source-reported',NULL,'Gospel translation, friend of publicans and sinners','Matthew 11:19; Luke 7:34','Mánfulra and synfulra freónd','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the Old English gloss against Latin amicus. The record supports a relational epithet, not one exhaustive definition of frēond.'),
(534,1362,609,'Old English, source-reported',NULL,'Anglo-Saxon Chronicle, friend of God','Chronicle 654 and 656; Erl. 29:12 and 32:28','He wæs Godes freónd','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller supplies the edited Chronicle occurrence. The underlying manuscript token was not inspected.'),
(535,1362,609,'Old English, source-reported',NULL,'Metres of Boethius, lord regards neither friend nor foe','Metres of Boethius 25:16; Fox 25:31','Se hláford ne scrífþ freónde ne feónde','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller reports the friend-versus-foe contrast. This remains a source-reported lexical witness.'),
(536,1362,609,'Old English law, source-reported',NULL,'Laws of Æthelberht, friends arbitrate','Laws of Æthelberht 65; Thorpe i.18:14','Ðǽr mótan freónd séman','established','lexical_corpus_record',NULL,NULL,NULL,0,'Bosworth–Toller glosses the friends as arbitrators. The citation demonstrates a social and legal role without proving that every frēond was a formal arbitrator.'),
(537,1362,607,'Old English, source-reported',NULL,'Rushworth Gospels, relatives rise against one another','Meaning A.3; Rushworth Gospels, Matthew 10:21','ariseþ suna wið freondum','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED files the Mercian reading under close relation or kinsman and contrasts the West Saxon Gospels reading magas. The manuscript object was not directly inspected.'),
(538,1362,607,'early Old English, source-reported',900,'Orosius translation, Hannibal as no friend of the Romans','Meaning A.2b; Orosius, History iv. viii. 99','þæt he næfre ne wurde Romana freond','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports the early Old English political-alliance context. The representative year is period-level and not an exact copying date.');
--> statement-breakpoint

INSERT INTO witness_inspections (id,attestation_id,inspection_date,inspector_role,method,observed_form,observed_context,exact_locator,artifact_url,claim_scope,editorial_status) VALUES
(46,531,'2026-08-28','SET-U editorial review','visual_facsimile','freondum','Heorot innan wæs freondum afylled','Cotton MS Vitellius A XV, fol. 152r; Electronic Beowulf line control aligned at verse 1018; visible manuscript line containing Heorot innan wæs freondum afylled','https://ebeowulf.uky.edu/eBeowulf/CD/o/152r/152r.jpg','Verifies the visible manuscript sequence freondum afylled on folio 152r after Electronic Beowulf aligns the passage to verse 1018. The object supports one dative-plural written form and local hall-company context; it does not establish an earliest use, poem-composition date, every referent’s exact relationship, the whole Old English semantic inventory, modern friendship norms, or reconstructed ancestry.','reviewed');
--> statement-breakpoint

INSERT INTO relatives (id,entry_id,form,language,relation,source_id) VALUES
(1181,214,'friend','English','the reviewed modern continuation through the Middle English spelling field',607),
(1182,214,'frẹ̄nd','Middle English','the reviewed intermediate headword with extensive spelling and sense variation',608),
(1183,214,'freón','Old English','the attested verb to free or love named behind freónd',610),
(1184,214,'freógan','Old English','the fuller verb form linked by Bosworth–Toller to freón and freónd',609),
(1185,214,'freónde','Old English','the loving present participle named in the historical grammatical analysis',609),
(1186,214,'frēondas','Old English','an analogically re-formed strong-masculine plural',607),
(1187,214,'frīend','Old English','an early West Saxon mutated dative singular and plural form',607),
(1188,214,'frȳnd','Old English','a late West Saxon mutated form and endingless plural',607),
(1189,214,'frīond','Old English','a chiefly Northumbrian and Kentish dialect form',607),
(1190,214,'frīand','Old English','a Kentish form showing unrounding of the diphthong’s second element',607),
(1191,214,'gefrīend','Old English','a collective predicative plural meaning on friendly terms',607),
(1192,214,'friūnd','Old Frisian','a West Germanic cognate in the inherited friend family',607),
(1193,214,'friund','Old Saxon','a West Germanic cognate meaning friend or relation',607),
(1194,214,'friunt','Old High German','a High German cognate continued by Freund',607),
(1195,214,'frijonds','Gothic','an East Germanic cognate preserving transparent participial morphology',607),
(1196,214,'frændi','Old Icelandic','a North Germanic cognate whose Scandinavian center is relation or kinsman',607),
(1197,214,'fiend','English','the antonym with parallel agent-noun morphology but a different hate root',607),
(1198,214,'wine','Old English','a separate Old English friend or protector word, not a cognate of frēond',607);
--> statement-breakpoint

INSERT INTO places (id,entry_id,step_order,place,date_label,note,latitude_e6,longitude_e6,geographic_confidence,date_start,date_end,temporal_precision,temporal_note) VALUES
(954,214,1,'Proposed Indo-European comparative horizon','*prī-','American Heritage places the shared Germanic friend and free family under a proposed Indo-European root. This is not a written token, recoverable institution, or single archaeological point.',NULL,NULL,'uncertain',-4500,-2500,'range','Conventional comparative bounds for a proposed reconstruction.'),
(955,214,2,'Proto-Germanic linguistic horizon','*frī-','The like, love, or friendly base is reconstructed from daughter-language evidence. No Proto-Germanic speaker, homeland point, or written occurrence is claimed.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval, not a directly dated word.'),
(956,214,3,'Germanic participial-formation horizon','*frijōnd-','The loving-agent formation predates the daughter-language records, but its exact lexicalization moment and full paradigm remain reconstructed.',NULL,NULL,'uncertain',-500,200,'range','The shared horizon does not imply an exact coinage date.'),
(957,214,4,'Old English textual record','frēond, frīond, frīand, frend, and inflected forms','OED and Bosworth–Toller document dialect, mutation, inflection, companion, ally, relation, patron, and friend-versus-foe evidence across Old English sources.',NULL,NULL,'broad',450,1150,'range','Conventional Old English bounds; individual witnesses remain separately qualified.'),
(958,214,5,'England, copying place unresolved','Cotton MS Vitellius A XV, folio 152r','The directly inspected Beowulf folio visibly preserves freondum at verse 1018. The manuscript locates textual survival, not the origin of the word or a single birthplace for its senses.',NULL,NULL,'broad',975,1025,'range','A conservative production horizon for the manuscript; it is not the poem’s composition date or the word’s first-use date.'),
(959,214,6,'Knowledge boundary','beyond the proposed *prī- comparison','The trail ends before love, freedom, friendship, kinship, alliance, or social membership is promoted as one recoverable prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO place_sources (place_id,source_id,locator,stance,evidence_note) VALUES
(954,611,'Etymology: see prī- in the Appendix of Indo-European roots','supports','Publishes the proposed deep comparison.'),
(955,611,'Word History: Germanic root *frī-','supports','Prints and glosses the reconstructed Germanic base.'),
(955,607,'Etymology and Form history: Germanic base of free; *ī from earlier *ij','context','Supplies the independent base-vowel analysis.'),
(956,607,'Etymology Summary and Form history','supports','Publishes the present-participial formation and suffixal contraction analysis.'),
(956,609,'Grammar: freónd, freónde loving','context','Supplies the Old English reflex and historical grammatical analysis.'),
(957,607,'Meanings A.1–A.3; Etymology and Form history','supports','Documents companion, ally, relation, dialect, and inflection in the Old English record.'),
(957,609,'Grammar, examples, and etymology','supports','Supplies the noun paradigm and a broad located Old English example set.'),
(958,441,'Electronic Beowulf fifth-edition description and line control','supports','Identifies the unique manuscript basis and aligns verse 1018 to folio 152r.'),
(958,624,'Folio 152r; visible freondum afylled sequence','supports','Provides the directly inspected primary-object image.'),
(959,611,'Deepest displayed prī- cross-reference','supports','Supports an explicit stopping point after the proposed root.');
--> statement-breakpoint

INSERT INTO disputes (id,entry_id,title,position,confidence,source_summary,status,resolution_note) VALUES
(850,214,'Was frēond historically a loving-agent formation?','Yes at the comparative word-formation level. OED identifies a noun use of the Germanic present participle, Bosworth–Toller calls freónde loving the participle of freón, and American Heritage independently gives one who loves.','established','Three dictionary traditions converge on the inherited participial analysis.','resolved','Historical morphology does not dictate one literal interpretation for every written noun token.'),
(851,214,'Was every Old English frēond token still a productive participle?','Not demonstrably. OED classifies the word as a strong masculine nd-agent noun, and Bosworth–Toller labels the headword a masculine noun even while preserving its participial history.','probable','Synchronic lexical category and diachronic formation are distinct.','open',NULL),
(852,214,'Did frēond literally mean one who loves in every context?','No. The formation motivates the inherited noun, but attested uses include companion, ally, relation, religious epithet, and legal arbitrator.','established','The dictionaries publish a contextual range that cannot be collapsed into one ongoing action.','resolved','The loving-agent reveal is presented as word formation, not an exhaustive token gloss.'),
(853,214,'Did Old English frēond mean only a close private companion?','No. OED separates close acquaintance, non-enemy or ally, and relation senses already in Old English; Bosworth–Toller adds patronal, religious, and arbitration contexts.','established','Independent sense and citation records show social breadth.','resolved','The dossier refuses to project one modern friendship norm backward.'),
(854,214,'Was the relation or kinsman sense absent from Old English?','No. OED cites the Rushworth Gospels and Laws of Cnut under close relation or kinsman. The sense later becomes regionally restricted in English but is attested in Old English.','established','The historical sense entry directly documents Old English kinship uses.','resolved','Scandinavian semantic specialization does not make the English kin sense imaginary.'),
(855,214,'Could frēond mean political ally or non-enemy?','Yes. OED cites the early Old English Orosius translation for Hannibal never becoming a friend of the Romans and separates ally from intimate-companion use.','established','The located early record directly supports an alliance reading.','resolved','Ally remains distinct from etymological ancestry.'),
(856,214,'Are frēond and fēond cognates because Old English pairs them?','No. OED calls fiend an antonym with a similar formation, while the reviewed graph traces the nouns to different love and hate bases. Bosworth–Toller’s pair is rhetorical evidence, not genealogy.','established','The formational parallel and distinct roots are independently documented.','resolved','A context link preserves the historical pair without a false ancestry edge.'),
(857,214,'Are frēond, frīond, and frīand separate ancestral words?','No separate lexemes are established here. OED treats them as dialectal reflexes: ēo chiefly West Saxon and Mercian, īo chiefly Northumbrian and Kentish, and īa Kentish unrounding.','established','The form history explicitly explains the vowel geography.','resolved','Dialect evidence remains visible without duplicating the headword.'),
(858,214,'Are frīend and frȳnd separate friend words?','No. OED explains them as inherited i-mutated inflectional forms, with some analogical re-formation possible elsewhere in the paradigm.','established','The nd-stem inflection supplies the morphological account.','resolved','Inflected forms remain evidence rather than fake lexeme dossiers.'),
(859,214,'Did Old English frēond have one regular plural?','No. OED records endingless mutated and unmutated plurals, re-formed frēondas or frīondas, and rare vowel-final analogical forms.','established','The published paradigm contains inherited and remodeled plural strategies.','resolved','Variation is a feature of the evidence, not noise to erase.'),
(860,214,'Can the exact pronunciation of frēond be heard or uniquely recovered?','No. The displayed IPA is a normalized scholarly approximation across written dialect evidence, not one recorded Old English voice.','probable','OED documents competing ēo, īo, īa, and late monophthongal spellings rather than audio.','open',NULL),
(861,214,'Is *frijōnd- an attested Proto-Germanic spelling?','No. It is a normalized reconstruction behind a published cross-Germanic cognate set.','established','No Proto-Germanic manuscript preserves the asterisked form.','resolved','The reconstruction remains visibly starred.'),
(862,214,'Does frēond securely descend from exactly *prī-?','The deep comparison is published by American Heritage but remains proposed and less secure than the Germanic participial formation.','proposed','No Proto-Indo-European token or complete intermediate record survives.','open',NULL),
(863,214,'Does folio 152r prove the earliest use of frēond?','No. The directly inspected object proves one inflected form in one manuscript witness. It is not a birth certificate for the lexeme or the poem.','established','The image, shelfmark, folio, and verse alignment are repeatable; the claim limit is explicit.','resolved','The witness is strong object evidence with deliberately narrow scope.'),
(864,214,'Does freondum at Beowulf 1018 identify every person as a modern intimate friend?','No. The local text says Heorot was filled with freondum, but the manuscript alone does not recover each referent’s exact social relationship or a modern intimacy category.','probable','The pixels establish form and immediate context, while semantic precision depends on edition and historical interpretation.','open',NULL),
(865,214,'Did frēond become polysemous only after Old English?','No. Companion, ally or non-enemy, relation, religious friend, and social-legal helper uses are already represented in the Old English citation record.','established','OED and Bosworth–Toller independently locate the range before Middle English.','resolved','Later English expands the word further, but it does not create all semantic breadth from nothing.');
--> statement-breakpoint

INSERT INTO dispute_sources (dispute_id,source_id,locator,stance,evidence_note) VALUES
(850,607,'Etymology Summary; noun use of the present participle','supports','Publishes the inherited participial analysis.'),(850,609,'Grammar: freónd, freónde loving, participle of freón','supports','Makes the Old English relation explicit.'),(850,611,'Word History: originally one who loves','context','Independently states the agent meaning.'),
(851,607,'Form history: strong masculine agent noun in -nd','supports','Publishes the noun class.'),(851,609,'Entry label noun masculine; participial etymology','supports','Separates the headword category from its historical formation.'),
(852,609,'Examples under A FRIEND','supports','Documents religious, legal, companion, and antonymic contexts.'),(852,607,'Meanings A.1–A.3','context','Separates companion, ally, and relation uses.'),
(853,607,'Meanings A.1–A.3, Old English quotations','supports','Publishes the early semantic breadth.'),(853,609,'Located Old English examples','context','Adds patronal, religious, and arbitration contexts.'),
(854,607,'Meaning A.3; Rushworth Gospels and Laws of Cnut','supports','Directly documents the Old English relation sense.'),
(855,607,'Meaning A.2b; Orosius iv.viii.99','supports','Supplies the early political-alliance witness.'),
(856,609,'Example: Se feónd and se freónd','supports','Documents the attested rhetorical pair.'),(856,607,'Etymology Summary: fiend shows a similar formation','supports','Establishes morphological parallel without cognacy.'),(856,508,'Bosworth–Toller feónd etymology','context','Keeps the enemy noun on its distinct hate base.'),
(857,607,'Form history: Old English ēo, īo, and Kentish īa','supports','Explains the dialect forms.'),
(858,607,'Form history: inherited i-mutation in nd-stem inflection','supports','Explains frīend and frȳnd as inflectional evidence.'),
(859,607,'Form history: endingless, re-formed, and vowel-final plurals','supports','Publishes the plural variation.'),
(860,607,'Form history: dialect vowels and incipient monophthongization','supports','Provides written phonological evidence but no recorded voice.'),
(861,607,'Cross-Germanic cognates and reconstructed stem-vowel history','supports','Supplies comparative reconstruction rather than an attested proto-token.'),
(862,611,'Etymology: see prī-','supports','Publishes the deep comparison without direct attestation.'),
(863,624,'Folio 152r; visible freondum afylled sequence','supports','Provides the directly inspected manuscript pixels.'),(863,441,'Electronic Beowulf line control at verse 1018','supports','Makes the edition-to-object alignment repeatable.'),
(864,624,'Folio 152r; local Heorot context','supports','Establishes the visible form and neighboring words only.'),(864,607,'Meaning A.1a; Beowulf 1018','context','Supplies the historical dictionary’s companion classification.'),
(865,607,'Old English records under meanings A.1–A.3','supports','Locates multiple semantic branches in Old English.'),(865,609,'Examples: friend of God, friend and foe, arbitration','context','Independently demonstrates contextual breadth.');
--> statement-breakpoint

UPDATE leaderboard_entries SET rank=rank+1000;
--> statement-breakpoint

INSERT INTO leaderboard_entries (id,entry_id,rank,word,claim,reveal,evidence_grade,myth_gap_score,editorial_note) VALUES
(214,214,2106,'frēond','The Old English friend was a loving-agent noun—but not merely a modern intimate.','OED and Bosworth–Toller preserve the morphology behind frēond: an inherited nd-stem formation tied to the verb meaning free or love. The same sources then refuse a slogan-sized definition. Old English uses cover close companion, ally or non-enemy, relation, friend of God, friend versus foe, and friends acting as arbitrators. Cotton MS Vitellius A XV folio 152r visibly preserves freondum in a hall filled with favored people at Beowulf 1018. The unveiling is not that friend secretly means love in every sentence; it is that a loving-agent fossil became a socially versatile noun before modern English existed.','A',100,'The word formation, noun class, dialect forms, inflection, companion, ally, relation, religious and legal contexts, direct manuscript witness, and distinct fiend root are cited. Exact pronunciation, every Beowulf referent’s relationship, lexicalization moment, and PIE comparison remain qualified.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id,ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,evidence_grade ASC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE leaderboard_entries
SET rank=(SELECT new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO leaderboard_claim_sources (leaderboard_entry_id,source_id,locator,stance,evidence_note) VALUES
(214,607,'Etymology Summary, Form history, and meanings A.1–A.3','supports','Publishes the morphology, noun class, variation, and companion-to-kin sense range.'),
(214,609,'Grammar and located examples','supports','Makes the loving-participle analysis and broad Old English contextual range explicit.'),
(214,610,'Headword freón: to free, love','supports','Supplies the attested verb behind the historical explanation.'),
(214,624,'Cotton MS Vitellius A XV folio 152r','supports','Provides the directly inspected freondum manuscript witness.'),
(214,441,'Electronic Beowulf line 1018 and folio 152r alignment','supports','Makes the primary-object inspection repeatable.');
--> statement-breakpoint

INSERT INTO context_links (id,from_entry_id,to_entry_id,link_type,title,explanation,scholar,confidence,editorial_status) VALUES
(20,214,186,'attested_antithetical_pair_non_cognate','SE FĒOND AND SE FRĒOND: AN ATTESTED PAIR, DISTINCT ROOTS','Bosworth–Toller reports the Old English pair Se feónd and se freónd and a second friend-versus-foe construction in the Metres of Boethius. OED describes fiend as an antonym with similar agent-noun formation. The reviewed graph keeps the loving and hating bases distinct: textual opposition and parallel grammar do not create cognacy.','Bosworth · Toller · Oxford English Dictionary editors · SET-U editorial review','established','reviewed');
--> statement-breakpoint

INSERT INTO context_link_sources (context_link_id,source_id,locator,stance,evidence_note) VALUES
(20,609,'Elene 954 and Metres of Boethius 25:16','supports','Publishes two Old English friend-versus-foe pairings.'),
(20,607,'Etymology Summary: fiend shows a similar formation','supports','Identifies the antonymic morphological parallel without merging roots.'),
(20,508,'Bosworth–Toller feónd grammar and etymology','context','Supplies the separately reviewed Old English enemy formation.');
--> statement-breakpoint

INSERT INTO rabbit_holes (id,from_entry_id,to_entry_id,title,reveal,surprise_score,evidence_grade,editorial_status) VALUES
(170,214,213,'ONE ANCESTRY, TWO SOCIAL CENTERS: FRIEND AND KIN','Follow the shared *frijōnd- family sideways. Old English frēond already spans companion, ally, and relation, while Old Norse frændi makes kinship its recorded center. The graph shows semantic divergence without pretending either daughter language preserves one frozen original dictionary definition.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1362 AND 1366
)
INSERT OR IGNORE INTO lexeme_nodes (canonical_key,language_id,form,normalized_form,sense_key,transliteration,pronunciation,status,date_label,date_start,date_end,gloss,notes,editorial_status)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO form_node_links (form_id,node_id,confidence,editorial_note)
SELECT f.id,n.id,CASE WHEN f.status='boundary' THEN 'boundary' WHEN f.id=1362 THEN 'established' WHEN f.normalized_form IN ('frijond','fri') THEN 'probable' ELSE 'proposed' END,
  CASE WHEN f.status='boundary' THEN 'Dossier-specific endpoint beyond the proposed *prī- comparison.' WHEN f.id=1362 THEN 'Canonicalized to the already reviewed Old English frēond node and upgraded with a complete paradigm, semantic record, and directly inspected witness.' ELSE 'Canonicalized reconstructed form; comparative uncertainty remains on the cited edges.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1362 AND 1366;
--> statement-breakpoint

INSERT OR IGNORE INTO lexeme_edges (child_node_id,parent_node_id,relation_type,sound_change,semantic_change,scholar,confidence,confidence_note,chronology_note,editorial_status)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1149 AND 1152;
--> statement-breakpoint

INSERT OR IGNORE INTO relation_edge_links (relation_id,edge_id)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_form_link ON parent_form_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_form_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1149 AND 1152;
--> statement-breakpoint

INSERT OR IGNORE INTO lexeme_edge_sources (edge_id,source_id,locator,stance,evidence_note)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1149 AND 1152;
