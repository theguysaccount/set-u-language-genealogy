-- Promote Old English hettan without inflating a dictionary headword into a
-- fully preserved paradigm. The corpus lemmatisation inventory locates only
-- hettende under this verb, while historical dictionaries also lexicalize
-- hettend(e) as "enemy" and disagree over whether the form belongs under
-- hettan or hatian. The Germanic comparison is retained, but the ambiguity is
-- part of the dossier rather than silently normalized away.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(179,'hettan','hettan','hettan','/ˈhet.tɑn/','Old English weak-verb lemma','An Old English weak-verb lemma supported by a strikingly narrow surface record. A full-corpus lemmatisation inventory lists only hettende under hettan; Bosworth–Toller redirects the bare headword to hettend, “enemy,” while Orel compares the verb with Gothic hatjan and Middle High German hetzen. Clark Hall instead assigns hettende to hatian. The dossier therefore separates the comparative verb, the recorded enemy word, and the unresolved lemma assignment.','The clearest surviving shape of this verb is an enemy: hettend(e). The located corpus inventory supplies only hettende under hettan, while the historical dictionary records that same family of forms repeatedly as the noun “enemy.”','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(449,'bosworth-toller-hettan-hettend','HETTAN; HETTEND — An Anglo-Saxon Dictionary, Dictionary H','Joseph Bosworth · Thomas Northcote Toller · Jonathan Slocum',1898,'Linguistics Research Center, University of Texas at Austin','https://lrc.la.utexas.edu/books/asd/dict-H',NULL,'historical_dictionary'),
(450,'tio-saenz-old-english-weak-verbs','The Lemmatisation of Old English Weak Verbs on a Relational Database','Marta Tío Sáenz',2019,'Universidad de La Rioja','https://dialnet.unirioja.es/descarga/tesis/246390.pdf',NULL,'scholarly_monograph'),
(451,'bright-anglo-saxon-reader-phoenix','An Anglo-Saxon Reader — The Phœnix','James W. Bright, editor',1913,'Henry Holt and Company · Wikisource digitization','https://en.wikisource.org/wiki/Bright%27s_Anglo-Saxon_Reader/The_Ph%C5%93nix',NULL,'digitized_scholarly_edition');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1156,179,3,1,'hettan','hettan','hate-persecute-verb','hettan',NULL,'attested','Old English',450,1150,'a lexicographic weak-verb lemma associated with hating, attacking, or persecuting','The lemma is not presented as a directly witnessed infinitive. Tío Sáenz’s corpus inventory lists only hettende beneath it; Bosworth–Toller gives the bare headword as a cross-reference to hatian and hettend, while Clark Hall assigns hettende to hatian.'),
(1157,179,5,2,'*xatjanan','xatjanan','hate-jan-verb-formation','*xatjanan',NULL,'reconstructed','Proto-Germanic',-500,200,'a reconstructed Germanic weak verb represented by Gothic hatjan, Old English hettan, and Middle High German hetzen','Orel’s x represents the Germanic fricative conventionally rendered h in other notations. The exact word-form is reconstructed, not recorded.'),
(1158,179,5,3,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, or hostility','This is the atlas’s already reviewed representation of the Germanic noun base. Orel prints the corresponding base as *xataz ~ *xatez when deriving *xatjanan, so the cross-source notation is made explicit.'),
(1159,179,6,4,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but expressly qualified; the meanings do not yield one transparent historical sequence.'),
(1160,179,6,5,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','Pursuit and persecution remain a competing semantic hypothesis rather than a recovered first meaning.'),
(1161,179,7,6,'UNKNOWN','unknown','hettan-deep-boundary',NULL,NULL,'boundary','before the disputed Indo-European comparison',NULL,NULL,'No securely accepted ancestor or uniquely recoverable original meaning is known beyond the Germanic hate family.','The trail stops without converting enemy, hate, pursuit, persecution, grief, care, or love into one certain prehistoric definition.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(978,179,1156,1157,'inheritance','The j-conditioned Germanic stem accounts for Old English fronting of a to e and the geminate spelling in hettan; the displayed infinitive is a normalized lemma rather than a quoted corpus token.','The compared Germanic verb family ranges across hate, pursuit, attack, and persecution, but the priority of those senses is unresolved.','Vladimir Orel · Chr. Peeters · Marta Tío Sáenz','probable','The formal Germanic comparison is strong, but the located Old English verbal inventory supplies only hettende and dictionaries disagree on its lemma assignment.','Proto-Germanic reconstruction into Old English lexical and textual evidence.','reviewed'),
(979,179,1157,1158,'derivation','Orel derives *xatjanan from the Germanic hate-noun base he writes *xataz ~ *xatez; the graph crosswalks that base to its already reviewed *hatiz- representation.','A noun for hate or enmity supplies a weak verb whose attested relatives range from hate to pursuit.','Vladimir Orel · Merriam-Webster Editors','probable','The derivational analysis is published; the exact reconstruction notation differs between sources and is therefore not flattened into false certainty.','Related Proto-Germanic reconstructed formations.','reviewed'),
(980,179,1158,1159,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(981,179,1159,1160,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(982,179,1160,1161,'knowledge_boundary','No older form or uniquely recoverable concrete meaning is promoted beyond the disputed *ḱeh₂d- proposal.','The trail ends before the Old English verb’s objects are reverse-engineered into one unevidenced prehistoric action or feeling.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison ends at Germanic; the displayed PIE route remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(978,447,'p. 203, *xatjanan: Gothic hatjan, Old English hettan, Middle High German hetzen','supports','Publishes the comparative weak verb and the three branch forms.'),
(978,449,'HETTAN cross-reference and HETTEND entry','context','Recognizes the lemma while routing the surviving forms through the enemy entry.'),
(978,450,'p. 255, hettan: hettende','supports','The full-corpus lemmatisation inventory assigns the one located form to hettan.'),
(978,445,'hettende, present participle of hatian','challenges','Assigns the same surface form to the sibling lemma hatian rather than hettan.'),
(979,447,'p. 203, *xatjanan derived from *xataz ~ *xatez','supports','Publishes the Germanic derivation.'),
(979,436,'Noun etymology: Germanic *hatiz-','context','Supplies the atlas’s alternative representation of the corresponding Germanic noun base.'),
(980,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal proposal while flagging semantic opacity.'),
(980,439,'Discussion of proposed non-Germanic cognates','challenges','Warns that the deeper semantic and membership claims remain unsettled.'),
(981,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(982,436,'Etymology note: semantic relations are far from transparent','supports','Defines the limit of the deep comparison.'),
(982,439,'Qualified conclusion on pursuit and the deeper comparison','supports','Supports an explicit endpoint rather than an invented first meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(239,1156,450,'Old English corpus inventory',NULL,'Dictionary of Old English Corpus form type lemmatized by Tío Sáenz','p. 255','hettan: hettende','probable','lexical_corpus','Nerthus Project · Dictionary of Old English Corpus 2004 index',NULL,NULL,0,'This is a corpus-based lemma assignment, not a directly inspected manuscript token. It supports hettan only through the form hettende and does not attest the infinitive itself.'),
(240,1156,449,'Old English Genesis record',NULL,'Hettend form reported by Bosworth–Toller','Gen. 2011','Hettend lǽddon út mid ǽhtum abrahames mæg','established','lexical_corpus','Bosworth–Toller citation index · Old English Genesis',NULL,NULL,0,'The dictionary lexicalizes hettend here as “enemy.” It is evidence for the family’s recorded surface shape, not a claim that the infinitive hettan occurs in this line.'),
(241,1156,451,'Old English Phoenix record',NULL,'Bright’s edited Phoenix, preserved in the Exeter Book','The Phoenix, section VII, lines corresponding to Ph. 441–442','þǣr him hettende / earme āglǣcan, oft gescōdan','probable','lexical_corpus','Wikisource transcription of Bright’s edition · Exeter Book tradition',NULL,NULL,0,'The context supports “enemies” or “persecutors,” but the form can be parsed lexically or participially. The edition was inspected; the manuscript image was not.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(658,179,'hettend','Old English','the richly attested agent noun meaning enemy or antagonist',449),
(659,179,'hetend','Old English','a single-t spelling variant of the enemy noun',449),
(660,179,'hettende','Old English','the only form placed under hettan in the located weak-verb corpus inventory',450),
(661,179,'eald-hettend','Old English','a compound meaning old foe or old enemy',449),
(662,179,'on-hetting','Old English','a related action noun meaning persecution',449),
(663,179,'hatjan','Gothic','the formally matched Germanic verb meaning hate',447),
(664,179,'hetzen','Middle High German','the compared Germanic verb meaning pursue',447),
(665,179,'hetzen','German','the later verb meaning hound, bait, or set upon in the action-centered comparison',439),
(666,179,'hatian','Old English','the sibling hate verb to which Clark Hall assigns hettende',445),
(667,179,'hete','Old English','the inherited hate noun beside the two verb analyses',449),
(668,179,'hettend / hetteand / hetand','Old Saxon','agent-noun comparanda listed with Old English hettend',449);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(688,179,1,'Proto-Germanic linguistic horizon','*xatjanan','Gothic hatjan, Old English hettan, and Middle High German hetzen support a comparative verb, but no single archaeological point or directly written Proto-Germanic token is claimed.',NULL,NULL,'uncertain',-500,200,'range','A conventional comparative-linguistic interval.'),
(689,179,2,'Old English textual traditions','hettend(e)','The record is concentrated in enemy or persecutor forms. The located corpus lemmatisation inventory assigns only hettende to hettan, while the historical dictionary gives many hettend forms under “enemy.”',NULL,NULL,'broad',450,1150,'range','A language-period range; no located occurrence is promoted as the first token or as a directly witnessed infinitive.'),
(690,179,3,'Historical and corpus lexicography','hettan reconstructed from recorded forms','Bosworth–Toller, Clark Hall, Orel, and the Nerthus lemmatisation project expose different editorial decisions about the lemma, the participle, and the enemy noun.',NULL,NULL,'global',1898,2019,'range','Dates describe publication of the cited analyses, not survival of the Old English word into modern speech.'),
(691,179,4,'Knowledge boundary','beyond secure Germanic reconstruction','The qualified PIE comparison remains visible, but no single enemy, pursuit, persecution, grief, care, love, or hate origin is promoted.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or map point is asserted for the end of secure knowledge.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(688,447,'p. 203, *xatjanan and three branch forms','supports','Publishes the comparative Germanic reconstruction.'),
(689,450,'p. 255, hettan: hettende','supports','Restricts the located verbal inventory to one form.'),
(689,449,'HETTEND entry and examples','context','Documents the same surface family repeatedly as enemy or antagonist.'),
(689,451,'The Phoenix, section VII','context','Prints hettende in a poetic enemy context.'),
(690,449,'HETTAN cross-reference and HETTEND entry','supports','Documents the historical dictionary’s headword architecture.'),
(690,445,'hettende, present participle of hatian','challenges','Documents a competing lemma assignment.'),
(690,450,'methodology pp. 119–121 and inventory p. 255','context','Explains the corpus lemmatisation method and its hettan assignment.'),
(691,436,'Semantic-transparency note','supports','Marks the deep comparison as semantically opaque.'),
(691,439,'Qualified conclusion and comparison discussion','supports','Supports stopping beyond the secure Germanic family.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(371,179,'Is the infinitive hettan directly attested in the located corpus inventory?','No. Tío Sáenz’s full-corpus weak-verb inventory lists the lemma as hettan but gives only hettende beneath it. The dossier therefore labels hettan a normalized lexicographic lemma rather than quoting an unattested infinitive token.','established','The 2019 corpus lemmatisation explicitly prints one form after the headword.','resolved','The form record and attestation distinguish lemma-level evidence from a directly surviving infinitive.'),
(372,179,'Is hettende a verbal participle or a lexical noun meaning enemy?','The evidence supports both analyses in different editorial systems. Tío Sáenz lemmatizes hettende under hettan; Clark Hall calls it a participle of hatian; Bosworth–Toller lists hettende among the forms of the masculine noun hettend, “enemy.”','probable','Three lexical sources make incompatible or differently scoped assignments.','open',NULL),
(373,179,'Are hettan and hatian the same Old English verb?','Probably not historically, but the surviving forms are easy to merge. Orel assigns hettan to *xatjanan and hatian to a separate *xatēnan ~ *xatōjanan formation; Clark Hall nevertheless sends hettende to hatian, and Bosworth–Toller cross-refers hettan to hatian.','probable','Comparative morphology separates the formations while Old English lexicography exposes overlap.','open',NULL),
(374,179,'Did hettan mean hate, pursue, attack, or persecute?','No single gloss exhausts the record. Orel glosses Old English hettan “hate” but Middle High German hetzen “pursue”; the attested enemy forms encode an antagonist, and Liberman argues for pursuit or persecution as an older concrete history.','proposed','The formal family is stronger than a single recoverable semantic starting point.','open',NULL),
(375,179,'Does the Phoenix hettende establish the first use of hettan?','No. It is one edited poetic occurrence of an ambiguous form. Without a complete witness comparison and direct manuscript inspection, it cannot establish the first token of the lemma.','established','Bright locates the form in the Exeter Book poem; the wider dictionary record lists numerous hettend(e) occurrences.','resolved','The attestation is labeled source-reported and makes no earliest-use claim.'),
(376,179,'Does the Germanic family securely descend from *ḱeh₂d-?','Only probably. The formal comparison is published, but grief, care, mourning, love, pursuit, persecution, and hate do not form a transparent sequence, and some proposed cognates may not belong together.','probable','Merriam-Webster qualifies the proposal; Liberman challenges semantic and membership assumptions.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(371,450,'p. 255, hettan: hettende','supports','Shows that the located inventory supplies the headword only with hettende.'),
(372,450,'p. 255, hettan: hettende','supports','Assigns hettende to the hettan verb lemma.'),
(372,445,'hettend and hettende entries','challenges','Treats hettend as enemy but assigns hettende as a participle of hatian.'),
(372,449,'HETTEND entry, including Hettende Ph. 441','context','Lexicalizes the form set as the noun enemy or antagonist.'),
(373,447,'p. 203, separate *xatjanan and *xatēnan ~ *xatōjanan entries','supports','Separates the two Germanic verb formations and their Old English reflexes.'),
(373,445,'hettende, present participle of hatian','challenges','Merges the relevant surface form under hatian.'),
(373,449,'HETTAN: cf. hatian, and see next word','context','Records the historical dictionary’s cross-reference rather than a full independent paradigm.'),
(374,447,'p. 203, *xatjanan entry','supports','Prints hate for Gothic and Old English but pursue for Middle High German.'),
(374,449,'HETTEND entry','context','Documents the enemy or antagonist function of the recorded forms.'),
(374,439,'Old English hettan and German hetzen discussion','supports','Develops the persecution and pursuit hypothesis while preserving uncertainty.'),
(375,451,'The Phoenix, section VII, hettende passage','supports','Locates the edited poetic form.'),
(375,449,'HETTEND entry, multiple textual examples','context','Shows that the Phoenix form is one of numerous dictionary-catalogued records.'),
(376,436,'Noun etymology and semantic note','supports','Publishes the PIE proposal with an explicit qualification.'),
(376,439,'Non-Germanic comparison and conclusion','challenges','Questions semantic unity and candidate membership.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(179,179,2090,'hettan','The Old English verb survives most visibly as an enemy.','The located weak-verb corpus inventory gives hettan only one form: hettende. Bosworth–Toller records that surface family repeatedly under hettend, “enemy” or “antagonist,” including Genesis and the Phoenix. The verb is therefore not a neat recovered paradigm; it is a lemma inferred at the edge between action, agent, and lexicalized foe.','A',100,'The claim is about the located corpus and lexicographic record, not proof that no lost or unindexed form ever existed. Competing assignment of hettende to hatian remains public.');
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
(179,450,'p. 255, hettan: hettende','supports','Shows the single form listed under the weak-verb lemma.'),
(179,449,'HETTAN cross-reference and HETTEND entry','supports','Documents the headword cross-reference and many enemy forms.'),
(179,451,'The Phoenix, section VII, hettende passage','context','Shows hettende in an enemy or persecutor context.'),
(179,445,'hettende, present participle of hatian','challenges','Preserves the competing lemma assignment.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(135,179,178,'ONE LETTER, TWO GERMANIC VERBS','Orel separates hettan from hatian: the first belongs with *xatjanan, Gothic hatjan, and Middle High German hetzen; the second belongs with *xatēnan ~ *xatōjanan. Old English lexicographers still disagree over where hettende belongs, so the graph keeps both the historical distinction and the surviving ambiguity.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1156 AND 1161
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1156,1158,1159,1160) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1156 THEN 'Attested through lemmatized hettende; no located infinitive token is claimed.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1156 AND 1161;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 978 AND 982;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 978 AND 982;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 978 AND 982;
