-- Promote Ancient Greek κῆδος without turning its wide semantic record into
-- an etymological-fallacy slogan. LSJ documents care, anxiety, grief, funeral
-- rites, an object of care, and marriage connection, while the proposed deep
-- comparison with Germanic hate remains explicitly qualified. The Latin-script
-- source form kêdos and Doric κᾶδος remain graph-visible variants, not duplicate
-- dossiers or fabricated historical parents.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(209,'kedos','κῆδος','kedos','normalized Classical /kɛ̂ː.dos/; no recorded ancient audio','Ancient Greek neuter noun','Ancient Greek κῆδος is an attested neuter noun whose lexical record spans care or concern, anxiety and grief, troubles, mourning and funeral rites, an object of care, and connection by marriage. LSJ documents the Doric variant κᾶδος, Homeric plural forms such as κήδεα or elided κήδεʼ, an Aeschylean play between Helen as an object of care and marriage connection, and a warning that some marriage-based readings of Homeric passages are wrong. Comparative sources place the noun beneath a proposed *ḱh₂d-es- formation and *ḱeh₂d- base alongside Celtic and Germanic material, but the semantic unity of care, grief, battle, hostility, pursuit, and hate remains disputed. The dossier preserves the Greek semantic network, the proposed ancestry, and the explicit boundary as separate claim layers.','One Greek noun could name care, grief, funeral rites, an object of care, or an in-law connection. That does not prove that hate secretly means care: κῆδος belongs to a published but semantically disputed comparison with the Germanic hate family, and the responsible unveiling is the disagreement itself.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(604,'perseus-atlas-lsj-kedos','Liddell–Scott–Jones Greek-English Lexicon — κῆδος','Henry George Liddell · Robert Scott · Henry Stuart Jones · Scaife ATLAS editors',1940,'Tufts University · Scaife ATLAS','https://atlas.perseus.tufts.edu/dictionaries/entry/urn:cite2:scaife-viewer:dictionaries.v1:lsj-n57070/',NULL,'historical_dictionary'),
(605,'scaife-iliad-1-445-kede','Homer, Iliad 1.445 — πολύστονα κήδεʼ','Homer · Tufts University digital text editors',NULL,'Tufts University · Scaife Viewer','https://scaife.perseus.org/reader/urn:cts:greekLit:tlg0012.tlg001.perseus-grc2:1.445/',NULL,'digital_critical_edition'),
(606,'perseus-atlas-lsj-kedo','Liddell–Scott–Jones Greek-English Lexicon — κήδω and κήδομαι','Henry George Liddell · Robert Scott · Henry Stuart Jones · Scaife ATLAS editors',1940,'Tufts University · Scaife ATLAS','https://atlas.perseus.tufts.edu/dictionaries/entry/urn:cite2:scaife-viewer:dictionaries.v1:lsj-n57073/',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1332,209,10,1,'κῆδος','kedos','care-grief-mourning-affinity-neuter-noun','kêdos','/kɛ̂ː.dos/','attested','Homeric and later Ancient Greek',-800,600,'care, concern, anxiety, grief, trouble, mourning, funeral rites, object of care, or connection by marriage','LSJ prints Doric κᾶδος and the neuter genitive in -εος, then separates care or concern, troubles and griefs, funeral rites, an object of care, and marriage connection. The pronunciation is a normalized scholarly approximation, not recorded speech.'),
(1333,209,6,2,'*ḱh₂d-es-','kh2d-es','grief-pain-hatred-formation','*ḱh₂d-es-',NULL,'reconstructed','proposed Proto-Indo-European formation',-4500,-2500,'a proposed formation connecting care, grief, pain, mourning, hostility, and hatred words','Merriam-Webster and the wider comparative literature publish this formation while explicitly qualifying its semantic coherence. The Greek word supplies important care and mourning evidence but does not settle every proposed branch member.'),
(1334,209,6,3,'*ḱeh₂d-','keh2d','grief-pain-hatred-base','*ḱeh₂d-',NULL,'reconstructed','proposed Proto-Indo-European base',-4500,-2500,'a proposed base in the care, grief, pain, hostility, or hatred comparison','This is a comparative abstraction rather than one directly spoken or written form. Published accounts disagree about the family''s membership and semantic center.'),
(1335,209,7,4,'UNKNOWN','unknown','kedos-deep-boundary',NULL,NULL,'boundary','beyond the disputed care-grief-hatred comparison',NULL,NULL,'No securely accepted older ancestor or uniquely recoverable original meaning is currently known.','The trail ends before care, grief, mourning, kinship, battle, pursuit, hostility, or hate is selected as one prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1124,209,1332,1333,'proposed_inheritance','Under the proposed comparison, the palatal stop is represented by Greek k, while the long-vowel pattern appears as Ionic-Attic η beside Doric ā in κᾶδος. The exact Proto-Hellenic sequence and every laryngeal or suffixal step are reconstructed rather than attested.','The Greek care, anxiety, grief, mourning, and funeral field is compared with a wider formation that also contains hostility and hatred words. The edge does not make every branch sense descend from one recoverable emotional scene.','Merriam-Webster Editors · John T. Koch · Linguistics Research Center editors','proposed','The formal comparison is published across multiple sources, but Merriam-Webster calls the semantic relations far from transparent and Liberman challenges the wider family''s unity.','Proposed Indo-European formation into the attested Greek record.','reviewed'),
(1125,209,1333,1334,'derivation','The proposed zero-grade or reduced root formation *ḱh₂d-es- is analyzed from the full-grade base *ḱeh₂d- with suffixation.','The source groups grief, pain, care, mourning, and hatred meanings, but no single original semantic path is promoted.','Merriam-Webster Editors','probable','The formal analysis is published, while the semantic unity remains expressly difficult.','Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(1126,209,1334,1335,'knowledge_boundary','No older form is promoted beyond the disputed *ḱeh₂d- comparison.','The graph stops before care, grief, funeral obligation, marriage kinship, hostile pursuit, and hate are collapsed into a just-so story.','SET-U editorial boundary · Anatoly Liberman','boundary','The securely attested Greek record does not establish one uncontested deeper family or original scene.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1124,436,'Noun etymology: Greek kêdos beside the proposed *ḱh₂d-es- formation','supports','Publishes the Greek comparison while calling the semantic relations far from transparent.'),
(1124,473,'p. 101, wider Celto-Germanic HATRED comparison including Greek κῆδος','supports','Provides a broader affirmative comparative analysis.'),
(1124,600,'Greek κῆδος row under k̑ād- : k̑ədes- : k̑əd-s-','context','Places the exact Greek noun in the published reflex table with care, grief, and sorrow glosses.'),
(1124,604,'Headword, Doric κᾶδος, senses, and citations','context','Supplies the attested Greek form, dialect variant, and full semantic range independently of the deep comparison.'),
(1124,439,'Discussion of Greek and Celtic comparison candidates','challenges','Warns that the proposed non-Germanic forms do not automatically establish one semantic family.'),
(1125,436,'Noun etymology: *ḱh₂d-es- from *ḱeh₂d-','supports','Publishes the proposed nominal formation and base.'),
(1125,473,'p. 101, Indo-European reconstruction discussion','context','Provides an independent wider comparative treatment.'),
(1126,439,'Qualified conclusion on the wider hate comparison','supports','Supports stopping rather than choosing one universal original meaning.'),
(1126,436,'Etymology note: semantic relations are far from transparent','context','Marks the deepest comparison as semantically unresolved.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(502,1332,605,'Homeric epic textual layer; digital critical-edition line inspected',-700,'Iliad, many-troubled woes for the Argives','Iliad 1.445; CTS urn:cts:greekLit:tlg0012.tlg001.perseus-grc2:1.445','ὃς νῦν Ἀργείοισι πολύστονα κήδεʼ ἐφῆκεν','established','lexical_corpus_record','Tufts University · Scaife Viewer','Iliad 1.445',NULL,0,'The digital critical-edition line was directly read, but no ancient or medieval manuscript object was inspected. The representative year marks the Homeric composition horizon, not an exact first use, copying date, or surviving artifact date.'),
(503,1332,604,'Homeric epic, source-reported',-700,'Iliad, lament and grievous funeral rites','LSJ funeral-rites sense; Iliad 5.156','πατέρι δὲ γόον καὶ κήδεα λυγρὰ λεῖπʼ','established','lexical_corpus_record',NULL,NULL,NULL,0,'LSJ reports the line under funeral rites and mourning. The underlying manuscript tradition was not directly inspected, and the year is only a representative Homeric-text horizon.'),
(504,1332,604,'Homeric epic, source-reported',-700,'Odyssey, care or concern for others','LSJ care-about sense; Odyssey 22.254','τῶν ἄλλων οὐ κῆδος','established','lexical_corpus_record',NULL,NULL,NULL,0,'LSJ uses the phrase for the care-about sense. No manuscript object was inspected and the representative year does not assert first use.'),
(505,1332,604,'Classical Athenian tragedy, source-reported',NULL,'Aeschylus, Helen as object of care with a marriage-sense play','LSJ object-of-care sense; Agamemnon 699','Ἰλίῳ κῆδος ὀρθώνυμον','established','lexical_corpus_record',NULL,NULL,NULL,0,'LSJ identifies Helen as the object of care and explicitly notes wordplay with the marriage-connection sense. The exact performance text or manuscript object was not directly inspected.'),
(506,1332,604,'Classical Greek historiography, source-reported',NULL,'Thucydides, contracting a daughter''s marriage','LSJ connection-by-marriage sense; Thucydides 2.29','τὸ κῆδος ξυνάψασθαι τῆς θυγατρός','established','lexical_corpus_record',NULL,NULL,NULL,0,'LSJ cites the phrase for contracting a marriage for one''s daughter. The underlying edition or manuscript object was not directly inspected.'),
(507,1332,604,'Archaic Greek lyric, source-reported',NULL,'Pindar, Doric singular variant in a death context','LSJ funeral-rites sense; Pythian 4.112','κᾶδος φθιμένου θήκασθαι','established','lexical_corpus_record',NULL,NULL,NULL,0,'LSJ cites the Doric κᾶδος form. The record proves a published dialect variant and death-context use, not a separate lexeme or directly inspected manuscript token.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1114,209,'κήδω','Ancient Greek','the active verb to trouble or distress and middle-passive verb to care for or be concerned',606),
(1115,209,'κήδομαι','Ancient Greek','the separately indexed middle-voice lemma redirected to κήδω',606),
(1116,209,'ἀκηδής','Ancient Greek','an adjective without care or sorrow in the same comparative reflex table',600),
(1117,209,'cais','Middle Irish','a reviewed disputed comparison whose meanings include love, hatred, reproach, and complaint',473),
(1118,209,'cás','Old Welsh','a proposed Celtic comparison glossed bitterness or hatred',436),
(1119,209,'hate','English','a Germanic descendant joined only through the qualified deep comparison',436),
(1120,209,'Hass','German','a reviewed Germanic hate noun in the disputed wider family',473),
(1121,209,'hatis','Gothic','a reviewed Germanic wrath or hate noun in the proposed comparison',473),
(1122,209,'hete','Old English','an inherited Germanic hate noun compared with Greek care and grief',436),
(1123,209,'heti','Old Saxon','a reviewed Germanic hate noun in the UT reflex table',600),
(1124,209,'hatr','Old Icelandic','a reviewed Germanic hate noun in the UT reflex table',600),
(1125,209,'hatōn','Old Saxon','a reviewed Germanic hate verb in the proposed wider family',600),
(1126,209,'hazzōn','Old High German','a reviewed Germanic hate or persecution verb in the proposed wider family',600),
(1127,209,'hetzen','Middle High German','a pursuit verb relevant to the competing hostile-action semantic account',600);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(917,209,1,'Disputed Indo-European comparative horizon','*ḱh₂d-es- and *ḱeh₂d-','Greek care and grief are compared with Celtic, Germanic, Italic, and other material, but the reconstruction is not one archaeological place or attested speech event.',NULL,NULL,'uncertain',-4500,-2500,'range','Conventional comparative bounds for a disputed reconstruction.'),
(918,209,2,'Prehistoric Greek linguistic horizon','long-vowel formation behind Ionic-Attic κῆδος and Doric κᾶδος','The dialect forms support a Greek history while no unique Proto-Hellenic token, speaker, or homeland is directly preserved.',NULL,NULL,'uncertain',-1600,-800,'range','Broad linguistic horizon rather than a dated artifact.'),
(919,209,3,'Homeric troubles and concern record','κῆδος and plural κήδεα or κήδεʼ in epic','Homeric lines document trouble, anxiety, grief, and concern without reducing oral-text composition or manuscript transmission to one pin.',NULL,NULL,'broad',-800,-650,'range','Representative Homeric textual horizon, not a first-token date.'),
(920,209,4,'Homeric mourning and funeral record','κήδεα in lament and death contexts','The same noun participates in mourning and funeral-obligation language alongside its trouble and concern uses.',NULL,NULL,'broad',-800,-650,'range','Parallel semantic evidence in the Homeric textual layer.'),
(921,209,5,'Classical tragic wordplay','Helen as object of care and marriage connection','LSJ reports Aeschylus playing on two lexical senses rather than documenting a new ancestry edge.',NULL,NULL,'broad',-500,-400,'range','Classical tragedy horizon; no exact performance or manuscript date is promoted.'),
(922,209,6,'Classical marriage-connection record','κῆδος as affinity or connection by marriage','Historiography, tragedy, and other prose attest the kinship-by-marriage sense. Its emergence is not assigned to one event or place.',NULL,NULL,'broad',-500,-300,'range','Conventional Classical Greek interval covering the cited record.'),
(923,209,7,'Ancient Greek textual continuum','care, grief, burial, responsibility, and affinity across genres','The semantic network remains distributed across Greek dialects, genres, and centuries rather than becoming one point on a map.',NULL,NULL,'global',-800,600,'range','Language-period envelope, not an assertion of unchanged frequency or meaning.'),
(924,209,8,'Knowledge boundary','before the disputed care-grief-hatred comparison','The trail ends without selecting care, grief, mourning, marriage, battle, pursuit, or hate as one original essence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No defensible earlier interval or coordinate is known.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(917,436,'Noun etymology and semantic-transparency note','supports','Publishes and qualifies the proposed Indo-European comparison.'),
(917,473,'p. 101, wider comparative HATRED treatment','context','Provides the cross-branch affirmative comparison.'),
(917,439,'Discussion of non-Germanic comparison candidates','challenges','Questions the unity of the proposed family.'),
(918,604,'Headword κῆδος and Doric κᾶδος','supports','Publishes the Greek dialect pair.'),
(918,473,'p. 101, Greek form in the wider comparison','context','Connects the Greek record with the reconstructed horizon.'),
(919,604,'Care, anxiety, grief, and troubles senses with Homeric citations','supports','Supplies the epic semantic inventory and locators.'),
(919,605,'Iliad 1.445 digital text','supports','Publishes one exact Homeric line containing elided κήδεʼ.'),
(920,604,'Funeral rites and mourning sense with Iliad 5.156','supports','Supplies the mourning branch and exact excerpt.'),
(921,604,'Object-of-care sense; Agamemnon 699; play on sense II','supports','Explicitly identifies the tragic wordplay.'),
(922,604,'Connection-by-marriage sense and Thucydides 2.29','supports','Supplies the affinity sense and located phrase.'),
(923,604,'Complete sense and citation inventory','supports','Documents the noun across epic, lyric, tragedy, historiography, philosophy, and prose.'),
(923,606,'κήδω active and middle-passive sense inventory','context','Shows the related verb spanning distress and care.'),
(924,439,'Qualified conclusion on the wider family','supports','Supports the explicit knowledge boundary.'),
(924,436,'Semantic relations are far from transparent','context','Blocks a single reconstructed essence.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(770,209,'Is κῆδος an attested Ancient Greek noun?','Yes. LSJ supplies a full neuter-noun entry, Doric κᾶδος, and citations from Homer onward; Scaife independently exposes the Iliad 1.445 line.','established','A historical lexicon and digital critical text converge on the exact Greek record.','resolved','The dossier distinguishes the lexeme from reconstructed ancestors and modern transliterations.'),
(771,209,'Does κῆδος have one simple English definition?','No. LSJ separates care or concern, anxiety and grief, troubles, funeral rites and mourning, an object of care, and connection by marriage.','established','The dictionary''s numbered sense structure and citations are explicit.','resolved','The headword summary preserves the semantic network instead of choosing one slogan.'),
(772,209,'Did κῆδος itself mean Germanic-style hate?','Not in the reviewed Greek lexical record. Its central cited meanings concern care, grief, trouble, mourning, funeral obligation, and affinity.','established','LSJ''s sense inventory does not make hate the Greek headword gloss.','resolved','Germanic hate appears only through a qualified deeper comparison.'),
(773,209,'Does the proposed cognacy prove that hate originally meant care?','No. Formal comparison does not recover one original semantic scene, and the reviewed sources explicitly call the semantic relations opaque or disputed.','established','Merriam-Webster qualifies the comparison and Liberman challenges broad semantic unification.','open',NULL),
(774,209,'Could κῆδος mean connection by marriage?','Yes. LSJ cites Herodotus, Aeschylus, Euripides, Sophocles, Philo, and Thucydides for affinity or contracting marriage.','established','The numbered second sense and multiple citations are explicit.','resolved','The graph treats affinity as an attested sense, not the noun''s only meaning.'),
(775,209,'Is the marriage sense simply the original meaning of every Homeric token?','No. LSJ says some marriage-based explanations of Iliad 13.464 and related passages are wrong and directs those uses back to anxiety or grief.','probable','The lexicon explicitly marks a historical interpretive error, while the full scholarly debate is not reproduced here.','open',NULL),
(776,209,'Could κῆδος name funeral rites or mourning?','Yes. LSJ supplies a dedicated sub-sense with Homeric, lyric, tragic, historical, oratorical, philosophical, and inscriptional evidence.','established','The lexical record includes exact citations and excerpts.','resolved','Mourning is one attested branch beside care and affinity.'),
(777,209,'Does Aeschylus play on more than one κῆδος sense?','Yes according to LSJ: Helen is an object of care in Agamemnon 699 with a play on the marriage-connection sense.','established','LSJ states the wordplay directly.','resolved','The record remains source-reported because no manuscript object was inspected.'),
(778,209,'Are κῆδος and kêdos separate Ancient Greek lexemes?','No. Merriam-Webster uses the Latin-script transliteration kêdos for the same Greek noun that LSJ indexes as κῆδος.','established','The two sources expose complementary source encodings of one headword.','resolved','A source-cited candidate resolution prevents a duplicate dossier.'),
(779,209,'Is Doric κᾶδος a different etymological word?','No separate lexeme is established. LSJ prints it as the Doric form of κῆδος and cites it in Pindar.','established','The dialect label and citation are explicit.','resolved','A graph-only dialect-variant edge preserves the form without inflating the dossier count.'),
(780,209,'Is κῆδος derived from κήδω, or is the verb derived from the noun?','LSJ parenthetically links κῆδος with κήδω, whose active and middle-passive senses span distress and care, but the located entry does not fully argue one diachronic direction.','proposed','The lexical relationship is clear; exact derivational direction is not.','open',NULL),
(781,209,'Does κῆδος securely continue *ḱh₂d-es-?','It is a published comparison, not an uncontested fact. Multiple sources place the Greek noun in the family, while the semantic and membership cautions require proposed confidence.','proposed','Formal comparison is published, but the deeper family remains disputed.','open',NULL),
(782,209,'Does the Ionic-Attic η beside Doric ā prove the whole Indo-European route?','No. The dialectal vowel pattern supports Greek-internal history, but it does not by itself establish the proposed root, suffix, or non-Greek cognates.','established','LSJ supplies the dialect forms; comparative sources supply the deeper hypothesis separately.','resolved','Sound history and family membership remain separate claim layers.'),
(783,209,'Are Celtic cais or cás unquestionably cognate with κῆδος?','No. They occur in a published wider comparison, but semantic breadth and branch membership remain debated.','proposed','Koch supports the larger family while Liberman questions semantic skeleton-key arguments.','open',NULL),
(784,209,'Are Germanic hate words unquestionably cognate with κῆδος?','No. The formal comparison is prominent enough to traverse, but the sources explicitly qualify the semantic path and do not recover one shared original sense.','proposed','Merriam-Webster, Koch, UT, and Liberman preserve different levels of confidence.','open',NULL),
(785,209,'Can care, grief, mourning, affinity, and hate be ordered as one proven semantic chain?','No. The Greek senses are attested, but their internal chronology and the cross-branch prehistoric sequence are not recoverable as one linear ladder.','established','The lexical record supplies coexistence and contexts, not a complete innovation chronology.','open',NULL),
(786,209,'Is /kɛ̂ː.dos/ recorded ancient pronunciation?','No. It is a normalized scholarly approximation based on the written form and historical phonology, not audio from an Ancient Greek speaker.','established','No reviewed source supplies recorded ancient speech.','resolved','The pronunciation field states its evidentiary status.'),
(787,209,'Does Iliad 1.445 prove the first use of κῆδος?','No. It proves a line in a modern digital critical text and an ancient textual tradition, not the earliest surviving physical token or the word''s invention.','established','Text composition, edition, manuscript transmission, and lexical origin are distinct evidence layers.','resolved','The attestation is a corpus record rather than a directly inspected primary object.'),
(788,209,'Can κῆδος be pinned to one exact birthplace?','No. The word spans dialects, genres, authors, and a long manuscript tradition. No reviewed evidence identifies one innovation point.','established','The sources support a distributed Greek record rather than one location.','resolved','No map coordinate is fabricated.'),
(789,209,'Is one older ancestor securely known beyond *ḱeh₂d-?','No. The displayed root is already a disputed reconstruction and no still-deeper form clears the review boundary.','established','The disagreement at the proposed family requires an explicit stopping point.','resolved','The route ends at UNKNOWN rather than manufacturing deeper certainty.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(770,604,'Headword κῆδος, Doric κᾶδος, and complete citations','supports','Publishes the attested noun and its textual record.'),
(770,605,'Iliad 1.445','context','Independently exposes one exact line in a digital critical text.'),
(771,604,'Numbered senses I.1–3 and II','supports','Separates the semantic zones.'),
(772,604,'Care, anxiety, grief, mourning, object-of-care, and affinity senses','supports','Defines the Greek lexical record without a hate headword sense.'),
(772,600,'Greek κῆδος row under the wider etymon','context','Shows that hate enters at the comparative classification layer.'),
(773,436,'Semantic relations are far from transparent','supports','Explicitly rejects an easy semantic origin story.'),
(773,439,'Discussion of care, love, and hatred as semantic skeleton keys','context','Warns against turning broad comparison into one original meaning.'),
(774,604,'Sense II and its cited authors','supports','Documents connection by marriage.'),
(775,604,'Sense II note: some wrongly explain Iliad 13.464 and related passages','supports','Preserves the lexicographic correction.'),
(776,604,'Sense I.2b, funeral rites and mourning','supports','Supplies the full funerary citation set.'),
(777,604,'Sense I.3, Agamemnon 699, play on sense II','supports','States the object-of-care and marriage wordplay.'),
(778,436,'Noun etymology: Greek kêdos','supports','Uses the Latin-script source form.'),
(778,604,'Headword κῆδος and key kh=dos','supports','Publishes the Greek-script headword and its encoded dictionary key.'),
(779,604,'Intro text: Doric κᾶδος; Pythian 4.112','supports','Treats κᾶδος as the dialect variant.'),
(780,604,'Intro text: κῆδος … (κήδω)','supports','Publishes the noun-verb relationship without a full directional argument.'),
(780,606,'κήδω active and middle-passive senses; κήδομαι redirect','context','Documents distress and care across the related verb paradigm.'),
(781,436,'Noun etymology: perhaps *ḱh₂d-es-','supports','Publishes a qualified comparison.'),
(781,439,'Challenge to the wider non-Germanic comparison','challenges','Prevents an uncontested parent claim.'),
(782,604,'κῆδος and Doric κᾶδος','supports','Supplies the Greek dialectal vowel evidence.'),
(783,473,'p. 101, Celtic and Greek members in the wider family','supports','Publishes the affirmative comparison.'),
(783,439,'Semantic-family critique','challenges','Questions whether broad meanings prove one family.'),
(784,436,'Greek kêdos and Germanic forms in the proposed comparison','supports','Publishes the cross-branch hypothesis.'),
(784,439,'Qualified conclusion on Germanic and non-Germanic evidence','challenges','Preserves the dispute.'),
(785,604,'Complete Greek sense and citation inventory','supports','Documents semantic plurality but not a single ordered chain.'),
(785,436,'Semantic relations are far from transparent','context','Blocks a simple prehistoric sequence.'),
(786,604,'Written headword, dialect form, and morphology','supports','Provides written-language evidence only.'),
(787,605,'Digital critical edition of Iliad 1.445','supports','Verifies the edition line without proving first use or an original manuscript token.'),
(788,604,'Citations across Homer, lyric, tragedy, history, philosophy, and inscriptions','supports','Shows a distributed textual tradition.'),
(789,439,'Qualified conclusion on the deeper comparison','supports','Supports stopping at the current evidence boundary.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(209,209,2107,'κῆδος','Care, grief, funerals, and in-laws occupy one Greek noun—but hate does not secretly mean care.','LSJ''s κῆδος entry moves through care and concern, anxiety and grief, troubles, mourning and funeral rites, an object of care, and connection by marriage. Homeric κήδεʼ can be many-troubled woes; Aeschylus can make Helen an object of care while playing on marriage affinity. Comparative sources then place the noun beside Celtic and Germanic hatred words under *ḱh₂d-es- and *ḱeh₂d-. The reveal is not a mystical reversal in which hate “really” means care. Merriam-Webster calls the semantic relations far from transparent, Liberman challenges the wider family''s unity, and the Greek evidence itself resists a single linear story.','A',100,'The Greek headword, Doric variant, morphology, numbered senses, exact literary locators, one independently read digital critical-edition line, source transliteration, and published comparative routes are recoverable. No ancient manuscript object, exact first use, recorded pronunciation, birthplace, complete internal semantic chronology, or uncontested Indo-European family is claimed.');
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
(209,604,'Complete κῆδος entry, senses, and citations','supports','Supplies the Greek semantic network, dialect variant, tragic wordplay, and marriage sense.'),
(209,605,'Iliad 1.445','supports','Provides the exact Homeric many-troubled-woes line in a digital critical text.'),
(209,436,'Noun etymology and semantic-opacity note','supports','Publishes and qualifies the Greek-to-hate-family comparison.'),
(209,473,'p. 101, wider HATRED comparison','context','Supplies a broader affirmative comparative route.'),
(209,600,'Greek κῆδος row under k̑ād-','context','Places the noun in UT''s cross-branch reflex table.'),
(209,439,'Critique of the wider semantic family','challenges','Blocks the comparison from becoming a slogan about hate''s true meaning.'),
(209,606,'κήδω and κήδομαι senses','context','Exposes the related verb''s distress-versus-care voice pattern.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(165,209,176,'CARE, MOURNING, IN-LAWS—AND A DISPUTED HATE ROOT','Follow κῆδος from Homeric troubles and funeral rites through marriage affinity, then cross the proposed *ḱh₂d-es- bridge into English hate. Every step retains its confidence: the Greek senses are attested, the cross-branch family is proposed, and no arrow claims that one modern emotion is the other word''s hidden essence.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1332 AND 1335
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.status='boundary' THEN 'boundary' WHEN f.id=1332 THEN 'established' ELSE 'probable' END,CASE WHEN f.status='boundary' THEN 'Dossier-specific endpoint beyond the disputed care-grief-hatred comparison.' WHEN f.id=1332 THEN 'Attested Greek noun promoted with a complete LSJ semantic inventory and one independently read digital critical-edition line.' ELSE 'Canonicalized by language, normalized form, sense, and evidence status; comparative uncertainty remains on the edges.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1332 AND 1335;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1124 AND 1126;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_form_link ON parent_form_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_form_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1124 AND 1126;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1124 AND 1126;
--> statement-breakpoint

-- Keep source transliteration and Doric surface history traversable without
-- manufacturing two more lexical dossiers.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:10:kedos-latin:attested:sense:editorial-transliteration',10,'kêdos','kêdos','editorial-transliteration','kêdos',NULL,'attested','modern scholarly Latin-script representation of Ancient Greek',-800,600,'source transliteration of κῆδος, not a separate Ancient Greek lexeme','Merriam-Webster prints kêdos in Latin script. This graph node records source identity and is explicitly resolved against duplicate dossier promotion.','reviewed'),
('node:10:kados:attested:sense:care-grief-mourning-affinity-doric-variant',10,'κᾶδος','kados','care-grief-mourning-affinity-doric-variant','kâdos',NULL,'attested','Doric Ancient Greek variant',-800,600,'Doric form of κῆδος in the care, grief, mourning, and affinity family','LSJ labels κᾶδος Doric and cites Pindar''s death-context use. It is a dialect form, not a separate root claim.','reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:kedos-latin:attested:sense:editorial-transliteration'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:kedos:attested:sense:care-grief-mourning-affinity-neuter-noun'),'editorial_transliteration','Latin-script kêdos represents Greek κῆδος through a modern scholarly transliteration convention; no historical sound event or borrowing is claimed.','The complete Greek semantic range is unchanged because the Latin letters encode the same lexeme rather than a new sense.','Merriam-Webster Editors · Scaife ATLAS editors','established','The source representations are explicit; typography varies across transliteration systems.','Modern editorial representation of an Ancient Greek headword.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:kados:attested:sense:care-grief-mourning-affinity-doric-variant'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:kedos:attested:sense:care-grief-mourning-affinity-neuter-noun'),'dialectal_variant','Doric long ā corresponds to the η of the Ionic-Attic headword representation; LSJ prints the forms together rather than as separate lexemes.','Care, grief, mourning, and related senses remain within one lexical family across the dialectal spelling and vowel difference.','Liddell · Scott · Jones','established','The dialect identity is explicit; no single date or place of the sound development is claimed.','Ancient Greek dialect history.','reviewed');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT edge.id FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id WHERE child.canonical_key='node:10:kedos-latin:attested:sense:editorial-transliteration' AND edge.relation_type='editorial_transliteration'),436,'Noun etymology: Greek kêdos','supports','Publishes the Latin-script source form.'),
((SELECT edge.id FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id WHERE child.canonical_key='node:10:kedos-latin:attested:sense:editorial-transliteration' AND edge.relation_type='editorial_transliteration'),604,'Headword κῆδος and dictionary key kh=dos','supports','Publishes the Greek-script headword and an explicit encoded key.'),
((SELECT edge.id FROM lexeme_edges edge JOIN lexeme_nodes child ON child.id=edge.child_node_id WHERE child.canonical_key='node:10:kados:attested:sense:care-grief-mourning-affinity-doric-variant' AND edge.relation_type='dialectal_variant'),604,'Intro text: Doric κᾶδος; Pythian 4.112','supports','Labels and cites the Doric variant.');
--> statement-breakpoint

INSERT INTO `candidate_resolutions` (`id`,`form`,`normalized_form`,`language`,`disposition`,`canonical_node_id`,`explanation`,`editorial_status`)
SELECT 3,'kêdos','kêdos','Ancient Greek','represented_variant',node.id,
  'Merriam-Webster''s Latin-script kêdos is a scholarly representation of the Ancient Greek headword κῆδος, not a second Ancient Greek lexeme. The reviewed graph preserves that source form as an editorial-transliteration node linked to the Greek-script noun, while the complete lexical dossier remains κῆδος.',
  'reviewed'
FROM lexeme_nodes node
WHERE node.canonical_key='node:10:kedos-latin:attested:sense:editorial-transliteration';
--> statement-breakpoint

INSERT INTO `candidate_resolution_sources` (`resolution_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(3,436,'Noun etymology: Greek kêdos','supports','Supplies the exact Latin-script candidate form in the comparative etymology.'),
(3,604,'Headword κῆδος; normalized headword κῆδος; key kh=dos','supports','Supplies the corresponding Greek-script lexeme and encoded dictionary identity.');
