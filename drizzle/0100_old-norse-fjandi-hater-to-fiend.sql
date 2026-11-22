-- Promote Old Norse fjándi from the graph-derived evidence-ready queue into a
-- complete dossier. Cleasby and Vigfússon identify the inherited -nd- shape as
-- participial and gloss the older formation as "properly, a hater", their
-- historical account then distinguishes the ordinary enemy sense from the
-- Christian fiend development. ONP's 222-citation entry preserves a much wider
-- semantic topology: enemy, demon, evil spirit, pagan god, Satan, and a
-- derogatory label for a hated person, animal, or object. The dossier keeps
-- inherited word formation, attested semantic branching, and the deepest
-- qualified reconstruction separate.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(196,'fjandi','fjándi','fjandi','approx. /ˈfjɑːndi/','Old Norse masculine noun','Old Norse fjándi is a masculine noun whose inherited shape still exposes a prehistoric agent formation. Cleasby and Vigfússon compare Gothic fiands, Old English feond, German Feind, Swedish fiende, and Danish fjende, identify the nd as participial, and gloss the older formation as properly a hater. They then distinguish the ordinary enemy sense from a post-Christian fiend development. The University of Copenhagen Dictionary of Old Norse Prose supplies 222 citations and six semantic zones: enemy or opponent; devil, monster, or demon; evil spirit; pagan god; the Devil or Satan; and a derogatory term for a hated or bewitched person, animal, or object. Lexicon Poeticum independently exposes 49 poetic records, including source-reported tenth-century enemy uses and later Christian fiend uses, while warning that its concordance and dates require checking. The noun therefore does not possess one timeless true meaning: an inherited lexicalized hater became an ordinary enemy word, and the branch later accumulated several demonic and derogatory senses. The displayed pronunciation is an editorial normalized approximation, not recorded historical audio. No underlying manuscript object is claimed as directly inspected in this dossier.','Old Norse fjándi was an enemy before it was the Devil. Its inherited -nd- shape belongs to a lexicalized one-who-hates formation; Christianity then made that ordinary enemy word do demonic work.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(546,'onp-fjandi','Dictionary of Old Norse Prose — fjándi, masculine noun','Dictionary of Old Norse Prose editors',2010,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?o21062',NULL,'historical_dictionary'),
(547,'cleasby-vigfusson-fjandi','An Icelandic-English Dictionary — fjándi','Richard Cleasby · Guðbrandur Vigfússon',1874,'Clarendon Press · old-norse.net digital edition','https://old-norse.net/html/f.php',NULL,'historical_dictionary'),
(548,'lexicon-poeticum-fjandi','Lexicon Poeticum — fjándi, noun masculine, enemy or devil','Lexicon Poeticum · Skaldic Project editors',NULL,'University of Copenhagen · Skaldic Project','https://lexiconpoeticum.org/gefin/q.php?p=lp/words/word/20608',NULL,'research_database'),
(549,'onp-fjandi-akr22','Dictionary of Old Norse Prose citation — fjándi in ÁKr 22','Dictionary of Old Norse Prose editors',NULL,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?c147103',NULL,'research_database');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1259,196,66,1,'fjándi','fjandi','enemy-fiend-old-norse','fjándi','approx. /ˈfjɑːndi/','attested','Old Norse poetic and prose record',700,1550,'enemy or opponent; devil, demon, evil spirit, pagan god, Satan, or a derogatory hated being or thing','ONP classifies the lemma as a masculine noun, gives genitive singular -a and plural fjándr, fjándar, and fjándir, and exposes 222 citations. The pronunciation is a broad editorial normalization rather than a recorded uniform realization. Lexicon Poeticum gives 49 poetic records but explicitly warns that the concordance is unreviewed and its dates should be checked.'),
(1260,196,5,2,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic lexicalized participle',-500,200,'the hating one; lexicalized enemy agent noun','Kroonen reconstructs the formation, and Ayora Estevan places its lexicalization before the recorded Germanic branches. It is not a written Old Norse or Proto-Germanic token.'),
(1261,196,5,3,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with hostility','The reconstructed verb family has attested continuations including Old Norse fjá, Gothic fijan, Old English fēogan, and Old High German fîên. The collateral Old Norse verb is evidence for the family, not a written parent token inside every fjándi occurrence.'),
(1262,196,6,4,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European comparison',-4500,-2500,'a proposed base in a harm, blame, suffering, or hostility field','Kroonen publishes this deeper comparison. The formal path and original semantic center are less secure than the Germanic noun-and-verb relationship.'),
(1263,196,7,5,'UNKNOWN','unknown','fjandi-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely reconstructed earlier ancestor or uniquely recoverable original semantic scene is known.','The trail ends before enemy, hater, Devil, demon, pagan god, or hated object is declared the one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1064,196,1259,1260,'inheritance','Old Norse fjándi and plural fjándr continue the inherited Germanic nd-agent formation after North Germanic vowel, glide, ending, and inflectional developments.','The already lexicalized one-who-hates formation is inherited as an ordinary enemy noun; demonic, pagan-god, and derogatory branches develop inside the attested Old Norse semantic history.','Richard Cleasby · Guðbrandur Vigfússon · Daniel Ayora Estevan · Guus Kroonen','probable','The Old Norse lemma, paradigm, and cross-Germanic comparison are published. The precise Proto-Germanic phonetics and each semantic innovation remain reconstructed or textually bounded.','Proto-Germanic reconstruction into the source-reported tenth-century poetic and later prose record.','reviewed'),
(1065,196,1260,1261,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1066,196,1261,1262,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1067,196,1262,1263,'knowledge_boundary','No older form is promoted beyond the qualified *peh₁- comparison.','The trail ends before the historically attested enemy, demon, pagan-god, Satan, or insult senses are reverse-engineered into one universal prehistoric essence.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1064,546,'Headword fjándi sb. m.; 222 citations; senses 1–6','supports','Supplies the attested lemma, masculine grammar, inflection, corpus scale, and semantic branching.'),
(1064,547,'fjándi entry: comparative header, nd indicates the participle, properly a hater, senses 1–2','supports','Publishes the Germanic comparison, participial interpretation, enemy sense, and post-Christian fiend development.'),
(1064,548,'Headword and 49 poetic citations, including source-reported 960 and 961 records','context','Independently places the ordinary enemy noun in the poetic record while preserving the project’s dating disclaimer.'),
(1064,491,'p. 140, *fi(j)and- and Old Norse fjándi','supports','Publishes the reconstructed parent and Old Norse descendant.'),
(1064,492,'pp. 47–49, pre-branch lexicalization and Old Norse evidence','context','Places the inherited noun inside the cross-Germanic lexicalized enemy set.'),
(1065,547,'Comparative header: nd indicates the participle; properly a hater','supports','Preserves the historical dictionary’s transparent agent analysis.'),
(1065,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the reconstructed Germanic word-formation relation.'),
(1065,492,'pp. 47–49, lexicalized enemy noun beside productive participial behavior','context','Supports pre-branch lexicalization while preserving category distinctions.'),
(1066,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used with reduced confidence.'),
(1067,491,'p. 140, deepest modern comparison used in this dossier','supports','Supports stopping after the qualified proposal rather than inventing an earlier form.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(413,1259,548,'poetic composition dated 960 by source; dating requires checking',960,'Egill, Sonatorrek 24','Lexicon Poeticum citation 1 of 49','mér vísa fjándr at vélǫndum','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Lexicon Poeticum renders the context as enemies and reports 960, but explicitly warns that its concordance is unreviewed and dates may derive from earlier editions. No manuscript object was inspected.'),
(414,1259,548,'poetic composition dated 961 by source; dating requires checking',961,'Eyvindr skáldaspillir, Hákonarmál 12','Lexicon Poeticum citation 2 of 49','en þínir fíandr flugu','probable','lexical_corpus_record',NULL,NULL,NULL,0,'The project translates the phrase as and your enemies fled and reports 961 under an explicit date-check warning. It is a source-reported composition date, not an inspected manuscript date.'),
(415,1259,548,'poetic composition dated 1190 by source; dating requires checking',1190,'Anonymous Leiðarvísan 31','Lexicon Poeticum poetic citation','fjanda heilagr andi','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Lexicon Poeticum translates the surrounding record with fiend and reports 1190. No underlying manuscript object was inspected, and the project’s dating disclaimer is retained.'),
(416,1259,546,'Old Norse prose corpus; source-reported',NULL,'Enemy and unfriendly-person contrast','ONP sense 1, ÓH619 111:8','fiandr hans ok u vinir','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP files the phrase under enemy or opponent. The edited database record was inspected, not its underlying manuscript object.'),
(417,1259,546,'Old Norse prose corpus; source-reported',NULL,'Friends-versus-enemies formula','ONP sense 1, GrgKon I 206:8','sem frændr en eigi sem fiandr','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP preserves a direct textual opposition between kin or friends and enemies. The collocation is not evidence that frændi and fjándi are cognates.'),
(418,1259,549,'manuscript dated circa 1350 by ONP',1350,'Árni’s Christian law, GKS 3270 4° variant','ÁKr 22:23; GKS 3270 4° B','til styrcs oc framgongo moti andscotanom [var. fiandanom]','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP locates fiandanom as a manuscript variant for andskotanom and reports the manuscript as c.1350. The citation record and linked image index were inspected, but the exact token was not directly verified on the manuscript image.'),
(419,1259,546,'Old Norse prose corpus; source-reported',NULL,'Pagan-god semantic branch','ONP sense 4, KlmB x 161:26','fjóra fjándr ... þat eru þeir fjórir guðar heiðinna þjóða','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP files the clause under pagan god or heathen god. The evidence establishes a contextual branch, not the inherited core meaning.'),
(420,1259,546,'Old Norse prose corpus; source-reported',NULL,'Evil-spirit semantic branch','ONP sense 3, Páll II A 253:4','þeir særðu fiandr fra oðum maunnum i nafni Jesu','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP files the exorcism context under evil spirit. No manuscript object was directly inspected.'),
(421,1259,546,'Old Norse prose corpus; source-reported',NULL,'Devil or Satan semantic branch','ONP sense 5, HómÍsl 24 (1993) 35v:21','Nu glatar fiándeɴ þéim sigre vélar siɴar','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP files the passage under the Devil, fiend, or Satan and aligns it with Latin antiquus hostis. The edited citation is not treated as a manuscript inspection.'),
(422,1259,546,'Old Norse prose corpus; source-reported',NULL,'Derogatory term applied to an animal','ONP sense 6, Þiðr II x 393:23','þetta mun wera einn fianndi er ek sit á','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP’s sixth sense includes hated or bewitched people, animals, and objects; this context applies the term to a horse. It demonstrates semantic extension without making horse part of the inherited gloss.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(927,196,'fjá','Old Norse','the collateral hate verb that preserves the live verbal family beside the lexicalized enemy noun',491),
(928,196,'fjándr','Old Norse','a source-reported plural form of the masculine noun',546),
(929,196,'fíandr','Old Norse poetic spelling','a poetic surface form in the source-reported tenth-century record',548),
(930,196,'fjöndum','Old Norse and later Icelandic','a dative plural form documented in poetic and lexicographic records',547),
(931,196,'fjánda-kraptr','Old Norse','a compound meaning fiendish power',547),
(932,196,'fjánda-limr','Old Norse','a compound literally a devil’s limb',547),
(933,196,'fjánda-sonr','Old Norse','a compound meaning a fiend’s son',547),
(934,196,'fjánda-villa','Old Norse','a compound meaning a fiendish heresy',547),
(935,196,'fjánda-fæla','Old Norse','a plant name glossed fuga daemonum or angelica',547),
(936,196,'fiands','Gothic','an East Germanic cognate preserving noun and participial evidence',547),
(937,196,'feond','Old English','a West Germanic cognate continued by English fiend',547),
(938,196,'Feind','German','a West Germanic cognate that remains an ordinary enemy noun',547),
(939,196,'fiende','Swedish','a North Germanic cognate continued as the ordinary enemy noun',547),
(940,196,'fjende','Danish','a North Germanic cognate continued as the ordinary enemy noun',547),
(941,196,'frændi','Old Norse','a non-cognate word paired with fjándi in a friends-or-kin versus enemies formula',546),
(942,196,'fjandi','Modern Icelandic','the modern continuation noted by the historical dictionary',547);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(819,196,1,'Proposed Indo-European linguistic horizon','proposed *peh₁- comparison','Kroonen’s deeper route is a comparative linguistic proposal, not a word recovered at one archaeological site.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon attached to a proposed analysis.'),
(820,196,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and lexicalized *fi(j)and-','Cross-branch evidence places the hate verb and lexicalized enemy formation before the separate written Germanic traditions.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token or single coordinate.'),
(821,196,3,'Old Norse poetic world','source-reported 960–961 enemy records','Lexicon Poeticum places fjándi in tenth-century poetry as an ordinary enemy noun, while warning that dates require checking.',NULL,NULL,'broad',960,961,'range','Source-reported composition dates under an explicit project disclaimer, not manuscript-production dates.'),
(822,196,4,'Old Norse Christian textual world','enemy to fiend and Devil','Historical and corpus dictionaries document the inherited enemy noun’s demonic branches after Christianization without locating one coinage event.',NULL,NULL,'broad',1000,1550,'range','A broad textual-semantic interval, not a first-use point or one movement on a map.'),
(823,196,5,'Old Norse prose corpus','222 citations across six senses','ONP’s structured entry preserves enemy, demon, evil-spirit, pagan-god, Satan, and derogatory uses as a semantic network.',NULL,NULL,'broad',1100,1550,'range','A conventional prose-corpus horizon; it does not date all 222 records or claim completeness.'),
(824,196,6,'Later North Germanic continuation','Icelandic fjandi, Swedish fiende, and Danish fjende','The inherited noun continues with different branch-specific semantic centers; no daughter language is treated as the original.',NULL,NULL,'broad',1550,2026,'range','A continuation horizon, not a single borrowing, coordinate, or semantic event.'),
(825,196,7,'Knowledge boundary','beyond the proposed Indo-European comparison','The graph stops before enemy, hater, Devil, demon, pagan god, or hated object is declared the one certain prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(819,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the deepest comparison used with proposed confidence.'),
(820,491,'p. 140, *fi(j)ēn- and *fi(j)and-','supports','Publishes the reconstructed Germanic verb and lexicalized enemy formation.'),
(820,492,'pp. 47–49, pre-branch lexicalization','context','Places lexicalization before the separate written daughter records.'),
(821,548,'Poetic citations dated 960 and 961; headword disclaimer','supports','Supplies the early source-reported poetic horizon and the warning that dates require checking.'),
(822,547,'Senses 1–2: enemy; after the introduction of Christianity, fiend','supports','Publishes the relative semantic chronology.'),
(822,546,'Senses 2–5, demonic and Christian uses','context','Documents multiple distinct supernatural branches in the prose corpus.'),
(823,546,'222-citation entry; senses 1–6','supports','Supplies the corpus scale and structured semantic topology.'),
(824,547,'Comparative and modern-form notes','supports','Documents Scandinavian and wider Germanic continuations.'),
(825,491,'p. 140, deepest comparison used here','supports','Supports an explicit endpoint after the qualified proposal.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(558,196,'Was fjándi an Old Norse participle or a noun?','In the attested entry it is a masculine noun. The participial analysis belongs to its inherited formation, not to a relabeling of every Old Norse token.','established','ONP classifies the lemma as sb. m.; Cleasby and Vigfússon explain the historical -nd- formation.','resolved','The graph separates the attested noun from the reconstructed lexicalized participle.'),
(559,196,'Did fjándi originally mean the Devil?','Not in the reviewed historical account. The ordinary enemy sense is older, and Cleasby and Vigfússon place the fiend development after Christianity.','probable','The historical dictionary states the relative chronology; ONP preserves both ordinary and supernatural branches.','resolved','The dossier says enemy before Devil without assigning a fake first year to either innovation.'),
(560,196,'Does properly a hater define every fjándi referent?','No. It is a historical word-formation gloss, not a psychological claim about every enemy, demon, god, animal, object, or insult target.','established','The 222-citation ONP topology is far broader than a literal agent gloss.','resolved','The leaderboard exposes morphology while rejecting the etymological fallacy.'),
(561,196,'How many meanings does the ONP entry distinguish?','Six numbered zones, with additional formulas: enemy or opponent; devil, monster, or demon; evil spirit; pagan god; the Devil or Satan; and a derogatory hated or bewitched being or thing.','established','ONP’s structured entry explicitly labels senses 1–6.','resolved','The interface preserves the branches rather than flattening them into demon.'),
(562,196,'Are the 222 ONP citations a complete Old Norse corpus?','No completeness claim is made. They are the public entry’s current citation set, valuable evidence rather than the set of every surviving occurrence.','established','ONP exposes the count and entry status but does not license universal corpus completeness.','resolved','The dossier says 222 citations in ONP, not 222 total historical tokens.'),
(563,196,'Are the Lexicon Poeticum dates definitive?','No. The project explicitly says its concordance is unreviewed and dates may come from earlier editions and should be checked.','established','The warning appears directly above the 49 poetic citations.','resolved','The 960, 961, and 1190 records remain source-reported and probable, not directly dated witnesses.'),
(564,196,'Does the 960 poetic date identify the oldest manuscript token?','No. It is a source-reported composition date. Surviving manuscript copies may be later, and none is directly inspected here.','established','Lexicon Poeticum separates citation dates from its manuscript list and warns that dates require checking.','resolved','The attestation type is lexical_corpus_record and directly_inspected remains false.'),
(565,196,'Was the ÁKr fiandanom variant directly read from GKS 3270 4°?','No. ONP’s citation record and linked image index were inspected, but the exact manuscript token was not located and verified on the folio image.','established','The ONP citation identifies the variant, manuscript, c.1350 date, and image collection.','resolved','No facsimile URL or witness-inspection row is created.'),
(566,196,'Are fjándi and frændi cognates because they form a memorable pair?','No evidence here establishes that. ONP documents a rhetorical and semantic opposition, while the ancestry graph routes fjándi through *fi(j)and-.','established','The formula is a collocation; the comparative sources provide a different ancestry route.','resolved','frændi is labeled a non-cognate contrastive relative, not a parent or cousin.'),
(567,196,'Was fjándi borrowed from English fiend or German Feind?','No. The words are collateral inherited continuations of the Proto-Germanic lexicalized enemy formation.','probable','Cleasby and Vigfússon, Kroonen, and Ayora Estevan publish the cross-branch set.','resolved','The graph joins the words at *fi(j)and- and draws no daughter-to-daughter donor arrow.'),
(568,196,'Did every Germanic daughter develop a dominant demon sense?','No. Old Norse retains ordinary enemy and multiple supernatural branches, English foregrounds fiend, while German Feind and Swedish fiende remain ordinary enemy nouns.','established','The cited dictionaries document different daughter-language semantic centers.','resolved','Shared ancestry does not erase branch-specific semantic history.'),
(569,196,'Does fjándi securely descend from exactly *peh₁-?','Only as a qualified modern proposal. The Germanic noun-and-verb relation is firmer than the displayed Indo-European route.','proposed','Kroonen publishes the comparison but no written intermediate or unique original semantic scene.','open',NULL),
(570,196,'Can the exact Proto-Germanic pronunciation and lexicalization moment be recovered?','No. *fi(j)and- and *fi(j)ēn- are normalized comparative reconstructions; optional j, branch vowels, and the moment the agent became an ordinary noun remain analytical.','probable','Kroonen and Ayora Estevan publish compatible forms and pre-branch lexicalization without a directly observed event.','open',NULL),
(571,196,'Can one date the shift from enemy to fiend to one event?','No. The historical dictionary gives a relative post-Christian chronology, while ONP and the poetic corpus show overlapping ordinary and supernatural uses rather than one recoverable coinage moment.','probable','The sources establish semantic branching but not a uniquely dated innovation.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(558,546,'Headword fjándi sb. m. and inflection','supports','Classifies the attested word as a masculine noun.'),
(558,547,'Comparative header: nd indicates the participle','supports','Supplies the historical formation without overriding noun status.'),
(559,547,'Sense 1 enemy; sense 2 after Christianity fiend','supports','Publishes the relative semantic chronology.'),
(559,546,'Senses 1–5','context','Shows ordinary and supernatural branches coexisting in the corpus.'),
(560,547,'Properly a hater','supports','Supplies the formation gloss.'),
(560,546,'Senses 1–6 across 222 citations','context','Shows why the formation gloss cannot define every referent.'),
(561,546,'Numbered senses 1–6','supports','Directly documents the semantic architecture.'),
(562,546,'Public 222-citation entry and entry-status panel','supports','Supports the bounded claim about ONP’s current evidence set.'),
(563,548,'Headword warning above the citation concordance','supports','Explicitly says the concordance is unreviewed and dates should be checked.'),
(564,548,'960 citation and manuscript section','supports','Shows a composition-date record separate from surviving manuscript listings.'),
(565,549,'ÁKr 22:23; GKS 3270 4° B; linked manuscript image index','supports','Locates the source-reported variant and the uncompleted object-verification boundary.'),
(566,546,'frændr ... eigi sem fiandr formula','supports','Documents collocation and opposition, not ancestry.'),
(566,491,'p. 140, *fi(j)and- route','context','Provides the actual reviewed ancestry path.'),
(567,547,'Gothic, Old English, German, Swedish, and Danish comparative header','supports','Publishes the collateral cognate set.'),
(567,491,'p. 140, reconstructed parent and daughter forms','supports','Places the forms under shared ancestry.'),
(568,546,'Senses 1–6','supports','Documents the Old Norse semantic breadth.'),
(568,547,'Comparative header and senses 1–2','supports','Documents cross-branch forms and the Old Norse enemy-to-fiend history.'),
(569,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the qualified route used in the graph.'),
(570,491,'p. 140, *fi(j)and- and *fi(j)ēn-','supports','Publishes normalized reconstructed forms.'),
(570,492,'pp. 47–49, pre-branch lexicalization','context','Supports relative chronology without one observable date.'),
(571,547,'After the introduction of Christianity fjándi came to mean a fiend','supports','Supplies relative chronology without an exact innovation date.'),
(571,546,'Ordinary and supernatural senses in the 222-citation entry','context','Shows semantic overlap and branching in the edited corpus.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(196,196,2104,'fjándi','Old Norse fjándi was an enemy before it was the Devil.','Cleasby and Vigfússon identify the inherited -nd- shape as participial and gloss the older formation as properly a hater. Their first sense is the ordinary enemy; only after the introduction of Christianity does the historical account assign fjándi the fiend branch. ONP then reveals how far the word traveled: 222 citations across enemy, demon, evil spirit, pagan god, Satan, and derogatory uses for hated or bewitched beings and things. The truth is not that every enemy secretly hates. It is that a lexicalized agent noun became an ordinary social category, then accumulated new religious and expressive work.','A',100,'The reveal preserves relative chronology and grammatical history. It does not claim one coinage event, make the poetic dates definitive, relabel the Old Norse noun as a productive participle, define every referent psychologically, or upgrade the deepest Indo-European proposal.');
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
(196,547,'Comparative header and senses 1–2: participial nd, properly a hater, enemy, then post-Christian fiend','supports','Directly supports the word-formation and relative semantic chronology.'),
(196,546,'222 citations and numbered senses 1–6','supports','Supplies the attested semantic topology and prevents a single-gloss story.'),
(196,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Supplies the reconstructed Germanic word formation.'),
(196,492,'pp. 47–49, pre-branch lexicalization','context','Places noun lexicalization before the individual daughter records.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(152,196,188,'TWO ENEMIES WALKED INTO THE DEVIL','Old Norse fjándi and English fiend share a lexicalized one-who-hates ancestor. Both developed demonic senses, but Old Norse retained a vast ordinary-enemy and supernatural network while modern English let fiend’s demon and vicious-person branches dominate. Follow the shared graph to see semantic specialization happen without inventing a daughter-to-daughter borrowing.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1259 AND 1263
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1260,1261,1262) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1259 THEN 'Promoted from the graph-derived evidence-ready candidate into a complete Old Norse lexical, grammatical, poetic, prose, semantic, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1259 AND 1263;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1064 AND 1067;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1064 AND 1067;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1064 AND 1067;
