-- Promote Old Norse hatr from a five-source relative candidate into a complete
-- dossier. ONP separates a 54-citation neuter noun from a one-citation
-- masculine analysis that it flags as a possible elementary error. One
-- c.1150-1200 manuscript token was directly inspected, the corpus-wide gender,
-- meaning, and deep-ancestry claims remain source-reported and qualified.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(191,'hatr','hatr','hatr','/ˈhɑtr/','Old Norse noun, chiefly neuter','An Old Norse noun for hatred, enmity, or spite. The University of Copenhagen Dictionary of Old Norse Prose gives the main neuter entry 54 citations, while a separately analyzed masculine entry has only one citation and is flagged as possibly an elementary error. The neuter corpus also contains one cautiously proposed mockery or scorn sense aligned with Latin irrisio. A c.1150-1200 manuscript visibly preserves Hatr in a line ONP transcribes Hatr hafa þeir engla and aligns with Latin Odium. The reviewed ancestry joins the Germanic *hatiz- family, preserves the disputed *ḱh₂d-es- and *ḱeh₂d- comparison, and then stops.','Old Norse hatr has a 54-to-1 grammar problem. ONP separates a 54-citation neuter noun from a one-citation masculine analysis and flags that lone masculine assignment as possibly an elementary error. The evidence supports a real analytical split, not two equally secure nouns.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(520,'onp-hatr-neuter','Dictionary of Old Norse Prose — ²hatr, neuter noun','Dictionary of Old Norse Prose editors',2025,'University of Copenhagen', 'https://onp.ku.dk/onp/onp.php?o31909',NULL,'historical_dictionary'),
(521,'onp-hatr-masculine','Dictionary of Old Norse Prose — ¹hatr, masculine analysis','Dictionary of Old Norse Prose editors',2015,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?o112056',NULL,'historical_dictionary'),
(522,'onp-elucidarius-hatr','Dictionary of Old Norse Prose citation — Hatr hafa þeir engla','Dictionary of Old Norse Prose editors',2026,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?c268129',NULL,'research_database'),
(523,'handrit-am-674-a-4','AM 674 a 4°, Bókin dýra — manuscript record and images','Arnamagnæan Collection · Dictionary of Old Norse Prose · Handrit.is',2026,'University of Copenhagen · Handrit.is','https://onp.ku.dk/onp/onp.php?m6991',NULL,'digitized_primary_source'),
(524,'onp-prosper-hatr-scorn','Dictionary of Old Norse Prose citation — proposed mockery or scorn sense of hatr','Dictionary of Old Norse Prose editors',2026,'University of Copenhagen','https://onp.ku.dk/onp/onp.php?c249803',NULL,'research_database'),
(525,'cleasby-vigfusson-hatr','An Icelandic-English Dictionary — hatr','Richard Cleasby · Guðbrandur Vigfússon · Sampo Silvennoinen digital edition',1874,'Oxford Clarendon Press · digital public-domain edition','https://cleasby-vigfusson-dictionary.vercel.app/word/hatr',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1227,191,66,1,'hatr','hatr','hatred-enmity-spite-old-norse','hatr','/ˈhɑtr/','attested','Old Norse textual record',700,1500,'hatred, enmity, spite; perhaps mockery or scorn in one uncertain context','The pronunciation is a broad normalized reading, not a recording or a claim of uniform realization across the Old Norse period. ONP gives the main neuter noun 54 citations and separates one masculine analysis. The proposed mockery or scorn sense carries question marks in the source and is not generalized.'),
(1228,191,5,2,'*hatiz-','hatiz','hate-anger-germanic-i-stem','*hatiz-',NULL,'reconstructed','Proto-Germanic',-500,200,'hate, anger, enmity, spite, hostility, or a related action field','Old Norse hatr stands beside Gothic hatis, Old English hete, Old High German haʒ, and other branch forms. Published notation varies between *hataz and *hatiz-.'),
(1229,191,6,3,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting grief, pain, care, mourning, and hatred words','The formal comparison is published but qualified. The Old Norse corpus does not recover one original prehistoric emotional scene.'),
(1230,191,6,4,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base glossed with grief, pain, and hatred','This is a comparative reconstruction, not an attested word. The proposed semantic members and exact path remain disputed.'),
(1231,191,7,5,'UNKNOWN','unknown','hatr-deep-boundary',NULL,NULL,'boundary','beyond the disputed Indo-European comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before hatred, enmity, spite, mockery, grief, pain, care, or pursuit is promoted as the one certain prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1037,191,1227,1228,'inheritance','The comparative analysis aligns Old Norse hatr and genitive hatrs with the Germanic *hatiz- noun after North Germanic loss or reduction of unstressed material and branch-specific inflection. The public sources establish the comparison more securely than one fully specified sound-law derivation.','The inherited hate, anger, enmity, or spite field continues in Old Norse hatred, enmity, and spite. One proposed mockery or scorn context remains a qualified side sense rather than the ancestral center.','Dictionary of Old Norse Prose editors · Richard Cleasby · Guðbrandur Vigfússon · John T. Koch','probable','The Old Norse form and comparative Germanic set are attested or published; the parent form, exact paradigm history, and semantic center are reconstructed.','Proto-Germanic reconstruction into the Old Norse textual record, including a directly inspected c.1150-1200 manuscript token.','reviewed'),
(1038,191,1228,1229,'comparative_derivation','Under the proposed comparison, Grimm’s Law maps Indo-European *ḱ to Germanic h and *d to Germanic t, while the suffixal formation is remodeled as the Germanic i-stem.','A proposed grief, pain, care, or hatred formation narrows or develops into the Germanic hate and enmity family.','Merriam-Webster Editors · Anatoly Liberman','probable','Merriam-Webster says “perhaps” and calls the semantic relations far from transparent; Liberman argues that several proposed non-Germanic cognates may not belong together.','Proto-Indo-European proposal to Proto-Germanic reconstruction.','reviewed'),
(1039,191,1229,1230,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1040,191,1230,1231,'knowledge_boundary','No older form is promoted beyond the already disputed *ḱeh₂d- comparison.','The trail stops before one Old Norse grammar anomaly, one uncertain scorn passage, or one modern hate gloss is reverse-engineered into universal prehistory.','SET-U editorial boundary · Anatoly Liberman','boundary','Secure comparison is strongest inside Germanic; the displayed Indo-European lane remains qualified and semantically unresolved.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1037,520,'²hatr sb. n. [hatrs; -], 54 citations, primary sense hatred, enmity, spite','supports','Supplies the chief Old Norse gender, genitive form, corpus count, and semantic range.'),
(1037,525,'Entry hatr, n.; comparison with Gothic hatis, Old English hete, German Hass, Danish had, and Swedish hat','supports','Publishes the historical cross-Germanic comparison and neuter classification.'),
(1037,473,'p. 101, Proto-Germanic *hataz ~ *hatiz- and Old Norse hatr','supports','Publishes the reconstructed stem alternation and Old Norse descendant.'),
(1037,518,'Pfeifer etymology: Old Norse hatr in the cross-Germanic noun family','context','Independently places hatr inside the inherited family.'),
(1038,436,'Noun etymology and note on proposed *ḱh₂d-es-','supports','Publishes the formal comparison while flagging semantic opacity.'),
(1038,439,'Discussion of non-Germanic candidates and pursuit','challenges','Questions whether all proposed forms share one origin and advances hostile pursuit as a competing semantic account.'),
(1038,473,'p. 101, wider Celto-Germanic HATRED comparison','context','Publishes a broader affirmative comparison whose membership remains disputed.'),
(1039,436,'Noun etymology: *ḱh₂d-es- from base *ḱeh₂d-','supports','Publishes the proposed formation and base.'),
(1039,473,'p. 101, reconstructed Indo-European analysis','context','Provides a wider comparative treatment.'),
(1040,436,'Etymology note: semantic relations are far from transparent','supports','Marks the deep comparison as semantically unresolved.'),
(1040,439,'Conclusion: pursuit is promising while the broader family remains murky','supports','Supports stopping rather than choosing one convenient original meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(372,1227,523,'c.1150-1200',1175,'Bókin dýra, Elucidarius','AM 674 a 4°, fol. 33v; line corresponding to Eluc674(1989) 158.10','Hatr hafa þeir engla','established','manuscript','Den Arnamagnæanske Håndskriftsamling · Handrit.is','AM 674 a 4°, fol. 33v','https://myndir.handrit.is/file/Handrit.is/AM%20674%20a%204to/67/SECONDARY_DISPLAY',1,'The manuscript pixels were directly inspected against ONP’s transcription. The initial Hatr is visibly legible; the remainder of the phrase was not independently re-edited from the pixels. The object verifies a token in this dated codex, not the noun’s first use, complete semantics, gender by itself, or deeper ancestry.'),
(373,1227,521,'c.1300, source-reported',1300,'Hirðskrá manuscript record','Citation c790383; AM 322 fol, main edition Hirð 417.7; variant AM 322 fol 8va11','Siaunda (hǫfuðlýti) er sorgbitin ofund með hiartlegu hattre','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'ONP assigns this lone citation to a masculine entry but explicitly flags the analysis as possibly an elementary error. Neither the manuscript pixels nor the edition were directly inspected here.'),
(374,1227,524,'c.1200-1225, source-reported',1212,'Spakmǽli Prospers: Epigrammata','Prosper677 9.10; AM 677 4°, fols. 1r-6v','sia ometnoðr oc hatr mon þeim a heɴdr verþa þa','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'ONP places this passage under a question-marked mockery or scorn sense with Latin irrisio. The representative year lies inside the manuscript range; the object was not directly inspected and the semantic proposal remains uncertain.'),
(375,1227,520,'Old Norse prose corpus, source-reported',NULL,'Definition-like account of hatr','²hatr, citation beginning Hattr er þa','Hattr er þa er maðr girnisc at granda oðrum af soc noccorrar úvinato','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP reports this definition-like passage under the main neuter sense. No manuscript or edition object was directly inspected, and the passage is evidence for a historical explanation rather than the word’s universal essence.'),
(376,1227,520,'Old Norse prose corpus, source-reported',NULL,'Love-and-hate temporal opposition','²hatr, citation beginning Time gráts ok látrs','Time gráts ok látrs, time ælsko ok hatrs','established','lexical_corpus_record',NULL,NULL,NULL,0,'ONP aligns the phrase with Latin tempus dilectionis et tempus odii. The record establishes textual semantic opposition, not shared ancestry between the love and hate words; the underlying object was not directly inspected.');
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(38,372,'2026-08-27','SET-U editorial review','visual_facsimile','Hatr','The initial Hatr is visibly legible in the line ONP transcribes as Hatr hafa þeir engla; the remainder of the phrase was not independently re-edited from the pixels.','AM 674 a 4°, fol. 33v, line corresponding to Eluc674(1989) 158.10','https://myndir.handrit.is/file/Handrit.is/AM%20674%20a%204to/67/SECONDARY_DISPLAY','Verifies the visible token Hatr in a c.1150-1200 manuscript when aligned with ONP’s located transcription. It does not by itself establish grammatical gender, first use, complete semantics, or reconstructed ancestry.','reviewed');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(859,191,'hata','Old Norse','the related verb to hate or treat with hatred',525),
(860,191,'hatis','Gothic','an inherited Germanic noun cognate with a complete corpus dossier',525),
(861,191,'hete','Old English','an inherited Germanic noun cognate',525),
(862,191,'hate','English','the modern English continuation reached through the Old English noun and verb histories',525),
(863,191,'Hass','German','the modern High German cognate with a complete semantic-history dossier',525),
(864,191,'had','Danish','a modern North Germanic cognate listed by the historical dictionary',525),
(865,191,'hat','Swedish','a modern North Germanic cognate listed by the historical dictionary',525),
(866,191,'mann-hatr','Old Norse','a compound glossed misanthropy in the historical dictionary',525),
(867,191,'trúar-hatr','Old Norse','a compound glossed religious fanaticism in the historical dictionary',525),
(868,191,'hatrs-fullr','Old Norse','a derived adjective meaning hateful',525),
(869,191,'hatrs-sök','Old Norse','a compound meaning a cause of hatred',525);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(783,191,1,'Disputed Indo-European comparative horizon','*ḱeh₂d- and *ḱh₂d-es-','Formal comparisons extend beyond Germanic, but they do not establish one homeland, one original meaning, or one directly spoken word.',NULL,NULL,'uncertain',-4500,-2500,'range','A conventional comparative horizon, not an archaeological location or attestation date.'),
(784,191,2,'Proto-Germanic linguistic horizon','*hatiz-','Germanic branch forms support a reconstructed noun stem while its exact ablaut, inflection, and semantic center remain analytical.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval, not a directly dated token.'),
(785,191,3,'Old Norse manuscript world','c.1150-1200 Hatr in AM 674 a 4°','A directly inspected folio visibly preserves Hatr in the Elucidarius line located and transcribed by ONP.',NULL,NULL,'broad',1150,1200,'range','The interval is the manuscript dating reported by ONP; 1175 is only the attestation table’s representative point.'),
(786,191,4,'Old Norse manuscript world','c.1200-1225 proposed scorn context','ONP gives one AM 677 4° passage a question-marked mockery or scorn sense aligned with Latin irrisio.',NULL,NULL,'broad',1200,1225,'range','The source dates the manuscript range; it does not date a semantic innovation or settle the proposed sense.'),
(787,191,5,'Old Norse manuscript world','c.1300 lone masculine analysis','ONP separates one Hirðskrá citation as masculine and flags that assignment as possibly an elementary error.',NULL,NULL,'broad',1300,1300,'exact','The exact value records the source’s circa-1300 manuscript horizon, not a day, copying event, or secure grammatical innovation.'),
(788,191,6,'Old Norse textual continuum','54-citation neuter entry and one-citation masculine analysis','The edited prose corpus preserves a dominant neuter analysis, one doubtful masculine assignment, and context-sensitive meanings. It is not reduced to one map pin.',NULL,NULL,'broad',1300,1500,'range','The stage carries the corpus beyond the located c.1300 record through the conventional later Old Norse textual period; it is not a first- or last-use claim.'),
(789,191,7,'Knowledge boundary','beyond the disputed Indo-European comparison','The graph stops before grammar, mockery, hatred, grief, care, pain, or pursuit is declared the one prehistoric essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric date or coordinate is asserted beyond the qualified comparison.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(783,436,'Noun etymology and semantic-transparency note','supports','Publishes the qualified formal comparison and its semantic problem.'),
(783,439,'Non-Germanic comparison discussion','challenges','Questions whether the wider proposed family has one origin or meaning.'),
(783,473,'p. 101, wider HATRED comparison','context','Provides the broader affirmative comparison while leaving it reconstructive.'),
(784,473,'p. 101, Proto-Germanic *hataz ~ *hatiz- and Old Norse hatr','supports','Publishes the reconstructed stem notation and branch form.'),
(784,525,'Entry hatr, cross-Germanic comparison','context','Supplies the historical comparative set.'),
(785,522,'Eluc674(1989) 158.10; AM 674 a 4°, c.1150-1200; Hatr hafa þeir engla','supports','Locates, dates, and transcribes the directly inspected manuscript line.'),
(785,523,'AM 674 a 4°, Bókin dýra, fol. 33v image sequence','supports','Supplies the digitized evidence object and shelfmark.'),
(786,524,'Prosper677 9.10; AM 677 4°, c.1200-1225; proposed mockery or scorn sense','supports','Dates and locates the source-reported uncertain semantic context.'),
(787,521,'¹hatr sb. m., one citation; citation c790383; possible elementary error','supports','Supplies the lone masculine analysis, manuscript horizon, and editorial warning.'),
(788,520,'²hatr sb. n., 54 citations and complete English definitions','supports','Defines the main corpus record and its semantic range.'),
(788,521,'¹hatr sb. m., one citation','context','Preserves the separate but doubtful grammatical analysis.'),
(789,436,'Semantic relations are far from transparent','supports','Marks the Indo-European comparison as unresolved.'),
(789,439,'Qualified conclusion','supports','Supports an explicit boundary rather than a single invented origin.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(494,191,'Is the ordinary Old Norse noun hatr neuter?','Yes in the dominant edited record. ONP’s main entry is ²hatr sb. n., gives genitive hatrs, and contains 54 citations; Cleasby and Vigfússon also label the noun neuter.','established','A modern corpus dictionary and the historical dictionary independently classify the main noun.','resolved','The route labels the headword chiefly neuter while preserving the separate masculine anomaly.'),
(495,191,'Is there also a masculine hatr?','ONP maintains a separate masculine analysis, but it rests on one citation and the editors flag it as possibly an elementary error. The possibility remains visible without being promoted to parity with the 54-citation neuter entry.','proposed','The source itself separates the entry and supplies both the count and warning.','open',NULL),
(496,191,'Do the two ONP entries prove two equally secure Old Norse nouns?','No. Editorial separation records an analytical problem; the 54-to-1 citation imbalance and explicit error warning make equal security unjustified.','established','The conclusion is limited to the public dictionary’s evidence counts and qualification.','resolved','The interface says grammar problem, not two established homonyms.'),
(497,191,'Could hatr mean mockery or scorn?','Possibly in one context. ONP prints question marks before both the Danish and English glosses and compares Latin irrisio. One source-reported passage does not establish a broad independent sense.','proposed','The citation page preserves the passage, manuscript range, Latin comparison, and editorial question marks.','open',NULL),
(498,191,'Did hatr mean only a private inner feeling?','No. ONP’s principal gloss includes enmity and spite, and its citations include definitions involving desire to harm, opposition to love, and contextual persecution. That range does not make every token an action.','established','The main entry documents the corpus-wide range and located examples.','resolved','The dossier retains hatred, enmity, and spite rather than reducing the noun to modern personal dislike.'),
(499,191,'Is the c.1150-1200 Hatr token the first known use?','Not established. The inspected object proves a token in that codex; neither ONP nor the facsimile inspection licenses a global earliest-surviving-use claim.','established','The manuscript is dated and located, but firstness would require a separate exhaustive comparison.','resolved','The witness card says dated manuscript token, not first use.'),
(500,191,'Is the exact Proto-Germanic noun *hatiz- or *hataz?','The noun is reconstructed, and published notation reflects stem alternation and analytical choices. Koch prints *hataz ~ *hatiz- while the atlas reuses the shared *hatiz- node.','probable','The descendants are attested but the Proto-Germanic paradigm is comparative.','open',NULL),
(501,191,'Does hatr securely descend from *ḱeh₂d-?','Only as a qualified proposal. Formal correspondence is published, but the semantic chain through grief, care, pain, pursuit, and hatred is not transparent.','probable','Merriam-Webster qualifies the comparison and Liberman challenges the wider semantic family.','open',NULL),
(502,191,'Was Old Norse hatr borrowed from English hate or German Hass?','No such borrowing is established. The historical dictionaries list collateral Germanic forms, and Koch connects them through a reconstructed Germanic noun.','established','Independent branch forms and comparative reconstruction support inheritance rather than a modern-language donor.','resolved','The graph joins the dossiers at *hatiz- and draws no English-to-Norse or German-to-Norse arrow.'),
(503,191,'Does textual opposition between love and hatr prove shared ancestry?','No. The Time gráts ok látrs, time ælsko ok hatrs passage aligns love and hate semantically, but opposition inside a sentence is not a genealogical edge.','established','ONP supplies the text and Latin alignment; the reviewed graph keeps the ancestry separate.','resolved','The opposition remains an attestation and never becomes a false root link.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(494,520,'²hatr sb. n. [hatrs; -], 54 citations','supports','Supplies the dominant neuter classification, genitive, and count.'),
(494,525,'Entry hatr, n.','supports','Independently classifies the historical headword as neuter.'),
(495,521,'¹hatr sb. m. [dat. -i], one citation; possible elementary error','supports','Publishes the separate masculine analysis and its explicit limitation.'),
(496,520,'²hatr sb. n., 54 citations','supports','Supplies one side of the quantitative contrast.'),
(496,521,'¹hatr sb. m., one citation and possible-error note','supports','Supplies the other side and prevents false equivalence.'),
(497,524,'Prosper677 9.10; ?mockery, scorn; cf. Latin irrisio','supports','Preserves the source’s uncertainty and exact contextual comparison.'),
(498,520,'Primary sense hatred, enmity, spite; definition-like and love-opposition citations','supports','Documents a semantic range wider than one private feeling.'),
(499,522,'AM 674 a 4°, c.1150-1200; Hatr hafa þeir engla','supports','Dates and locates the inspected token without claiming firstness.'),
(499,523,'AM 674 a 4°, fol. 33v digitized image','context','Supplies the evidence object but no exhaustive earliest-use comparison.'),
(500,473,'p. 101, *hataz ~ *hatiz-','supports','Publishes the alternating reconstruction.'),
(500,436,'Noun etymology: Germanic *hatiz-','context','Publishes the i-stem notation reused by the connected dossiers.'),
(501,436,'Noun etymology and semantic-transparency note','supports','Publishes and qualifies the Indo-European comparison.'),
(501,439,'Discussion of proposed cognates and pursuit','challenges','Questions the unity of the wider semantic family.'),
(502,525,'Entry hatr, comparison with Gothic, Old English, English, German, Danish, and Swedish','supports','Shows collateral branch forms rather than a modern borrowing path.'),
(502,473,'p. 101, Proto-Germanic noun and Old Norse hatr','context','Publishes the inherited comparative analysis.'),
(503,520,'Citation: Time gráts ok látrs, time ælsko ok hatrs; Latin tempus dilectionis et tempus odii','supports','Documents semantic opposition in a text without supplying a genealogical claim.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(191,191,2101,'hatr','Old Norse hatr has a 54-to-1 grammar problem.','The University of Copenhagen’s Dictionary of Old Norse Prose separates a 54-citation neuter noun from a one-citation masculine analysis—and flags the lone masculine assignment as possibly an elementary error. A directly inspected c.1150-1200 manuscript visibly preserves Hatr, but a visible token cannot settle gender by itself. The reveal is not that Old Norse had two equally secure hate nouns; it is that rigorous lexicography preserves the fracture instead of hiding it.','A-',100,'The citation counts, grammatical labels, and error warning come directly from ONP’s separate entries. The manuscript inspection independently verifies one neuter-entry token but does not adjudicate the lone masculine analysis or establish corpus completeness.');
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
(191,520,'²hatr sb. n., 54 citations','supports','Supplies the dominant neuter side of the 54-to-1 contrast.'),
(191,521,'¹hatr sb. m., one citation; possible elementary error','supports','Supplies the lone masculine analysis and the source’s own warning.'),
(191,522,'Eluc674(1989) 158.10; Hatr hafa þeir engla','context','Locates the directly inspected neuter-entry token.'),
(191,523,'AM 674 a 4°, fol. 33v digitized image','context','Supplies the manuscript pixels and demonstrates why a visible form alone cannot settle the corpus-wide grammar.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(147,191,182,'ONE HATE FAMILY, TWO GRAMMAR PROBLEMS','Old Norse hatr is chiefly a neuter noun but carries one separately analyzed masculine citation that ONP itself questions. Gothic hatis is synchronically a neuter a-stem while historical grammar treats it as an inherited i-stem remodeled into that class. The shared *hatiz- family does not erase either branch’s local grammatical fracture.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1227 AND 1231
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1228,1229,1230) THEN 'probable' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1227 THEN 'Canonicalized from a five-source Old Norse relative candidate into a complete grammar, corpus, manuscript, dispute, truth, and journey dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1227 AND 1231;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1037 AND 1040;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1037 AND 1040;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1037 AND 1040;
