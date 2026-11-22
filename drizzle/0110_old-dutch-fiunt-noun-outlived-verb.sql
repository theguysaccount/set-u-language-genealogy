-- Promote Old Dutch fīunt from the graph-derived evidence-ready queue into a
-- historical-stage dossier. The ONW counts twenty-six occurrences and prints
-- six attested case-number cells, while classifying the noun as synchronically
-- unsegmented and explaining that it originated as a present participle of a
-- hate verb no longer known in Dutch. The dossier preserves the full frequency
-- table, representative source records, later-copy boundaries, one disputed
-- Devil reading, and a Groningen record the dictionary assigns to Old Frisian.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(205,'fiunt','fīunt','fiunt','not directly recoverable','Old Dutch masculine noun','Old Dutch fīunt is the normalized headword behind a twenty-six-occurrence historical-dictionary record for enemy or opponent. ONW classifies the noun as synchronically unsegmented but says it was originally the present participle of the verb corresponding to Old High German fīēn and Gothic fijan, a verb no longer known in Dutch. Its frequency table preserves six case-number cells: nominative and genitive singular plus nominative, genitive, dative, and accusative plural. Those are not a complete paradigm. The article displays twenty representative location blocks after warning that locations in the semantic profile have been reduced. Most early Wachtendonck Psalms material is linguistically dated 901–1000 but survives in copies dated 1595–1605, circa 1598, or 1701–1800; no tenth-century manuscript object was inspected. One dfiunt or fiunt gloss aligned with Latin diabolus is textually disputed, and one Groningen psalm gloss is explicitly assigned to Old Frisian by the dictionary. This dossier therefore treats fīunt as a nominal fossil with a partially preserved inflectional record, not as a productive Old Dutch participle or a complete transparent paradigm.','Old Dutch preserved a fossilized “hating one” in twenty-six noun occurrences and six attested case-number cells after the corresponding hate verb disappeared from Dutch. The noun outlived its verb.','reviewed');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1309,205,85,1,'fīunt','fiunt','enemy-noun-old-dutch-fossilized-participle','fīunt',NULL,'attested','Old Dutch; oldest corpus range 901–1000, later records through 1200',901,1200,'enemy or opponent; one disputed gloss may denote the Devil','ONW gives fīunt as its normalized lemma, counts twenty-six appellative occurrences, and prints six attested case-number cells. Its surface inventory totals three nominative singular, three genitive singular, ten nominative plural, one genitive plural, six dative plural, and three accusative plural occurrences. The table does not attest a complete paradigm.'),
(1310,205,85,2,'fīunt / fīant','fiunt-fiant','enemy-opponent-disputed-devil-old-dutch','fīunt / fīant',NULL,'attested','Old Dutch source and etymological aggregate',901,1200,'enemy or opponent; one disputed record may denote the Devil','This combined display reuses the reviewed Old Dutch node in the vijand dossier. ONW supplies fīunt as the lemma; EWN additionally prints fīant in the historical sequence. It is an evidence aggregate, not one directly written token.'),
(1311,205,5,3,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic lexicalized participle',-500,200,'the hating one; lexicalized enemy agent noun','Kroonen reconstructs the Germanic formation. Ayora Estevan argues that the nd-agent noun lexicalized before the separate recorded Germanic branches. It is not a written Old Dutch or Proto-Germanic token.'),
(1312,205,5,4,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with hostility','The lexicalized enemy formation is built on this reconstructed verb. ONW says the corresponding verb is no longer known in Dutch while comparing Old High German fīēn and Gothic fijan.'),
(1313,205,6,5,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European comparison',-4500,-2500,'a proposed base in a harm, blame, suffering, or hostility field','Kroonen publishes this deeper route; EWN gives related *peh₁i- and *pih₁- analyses. The formal details and original semantic center remain proposed.'),
(1314,205,7,6,'UNKNOWN','unknown','fiunt-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely reconstructed earlier ancestor or uniquely recoverable original semantic scene is known.','The trail ends before enemy, hater, hatred, harm, blame, suffering, or Devil is declared the one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1105,205,1309,1310,'paradigm_variant','The normalized lemma fīunt selects the headword used by ONW from a historical aggregate also represented as fīant in EWN. The exact corpus inventory includes fiunt-, fiund-, uiand-, uiend-, and viann- surface forms; this edge is lemma and paradigm navigation, not one sound change between two written tokens.','The records remain inside the enemy or opponent noun, with one separately disputed Devil gloss. No surface variant is assigned every sense.','Instituut voor de Nederlandse Taal editorial team · Marlies Philippa · Frans Debrabandere · Arend Quak','established','The official historical dictionary publishes the lemma, frequency table, and surface forms; EWN supplies the wider historical display. The combined node is editorial aggregation rather than one token.','Old Dutch headword normalization over records linguistically dated 901–1200.','reviewed'),
(1106,205,1310,1311,'inheritance','Old Dutch fīunt or fīant reflects the Germanic nd-agent formation after West Germanic and Dutch-branch vowel, glide, consonant, and inflectional development.','The already lexicalized one-who-hates formation is inherited as the ordinary enemy noun; Christian Devil usage develops inside the attested daughter record rather than inside the reconstruction.','Guus Kroonen · Marlies Philippa · Arend Quak · ONW editorial team','probable','The daughter forms and participial analysis are independently published. The parent remains reconstructed and no written Proto-Germanic token exists.','Proto-Germanic reconstruction into Old Dutch textual evidence.','reviewed'),
(1107,205,1311,1312,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1108,205,1312,1313,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1109,205,1313,1314,'knowledge_boundary','No older form is promoted beyond the proposed *peh₁- comparison.','The trail stops before the fossilized noun, the lost Dutch verb, or the modern category enemy is reverse-engineered into one universal prehistoric essence.','SET-U editorial boundary · Guus Kroonen','boundary','The deepest displayed base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1105,532,'Headword, frequency twenty-six, morphology, inflection table, and semantic profile','supports','Publishes fīunt as the lemma and the complete six-cell frequency inventory.'),
(1105,531,'Historical forms: Old Dutch fīunt / fīant','context','Supplies the wider Old Dutch display used by the aggregate node.'),
(1106,532,'Morphology: originally the present participle of a corresponding verb no longer known in Dutch','supports','Publishes the daughter noun analysis and lexical-loss boundary.'),
(1106,531,'EWN participial origin and Germanic cognate set','supports','Independently places the Old Dutch noun in the inherited family.'),
(1106,491,'p. 140, *fi(j)and- and Dutch descendants','supports','Publishes the reconstructed parent and Dutch branch.'),
(1106,492,'pp. 47–49, lexicalization before the separate Germanic records','context','Supplies the comparative category history.'),
(1107,532,'Morphology: ongeleed; originally a present participle','supports','Separates synchronic Old Dutch noun structure from historical word formation.'),
(1107,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the reconstructed Germanic derivation.'),
(1107,492,'pp. 47–49, nd-agent nouns and participial lexicalization','supports','Explains why the inherited agent noun and productive participle must not be collapsed.'),
(1108,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the qualified route used with proposed confidence.'),
(1108,531,'EWN *peh₁i- / *pih₁- analysis and wider comparisons','context','Shows alternative formal detail within the deeper proposal.'),
(1109,491,'p. 140, deepest comparison used here','supports','Supports an explicit endpoint after the qualified proposal.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(470,1309,532,'901–1000; surviving copy 1595–1605',NULL,'Wachtendonck Psalms, Psalm 53:7','Sense 1; WPs manuscript H, 053,07; South Lower Rhine','Bekere uuel fiundo (l. fiundon) minon.','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a dative-plural record and an editorial reading fiundon. The later copy was not directly inspected, and the language-period range is not a manuscript-object date.'),
(471,1309,532,'901–1000; surviving copy 1595–1605',NULL,'Wachtendonck Psalms, Psalm 54:3','Sense 1; WPs manuscript H, 054,03; South Lower Rhine','Gidruouit bin ... fan stimmon fiundes.','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a genitive-singular fiundes aligned with Latin inimici. The record is dictionary-reported and no manuscript object was inspected.'),
(472,1309,532,'901–1000; surviving copy 1595–1605',NULL,'Wachtendonck Psalms, Psalm 54:13','Sense 1; WPs manuscript H, 054,13; South Lower Rhine','Vuanda ... of fiunt flukit mi ...','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a nominative-singular fiunt in an enemy clause aligned with Latin inimicus. The surviving copy was not directly inspected.'),
(473,1309,532,'901–1000; surviving copy 1595–1605',NULL,'Wachtendonck Psalms, Psalm 55:10','Sense 1; WPs manuscript H, 055,10; South Lower Rhine','than bekeron sulun fiunda mine behaluo.','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a nominative-plural fiunda meaning my enemies. No original tenth-century object is claimed.'),
(474,1309,532,'901–1000; surviving copy 1595–1605',NULL,'Wachtendonck Psalms, Psalm 58:2','Sense 1; WPs manuscript H, 058,02; South Lower Rhine','Gineri mi fan fiundun miun ...','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a dative-plural fiundun aligned with Latin inimicis. The later copy was not directly inspected.'),
(475,1309,532,'901–1000; surviving copy 1595–1605',NULL,'Wachtendonck Psalms, Psalm 60:4','Sense 1; WPs manuscript H, 060,04; South Lower Rhine','turn sterke fan antscenne fiundis.','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a genitive-singular fiundis aligned with Latin inimici. No manuscript object was inspected.'),
(476,1309,532,'901–1000; surviving copy 1701–1800',NULL,'Wachtendonck Psalms, Psalm 67:22','Sense 1; WPs manuscript I, 067,22; South Lower Rhine','got te brecan sal houit fiundo sinro ...','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports the single genitive-plural fiundo in its inflection table. The eighteenth-century copy date is preserved separately from the Old Dutch language date.'),
(477,1309,532,'901–1000; surviving copy 1701–1800',NULL,'Wachtendonck Psalms, Psalm 68:19','Sense 1; WPs manuscript I, 068,19; South Lower Rhine','thuro fiunda mina irlosi im.','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports fiunda in an accusative-plural enemy phrase. The record belongs to a later copy and was not directly inspected at object level.'),
(478,1309,532,'901–1000; surviving copy 1701–1800',NULL,'Wachtendonck Psalms, Psalm 73:3','Sense 1; WPs manuscript I, 073,03; South Lower Rhine','so mikila faruuart heuit fiunt an heiligin.','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a second displayed nominative-singular fiunt. The source record, not an original manuscript object, was inspected.'),
(479,1309,532,'circa 1100',1100,'Leiden Willeram, enemies of God','Sense 1; LW 013,12; Egmond, Holland','ande sint auor thine uiande.','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a nominative-plural uiande and locates the record at Egmond. No codex page was directly inspected.'),
(480,1309,532,'circa 1100',1100,'Leiden Willeram, enemies of bride and bridegroom','Sense 1; LW 073,04; Egmond, Holland','sinan ande minan uiandan ...','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports the dative-plural uiandan inside a longer clause and notes an editorial supplement elsewhere in the passage. No manuscript object was inspected.'),
(481,1309,532,'circa 1100',1100,'Leiden Willeram, army camp','Sense 1; LW 101,11; Egmond, Holland','Thie wolegethrangadon hereberga forghtent thie uiende.','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a nominative-plural uiende. The historical-dictionary surface was inspected, not the underlying witness object.'),
(482,1309,532,'1151–1175; language assignment boundary',NULL,'Groningen psalm glosses','Sense 1; CG 135,10; Groningen','[de ini]micis fonta fiundum.','probable','lexical_corpus_record',NULL,NULL,NULL,0,'ONW displays the dative-plural fiundum but explicitly says the Groningen psalm glosses are counted as Old Frisian. The row preserves that boundary and does not use the token as uncomplicated Old Dutch proof.'),
(483,1309,532,'1151–1200',NULL,'Middle Franconian rhymed text, recension B','Mfr.Reimb. B, line 564; Werden, Essen?','Thu scalt uon thinen viannden beseszen werden ...','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW marks viannden as sic and reports the Werden or Essen localization with uncertainty. No object was directly inspected.'),
(484,1309,532,'1151–1200',NULL,'Middle Franconian rhymed text, recension A','Mfr.Reimb. A, line 350; Werden, Essen?','Woldon mig ... mine úiande uan ...','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports a nominative-plural uiande and an uncertain Werden or Essen localization. The record is source-reported.'),
(485,1309,532,'901–1000; surviving copy circa 1598',NULL,'Wachtendonck Psalms glosses, Habakkuk 3:5','Sense 2; WPs glosses, Abac. 003,05; South Lower Rhine','Dfiunt (l. fiunt ?). diabolus Cant Abac.','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'ONW reports that most editions read fiunt, Heyne proposed an error for diufil, and the initial D has competing analyses. This is not promoted as a secure Devil token or a directly inspected tenth-century object.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1063,205,'viant / vient','Middle Dutch','the later historical stage continued by modern Dutch vijand',531),
(1064,205,'vijand','Dutch','the reviewed modern continuation',531),
(1065,205,'fiānd / fiūnd','Old Frisian','a collateral West Germanic cognate',532),
(1066,205,'fiund','Old Saxon','a collateral West Germanic cognate',531),
(1067,205,'fīant','Old High German','a reviewed collateral West Germanic enemy noun',491),
(1068,205,'fēond','Old English','a reviewed collateral West Germanic enemy noun continued by fiend',491),
(1069,205,'fijands','Gothic','a reviewed East Germanic enemy noun with live participial overlap',492),
(1070,205,'fjándi','Old Norse','a reviewed North Germanic cognate',491),
(1071,205,'fiende','Swedish','a reviewed North Germanic continuation',491);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(885,205,1,'Proposed Indo-European linguistic horizon','proposed *peh₁- comparison','The deepest route is a comparative linguistic proposal, not a word recovered at one archaeological site.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon attached to a proposed analysis.'),
(886,205,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and lexicalized *fi(j)and-','Cross-branch evidence places the hate verb and enemy-agent formation before the separate written Germanic traditions.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token or single coordinate.'),
(887,205,3,'South Lower Rhine Old Dutch record','Wachtendonck Psalms material, linguistically dated 901–1000','ONW locates the records in the South Lower Rhine while labeling their surviving copies 1595–1605, circa 1598, or 1701–1800. The dossier preserves both clocks.',NULL,NULL,'broad',901,1000,'range','Language-period dating is not a surviving manuscript-object date or a word-birth date.'),
(888,205,4,'Egmond, Holland','three Leiden Willeram records, circa 1100','The displayed uiande, uiandan, and uiende records show later Old Dutch nominal continuation in three separate clauses.',NULL,NULL,'regional',1075,1125,'range','A bounded circa interval around the corpus date, not one exact token year or manuscript coordinate.'),
(889,205,5,'Groningen','fiundum in a psalm gloss, 1151–1175','ONW displays the record in the article but explicitly says the Groningen psalm glosses are counted as Old Frisian. The map preserves the classification boundary.',NULL,NULL,'regional',1151,1175,'range','A corpus range with an explicit language-assignment caveat.'),
(890,205,6,'Werden, Essen?','uiande and viannden, 1151–1200','Two Middle Franconian rhymed-text recensions continue the noun. ONW prints the localization with a question mark, so the coordinate remains unresolved.',NULL,NULL,'broad',1151,1200,'range','A bounded text range and uncertain localization, not an exact movement event.'),
(891,205,7,'Dutch-language continuum','Middle Dutch viant or vient to modern vijand','The noun continues after the Old Dutch record while the corresponding inherited hate verb remains absent from known Dutch history.',NULL,NULL,'broad',1200,2026,'range','A language-history continuation rather than one geographic journey.'),
(892,205,8,'Knowledge boundary','beyond the proposed Indo-European comparison','The graph stops before enemy, hater, hatred, Devil, harm, blame, or suffering is declared the one certain prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(885,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the deepest route used with proposed confidence.'),
(885,531,'EWN deeper comparison and alternative notation','context','Shows formal variation inside the proposed comparison.'),
(886,491,'p. 140, *fi(j)ēn- and *fi(j)and-','supports','Publishes the reconstructed Germanic verb and enemy formation.'),
(886,492,'pp. 47–49, pre-branch lexicalization','context','Places the agent-noun lexicalization before the daughter records.'),
(887,532,'WPs location labels, Old Dutch dates, and surviving-copy dates','supports','Separates South Lower Rhine language dating from later material transmission.'),
(888,532,'LW 013,12; LW 073,04; LW 101,11; Egmond; circa 1100','supports','Publishes three located Leiden Willeram records and their forms.'),
(889,532,'Groningen psalm glosses CG 135,10 and language note','supports','Provides the location, date range, form, and explicit Old Frisian assignment.'),
(890,532,'Mfr.Reimb. A, line 350 and B, line 564; Werden, Essen?','supports','Publishes both late Old Dutch records and the uncertain localization.'),
(891,531,'Old, Middle, and New Dutch form sequence','supports','Documents continuation from fīunt or fīant through viant or vient to vijand.'),
(892,491,'p. 140, deepest modern comparison used here','supports','Supports stopping after the qualified proposal.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(702,205,'Was Old Dutch fīunt a noun?','Yes. ONW classifies it as a masculine noun, calls all twenty-six occurrences appellative, and supplies a nominal inflection table.','established','The official historical dictionary provides explicit word class, frequency, and case-number data.','resolved','The dossier labels the attested form a masculine noun.'),
(703,205,'Was fīunt still a productive present participle in Old Dutch?','No on the reviewed evidence. ONW calls it synchronically unsegmented while explaining that it was originally the present participle of the corresponding hate verb.','established','The same morphology note separates historical formation from synchronic Old Dutch structure.','resolved','Attested fīunt is never relabeled as a productive Old Dutch participle.'),
(704,205,'Did the corresponding hate verb survive in Dutch?','Not as a known Dutch continuation. ONW says the verb corresponding to Old High German fīēn and Gothic fijan is no longer known in Dutch.','established','The lexical-loss statement is explicit in the historical dictionary.','resolved','The Dutch trail displays the verb only at the reconstructed Germanic level while linking sideways to attested daughter verbs.'),
(705,205,'Does frequency twenty-six mean twenty-six surviving manuscripts?','No. It is an occurrence frequency inside the dictionary corpus. The semantic profile currently displays twenty representative location blocks and explicitly warns that locations have been reduced.','established','ONW separately gives total frequency, source records, and a reduction warning.','resolved','The interface says occurrences, never manuscripts or independently preserved objects.'),
(706,205,'Do the 901–1000 labels identify surviving tenth-century manuscript objects?','No. ONW pairs those language-period dates with much later copy labels, including 1595–1605, circa 1598, and 1701–1800.','established','The source metadata publishes both dating layers.','resolved','Every WPs attestation remains directly_inspected=0 and preserves its later-copy label.'),
(707,205,'Does the six-cell table preserve the complete Old Dutch paradigm?','No. It attests nominative and genitive singular plus nominative, genitive, dative, and accusative plural. Unrecorded cells must not be invented.','established','The ONW inflection table contains exactly those six case-number rows and no complete paradigm claim.','resolved','The truth claim says six attested cells, not complete declension.'),
(708,205,'Does dfiunt or fiunt securely name the Devil?','No. ONW reports that most editions read fiunt, Heyne proposed an error for diufil, both can render Latin diabolus, and the initial D has competing analyses.','proposed','The historical dictionary publishes the textual alternatives in its second sense.','open',NULL),
(709,205,'Was Devil the ordinary meaning of fīunt?','No. ONW defines the main sense as enemy or opponent and says other WPs occurrences translate Latin inimicus; the Devil branch depends on the disputed diabolus gloss.','established','The semantic profile separates the broad first sense from one disputed second-sense record.','resolved','The main gloss remains enemy or opponent.'),
(710,205,'Is the Groningen fiundum record straightforward Old Dutch evidence?','No. ONW displays it but explicitly says the Groningen psalm glosses are counted as Old Frisian.','established','The source itself states the language assignment.','resolved','The record is retained as a documented boundary with probable confidence, not counted as uncomplicated Old Dutch proof.'),
(711,205,'Do all printed spellings represent separate lexemes?','No. ONW groups fiunt, dfiunt, fiundis, fiundes, fiunda, uiande, uiende, fiundo, fiundun, fiundum, uiandan, and viannden inside one lemma and inflection table, while flagging individual readings.','established','The complete frequency table organizes the surfaces by case and number under one headword.','resolved','One canonical attested node preserves variants in evidence rows instead of creating false ancestry branches.'),
(712,205,'Was fīunt borrowed from German, Gothic, English, Frisian, or Norse?','No borrowing is established. The daughter nouns are collateral inherited descendants of the reconstructed Germanic formation.','probable','ONW, EWN, Kroonen, and Ayora Estevan publish the cross-Germanic family.','resolved','The graph joins the branches at *fi(j)and- and draws no daughter-to-daughter donor edge.'),
(713,205,'Does fīunt securely descend from exactly *peh₁-?','Only as a qualified proposal. The Germanic noun-and-verb relationship is firmer than the displayed Indo-European route, whose notation and semantic framing vary.','proposed','Kroonen and EWN publish related but not identical deeper analyses.','open',NULL),
(714,205,'Does the etymology prove that every enemy truly hates?','No. Historical word formation does not determine the psychology of every referent. The corpus includes singular, plural, religious, military, and collective opponents.','established','The ONW contexts and comparative formation support lexical history, not a universal claim about real enemies.','resolved','The leaderboard reveals the fossilized formation while rejecting the etymological fallacy.'),
(715,205,'Were any underlying manuscript objects directly inspected for this dossier?','No. This review inspected the ONW article and its expanded source-reported records, not the Wachtendonck Psalms copies, Leiden Willeram codex, Groningen gloss object, or rhymed-text witnesses.','established','All attestation evidence comes from the historical-dictionary surface and carries no object-level facsimile verification.','resolved','All sixteen attestation rows remain directly_inspected=0 and no witness-inspection row is created.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(702,532,'Headword grammar, total frequency, and inflection table','supports','Classifies the word as a masculine noun and documents nominal case-number cells.'),
(703,532,'Morphology: ongeleed; originally the present participle','supports','Separates synchronic noun status from historical participial formation.'),
(703,492,'pp. 47–49, lexicalized nd-agent nouns','context','Explains the inherited category change comparatively.'),
(704,532,'Morphology: corresponding verb no longer known in Dutch','supports','Directly states the lexical loss.'),
(704,531,'EWN participial origin and historical forms','context','Independently preserves the reconstructed formation behind the noun.'),
(705,532,'Frequency twenty-six; semantic-profile reduction warning; expanded source records','supports','Distinguishes total occurrences from the representative displayed location set.'),
(706,532,'WPs language dates and surviving-copy labels','supports','Publishes the separate linguistic and material-transmission chronologies.'),
(707,532,'Inflection table: six case-number rows with frequencies totaling twenty-six','supports','Defines the attested cells and prevents invented missing forms.'),
(708,532,'Sense 2 commentary and Abac. 003,05 variants','supports','Publishes the competing fiunt, diufil, and initial-D analyses.'),
(709,532,'Sense 1 enemy or opponent; sense 2 note on inimicus versus diabolus','supports','Shows the ordinary sense and the narrow disputed Devil branch.'),
(710,532,'Groningen psalm glosses CG 135,10 language note','supports','Explicitly assigns the source group to Old Frisian.'),
(711,532,'Complete inflection table and surface inventory','supports','Groups the written variants under one noun paradigm.'),
(712,532,'Cognates and historical dictionary links','supports','Places Old Dutch beside Old Frisian and the wider inherited family.'),
(712,491,'p. 140, reconstructed parent and daughter forms','supports','Places daughter nouns under shared ancestry.'),
(712,492,'pp. 47–49, pre-branch lexicalization','context','Supports common inheritance before the daughter records.'),
(713,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the qualified route used in the graph.'),
(713,531,'EWN *peh₁i- / *pih₁- analysis','context','Shows alternative notation and comparison detail.'),
(714,532,'Sense 1 source records across singular and plural contexts','supports','Documents referential breadth beyond a universal psychological claim.'),
(715,532,'ONW lexical article and source-reported location blocks','supports','Provides record-level text without manuscript-object inspection.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(205,205,2103,'fīunt','The Old Dutch enemy noun outlived the hate verb that created it.','ONW counts twenty-six fīunt occurrences across six attested case-number cells, yet classifies the noun as synchronically unsegmented and says the corresponding hate verb is no longer known in Dutch. Comparative evidence reconstructs the noun as an old present-participial formation: the hating one. The grammar therefore preserves a fossil in nominative, genitive, dative, and accusative records after Dutch lost the living verb that once made the formation transparent. Six cells are evidence, not a complete paradigm; the early Psalms records survive in later copies; and the lone Devil gloss is disputed.','A',100,'The lexical-loss statement, frequency table, and six attested cells are explicit in ONW. The participial formation is independently supported by EWN, Kroonen, and Ayora Estevan. The claim does not make attested fīunt a productive participle, invent missing paradigm cells, or treat later copies as tenth-century objects.');
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
(205,532,'Morphology, total frequency twenty-six, six-row inflection table, source records, and copy dates','supports','Directly supports the noun status, lexical loss, corpus size, surviving grammar, and evidence boundaries.'),
(205,531,'EWN participial origin and Old Dutch form sequence','supports','Independently supports the fossilized present-participial formation.'),
(205,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the reconstructed Germanic word-formation relation.'),
(205,492,'pp. 47–49, pre-branch nd-agent lexicalization','context','Explains how an inherited participial formation became a noun before the Old Dutch record.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(161,205,198,'THE DUTCH NOUN OUTLIVED WHAT OLD HIGH GERMAN KEPT','Old Dutch fīunt survives as an unsegmented enemy noun in twenty-six records after the matching hate verb disappears from Dutch. Follow the family sideways to Old High German fīēn, where the living verb still appears in eighth- and ninth-century Alemannic records beside the fossilized enemy noun fīant.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1309 AND 1314
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1311,1312,1313) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1309 THEN 'Promoted from the graph-derived top evidence-ready candidate into a complete Old Dutch corpus, inflection, transmission, classification-boundary, dispute, journey, graph, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1309 AND 1314;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1105 AND 1109;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1105 AND 1109;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1105 AND 1109;
