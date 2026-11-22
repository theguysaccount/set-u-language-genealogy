-- Promote the two candidates surfaced by the true-word wave. The Greek dossier
-- distinguishes poetic reduplication from deeper reconstruction, the French
-- dossier preserves disagreement over a Latin intermediary and makes clear
-- that an etymon may itself be reconstructed rather than attested.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(110,'etetymos','ἐτήτυμος','etetymos','/e.tɛ́ː.ty.mos/','adjective','A poetic Ancient Greek adjective meaning true, described by LSJ as a reduplicated formation beside ἔτυμος.','A longer ancient form is not automatically a deeper ancestor. LSJ treats ἐτήτυμος as poetic reduplication beside ἔτυμος, while the proposed *set-u- prehistory remains a separate reconstruction.','reviewed'),
(111,'etymon-french','étymon','etymon','/e.ti.mɔ̃/','noun','A French linguistic term for an attested or reconstructed form used to explain the historical development of one or more words.','An étymon does not have to be visible in a manuscript. French reference works explicitly allow the explanatory source form itself to be hypothetical or reconstructed.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(255,'scaife-lsj-etetymos','ἐτήτυμος — A Greek-English Lexicon','Henry George Liddell · Robert Scott · Henry Stuart Jones',1940,'Scaife ATLAS · Perseus Digital Library','https://atlas.perseus.tufts.edu/dictionaries/entry/urn%3Acite2%3Ascaife-viewer%3Adictionaries.v1%3Alsj-n43265/',NULL,'historical_dictionary'),
(256,'cnrtl-french-etymon','Étymon — Trésor de la langue française informatisé','ATILF · CNRS · Université de Lorraine',2012,'Centre National de Ressources Textuelles et Lexicales','https://www.cnrtl.fr/definition/%C3%A9tymon',NULL,'historical_dictionary'),
(257,'academie-french-etymon','Étymon — Dictionnaire de l’Académie française, 9e édition','Académie française Editors',2024,'Académie française','https://www.dictionnaire-academie.fr/article/A9E3028',NULL,'institutional_lexicon'),
(258,'scaife-lsj-etetymia','ἐτητυμία — A Greek-English Lexicon','Henry George Liddell · Robert Scott · Henry Stuart Jones',1940,'Scaife ATLAS · Perseus Digital Library','https://atlas.perseus.tufts.edu/dictionaries/entry/urn%3Acite2%3Ascaife-viewer%3Adictionaries.v1%3Alsj-n43264/',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(642,110,10,1,'ἐτήτυμος','etetymos','true-adjective','etḗtymos','/e.tɛ́ː.ty.mos/','attested','Archaic and Classical Greek poetic record',-750,-300,'true','LSJ calls the form poetic and reduplicated beside ἔτυμος; its extra syllables do not make it the family’s proto-form.'),
(643,110,10,2,'ἔτυμος','etymos','true-adjective','étymos','/é.ty.mos/','attested','Archaic and later Ancient Greek',-800,600,'true, real, actual','Shared canonical adjective node from the ἔτυμος dossier.'),
(644,110,6,3,'*setu-mo-','setu-mo','true-adjective','*setu-mo-',NULL,'reconstructed','Proto-Indo-European formation, proposed',-4500,-2500,'true, real','Shared proposed adjectival formation; it is not a written stage.'),
(645,110,6,4,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared proposed horizon behind the project name.'),
(646,110,7,5,'UNKNOWN','unknown','etetymos-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No securely reconstructed unique ancestor is promoted.','The poetic formation is attested; the deeper common base remains disputed.'),

(647,111,11,1,'étymon','etymon','technical-source-form','étymon','/e.ti.mɔ̃/','attested','1892–today',1892,NULL,'attested or reconstructed form used to explain a word’s historical development','CNRTL reports the French technical noun from 1892; the Académie defines its referent as attested or hypothetical.'),
(648,111,9,2,'etymon','etymon','technical-source-form','etymon',NULL,'attested','Latin scholarly use',-100,1400,'the literal or original meaning of a word','CNRTL presents Latin as the immediate donor; the Académie instead summarizes the borrowing as Greek.'),
(649,111,10,3,'ἔτυμον','etymon','technical-source-form','étymon',NULL,'attested','Later Ancient Greek',-300,600,'the true sense of a word according to its origin','Shared canonical substantivized neuter node.'),
(650,111,10,4,'ἔτυμος','etymos','true-adjective','étymos','/é.ty.mos/','attested','Archaic and later Ancient Greek',-800,600,'true, real, actual','Shared canonical adjective node.'),
(651,111,6,5,'*setu-mo-','setu-mo','true-adjective','*setu-mo-',NULL,'reconstructed','Proto-Indo-European formation, proposed',-4500,-2500,'true, real','Shared proposed adjectival formation.'),
(652,111,6,6,'*set-u-','set-u','default','*set-u-',NULL,'reconstructed','Proto-Indo-European horizon, proposed',-4500,-2500,'true; real; in true order','Shared proposed horizon.'),
(653,111,7,7,'UNKNOWN','unknown','french-etymon-deep-boundary',NULL,NULL,'boundary','beyond the proposed *set-u- analysis',NULL,NULL,'No single older ancestor is promoted.','The modern definition allows hypothetical etyma, but this dossier still stops at the published comparative boundary.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(533,110,642,643,'reduplication','The poetic form expands ἔτυμος as ἐτήτυμος; LSJ labels the relationship reduplication without requiring a separate deeper lexical parent.','The meaning remains true while the poetic form gains expressive or metrical shape.','Liddell · Scott · Jones','established',NULL,'The relationship is attested in the ancient poetic record and explicitly classified by LSJ.','reviewed'),
(534,110,643,644,'inheritance','The Greek form is analyzed from *setu-mo- with loss of initial *s and Greek development of the reconstructed formation.','A reconstructed adjective of truth or reality continues as Greek “true, real, actual.”','Robert Beekes · Martin Gális','proposed','The *setu-mo- morphology is published but not directly attested or universally settled.',NULL,'reviewed'),
(535,110,644,645,'derivation','The proposed *-mo- adjective is built on the reconstructed *set-u- base.','The true-order base becomes an adjective meaning true or real.','Robert Beekes · Charles de Lamberterie','proposed','Both the base and derivational segmentation are reconstructed.',NULL,'reviewed'),
(536,110,645,646,'knowledge_boundary','No older form commands secure consensus beyond the *set-u- proposal.','The poetic true-word line reaches the present comparative evidence horizon.','SET-U editorial boundary','boundary','The boundary preserves competing analyses rather than selecting one as fact.',NULL,'reviewed'),

(537,111,647,648,'borrowing','French adapted learned etymon as étymon with French stress and a nasalized final vowel.','The technical source-form sense was retained while expanding to include attested and reconstructed forms.','ATILF · CNRTL Editors','probable','CNRTL names Latin as the donor, while the Académie summarizes a direct Greek borrowing; the immediate route remains open.','CNRTL reports the French record from 1892.','reviewed'),
(538,111,648,649,'borrowing','Latin etymon borrowed the Greek neuter noun with direct learned adaptation.','The true or original sense of a word remained the technical referent.','Merriam-Webster Editors · Greek lexicography','established',NULL,NULL,'reviewed'),
(539,111,649,650,'substantivization','The neuter form ἔτυμον of the adjective ἔτυμος was used substantivally.','“The true” becomes the true sense of a word according to its origin.','Liddell · Scott · Jones','established',NULL,'LSJ marks the technical noun in later writers rather than Attic prose.','reviewed'),
(540,111,650,651,'inheritance','The Greek form is analyzed from *setu-mo- with loss of initial *s and Greek development of the reconstructed formation.','A reconstructed adjective of truth or reality continues as Greek “true, real, actual.”','Robert Beekes · Martin Gális','proposed','The *setu-mo- morphology is published but not directly attested or universally settled.',NULL,'reviewed'),
(541,111,651,652,'derivation','The proposed *-mo- adjective is built on the reconstructed *set-u- base.','The true-order base becomes an adjective meaning true or real.','Robert Beekes · Charles de Lamberterie','proposed','Both the base and derivational segmentation are reconstructed.',NULL,'reviewed'),
(542,111,652,653,'knowledge_boundary','No older form commands secure consensus beyond the *set-u- proposal.','The French technical noun reaches the same open comparative horizon.','SET-U editorial boundary','boundary','Allowing hypothetical etyma does not license a fabricated deeper ancestor.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(533,255,'Headword introduction: “poet. redupl. for ἔτυμος”','supports','Directly classifies ἐτήτυμος as a poetic reduplicated form beside ἔτυμος.'),
(533,248,'Adjective headword and poetic record','context','Documents the shorter true-word beside the reduplicated form.'),
(534,12,'s.v. ἔτυμος and ἐτεός, pp. 473–475','supports','Publishes the *setu-mo- analysis while preserving uncertainty.'),
(534,254,'Eteocles discussion: ἔτυμος < *setu-mo-','context','Independently summarizes the proposed formation.'),
(535,12,'s.v. ἔτυμος, derivational discussion','supports','Supplies the proposed *-mo- segmentation.'),
(536,11,'Modern etymology and bibliography','supports','Defines the disputed horizon.'),
(537,256,'Étymologie et Histoire: 1892; emprunt au latin etymon','supports','Names Latin as the immediate donor and supplies the French chronology.'),
(537,257,'Étymologie: mot savant emprunté du grec etumon','challenges','The Académie summarizes the learned borrowing as direct from Greek rather than through Latin.'),
(538,256,'Étymologie: latin etymon; grec ἔτυμον','supports','Supplies the Latin-to-Greek learned chain.'),
(538,248,'Substantive ἔτυμον, sense II','context','Documents the Greek technical noun.'),
(539,248,'Sense II: ἔτυμον as substantive','supports','Defines the true sense of a word according to origin.'),
(540,12,'s.v. ἔτυμος and ἐτεός, pp. 473–475','supports','Publishes the *setu-mo- analysis.'),
(540,254,'Eteocles discussion: ἔτυμος < *setu-mo-','context','Independently summarizes the proposed formation.'),
(541,12,'s.v. ἔτυμος, derivational discussion','supports','Supplies the proposed *-mo- segmentation.'),
(542,11,'Modern etymology and bibliography','supports','Defines the disputed horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(145,642,255,'Homeric and Archaic Greek poetic record',NULL,'LSJ lexical-corpus report for ἐτήτυμος','Odyssey 23.62; Iliad 22.438; Hesiod, Works and Days 10','οὐκ ἔσθʼ ὅδε μῦθος ἐτήτυμος','established','lexical_corpus_record',NULL,NULL,NULL,0,'Source-reported textual citations; no underlying manuscript object was directly inspected.'),
(146,647,256,'1892',1892,'CNRTL historical first-attestation report for French étymon','Étymologie et Histoire: Guérin 1892',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported first-use year; the Guérin volume was not directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(337,110,'ἔτυμος','Ancient Greek','shorter attested base named by LSJ',255),
(338,110,'ἐτεός','Ancient Greek','attested member of the wider true-word family',249),
(339,110,'ἐτητυμία','Ancient Greek','derived poetic noun meaning truth',258),
(340,110,'etymology','English','remote learned descendant of the shorter true-word branch',7),
(341,111,'etymon','English','parallel technical noun in English',250),
(342,111,'étymologie','French','discipline and word-history noun in the same learned family',251),
(343,111,'étymologique','French','adjective in the same technical family',251),
(344,111,'strictus','Latin','Académie example of an etymon for French étroit and strict',257);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(406,110,1,'Indo-European comparative horizon','prehistoric, exact location unresolved','*set-u- and *setu-mo- are proposed reconstructions, not mapped written forms.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reviewed sources do not license one exact proto-place or proto-date.'),
(407,110,2,'Homeric Greek epic tradition','late 8th–7th century BCE textual horizon','LSJ reports ἐτήτυμος in Homer, Hesiod, and later poetic texts.',NULL,NULL,'broad',-750,-650,'range','The interval is a conventional textual horizon, not a surviving-manuscript date.'),
(408,110,3,'Ancient Greek poetic usage','Archaic–Classical record','The reduplicated adjective remains a poetic way to say true.',39000000,22000000,'regional',-750,-300,'range','The bounds summarize the cited literary record rather than a coinage event.'),

(409,111,1,'Later Ancient Greek learned usage','Hellenistic and Roman periods','The substantivized neuter ἔτυμον denotes the true sense of a word according to its origin.',39000000,22000000,'regional',-300,300,'range','The span covers the later Greek evidence cited by LSJ.'),
(410,111,2,'Latin scholarly transmission','antiquity–medieval learned use','CNRTL places Latin etymon between Greek and French, while the Académie compresses the route as direct Greek borrowing.',42000000,12500000,'regional',-100,1400,'range','The wide range reflects learned transmission, not one dated borrowing witness.'),
(411,111,3,'French lexicographic record','1892','CNRTL reports the French technical noun in Guérin.',48856600,2352200,'regional',1892,1892,'exact','The year is source-reported; the underlying volume was not directly inspected.'),
(412,111,4,'Modern French linguistic usage','1892–today','Étymon denotes an attested or reconstructed explanatory source form.',NULL,NULL,'global',1892,NULL,'open','The open interval begins at the source-reported French horizon.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(406,12,'s.v. ἔτυμος and ἐτεός','supports','Supplies the proposed reconstructed horizon while preserving uncertainty.'),
(407,255,'Homeric and Hesiodic citation list','supports','Documents the early poetic textual horizon.'),
(408,255,'Headword definition and citations','supports','Documents the true sense and poetic distribution.'),
(409,248,'Substantive sense II and later-author citations','supports','Documents later Greek use of the technical noun.'),
(410,256,'Étymologie: latin etymon; grec ἔτυμον','supports','Supplies the Latin transmission stage.'),
(410,257,'Étymologie: emprunté du grec etumon','challenges','Records the competing compressed donor account.'),
(411,256,'Étymologie et Histoire: 1892 (Guérin)','supports','Supplies the exact source-reported French horizon.'),
(412,256,'Headword definition','supports','Defines the attested-or-reconstructed technical sense.'),
(412,257,'Linguistique definition','context','Independently defines the referent as attested or hypothetical.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(198,110,'Is ἐτήτυμος a deeper ancestor of ἔτυμος?','No. LSJ classifies it as a poetic reduplicated form for ἔτυμος, not an older proto-form from which ἔτυμος descends.','established','The historical dictionary labels the morphological relation directly.','resolved','The canonical edge points from the longer poetic form to the shorter base and keeps the separate reconstructed path below it.'),
(199,110,'Does the reduplicated form make *set-u- certain?','No. ἐτήτυμος is attested, but the *setu-mo- and *set-u- stages beneath ἔτυμος remain reconstructed and disputed.','proposed','LSJ secures the Greek relationship; Beekes and later synthesis supply the separately graded prehistoric analysis.','open','Attested reduplication and proposed ancestry keep different confidence classes.'),
(200,111,'Did French borrow étymon through Latin or directly from Greek?','CNRTL names Latin etymon as the immediate donor; the Académie calls the French word a learned borrowing from Greek. The graph preserves the Latin route as probable, not certain.','probable','Two institutional reference works describe the immediate borrowing route differently.','open','The competing source stance stays attached to the borrowing edge.'),
(201,111,'Must a French étymon be directly attested?','No. Both CNRTL and the Académie explicitly define the explanatory form as attested or reconstructed/hypothetical.','established','The two definitions independently preserve this core methodological distinction.','resolved','The dossier can therefore point to a reconstructed form without presenting that form as attested.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(198,255,'Headword introduction: “poet. redupl. for ἔτυμος”','supports','Directly classifies the relationship.'),
(198,248,'Headword ἔτυμος','context','Documents the shorter attested base.'),
(199,255,'Headword and attested citation list','context','Secures the Greek word without making a proto-claim.'),
(199,12,'s.v. ἔτυμος and ἐτεός','supports','Publishes the deeper reconstruction with uncertainty.'),
(200,256,'Étymologie: emprunt du latin etymon','supports','Names Latin as the immediate donor.'),
(200,257,'Étymologie: emprunté du grec etumon','challenges','Names Greek directly and thereby exposes the donor-label disagreement.'),
(201,256,'Definition: mot attesté ou reconstitué','supports','Explicitly allows an attested or reconstructed etymon.'),
(201,257,'Definition: forme attestée ou hypothétique','supports','Independently allows an attested or hypothetical etymon.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(95,110,2006,'ἐτήτυμος','The longer ancient word is not the deeper root.','LSJ calls ἐτήτυμος a poetic reduplication beside ἔτυμος. Extra syllables can be expressive morphology rather than archaeological depth.','A',100,'The Greek relationship is established; the deeper asterisked path remains separately proposed.'),
(96,111,2007,'étymon','Even the source-form can wear an asterisk.','French lexicography defines an étymon as attested or reconstructed/hypothetical. The unit used to explain a word’s history is not automatically a surviving word.','A',100,'Two institutional definitions directly support the reveal.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id, ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT ranked.new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(95,255,'Headword introduction: “poet. redupl. for ἔτυμος”','supports','Directly establishes that the longer word is a poetic formation beside the shorter one.'),
(95,12,'s.v. ἔτυμος and ἐτεός','context','Keeps the deeper reconstructed analysis separate.'),
(96,256,'Definition: mot attesté ou reconstitué','supports','States the attested-or-reconstructed distinction.'),
(96,257,'Definition: forme attestée ou hypothétique','supports','Independently states the same methodological distinction.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(73,110,105,'THE LONGER WORD IS THE YOUNGER SHAPE','ἐτήτυμος adds poetic reduplication to ἔτυμος; visual length is not historical depth.','100','A','reviewed'),
(74,111,108,'TWO LANGUAGES, ONE TECHNICAL WARNING','French étymon and English etymon both name explanatory source forms, but neither term guarantees that its referent is attested or ultimate.','99','A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 642 AND 653
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,'established',CASE WHEN f.status='boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 642 AND 653;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 533 AND 542;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 533 AND 542;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 533 AND 542;
