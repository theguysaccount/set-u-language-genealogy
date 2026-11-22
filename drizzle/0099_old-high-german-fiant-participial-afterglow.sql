-- Promote Old High German fīant from the graph-derived evidence-ready queue
-- into a complete dossier. The official Althochdeutsches Wörterbuch classifies
-- fîant / fîjant as a strong masculine noun, but its fixed-formula section says
-- the word's old participial character can still shine through: fîant uuesan
-- could mean to be hostile, hate someone, or wish someone ill. This dossier
-- keeps that grammatical afterglow distinct from both a productive participle
-- and the deeper reconstructed *fi(j)and- formation.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(195,'fiant','fīant','fiant','approx. /ˈfiː.ant/','Old High German strong masculine noun','Old High German fīant—written fîant and fîjant in the Althochdeutsches Wörterbuch''s length-marking convention—was already a strong masculine noun meaning enemy, opponent, or adversary. The dictionary documents personal, public and military, spiritual, and specifically Devil senses across a large variant and inflectional record. Its most revealing evidence is grammatical: in fixed formulas, usually without an article, the old participial character could still shine through. Fîant uuesan could mean to be hostile, hate someone, or wish someone ill; fîant mahhôn meant make hostile, and zi fîante tuon could mean regard as an enemy or hate. The companion fîên article independently preserves the live weak verb to hate in eighth- and ninth-century Alemannic manuscripts. The noun therefore shows a lexical fossil whose older verbal force remained locally legible without ceasing to be a noun. The displayed pronunciation is an editorial normalized approximation, not a recorded historical audio object. All displayed Old High German passages are inspected dictionary or text-edition records, not directly inspected manuscript objects.','Old High German fīant was already a noun—but in fixed phrases its old participial character could still shine through. The fossil had not gone dark.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(543,'awb-fiant','Althochdeutsches Wörterbuch — fîant, fîjant','Althochdeutsches Wörterbuch editorial team',NULL,'Sächsische Akademie der Wissenschaften zu Leipzig','https://awb.saw-leipzig.de/?sigle=AWB&lemid=F00932',NULL,'historical_dictionary'),
(544,'awb-fien','Althochdeutsches Wörterbuch — fîên','Althochdeutsches Wörterbuch editorial team',NULL,'Sächsische Akademie der Wissenschaften zu Leipzig','https://awb.saw-leipzig.de/?sigle=AWB&lemid=F00968',NULL,'historical_dictionary'),
(545,'sievers-1892-tatian-72','Tatian: Lateinisch und altdeutsch mit ausführlichem Glossar, 2nd ed. — section 72, p. 96','Eduard Sievers (editor)',1892,'Ferdinand Schöningh · Germanic Lexicon Project transcription','https://www.germanic-lexicon-project.org/html/ohg_sievers_tatian/b0096.html',NULL,'historical_text_edition');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1254,195,32,1,'fīant','fiant','enemy-old-high-german','fîant / fîjant',NULL,'attested','Old High German; source-reported from the eighth century',750,1050,'enemy, opponent, or adversary; in fixed phrases the old participial force could remain locally visible','The AWB headword is fîant, fîjant, strong masculine. SET-U normalizes vowel length with a macron in the dossier headword while preserving the dictionary''s circumflex and the source spellings in citations. AWB documents personal, military, spiritual, Devil, and fixed-formula uses plus extensive fiiant-, fiant-, fiunt-, fient-, fiand-, fiund-, and fiend- variants.'),
(1255,195,5,2,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic lexicalized participle',-500,200,'the hating one; lexicalized enemy agent noun','Kroonen reconstructs the formation, and Ayora Estevan places its lexicalization before the recorded Germanic branches. It is not a written Old High German or Proto-Germanic token.'),
(1256,195,5,3,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic',-500,200,'to hate or treat with hostility','The reconstructed verb family has attested continuations including Old High German fîên, Gothic fijan, Old English fēogan, and Old Norse fjá. The AWB fîên article supplies a live Old High German collateral verb, not a written parent token for every fīant occurrence.'),
(1257,195,6,4,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European comparison',-4500,-2500,'a proposed base in a harm, blame, suffering, or hostility field','Kroonen publishes this deeper comparison. The formal path and original semantic center are less secure than the Germanic noun-and-verb relationship.'),
(1258,195,7,5,'UNKNOWN','unknown','fiant-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely reconstructed earlier ancestor or uniquely recoverable original semantic scene is known.','The trail ends before enemy, hatred, hostility, harm, or opposition is declared the one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1060,195,1254,1255,'inheritance','Old High German fīant reflects the Germanic nd-agent formation after High German branch development in its vowel, glide, consonants, and inflection.','The already lexicalized one-who-hates formation is inherited as the ordinary enemy noun.','Daniel Ayora Estevan · Guus Kroonen · Wolfgang Pfeifer','probable','The Old High German form is attested and the cross-Germanic formation is published; the exact Proto-Germanic phonetic path remains reconstructed.','Proto-Germanic reconstruction into the eighth-century Old High German record.','reviewed'),
(1061,195,1255,1256,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1062,195,1256,1257,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1063,195,1257,1258,'knowledge_boundary','No older form is promoted beyond the qualified *peh₁- comparison.','The trail ends before the historically visible noun, its formulaic verbal residue, or the modern idea of an enemy is reverse-engineered into one universal prehistoric essence.','SET-U editorial boundary · Guus Kroonen','boundary','The deeper base is already proposed; no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1060,543,'Vol. 3, cols. 792–796: headword, comparative forms, variant inventory, and meanings a–d','supports','Classifies fîant / fîjant as a strong masculine noun and documents its attested form and semantic architecture.'),
(1060,515,'Pfeifer etymology: fīant and fījant from the eighth century','supports','Provides the source-reported earliest High German horizon and the German continuation.'),
(1060,491,'p. 140, *fi(j)and- and daughter forms','supports','Publishes the reconstructed parent and Old High German descendant.'),
(1060,492,'pp. 47–49, pre-branch lexicalization and Old High German fīant','context','Places the Old High German noun in the inherited lexicalized enemy set.'),
(1061,543,'Vol. 3, col. 796, fixed formulas where the old participial character can shine through','supports','Documents formulaic residual transparency inside the attested noun.'),
(1061,544,'Vol. 3, cols. 801–802: fîên, weak verb, meanings hate and abhor','supports','Documents the live collateral Old High German hate verb and its limited Alemannic record.'),
(1061,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the reconstructed Germanic word-formation relation.'),
(1061,492,'pp. 47–49, lexicalized enemy noun beside productive participial behavior','context','Supports pre-branch lexicalization while preserving category distinctions.'),
(1062,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used with reduced confidence.'),
(1063,491,'p. 140, deepest modern comparison used in this dossier','supports','Supports stopping after the qualified proposal rather than inventing an earlier form.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(403,1254,515,'eighth century; source-reported',NULL,'Old High German headword horizon','Pfeifer etymology, fīant and fījant','fīant, fījant','established','lexicographic_first_use',NULL,NULL,NULL,0,'DWDS/Pfeifer reports the forms from the eighth century. No token, manuscript object, or exact first year was inspected, so the century is not converted into a false point date.'),
(404,1254,545,'ninth-century Old High German Tatian; edited text',NULL,'Old High German Tatian, weeds parable','Sievers 1892, p. 96; T 72,2; Matthew 13:25','tho thie man intsliefun, quam sin fiiant inti ubarsata beresboton in mittan then uueizi','established','lexical_corpus_record',NULL,NULL,NULL,0,'The bilingual edition aligns fiiant with Latin inimicus eius. The digital text page was inspected, but no manuscript image, facsimile, or object was inspected, so directly_inspected remains false.'),
(405,1254,543,'Old High German Tatian; source-reported',NULL,'Old High German Tatian, Devil interpretation','AWB T 76,4','thie fiiant ... thie iz sata thaz ist ther diuual','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB locates the enemy in the parable and its explicit interpretation as the Devil. This is a dictionary-reported edition record, not a directly inspected witness object.'),
(406,1254,543,'Old High German Tatian; source-reported',NULL,'Old High German Tatian, Herod and Pilate','AWB T 196,8','sie uuarun êr untar zuuisgen fiianta','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB aligns the plural with Latin inimici and locates ordinary interpersonal or political enemy use.'),
(407,1254,543,'ninth-century Ludwigslied; source-reported',NULL,'Ludwigslied, public or military enemies','AWB S 86,53','her skancta ce hanton sinan fianton bitteres lides','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB files the line under the public or military enemy sense. The dictionary notes that part of the ending is no longer legible in the witness tradition; no object was inspected here.'),
(408,1254,543,'ninth-century Otfrid; source-reported',NULL,'Otfrid, the Devil as enemy to man','AWB O 3,10,12','ther diufal ist iru inne, ther fiant ist io manne','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB uses the clause inside the fixed fîant uuesan group and the spiritual or Devil semantic field.'),
(409,1254,543,'Old High German source record; source-reported',NULL,'Panther and dragon formula','AWB S 124,19','un ist demo drachen fient','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB aligns the construction with Latin inimicum sit and uses it as evidence for the fixed formula in which participial history may remain visible.'),
(410,1254,543,'Old High German Notker record; source-reported',NULL,'Notker psalm commentary, hostile-to-me formula','AWB NpNpw 138,22','sie sint mir fient . uuanda ih iro unreht hazeta','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB groups the clause under fîant uuesan and prints the neighboring hate verb. It is strong semantic and syntactic context, not a directly inspected manuscript object.'),
(411,1254,543,'Old High German Notker record; source-reported',NULL,'Notker, make hostile formula','AWB Nb 156,24 [168,7]','ten machot sar unsalda fient','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB files the clause under fîant mahhôn, make someone an enemy or hostile.'),
(412,1254,543,'Old High German source record; source-reported',NULL,'Regard as enemy or hate formula','AWB S 106,21','alle ... mir ze fiente tuon','established','lexical_corpus_record',NULL,NULL,NULL,0,'AWB aligns the construction with perfecto odio oderam illos and explains zi fîante tuon as regard as an enemy or hate.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(913,195,'fîên','Old High German','the attested weak hate verb whose live paradigm makes the noun''s historical verbal base locally visible',544),
(914,195,'fīēnti','Old High German','a source-reported present participle of fîên, distinct from the lexicalized enemy noun',544),
(915,195,'fîantin','Old High German','a feminine derivative meaning female enemy',543),
(916,195,'fîantlîh','Old High German','a derivative adjective in rivalrous and hostile senses',543),
(917,195,'fîantscaf(t)','Old High German','a derivative noun meaning enmity or hostile disposition',543),
(918,195,'fîantscaffôn','Old High German','a derivative verb meaning harbor enmity or be in conflict',543),
(919,195,'vîant','Middle High German','the direct later High German continuation on the route to Feind',543),
(920,195,'Feind','German','the reviewed modern High German continuation',543),
(921,195,'fiund','Old Saxon','a West Germanic cognate',543),
(922,195,'viant','Middle Dutch','a West Germanic cognate continued by Dutch vijand',543),
(923,195,'fiand','Old Frisian','a West Germanic cognate',543),
(924,195,'feond','Old English','a reviewed West Germanic enemy noun continued by English fiend',543),
(925,195,'fjándi','Old Norse','a North Germanic cognate',543),
(926,195,'fijands','Gothic','the reviewed Gothic lexicalized enemy noun',543);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(812,195,1,'Proposed Indo-European linguistic horizon','proposed *peh₁- comparison','Kroonen''s deeper route is a comparative linguistic proposal, not a word recovered at one archaeological site.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon attached to a proposed analysis.'),
(813,195,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and lexicalized *fi(j)and-','Cross-branch evidence places the hate verb and lexicalized enemy formation before the separate written Germanic traditions.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token or single coordinate.'),
(814,195,3,'Old High German textual world','fīant and fījant reported from the eighth century','DWDS/Pfeifer supplies a century-level headword horizon; AWB documents the later corpus in extensive detail.',NULL,NULL,'broad',750,799,'century','A source-reported century, not one first token, manuscript, speaker, or map point.'),
(815,195,4,'Old High German Tatian tradition','fiiant in T 72,2, 76,4, and 196,8','The Tatian records show ordinary enemy, parable enemy, Devil interpretation, and plural enemies. The text tradition is not reduced to a single manuscript-production coordinate.',NULL,NULL,'broad',825,850,'range','A conservative text-tradition interval; no manuscript object was directly inspected.'),
(816,195,5,'Old High German formulaic record','fîant uuesan, fîant mahhôn, and zi fîante tuon','AWB groups fixed phrases in which the old participial character may still shine through. They span multiple works and are not one innovation event.',NULL,NULL,'broad',800,1050,'range','A corpus interval for multiple source-reported records, not a first-use claim.'),
(817,195,6,'High German semantic continuation','Middle High German vîant to modern German Feind','The inherited enemy noun continues while the specific Old High German fixed formulas are not projected unchanged into every later stage.',NULL,NULL,'broad',1050,2026,'range','A daughter-language continuation horizon rather than a single movement or coordinate.'),
(818,195,7,'Knowledge boundary','beyond the proposed Indo-European comparison','The graph stops before enemy, hater, hostility, Devil, or harm is declared the one certain prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(812,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the deepest comparison used with proposed confidence.'),
(813,491,'p. 140, *fi(j)ēn- and *fi(j)and-','supports','Publishes the reconstructed Germanic verb and lexicalized enemy formation.'),
(813,492,'pp. 47–49, pre-branch lexicalization','context','Places lexicalization before the separate written daughter records.'),
(814,515,'Pfeifer etymology: fīant and fījant from the eighth century','supports','Supplies the source-reported century horizon.'),
(814,543,'Vol. 3, cols. 792–796, form and citation inventory','supports','Documents the broad Old High German textual record.'),
(815,543,'T 72,2; T 76,4; T 196,8','supports','Locates three semantically distinct Tatian records.'),
(815,545,'Sievers 1892, p. 96; T 72,2','supports','Independently displays the bilingual fiiant and inimicus alignment.'),
(816,543,'Vol. 3, col. 796, fixed formulas','supports','Publishes the formula group and cautious participial interpretation.'),
(816,544,'Vol. 3, cols. 801–802, live fîên verb','context','Shows that the related hate verb was attested beside the lexicalized noun in Old High German.'),
(817,543,'Comparative header: Middle High German vîant and modern German Feind','supports','Publishes the later High German continuation.'),
(817,514,'Duden Herkunft: Old and Middle High German forms to Feind','context','Independently documents the continuation into modern German.'),
(818,491,'p. 140, deepest comparison used here','supports','Supports an explicit endpoint after the qualified proposal.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(544,195,'Was Old High German fīant a noun?','Yes. AWB classifies fîant / fîjant as a strong masculine noun and supplies a large nominal inflectional inventory.','established','The official historical dictionary''s headword grammar and paradigm are explicit.','resolved','The dossier never relabels attested fīant as a productive present participle.'),
(545,195,'Was fīant still a productive participle?','Not on the cited evidence. AWB calls it a noun, but says its old participial character can shine through in fixed formulas. Residual transparency is not productive category identity.','established','The noun classification and the cautious formula note occur in the same official article.','resolved','The interface distinguishes attested noun, formulaic afterglow, and reconstructed participial formation.'),
(546,195,'Do the fixed formulas prove the entire prehistoric derivation by themselves?','No. They are daughter-language evidence compatible with participial history; the Proto-Germanic formation is established comparatively across branches.','probable','AWB supplies the formula analysis, while Kroonen and Ayora Estevan supply the cross-Germanic reconstruction and lexicalization argument.','resolved','No single Old High German phrase is treated as a direct recording of Proto-Germanic grammar.'),
(547,195,'Could fîant uuesan actually mean hate or wish someone ill?','Yes. AWB glosses the fixed formula as be hostile, hate someone, or wish someone ill and supplies multiple located examples.','established','The dictionary states the semantic range and prints examples including fient ist, demo drachen fient, and sie sint mir fient.','resolved','The dossier reports the range without forcing the strongest hate reading onto every occurrence.'),
(548,195,'Was the Devil the central meaning of fīant?','No. AWB separates personal, public or military, spiritual, and specifically Devil senses. The demonic branch is real but not the whole noun.','established','The historical dictionary''s meaning architecture explicitly distinguishes the groups.','resolved','The main gloss remains enemy, opponent, or adversary.'),
(549,195,'Is Habakkuk-gloss dfiunt a secure Devil token?','No. AWB says the d likely begins diuuil and treats dfiunt as probably corrupt; the Epinal form dfiant does not remove the uncertainty.','probable','The official article flags the reading under probable scribal error.','open',NULL),
(550,195,'Were the underlying manuscript objects directly inspected?','No. This review inspected AWB records and Sievers''s digitized text-edition page, not the Tatian, Ludwigslied, Otfrid, or Notker manuscript objects.','established','Every attestation row identifies a lexicographic or edited-text surface and lacks object-level manuscript inspection.','resolved','All fīant attestations remain directly_inspected=0 and no witness-inspection record is created.'),
(551,195,'Does the eighth-century report date the word''s coinage?','No. It is a lexicographic attestation horizon. Inherited cross-Germanic evidence places the formation earlier than the surviving High German record.','established','Pfeifer supplies the century; comparative sources supply the pre-branch ancestry.','resolved','The timeline uses a century range and leaves the exact token year null.'),
(552,195,'Was fīant borrowed from Gothic, Old English, Dutch, or Norse?','No borrowing is established. The daughter forms are collateral inherited continuations of the reconstructed Germanic enemy formation.','probable','AWB, Kroonen, Pfeifer, and Ayora Estevan publish the cross-branch set.','resolved','The graph joins the words at *fi(j)and- and draws no daughter-to-daughter donor arrow.'),
(553,195,'Are fiiant, fîjant, fiunt, fient, fiand, fiund, and fiend separate ancestry branches?','Not in AWB''s article. They are form, spelling, dialectal, and inflectional records inside one headword history, with a few individual corrupt or ambiguous tokens separately flagged.','established','AWB inventories the variants beneath one strong masculine lemma.','resolved','The graph uses one canonical attested node and preserves the variants in evidence notes and attestations.'),
(554,195,'Does fīant securely descend from exactly *peh₁-?','Only as a qualified modern proposal. The Germanic noun-and-verb relation is firmer than the displayed Indo-European route.','proposed','Kroonen publishes the comparison but no written intermediate or unique original semantic scene.','open',NULL),
(555,195,'Can the exact Proto-Germanic pronunciation and lexicalization moment be recovered?','No. *fi(j)and- and *fi(j)ēn- are normalized comparative reconstructions; optional j, branch vowels, and the moment the agent became an ordinary noun remain analytical.','probable','Kroonen and Ayora Estevan publish compatible forms and pre-branch lexicalization without a directly observed event.','open',NULL),
(556,195,'Did one who hates lexicalize as enemy only inside Old High German?','No. Gothic, Old English, Old Frisian, Old Dutch, Old Saxon, and North Germanic parallels require an earlier shared formation.','probable','AWB''s comparative header and the modern comparative studies span the daughter branches.','resolved','The lexicalized parent is placed at the Proto-Germanic level.'),
(557,195,'Does the root reveal that every enemy truly hates?','No. Historical word formation does not dictate the psychology of every referent. AWB includes military collectives, opponents, spiritual enemies, the Devil, and fixed constructions with context-dependent force.','established','The attested semantic architecture is broader than a universal claim of inner hatred.','resolved','The leaderboard exposes grammatical history while explicitly rejecting the etymological fallacy.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(544,543,'Headword: fîant, fîjant, st. m.; form inventory','supports','Classifies the word and displays its nominal paradigm.'),
(545,543,'Vol. 3, col. 796, fixed formulas and cautious participial note','supports','Separates noun status from residual participial transparency.'),
(546,543,'Vol. 3, col. 796, formula analysis','supports','Supplies attested daughter-language evidence.'),
(546,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Supplies the comparative reconstruction.'),
(546,492,'pp. 47–49, pre-branch lexicalization','context','Supplies the cross-branch category argument.'),
(547,543,'fîant uuesan, fîant mahhôn, and zi fîante tuon','supports','Publishes the formula meanings and located examples.'),
(548,543,'Meanings a–c, including personal, public, spiritual, Devil, and formulaic groups','supports','Documents the differentiated semantic architecture.'),
(549,543,'Form note on dfiunt at Gl L 155','supports','Flags the likely scribal start of diuuil and preserves uncertainty.'),
(550,543,'Dictionary citation inventory','supports','Provides edition locators without manuscript-object inspection.'),
(550,545,'Sievers 1892 digital transcription, p. 96','context','Provides an inspected edited text page but no inspected manuscript facsimile.'),
(551,515,'Pfeifer etymology: eighth-century fīant and fījant','supports','Provides a century horizon rather than a coinage event.'),
(551,491,'p. 140, reconstructed pre-branch formation','context','Places ancestry before the High German written record.'),
(552,543,'Comparative header across Germanic languages','supports','Publishes the collateral daughter set.'),
(552,491,'p. 140, reconstructed parent and daughter forms','supports','Places the forms under shared ancestry.'),
(553,543,'Vol. 3, cols. 792–793, variant and paradigm inventory','supports','Groups the surface records under one lemma while flagging corrupt cases.'),
(554,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the qualified route used in the graph.'),
(555,491,'p. 140, *fi(j)and- and *fi(j)ēn-','supports','Publishes normalized reconstructed forms.'),
(555,492,'pp. 47–49, pre-branch lexicalization','context','Supports relative chronology without one observable date.'),
(556,543,'Comparative header: Old Saxon, Dutch, Frisian, English, Norse, and Gothic forms','supports','Documents branch parallels.'),
(556,492,'pp. 47–49, inherited lexicalized formation','supports','Places lexicalization before the daughter records.'),
(557,543,'Meanings a–c and fixed-formula section','supports','Shows why historical morphology cannot define every referent''s psychology.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(195,195,2103,'fīant','Old High German fīant was already a noun—but in fixed phrases its old participial character could still shine through.','AWB calls fîant / fîjant a strong masculine noun, then isolates fixed formulas where its old participial character can still shine through. Fîant uuesan could mean be hostile, hate someone, or wish someone ill; fîant mahhôn meant make hostile; zi fîante tuon could mean regard as an enemy or hate. Beside it, AWB records the live weak verb fîên, to hate, in eighth- and ninth-century Alemannic manuscripts. The word is therefore more revealing than a simple literal gloss: it is a lexicalized noun whose older verbal architecture remained locally visible in syntax.','A',100,'The reveal follows AWB''s cautious modal wording and noun classification. It does not claim that fīant remained a productive participle, that every fixed-formula token means literal hate, that every enemy hates, or that the proposed PIE route is established.');
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
(195,543,'Vol. 3, col. 796: old participial character can shine through in fixed formulas','supports','Directly supports the noun-versus-participial-afterglow claim and the three formula groups.'),
(195,544,'Vol. 3, cols. 801–802: live fîên hate verb and Alemannic manuscript horizon','supports','Shows the related verb remained attested beside the lexicalized noun in Old High German.'),
(195,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Supplies the reconstructed Germanic word formation.'),
(195,492,'pp. 47–49, pre-branch lexicalization','context','Places noun lexicalization before the individual daughter records.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(151,195,184,'THE FOSSIL STILL GLOWED IN A FIXED PHRASE','Old High German fīant is already a strong masculine enemy noun, yet AWB says fixed formulas may still let its old participial character shine through. Follow Gothic fijan sideways to the live hate verb and the category ambiguity that helps reconstruct the deeper family without pretending the Old High German noun was still a productive participle.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1254 AND 1258
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1255,1256,1257) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1254 THEN 'Promoted from the graph-derived top evidence-ready candidate into a complete Old High German lexical, grammatical, historical, comparative, semantic, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1254 AND 1258;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1060 AND 1063;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1060 AND 1063;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1060 AND 1063;
