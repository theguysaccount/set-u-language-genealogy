-- Promote Middle Irish cais from the graph-derived evidence-ready queue into a
-- complete dossier. eDIL's first headword cais is explicitly explained as both
-- love and hate, with context-dependent citations on both sides. Its second
-- headword cais means "eye" and is recorded as an excluded homograph. Koch's
-- deeper Celtic and Indo-European route remains proposed rather than being
-- mistaken for a settled explanation of the semantic opposition.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(91,'middle-irish','Middle Irish','Indo-European','Celtic · Goidelic',0,900,1200,'Conventional medieval Goidelic stage used for eDIL headword cais. Individual dictionary citations are source-reported and are not all assigned one exact composition date.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(202,'cais','cais','cais','not directly recoverable','Middle Irish noun','eDIL separates two Irish headwords written cais. The first, also recorded as caise, is explicitly explained both as love and as hate; its cited passages and glossary equations range from searc and grádh "love" to miscais and mioscais "hatred", with context deciding individual readings. One Éigse line is tentatively translated so that the same visible form occurs on both sides: "my love ... is met by hatred(?)". The question mark matters. The second eDIL headword cais means "eye" and is excluded from this semantic lineage. These records establish a remarkable lexicographic opposition, not one timeless essence, a chronology from love to hate, or proof that every occurrence belongs to one historically indivisible sense. John T. Koch compares the noun with Proto-Celtic *katsi- < *kad-t/si- and a wider *kad- family, but that ancestry and its proposed Germanic comparison remain open. eDIL itself generally supplies etymologies only selectively. No manuscript pixels were directly inspected, no earliest-use or historical-frequency claim is made, and no exact pronunciation is invented.','Middle Irish cais could be read as love or hate. eDIL even preserves one tentatively translated line in which cais appears on both sides of that opposition—while a separate homograph cais means "eye".','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(584,'edil-cais-love-hate','eDIL — 1 cais, noun explained as both love and hate','Royal Irish Academy · eDIL editors',2026,'Royal Irish Academy','https://dil.ie/7955',NULL,'historical_dictionary'),
(585,'edil-cais-eye','eDIL — 2 cais, eye homograph','Royal Irish Academy · eDIL editors',2026,'Royal Irish Academy','https://dil.ie/7956',NULL,'historical_dictionary'),
(586,'edil-about-method','eDIL — About the dictionary, revision, headwords, and citations','Royal Irish Academy · eDIL editors',2026,'Royal Irish Academy','https://dil.ie/about',NULL,'lexicographic_method');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1291,202,91,1,'cais','cais','love-hate-ambivalent-noun','cais',NULL,'attested','Middle Irish and later Irish dictionary citations',900,1700,'love; hate, with readings dependent on context','eDIL headword 1 cais, also caise, is explicitly explained both as love and hate. The form belongs to one lexicographic entry; the graph does not infer that every citation has one sense or that the opposite readings developed in one known order.'),
(1292,202,78,2,'*katsi-','katsi','celtic-love-hatred-proposal','*katsi-',NULL,'reconstructed','proposed Proto-Celtic',-1300,-800,'a proposed Celtic formation compared with Middle Irish cais and Old Welsh cas','Koch publishes this reconstruction. eDIL is not generally an etymological dictionary, and the reviewed sources do not expose a complete dated Goidelic sound history from this form to cais.'),
(1293,202,6,3,'*kad-t/si-','kad-t-si','proposed-suffixal-formation','*kad-t/si-',NULL,'reconstructed','proposed pre-Celtic or Indo-European formation',-4500,-1000,'a proposed formation underlying Proto-Celtic *katsi-','The segmented form and its chronology are analytical. The notation follows Koch; it is not a directly attested word or an independently dated speech form.'),
(1294,202,6,4,'*kad-','kad','proposed-deep-love-hatred-base','*kad-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base used in a wider Celtic, Germanic, Italic, Iranian, and Greek comparison','The wider comparison is published, but its members do not yield one transparent semantic history. Love, hate, care, grief, and related fields are not collapsed into one prehistoric essence.'),
(1295,202,7,5,'UNKNOWN','unknown','cais-middle-irish-deep-boundary',NULL,NULL,'boundary','beyond the proposed *kad- comparison',NULL,NULL,'No securely accepted earlier ancestor or uniquely recoverable original meaning is known.','The trail ends before love, hatred, care, grief, desire, or enmity is promoted as the one certain original meaning.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1090,202,1291,1292,'proposed_inheritance','Koch compares Middle Irish cais with Proto-Celtic *katsi-. The reviewed evidence does not publish a complete, dated chain of Goidelic sound changes, so no missing intermediate forms are invented.','The attested Irish entry carries both love and hate readings. The reconstruction does not identify which reading is older or prove that the opposition was already present in Proto-Celtic.','John T. Koch · Royal Irish Academy eDIL editors','proposed','The Celtic comparison is published, but the daughter path is incompletely exposed and the semantic direction remains unknown.','A conventional Proto-Celtic horizon is compared with source-reported medieval and early modern Irish citations.','reviewed'),
(1091,202,1292,1293,'derivation','Koch analyzes *katsi- from *kad-t/si-. The displayed consonant cluster and affricate outcome follow that published reconstruction rather than an independently observed sound record.','A proposed suffixal formation is assigned to the Celtic love and hatred field; no single direction of semantic development is recovered.','John T. Koch','proposed','The notation and morphological segmentation are a comparative proposal.','Analytical pre-Celtic formation into proposed Proto-Celtic, not directly attested stages.','reviewed'),
(1092,202,1293,1294,'derivation','The proposed *kad-t/si- formation is analyzed from the base *kad- with suffixal material.','The wider comparison links semantically difficult fields including love, hatred, care, grief, and enmity; the graph preserves the comparison without declaring a single original meaning.','John T. Koch · Anatoly Liberman','proposed','The formal proposal is published, while the cross-branch semantic unity is disputed.','Two reconstructed analytical levels rather than independently dated lexical tokens.','reviewed'),
(1093,202,1294,1295,'knowledge_boundary','No older form is promoted beyond the proposed *kad- comparison.','The graph stops before the attested love and hate readings are reverse-engineered into a universal prehistoric emotion or action.','SET-U editorial boundary · John T. Koch · Anatoly Liberman','boundary','The displayed route is a published proposal, not a secure endpoint shared by all reviewed scholarship.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1090,473,'p. 101, Proto-Celtic *katsi- and Middle Irish cais','supports','Publishes the proposed Celtic reconstruction and Irish comparison.'),
(1090,584,'Headword 1 cais; forms caise; love and hate explanation','context','Documents the attested Irish form and its opposite contextual glosses without supplying a full etymology.'),
(1090,439,'Discussion of Irish cais and the non-Germanic comparison','challenges','Warns that semantic opposition does not by itself secure the wider family.'),
(1091,473,'p. 101, *katsi- < *kad-t/si-','supports','Publishes the proposed formation and direction.'),
(1092,473,'p. 101, HATRED *kad- comparison','supports','Publishes the analytical base and wider cross-branch set.'),
(1092,439,'Non-Germanic comparison and semantic conclusion','challenges','Questions whether the proposed members form one transparent family.'),
(1093,473,'p. 101, proposed *kad- comparison','context','Defines the deepest displayed affirmative proposal.'),
(1093,439,'Qualified conclusion on opposing meanings and deep comparison','supports','Supports an explicit endpoint rather than a fabricated original meaning.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(456,1291,584,'date not normalized; source-reported',NULL,'eDIL citation from O''Curry manuscript material','O''Curry 2579; Eg. 88, 49(50)a','cin cais, cin miscais ...','probable','lexical_corpus_record',NULL,NULL,NULL,0,'eDIL reports a contrast between cais and miscais. The cited manuscript object, full passage, and translation were not directly inspected, so the record does not assign an uncaveated sense to cais.'),
(457,1291,584,'date not normalized; source-reported',NULL,'eDIL citation from O''Curry manuscript material','O''Curry 2581; Eg. 88, 49(50)b','ni tongar ar cais ... na miscais ...','probable','lexical_corpus_record',NULL,NULL,NULL,0,'eDIL reports the paired forms. The manuscript pixels and complete syntax were not inspected; the contrast is evidence for contextual opposition, not a dated semantic transition.'),
(458,1291,584,'date not normalized; source-reported',NULL,'Ancient Laws of Ireland citation in eDIL','Laws v 460.20','cen cais, cen miscais','probable','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported lexicographic citation. It preserves cais beside miscais, but no manuscript object or independent translation was directly reviewed.'),
(459,1291,584,'date not normalized; source-reported',NULL,'ACC citation in eDIL','ACC 51; dar cais caindénam','dar cais caindénam','probable','lexical_corpus_record',NULL,NULL,NULL,0,'eDIL translates this as "instead of hatred well-doing". The quotation and translation are dictionary-reported, and the underlying witness was not directly inspected.'),
(460,1291,584,'date not normalized; source-reported',NULL,'ACC and O''Clery citation in eDIL','ACC 51; quoted O''Cl.; ba mór a chais','ba mór a chais ''co a lesmáthair','probable','lexical_corpus_record',NULL,NULL,NULL,0,'eDIL translates the clause as his step-mother''s hatred for him. The source establishes one negative reading without making hatred the only sense of the headword.'),
(461,1291,584,'date not normalized; source-reported',NULL,'Ailill and Aillinn citation in eDIL','RC xiii 221.4; ba saincais-seom di Aillinn','ba saincais-seom di Aillinn','probable','lexical_corpus_record',NULL,NULL,NULL,0,'eDIL translates this as the special love of Aillinn. The record is lexicographic rather than a direct inspection of the textual witness.'),
(462,1291,584,'date not normalized; source-reported',NULL,'Dánta Grádha citation in eDIL','Dánta Gr. 15.26','duit tugas mo chéadchais','probable','lexical_corpus_record',NULL,NULL,NULL,0,'eDIL places this citation in the love side of the entry. The source-reported line does not establish an earliest use or exact date for the sense.'),
(463,1291,584,'date not normalized; source-reported',NULL,'metrical glossary citation in eDIL','Metr. Gl. D 60; caisi miosgois and caisi serc','caisi miosgois; caisi serc','probable','lexical_corpus_record',NULL,NULL,NULL,0,'The glossary pairs the same headword with hatred and love glosses. This is strong lexicographic evidence for the opposition, not proof that both equations reflect one unchanged spoken sense.'),
(464,1291,584,'date not normalized; source-reported',NULL,'O''Reilly poems citation in eDIL','O''R Poems 2141; cais gach taidhg','cais gach taidhg','probable','lexical_corpus_record',NULL,NULL,NULL,0,'eDIL translates this as the beloved of every poet. The dictionary citation was inspected, but not the underlying textual object.'),
(465,1291,584,'date not normalized; source-reported',NULL,'Éigse citation in eDIL','Éigse i 86.8; mo chais is cais ''na agaid','mo chais is cais ''na agaid','proposed','lexical_corpus_record',NULL,NULL,NULL,0,'eDIL tentatively translates the line as "my love ... is met by hatred(?)". The question mark and source-reported status are preserved; the record does not resolve whether the two visible forms have distinct senses in the original syntax.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1012,202,'caise','Irish','a variant form listed under eDIL headword 1 cais',584),
(1013,202,'miscais','Irish','a recurrent contrast form and glossary equivalent for hatred',584),
(1014,202,'saincais','Irish','a compound translated as special love in the Aillinn citation',584),
(1015,202,'céadchais','Irish','a compound occurring in a love-side Dánta Grádha citation',584),
(1016,202,'caisgen','Irish','a negative compound in the source-reported Fianaigecht citation',584),
(1017,202,'serc','Irish','a glossary equivalent for the love reading',584),
(1018,202,'grádh','Irish','a glossary equivalent for love',584),
(1019,202,'mioscais','Irish','a glossary equivalent for hatred',584),
(1020,202,'2 cais','Irish','an excluded homograph glossed eye rather than love or hate',585),
(1021,202,'cas','Old Welsh','a proposed Celtic comparison meaning hatred or enmity',473),
(1022,202,'hatis','Gothic','a proposed Germanic comparison kept outside the genealogical edge set',473),
(1023,202,'κῆδος','Ancient Greek','a proposed deeper comparison in a care, anxiety, or pain field',473);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(862,202,1,'Proposed Indo-European linguistic horizon','*kad- and *kad-t/si-','The deepest displayed route is a cross-branch comparative proposal. No archaeological point, single speech community, or original love-versus-hate meaning is asserted.',NULL,NULL,'uncertain',-4500,-2500,'range','Conventional comparative bounds, not dates of attested tokens.'),
(863,202,2,'Proto-Celtic linguistic horizon','*katsi-','Koch reconstructs a Celtic formation compared with Middle Irish cais and Old Welsh cas. The graph does not invent a fully dated Goidelic sound chain.',NULL,NULL,'uncertain',-1300,-800,'range','The interval follows the atlas''s conventional Proto-Celtic language horizon, not a directly attested word date.'),
(864,202,3,'Medieval Irish textual and glossary tradition','cais and caise','eDIL groups citations capable of love or hate readings under its first cais headword. Individual cited objects and composition dates were not normalized or directly inspected.',NULL,NULL,'broad',900,1200,'range','A conventional Middle Irish language-stage range; it is not an earliest-use claim for the headword or either sense.'),
(865,202,4,'Later Irish lexicographic citation tradition','compounds, glosses, and contextual readings','eDIL''s evidence surface reaches beyond a single period and includes glossary equations and poetic citations. This stage records transmission and editorial grouping, not a semantic migration.',NULL,NULL,'broad',1200,1700,'range','A broad later citation horizon within the dictionary''s historical scope, not dates assigned to every quoted line.'),
(866,202,5,'Royal Irish Academy digital dictionary','eDIL published online in 2007; revised 2013–2019','The searchable digital edition exposes headwords, variants, definitions, citations, translations, and references, while its About page says revision is targeted rather than globally uniform.',NULL,NULL,'global',2007,2019,'range','The bounds describe publication and revision milestones of the evidence surface, not the historical life of cais.'),
(867,202,6,'Current knowledge boundary','love–hate history and proposed deep ancestry remain unresolved','The graph preserves the dual gloss, excluded eye homograph, and proposed comparison while stopping before one semantic direction or universal origin is invented.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No numeric endpoint is assigned to an open research boundary.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(862,473,'p. 101, HATRED *kad- comparison','supports','Publishes the deepest displayed comparative proposal.'),
(862,439,'Non-Germanic comparison and semantic conclusion','challenges','Keeps the cross-branch semantic unity visibly disputed.'),
(863,473,'p. 101, Proto-Celtic *katsi- < *kad-t/si-','supports','Publishes the proposed Celtic reconstruction and formation.'),
(864,584,'Headword 1 cais; cited textual and glossary records','supports','Supplies the medieval Irish lexical evidence surface.'),
(864,586,'Headword policy and chronological citation method','context','Explains that headword form and citation order are editorial conventions, not uniform object dates.'),
(865,584,'Headword 1 cais; compounds, glossary equations, and poetry citations','supports','Supplies the later and mixed lexicographic citation surface.'),
(865,586,'Dictionary scope and citation policy','context','Bounds the record as a historical dictionary rather than one dated corpus.'),
(866,586,'History of eDIL: 2003–2007 digitization, 2007 publication, 2013 interim edition, 2014–2019 revision','supports','Documents the digital research surface and targeted revision history.'),
(867,584,'Headword explanation and tentative Éigse translation','supports','Leaves contextual sense assignment partly unresolved.'),
(867,439,'Discussion of Irish cais and the limits of semantic skeleton keys','supports','Supports stopping before a single deep meaning is asserted.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(658,202,'Did cais mean only hatred?','No. eDIL explicitly says the noun is explained both as love and hate, gives love glosses such as serc and grádh, and cites passages translated with love or beloved.','established','The entry heading, glossary equations, and located positive citations converge.','resolved','The dossier displays both semantic poles and cites each separately.'),
(659,202,'Did cais mean only love?','No. eDIL also gives miscais and mioscais hatred glosses and cites passages translated with hatred.','established','The same entry supplies explicit negative glosses and located negative contexts.','resolved','Love is not promoted over hate as the noun''s sole value.'),
(660,202,'Are love and hate merely two modern search results rather than one lexicographic headword?','No. eDIL places both explanations, glossary equations, and citations inside headword 1 cais, also caise.','established','The headword structure directly groups the evidence.','resolved','The graph models one lexicographic entry while leaving deeper historical sense structure open.'),
(661,202,'Can context assign a reading in every cited passage?','Context can support many readings, as eDIL''s translations show, but the entry expressly says texts may be capable of either meaning according to context and some records remain un-translated or tentative.','probable','Located positive and negative translations coexist with unresolved citations.','resolved','Each attestation preserves its source confidence instead of inheriting one global gloss.'),
(662,202,'Does the Éigse line certainly use cais once for love and once for hatred?','Not certainly. eDIL tentatively translates "mo chais is cais ''na agaid" as "my love ... is met by hatred(?)" and prints a question mark on the second reading.','proposed','The source preserves the tantalizing opposition and its uncertainty together.','open',NULL),
(663,202,'Are the opposite readings one polysemous word, merged historical homonyms, or a lexicographic convenience?','eDIL groups them in one headword but does not, by that editorial act alone, settle the full historical relationship among every love and hate occurrence.','proposed','The entry structure supports shared treatment; the semantic scholarship warns against using opposition as a universal key.','open',NULL),
(664,202,'Does the cais meaning eye belong to the love–hate lineage?','No. eDIL assigns eye to a separate numbered headword, 2 cais, with its own eye gloss and citation.','established','The dictionary''s numbered homograph structure is explicit.','resolved','The eye word is recorded as an excluded homograph and never used as ancestry evidence.'),
(665,202,'Does eDIL make the deep etymology settled?','No. eDIL says it is generally not an etymological dictionary and supplies etymologies selectively. The deeper graph route therefore rests on separately cited comparative scholarship.','established','The project''s own method statement defines the evidence boundary.','resolved','Lexicographic meaning evidence and comparative ancestry evidence are kept distinct.'),
(666,202,'Does the contrast miscais prove that bare cais originally meant love?','No. The contrast is evidence that some contexts oppose the forms, but prefixal morphology and a translated contrast do not by themselves recover the oldest sense of bare cais.','probable','eDIL supplies the paired forms without a dated semantic derivation.','resolved','The graph records the contrast and leaves chronological priority unknown.'),
(667,202,'Does negative caisgen reveal the timeless core of cais?','No. The compound supplies one negative formation, not a license to reinterpret every positive citation as concealed hatred.','probable','The compound occurs inside the same lexicographic evidence surface as explicit love glosses.','resolved','Derived forms remain contextual relatives rather than universal semantic definitions.'),
(668,202,'Did love develop into hate, hate into love, or both from another meaning?','No reviewed source establishes one direction. The citations show an opposition; they do not date a semantic transition.','proposed','The lexicographic record lacks a secure chronological series, and comparative cautions reject an easy semantic skeleton key.','open',NULL),
(669,202,'Is Proto-Celtic *katsi- the secure direct parent of cais?','Koch publishes the comparison, but the reviewed materials do not expose a complete dated Goidelic derivation or independent consensus sufficient to mark the edge established.','proposed','One located comparative treatment supports the reconstruction while the lexicographic source does not adjudicate it.','open',NULL),
(670,202,'Is *kad-t/si- from *kad- the only defensible deeper analysis?','No. It is a published proposal, not an attested sequence, and the wider cross-branch set remains semantically disputed.','proposed','Koch supports the derivation; Liberman challenges transparent unity among the proposed comparisons.','open',NULL),
(671,202,'Does cais securely prove cognacy with the Germanic hate family?','No. The Celtic–Germanic comparison is serious enough to display, but the graph keeps it as a context link rather than a genealogical edge because formal and semantic acceptance remain unsettled.','proposed','Affirmative comparative scholarship and a direct skeptical treatment are both cited.','open',NULL),
(672,202,'What is the earliest surviving use of cais in either sense?','Not established here. eDIL supplies located citations but the underlying objects and dates were not normalized or directly inspected for an earliest-use audit.','probable','The dictionary''s headword and citation policies do not turn the first visible web citation into a first-use record.','open',NULL),
(673,202,'How was historical cais pronounced in each cited period and region?','Not directly recoverable from the reviewed evidence. Written forms and variants do not constitute recorded audio or a complete phonological reconstruction.','probable','eDIL exposes orthography and variants; it does not provide one securely dated pronunciation for all citations.','open',NULL),
(674,202,'Do the displayed citations measure how often speakers used love versus hate?','No. They are a selected historical-dictionary evidence surface, not a balanced corpus or a sample of medieval speech.','established','eDIL documents its selection, revision, and citation practices.','resolved','No frequency ratio or prevalence claim is calculated from the entry.'),
(675,202,'Does one revised eDIL entry imply every line has been uniformly re-edited?','No. eDIL says revisions were targeted and that a revised component does not mean an entire entry received uniform revision.','established','The About page explicitly bounds the revision project.','resolved','Source records identify the current web surface without claiming total editorial uniformity.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(658,584,'Headword explanation; caisi serc; O''Cl. cais .i. grádh; RC xiii 221.4; O''R Poems 2141','supports','Documents explicit love glosses and love-side citations.'),
(659,584,'Headword explanation; ACC 51; caisi miosgois; O''Cl. cais .i. miscais','supports','Documents explicit hatred glosses and negative citations.'),
(660,584,'Entire numbered headword 1 cais, forms caise','supports','Groups both explanations inside one lexicographic headword.'),
(661,584,'Entry explanation and located positive, negative, and tentative citations','supports','Shows both contextual assignments and unresolved cases.'),
(662,584,'Éigse i 86.8, mo chais is cais ''na agaid; translation ending hatred(?)','supports','Preserves the same-form opposition with the editor''s question mark.'),
(663,584,'Numbered headword 1 cais and its double glossary equations','supports','Supports shared lexicographic treatment.'),
(663,439,'Discussion of Irish cais, opposing meanings, and semantic limits','challenges','Warns against treating opposite glosses as a solved historical essence.'),
(664,585,'Numbered headword 2 cais; cais .i. súil; eye citation','supports','Establishes the separately numbered eye homograph.'),
(665,586,'Etymology policy: eDIL is generally not an etymological dictionary','supports','Defines why comparative ancestry requires separate evidence.'),
(666,584,'cin cais, cin miscais; ni tongar ar cais ... na miscais; cen cais, cen miscais','supports','Documents the contrast without dating or explaining its morphological history.'),
(667,584,'Fianaig. 16 §42, dremhan an caisgen tibhes','supports','Supplies the negative compound beside the entry''s positive evidence.'),
(668,584,'Love and hate explanation plus mixed citation inventory','supports','Documents semantic opposition without a dated change sequence.'),
(668,439,'Opposing meanings and limits of semantic explanations','challenges','Rejects easy reversal stories from the dual gloss alone.'),
(669,473,'p. 101, Proto-Celtic *katsi- and Middle Irish cais','supports','Publishes the proposed direct comparison.'),
(669,586,'Selective-etymology policy','context','Confirms that eDIL does not independently settle the reconstruction.'),
(670,473,'p. 101, *katsi- < *kad-t/si- and HATRED *kad-','supports','Publishes the proposed derivational analysis.'),
(670,439,'Non-Germanic comparison and semantic conclusion','challenges','Questions the deeper set''s transparent unity.'),
(671,473,'p. 101, Celtic and Germanic material under HATRED *kad-','supports','Publishes the affirmative cross-branch comparison.'),
(671,439,'Discussion of the Celtic and non-Germanic comparisons','challenges','Supports keeping cognacy open rather than encoding a false genealogy.'),
(672,584,'Located citation inventory under headword 1 cais','supports','Supplies evidence locations without a verified first-use claim.'),
(672,586,'Headword form and citation-order policies','context','Explains why web order is not automatically earliest attestation.'),
(673,584,'Forms caise and written citation variants','supports','Supplies written evidence but no directly recorded pronunciation.'),
(674,586,'Citation selection, chronology, and revision method','supports','Defines the dictionary as a curated evidence surface rather than a balanced frequency corpus.'),
(674,584,'Headword 1 cais citation inventory','context','Supplies the bounded set that must not be mistaken for speech frequency.'),
(675,586,'Revision history and warning that revised elements do not imply complete entry revision','supports','Directly bounds the editorial status of current eDIL entries.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(202,202,2110,'cais','Middle Irish cais could mean love or hate—and a separate cais meant eye.','eDIL''s first numbered cais headword is explicitly explained as both love and hate. Its glossary evidence equates the form with serc and grádh on the love side and miscais or mioscais on the hatred side; cited passages likewise cross the divide. Most strikingly, one Éigse line is tentatively translated "my love ... is met by hatred(?)", placing the same visible form on both sides while preserving the editor''s question mark. Then eDIL''s second numbered cais headword breaks the spell entirely: it means eye. The unveiling is not that love and hate were secretly identical. It is that written identity, lexicographic grouping, contextual meaning, and historical ancestry are four different claims.','A-',100,'The claim rests on located eDIL entry structure, glosses, and citations. It preserves the tentative translation, excludes the eye homograph, makes no speech-frequency or earliest-use claim, and keeps the Proto-Celtic and wider *kad- comparison proposed. No underlying manuscript pixels were directly inspected.');
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
(202,584,'Headword 1 cais; Metr. Gl. D 60 and Ff 76; RC xiii 221.4; O''R Poems 2141; ACC 51; O''Cl. glosses; Éigse i 86.8','supports','Establishes the dual gloss, supplies located love and hatred evidence, and preserves the same visible form on both sides of the tentative Éigse translation.'),
(202,585,'Headword 2 cais; cais .i. súil','supports','Establishes the separate eye homograph.'),
(202,586,'Headword, citation, etymology, and revision policies','context','Bounds what the current eDIL surface can and cannot establish.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(15,202,182,'disputed_deep_comparison','LOVE AND HATE MEET INSIDE A PROPOSED CELTO-GERMANIC COMPARISON','Koch places Middle Irish cais and Gothic hatis inside a wider *kad- comparison. eDIL securely documents the Irish love-and-hate field, but Liberman challenges semantic unity across the deeper set. This is a dispute bridge between dossiers, not a genealogical edge or proof that love and hate were once one universal idea.','John T. Koch · Royal Irish Academy eDIL editors · Anatoly Liberman','proposed','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(15,473,'p. 101, Proto-Celtic *katsi-, Middle Irish cais, Gothic hatis, and *kad- comparison','supports','Publishes the affirmative cross-branch comparison.'),
(15,584,'Headword 1 cais, love and hate explanation','context','Documents the attested Irish semantic opposition.'),
(15,439,'Discussion of Irish cais and non-Germanic comparisons','challenges','Prevents the proposed bridge from becoming a false cognacy edge.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(158,202,182,'LOVE AND HATE TOUCH; THE GRAPH REFUSES TO PRETEND THEY MERGE','Middle Irish cais is explained as both love and hate, while Gothic hatis survives chiefly in wrath contexts. Koch proposes a deeper connection through *kad-. Liberman''s challenge and the Irish semantic ambiguity keep that bridge open rather than settled. The rabbit hole is powerful precisely because the interface distinguishes a published comparison from a proved common ancestor.',100,'B','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1291 AND 1295
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.id IN (1292,1293,1294) THEN 'proposed' ELSE 'established' END,CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' WHEN f.id=1291 THEN 'Promoted from the graph-derived evidence-ready queue into a complete Middle Irish semantic, homograph, dispute, journey, and truth dossier.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1291 AND 1295;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1090 AND 1093;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1090 AND 1093;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1090 AND 1093;
