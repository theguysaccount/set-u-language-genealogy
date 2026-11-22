-- Promote German hetzen as an action-centered history rather than flattening it
-- into the modern political sense. Historical dictionaries preserve dogs,
-- quarry, pursuit, hurry, and human incitement, comparative sources connect
-- the verb to *xatjanan while disagreeing over the status of an OHG bridge.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(84,'early-new-high-german','Early New High German','Indo-European','West Germanic',0,1350,1650,'The conventional historical stage between Middle High German and New High German; dates are broad linguistic-period bounds.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(180,'hetzen','hetzen','hetzen','/ˈhɛt͡sn̩/','German weak verb','A German weak verb whose modern senses range from driving or hunting quarry, through hurrying, to inciting hostility. The medieval record centers on setting dogs after game and already extends the action to turning people against one another. Comparative sources connect the verb with Old English hettan and Gothic hatjan, but the Old High German bridge and the exact prehistoric formation remain editorially disputed.','The verb now used for hostile agitation first made hounds pursue quarry. Medieval evidence preserves the physical chase; Early New High German evidence shows the same action transferred to setting people against people.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(452,'duden-hetzen','hetzen — Rechtschreibung, Bedeutung, Definition, Herkunft','Dudenredaktion',NULL,'Cornelsen Verlag · Duden','https://www.duden.de/rechtschreibung/hetzen',NULL,'institutional_lexicon'),
(453,'mhdwb-hetzen','Mittelhochdeutsches Wörterbuch — hetzen','Thomas Plate · Mittelhochdeutsches Wörterbuch team',NULL,'Akademie der Wissenschaften und der Literatur Mainz','https://mhdwb-online.de/wb/73899000',NULL,'historical_dictionary'),
(454,'fwb-hetzen','Frühneuhochdeutsches Wörterbuch — hetzen','Oskar Reichmann et al.',NULL,'Akademie der Wissenschaften zu Göttingen','https://fwb.sub.uni-goettingen.de/lemma/hetzen.s.3v',NULL,'historical_dictionary'),
(455,'drw-hetzen','Deutsches Rechtswörterbuch — hetzen, hessen','Heidelberger Akademie der Wissenschaften',NULL,'Heidelberger Akademie der Wissenschaften','https://drw.hadw-bw.de/drw-cgi/zeige?index=lemmata&term=hetzen',NULL,'historical_dictionary'),
(456,'bailey-1997-ohg-weak-verb','The Etymology of the Old High German Weak Verb','Christopher Gordon Bailey',1997,'Newcastle University','https://theses.ncl.ac.uk/jspui/handle/10443/157',NULL,'academic_thesis'),
(457,'kluge-1891-hetzen','An Etymological Dictionary of the German Language — hetzen','Friedrich Kluge · translated by John Francis Davis',1891,'George Bell & Sons · Wikisource scan','https://en.wikisource.org/wiki/Page:An_Etymological_Dictionary_of_the_German_Language.djvu/168',NULL,'etymological_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1162,180,30,1,'hetzen','hetzen','hound-hurry-incite-verb','hetzen','/ˈhɛt͡sn̩/','attested','Modern German',1650,2026,'hunt or drive; hurry; incite or stir hostility','Duden keeps the chase, haste, and hostile-agitation senses under one verb. The modern political use does not erase the hunting construction.'),
(1163,180,84,2,'hetzen / hessen / hittzen','hetzen','hound-and-incite-early-new-high-german','hetzen / hessen / hittzen',NULL,'attested','Early New High German',1350,1650,'hunt with dogs; drive; set people against one another','The spelling varies across regions and witnesses. Legal hunting records and Reformation-era polemic already expose both physical pursuit and transferred human incitement.'),
(1164,180,31,3,'hetzen / hatzen','hetzen','hound-pursue-middle-high-german','hetzen / hatzen',NULL,'attested','Middle High German',1050,1350,'drive dogs to hunt; pursue; incite people against someone','The current Middle High German dictionary defines the literal center as driving dogs to hunt and documents transfer to human conflict.'),
(1165,180,32,4,'*hezzen','hezzen','reconstructed-old-high-german-hetzen','*hezzen',NULL,'reconstructed','reconstructed Old High German bridge',750,1050,'a reconstructed weak verb meaning chase or persecute','Bailey prints the Old High German item with an asterisk, while Duden and the older Kluge tradition present an Old High German hetzen without that evidential distinction. The graph preserves the reconstruction as disputed.'),
(1166,180,5,5,'*xatjanan','xatjanan','hate-jan-verb-formation','*xatjanan',NULL,'reconstructed','Proto-Germanic',-500,200,'a reconstructed weak verb represented by Gothic hatjan, Old English hettan, and Middle High German hetzen','Orel publishes the comparison and derives the formation from the Germanic hate-noun base. The displayed form is reconstructed.'),
(1167,180,5,6,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','Orel writes the related base as *xataz ~ *xatez; the graph reuses its established cross-source *hatiz- representation.'),
(1168,180,6,7,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, care, pain, mourning, and hatred words','The comparison is published but semantically nontransparent; it does not prove that pursuit was the original PIE sense.'),
(1169,180,6,8,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','This analytical base remains probable rather than a directly attested word.'),
(1170,180,7,9,'UNKNOWN','unknown','hetzen-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original scene is known.','The trail stops before hate, grief, pursuit, dogs, haste, or incitement is promoted as the single certain prehistoric meaning.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(983,180,1162,1163,'historical_continuation','Regional Early New High German spellings converge on standard hetzen; inflection and pronunciation continue to develop while the lexical stem remains recognizable.','The inherited chase and incitement senses continue, while reflexive and intransitive hurry uses become prominent in modern German.','Dudenredaktion · Oskar Reichmann et al.','established','Modern and Early New High German dictionaries document overlapping action senses without requiring a new lexical origin.','Early New High German into standardized Modern German.','reviewed'),
(984,180,1163,1164,'historical_continuation','Middle High German hetzen and hatzen continue into Early New High German with regional vowel and spelling variation.','Driving dogs after quarry extends to urging, provoking, and setting people against other people.','Thomas Plate · Oskar Reichmann et al. · Heidelberger Akademie der Wissenschaften','established','Historical dictionary records directly document both the hunting construction and transferred human targets.','Middle High German into Early New High German.','reviewed'),
(985,180,1164,1165,'historical_reconstruction','The Middle High German verb is projected back to an Old High German weak-verb bridge; the a > e fronting and z spelling are compatible with a j-conditioned High German formation, but the exact written OHG form is disputed.','The reconstructed bridge carries the chase or persecution value inferred from later German and comparative forms.','Christopher Gordon Bailey · Friedrich Kluge · Dudenredaktion','probable','Bailey stars *hezzen, while Kluge and Duden describe an Old High German form without visibly marking it as reconstructed.','A reconstructed Old High German bridge inferred beneath attested Middle High German.','reviewed'),
(986,180,1165,1166,'inheritance','The j-suffix conditions West Germanic fronting and consonant development; High German sound change and later reduction yield the projected *hezzen shape.','A Germanic factitive or action verb associated with hostility is continued as chase, pursuit, or persecution in the High German branch.','Christopher Gordon Bailey · Vladimir Orel','probable','The Germanic comparison is published, but the intermediate Old High German form is reconstructed and its exact morphology varies by source.','Proto-Germanic reconstruction into a projected Old High German stage.','reviewed'),
(987,180,1166,1167,'derivation','Orel derives *xatjanan from the Germanic hate-noun base he writes *xataz ~ *xatez; the graph crosswalks that base to its already reviewed *hatiz- representation.','A noun for hate or enmity supplies a weak verb whose attested relatives range from hate to pursuit.','Vladimir Orel · Merriam-Webster Editors','probable','The derivational analysis is published; the exact reconstruction notation differs between sources and is therefore not flattened into false certainty.','Related Proto-Germanic reconstructed formations.','reviewed'),
(988,180,1167,1168,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(989,180,1168,1169,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(990,180,1169,1170,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail ends before the medieval hunting scene is projected unchanged into prehistory or converted into a universal origin for hate.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends at Germanic; the displayed PIE route remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(983,452,'Meaning groups 1–3 and Herkunft','supports','Documents modern chase, hurry, and hostile-incitement senses under one weak verb.'),
(983,454,'Sense groups 1–3 and cited Early New High German records','supports','Documents historical hunting, pursuit, provocation, and incitement uses.'),
(984,453,'hetzen, sense 1 and transferred human-target examples','supports','Defines the literal hunting construction and its medieval human transfer.'),
(984,454,'Belegblock, senses 2–3','supports','Documents Early New High German forms and transferred incitement.'),
(984,455,'hetzen, hessen, hunting senses I–II','context','Documents fifteenth- and sixteenth-century hunting terminology.'),
(985,456,'vol. 1, data entry “*hezzen”','supports','Prints a starred Old High German reconstruction and compares MHG, Old Saxon, Old English, and Gothic forms.'),
(985,457,'p. 146, hetzen','challenges','Presents Middle and Old High German hętzen without marking the OHG form as reconstructed.'),
(985,452,'Herkunft','challenges','Likewise names Middle and Old High German hetzen without an explicit reconstruction marker.'),
(986,456,'vol. 1, data entry “*hezzen”','supports','Reconstructs a Germanic *hatijanan from the comparative verb set.'),
(986,447,'p. 203, *xatjanan','supports','Publishes Gothic hatjan, Old English hettan, and Middle High German hetzen under one reconstructed verb.'),
(987,447,'p. 203, *xatjanan derived from *xataz ~ *xatez','supports','Publishes the noun-to-verb derivation.'),
(987,457,'p. 146, hetzen; compare Haß','context','Places hetzen beside the hate noun in the older etymological tradition.'),
(987,452,'Herkunft','supports','Describes the verb as a causative to hassen: “make hate, bring to pursue.”'),
(988,436,'Noun etymology and semantic note','supports','Publishes the qualified PIE comparison and its lack of semantic transparency.'),
(988,439,'Non-Germanic comparison and conclusion','challenges','Questions whether the proposed members form one secure semantic family.'),
(989,436,'Reconstructed formation and base','supports','Publishes the two proposed PIE analytical levels.'),
(990,436,'Semantic-transparency note','supports','Marks the deep comparison as nontransparent.'),
(990,439,'Qualified conclusion','supports','Supports stopping rather than inventing a single prehistoric action.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(242,1162,452,'Modern German lexicographic record',NULL,'Duden modern sense inventory','Meaning group 1.2','die Hunde auf jemanden hetzen','established','lexical_corpus_record','Duden Online',NULL,NULL,0,'A current dictionary record, not a first-use claim or a directly inspected primary object.'),
(243,1164,453,'Middle High German poetic record',NULL,'Reinhart Fuchs record reported by MHDWB','ReinFu K, 311','der ieger hetzte balde','established','lexical_corpus_record','Mittelhochdeutsches Wörterbuch Online',NULL,NULL,0,'The historical dictionary record was inspected; the underlying manuscript witness was not.'),
(244,1164,453,'Middle High German transferred-use record',NULL,'Der Renner record reported by MHDWB','Renner 645','an einander hetzen','established','lexical_corpus_record','Mittelhochdeutsches Wörterbuch Online',NULL,NULL,0,'Supports medieval transfer from hunting to human conflict without claiming the first such use.'),
(245,1163,455,'1472 legal hunting record',1472,'Albrecht Achilles source reported by DRW','AlbrAchillesMerckB. 105','zu jagen, zu hetzen, zu baisen','established','lexical_corpus_record','Deutsches Rechtswörterbuch',NULL,NULL,0,'The legal-dictionary report was inspected; the underlying document image was not.'),
(246,1163,454,'1537/40 polemical record',1537,'Luther record reported by FWB','Luther, WA 47, 505, 1','hetzen sie die konige wider die arme Christen','established','lexical_corpus_record','Frühneuhochdeutsches Wörterbuch Online',NULL,NULL,0,'Shows the human-incitement construction in a located source report; it is not promoted as the first metaphorical use.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(669,180,'Hetze','German','a Modern German noun formed from the verb for hunting, hurry, or hostile agitation',457),
(670,180,'Hetzer','German','an agent noun for a person who drives, baits, or agitates',452),
(671,180,'Hetzhund','German','a compound preserving the dog-centered hunting construction',452),
(672,180,'Hetzjagd','German','a compound for pursuit or a hunt with hounds, also extended figuratively',452),
(673,180,'aufhetzen','German','a prefixed verb meaning incite or set upon, historically transparent beside the hunting sense',452),
(674,180,'verhetzen','German','a prefixed relative associated with hostile incitement or setting against',454),
(675,180,'hatjan','Gothic','the compared Gothic verb meaning hate',447),
(676,180,'hettan','Old English','the compared Old English verb at the boundary between persecution and enemy forms',447),
(677,180,'hate','English','a modern cousin reached through a distinct Old English verb formation, not a descendant of German hetzen',439),
(678,180,'Hass','German','the hate noun beside the causative or derivational analysis',452),
(679,180,'hassen','German','the verb “hate” beside which Duden analyzes hetzen as a causative formation',452),
(680,180,'*hatijanan','Proto-Germanic','Bailey’s alternate notation for the reconstructed comparative verb',456);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(692,180,1,'Proto-Germanic linguistic horizon','*xatjanan','The Gothic, Old English, and Middle High German comparison supports a reconstructed verb, not a directly written Proto-Germanic token or single archaeological location.',NULL,NULL,'uncertain',-500,200,'range','A conventional comparative-linguistic interval.'),
(693,180,2,'Old High German reconstruction horizon','*hezzen','A projected High German bridge is useful for formal continuity but is explicitly starred in Bailey’s data and therefore receives no manuscript pin.',NULL,NULL,'broad',750,1050,'range','The numeric bounds are the historical language period, not dates of a directly inspected token.'),
(694,180,3,'Middle High German textual landscape','hetzen / hatzen','Poetic and didactic records show dogs driven after quarry and people set against one another across the Middle High German record.',NULL,NULL,'broad',1050,1350,'range','A language-period range; the selected dictionary citations are examples, not endpoints for the whole lexeme.'),
(695,180,4,'Early New High German legal and polemical record','hetzen / hessen / hittzen','Hunting law and sixteenth-century polemic preserve physical chase alongside transferred incitement.',NULL,NULL,'broad',1350,1650,'range','A historical-language interval supported by dictionary-located records.'),
(696,180,5,'Modern German speech community','hetzen','Standard German preserves chase, hurry, and hostile-agitation senses. A global language community is not reduced to one map pin.',NULL,NULL,'global',1650,2026,'range','The range marks the Modern German stage rather than uninterrupted evidence for every sense in every year.'),
(697,180,6,'Knowledge boundary','beyond secure Germanic reconstruction','The qualified PIE comparison stays visible while the site declines to choose pursuit, hate, grief, dogs, or incitement as the one certain original scene.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or geographic point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(692,447,'p. 203, *xatjanan and its three branch forms','supports','Publishes the comparative Germanic reconstruction.'),
(692,456,'vol. 1, data entry “*hezzen”','context','Publishes the alternate *hatijanan notation and comparative set.'),
(693,456,'vol. 1, data entry “*hezzen”','supports','Explicitly marks the Old High German bridge as reconstructed.'),
(693,457,'p. 146, hetzen','challenges','Represents an Old High German form without an asterisk.'),
(694,453,'hetzen, sense 1 and examples','supports','Documents the Middle High German hunting and human-incitement record.'),
(695,454,'Belegblock, senses 2–3','supports','Documents Early New High German incitement contexts.'),
(695,455,'hetzen, hessen, hunting senses I–II','context','Documents legal hunting vocabulary from the fifteenth and sixteenth centuries.'),
(696,452,'Meaning groups 1–3','supports','Documents the modern chase, haste, and hostile-agitation inventory.'),
(697,436,'Semantic-transparency note','supports','Marks the deep etymology as semantically nontransparent.'),
(697,439,'Qualified conclusion','supports','Supports an explicit end to secure knowledge.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(377,180,'Did hetzen begin as a modern political hate-speech verb?','No. The Middle High German dictionary centers the verb on driving dogs to hunt and already records transferred human conflict; Early New High German sources later make incitement explicit.','established','MHDWB, FWB, and DRW preserve the older action-centered record.','resolved','The semantic timeline separates hunting, transferred incitement, haste, and modern hostile agitation.'),
(378,180,'Is hetzen simply the German verb for hate?','No as a synchronic definition, though the histories are related. Modern Duden distinguishes chase, hurry, and incitement senses; etymological sources connect the formation with Hass or hassen and the broader Germanic hate family.','established','Modern meaning structure and historical derivation answer different questions.','resolved','The dossier links the family without replacing the verb’s attested action senses with a one-word gloss.'),
(379,180,'Is the Old High German form directly attested?','Unresolved in the located sources. Bailey prints *hezzen with an asterisk and reconstructs it from Middle High German and cognates, while Duden and the older Kluge entry refer to an Old High German hetzen without visibly marking the form as hypothetical.','probable','The sources expose different evidential presentation rather than a shared located OHG witness.','open',NULL),
(380,180,'Was the formation a causative “make hate” or an action verb “make pursue”?','Both descriptions occur, and their priority is not settled here. Duden analyzes a causative to hassen; Orel derives *xatjanan from the hate noun; Bailey and the medieval record foreground chase or persecution.','proposed','Morphological relationship is stronger than one uniquely recoverable original gloss.','open',NULL),
(381,180,'Are the chase, hurry, and incitement senses separate homonyms?','The reviewed dictionaries treat them as senses of one inherited verb. The semantic bridge from making quarry or people move under pressure to hurrying and inciting is historically plausible, though the dossier does not invent exact dates for every transition.','probable','Duden supplies the modern polysemy and historical dictionaries document physical and transferred action.','resolved','One dossier preserves distinct sense stages instead of duplicating unrelated headwords.'),
(382,180,'Is the noun Hetze older than the verb?','No in the reviewed etymological account. Kluge describes Hetze as a Modern High German formation from the older verb, whose Middle High German history is independently attested.','established','The verb’s historical record predates the modern deverbal noun in the cited analysis.','resolved','The relation is modeled as derivation from the verb, not as the verb’s source.'),
(383,180,'Does hetzen securely descend from *ḱeh₂d-?','Only probably. The Germanic comparison is stronger than the deeper PIE proposal; the proposed grief, care, mourning, hatred, and pursuit meanings do not form one transparent sequence.','probable','Merriam-Webster qualifies the comparison and Liberman challenges semantic and membership assumptions.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(377,453,'hetzen, literal and transferred sense structure','supports','Centers medieval hunting and documents human-target transfer.'),
(377,454,'Belegblock, senses 2–3','supports','Documents Early New High German incitement.'),
(377,455,'hunting senses I–II','context','Preserves the legal hunting vocabulary.'),
(378,452,'Meaning groups 1–3 and Herkunft','supports','Separates modern senses while linking the etymology to hassen.'),
(378,447,'p. 203, *xatjanan','context','Places the verb in the comparative Germanic hate family.'),
(379,456,'vol. 1, data entry “*hezzen”','supports','Stars the OHG bridge and reconstructs it comparatively.'),
(379,457,'p. 146, hetzen','challenges','Presents an OHG hętzen without an asterisk.'),
(379,452,'Herkunft','challenges','Names an Old High German stage without marking reconstruction.'),
(380,452,'Herkunft','supports','Gives the causative “make hate, bring to pursue” analysis.'),
(380,447,'p. 203, *xatjanan derived from *xataz ~ *xatez','context','Provides the noun-to-verb comparative derivation.'),
(380,456,'vol. 1, data entry “*hezzen”','context','Foregrounds chase and persecution in the reconstruction.'),
(381,452,'Meaning groups 1–3','supports','Treats chase, hurry, and hostile agitation under one verb.'),
(381,453,'hetzen, sense structure','context','Documents medieval literal and transferred uses.'),
(382,457,'p. 146, hetzen','supports','States that Hetze is a Modern High German formation from the verb.'),
(383,436,'Noun etymology and semantic note','supports','Publishes the qualified PIE proposal.'),
(383,439,'Non-Germanic comparison and conclusion','challenges','Questions the unity of the proposed deep family.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(180,180,2092,'hetzen','German hostile agitation still carries a hound’s chase.','The medieval verb drives dogs after quarry. The same directed-force construction is soon applied to people: Middle High German records set people against one another, and Early New High German polemic sets rulers against Christians. Modern political hetzen is therefore not merely “hate” verbalized; it inherits a grammar of making another actor pursue, pressure, or attack.','A',100,'The claim concerns the cited semantic record. It does not assert that the selected medieval quotation is the absolute first use or that one hunting scene recovers the PIE meaning.');
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
(180,453,'hetzen, literal hunting definition and transferred examples','supports','Documents the hound-centered medieval action and transfer to people.'),
(180,454,'Luther, WA 47, 505, 1 (1537/40)','supports','Documents explicit human incitement in Early New High German.'),
(180,455,'hunting senses I–II','context','Documents legal hunting uses.'),
(180,452,'Meaning groups 1–3','supports','Documents the modern coexistence of chase, haste, and hostile agitation.'),
(180,447,'p. 203, *xatjanan','context','Connects the action history to the Germanic comparative verb.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(136,180,179,'THE HOUND AND THE ENEMY SHARE A VERB','German hetzen sends dogs or people after a target; Old English hettan survives most visibly beside hettend, “enemy.” Orel compares both with Gothic hatjan under *xatjanan, while the graph keeps chase, hate, and enemy roles distinct instead of collapsing them into one gloss.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1162 AND 1170
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1165,1167,1168,1169) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1165 THEN 'The Old High German bridge is explicitly marked reconstructed because the located sources disagree on its evidential presentation.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1162 AND 1170;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 983 AND 990;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 983 AND 990;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 983 AND 990;
