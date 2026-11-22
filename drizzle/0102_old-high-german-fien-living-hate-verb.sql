-- Promote Old High German fīēn from the graph-derived evidence-ready queue
-- into a complete dossier. The official Althochdeutsches Wörterbuch records
-- this weak verb only in Alemannic manuscripts of the eighth and ninth
-- centuries, but preserves an unusually revealing mini-paradigm: infinitive,
-- present participle, preterite, and past participle. The living verb is kept
-- distinct from both the lexicalized enemy noun fīant and the reconstructed
-- Proto-Germanic parent.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(198,'fien','fīēn','fien','not directly recoverable','Old High German weak verb','Old High German fīēn—printed fîên in the Althochdeutsches Wörterbuch—was a weak verb meaning to hate, not love, be hostile to, detest, or reject. The official dictionary says it is attested only in Alemannic manuscripts of the eighth and ninth centuries, then inventories an infinitive fien, present participle fiendi, second-person singular preterite fietos, and accusative plural masculine past participle fieta. Three rule-text records concern hating discipline, one’s own will, or no person; gloss records align the participial forms with Latin exosus or exosos; and an Esther gloss aligns fien with detestari. These are source-reported edition and dictionary records, not directly inspected manuscript objects, and the broad manuscript horizon does not identify one exact first token. A separate twelfth-century article printed fien [sic] with the gloss ubere is explicitly left uninterpreted by the dictionary and is not merged into this hate verb. Beside the verb, Old High German had the already lexicalized enemy noun fīant, whose old participial character could still shine through in fixed phrases. The graph therefore shows a living daughter verb beside a grammatical fossil without pretending that either attested form is the reconstructed Proto-Germanic word itself. No historical sound recording exists and the dossier does not display a fabricated phonetic certainty.','Old High German still had the living hate verb beside fīant, the enemy noun fossilized from the same verbal family. The lost verb was not lost yet.','reviewed');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1270,198,32,1,'fīēn','fien','hate-detesting-old-high-german-verb','fîên',NULL,'attested','Old High German; only in Alemannic manuscripts of the eighth and ninth centuries',750,899,'to hate, not love, be hostile to, detest, or reject','AWB classifies fîên as a weak verb and inventories fi-en, fiendi, fietos, and fieta. SET-U normalizes the headword with macrons while preserving the dictionary spelling and source forms in the evidence layer. The manuscript localization and dates are dictionary reports, not directly inspected objects.'),
(1271,198,5,2,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with hostility','Kroonen reconstructs the comparative Germanic verb. It is not a written Old High German or Proto-Germanic token, and its normalized optional glide is not projected into every daughter form.'),
(1272,198,6,3,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European comparison',-4500,-2500,'a proposed base in a harm, blame, suffering, or hostility field','Kroonen publishes this deeper comparison. The formal path and original semantic center are less secure than the Germanic comparison.'),
(1273,198,7,4,'UNKNOWN','unknown','fien-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely reconstructed earlier ancestor or uniquely recoverable original semantic scene is known.','The trail ends before hatred, hostility, rejection, harm, or blame is declared the one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1073,198,1270,1271,'inheritance','Old High German fīēn continues the reconstructed Germanic fi(j)- weak verb after High German branch development in its vowel, optional glide, ending, and inflectional system. The attested forms are not treated as one mechanically complete sound law.','The hate or hostility verb remains visible in records meaning hate, not love, be hostile, detest, or reject; individual Latin alignments do not force one identical nuance onto every occurrence.','Althochdeutsches Wörterbuch editorial team · Guus Kroonen','probable','The Old High German verb and its paradigm are attested through the reviewed dictionary, and the cross-Germanic comparison is published. The exact prehistoric phonetic path remains reconstructed.','Proto-Germanic reconstruction into the eighth- and ninth-century Alemannic record.','reviewed'),
(1074,198,1271,1272,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1075,198,1272,1273,'knowledge_boundary','No older form is promoted beyond the qualified *peh₁- comparison.','The trail ends before the attested hate, hostility, detestation, rejection, or not-love senses are reverse-engineered into one universal prehistoric essence.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1073,544,'Vol. 3, cols. 801–802: fîên, weak verb, paradigm, manuscript horizon, and meanings 1–2','supports','Classifies the attested Old High German verb, bounds its manuscript record, and publishes its form and meaning inventory.'),
(1073,543,'Vol. 3, col. 796: fîant formulas and comparison with fîên','context','Shows the related lexicalized enemy noun and living verb coexisted as distinct lexical categories.'),
(1073,491,'p. 140, *fi(j)ēn- and Germanic daughter forms','supports','Publishes the reconstructed parent and Old High German descendant.'),
(1073,492,'pp. 47–49, living verb beside lexicalized enemy formation','context','Supports the inherited verb family while preserving the noun-versus-verb distinction.'),
(1074,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used with reduced confidence.'),
(1075,491,'p. 140, deepest modern comparison used in this dossier','supports','Supports stopping after the qualified proposal rather than inventing an earlier form.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(434,1270,544,'eighth- or ninth-century Alemannic manuscript; source-reported',NULL,'Rule text, preterite form','AWB S 199,19 (B)','du keuuisso fietos egii mina tu vero odisti disciplinam meam','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB prints the bilingual record under the first meaning group. The underlying manuscript object was not directly inspected and no exact year is assigned.'),
(435,1270,544,'eighth- or ninth-century Alemannic manuscript; source-reported',NULL,'Rule text, infinitive with one’s own will','AWB S 205,30 (B)','vvillon eikinan fien voluntatem propriam odire','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB aligns the infinitive with Latin odire. The source record supports hate or reject one’s own will without licensing a point-date first-use claim.'),
(436,1270,544,'eighth- or ninth-century Alemannic manuscript; source-reported',NULL,'Rule text, infinitive with no person','AWB S 206,3 (B)','neomannan fien nullum odire','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB prints the bilingual record in the hate or be-hostile meaning group. The manuscript object was not directly inspected.'),
(437,1270,544,'eighth- or ninth-century Alemannic manuscript; source-reported',NULL,'Gloss record, present participle','AWB Gl 1,120,10 (K)','palouuic fiantscaf habendi fiendi exosus odio habitus odiosus','probable','lexical_corpus_record',NULL,NULL,NULL,0,'AWB says the Latin adjective is translated with the present participle here, while another witness may instead have the lexicalized noun fîant or a word-order exchange. The ambiguity remains explicit.'),
(438,1270,544,'eighth- or ninth-century Alemannic gloss; source-reported',NULL,'Passio Bartholomaei gloss, past participle','AWB Gl 2,742,31 (Ja)','fieta exosos','probable','lexical_corpus_record',NULL,NULL,NULL,0,'AWB inventories the accusative plural masculine past-participle form and says the record cannot be assigned more narrowly. No manuscript object was inspected.'),
(439,1270,544,'eighth- or ninth-century Alemannic gloss; source-reported',NULL,'Esther 14:15 gloss, infinitive','AWB Gl 1,493,51 (Rf)','fien detestari','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB files the Esther gloss under abhor or reject something. The biblical locator and lexical alignment are source-reported.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(965,198,'fien','Old High German','the source spelling of the infinitive',544),
(966,198,'fiendi','Old High German','the source-reported present participle',544),
(967,198,'fietos','Old High German','the source-reported second-person singular preterite',544),
(968,198,'fieta','Old High German','the source-reported accusative plural masculine past participle',544),
(969,198,'fîant','Old High German','the distinct lexicalized enemy noun whose old participial character could remain visible in fixed formulas',543),
(970,198,'fîadôn','Old High German','a probably related derivative verb named by AWB',544),
(971,198,'vîen','Middle Low German','a collateral Germanic verb compared by AWB',544),
(972,198,'feon','Old English','a collateral Germanic verb compared by AWB',544),
(973,198,'fjá','Old Norse','a collateral North Germanic hate verb compared by AWB',544),
(974,198,'fijan','Gothic','a collateral East Germanic hate verb compared by AWB',544),
(975,198,'*fi(j)and-','Proto-Germanic','the reconstructed participial enemy formation built from the related verb family',491);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(833,198,1,'Proposed Indo-European linguistic horizon','proposed *peh₁- comparison','The deepest route is a comparative linguistic proposal, not a word recovered at one archaeological site.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon attached to a proposed analysis.'),
(834,198,2,'Proto-Germanic linguistic horizon','reconstructed *fi(j)ēn-','Cross-branch evidence places the hate verb before the separate written Germanic traditions.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token or single coordinate.'),
(835,198,3,'Alemannic manuscript world','eighth-century fîên records','AWB says the verb occurs only in Alemannic manuscripts of the eighth and ninth centuries; individual records are not converted into invented modern coordinates.',NULL,NULL,'broad',750,799,'century','A dictionary-reported manuscript horizon, not an exact token date or object inspection.'),
(836,198,4,'Alemannic manuscript world','ninth-century fîên records','Infinitive, present-participle, preterite, and past-participle records remain visible within the same bounded Alemannic evidence pocket.',NULL,NULL,'broad',800,899,'century','A dictionary-reported manuscript horizon rather than a claim that every cited record belongs to this entire century.'),
(837,198,5,'Old High German lexical boundary','no securely identified continuation after the reviewed pocket','The reviewed source does not establish one exact extinction event, last speaker, or later High German descendant of this verb.',NULL,NULL,'uncertain',900,1050,'range','An evidence gap after the bounded record, not a dated death certificate for the verb.'),
(838,198,6,'Knowledge boundary','beyond the proposed Indo-European comparison','The graph stops before hate, hostility, rejection, harm, or blame is declared the one certain prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(833,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the deepest comparison used with proposed confidence.'),
(834,491,'p. 140, *fi(j)ēn- and Germanic daughter forms','supports','Publishes the reconstructed Germanic verb and cross-branch evidence.'),
(835,544,'Headword note: only in Alemannic manuscripts of the eighth and ninth centuries','supports','Supplies the bounded regional and century-level record.'),
(836,544,'Paradigm and records at Gl 1,120,10; Gl 1,493,51; Gl 2,742,31; S 199,19; S 205,30; S 206,3','supports','Documents the form inventory inside the bounded record.'),
(837,544,'Headword record limited to eighth- and ninth-century Alemannic manuscripts','supports','Supports an evidence boundary without proving an exact extinction date.'),
(838,491,'p. 140, deepest comparison used here','supports','Supports an explicit endpoint after the qualified proposal.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(589,198,'Was Old High German fīēn a verb?','Yes. AWB classifies fîên as a weak verb and supplies infinitive, present-participle, preterite, and past-participle forms.','established','The official historical dictionary’s headword grammar and paradigm are explicit.','resolved','The dossier keeps the attested verb distinct from the enemy noun fīant.'),
(590,198,'Was the verb recorded throughout the Old High German world?','Not on the reviewed evidence. AWB says it is attested only in Alemannic manuscripts of the eighth and ninth centuries.','established','The official entry gives both the regional and chronological limit.','resolved','The map uses a broad manuscript region and no invented point coordinate.'),
(591,198,'What is the exact earliest surviving fīēn token?','Not established here. AWB supplies a bounded manuscript horizon and edition locators but no single inspected first object or exact year.','established','The records are dictionary-reported and the manuscripts were not directly inspected.','open',NULL),
(592,198,'Were the underlying manuscript objects directly inspected?','No. This review inspected the official dictionary article, not the manuscripts behind its gloss and rule-text references.','established','All six attestation rows identify a lexicographic surface and set directly_inspected to false.','resolved','No witness-inspection record or facsimile claim is created.'),
(593,198,'Do fien, fiendi, fietos, and fieta represent four unrelated words?','No. AWB inventories them inside one weak-verb paradigm as infinitive, present participle, second-person singular preterite, and past participle.','established','The headword’s form section explicitly assigns the categories.','resolved','Surface forms remain relatives and attestations rather than false ancestry nodes.'),
(594,198,'Is the separate twelfth-century fien [sic] ubere record this hate verb?','Unknown, and it is not merged here. AWB places it in a separate article and says it is not interpreted.','established','The adjacent official headword explicitly marks the isolated record as uninterpreted.','open',NULL),
(595,198,'Is fiendi simply the same lexical item as the noun fīant?','Not in the reviewed grammar. AWB analyzes fiendi as the present participle of fîên, while fîant / fîjant is a separate strong masculine noun; one gloss alignment remains textually ambiguous.','probable','The two official articles classify the forms separately and cross-reference their historical relation.','resolved','Productive participle, lexicalized noun, and ambiguous gloss alignment remain separate claims.'),
(596,198,'Did fīēn have one perfectly identical meaning in every record?','No. AWB separates hate, not love, or be hostile from abhor or reject, and the Latin alignments vary among odire, exosus, and detestari.','established','The official article has two meaning groups and prints the bilingual records.','resolved','The graph models a bounded semantic field rather than one timeless English gloss.'),
(597,198,'Does Latin odire or detestari reveal the exact Old High German nuance by itself?','No. A bilingual alignment is evidence, but translation and gloss practice do not erase contextual or grammatical differences.','established','AWB preserves multiple Latin alignments and distinguishes their source records.','resolved','Each attestation retains its own locator and editorial note.'),
(598,198,'Does not love mean that fīēn was merely mild dislike?','Not necessarily. AWB groups not love with hate and be hostile, while other records align the verb with odire and detestari.','established','The source’s own meaning architecture gives a range rather than a modern intensity scale.','resolved','No single English emotion word is forced onto the whole dossier.'),
(599,198,'Was fīēn borrowed from Gothic fijan, Old English feon, Middle Low German vîen, or Old Norse fjá?','No daughter-to-daughter borrowing is established. AWB compares the forms, and Kroonen places them under a reconstructed Germanic verb.','probable','The historical dictionary and comparative study support collateral inheritance.','resolved','The graph joins them at *fi(j)ēn- and draws no donor arrow among daughter languages.'),
(600,198,'Is *fi(j)ēn- an attested Old High German spelling?','No. It is a normalized Proto-Germanic reconstruction used to explain the daughter-language set.','established','Kroonen marks the comparative form as reconstructed; AWB supplies later attested forms.','resolved','The asterisk remains structural and visible.'),
(601,198,'Can the exact Proto-Germanic pronunciation and path into fīēn be recovered?','Not completely. Optional j, vowel quantity, stem remodeling, and daughter inflection belong to comparative analysis rather than a recorded transition.','probable','Kroonen publishes a normalized reconstruction, while AWB supplies daughter forms.','open',NULL),
(602,198,'Does fīēn securely descend from exactly *peh₁-?','Only as a qualified modern proposal. The Germanic comparison is firmer than the displayed Indo-European route.','proposed','Kroonen publishes the comparison but no written intermediate or uniquely recoverable original semantic scene.','open',NULL),
(603,198,'Does the end of the ninth-century record prove the verb died in 900?','No. The dictionary bounds surviving evidence; it does not identify one extinction event, last speaker, or exact loss date.','established','The official source reports where and when the verb is attested, not when every spoken continuation ceased.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(589,544,'Headword fîên, sw. v.; paradigm inventory','supports','Classifies the word and displays four grammatical form categories.'),
(590,544,'Only in Alemannic manuscripts of the eighth and ninth centuries','supports','Directly supplies the bounded attestation horizon.'),
(591,544,'Headword manuscript horizon and six edition locators','supports','Provides a range and locators without one inspected first object.'),
(592,544,'Dictionary citation inventory','supports','Provides edition locators without manuscript-object inspection.'),
(593,544,'Form inventory: fi-en, fiendi, fietos, fieta','supports','Groups the surface records under one weak verb.'),
(594,544,'Adjacent separate article: fien [sic] ubere, not interpreted','supports','Preserves the isolated homograph as an unresolved boundary.'),
(595,544,'Present-participle note at Gl 1,120,10 and comparison with fîant','supports','Classifies fiendi while preserving the textual alignment ambiguity.'),
(595,543,'Headword fîant, fîjant, strong masculine noun','context','Independently classifies the lexicalized enemy noun.'),
(596,544,'Meanings 1–2 and bilingual records','supports','Documents the semantic and translation range.'),
(597,544,'odire, exosus, exosos, and detestari alignments','supports','Shows why no one Latin gloss should erase record-level context.'),
(598,544,'Meaning 1: hate someone or something, not love, be hostile','supports','Publishes the source’s own semantic grouping.'),
(599,544,'Comparative header: vîen, feon, fjá, fijan','supports','Publishes the collateral daughter set.'),
(599,491,'p. 140, reconstructed parent and daughter forms','supports','Places the forms under shared ancestry.'),
(600,491,'p. 140, reconstructed *fi(j)ēn-','supports','Marks the parent as a comparative reconstruction.'),
(601,491,'p. 140, *fi(j)ēn- reconstruction','supports','Publishes the normalized comparative form.'),
(601,544,'Old High German paradigm inventory','context','Supplies the attested daughter outcomes without a recorded transition.'),
(602,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the qualified route used in the graph.'),
(603,544,'Attested only in eighth- and ninth-century Alemannic manuscripts','supports','Bounds evidence without proving a loss event in 900.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(198,198,2106,'fīēn','The enemy fossil and the living hate verb coexisted in Old High German.','AWB records fîên as a weak verb only in eighth- and ninth-century Alemannic manuscripts, but the pocket preserves an infinitive, present participle, preterite, and past participle across hate, hostility, detestation, and rejection. Beside it, fîant was already a strong masculine enemy noun whose old participial character could still shine through in fixed phrases. Old High German therefore preserves both sides of the history at once: the live verbal family and the noun already lexicalized from it. The evidence reveals a grammatical relationship, not the psychology of every enemy and not a securely recovered Proto-Indo-European essence.','A',100,'The reveal follows the official dictionary’s grammar, manuscript horizon, form inventory, sense division, and fîant comparison. It claims no exact first token, directly inspected manuscript, point-coordinate Alemannic origin, exact extinction date, or established deepest PIE route.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id,ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,evidence_grade ASC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(198,544,'Headword grammar, Alemannic manuscript horizon, paradigm, and meanings 1–2','supports','Directly supports the living-verb claim and its bounded evidence pocket.'),
(198,543,'Strong masculine fîant and fixed-formula participial afterglow','supports','Supplies the distinct lexicalized noun and residual grammatical transparency.'),
(198,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Supplies the reconstructed Germanic relation between the verb and enemy formation.'),
(198,492,'pp. 47–49, pre-branch lexicalization','context','Places noun lexicalization before the individual daughter records.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(154,198,195,'THE LOST VERB WAS NOT LOST YET','Old High German fīēn preserves the living hate verb in a tiny eighth- and ninth-century Alemannic record. Follow it sideways to fīant: already an enemy noun, yet still able to let its old participial character shine through in fixed phrases. The pair exposes living grammar beside its lexical fossil without collapsing either word into the other.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1270 AND 1273
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1271,1272) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1270 THEN 'Promoted from the graph-derived top evidence-ready candidate into a complete Old High German lexical, grammatical, manuscript-horizon, semantic, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1270 AND 1273;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1073 AND 1075;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1073 AND 1075;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1073 AND 1075;
