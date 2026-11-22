-- Promote German Feind from a comparative relative into a complete dossier.
-- The route keeps the attested Middle and Old High German stages, reuses the
-- reviewed Germanic agent-noun ancestry, and makes the German-versus-English
-- semantic split explicit without pretending that every cognate became a demon.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(189,'feind','Feind','feind','/faɪ̯nt/','German masculine noun','The modern German noun for a personal, political, military, or ideological enemy or opponent. Duden derives it through Middle High German vīnt or vīant and Old High German fīand, literally the hating one; DWDS dates Old High German fīant and fījant to the eighth century and identifies the Germanic ancestor as a petrified substantivized present participle. Grimm’s dictionary independently compares Gothic fijands, Old English fēond, English fiend, Dutch vijand, and Nordic forms, while warning that its own still-deeper foam hypothesis required confirmation. The reviewed route therefore follows the inherited enemy noun to reconstructed *fi(j)and- and *fi(j)ēn-, then treats *peh₁- as proposed and stops.','German Feind is English fiend’s undemonic cousin: both inherit a fossilized one-who-hates, but German kept the ordinary enemy at the center while English pushed fiend toward the demonic.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(514,'duden-feind','Duden — Feind','Dudenredaktion',2026,'Cornelsen Verlag','https://www.duden.de/rechtschreibung/Feind',NULL,'contemporary_dictionary'),
(515,'dwds-feind-pfeifer','DWDS — Feind, etymology after Wolfgang Pfeifer','Wolfgang Pfeifer · DWDS editorial team',2026,'Berlin-Brandenburg Academy of Sciences','https://www.dwds.de/wb/Feind',NULL,'etymological_dictionary'),
(516,'dwb-feind','Deutsches Wörterbuch von Jacob Grimm und Wilhelm Grimm — feind, m.','Jacob Grimm · Wilhelm Grimm · Trier Center for Digital Humanities',2025,'Trier Center for Digital Humanities','https://woerterbuchnetz.de/?sigle=DWB&lemid=F02122',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1212,189,30,1,'Feind','feind','enemy-opponent-modern-german','Feind','/faɪ̯nt/','attested','German spelling attested in 1483; modern standard headword',1483,2026,'enemy, adversary, hostile power, enemy force, or determined opponent','DWB reports this spelling in a 1483 German Bible; the pronunciation is the modern headword pronunciation. Duden documents personal, collective, military, and opponent-of-a-cause uses. Modern tokens are not compositionally equivalent to one who hates, and the grammatical masculine does not force every referent to be male.'),
(1213,189,31,2,'vīant','viant','enemy-middle-high-german','vīant',NULL,'attested','Middle High German',1050,1350,'enemy or adversary','Duden gives vīnt and vīant; DWDS additionally lists vīent. These are historical variants inside the High German continuation, not separate parent lexemes.'),
(1214,189,32,3,'fīant','fiant','enemy-old-high-german','fīant',NULL,'attested','Old High German, recorded from the eighth century',750,1050,'enemy; substantivized hating participant','DWDS dates fīant and fījant to the eighth century. Duden prints fīand and analyzes the noun as the substantivized present participle of fīēn, to hate.'),
(1215,189,5,4,'*fi(j)and-','fijand','enemy-lexicalized-participle','*fi(j)and-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a lexicalized enemy formation from an active present participle','Cross-Germanic enemy nouns place lexicalization before the recorded High German branch. The asterisk marks reconstruction; neither the spelling nor one exact lexicalization date is directly recorded.'),
(1216,189,5,5,'*fi(j)ēn-','fijen','hate-experience-proto-germanic-verb','*fi(j)ēn-',NULL,'reconstructed','Proto-Germanic reconstruction',-500,200,'a reconstructed verb meaning hate or be hostile toward','The enemy noun is built on this reconstructed Germanic verb. Old High German fīēn is an attested descendant, not the directly written Proto-Germanic form.'),
(1217,189,6,6,'*peh₁-','peh1','harm-blame-hate-proposal','*peh₁-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base associated with harm, blame, suffering, or hate','The deeper comparison is proposed. It supersedes neither Grimm’s explicit uncertainty nor the distinction between a published hypothesis and a recorded ancestor.'),
(1218,189,7,7,'UNKNOWN','unknown','feind-deep-boundary',NULL,NULL,'boundary','beyond the proposed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before hater, enemy, demon, harm, foam, fury, blame, or suffering is promoted as one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1024,189,1212,1213,'historical_continuation','Middle High German long ī undergoes the later High German diphthongization represented by modern /aɪ̯/; noun capitalization and final spelling standardize as Feind.','The inherited enemy or adversary noun remains available for personal, collective, military, and ideological opposition.','Dudenredaktion · Wolfgang Pfeifer','established','Both modern dictionaries explicitly give the Middle High German forms as the immediate historical stage; the edge does not assign one day to every spelling or sound transition.','Middle High German through Early New High German into the modern written standard.','reviewed'),
(1025,189,1213,1214,'historical_continuation','Old High German fīant, fījant, or fīand continues as Middle High German vīant, vīent, and vīnt through High German sound, spelling, and syllabic reduction; the sources preserve variant forms rather than one universal intermediate spelling.','The lexicalized enemy meaning continues through the attested High German record.','Dudenredaktion · Wolfgang Pfeifer · Jacob Grimm','established','Three independent dictionary records publish the Old-to-Middle-High-German sequence. Exact local phonetics and the chronology of every variant remain broader than the written headword chain.','Old High German records from the eighth century into the Middle High German textual period.','reviewed'),
(1026,189,1214,1215,'inheritance','Old High German fīant reflects the Germanic nd-agent formation after High German branch development in its vowel, glide, consonants, and inflection.','The already lexicalized one-who-hates formation is inherited as the ordinary enemy noun.','Daniel Ayora Estevan · Guus Kroonen · Wolfgang Pfeifer','probable','The Old High German form is attested and the cross-Germanic formation is published; the exact Proto-Germanic phonetic path remains reconstructed.','Proto-Germanic reconstruction into the eighth-century Old High German record.','reviewed'),
(1027,189,1215,1216,'lexicalized_participle','The present-participial nd-formation is built on the fi(j)- verb stem.','One who hates lexicalizes as enemy before Gothic, while productive participial use survives beside the noun.','Daniel Ayora Estevan · Guus Kroonen','probable','The derivation and pre-Gothic lexicalization are published; the exact moment and every token’s category remain unrecoverable.','Proto-Germanic derivation and lexicalization before the Gothic branch record.','reviewed'),
(1028,189,1216,1217,'competing_comparative_derivation','The proposed analysis connects the Germanic fi(j)- verb to a laryngeal-bearing Indo-European base through prehistoric present-stem remodeling; intermediate formal analyses vary and are not presented as written stages.','A proposed harm, blame, suffering, or hostility field develops toward the Germanic verb hate, but the original semantic center is not uniquely recoverable.','Guus Kroonen','proposed','The Proto-Germanic comparison is firmer than the displayed PIE route. The exact intermediate reconstruction and semantic unity remain analytical proposals.','Proposed Proto-Indo-European base to Proto-Germanic reconstruction.','reviewed'),
(1029,189,1217,1218,'knowledge_boundary','No older form is promoted beyond the proposed *peh₁- comparison.','The trail ends before the German enemy, English demon, or Grimm’s historical foam comparison is reverse-engineered into one universal prehistoric concept.','SET-U editorial boundary · Guus Kroonen · Jacob Grimm','boundary','The deepest displayed base is already proposed; Grimm’s own alternative was explicitly left awaiting confirmation, so no earlier node is treated as secure.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1024,514,'Herkunft and grammar','supports','Publishes Middle High German vīnt and vīant as the immediate historical stage behind modern Feind.'),
(1024,515,'Pfeifer etymology: Middle High German vīant, vīent, vīnt and modern Feind','supports','Independently supplies the historical continuation and modern opponent or adversary sense.'),
(1024,516,'Bd. 3, Sp. 1457–1460, headword and historical forms','supports','Documents the modern headword beside Middle High German vîent and vînt.'),
(1025,514,'Herkunft: Middle High German vīnt, vīant; Old High German fīand','supports','Publishes the direct Old-to-Middle-High-German sequence.'),
(1025,515,'Pfeifer etymology: Old High German fīant, fījant from the eighth century; Middle High German variants','supports','Dates the oldest High German stage and preserves the intervening forms.'),
(1025,516,'Bd. 3, Sp. 1457, comparative form paragraph','supports','Compares Old High German fîant with Middle High German vîent and vînt.'),
(1026,514,'Herkunft: substantivized participle of Old High German fīēn','supports','Identifies the attested High German noun as a hating-participant formation.'),
(1026,515,'Pfeifer etymology: Germanic *fijand- and Old High German fīant','supports','Publishes the reconstructed ancestor and its High German descendant.'),
(1026,516,'Bd. 3, Sp. 1457, Germanic comparanda and participial analysis','supports','Compares Gothic, Old High German, Old English, Dutch, and Nordic enemy nouns and explains the participial formation.'),
(1026,509,'Etymology summary and Germanic cognate set','supports','Independently lists Old High German fīant and modern German Feind inside the inherited Germanic noun family.'),
(1026,492,'p. 47 note 24, Old High German fīant among inherited enemy nouns','supports','Places the High German form on the pre-branch lexicalized-agent line.'),
(1026,491,'p. 140, *fi(j)and- and Germanic descendants','supports','Publishes the comparative formation and branch forms.'),
(1027,514,'Herkunft: literally the hating one, substantivized first participle','supports','Preserves the participial analysis in a modern German dictionary.'),
(1027,515,'Pfeifer etymology: petrified substantivized present participle of fīēn','supports','Independently identifies the frozen participle behind the enemy noun.'),
(1027,516,'Bd. 3, Sp. 1457, participial morphology discussion','supports','Compares fijands from fijan and friend-like agent formations while treating Feind as substantival or adjectival.'),
(1027,509,'Etymology summary: noun use of the present participle of the hate verb','supports','Supplies independent English-side comparative corroboration.'),
(1027,492,'pp. 47–49, lexicalized enemy noun beside productive present participles','supports','Publishes pre-branch lexicalization and the living participial system.'),
(1027,491,'p. 140, *fi(j)and- from *fi(j)ēn-','supports','Publishes the reconstructed Germanic word-formation relationship.'),
(1028,491,'p. 140, deeper etymological analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route used here with reduced confidence.'),
(1028,516,'Bd. 3, Sp. 1457, statement that the actual root remained unclear and the foam comparison required confirmation','challenges','Shows that an influential older analysis did not establish a secure deeper root.'),
(1029,491,'p. 140, deepest published comparison used in this dossier','supports','Supports stopping after the qualified PIE proposal rather than inventing an earlier node.'),
(1029,516,'Bd. 3, Sp. 1457, “dies alles sei dahingestellt und fordert bestätigung”','context','The older dictionary explicitly leaves its deeper hypothesis awaiting confirmation, reinforcing the evidence boundary.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(359,1214,515,'eighth century, source-reported',750,'Old High German headword horizon','Pfeifer etymology, fīant and fījant (8th century)','fīant, fījant','established','lexicographic_first_use',NULL,NULL,NULL,0,'DWDS/Pfeifer reports these Old High German forms from the eighth century. No manuscript object was directly inspected, and the representative year marks a century horizon rather than an exact first token.'),
(360,1212,516,'1483',1483,'German Bible enemy proverb','Bibel 1483, p. 304, as reported by DWB','ob deinem feind hungert, gib im ze essen und ob im dürst, gib im wasser zu trinken','established','lexical_corpus_record',NULL,NULL,NULL,0,'The public DWB entry reports this dated Bible occurrence. The printed 1483 object was not directly inspected and no absolute-first-use claim is made.'),
(361,1212,516,'early modern German, source-reported',NULL,'Deliverance from enemies','Weckherlin 46, as reported by DWB','erröt du, herr, mich deinen knecht von deiner feinden händen','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the inflected plural in this edited quotation. The underlying historical object was not directly inspected and the dossier does not infer an exact year from the author name.'),
(362,1212,516,'early modern German, source-reported',NULL,'Wolf as enemy of game and livestock','Logau 1, 108, 53, as reported by DWB','der wolf nimmt was ihm kümmt, ist feind für wild und vieh','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports this nonhuman-predator use. It is a source-reported lexicographic witness, not a directly inspected edition or a first figurative use.'),
(363,1212,516,'eighteenth-century German, source-reported',NULL,'Enemy of the country','Schiller 543b, as reported by DWB','nie war ich meines landes feind','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the country-enemy construction. The underlying edition was not directly inspected and no precise composition date is assigned.'),
(364,1212,516,'historical German, source-reported',NULL,'Enemy’s mouth proverb','Goethe, as reported by DWB','feindes mund frommt selten','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the proverb in a Goethe quotation. This is source-reported; the historical object and exact work locator were not directly inspected.'),
(365,1212,516,'historical German, source-reported',NULL,'Enemies in a vice-and-innocence contrast','Rost, Schäfergedichte 46, as reported by DWB','ist jemand tadelnswerth, so sind es meine feinde','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports the plural human-enemy occurrence. The source edition was not directly inspected, and the excerpt is not presented as a complete verse or corpus count.'),
(366,1212,516,'eighteenth-century German, source-reported',NULL,'Amor as an unwilling enemy','Thümmel, Wilhelmine 23, as reported by DWB','wenn er bisher wider seinen willen dein feind gewesen ist','established','lexical_corpus_record',NULL,NULL,NULL,0,'DWB reports this personal-enemy use. The quoted edition was not directly inspected, and the dossier makes no first-use or frequency claim.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(823,189,'fīand','Old High German','Duden’s Old High German spelling of the attested enemy noun',514),
(824,189,'fījant','Old High German','an eighth-century Old High German variant listed by DWDS/Pfeifer',515),
(825,189,'vīent','Middle High German','a Middle High German variant in the historical chain',515),
(826,189,'vīnt','Middle High German','a reduced Middle High German variant continued toward modern Feind',514),
(827,189,'fīand','Old Saxon','a West Germanic cognate in the comparative set',515),
(828,189,'vīent','Middle Low German','a Low German collateral form, not the direct High German parent node',515),
(829,189,'vīant','Middle Dutch','a Dutch collateral form from the inherited enemy noun',515),
(830,189,'vijand','Dutch','the modern Dutch continuation of the collateral inherited enemy noun',515),
(831,189,'fēond','Old English','the Old English enemy noun continued by English fiend',515),
(832,189,'fiend','English','the English cognate whose modern semantic center became demon or vicious person',509),
(833,189,'fjāndi','Old Norse','a North Germanic cognate glossed enemy or devil in DWDS/Pfeifer',515),
(834,189,'fiende','Swedish','a modern North Germanic continuation in the comparative set',515),
(835,189,'fijands','Gothic','the reviewed Gothic lexicalized enemy noun beside productive one-who-hates participles',492),
(836,189,'fīēn','Old High German','the attested hate verb whose participle underlies the enemy noun',514),
(837,189,'Freund','German','an antonym with parallel frozen participial morphology, not the same lexical root',515),
(838,189,'verfeinden','German','a modern derivative meaning to estrange or make enemies',515),
(839,189,'Feindschaft','German','a derivative naming enmity or hostile relations',514),
(840,189,'feindlich','German','an adjective derived from the enemy noun',515);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(767,189,1,'Proto-Indo-European linguistic horizon','proposed *peh₁- comparison','A deeper harm, blame, suffering, or hate comparison is published, but its exact formation and semantic unity remain proposed.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional reconstruction interval, not a dated inscription or mappable speech community.'),
(768,189,2,'Proto-Germanic linguistic horizon','*fi(j)ēn- and lexicalized *fi(j)and-','Cross-branch enemy nouns place the frozen participial formation before the surviving High German record.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval rather than a directly written word date.'),
(769,189,3,'Old High German textual world','fīant and fījant from the eighth century','DWDS/Pfeifer dates the forms to the eighth century; Duden prints fīand and identifies the hating-participle analysis.',NULL,NULL,'broad',750,799,'century','The century is source-reported and does not identify one manuscript, first speaker, or single coordinate.'),
(770,189,4,'Middle High German textual continuum','vīant, vīent, and vīnt','The historical dictionaries preserve several written forms inside the continuing enemy noun.',NULL,NULL,'broad',1050,1350,'range','A conventional language-period range, not one standardized pronunciation or exact transition date.'),
(771,189,5,'German written record','Feind in a 1483 Bible','DWB reports the proverb about feeding a hungry enemy in a dated 1483 German Bible.',NULL,NULL,'broad',1483,1483,'exact','The printed witness is source-reported; its object and production place were not directly inspected.'),
(772,189,6,'Modern German-language continuum','Feind as personal, collective, military, and ideological opponent','Duden documents the contemporary sense range while DWDS keeps the inherited opponent or adversary center visible.',NULL,NULL,'global',1650,2026,'range','German is pluricentric and geographically distributed, so the modern language is not reduced to one map pin.'),
(773,189,7,'Cross-Germanic semantic comparison','German Feind beside English fiend','German keeps ordinary enemy central; the English cognate foregrounds demon and vicious-person senses. Cognacy does not force identical daughter-language histories.',NULL,NULL,'uncertain',450,2026,'range','This is a comparative semantic stage across languages, not a single migration route or coordinate.'),
(774,189,8,'Knowledge boundary','beyond the proposed Indo-European comparison','No single enemy, demon, hater, foam, fury, harm, blame, or suffering origin is promoted beyond the qualified route.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(767,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed Indo-European route.'),
(767,516,'Bd. 3, Sp. 1457, older root discussion explicitly left awaiting confirmation','context','Shows why a deeper essence cannot be treated as settled.'),
(768,492,'p. 47 and note 24, pre-Gothic lexicalization and Germanic parallels','supports','Places the enemy noun before the recorded branches.'),
(768,515,'Pfeifer etymology: Germanic *fijand- and cross-Germanic descendants','supports','Independently supplies the comparative horizon.'),
(769,515,'Pfeifer etymology: fīant, fījant (8th century)','supports','Supplies the century-level Old High German horizon.'),
(769,514,'Herkunft: Old High German fīand','context','Independently identifies the historical stage and participial source.'),
(770,514,'Herkunft: Middle High German vīnt, vīant','supports','Documents the Middle High German continuation.'),
(770,515,'Pfeifer etymology: vīant, vīent, vīnt','supports','Preserves the expanded variant set.'),
(771,516,'Bd. 3, Sp. 1458, Bibel 1483, p. 304','supports','Reports the dated 1483 German occurrence.'),
(772,514,'Bedeutungen 1–3 and examples','supports','Documents personal, collective, military, and opponent-of-a-cause senses.'),
(772,515,'Definition and Pfeifer etymology','supports','Keeps modern opponent or adversary linked to the historical noun.'),
(773,515,'Pfeifer etymology: German Feind, Old English fēond, English fiend','supports','Places the German and English words in the same inherited family.'),
(773,509,'Meaning history and Germanic cognate set','supports','Documents the English semantic development and German comparative form.'),
(774,491,'p. 140, deepest published comparison used here','supports','Supports stopping after the qualified PIE proposal.'),
(774,516,'Bd. 3, Sp. 1457, explicit confirmation caveat','context','Shows that the historical alternative is not secure enough for another ancestry node.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(470,189,'Did German Feind originally mean demon?','No. The High German record centers on enemy or adversary. DWB does document der böse Feind or der Feind for the Devil, but that is a historical specialization beside the ordinary enemy noun, not the original definition.','established','Duden and DWDS give enemy or opponent as the core; DWB separately records the Devil expression.','resolved','The dossier preserves the secondary Devil use without rewriting the German headword as a demon noun.'),
(471,189,'Was Feind borrowed from English fiend?','No borrowing is established. German Feind continues Old and Middle High German forms; English fiend independently continues Old English fēond. Both branches meet at reconstructed *fi(j)and-.','established','Duden, DWDS, DWB, and OED publish collateral inherited histories.','resolved','The graph joins the words at the Germanic formation and draws no English-to-German arrow.'),
(472,189,'Does every modern Feind literally mean one who hates?','No. The participial source is historical morphology. Modern Duden senses include personal enemy, hostile power or force, and a determined opponent of something without requiring a recoverable emotion in every token.','established','Duden separates current lexical senses from the Herkunft statement.','resolved','The truth claim is diachronic, not a compositional definition imposed on modern speakers.'),
(473,189,'Can Feind refer only to a personal human enemy?','No. Duden also records hostile powers, enemy soldiers or troops, threats to a group, figurative natural enemies, and opponents of practices or causes.','established','The modern sense inventory is explicitly broader than one interpersonal relation.','resolved','The headword gloss and semantic journey retain the documented range.'),
(474,189,'Are fīant, fījant, vīant, vīent, and vīnt separate ancestry branches?','Not in the reviewed sources. They are variants inside the Old and Middle High German continuation of one inherited enemy noun.','established','Duden, DWDS, and DWB group the forms in one etymological chain.','resolved','The graph chooses one representative node per historical stage and keeps the remaining spellings as cited relatives.'),
(475,189,'Are Feind and Freund the same root with opposite meanings?','No. DWDS and DWB compare parallel fossilized participial morphology. The antonymy does not establish one verbal base or a single lexical root.','established','The dictionaries invoke Freund as a morphological analogy, not Feind’s parent or cognate from the same verb.','resolved','Freund remains a parallel formation outside the ancestry trail.'),
(476,189,'Did every Germanic cognate preserve the same semantic history?','No. German Feind remains an ordinary enemy noun, English fiend foregrounds demon and vicious-person senses, and Old Norse is glossed enemy or devil. Shared ancestry does not erase branch-specific semantics.','established','DWDS supplies the cross-branch set and OED documents the English specialization.','resolved','The leaderboard reveal compares outcomes without treating one daughter language as the original meaning.'),
(477,189,'Did one who hates lexicalize as enemy only inside High German?','No. Gothic, Old English, Old Frisian, Old Dutch, Old High German, and North Germanic parallels require an earlier Germanic formation.','probable','Ayora Estevan argues for pre-Gothic lexicalization and the dictionaries preserve the branch forms.','resolved','The graph places *fi(j)and- at the Proto-Germanic level.'),
(478,189,'Is the exact phonetic shape of *fi(j)and- directly known?','No. The form is a comparative reconstruction. Optional j notation, branch vowels, and the relation of written historical variants require analysis rather than direct Proto-Germanic observation.','probable','Kroonen, Ayora Estevan, and Pfeifer publish compatible comparative forms with normalized notation.','open',NULL),
(479,189,'Is the deepest *peh₁- route established?','No. The Germanic verb and lexicalized agent formation are firmer than the proposed Indo-European comparison, whose formal intermediates and semantic unity remain reconstructive.','proposed','Kroonen publishes the deeper route as analysis rather than direct attestation.','open',NULL),
(480,189,'Did Grimm establish a root meaning foam or fury?','No. DWB speculates about foam and rage but immediately says the matter should remain undecided and requires confirmation. It is evidence of scholarly history, not a secure ancestry node.','speculative','The qualification appears inside the historical dictionary’s own root discussion.','resolved','The foam proposal is preserved as a challenged hypothesis and excluded from the canonical route.'),
(481,189,'Can the lexicalization of one who hates as enemy be dated to one exact event?','No unique event is known. Cross-branch evidence places it before the recorded daughter languages, but no text records the prehistoric lexicalization moment.','probable','Comparative distribution establishes relative chronology more securely than an absolute date.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(470,514,'Bedeutungen and Herkunft','supports','Centers modern and historical Feind on enemy or opponent.'),
(470,516,'Bd. 3, Sp. 1459, der böse Feind and der Feind for the Devil','context','Documents a secondary German Devil use without making it original.'),
(471,514,'Herkunft: Middle and Old High German stages','supports','Publishes the independent High German continuation.'),
(471,509,'Etymology: Old English fēond to English fiend, with German Feind as cognate','supports','Publishes the independent English line.'),
(471,492,'p. 47 note 24, branch parallels from *fi(j)and-','supports','Places both branches beneath the common formation.'),
(472,514,'Bedeutungen 1–3 and Herkunft','supports','Separates broad modern senses from the participial history.'),
(472,515,'Pfeifer etymology: petrified substantivized present participle','context','Establishes the historical morphology without forcing synchronic transparency.'),
(473,514,'Bedeutungen 1–3 and examples','supports','Documents personal, group-threatening, military, and opponent-of-a-cause uses.'),
(474,514,'Herkunft: vīnt, vīant, fīand','supports','Groups the historical variants in one lineage.'),
(474,515,'Pfeifer etymology: fīant, fījant, vīant, vīent, vīnt','supports','Supplies the expanded variant record.'),
(475,515,'Pfeifer etymology: comparison with Freund and Heiland','supports','Frames Freund as parallel morphology.'),
(475,516,'Bd. 3, Sp. 1457, fijands/fijan beside frijônds/frijôn','context','Uses the antonym as a structural comparison rather than a shared verbal root.'),
(476,515,'Pfeifer etymology: German, English, Norse, Swedish, Dutch, and Gothic forms','supports','Shows formal inheritance with branch-specific glosses.'),
(476,509,'Meanings 1–5 and Germanic cognates','supports','Documents English fiend’s different semantic center.'),
(477,492,'p. 47 and note 24, pre-Gothic lexicalization and Germanic parallels','supports','Publishes the pre-branch analysis.'),
(477,516,'Bd. 3, Sp. 1457, cross-Germanic participial nouns','context','Provides older independent comparative support.'),
(478,491,'p. 140, *fi(j)and- and *fi(j)ēn-','supports','Publishes reconstructed forms whose notation remains analytical.'),
(478,515,'Pfeifer etymology: Germanic *fijand- and branch variants','context','Shows descendant evidence beneath the reconstruction.'),
(479,491,'p. 140, deeper analysis of *fi(j)ēn-','supports','Publishes the proposed route while leaving it reconstructive.'),
(479,516,'Bd. 3, Sp. 1457, root still unclear','context','Demonstrates historical uncertainty beneath the Germanic comparison.'),
(480,516,'Bd. 3, Sp. 1457, foam hypothesis followed by explicit demand for confirmation','supports','The source itself marks the proposal as unresolved.'),
(481,492,'p. 47 and note 24, lexicalization before Gothic','supports','Supplies relative pre-branch chronology without an absolute event date.'),
(481,515,'Pfeifer etymology: eighth-century High German record beneath reconstructed Germanic','context','Provides a terminus before which the inherited noun formation already existed.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(189,189,2100,'Feind','German Feind is English fiend’s undemonic cousin: both fossilize one who hates.','Duden, DWDS/Pfeifer, and Grimm independently carry Feind through Middle and Old High German to a substantivized hating participle. OED places English fiend on the collateral Old English branch. German retained the ordinary enemy or opponent at its semantic center; English turned the cognate toward Devil, demon, and vicious person.','A',100,'The reveal states inherited morphology and branch-specific semantic development. It does not claim that modern Feind transparently encodes hatred, that English borrowed from German, that German never used Feind for the Devil, or that the proposed PIE route is established.');
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
(189,514,'Herkunft and Bedeutungen','supports','Publishes the High German chain, the hating-participle analysis, and ordinary modern enemy senses.'),
(189,515,'Pfeifer etymology: Germanic *fijand-, historical forms, and English fiend cognate','supports','Publishes the frozen participle and cross-branch comparison.'),
(189,516,'Bd. 3, Sp. 1457–1460, comparative morphology and German historical uses','supports','Independently documents the participial history and continuing enemy noun.'),
(189,509,'Etymology and meanings 1–5','supports','Documents English fiend’s collateral inheritance and semantic development from enemy toward demon and hostile person.'),
(189,492,'p. 47 and note 24, pre-Gothic lexicalized enemy formation','supports','Places the fossilized one-who-hates formation before the daughter branches.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(145,189,188,'THE GERMAN ENEMY AND ENGLISH DEMON ARE COUSINS','German Feind and English fiend descend on collateral branches from the same lexicalized Germanic one-who-hates formation. Follow the family sideways: German keeps the ordinary enemy, while English makes the cognate demonic. The graph proves kinship without inventing a borrowing arrow or identical semantic fate.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1212 AND 1218
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1215,1216,1217) THEN 'proposed' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1212 THEN 'Canonicalized from the German candidate into a complete form, semantic, attestation, dispute, and journey dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1212 AND 1218;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1024 AND 1029;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1024 AND 1029;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1024 AND 1029;
