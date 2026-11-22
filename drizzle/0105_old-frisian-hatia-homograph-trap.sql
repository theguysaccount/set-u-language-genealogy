-- Promote Old Frisian hatia from the graph-derived evidence-ready queue into a
-- complete dossier. The May 2026 Corpus Oudfries search exposes six hits under
-- hatia, but Buma's critical note identifies the Brokmer B 101 token as atia
-- "rear" with prothetic h. It is therefore recorded as an excluded homograph,
-- not as evidence for the hate and harm verb.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(90,'old-frisian','Old Frisian','Indo-European','West Germanic',0,1200,1550,'Historical Frisian varieties represented in the Corpus Oudfries, including East and West Old Frisian witnesses.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(201,'hatia','hatia','hatia','not directly recoverable','Old Frisian weak verb','Old Frisian hatia is a weak verb whose lexicographic field extends beyond an inward feeling. Hofmann and Popkema give hate or reject, damage, and a feud-language expression for harming or pursuing someone as an enemy. A May 2026 Corpus Oudfries search for word or lemma hatia returns six records in 235,462 tokens, but those are not six instances of this verb. Buma''s critical note on Brokmer B 101 explicitly identifies its written hatia as atia "rear" with prothetic h, and Nijdam translates the passage as a poor mother being unable to feed her children. That token is excluded from the hate lineage. The five relevant corpus records occur in legal, road, family, and theological contexts: forms hatijen, hatie, hata, and hatien can concern harming or hindering on a road, a writing or event going against someone, or God hating perjury, lying speech, and false witnesses. The current corpus count is a bounded research surface, not a frequency estimate for medieval speech or a claim about every surviving witness. The underlying manuscripts were not directly inspected for this dossier, no earliest-use claim is made, and no exact historical pronunciation is invented.','One corpus hit written hatia is not "hate" at all. Buma identifies it as atia "rear" with a prothetic h; the genuine verb ranges through legal harm and obstruction as well as theological hate.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(573,'hofmann-popkema-hatia','Altfriesisches Handwörterbuch — extracted entry hatia','Dietrich Hofmann · Anne Tjerk Popkema',2008,'Universitätsverlag Winter · extracted web presentation','https://ieed.ullet.net/popkema.html',NULL,'historical_dictionary'),
(574,'koebler-altfriesisch-hatia','Altfriesisches Wörterbuch, 4th edition — hatia','Gerhard Köbler',2014,'Gerhard Köbler','https://www.koeblergerhard.de/afries/afries_h.html',NULL,'historical_dictionary'),
(575,'koebler-altfriesisch-method','Altfriesisches Wörterbuch — Hinweise and sigla','Gerhard Köbler',2014,'Gerhard Köbler','https://www.koeblergerhard.de/afrieswbhinw.html',NULL,'lexicographic_method'),
(576,'corpus-oudfries-about','Corpus Oudfries — About and version 1.0','Rita van de Poel · Instituut voor de Nederlandse Taal',2026,'Instituut voor de Nederlandse Taal','https://corpusoudfries.ivdnt.org/blacklab-frontend/OFR/about',NULL,'research_database'),
(577,'corpus-oudfries-j-rgj-hatia','Corpus Oudfries — hatia in the Register to Jus Municipale Frisonum','Corpus Oudfries editors',2026,'Instituut voor de Nederlandse Taal','https://corpusoudfries.ivdnt.org/blacklab-frontend/OFR/docs/J-RgJ?query=%5Bword_or_lemma%3D%22hatia%22%5D',NULL,'lexical_corpus_record'),
(578,'corpus-oudfries-j-rud-hatia','Corpus Oudfries — hatia in the Book of Rudolf','Corpus Oudfries editors',2026,'Instituut voor de Nederlandse Taal','https://corpusoudfries.ivdnt.org/blacklab-frontend/OFR/docs/J-Rud?query=%5Bword_or_lemma%3D%22hatia%22%5D',NULL,'lexical_corpus_record'),
(579,'corpus-oudfries-ro-jf-hatia','Corpus Oudfries — hatia in Jurisprudentia Frisica','Corpus Oudfries editors',2026,'Instituut voor de Nederlandse Taal','https://corpusoudfries.ivdnt.org/blacklab-frontend/OFR/docs/Ro-JF?query=%5Bword_or_lemma%3D%22hatia%22%5D',NULL,'lexical_corpus_record'),
(580,'corpus-oudfries-b2-pnb-hatia','Corpus Oudfries — hatia search hit in the Book of Debts','Corpus Oudfries editors',2026,'Instituut voor de Nederlandse Taal','https://corpusoudfries.ivdnt.org/blacklab-frontend/OFR/docs/B2-PnB?query=%5Bword_or_lemma%3D%22hatia%22%5D',NULL,'lexical_corpus_record'),
(581,'buma-brokmer-hatia-atia','Die Brokmer Rechtshandschriften — B 101 and critical note hatia = atia','W. J. Buma',1949,'Springer','https://link.springer.com/chapter/10.1007/978-94-011-9022-0_2','10.1007/978-94-011-9022-0','critical_edition'),
(582,'nijdam-brokmer-b101','Lichaam, eer en recht in middeleeuws Friesland','J. A. Nijdam',2008,'Leiden University','https://scholarlypublications.universiteitleiden.nl/handle/1887/13139',NULL,'dissertation'),
(583,'starling-germanic-hat-family','Proto-Germanic *xatiz, *xatōn-, -ēn- and *xatjan-','StarLing database editors',NULL,'StarLing','https://starlingdb.org/cgi-bin/etymology.cgi?root=config&basename=%2Fdata%2Fie%2Fgermet&text_number=346&single=1',NULL,'comparative_database');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1285,201,90,1,'hatia','hatia','hate-harm-verb','hatia',NULL,'attested','Old Frisian legal and theological records, text 1220-1300 through manuscripts 1490-1540',1220,1540,'to hate or reject; to damage; in feud-language, to harm or pursue as an enemy','The May 2026 Corpus Oudfries search returns six records under word or lemma hatia. Five are retained as relevant records of this verb; Brokmer B 101 is excluded because Buma identifies its hatia as prothetic atia "rear". Surface variants in the retained records include hatijen, hatie, hata, and hatien.'),
(1286,201,5,2,'*xatēnan ~ *xatōjanan','xatenan-xatojanan','hate-class-three-reconstruction','*xatēnan ~ *xatōjanan',NULL,'reconstructed','Proto-Germanic reconstruction alternatives',-500,200,'reconstructed class-III or related weak verbs in the hate and hostility field','Orel publishes the alternation and explicitly includes Old Frisian hatia with Gothic hatan, Old English hatian, Old Saxon hatan, Old Norse hata, and Old High German hazzōn. The x is Orel''s notation for the Germanic fricative commonly written h.'),
(1287,201,5,3,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','The weak-verb family is grouped with the Germanic hate-noun base represented in the reviewed graph by *hatiz-. The exact verb formation and semantic priority remain disputed.'),
(1288,201,6,4,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. Old Frisian legal harm, obstruction, rejection, and theological hate do not reveal one certain prehistoric semantic scene.'),
(1289,201,6,5,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','The analytical base is reconstructed and its proposed semantic members are not transparently unified.'),
(1290,201,7,6,'UNKNOWN','unknown','hatia-old-frisian-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before harm, obstruction, enemy pursuit, rejection, theological hate, grief, pain, or care is promoted as the one certain essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1085,201,1285,1286,'inheritance','Old Frisian h corresponds to the Germanic fricative Orel writes x. The attested weak-verb forms show spelling and inflectional variation including hatia, hatijen, hatie, hata, and hatien, but the reviewed sources do not publish one complete dated series of intermediate spoken changes.','The inherited hostility verb is used across hate or rejection, damage, feud-language enemy pursuit, road obstruction, legal adversity, and theological condemnation. No dictionary sense order is promoted as a chronological semantic path.','Vladimir Orel · Dietrich Hofmann · Anne Tjerk Popkema · Corpus Oudfries editors','probable','The comparative Germanic family is published, but reconstruction notation varies and one corpus homograph must be excluded from the hate lineage.','Proto-Germanic reconstruction into source-reported Old Frisian legal and theological records.','reviewed'),
(1086,201,1286,1287,'derivation','Orel groups the weak-verb reconstruction with the Germanic hate-noun base he represents as *xataz ~ *xatez; the graph crosswalks that base to its reviewed *hatiz- node.','A noun family for hate or enmity supplies or associates with weak verbs whose daughter branches express hating, hostility, pursuit, and anger.','Vladimir Orel · Merriam-Webster Editors','probable','The lexical family is secure, but the exact formation of class-III hatan and the direction of any specifically Gothic remodeling remain disputed.','Related Proto-Germanic reconstructed formations rather than independently dated words.','reviewed'),
(1087,201,1287,1288,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1088,201,1288,1289,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1089,201,1289,1290,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The graph stops before Old Frisian harm, obstruction, rejection, enemy pursuit, or theological hate is reverse-engineered into one certain prehistoric origin.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends inside the Germanic family; the displayed PIE route remains qualified.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1085,447,'p. 203, *xatēnan ~ *xatōjanan and Old Frisian hatia','supports','Publishes the reconstructed weak-verb alternation and the Old Frisian daughter.'),
(1085,573,'Headword hatia, variants and senses 1-2','supports','Documents the Old Frisian verb, its variants, and the hate, reject, damage, and feud-language range.'),
(1085,576,'Version 1.0 corpus scope and annotation method','context','Defines the bounded current corpus and its lexicographic annotation basis.'),
(1085,581,'B 101 critical note: hatia = atia "rear" with prothetic h','challenges','Excludes one apparent corpus hit from the inherited hate verb rather than letting spelling alone define the lineage.'),
(1086,447,'p. 203, *xataz ~ *xatez beside *xatēnan ~ *xatōjanan','supports','Publishes the noun and weak-verb formations together in the Germanic family.'),
(1086,436,'Noun etymology: Germanic *hatiz- and derived weak verb','context','Supplies the graph''s cross-source representation of the corresponding noun base.'),
(1087,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the deeper formal proposal while flagging semantic opacity.'),
(1087,439,'Discussion of proposed non-Germanic cognates','challenges','Questions whether the proposed deeper members form one secure semantic family.'),
(1088,436,'Noun etymology: *ḱh₂d-es- from *ḱeh₂d-','supports','Publishes the proposed formation and analytical base.'),
(1089,436,'Etymology note: semantic relations are far from transparent','supports','Defines the limit of the deep comparison.'),
(1089,439,'Qualified conclusion on pursuit and the deeper comparison','supports','Supports an explicit endpoint rather than an invented first meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(451,1285,577,'manuscript J dated 1520-1540; source-reported',NULL,'Register to Jus Municipale Frisonum','J-RgJ, indexed sequence 100-105','Thredda: hij wrbiedet emment to hatijen ende toe hindrien op dae heerstraeta.','established','lexical_corpus_record','Corpus Oudfries · Jus Municipale Frisonum manuscript J',NULL,NULL,0,'The corpus supplies the surface hatijen and lemmatizes it under hatia in a prohibition involving harm and hindrance on the army road. The manuscript pixels and a full diplomatic edition were not directly inspected.'),
(452,1285,578,'text dated 1220-1300; manuscript J dated 1520-1540; source-reported',NULL,'Book of Rudolf','J-Rud, indexed hit for hatia','Jc wrbanne, datter emma hatie dae herestreta, deer gaet truch dae land iefta toe ene tolneda merkede iefta toe ene goedishuse;','established','lexical_corpus_record','Corpus Oudfries · Jus Municipale Frisonum manuscript J',NULL,NULL,0,'The corpus supplies the surface hatie in a ban concerning the army road through the land or toward a toll market or religious house. Text and manuscript dates are kept separate, and the manuscript object was not directly inspected.'),
(453,1285,579,'Codex Roorda manuscript dated 1490-1504; source-reported',NULL,'Jurisprudentia Frisica','Ro-JF, line group 15, first hatia result','Men scryft een man hata deer hem selff to-jenst geet dat scrift steet wal to lyowen inda ponten deert hem to-jenst.','probable','lexical_corpus_record','Corpus Oudfries · Codex Roorda Ro',NULL,NULL,0,'The corpus lemmatizes hata under hatia in a passage about writing that goes against or harms a man. Because no full translation or manuscript image was inspected, the contextual gloss remains probable.'),
(454,1285,579,'Codex Roorda manuscript dated 1490-1504; source-reported',NULL,'Jurisprudentia Frisica','Ro-JF, second hatia result','joff da kynden buta wirth worden jeff jelkirs hata to coem ende dat hyase dan naet wrwerredan','probable','lexical_corpus_record','Corpus Oudfries · Codex Roorda Ro',NULL,NULL,0,'The corpus lemmatizes hata under hatia in a family-law passage. The exact syntax and sense were not promoted beyond a probable harm or adversity context because no full translation or manuscript image was inspected.'),
(455,1285,579,'Codex Roorda manuscript dated 1490-1504; source-reported',NULL,'Jurisprudentia Frisica','Ro-JF, line group 5, third hatia result','Jtem der meen-ediga menscha off leynafftiga tonga ende den falsche orkena is god sonderlinga hatien als salmon byscrywt.','established','lexical_corpus_record','Corpus Oudfries · Codex Roorda Ro',NULL,NULL,0,'The corpus supplies hatien in a theological statement that God especially hates the perjurer, lying tongue, and false witnesses. The transcription is source-reported and the manuscript object was not directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(999,201,'hetia','West Old Frisian','a regional variant listed by Hofmann and Popkema',573),
(1000,201,'hātia','Old Frisian','a vowel-length variant listed by Hofmann and Popkema',573),
(1001,201,'hatijen','Old Frisian','an inflected corpus surface in the Register to Jus Municipale Frisonum',577),
(1002,201,'hatie','Old Frisian','an inflected corpus surface in the Book of Rudolf',578),
(1003,201,'hata','Old Frisian','a Jurisprudentia Frisica corpus surface lemmatized under hatia',579),
(1004,201,'hatien','Old Frisian','a Jurisprudentia Frisica corpus surface in a theological hate context',579),
(1005,201,'hatia = atia','Old Frisian','an excluded homograph in Brokmer B 101: Buma identifies prothetic h before atia "rear"',581),
(1006,201,'hāt','Old Frisian','a related hate noun in the Germanic family',473),
(1007,201,'haetjen','Modern North Frisian','Köbler''s modern Frisian comparison for the historical verb',574),
(1008,201,'hatja','Old Frisian','a comparative-database representation whose dialect assignment differs from other reviewed sources',583),
(1009,201,'hatian','Old English','a collateral weak verb directed at people, enemies, vices, and deeds',447),
(1010,201,'hata','Old Norse','a collateral verb ranging across persecution, rejection, humiliation, hate, and poetic damage',447),
(1011,201,'hazzōn','Old High German','a collateral Germanic hate verb',447);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(855,201,1,'Proposed Indo-European linguistic horizon','qualified *ḱeh₂d- comparison','The deepest displayed route is a comparative proposal whose semantic members remain disputed.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon, not an attested word or archaeological point.'),
(856,201,2,'Proto-Germanic linguistic horizon','*xatēnan ~ *xatōjanan beside *hatiz-','Orel''s Gothic, Old English, Old Frisian, Old Saxon, Old Norse, and Old High German set supports a shared verb family while leaving reconstruction detail open.',NULL,NULL,'uncertain',-500,200,'range','Comparative bounds, not a directly dated spoken token.'),
(857,201,3,'Old Frisian Book of Rudolf textual tradition','text dated 1220-1300; copied in manuscript J 1520-1540','A source-reported hatie record concerns the army road. The text date and later manuscript-object date are not collapsed into one first-use year.',NULL,NULL,'broad',1220,1300,'range','Corpus metadata dates the text to 1220-1300 and the manuscript separately to 1520-1540.'),
(858,201,4,'West Lauwers Old Frisian manuscript tradition','Codex Roorda, 1490-1504','Jurisprudentia Frisica supplies three source-reported forms across legal adversity and theological hate contexts.',NULL,NULL,'regional',1490,1504,'range','The range is the corpus manuscript date, not a semantic start or end date.'),
(859,201,5,'Jus Municipale Frisonum manuscript tradition','manuscript J, 1520-1540','The register supplies hatijen in a prohibition involving harm and hindrance on an army road.',NULL,NULL,'regional',1520,1540,'range','The range is the corpus manuscript date; the text page does not supply an independent composition date.'),
(860,201,6,'Modern Corpus Oudfries research surface','version 1.0 overview, May 2026','The corpus makes six search hits inspectable, while Buma''s critical note and Nijdam''s translation require one Brokmer hit to be excluded from the hate verb.',NULL,NULL,'uncertain',2026,2026,'exact','The exact year dates the public corpus overview, not the medieval lexical material.'),
(861,201,7,'Knowledge boundary','beyond the qualified Indo-European comparison','The graph stops before harm, obstruction, rejection, enemy pursuit, theological hate, grief, care, or pain becomes one certain original essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(855,436,'Proposed *ḱh₂d-es- and *ḱeh₂d- analysis','supports','Publishes the deepest formal comparison with explicit semantic caution.'),
(855,439,'Qualified non-Germanic comparison','challenges','Preserves the dispute over semantic unity and membership.'),
(856,447,'p. 203, *xatēnan ~ *xatōjanan and Germanic daughters','supports','Publishes the comparative verb set including Old Frisian hatia.'),
(857,578,'Metadata: text 1220-1300; manuscript J 1520-1540','supports','Separates the older text horizon from the later surviving manuscript witness.'),
(858,579,'Metadata: Codex Roorda Ro, West Lauwers, 1490-1504','supports','Locates the three source-reported Jurisprudentia Frisica records in one manuscript tradition.'),
(859,577,'Metadata: manuscript J, 1520-1540; hatijen result','supports','Locates the road-harm record in the register tradition.'),
(860,576,'Version 1.0 overview, May 2026; 235,462-token corpus surface','supports','Defines the current research surface and its scale.'),
(860,580,'B2-PnB result: ne muge nauvet hatia','context','Supplies the corpus-lemmatized Brokmer token that requires correction.'),
(860,581,'B 101 critical note: hatia = atia "rear"','challenges','Shows why six search hits cannot be reported as six hate-verb attestations.'),
(861,436,'Semantic-transparency warning','supports','Marks the deep comparison as semantically opaque.'),
(861,439,'Qualified conclusion','supports','Supports stopping beyond the secure Germanic family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(642,201,'Was Old Frisian hatia a weak verb?','Yes. Hofmann and Popkema classify hatia, hetia, and hātia as a weak verb; Köbler independently classifies the family as a weak verb.','established','Two Old Frisian dictionaries agree on lexical category and core hate or harm meanings.','resolved','The dossier keeps the verb distinct from the noun hāt and from Brokmer atia "rear".'),
(643,201,'Does the current Corpus Oudfries search return six hits?','Yes for the reviewed May 2026 word-or-lemma query. The number is a current corpus result, not a census of all lost, surviving, or spoken Old Frisian.','established','The public search reports six hits in a 235,462-token corpus; the about page defines the version and scope.','resolved','Every displayed count names the corpus and review date.'),
(644,201,'Are all six search hits instances of the hate or harm verb?','No. Buma identifies the Brokmer B 101 hatia as atia "rear" with prothetic h, and Nijdam''s translation concerns a mother unable to feed her children.','established','A critical edition''s explicit philological note and an independent dissertation translation converge against the corpus lemma assignment.','resolved','The Brokmer token is excluded from the main form''s attestation ledger and shown only as a corrected homograph.'),
(645,201,'Does the Brokmer B 101 passage mean a mother cannot hate her children?','No. In context it says that if the mother is so poor that she cannot otherwise feed or rear her children, she may take something from the wergeld.','established','Nijdam translates the clause with feeding the children; Buma explains the written form as prothetic atia "rear".','resolved','The family-law context is not reverse-engineered into an emotional sense.'),
(646,201,'Did hatia mean only inward hatred?','No. Hofmann and Popkema give hate or reject, damage, and a feud-language expression for harming or pursuing someone as an enemy. The corpus records include road and legal-adversity contexts beside theological hate.','established','Lexicographic sense divisions and located corpus passages independently show active harm and obstruction.','resolved','The leaderboard claims documented range, not a proven chronological sequence.'),
(647,201,'Could hatia concern damaging or hindering a road?','Yes in the reviewed legal records. The Register to Jus Municipale Frisonum pairs hatijen with hindrien on the army road, and the Book of Rudolf places hatie in a ban concerning that road.','established','Two separate corpus documents supply related legal-road constructions.','resolved','The exact modern translation remains cautious, but the action context is explicit.'),
(648,201,'Could hatia express theological hate?','Yes. Jurisprudentia Frisica says God especially hatien the perjurer, lying tongue, and false witnesses, as Solomon describes.','established','The located corpus transcription supplies an overt theological subject and condemned objects.','resolved','The theological record remains one sense context, not the verb''s universal essence.'),
(649,201,'Are the remaining five records all semantically identical?','No. They range across road harm or obstruction, writing or events going against a person, family-law adversity, and divine hatred; two Jurisprudentia Frisica passages remain only cautiously glossed.','probable','The corpus surface and Popkema''s sense inventory support a range, while full translations were not available for every passage.','resolved','The ledger preserves probable contextual glosses instead of forcing one English definition.'),
(650,201,'Is the Proto-Germanic parent exactly *xatēnan ~ *xatōjanan?','The inherited Germanic verb family is probable, but reconstruction notation and the relationship among weak formations vary across references.','probable','Orel publishes the alternation; Köbler prints *hatōn, *hatēn, and *hatǣn; other reviewed dossiers use different levels of reconstruction.','open',NULL),
(651,201,'Why does Köbler print hatia with an asterisk while corpus forms are visible?','Köbler''s sigla mark inferred or unattested representations inside his lexicographic system, while the later corpus surfaces inflected forms hatijen, hatie, hata, and hatien and one misleading hatia homograph. The exact source-base difference remains to be reconciled.','probable','The dictionary''s method page defines its asterisk conventions; the live corpus exposes later searchable forms.','open',NULL),
(652,201,'Is hatia specifically East Old Frisian, West Old Frisian, or both?','The reviewed sources do not flatten the dialect evidence. Popkema marks hetia as West Lauwers, Corpus Oudfries places relevant records in West Old Frisian texts, while StarLing labels hatia East Frisian.','proposed','The references organize dialect labels and variants differently.','open',NULL),
(653,201,'Is damage a late semantic extension or an old legal and feud specialization?','Not established. The dictionaries document damage and enemy-pursuit senses, but the reviewed records do not supply a continuous dated semantic transition series.','proposed','Sense range is better evidenced than sequence or direction.','open',NULL),
(654,201,'Is any one reviewed token the earliest surviving use of the verb?','Not established. The Book of Rudolf has an older text-date range but a later manuscript, and this review did not compare every witness, edition, or dating claim.','established','Corpus metadata separates text and manuscript dates and does not label one hit the global first use.','open',NULL),
(655,201,'Can the six-hit result measure ordinary medieval speech?','No. Corpus Oudfries is a surviving-text corpus dominated by legal and related manuscripts, not a random sample or recording of spoken frequency.','established','The about page defines 177 text witnesses from 11 manuscripts and a bounded 235,462-token surface.','resolved','Counts are reported as corpus architecture, never as population frequency.'),
(656,201,'Can one exact Old Frisian pronunciation or vowel length be recovered?','No. Lexicographic forms include hatia, hetia, and hātia, but the reviewed sources do not provide audio or a complete dated phonetic transition series.','established','The dictionaries publish spelling and quantity notation rather than a recorded historical voice.','open',NULL),
(657,201,'Does hatia securely descend from exactly *ḱeh₂d-?','Only as a qualified proposal. The Germanic comparison is firmer than the displayed Indo-European route, whose semantic members are far from transparent.','proposed','Merriam-Webster qualifies the route and Liberman challenges parts of the comparison.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(642,573,'Entry hatia, hetia, hātia swv.','supports','Classifies the Old Frisian weak verb and its variants.'),
(642,574,'Entry hatia, sw. V.','supports','Independently classifies the verb.'),
(643,576,'Version 1.0, May 2026; corpus contents and search architecture','supports','Defines the bounded current corpus.'),
(643,580,'Word-or-lemma query summary: six hits in 235,462 tokens','supports','Supplies the reviewed search result.'),
(644,581,'B 101 note: hatia = atia "erziehen"; prothesis of h','supports','Explicitly identifies the non-hate lexical analysis.'),
(644,582,'p. 256, B 101 and Dutch translation','supports','Independently translates the clause as inability to feed the children.'),
(644,580,'B2-PnB corpus result lemmatized under hatia','challenges','Shows the current corpus assignment that the critical evidence corrects.'),
(645,582,'p. 256, B 101: cannot otherwise feed her children','supports','Supplies the family-law meaning in context.'),
(645,581,'B 101 critical note on prothetic atia','supports','Supplies the exact philological explanation.'),
(646,573,'Senses 1-2 and hatia ande or noder hinderia expression','supports','Publishes hate, reject, damage, and feud-language enemy pursuit.'),
(646,577,'hatijen ende toe hindrien op dae heerstraeta','supports','Supplies an active road-harm and hindrance context.'),
(646,579,'Three Jurisprudentia Frisica results','supports','Supplies legal adversity and theological hate contexts.'),
(647,577,'J-RgJ result: hatijen ende toe hindrien','supports','Pairs the verb with hindering on the army road.'),
(647,578,'J-Rud result: hatie dae herestreta','supports','Supplies the second army-road construction.'),
(648,579,'Ro-JF line group 5: is god sonderlinga hatien','supports','Supplies the theological hate statement.'),
(649,577,'J-RgJ road-harm result','supports','Documents one action context.'),
(649,578,'J-Rud army-road result','supports','Documents a second action context.'),
(649,579,'Ro-JF three-result surface','supports','Documents diverse legal and theological contexts.'),
(650,447,'p. 203, *xatēnan ~ *xatōjanan','supports','Publishes one comparative reconstruction.'),
(650,574,'Entry etymology: *hatōn, *hatēn, *hatǣn','challenges','Supplies alternative reconstruction notation and segmentation.'),
(651,575,'Asterisk conventions in Hinweise and sigla','supports','Defines Köbler''s inferred-form and inferred-lemma notation.'),
(651,574,'Entry printed hatia*','supports','Shows the marked lexicographic headform.'),
(651,576,'Corpus annotation based on Hofmann and Popkema; searchable word and lemma','challenges','Exposes a different later evidence and annotation surface.'),
(652,573,'Entry variants: hetia marked West Lauwers','supports','Supplies one regional label.'),
(652,579,'Metadata: West Lauwers and West Old Frisian','supports','Locates the Jurisprudentia Frisica records.'),
(652,583,'Comparative row labels hatia East Frisian','challenges','Supplies a materially different dialect assignment.'),
(653,573,'Damage and feud-language enemy-pursuit senses','supports','Publishes the semantic range without a dated transition.'),
(653,577,'Road harm and hindrance construction','context','Supplies one legal-use setting.'),
(654,578,'Text 1220-1300; manuscript J 1520-1540','supports','Shows why an older text horizon is not one simple object date.'),
(654,576,'Corpus scope: ca 1200-1550 and 177 witnesses','context','Prevents a first-use claim from a small reviewed subset.'),
(655,576,'235,462 tokens; 177 text witnesses from 11 manuscripts','supports','Defines the corpus as a bounded surviving-text collection.'),
(656,573,'Variants hatia, hetia, hātia','supports','Supplies orthographic and quantity variation without recorded audio.'),
(656,574,'Headword and etymological forms','context','Supplies a second written analysis.'),
(657,436,'Qualified *ḱh₂d-es- and *ḱeh₂d- route','supports','Publishes the proposal with semantic caution.'),
(657,439,'Non-Germanic comparison discussion','challenges','Questions membership and semantic unity.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(201,201,2109,'hatia','One corpus hit written hatia is not the hate verb at all.','The May 2026 Corpus Oudfries search returns six records under word or lemma hatia, but spelling alone creates a trap. In Brokmer B 101, Buma explicitly identifies hatia as atia "rear" with prothetic h; Nijdam''s translation confirms a poor mother unable to feed her children. That token is excluded from the hate lineage. The five relevant records then reveal the genuine verb''s own range: harm or hindrance on an army road, legal adversity, and God hating perjury, lying speech, and false witnesses. The contrarian truth is therefore philological twice over: one identical surface belongs elsewhere, while the inherited verb itself extends beyond private feeling.','A',100,'The correction rests on a critical edition''s explicit note, an independent dissertation translation, the current corpus record, and the Old Frisian dictionary sense inventory. No manuscript pixels were directly inspected, no corpus count is treated as spoken frequency, two legal passages retain probable glosses, and no exact first use, pronunciation, or deepest PIE essence is claimed.');
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
(201,580,'B2-PnB result: ne muge nauvet hatia; six-hit query surface','context','Supplies the misleading corpus surface and bounded count.'),
(201,581,'B 101 note: hatia = atia "erziehen" with prothetic h','supports','Supplies the decisive philological correction.'),
(201,582,'p. 256, B 101 and Dutch translation about feeding the children','supports','Independently confirms the non-hate context.'),
(201,573,'Headword senses: hate or reject; damage; feud-language enemy pursuit','supports','Defines the genuine verb''s documented semantic range.'),
(201,577,'hatijen ende toe hindrien op dae heerstraeta','supports','Anchors the road-harm and hindrance context.'),
(201,578,'hatie dae herestreta','supports','Anchors the second army-road context.'),
(201,579,'Ro-JF legal-adversity and theological-hate results','supports','Anchors the remaining relevant corpus range.'),
(201,576,'Version 1.0 corpus scope, May 2026','context','Bounds the search count to the current corpus surface.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(157,201,200,'ONE HATE VERB BLOCKS A ROAD; THE OTHER PERSECUTES','Old Frisian hatia and Old Norse hata meet in Orel''s reconstructed Germanic verb family, but their surviving records expose different action profiles. Old Frisian legal texts use the verb around harming or hindering an army road; ONP opens Old Norse hata with persecution, then rejection, humiliation, ordinary hate, and reciprocal hostility. Translation calls both hate. The graph reveals that each daughter language preserved a wider and differently documented action field.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1285 AND 1290
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1286,1287,1288,1289) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1285 THEN 'Promoted from the graph-derived top evidence-ready candidate into a complete Old Frisian semantic, corpus, homograph-correction, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1285 AND 1290;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1085 AND 1089;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1085 AND 1089;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1085 AND 1089;
