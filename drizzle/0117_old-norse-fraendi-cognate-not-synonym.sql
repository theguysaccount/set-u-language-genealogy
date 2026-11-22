-- Promote Old Norse frændi from the graph-derived promotion queue into the
-- shared friend family. The dossier makes a central historical-linguistic
-- distinction traversable: cognates preserve common ancestry, not identical
-- later meanings. ONP keeps friend and companion uses visible, but its much
-- larger structured record and the historical dictionaries center kinship.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(213,'fraendi','frændi','fraendi','approx. /ˈfrɛːndi/','Old Norse masculine noun','Old Norse frændi belongs to the same inherited Germanic present-participial family as English friend, German Freund, and Dutch vriend, but cognacy did not freeze one meaning. The Dictionary of Old Norse Prose structures 225 citations into friend; foster brother or companion; kinsman, relative, or son; parents; and ancestor, while warning that the friend and kin divisions are not sharp. Cleasby and Vigfússon call the Scandinavian semantic specialization striking and treat kinsman as the ordinary center; Zoëga likewise gives kinsman, brother, son, and ancestor. Fritzner preserves the historical formation as a participle of frjá and compares the West and East Germanic friend words. The graph joins frændi directly to the same reviewed *frijōnd-, *frī-, and proposed *prī- nodes as friend, Freund, and vriend, then stops. The displayed pronunciation is a normalized approximation, not recorded medieval audio.','frændi is English friend’s cognate, but its recorded Old Norse center is kinship. Shared ancestry did not require the Scandinavian word to remain a synonym of modern English friend.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(620,'onp-fraendi','Dictionary of Old Norse Prose — frǽndi, masculine noun','Dictionary of Old Norse Prose editors',2010,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?o24283',NULL,'historical_dictionary'),
(621,'cleasby-vigfusson-fraendi','An Icelandic-English Dictionary — FRÆNDI','Richard Cleasby · Guðbrandur Vigfússon',1874,'Clarendon Press · old-norse.net digital edition reproduced in ONP','https://onp.ku.dk/onp/onp.php?o24283',NULL,'historical_dictionary'),
(622,'fritzner-fraendi','Ordbog over Det gamle norske Sprog — frændi','Johan Fritzner',NULL,'University of Oslo digital edition reproduced in ONP','https://onp.ku.dk/onp/onp.php?o24283',NULL,'historical_dictionary'),
(623,'zoega-fraendi','A Concise Dictionary of Old Icelandic — frændi','Geir T. Zoëga',1926,'Oxford University Press · digital transcription reproduced in ONP','https://onp.ku.dk/onp/onp.php?o24283',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1357,213,66,1,'frændi','fraendi','friend-companion-kinsman-relative-son-ancestor-old-norse','frændi','approx. /ˈfrɛːndi/','attested','Old Norse poetic and prose record',700,1500,'friend or companion; especially kinsman, relative, son, parent, or ancestor','ONP prints the editorial headword frǽndi and structures 225 citations across five semantic zones. Cleasby–Vigfússon and Zoëga print frændi and center kinsman. The spelling and approximate pronunciation are normalized editorial representations, not one recoverable manuscript spelling or recorded voice.'),
(1358,213,5,2,'*frijōnd-','frijond','loving-one-proto-germanic-present-participle','*frijōnd-',NULL,'reconstructed','normalized Proto-Germanic participial formation',-500,200,'a reconstructed present-participial formation, the loving or favorably disposed one','The exact normalized spelling is reconstructive. OED places Old Icelandic frændi in the cross-Germanic descendant set; Cleasby–Vigfússon and Fritzner independently preserve the participial comparison. No written Proto-Germanic token survives.'),
(1359,213,5,3,'*frī-','fri','love-like-befriend-free-germanic-base','*frī-',NULL,'reconstructed','Germanic lexical base',-500,200,'to like, love, or be friendly to; also represented in the free family','This is the exact canonical base already reviewed under English friend. The North Germanic kinship outcome does not uniquely recover one prehistoric social institution or make modern kin the original lexical definition.'),
(1360,213,6,4,'*prī-','pri','love-like-friend-proposed-indo-european-root','*prī-',NULL,'reconstructed','proposed Indo-European comparison',-4500,-2500,'a proposed Indo-European root compared with the Germanic friend and free family','American Heritage publishes the comparison through the shared friend-family route. It remains a comparative root label, not a written word or a uniquely recoverable prehistoric scene.'),
(1361,213,7,5,'UNKNOWN','unknown','fraendi-deep-boundary',NULL,NULL,'boundary','beyond the proposed *prī- comparison',NULL,NULL,'No securely reviewed older ancestor or uniquely recoverable original social meaning is currently known.','The trail ends before friendship, kinship, love, freedom, alliance, or ritual brotherhood is declared the one universal prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1145,213,1357,1358,'inheritance','Old Norse frændi reflects the inherited Germanic nd-participial stem represented as *frijōnd-. North Germanic vowel development and contraction produce the normalized long front vowel represented by fræ- or editorial frǽ-, while the exact prehistoric sequence remains reconstructed.','The inherited loving or favorably disposed participant lexicalizes in the Scandinavian branch with kinship as its recorded center, while friend and companion uses remain visible. Cognacy therefore survives alongside semantic divergence.','Oxford English Dictionary editors · Richard Cleasby · Guðbrandur Vigfússon · Johan Fritzner · Dictionary of Old Norse Prose editors','probable','The cognate set, participial analysis, attested lemma, and semantic distribution are published. The parent form, exact contraction sequence, and moment when kinship became central were not directly recorded.','Proto-Germanic reconstruction into the Old Norse poetic and prose record.','reviewed'),
(1146,213,1358,1359,'participial_derivation','The agent noun is built with Germanic present-participial nd-morphology on the *frī- or earlier *frij- base. OED traces the later *iu diphthong to contraction with the suffixal vowel.','A productive loving or favorably disposed participant becomes a lexical noun for friend or relation. The derivation does not make every later friend literally a person performing a continuous act of loving.','Oxford English Dictionary editors · Bosworth · Toller · American Heritage Dictionary editors','probable','Three independent dictionary treatments identify the participial relation. The exact lexicalization date and every prehistoric inflection remain unrecoverable.','Germanic derivation before the daughter-language records.','reviewed'),
(1147,213,1359,1360,'comparative_derivation','American Heritage compares Germanic *frī- with Indo-European *prī-. The initial Germanic f corresponds to the older labial stop under the comparative analysis; the exact intermediate morphology is not promoted as attested.','The reconstructed like, love, or friendliness field is compared across Indo-European, but no one original institution of friendship or freedom is recovered.','American Heritage Dictionary editors','proposed','The source publishes the root cross-reference, while the accessible record does not establish one directly attested proto-form, sentence, or social structure.','Proposed Indo-European base to Germanic reconstruction.','reviewed'),
(1148,213,1360,1361,'knowledge_boundary','No older form is promoted beyond the proposed *prī- comparison.','The graph stops before friendship, kinship, love, freedom, alliance, or ritual brotherhood is reverse-engineered into one universal prehistoric story.','SET-U editorial boundary · American Heritage Dictionary editors','boundary','The deepest displayed form is already reconstructed and proposed; no reviewed earlier node clears the evidence boundary.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1145,620,'Headword frǽndi sb. m.; 225 citations; senses 1–5','supports','Supplies the attested lemma, masculine grammar, corpus scale, and friend-to-ancestor semantic topology.'),
(1145,621,'FRÆNDI header and main definition','supports','Publishes the participial comparison, Germanic cognates, and Scandinavian kinsman center.'),
(1145,622,'frændi senses 1–2 and participial header','supports','Independently derives the noun from frjá and compares Gothic, West Germanic, and High German forms.'),
(1145,607,'Etymology Summary; notes on meanings in other Germanic languages','context','Places the Old Icelandic form in the inherited cognate set and distinguishes the Scandinavian relative sense.'),
(1146,607,'Etymology Summary and Form history','supports','Publishes the shared Germanic present-participial formation.'),
(1146,621,'FRÆNDI: irregular participle of obsolete frjá','supports','Preserves the Old Norse historical-dictionary participial analysis.'),
(1146,622,'frændi: for fríandi or frjándi, present participle of frjá','supports','Independently states the participial derivation.'),
(1147,611,'Etymology: see prī- in the Appendix of Indo-European roots','supports','Publishes the proposed deep comparison used by the shared family.'),
(1148,611,'Deepest displayed prī- cross-reference','supports','Supports ending the reviewed route after the proposed comparison rather than inventing an earlier form.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(525,1357,620,'manuscript dated circa 1250 by ONP',1250,'Grágás, friends-or-kin versus enemies formula','ONP citation c198641; GrgKon I 206:8; GKS 1157 fol','sem frændr en eigi sem fiandr','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP files the citation under friend while flagging possible kin sense 3 and supplies the manuscript date and shelfmark. SET-U inspected the dictionary citation record, not the underlying manuscript token.'),
(526,1357,620,'manuscript dated circa 1275 by ONP',1275,'Morkinskinna, friends becoming enemies','ONP citation c198959; Mork 263:19; GKS 1009 fol','Frendr varir gøraz oss fiandr. þeira fiandmenn scolo oc þa vera minir fręndr','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP files this record under friend and compares Hávamál 43. The digital citation page and metadata were read, but no manuscript object was directly inspected.'),
(527,1357,620,'manuscript dated circa 1300–1325 by ONP',NULL,'Njáls saga, a kinsman addressed directly','ONP citation c198890; NjR 10:10; AM 468 4°','Nú skalt þú ríða vestr með mér, frændi, ok vera með mér í vetr','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP files the line under kinsman, relative, or son and supplies a manuscript date range. No single representative year or directly inspected manuscript token is claimed.'),
(528,1357,620,'manuscript dated circa 1360–1400 by ONP',NULL,'Jónsbók, the nearest relative as heir','ONP citation c198323; Jb 94:1; AM 351 fol','þá skal þann arf taka hér til brottflutnings eptir hann hinn skyldasti frændi hans','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP supplies the legal context, shelfmark, and manuscript range. The record demonstrates a relative sense without claiming a first use or direct object inspection.'),
(529,1357,620,'manuscript dated circa 1200 by ONP',1200,'Icelandic homily, Adam as ancestor','ONP citation c179492; HómÍsl 43 (1993) 71r:12; Holm perg 15 4°','þar er fyrst í þui tali adám frǽndi váʀ','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP files the phrase under ancestor and supplies the manuscript date and folio locator. The dictionary record was inspected; the manuscript image was not used for a direct token claim.'),
(530,1357,620,'Old Norse prose corpus; manuscript date unresolved in ONP record',NULL,'Andréss saga postula, foster-brother variant','ONP citation c179450; Andr SÁM 1 37vb:33; SÁM 1','Gnaram frænda [var. fostbroður] minn','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP files the reading under foster brother or companion and exposes the fostbroður variant. Its citation page gives no manuscript date, so SET-U leaves the numeric year unresolved and claims no direct object inspection.');
-- All six records remain directly_inspected=0: the structured dictionary and
-- citation pages were read, but no underlying manuscript token was visually
-- verified as a primary-object claim.
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1168,213,'friend','English','the reviewed English cognate whose modern center is companion rather than kin',607),
(1169,213,'Freund','German','the reviewed High German cognate from the same inherited participial formation',621),
(1170,213,'vriend','Dutch','the reviewed Dutch cognate from the same inherited participial formation',621),
(1171,213,'frijonds','Gothic','an East Germanic cognate preserving transparent participial morphology',621),
(1172,213,'freond','Old English','a West Germanic cognate continued by English friend',621),
(1173,213,'friund','Old Saxon','a West Germanic cognate named in the historical comparison',621),
(1174,213,'friunt','Old High German','a High German cognate named in the historical comparison',621),
(1175,213,'frænde','Danish','a Scandinavian continuation centered on kinsman or relative',621),
(1176,213,'frände','Swedish','a Scandinavian continuation centered on kinsman or relative',621),
(1177,213,'frjá','Old Norse','the obsolete or collateral verb used by the historical dictionaries to explain the participial formation',622),
(1178,213,'frændr','Old Norse','the attested nominative plural exposed across ONP citation records',620),
(1179,213,'ná-frændi','Old Norse','a compound glossed near kinsman by Cleasby and Vigfússon',621),
(1180,213,'fjándi','Old Norse','a non-cognate enemy noun repeatedly paired with frændi in antithetical formulas',620);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(947,213,1,'Proposed Indo-European comparative horizon','*prī-','American Heritage places the shared Germanic friend and free family under a reconstructed Indo-European root. This is not a written token, recoverable institution, or single archaeological coordinate.',NULL,NULL,'uncertain',-4500,-2500,'range','Conventional comparative bounds for a proposed reconstruction.'),
(948,213,2,'Proto-Germanic linguistic horizon','*frī-','The like, love, or friendly base is reconstructed from daughter-language evidence; no Proto-Germanic speaker, homeland point, or written occurrence is claimed.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval, not a directly dated word.'),
(949,213,3,'Germanic participial-formation horizon','*frijōnd-','The loving-agent formation predates the daughter-language records, but its exact lexicalization moment and full paradigm remain reconstructed.',NULL,NULL,'uncertain',-500,200,'range','The broad horizon does not imply an exact coinage date.'),
(950,213,4,'Old Norse textual world','frændi / editorial frǽndi','ONP documents friend, foster-brother or companion, relative or son, parents, and ancestor uses across the Old Norse prose record without reducing the language to one birthplace.',NULL,NULL,'broad',700,1500,'range','Conventional Old Norse bounds; individual manuscript ranges are preserved separately.'),
(951,213,5,'Medieval Icelandic manuscript witnesses','circa 1200–1400','ONP links dated Icelandic manuscripts and edited citations for friend, kin, inheritance, and ancestor contexts. The witnesses locate textual survival, not the word’s origin.',NULL,NULL,'broad',1200,1400,'range','A bounded manuscript-survival interval assembled from separately cited ONP records.'),
(952,213,6,'Later Scandinavian continuation','Danish frænde and Swedish frände','The inherited formation continues in relation or kinsman words while English, German, and Dutch cognates center friend. No branch is treated as semantically original by default.',NULL,NULL,'broad',1500,2026,'range','A broad daughter-language continuation horizon, not one movement or innovation event.'),
(953,213,7,'Knowledge boundary','beyond the proposed *prī- comparison','The trail ends before love, friendship, kinship, freedom, alliance, or ritual brotherhood is promoted as the one recoverable prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(947,611,'Etymology: see prī- in the Appendix of Indo-European roots','supports','Publishes the proposed deep comparison.'),
(948,611,'Word History: Germanic root *frī-','supports','Prints and glosses the reconstructed Germanic base.'),
(948,607,'Etymology and Form history: Germanic base of free; *ī from earlier *ij','context','Supplies the independent base-vowel analysis.'),
(949,607,'Etymology Summary and Form history','supports','Publishes the Germanic present-participial formation.'),
(949,621,'FRÆNDI comparative header','context','Supplies the North Germanic reflex and historical participial analysis.'),
(950,620,'Full entry; senses 1–5; 225 citations','supports','Documents the Old Norse textual and semantic record.'),
(951,620,'Citations c179492, c198641, c198959, c198890, and c198323','supports','Supplies manuscript ranges from circa 1200 through circa 1400 and exact citation metadata.'),
(952,607,'Notes on meanings in other Germanic languages','supports','Distinguishes the Scandinavian relation center from West Germanic friend senses.'),
(952,621,'Comparative header: Danish frænde and Swedish frände','context','Publishes the later Scandinavian continuations.'),
(953,611,'Deepest displayed prī- comparison','supports','Supports an explicit stopping point after the proposed root.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(835,213,'Was frændi historically a loving-agent formation?','Yes at the comparative word-formation level. OED places the Old Icelandic form in the inherited participial cognate set, while Cleasby–Vigfússon and Fritzner derive it as a participle of frjá.','established','Three lexicographic traditions converge on the inherited participial analysis.','resolved','The claim concerns historical morphology, not a mandatory contextual meaning in every Old Norse occurrence.'),
(836,213,'Did frændi have only one Old Norse meaning?','No. ONP structures friend, foster brother or companion, kinsman or son, parents, and ancestor senses and says the boundary between friend and kin is not sharp.','established','The 225-citation entry explicitly separates five semantic zones.','resolved','The dossier preserves the structured polysemy.'),
(837,213,'Was kinship the recorded Scandinavian center?','Yes, but not the exclusive sense. Cleasby–Vigfússon and Zoëga center kinsman, while ONP preserves narrower friend and companion groups beside the much broader relative record.','established','Independent historical dictionaries agree on the kinship center without erasing ONP’s friend citations.','resolved','The leaderboard says semantic center, not only meaning.'),
(838,213,'Why did kinship become central in Scandinavian?','Cleasby–Vigfússon and Fritzner propose social explanations involving strong family bonds and mutual obligation, but the textual distribution does not uniquely prove one causal event.','speculative','The explanations are published historical interpretations rather than recoverable semantic events.','open',NULL),
(839,213,'Does sem frændr en eigi sem fiandr prove the ordinary friend sense?','ONP files the phrase under friend but flags possible kin sense 3; Cleasby–Vigfússon treats it as a possible alliterative exception. The citation does not force one clean answer.','probable','The sources explicitly preserve competing classifications of the same phrase.','open',NULL),
(840,213,'Are frændi and fjándi cognates because they are paired and rhyme?','No. They descend from different Germanic verb families. Their Old Norse pairing is rhetorical and semantic, not genealogical.','established','The reviewed friend and enemy dossiers keep distinct reconstructed parents.','resolved','A cited context link preserves the genuine formula without drawing a false ancestry edge.'),
(841,213,'Are frǽndi and frændi different ancestral words?','No distinction is established here. ONP uses frǽndi as an editorial headword, while Cleasby–Vigfússon and Zoëga print frændi for the same masculine noun.','established','The dictionaries align the spellings to one lexical entry.','resolved','Orthographic and vowel-length notation remain documented in notes rather than split into fake ancestors.'),
(842,213,'Can the exact Old Norse pronunciation be heard or uniquely recovered?','No. The displayed IPA is a normalized scholarly approximation; manuscript spelling and comparative phonology cannot reproduce one recorded medieval voice.','probable','The sources are written lexical and manuscript records, not audio.','open',NULL),
(843,213,'Is *frijōnd- an attested Proto-Germanic spelling?','No. It is a normalized reconstruction behind the daughter-language cognates.','established','The sources publish comparative forms and a reconstructed formation, not a Proto-Germanic document.','resolved','The asterisk remains visible.'),
(844,213,'Can the exact Proto-Germanic pronunciation and full paradigm be recovered?','Not completely. Comparative evidence supports the nd-participial morphology, but no written paradigm or recording survives.','probable','The parent form is reconstructed from daughter evidence.','open',NULL),
(845,213,'Did friend or kin come first semantically?','The inherited agent formation and daughter-language distributions do not recover one securely dated semantic split. Old Norse evidence preserves overlap rather than a single transition record.','probable','Textual survival and later lexical centers do not uniquely establish semantic priority.','open',NULL),
(846,213,'Does English friend define what Old Norse frændi must mean?','No. Cognates can diverge semantically. OED explicitly contrasts West Germanic friend with Scandinavian relative, and ONP documents the Old Norse distribution directly.','established','Comparative ancestry and language-specific senses are separate evidence layers.','resolved','The shared graph node does not collapse the daughter-language glosses.'),
(847,213,'Does frændi securely descend from exactly *prī-?','The comparison is published through the shared friend-family route but remains proposed and less secure than the Germanic participial formation.','proposed','No Proto-Indo-European token survives.','open',NULL),
(848,213,'Is one older ancestor securely known beyond proposed *prī-?','No reviewed earlier node clears the evidence boundary.','established','The accessible cited trail ends at the proposed comparison.','resolved','The route ends at UNKNOWN.'),
(849,213,'Was the ordinary friend sense completely absent in Old Norse?','No. ONP explicitly structures a friend sense and a foster-brother or companion sense, even though historical dictionaries emphasize the dominance of kinsman.','established','The structured citation record prevents an absolute absence claim.','resolved','Semantic specialization is represented as a shift in center, not total erasure.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(835,607,'Etymology Summary and North Germanic cognate set','supports','Places frændi in the inherited participial family.'),(835,621,'FRÆNDI: irregular participle of obsolete frjá','supports','Supplies the Old Norse derivation.'),(835,622,'frændi participial header','supports','Independently gives the same grammatical analysis.'),
(836,620,'Full entry; senses 1–5; 225 citations','supports','Publishes the five-part semantic topology.'),
(837,621,'Main definition: a kinsman; comparative semantic note','supports','Centers the Scandinavian kinship sense.'),(837,623,'frændi: kinsman, brother, son; fyrri frændr, ancestors','supports','Independently documents the kinship range.'),(837,620,'Senses 1–5','context','Preserves friend uses beside the dominant relative evidence.'),
(838,621,'Main definition: proposed family-confederacy explanation','supports','Publishes the social explanation as interpretation.'),(838,622,'Sense 2: proposed mutual-obligation explanation','context','Supplies an independent historical rationale without proving one event.'),
(839,620,'Citation c198641; sense 1 with possible sense 3','supports','Explicitly preserves the classification ambiguity.'),(839,621,'Main definition: possible exception in the alliterative phrase','context','Treats the formula as an exceptional friend-like use.'),
(840,620,'Citations c198641 and c198959','supports','Documents the antithetical pairing without an ancestry claim.'),(840,546,'ONP fjándi sense 1; GrgKon I 206:8','context','Confirms the formula from the reviewed enemy dossier.'),(840,607,'Etymology Summary: participial friend family','context','Keeps the friend family on its own base.'),
(841,620,'Headword frǽndi sb. m.','supports','Documents ONP’s editorial spelling.'),(841,621,'Headword FRÆNDI','supports','Documents the historical dictionary spelling for the same entry.'),(841,623,'Headword frændi','context','Adds Zoëga’s normalized spelling.'),
(842,620,'Written headword, variants, and citation corpus','supports','Provides written evidence but no historical audio.'),
(843,607,'Cross-Germanic cognates and reconstructed vowel analysis','supports','Supplies comparative reconstruction rather than an attested proto-token.'),
(844,607,'Form history','supports','Shows the reconstructive complexity of vowel and inflectional history.'),(844,621,'Comparative header','context','Adds daughter-language formal evidence.'),
(845,620,'Senses 1–5 and note that definitions 1 and 3 are not sharply separated','supports','Documents overlapping fields without dating one split.'),(845,607,'Notes on meanings in other Germanic languages','context','Shows divergent later centers but not their exact chronology.'),
(846,607,'Notes: meanings in other Germanic languages','supports','Explicitly distinguishes Scandinavian relative from West Germanic friend senses.'),(846,620,'Full structured entry','supports','Documents the Old Norse distribution directly.'),
(847,611,'Etymology: see prī-','supports','Publishes the deep comparison without direct attestation.'),
(848,611,'Deepest displayed prī- cross-reference','supports','Supports the explicit boundary.'),
(849,620,'Sense 1 friend; sense 2 foster brother or companion','supports','Directly disproves complete absence of friend-like uses.'),(849,621,'Main definition and possible alliterative exception','context','Documents the historical dictionary’s narrower assessment.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(213,213,2105,'frændi','frændi is friend’s cognate—but kinship became its Old Norse center.','The Germanic family did not carry one frozen dictionary definition into every daughter language. OED places Old Icelandic frændi beside English friend; Cleasby–Vigfússon and Fritzner preserve the old participial analysis; ONP then exposes what happened in use. Its 225 citations distinguish friend, foster brother or companion, kinsman or son, parents, and ancestor, with no sharp wall between friend and kin. The unveiling is semantic divergence backed by a shared graph: English centers chosen companion, while the Scandinavian cognate centers family without ceasing to be cognate.','A',100,'The inherited family, Old Norse lemma, corpus scale, five semantic zones, dictionary disagreement, manuscript-qualified citations, and friend-versus-kin distribution are directly cited. Exact historical pronunciation, semantic priority, causal social explanation, and the PIE comparison remain open or proposed.');
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
(213,620,'Full entry; senses 1–5; 225 citations','supports','Publishes the Old Norse semantic topology and corpus scale.'),
(213,621,'FRÆNDI comparative header and main definition','supports','Supplies the participial family and Scandinavian kinsman center.'),
(213,622,'frændi senses 1–2 and participial header','supports','Independently preserves friend and kin senses beside the historical formation.'),
(213,607,'Etymology Summary; meanings in other Germanic languages','supports','Places frændi in the friend cognate set and contrasts the Scandinavian relative sense.'),
(213,623,'frændi: kinsman, brother, son; ancestors','context','Confirms the kinship-centered range.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(19,213,196,'attested_antithetical_pair_non_cognate','FRÆNDR AND FJÁNDR: A TEXTUAL PAIR, NOT A ROOT PAIR','Old Norse records repeatedly oppose frændr and fjándr as allies or kin versus enemies. ONP files the words under separate headwords, and the reviewed graph traces them to different love or favor and hate bases. The bridge preserves an attested rhetorical pairing without manufacturing cognacy from rhyme or antonymy.','Dictionary of Old Norse Prose editors · Richard Cleasby · Guðbrandur Vigfússon · SET-U editorial review','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(19,620,'Citations c198641 and c198959','supports','Publishes two frændr-versus-fiandr formulas and their sense classifications.'),
(19,546,'ONP fjándi sense 1; GrgKon I 206:8','context','Confirms the same pairing from the non-cognate enemy dossier.'),
(19,621,'Main definition: sem frændr en eigi sem fjándr','context','Preserves the historical dictionary’s discussion of the alliterative opposition.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(169,213,196,'FRÆNDR / FJÁNDR: THE RHYME IS REAL; THE SHARED ROOT IS NOT','Follow an attested Old Norse opposition from kin or allies to enemies. The wording is historically real enough to preserve as a cited context bridge, but the graph refuses the tempting false merge: frændi belongs to the loving or favor family, while fjándi belongs to the hating-agent family.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1357 AND 1361
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.status='boundary' THEN 'boundary' WHEN f.id=1357 THEN 'established' WHEN f.normalized_form IN ('frijond','fri') THEN 'probable' ELSE 'proposed' END,
  CASE WHEN f.status='boundary' THEN 'Dossier-specific endpoint beyond the proposed *prī- comparison.' WHEN f.id=1357 THEN 'Attested Old Norse headword supported by the structured ONP record and historical dictionaries.' ELSE 'Canonicalized reconstructed form; comparative uncertainty remains on the cited edges.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1357 AND 1361;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1145 AND 1148;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_form_link ON parent_form_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_form_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1145 AND 1148;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1145 AND 1148;
