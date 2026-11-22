-- Promote Danish fjende from the graph-derived evidence-ready queue into a
-- complete dossier. The modern dictionary explicitly identifies the noun as a
-- fossilized present participle of the lost Germanic hate verb, while the
-- historical dictionaries preserve Old Danish fiende, unstable syllable and
-- spelling patterns, ordinary-enemy uses, a Devil branch, and wide figurative
-- extension. Formation, current meaning, and the deepest proposal remain
-- separate claims.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(88,'danish','Danish','Indo-European','North Germanic',0,1500,2026,'Modern Danish. The reviewed dossier uses the current Den Danske Ordbog and historical records without treating one standard pronunciation as timeless.'),
(89,'old-danish','Old Danish','Indo-European','North Germanic',0,1100,1500,'The medieval Danish stage represented by Gammeldansk Ordbog. Its broad known-since range is retained rather than converted into a fabricated exact first token.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(197,'fjende','fjende','fjende','[ˈfjenə] or [ˈfjεnə]','Danish common-gender noun','Modern Danish fjende is the ordinary noun for a person, state, force, ideological opponent, or figurative thing that harms something else. Den Danske Ordbog derives it from Old Norse fjándi, compares German Feind, and identifies the older formation as a present participle of a verb corresponding to Old Norse fjá, to hate or persecute. Gammeldansk Ordbog records fiende broadly from 1100–1300. Ordbog over det danske Sprog preserves fiende, finde, and related spellings, an ordinary enemy sense, military and animal uses, abstract threats, and a special religious Devil branch. Holbergordbog shows that Fiende could still scan as either three syllables or two, alongside Fiænde, Finde, Fînde, and clipped Fiend. The word is therefore a grammatical fossil, not a current psychological definition: a lexicalized one-who-hates became the ordinary Danish enemy noun and accumulated broad contextual work. The current pronunciations are dictionary records, not retrojections into medieval Danish. No manuscript or print object is claimed as directly inspected.','Danish fjende is a frozen present participle of a lost hate verb. Modern Danish kept the enemy but lost the verb that once made the noun transparently one-who-hates.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(550,'ddo-fjende','Den Danske Ordbog — fjende','Den Danske Ordbogs redaktion',NULL,'Det Danske Sprog- og Litteraturselskab','https://ordnet.dk/ddo/ordbog/fjende',NULL,'contemporary_dictionary'),
(551,'ods-fjende','Ordbog over det danske Sprog — Fjende','ODS editorial team',1922,'Det Danske Sprog- og Litteraturselskab','https://ordnet.dk/ods/ordbog/fjende',NULL,'historical_dictionary'),
(552,'gammeldansk-fiende','Gammeldansk Ordbog — fiende','Gammeldansk Ordbogs redaktion',NULL,'Det Danske Sprog- og Litteraturselskab','https://ordnet.dk/go/ordbog/fiende',NULL,'historical_dictionary'),
(553,'holbergordbog-fiende','Holbergordbog — Fiende','Aage Hansen · Sv. Eegholm-Pedersen · Christopher Maaløe',NULL,'Det Danske Sprog- og Litteraturselskab','https://ordnet.dk/ho/ordbog/Fiende',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1264,197,88,1,'fjende','fjende','enemy-opponent-hostile-force-danish','fjende','[ˈfjenə] or [ˈfjεnə]','attested','modern Danish and documented early-modern continuation',1500,2026,'enemy or opponent; hostile person, state, force, ideology, animal, or figurative threat','DDO classifies a common-gender noun with plural fjender and gives two current pronunciations. Its senses cover a hostile person, wartime opponent, personal enemy, opponent of an institution or view, and a figurative harmful thing. Historical sources preserve earlier surface variation.'),
(1265,197,89,2,'fiende','fiende','enemy-old-danish','fiende',NULL,'attested','Old Danish, known since 1100–1300',1100,1500,'enemy','Gammeldansk Ordbog gives the headword fiende, labels it a noun, glosses it fjende, and reports the broad known-since range 1100–1300. No exact earliest citation card or manuscript object was successfully inspected.'),
(1266,197,5,3,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic lexicalized participle',-500,200,'the hating one; lexicalized enemy agent noun','Kroonen reconstructs the formation, and Ayora Estevan places its lexicalization before the recorded Germanic branches. It is not a written Danish or Proto-Germanic token.'),
(1267,197,5,4,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with hostility','The reconstructed verb survives in collateral Germanic records including Old Norse fjá, Gothic fijan, Old English fēogan, and Old High German fîên, but not as the productive modern Danish verb for hate.'),
(1268,197,6,5,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European comparison',-4500,-2500,'a proposed base in a harm, blame, suffering, or hostility field','Kroonen publishes this deeper comparison. ODS preserves an older Sanskrit comparison, but the dossier does not splice the two analyses into a falsely certain intermediate chain.'),
(1269,197,7,6,'UNKNOWN','unknown','fjende-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely reconstructed earlier ancestor or uniquely recoverable original semantic scene is known.','The trail ends before hater, enemy, Devil, war, persecution, or hostility is declared the one timeless essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1068,197,1264,1265,'historical_continuation','Old Danish fiende continues through competing Fiende, Fiænde, Finde, Fînde, and Fiend spellings and two- versus three-syllable realizations before modern fjende and its current pronunciations stabilize.','The ordinary enemy noun remains central while wartime, ideological, animal, abstract-threat, and historical Devil branches remain contextually available.','Den Danske Ordbogs redaktion · ODS editorial team · Aage Hansen · Sv. Eegholm-Pedersen','probable','The linked dictionaries publish the forms, pronunciations, and sense network. They do not supply one uniquely dated sound change from every historical spelling to the modern standard.','Old Danish record through early-modern variation into current Danish.','reviewed'),
(1069,197,1265,1266,'inheritance','Old Danish fiende continues the North Germanic reflex of the inherited fi(j)- plus nd agent formation, with branch-specific vowel, glide, ending, and inflectional developments.','The already lexicalized one-who-hates formation is inherited as an ordinary enemy noun; the Devil and broader figurative branches belong to attested Danish semantic history.','Den Danske Ordbogs redaktion · ODS editorial team · Daniel Ayora Estevan · Guus Kroonen','probable','Old Danish fiende and the cross-Germanic derivation are published. The exact prehistoric phonetics and every semantic innovation remain reconstructed or textually bounded.','Proto-Germanic reconstruction into the Old Danish 1100–1300 known-since range.','reviewed'),
(1070,197,1266,1267,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1071,197,1267,1268,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1072,197,1268,1269,'knowledge_boundary','No older form is promoted beyond the qualified *peh₁- comparison.','The trail ends before the historically attested enemy, Devil, war-opponent, animal, ideological-opponent, or figurative-threat senses are reverse-engineered into one universal prehistoric essence.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1068,550,'Headword, pronunciations, origin, senses 1–1.d, derivatives and compounds','supports','Supplies the current form, two pronunciations, grammar, sense network, and derivational family.'),
(1068,551,'Headword forms and senses 1–2','supports','Preserves historical fiende, finde, syllable commentary, ordinary, religious, animal, figurative, and military uses.'),
(1068,553,'Headword form history; senses 1–3','supports','Documents two- and three-syllable scansion, variant spellings, clipped Fiend, and broad Holberg-era semantics.'),
(1069,552,'Headword fiende; known since 1100–1300','supports','Supplies the Old Danish form and bounded chronology.'),
(1069,550,'Origin: Old Norse fjándi, German Feind, present participle of a verb corresponding to Old Norse fjá','supports','Publishes the inherited comparative and participial analysis.'),
(1069,551,'Etymological parenthesis: Old Danish fiende, Old Norse fjándi, Gothic fijands','context','Independently preserves the older Danish and cross-Germanic set.'),
(1069,491,'p. 140, *fi(j)and- and North Germanic descendants','supports','Publishes the reconstructed parent formation.'),
(1069,492,'pp. 47–49, pre-branch lexicalization','context','Places lexicalization before the daughter-language records.'),
(1070,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the reconstructed Germanic word-formation relation.'),
(1070,492,'pp. 47–49, lexicalized enemy noun beside productive participial behavior','context','Supports pre-branch lexicalization while preserving category distinctions.'),
(1071,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used with reduced confidence.'),
(1072,491,'p. 140, deepest modern comparison used in this dossier','supports','Supports stopping after the qualified proposal rather than inventing an earlier form.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(423,1265,552,'known since 1100–1300; no exact first token exposed',NULL,'Gammeldansk Ordbog headword record','Headword fiende; Kendt siden 1100–1300','fiende','established','lexical_corpus_record',NULL,NULL,NULL,0,'The dictionary supplies a broad known-since interval and the gloss fjende. The linked citation-card server did not yield an inspectable record, so no exact year, text, repository object, or first-use claim is added.'),
(424,1264,551,'Peder Syv Viser, source-reported 1695',1695,'Peder Syv song collection','ODS sense 2, PSyv.Viser (1695), p. 586','Lad som korn opvoxe knekte / Der kand frisk mod fienden fekte','established','lexical_corpus_record',NULL,NULL,NULL,0,'ODS reports the dated printed citation under collective wartime enemy. The underlying 1695 page was not directly inspected.'),
(425,1264,553,'Holberg Tyboe record, source-reported 1731',1731,'Jacob von Tyboe','Holbergordbog headword, Tyb (1731) V 8','Fiænde','established','lexical_corpus_record',NULL,NULL,NULL,0,'Holbergordbog reports Fiænde in the 1731 text and Fiende in a 1742 version. No print object was directly inspected.'),
(426,1264,553,'Holberg corpus; three-syllable scansion',NULL,'Peder Paars line','Holbergordbog headword, Paars 45','Til Lycke fandt man en ... som var ... tienlig Fienden at holde fra sit Liv','established','lexical_corpus_record',NULL,NULL,NULL,0,'The dictionary files the line under three-syllable Fiende. This is an edited lexical and metrical report, not a recording or inspected first edition.'),
(427,1264,553,'Holberg corpus; two-syllable scansion',NULL,'Peder Paars line','Holbergordbog headword, Paars 99','At Fiendens største Magt var flygtet allerede','established','lexical_corpus_record',NULL,NULL,NULL,0,'The dictionary files the line under two-syllable realization and compares Finde and Fînde spellings. No audio or underlying print object is claimed.'),
(428,1264,551,'historical religious use; source-reported',NULL,'the old enemy as the Devil','ODS sense 1.1 and supplement','Den gamle Fjende','established','lexical_corpus_record',NULL,NULL,NULL,0,'ODS explicitly identifies the phrase as a religious use for the Devil. It is a semantic branch, not the noun’s sole or original Danish meaning.'),
(429,1264,551,'historical animal use; source-reported',NULL,'lamb and wolf example','ODS sense 1.2, Tullin II.61','Saasnart et Lam seer en Ulv, seer det sin Fiende','established','lexical_corpus_record',NULL,NULL,NULL,0,'ODS files the example under extension to animals. The citation is source-reported and the underlying edition was not inspected.'),
(430,1264,550,'modern example dated 1991 by source',1991,'schoolbook historical narrative','DDO sense 1, skoleb1991','Kong Erik havde nemlig mange fjender','established','lexical_corpus_record',NULL,NULL,NULL,0,'DDO supplies the dated example for the ordinary personal and political enemy sense.'),
(431,1264,550,'modern example dated 1988 by source',1988,'newspaper personal-enemy joke','DDO sense 1.b, NyDag1988','jeg har heller ingen fjender – de er også døde','established','lexical_corpus_record',NULL,NULL,NULL,0,'DDO supplies the dated example under the personal enemy or uven branch.'),
(432,1264,550,'modern example dated 1992 by source',1992,'newspaper ideological-opponent use','DDO sense 1.c, JyP1992','demokratiets fjender','established','lexical_corpus_record',NULL,NULL,NULL,0,'DDO supplies the dated example for opponents of an institution or political order.'),
(433,1264,550,'modern example dated 1992 by source',1992,'television figurative-threat use','DDO sense 1.d, TV21992','Regn og fugtig luft er frisurens værste fjende','established','lexical_corpus_record',NULL,NULL,NULL,0,'DDO supplies the dated figurative example. Rain is not part of the inherited agent gloss; the record documents semantic extension.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(943,197,'fiende','Old Danish','the medieval Danish form recorded broadly from 1100–1300',552),
(944,197,'Fiende','historical Danish','a major historical spelling that could scan as either three syllables or two',553),
(945,197,'Fiænde','historical Danish','a Holberg-era variant reported in 1731',553),
(946,197,'Finde','historical Danish','a two-syllable-associated historical spelling',553),
(947,197,'Fînde','historical Danish','a historical spelling compared with the two-syllable realization',553),
(948,197,'Fiend','historical Danish','a clipped poetic surface form in Holbergordbog',553),
(949,197,'fjenden','Danish','the definite singular form',550),
(950,197,'fjender','Danish','the plural form',550),
(951,197,'fjenderne','Danish','the definite plural form',550),
(952,197,'fjendsk','Danish','a derivative adjective',550),
(953,197,'fjendskab','Danish','a derivative noun for enmity or hostility',550),
(954,197,'fjendtlig','Danish','a derivative adjective for hostile',550),
(955,197,'fjendeland','Danish','a compound for enemy country or territory',550),
(956,197,'arvefjende','Danish','a compound for hereditary or traditional enemy',550),
(957,197,'dødsfjende','Danish','a compound for mortal enemy',550),
(958,197,'folkefjende','Danish','a compound for enemy of the people',550),
(959,197,'hovedfjende','Danish','a compound for principal enemy',550),
(960,197,'fjándi','Old Norse','the North Germanic historical comparison named by DDO',550),
(961,197,'fjá','Old Norse','the collateral hate or persecute verb used in the historical formation analysis',550),
(962,197,'Feind','German','a collateral inherited enemy noun named by DDO',550),
(963,197,'fiend','English','a collateral inherited noun whose demonic branch became central',491),
(964,197,'fijands','Gothic','an East Germanic cognate preserving noun and participial evidence',551);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(826,197,1,'Proposed Indo-European linguistic horizon','proposed *peh₁- comparison','The deepest route is a comparative proposal, not a word recovered at one archaeological site.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon attached to a proposed analysis.'),
(827,197,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and lexicalized *fi(j)and-','Cross-branch evidence places the hate verb and enemy formation before the written Germanic traditions.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token or single coordinate.'),
(828,197,3,'Old Danish textual horizon','fiende known since 1100–1300','Gammeldansk Ordbog supplies the broad Danish record without one exposed earliest witness.',NULL,NULL,'broad',1100,1300,'range','A source-reported range rather than an exact token date.'),
(829,197,4,'Early-modern Danish textual world','1695–1742 printed records and form variation','ODS and Holbergordbog expose fienden, Fiende, Fiænde, Finde, Fînde, Fiend, and competing syllable patterns.',NULL,NULL,'broad',1695,1742,'range','A bounded record window, not the complete lifespan of any variant.'),
(830,197,5,'Modern Danish corpus','1988–1992 dated examples','DDO documents personal, political, and figurative enemy uses in dated modern examples.',NULL,NULL,'broad',1988,1992,'range','Source-reported publication dates for selected examples.'),
(831,197,6,'Current Danish','dictionary state through 2026','Current grammar, two pronunciations, derivatives, compounds, and sense distinctions remain public in DDO.',NULL,NULL,'broad',1992,2026,'range','A current lexical horizon, not a claim that every form began in 1992.'),
(832,197,7,'Knowledge boundary','beyond the proposed Indo-European comparison','The graph stops before one social scene or emotion is declared the recoverable origin of every later enemy use.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(826,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the deepest comparison used with proposed confidence.'),
(827,491,'p. 140, *fi(j)ēn- and *fi(j)and-','supports','Publishes the reconstructed Germanic verb and lexicalized enemy formation.'),
(827,492,'pp. 47–49, pre-branch lexicalization','context','Places lexicalization before the written daughter records.'),
(828,552,'Headword fiende; Kendt siden 1100–1300','supports','Supplies the bounded Old Danish horizon.'),
(829,551,'1695 wartime citation; historical form discussion','supports','Supplies one dated printed record and broader form history.'),
(829,553,'Headword form history; Tyb 1731 and 1742; Paars scansion','supports','Documents the early-modern variants and pronunciation evidence.'),
(830,550,'Dated examples NyDag1988, skoleb1991, JyP1992, TV21992','supports','Supplies the modern example horizon.'),
(831,550,'Current headword, pronunciations, senses and word formations','supports','Supplies the current lexical state.'),
(832,491,'p. 140, deepest comparison used here','supports','Supports the explicit endpoint after a qualified proposal.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(572,197,'Does fjende literally mean hater today?','No. One-who-hates describes the inherited formation. Current Danish defines an enemy by opposition or harm, not by a required inner emotion.','established','DDO separates current senses from its origin note.','resolved','The dossier exposes morphology without committing the etymological fallacy.'),
(573,197,'Was Danish fjende borrowed from German Feind?','No borrowing route is established here. DDO compares both with Old Norse fjándi, and comparative research places them under the inherited Germanic formation.','probable','DDO, Kroonen, and Ayora Estevan support collateral inheritance.','resolved','The graph joins the words at a reconstructed ancestor and draws no German-to-Danish arrow.'),
(574,197,'What is the exact earliest surviving Danish fjende token?','Not established by the inspected public evidence. Gammeldansk Ordbog reports fiende as known since 1100–1300 but exposes no exact first token on the entry page.','established','The public headword gives a range; the linked citation-card collection did not yield an inspected object.','open',NULL),
(575,197,'Was historical Fiende pronounced with two syllables or three?','Both patterns are source-reported. Holbergordbog separates three-syllable and two-syllable scans and links the latter with Finde and Fînde forms.','established','The headword article supplies multiple metrical examples in each group.','resolved','Variation remains visible rather than being normalized into one timeless pronunciation.'),
(576,197,'Are Fiende, Fiænde, Finde, Fînde, and Fiend separate words?','Not in the reviewed articles. They are treated as surface and scansion variants of the same lexical family.','established','ODS and Holbergordbog organize them under Fjende or Fiende.','resolved','The forms remain relatives and attestations, not false ancestry nodes.'),
(577,197,'Did Danish fjende ever mean the Devil?','Yes in a bounded religious branch. ODS identifies den gamle Fjende and related uses as the Devil, while ordinary enemy remains the general sense.','established','ODS sense 1.1 and its supplement label the religious use.','resolved','The Devil is neither erased nor promoted into the word’s sole original meaning.'),
(578,197,'Was the Devil meaning the original Danish sense?','No source inspected establishes that. Old Danish is glossed simply enemy, and the historical dictionaries present Devil as a special development inside the broader enemy field.','probable','Gammeldansk Ordbog, ODS, and the comparative formation support ordinary enemy as the lexicalized category.','resolved','The graph separates inherited formation from later contextual specialization.'),
(579,197,'Can fjende refer only to people?','No. Historical and current records apply it to states, military forces, animals, ideologies, weather, sleep, passions, and other harmful abstractions.','established','ODS, Holbergordbog, and DDO publish the extensions.','resolved','The dossier models extensions without turning them into separate ancestors.'),
(580,197,'Does DDO preserve the lost verbal meaning?','It preserves the historical analysis, not a productive modern Danish verb: the noun was originally a present participle of a verb corresponding to Old Norse fjá, hate or persecute.','established','DDO states the formation directly in its origin field.','resolved','Modern meaning and historical grammar remain separate fields.'),
(581,197,'Does the ODS Sanskrit comparison prove a direct Sanskrit-to-Danish line?','No. ODS preserves an older comparison with Sanskrit pīyati, while modern comparative work gives a reconstructed route. Neither source licenses a historical borrowing or direct line.','established','ODS and Kroonen represent different analytical layers.','open',NULL),
(582,197,'Can the exact change from fiende to fjende be dated to one event?','No. The records show overlapping spellings, syllable patterns, and editorial judgments rather than one recoverable switch.','probable','ODS and Holbergordbog document coexistence and commentary across editions.','open',NULL),
(583,197,'Does known since 1100–1300 mean the word was coined then?','No. It bounds surviving Old Danish evidence and does not date the prehistoric lexicalization or first spoken Danish use.','established','The historical entry supplies an evidence range, while comparative sources place formation earlier.','resolved','Corpus onset and word creation are not conflated.'),
(584,197,'Does Holberg scansion reproduce ordinary speech exactly?','Not necessarily. It is evidence for metrical realization and variation, not audio or a complete social map of pronunciation.','established','Holbergordbog explicitly analyzes scanning and spellings; ODS also preserves prescriptive disagreement.','resolved','The pronunciation history is evidence-bounded.'),
(585,197,'Was English fiend borrowed from Danish fjende?','No. They are collateral inherited continuations; English specialized the demonic branch much more strongly.','probable','Kroonen and the reviewed English and Danish dictionaries support shared ancestry and separate semantic histories.','resolved','The rabbit hole compares siblings without inventing transmission.'),
(586,197,'Is *fi(j)and- an attested Danish word?','No. It is a normalized Proto-Germanic reconstruction used to explain cross-branch evidence.','established','Kroonen marks the form as reconstructed; Danish sources provide later attested forms.','resolved','The asterisk remains structural and visible.'),
(587,197,'Does fjende securely descend from exactly *peh₁-?','Only as a qualified modern proposal. The Germanic noun-and-verb relationship is firmer than the displayed Indo-European route.','proposed','Kroonen publishes the comparison but no written intermediate or unique semantic scene.','open',NULL),
(588,197,'Does DDO listing hater nearby prove fjende still means hater?','No. A near-word list is lexical navigation, not identity. DDO’s definition centers active opposition, harm, or destruction and its origin field separately explains the old participle.','established','The current entry exposes both fields independently.','resolved','Interface adjacency is not converted into an etymological claim.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(572,550,'Current definition and origin field','supports','Separates current enemy senses from historical participial formation.'),
(573,550,'Origin: Old Norse fjándi and German Feind','supports','Provides the comparison without a donor claim.'),
(573,491,'p. 140, descendant set','supports','Places the Danish and German forms under shared inheritance.'),
(574,552,'Headword fiende; known since 1100–1300','supports','Supplies only a broad evidence range.'),
(575,553,'Headword sections 1–2 on three- and two-syllable scansion','supports','Directly documents both patterns.'),
(576,551,'Headword variant discussion','supports','Groups historical forms under Fjende.'),
(576,553,'Fiænde, Finde, Fînde, and Fiend sections','supports','Groups variants within one entry.'),
(577,551,'Sense 1.1 and supplement: den gamle Fjende','supports','Explicitly labels the Devil branch.'),
(578,552,'Headword fiende, gloss fjende','context','Preserves the general Old Danish category.'),
(578,551,'General sense 1 before special religious use','supports','Structures Devil as a bounded branch.'),
(579,550,'Senses 1.a–1.d','supports','Documents wartime, personal, ideological, and figurative uses.'),
(579,551,'Senses 1.1–2','supports','Documents people, animals, abstractions, and military collectives.'),
(579,553,'Senses 1–2','context','Adds weather, sleep, passions, and war opponents.'),
(580,550,'Origin field','supports','States the historical present-participial analysis and lost verb comparison.'),
(581,551,'Etymological parenthesis, Sanskrit pīyati comparison','supports','Preserves the older published comparison without proving a direct line.'),
(581,491,'p. 140, modern reconstructed analysis','context','Supplies the distinct modern comparative route.'),
(582,551,'Historical forms and pronunciation commentary','supports','Shows variation rather than one dated switch.'),
(582,553,'Holberg-era forms and scansion groups','supports','Shows overlapping surface patterns.'),
(583,552,'Known since 1100–1300','supports','Bounds evidence without claiming coinage.'),
(583,492,'pp. 47–49, pre-branch lexicalization','context','Places formation earlier than Old Danish evidence.'),
(584,553,'Metrical scansion analysis','supports','Supports bounded pronunciation evidence.'),
(584,551,'Rask, Abraham, Heiberg, and Molbech pronunciation commentary','context','Documents prescriptive and descriptive disagreement.'),
(585,491,'p. 140, Germanic descendant set','supports','Supports collateral inheritance.'),
(585,550,'Origin comparison','context','Places Danish inside the inherited set.'),
(586,491,'p. 140, reconstructed *fi(j)and-','supports','Marks the parent as a comparative reconstruction.'),
(587,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the qualified route used in the graph.'),
(588,550,'Definition, nearby words, and origin fields','supports','Shows that navigation, current meaning, and history are distinct interface elements.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(197,197,2105,'fjende','Modern Danish kept the enemy but lost the hate verb inside its grammar.','DDO identifies fjende as historically a present participle of a verb corresponding to Old Norse fjá, to hate or persecute. Old Danish fiende then survives through a remarkable surface cloud: Fiende, Fiænde, Finde, Fînde, clipped Fiend, and both two- and three-syllable scans. The current noun no longer means that every enemy literally feels hate; it names active opposition and extends to states, ideologies, animals, weather, and abstractions. The grammatical fossil unveils a history, not a timeless essence.','A',100,'The reveal distinguishes established Germanic word formation, broad Old Danish chronology, Holberg-era surface variation, current semantics, a historical Devil branch, and a proposed deeper comparison. It claims no exact first token, single sound-change event, or inspected primary object.');
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
(197,550,'Origin field and senses 1–1.d','supports','Directly supports the participial formation and current semantic range.'),
(197,552,'Headword fiende; known since 1100–1300','supports','Supplies the Old Danish form and evidence range.'),
(197,553,'Headword form history and scansion groups','supports','Supplies the historical variant and syllable evidence.'),
(197,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Supplies the reconstructed Germanic relation.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(153,197,188,'ONE HATER, TWO VERY DIFFERENT ENEMIES','Danish fjende and English fiend share a lexicalized one-who-hates ancestor. Danish kept the ordinary enemy at the center and left the Devil as a historical branch; English let the demon and vicious-person branches dominate. Follow the shared graph to watch two inherited siblings specialize without a daughter-to-daughter borrowing.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1264 AND 1269
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1266,1267,1268) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1264 THEN 'Promoted from the graph-derived evidence-ready candidate into a complete Danish lexical, form-history, semantic, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1264 AND 1269;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1068 AND 1072;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1068 AND 1072;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1068 AND 1072;
