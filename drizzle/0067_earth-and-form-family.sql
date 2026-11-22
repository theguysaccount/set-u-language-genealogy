-- Five connected dossiers expose two deep constellations without collapsing
-- sibling formations into direct descent. HUMBLE and HUMUS meet HUMAN at the
-- earth root, BRIDEGROOM reaches the same root through a distinct Germanic
-- earthling formation, DOUGH and FIGURE meet LADY at the form-and-build root.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(82,'new-latin','New Latin','Indo-European','Italic',0,1400,1900,'Learned Latin used in early-modern and modern scholarship; represented separately from ancient and medieval Latin.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(154,'humble','humble','humble','/ˈhʌmbəl/','adjective and verb','Modest, low in rank, or made low; borrowed through French from Latin humilis, an earth-and-ground formation.','Humble is historically an earth word: Latin humilis, low, is formed from humus, ground. That history is a spatial metaphor, not a moral command encoded in soil.','reviewed'),
(155,'humus','humus','humus','/ˈhjuːməs/','noun','The dark organic portion of soil; an English scientific borrowing through New Latin from Latin humus, earth or ground.','Humus and human are deep cousins, not parent and child. Latin humus and homō follow separate formations back to the reconstructed earth root *dhghem-.','reviewed'),
(156,'bridegroom','bridegroom','bridegroom','/ˈbraɪdˌɡruːm/','noun','A man about to be or recently married; remodeled from bridegome after the older man-word gome became opaque.','The groom in bridegroom is a historical replacement. Old English brȳdguma contained guma, man—an earthling-family word that meets human only at the deep root *dhghem-.','reviewed'),
(157,'dough','dough','dough','/doʊ/','noun','A kneadable flour mixture; inherited from Old English dāg through a Germanic formation on the Indo-European form-and-build root.','Dough and lady are deep lexical cousins. The dough noun and lady’s kneading component follow different Germanic formations back to *dheigh-, to form or build.','reviewed'),
(158,'figure','figure','figure','/ˈfɪɡjər/','noun and verb','A shape, representation, symbol, number, person, or act of calculation; borrowed through French from Latin figūra, form or shape.','Figure and dough meet at a root meaning form or build. A geometric figure and a kneaded mass preserve different outcomes of the same reconstructed shaping family.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(371,'mw-humble','Humble — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/humble',NULL,'historical_dictionary'),
(372,'mw-humus','Humus — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/humus',NULL,'historical_dictionary'),
(373,'ahd-humus','Humus — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=humus',NULL,'historical_dictionary'),
(374,'mw-bridegroom','Bridegroom — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/bridegroom',NULL,'historical_dictionary'),
(375,'ahd-bridegroom','Bridegroom — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=bridegroom',NULL,'historical_dictionary'),
(376,'mw-dough','Dough — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/dough',NULL,'historical_dictionary'),
(377,'ahd-dough','Dough — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=dough',NULL,'historical_dictionary'),
(378,'mw-figure','Figure — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/figure',NULL,'historical_dictionary'),
(379,'ahd-figure','Figure — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=figure',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(959,154,1,1,'humble','humble','modest-low','humble','/ˈhʌmbəl/','attested','13th century–today',1200,NULL,'modest; low in rank; unpretentious','Modern moral and social senses continue the older vertical and status field.'),
(960,154,2,2,'humble','humble','low-modest-adjective','humble',NULL,'attested','Middle English',1150,1500,'low; modest; submissive','The English borrowing retains the French spelling.'),
(961,154,12,3,'humble','humble','low-modest-adjective','humble',NULL,'attested','Anglo-French',1066,1500,'low; humble','The medieval French channel reported by Merriam-Webster.'),
(962,154,9,4,'humilis','humilis','low-ground-adjective','humilis',NULL,'attested','Latin antiquity',-700,700,'low; humble','A Latin adjective formed from humus, earth or ground.'),
(963,154,9,5,'humus','humus','earth-soil','humus',NULL,'attested','Latin antiquity',-700,700,'earth; soil','The exact canonical sibling node already linked to the human family.'),
(964,154,6,6,'*dhghem-','dhghem','earth-root','*dhghem-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'earth','The reviewed earth root shared with the human and bridegroom branches.'),
(965,154,7,7,'UNKNOWN','unknown','humble-deep-boundary',NULL,NULL,'boundary','before the reviewed *dhghem- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed earth root.','The spatial and status history does not license an essence claim about humility.'),

(966,155,1,1,'humus','humus','organic-soil-material','humus','/ˈhjuːməs/','attested','1796–today',1796,NULL,'partly decomposed organic matter in soil','The English scientific sense specializes the older earth word.'),
(967,155,82,2,'humus','humus','soil-earth-term','humus',NULL,'attested','New Latin',1400,1900,'soil; earth; organic soil material','Merriam-Webster identifies New Latin as the immediate source.'),
(968,155,9,3,'humus','humus','earth-soil','humus',NULL,'attested','Latin antiquity',-700,700,'earth; soil','The Latin node is a sibling of homō under the reconstructed root, not its parent.'),
(969,155,6,4,'*dhghem-','dhghem','earth-root','*dhghem-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'earth','A reconstruction linking several independent daughter-language formations.'),
(970,155,7,5,'UNKNOWN','unknown','humus-deep-boundary',NULL,NULL,'boundary','before the reviewed *dhghem- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed earth root.','English humus and human do not form a direct parent-child chain.'),

(971,156,1,1,'bridegroom','bridegroom','marrying-man','bridegroom','/ˈbraɪdˌɡruːm/','attested','1525–today',1525,NULL,'a man about to be or recently married','The modern form preserves the folk-etymological replacement groom.'),
(972,156,2,2,'brydegrome','brydegrome','folk-remodeled-marrying-man','brydegrome',NULL,'attested','Middle English Scots',1450,1600,'bridegroom','The remodelled Scots form replaces opaque gome with familiar groom.'),
(973,156,2,3,'bridegome','bridegome','bride-man','bridegome',NULL,'attested','Middle English',1150,1500,'bridegroom','The continuation before groom replaced the inherited man element.'),
(974,156,3,4,'brȳdguma','brydguma','bride-man-compound','brȳdguma',NULL,'attested','Old English',450,1150,'bridegroom; bride-man','The two compound components are modeled independently.'),
(975,156,3,5,'guma','guma','man-human-noun','guma',NULL,'attested','Old English',450,1150,'man; human being','The second component of brȳdguma, later obscured and replaced by groom.'),
(976,156,5,6,'*gumōn-','gumon','man-germanic','*gumōn-',NULL,'reconstructed','Proto-Germanic',-500,200,'man; human being','The Germanic formation behind Old English guma.'),
(977,156,6,7,'*(dh)ghm̥-on-','dhghm-on','earthling-zero-grade-formation','*(dh)ghm̥-on-',NULL,'reconstructed','Proto-Indo-European suffixed zero-grade formation',-4500,-2500,'earthling; human being','American Heritage distinguishes this Germanic formation from the o-grade formation behind Latin homō.'),
(978,156,6,8,'*dhghem-','dhghem','earth-root','*dhghem-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'earth','The common root where bridegroom and human finally meet.'),
(979,156,7,9,'UNKNOWN','unknown','bridegroom-deep-boundary',NULL,NULL,'boundary','before the reviewed *dhghem- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed earth root.','The shared root does not make bridegroom a descendant of English human.'),

(980,157,1,1,'dough','dough','kneadable-flour-mass','dough','/doʊ/','attested','before the 12th century–today',1000,NULL,'a kneadable flour-and-liquid mixture','The culinary noun is inherited; money is a later slang sense.'),
(981,157,2,2,'dogh','dogh','dough-mass','dogh',NULL,'attested','Middle English',1150,1500,'dough','One of the Middle English spellings published by Merriam-Webster.'),
(982,157,3,3,'dāg','dag','dough-mass','dāg',NULL,'attested','Old English',450,1150,'dough','The inherited Old English noun.'),
(983,157,5,4,'*daigaz','daigaz','dough-germanic','*daigaz',NULL,'reconstructed','Proto-Germanic',-500,200,'dough','The reconstructed Germanic noun behind the Old English and cognate forms.'),
(984,157,6,5,'*dhoigh-o-','dhoigh-o','dough-o-grade-formation','*dhoigh-o-',NULL,'reconstructed','Proto-Indo-European suffixed o-grade formation',-4500,-2500,'formed or kneaded mass','The root appendix identifies this specific formation behind Germanic *daigaz.'),
(985,157,6,6,'*dheigh-','dheigh','form-build-root','*dheigh-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'to form; build','The exact root node already reached by lady’s kneading component.'),
(986,157,6,7,'*dheig̑h-','dheigh-oldest','form-build-oldest-root','*dheig̑h-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'to form; build','The oldest printed form in the reviewed root appendix.'),
(987,157,7,8,'UNKNOWN','unknown','dough-deep-boundary',NULL,NULL,'boundary','before the reviewed *dheig̑h- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed form-and-build root.','The root relationship does not make lady a descendant of dough or dough a descendant of lady.'),

(988,158,1,1,'figure','figure','shape-symbol-number','figure','/ˈfɪɡjər/','attested','13th century–today',1200,NULL,'shape; representation; symbol; number; person','A wide modern semantic network grows from form and representation.'),
(989,158,2,2,'figure','figure','shape-form-symbol','figure',NULL,'attested','Middle English',1150,1500,'shape; form; likeness; symbol; written character','Merriam-Webster publishes the medieval English range.'),
(990,158,12,3,'figure','figure','shape-form-noun','figure',NULL,'attested','Anglo-French',1066,1500,'shape; form; likeness','The immediate French channel reported by Merriam-Webster.'),
(991,158,9,4,'figūra','figura','shape-form-result','figūra',NULL,'attested','Latin antiquity',-700,700,'shape; form; likeness; figure of speech','The Latin noun at the center of the borrowed family.'),
(992,158,6,5,'*dhigh-ūrā-','dhigh-ura','form-shape-result','*dhigh-ūrā-',NULL,'reconstructed','Proto-Indo-European suffixed zero-grade formation',-4500,-2500,'result of forming or kneading','American Heritage publishes this formation behind Latin figūra.'),
(993,158,6,6,'*dheigh-','dheigh','form-build-root','*dheigh-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'to form; build','The common root shared with the dough and lady branches.'),
(994,158,6,7,'*dheig̑h-','dheigh-oldest','form-build-oldest-root','*dheig̑h-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'to form; build','The oldest printed form in the reviewed root appendix.'),
(995,158,7,8,'UNKNOWN','unknown','figure-deep-boundary',NULL,NULL,'boundary','before the reviewed *dheig̑h- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed form-and-build root.','A separate source analysis through Latin fingere remains a cited graph branch.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(806,154,959,960,'continuation','Middle English humble continues into modern humble with spelling stability and later pronunciation standardization.','Low rank, modesty, and lack of pretension remain in the semantic field.','Merriam-Webster Editors','established',NULL,'Recorded in English in the thirteenth century.','reviewed'),
(807,154,960,961,'borrowing','Middle English adopts Anglo-French humble with English phonological adaptation.','The low and modest senses are retained.','Merriam-Webster Editors','established','The source identifies the donor language but does not supply one exact borrowing event.',NULL,'reviewed'),
(808,154,961,962,'inheritance','Anglo-French humble continues Latin humilis through Romance reshaping; no single intermediate phonetic derivation is asserted.','Physical and social lowness develop into modest or deferential senses.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(809,154,962,963,'derivation','Latin humilis is formed from humus, earth or ground, with adjectival morphology and vowel adjustment.','Near-the-ground or low develops into low in rank and humble.','Merriam-Webster Editors · Calvert Watkins and American Heritage Dictionary Editors','established','The etymology establishes the formation, not one datable instant of metaphorical change.',NULL,'reviewed'),
(810,154,963,964,'inheritance','Latin humus reflects the Indo-European earth root *dhghem-.','Earth and soil preserve the root meaning.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Humus is a sibling branch, not an ancestor of homō or human.','reviewed'),
(811,154,964,965,'knowledge_boundary','No older form is promoted beyond reviewed *dhghem-.','The humble trail ends where the published comparative earth root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

(812,155,966,967,'borrowing','English adopts New Latin humus without material spelling change and with English pronunciation.','The broad earth word specializes as the organic portion of soil.','Merriam-Webster Editors','established',NULL,'First known English use is reported in 1796.','reviewed'),
(813,155,967,968,'learned_continuation','New Latin humus reuses the ancient Latin form humus in scientific vocabulary.','Earth and soil are narrowed toward a technical soil constituent.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(814,155,968,969,'inheritance','Latin humus reflects the Indo-European earth root *dhghem-.','Earth and soil preserve the root meaning.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Humus is a sibling branch, not an ancestor of homō or human.','reviewed'),
(815,155,969,970,'knowledge_boundary','No older form is promoted beyond reviewed *dhghem-.','The humus trail ends where the published comparative earth root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

(816,156,971,972,'continuation','The Scots Middle English spelling brydegrome stabilizes as modern bridegroom.','The marrying-man meaning continues after the compound is reinterpreted.','Merriam-Webster Editors','established',NULL,'The modern form is recorded from 1525.','reviewed'),
(817,156,972,973,'folk_etymological_remodeling','Opaque Middle English bridegome is remodeled as brydegrome under the influence of the familiar word groom.','The bride-man meaning remains while speakers reinterpret the second element.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'The alteration is visible in Scots Middle English before the modern form.','reviewed'),
(818,156,973,974,'continuation','Middle English bridegome continues Old English brȳdguma with regular reduction of the final inflection.','Bride-man remains the compound meaning.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(819,156,974,975,'compound_component','Old English brȳdguma contains guma, man, as its second lexical component beside brȳd, bride.','The marrying man is named through the inherited human-being noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old English.','reviewed'),
(820,156,975,976,'inheritance','Old English guma reflects reconstructed Proto-Germanic *gumōn-.','The man or human-being sense continues across Germanic.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(821,156,976,977,'inheritance','Proto-Germanic *gumōn- reflects the suffixed zero-grade formation *(dh)ghm̥-on-.','The Germanic man noun is analyzed as an earthling formation.','Calvert Watkins and American Heritage Dictionary Editors','established','This zero-grade formation is distinct from the o-grade formation behind Latin homō.',NULL,'reviewed'),
(822,156,977,978,'derivation','The earthling formation *(dh)ghm̥-on- is built on *dhghem-, earth.','An earth-root formation supplies a human-being noun.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(823,156,978,979,'knowledge_boundary','No older form is promoted beyond reviewed *dhghem-.','The bridegroom trail ends where the published comparative earth root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

(824,157,980,981,'continuation','Middle English dogh develops into modern dough with later spelling stabilization while the inherited vowel history produces /oʊ/.','The kneadable flour mass remains the lexical center; money is a later slang extension.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded before the twelfth century in English.','reviewed'),
(825,157,981,982,'continuation','Middle English dogh continues Old English dāg through the recorded English sound and spelling history.','The dough meaning is retained.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(826,157,982,983,'inheritance','Old English dāg reflects reconstructed Proto-Germanic *daigaz.','The kneadable mass meaning continues in the Germanic noun family.','Merriam-Webster Editors · Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(827,157,983,984,'inheritance','Proto-Germanic *daigaz reflects the suffixed o-grade formation *dhoigh-o-.','The Germanic dough noun is a formed or kneaded mass.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(828,157,984,985,'morphological_derivation','The suffixed o-grade *dhoigh-o- is built on *dheigh-, to form or build.','A concrete kneaded mass specializes the general forming action.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(829,157,985,986,'root_extension','The root appendix identifies *dheig̑h- as the oldest shape behind centum *dheigh-.','The form-and-build field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(830,157,986,987,'knowledge_boundary','No older form is promoted beyond reviewed *dheig̑h-.','The dough trail ends where the published comparative root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

(831,158,988,989,'continuation','Middle English figure continues into modern figure with spelling stability and later English pronunciation development.','Shape, likeness, symbol, number, person, and calculation senses expand from representation.','Merriam-Webster Editors','established',NULL,'Recorded in English in the thirteenth century.','reviewed'),
(832,158,989,990,'borrowing','Middle English borrows Anglo-French figure with English phonological adaptation.','The shape, form, likeness, and symbol field is retained.','Merriam-Webster Editors','established','American Heritage labels the French source Old French; that alternate channel remains visible in the graph.',NULL,'reviewed'),
(833,158,990,991,'borrowing','Anglo-French figure continues Latin figūra through Romance transmission.','Shape, outward appearance, likeness, and represented form remain central.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(834,158,991,992,'morphological_derivation','Latin figūra reflects the suffixed zero-grade formation *dhigh-ūrā-.','A result of forming or kneading becomes shape, form, and representation.','Calvert Watkins and American Heritage Dictionary Editors','established','Merriam-Webster instead analyzes figūra through the stem of fingere; that compatible but differently segmented route remains a cited graph branch.',NULL,'reviewed'),
(835,158,992,993,'morphological_derivation','The suffixed formation *dhigh-ūrā- is built on *dheigh-, to form or build.','The result-of-forming noun continues the root’s shaping field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(836,158,993,994,'root_extension','The root appendix identifies *dheig̑h- as the oldest shape behind centum *dheigh-.','The form-and-build field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(837,158,994,995,'knowledge_boundary','No older form is promoted beyond reviewed *dheig̑h-.','The figure trail ends where the published comparative root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(806,371,'Etymology and First Known Use','supports','Publishes the Middle English form and thirteenth-century horizon.'),
(807,371,'Etymology: Middle English from Anglo-French','supports','Publishes the borrowing channel.'),
(808,371,'Etymology: Anglo-French from Latin humilis','supports','Publishes the Romance-to-Latin step.'),
(809,371,'Etymology: Latin humilis from humus, earth','supports','Publishes the ground-to-low formation.'),
(809,337,'dhghem-: humble and humus from the Latin earth branch','context','Places the adjective inside the earth-root family.'),
(810,337,'dhghem-: Latin humus from suffixed o-grade *(dh)ghom-o-','supports','Publishes the Latin earth reflex under the root.'),
(811,337,'dhghem- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(812,372,'Etymology and First Known Use: New Latin; 1796','supports','Publishes the immediate source and first-use horizon.'),
(812,373,'Humus 1 definition and Latin etymology','context','Confirms the soil sense and Latin family.'),
(813,372,'Etymology: New Latin from Latin humus, earth','supports','Publishes the learned reuse of the Latin form.'),
(814,337,'dhghem-: Latin humus from suffixed o-grade *(dh)ghom-o-','supports','Publishes the Latin earth reflex under the root.'),
(815,337,'dhghem- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(816,374,'Etymology and First Known Use: brydegrome; 1525','supports','Publishes the remodelled Scots form and dated English record.'),
(817,374,'Etymology: folk etymology from Middle English bridegome','supports','Publishes groom as a later replacement.'),
(817,375,'Alteration influenced by groom','context','Independently confirms the remodeling.'),
(818,374,'Etymology: bridegome from Old English brȳdguma','supports','Publishes the recorded English continuity.'),
(818,375,'Etymology: Middle English bridegome from Old English brȳdguma','context','Independently confirms the step.'),
(819,374,'Etymology: brȳd plus guma, man','supports','Publishes both Old English components.'),
(819,375,'Etymology: brȳd, bride plus guma, man','context','Independently confirms the compound.'),
(820,337,'dhghem-: Old English guma from Germanic *gumōn-','supports','Publishes the Germanic formation.'),
(821,337,'dhghem-: *gumōn- from suffixed zero-grade *(dh)ghm̥-on-','supports','Publishes the zero-grade earthling formation.'),
(822,337,'dhghem- root heading and earthling formation','supports','Analyzes the human-being formation on the earth root.'),
(823,337,'dhghem- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(824,376,'Etymology and First Known Use','supports','Publishes the Middle English forms and pre-twelfth-century horizon.'),
(824,377,'Middle English dogh from Old English dāg','context','Independently confirms the inherited English history.'),
(825,376,'Etymology: Middle English dogh from Old English dāg','supports','Publishes the recorded English continuity.'),
(825,377,'Etymology: Middle English dogh from Old English dāg','context','Independently confirms the step.'),
(826,376,'Etymology: Old English dāg from Germanic *daiga-','supports','Publishes the Germanic reconstruction.'),
(826,353,'dheigh-: Old English dāg from Germanic *daigaz','context','Places the noun in the comparative family.'),
(827,353,'dheigh-: suffixed o-grade *dhoigh-o- to Germanic *daigaz','supports','Publishes the specific noun formation.'),
(828,353,'dheigh- root heading and dough formation','supports','Analyzes the noun formation under the root.'),
(829,353,'dheigh- heading and oldest form *dheig̑h-','supports','Publishes the oldest printed root shape.'),
(830,353,'dheigh- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(831,378,'Etymology and First Known Use, noun','supports','Publishes the Middle English range and thirteenth-century horizon.'),
(832,378,'Etymology: Middle English from Anglo-French','supports','Publishes the immediate borrowing channel.'),
(833,378,'Etymology: Anglo-French from Latin figūra','supports','Publishes the French-to-Latin step.'),
(834,353,'dheigh-: suffixed zero-grade *dhigh-ūrā- to Latin figūra','supports','Publishes the root formation behind the Latin noun.'),
(834,379,'Etymology: Old French figure from Latin figūra; see dheigh-','context','Independently places the word in the same deep family.'),
(835,353,'dheigh- root heading and figūra formation','supports','Analyzes the formation under the root.'),
(836,353,'dheigh- heading and oldest form *dheig̑h-','supports','Publishes the oldest printed root shape.'),
(837,353,'dheigh- entry endpoint','supports','Defines the deepest reviewed comparative horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(190,959,371,'13th century',NULL,'Merriam-Webster first-known-use report for humble','First Known Use, adjective',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying medieval object was directly inspected.'),
(191,966,372,'1796',1796,'Merriam-Webster first-known-use report for humus','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported year; no underlying printed scientific object was directly inspected.'),
(192,971,374,'1525',1525,'Merriam-Webster first-known-use report for bridegroom','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported year; no underlying early-modern object was directly inspected.'),
(193,980,376,'before the 12th century',NULL,'Merriam-Webster first-known-use report for dough','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported horizon; no underlying Old English manuscript object was directly inspected.'),
(194,988,378,'13th century',NULL,'Merriam-Webster first-known-use report for figure','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying medieval object was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(505,154,'human','English / Latin route','deep cousin through a separate earthling formation under *dhghem-',337),
(506,154,'humus','English / Latin route','earth-family relative and the direct Latin base beneath humilis',371),
(507,154,'humility','English / Latin route','derivative in the Latin humilis family',337),
(508,154,'humiliate','English / Latin route','later verb in the ground-and-low family',337),
(509,155,'human','English / Latin route','deep cousin through Latin homō, not a descendant of humus',337),
(510,155,'humble','English / Latin route','relative through Latin humilis from humus',337),
(511,155,'exhume','English / Latin route','prefixed descendant of the Latin earth family',337),
(512,155,'chthonic','English / Greek route','Greek earth-family relative under *dhghem-',337),
(513,156,'human','English / Latin route','deep cousin through a distinct earthling formation under *dhghem-',337),
(514,156,'bride','English / Germanic route','continuation of the first Old English compound component',374),
(515,156,'homage','English / Latin route','Latin homō-family descendant under the same earth root',337),
(516,156,'hombre','Spanish / Latin route','Romance descendant of Latin homō under the same earth root',337),
(517,157,'lady','English / Germanic route','deep cousin through a separate Germanic kneading formation under *dheigh-',353),
(518,157,'dairy','English / Germanic route','Old English bread-kneader relative in the same root family',353),
(519,157,'teiglach','English / Old High German route','Germanic dough-family relative under *dhoigh-o-',353),
(520,157,'paradise','English / Iranian route','distant wall-and-building relative under *dheigh-',353),
(521,158,'dough','English / Germanic route','deep cousin through a separate o-grade formation under *dheigh-',353),
(522,158,'lady','English / Germanic route','deep cousin through the kneading component under *dheigh-',353),
(523,158,'fiction','English / Latin route','Latin fingere-family relative under a nasalized root formation',353),
(524,158,'feign','English / Latin route','Latin fingere-family relative in the shaping field',353);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(577,154,1,'Indo-European linguistic horizon','*dhghem- earth root','A reconstructed earth family supplies both humus and distinct human-being formations.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The reconstruction receives no unique homeland or first year.'),
(578,154,2,'Latin-speaking world','humus to humilis','Ground and earth supply a Latin adjective of lowness.',NULL,NULL,'broad',NULL,NULL,'unresolved','The sources establish the formation but not one coinage place or year.'),
(579,154,3,'Medieval England and Anglo-French contact','humble in the 13th century','The French adjective enters Middle English.',52000000,-1500000,'regional',1200,1299,'century','The numeric bounds encode only Merriam-Webster’s thirteenth-century first-use horizon.'),
(580,154,4,'Global English','modern humble','Physical, social, and moral lowness senses continue in global English.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),

(581,155,1,'Indo-European linguistic horizon','*dhghem- earth root','A reconstructed earth root precedes the Latin soil noun.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The reconstruction receives no unique homeland or first year.'),
(582,155,2,'Latin-speaking world','Latin humus','The attested noun means earth or soil.',NULL,NULL,'broad',NULL,NULL,'unresolved','The lexical source does not identify one origin point or first token.'),
(583,155,3,'English-language scientific record','humus in 1796','The New Latin term enters English scientific vocabulary.',NULL,NULL,'broad',1796,1796,'exact','The date is a source-reported English first-use horizon, not a known coinage event or address.'),
(584,155,4,'Global scientific English','modern humus','The word names the organic portion of soil in modern technical and ordinary use.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),

(585,156,1,'Indo-European linguistic horizon','*dhghem- and the zero-grade earthling formation','The Germanic man noun develops through a formation distinct from the Latin homō branch.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The reconstruction receives no unique homeland or first year.'),
(586,156,2,'Early English linguistic horizon','Old English brȳdguma','Bride and guma, man, form the inherited compound.',NULL,NULL,'broad',NULL,NULL,'unresolved','The compound is secure but no single coinage place or year is asserted.'),
(587,156,3,'Scots and English record','brydegrome in 1525','The opaque gome element is remodeled under familiar groom.',56000000,-4000000,'regional',1525,1525,'exact','The point summarizes the Scots linguistic label; the year is Merriam-Webster’s source-reported first use of the remodelled headword.'),
(588,156,4,'Global English','modern bridegroom','The folk-remodelled marriage term continues globally.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),

(589,157,1,'Indo-European linguistic horizon','*dheigh- form-and-build root','A suffixed o-grade formation supplies the Germanic dough noun.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The reconstruction receives no unique homeland or first year.'),
(590,157,2,'Germanic-speaking Europe','*daigaz and its descendants','The reconstructed noun is reflected in several attested Germanic dough words.',NULL,NULL,'broad',NULL,NULL,'unresolved','Comparative distribution is not reduced to one coordinate or date.'),
(591,157,3,'Anglo-Saxon England','dāg before the 12th century','The inherited noun is recorded in Old English and continues through Middle English.',52500000,-1500000,'regional',NULL,1099,'before','The endpoint encodes only Merriam-Webster’s source-reported pre-twelfth-century horizon.'),
(592,157,4,'Global English','modern dough','The culinary noun and later slang sense travel with English.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),

(593,158,1,'Indo-European linguistic horizon','*dheigh- and the result-of-forming branch','A reconstructed formation supplies Latin figūra.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The reconstruction receives no unique homeland or first year.'),
(594,158,2,'Latin-speaking world','Latin figūra','Shape, form, likeness, and figurative representation are established in the Latin family.',NULL,NULL,'broad',NULL,NULL,'unresolved','The sources do not identify one coinage place or first token.'),
(595,158,3,'Medieval France and England','figure in the 13th century','The Romance form enters Middle English through a French channel.',52000000,-1500000,'regional',1200,1299,'century','The numeric bounds encode only Merriam-Webster’s thirteenth-century first-use horizon.'),
(596,158,4,'Global English','modern figure','Shape, number, representation, person, and calculation senses circulate globally.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(577,337,'dhghem- root and Latin earth reflexes','supports','Publishes the reconstructed earth family.'),
(578,371,'Etymology: humilis from humus, earth','supports','Publishes the Latin ground-to-low formation.'),
(579,371,'Etymology and First Known Use: Anglo-French; 13th century','supports','Publishes the medieval channel and temporal horizon.'),
(580,371,'Modern headword and senses','supports','Documents continuation in modern English.'),
(581,337,'dhghem- root and Latin humus','supports','Publishes the reconstructed earth family.'),
(582,373,'Humus 1: Latin, soil','supports','Publishes the Latin form and earth sense.'),
(583,372,'Etymology and First Known Use: New Latin; 1796','supports','Publishes the learned channel and exact English first-use year.'),
(584,372,'Modern geology definition','supports','Documents the modern soil sense.'),
(585,337,'dhghem-: zero-grade earthling formation to Germanic *gumōn-','supports','Publishes the reconstructed stages.'),
(586,374,'Etymology: Old English brȳdguma from brȳd plus guma','supports','Publishes the early English compound.'),
(587,374,'Middle English Scots brydegrome; First Known Use 1525','supports','Publishes the remodelled form, linguistic label, and exact year.'),
(588,374,'Modern headword and definition','supports','Documents continuation as the modern marriage noun.'),
(589,353,'dheigh- root and suffixed o-grade dough formation','supports','Publishes the reconstructed stages.'),
(590,376,'Germanic *daiga- and listed Germanic cognates','supports','Publishes the comparative Germanic distribution.'),
(591,376,'Old English dāg; First Known Use before the 12th century','supports','Publishes the early English form and open-ended temporal bound.'),
(592,377,'Modern culinary and slang senses','supports','Documents the modern semantic range.'),
(593,353,'dheigh- root and *dhigh-ūrā- formation','supports','Publishes the reconstructed stages.'),
(594,378,'Latin figūra senses and formation','supports','Publishes the Latin stage.'),
(595,378,'Anglo-French channel; First Known Use in the 13th century','supports','Publishes the medieval route and century-level bound.'),
(596,379,'Modern headword and sense inventory','supports','Documents the broad modern semantic range.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(290,154,'Is humble historically connected with the ground?','Yes. Merriam-Webster derives Latin humilis from humus, earth, and the comparative root appendix places the family under *dhghem-.','established','The headword history and root analysis converge on the ground-and-earth formation.','resolved','The graph encodes each stage while keeping the modern ethical senses separate from ancestry.'),
(291,154,'Does the etymology prove one exact moment when low became morally humble?','No. The lexical formation is secure, but the sources do not date a single physical-to-social-to-moral transition.','probable','Historical senses preserve overlapping physical, status, and character meanings rather than one instantaneous switch.','open','The dossier records the semantic field and withholds a fabricated event date.'),
(292,155,'Are humus, soil, and hummus, chickpea paste, the same word?','No. American Heritage separates Latin humus, soil, from the Arabic and possibly Aramaic food word hummus.','established','The dictionary presents distinct numbered entries and unrelated language histories.','resolved','This dossier promotes only the Latin soil noun.'),
(293,155,'Does human descend from humus?','No. Latin humus and homō are separate formations under *dhghem-; English human descends through hūmānus and homō.','established','The comparative root appendix lists humus and homō on distinct branches.','resolved','The canonical graph joins the dossiers at the reconstructed root, never through a false direct edge.'),
(294,156,'Was the second element of bridegroom always groom?','No. The inherited form had guma or gome, man; groom replaced the opaque element by folk etymology.','established','Merriam-Webster and American Heritage independently publish the alteration.','resolved','The path preserves both the inherited compound and the later remodeling.'),
(295,156,'Are bridegroom and human directly descended from one another?','No. Germanic *gumōn- and Latin homō reflect different earthling formations that meet only at *dhghem-.','established','The root appendix distinguishes the zero-grade Germanic and o-grade Latin formations.','resolved','Separate nodes prevent a catchy earthling connection from becoming false direct ancestry.'),
(296,157,'Does dough descend from lady or lady from dough?','Neither. The dough noun and lady’s kneading component follow separate Germanic formations that meet at *dheigh-.','established','The root appendix lists Germanic *daigaz and *dīg- on distinct branches under the same form-and-build root.','resolved','The graph reuses the root while preserving both formations.'),
(297,157,'Is the asterisked dough trail a chain of written words?','No. *daigaz, *dhoigh-o-, *dheigh-, and *dheig̑h- are comparative reconstructions, not manuscript spellings.','established','The root appendix explicitly prints reconstructed forms and the atlas marks each with an asterisk.','resolved','The dossier crosses visibly from attested dāg into reconstructed nodes.'),
(298,158,'Did figure begin as a word only for numbers?','No. Its Latin and medieval fields include shape, form, likeness, symbol, and representation; numerical use is one branch of a wider history.','established','Merriam-Webster and American Heritage publish broad form-and-representation inventories.','resolved','The dossier does not project one modern sense backward as the whole word.'),
(299,158,'Does figure descend from dough because both mean something shaped?','No. Latin figūra and Germanic dough forms are separate root formations under *dheigh-.','established','The root appendix lists distinct zero-grade and o-grade derivations.','resolved','The surprising connection is cognate depth, not borrowing or direct descent.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(290,371,'Etymology: Latin humilis from humus earth','supports','Publishes the immediate ground formation.'),
(290,337,'dhghem-: humble and humus branch','context','Places the formation under the reconstructed root.'),
(291,371,'Definitions and etymology','supports','Shows the coexisting low-rank, modest, and deferential field without dating one pivot.'),
(292,373,'Humus 1 versus humus 2 / hummus entries','supports','Separates the Latin soil noun from the Semitic food word.'),
(293,337,'dhghem-: separate humus and homō formations','supports','Publishes the sibling relationship.'),
(294,374,'Folk etymology from bridegome; brȳd plus guma','supports','Publishes the historical replacement.'),
(294,375,'Alteration influenced by groom','context','Independently confirms the remodeling.'),
(295,337,'dhghem- items 1 and 5','supports','Distinguishes the Germanic zero-grade and Latin o-grade earthling formations.'),
(296,353,'dheigh- items 2 and 3','supports','Distinguishes lady’s *dīg- branch from dough’s *daigaz branch.'),
(297,353,'Asterisked reconstructed forms in the dheigh- entry','supports','Marks the comparative forms as reconstructions.'),
(298,378,'Etymology and historical sense inventory','supports','Publishes the broad medieval and Latin field.'),
(298,379,'Modern sense inventory and Latin figūra','context','Confirms that numerical meaning is one member of a much wider family.'),
(299,353,'dheigh- items 3 and 4','supports','Publishes separate dough and figure formations under one root.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(154,154,2065,'humble','Humble is an earth word.','Latin humilis, low or humble, is formed from humus, earth or ground, inside the *dhghem- family.','A',100,'The reveal describes historical metaphor and morphology, not a timeless ethical command.'),
(155,155,2066,'humus','Human does not descend from humus.','Latin humus and homō are sibling formations under *dhghem-; the English words meet only at reconstructed depth.','A',100,'The shared root is explicit while the false direct edge is absent.'),
(156,156,2067,'bridegroom','The groom in bridegroom is a replacement.','Old English brȳdguma contained guma, man; familiar groom replaced opaque gome by folk etymology.','A',100,'The deeper earthling connection is shown through a distinct Germanic formation, not collapsed into human.'),
(157,157,2068,'dough','Dough and lady are deep cousins.','Germanic *daigaz, dough, and *dīg-, the kneading branch inside lady, meet at *dheigh-, to form or build.','A',100,'The reveal preserves separate root formations and does not claim direct descent.'),
(158,158,2069,'figure','A figure and dough share a shaping root.','Latin figūra and the Germanic dough noun follow different formations back to *dheigh-, to form or build.','A',100,'The connection is comparative ancestry, not a story that a number was once bread.');
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
(154,371,'Etymology: humilis from humus, earth','supports','Publishes the direct ground formation.'),
(154,337,'dhghem- humble branch','context','Places the formation under the earth root.'),
(155,337,'dhghem- separate humus and homō formations','supports','Publishes the sibling relationship and rejects direct descent by topology.'),
(155,372,'New Latin from Latin humus, earth','context','Supplies the English humus route.'),
(156,374,'Folk etymology from bridegome; guma, man','supports','Publishes the replacement and inherited component.'),
(156,337,'dhghem- Germanic earthling formation','context','Publishes the deep comparative branch.'),
(157,353,'dheigh-: lady and dough on distinct Germanic formations','supports','Publishes both branches under one root.'),
(157,376,'Germanic *daiga- and knead or shape base','context','Adds the detailed dough formation.'),
(158,353,'dheigh-: figure and dough formations','supports','Publishes both branches under one root.'),
(158,378,'Latin figūra, shape or form, from the fingere family','context','Supplies the Latin shaping semantics.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(109,154,144,'HUMBLE MEETS HUMAN AT EARTH','Follow humble through humus to *dhghem-, then move sideways through a different earthling formation toward human.',100,'A','reviewed'),
(110,155,144,'SOIL AND HUMAN ARE SIBLINGS, NOT STEPS','Humus and human meet at *dhghem- through separate Latin branches; neither English word descends from the other.',100,'A','reviewed'),
(111,156,155,'THE LOST MAN INSIDE BRIDEGROOM','Strip away the folk replacement groom to find guma, man, then descend until its earthling branch meets Latin humus at *dhghem-.',100,'A','reviewed'),
(112,157,147,'DOUGH REACHES THE KNEADER INSIDE LADY','Dough’s Germanic noun branch and lady’s kneading component stay separate until both reach *dheigh-, form or build.',100,'A','reviewed'),
(113,158,157,'A FIGURE AND A MASS OF DOUGH','Latin figūra and Germanic dough follow different shape-making formations into the same deep form-and-build root.',100,'A','reviewed');
--> statement-breakpoint

-- Canonicalize every dossier spine. Shared Latin and reconstructed forms reuse
-- the exact nodes already present in HUMAN and LADY, each dossier retains its
-- own evidence boundary.
WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 959 AND 995
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
WHERE f.id BETWEEN 959 AND 995;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 806 AND 837;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 806 AND 837;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 806 AND 837;
--> statement-breakpoint

-- Model BRIDE as the second Old English compound component and preserve the
-- Old-French and fingere analyses of FIGURE as graph branches. None replaces
-- the reviewed linear spine or creates a false direct edge between cousins.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:3:bryd:attested:sense:bride-component',3,'brȳd','bryd','bride-component','brȳd',NULL,'attested','Old English',450,1150,'bride','The first component of brȳdguma; its deeper ancestry is not supplied by the reviewed bridegroom sources.','reviewed'),
('boundary:graph:bridegroom-bride-0067',7,'UNKNOWN','unknown','bride-component-boundary',NULL,NULL,'boundary','before the reviewed Old English brȳd component',NULL,NULL,'No deeper parent is promoted for the bride component in this dossier.','The branch is preserved so a complete compound never becomes a one-parent fiction.','reviewed'),
('node:8:figure:attested:sense:shape-form-noun',8,'figure','figure','shape-form-noun','figure',NULL,'attested','Old French',842,1400,'shape; form; likeness','American Heritage labels the French intermediary Old French rather than Anglo-French.','reviewed'),
('node:9:fingere:attested:sense:shape-mold-verb',9,'fingere','fingere','shape-mold-verb','fingere',NULL,'attested','Latin antiquity',-700,700,'to mold; fashion; shape; make a likeness','Merriam-Webster analyzes figūra from the fig- stem of this verb; American Heritage prints a direct suffixed root formation.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:brydguma:attested:sense:bride-man-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:bryd:attested:sense:bride-component'),'compound_component','Old English brȳdguma contains brȳd, bride, as its first lexical component beside guma, man.','The bride component supplies the marriage relation in the compound.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:bryd:attested:sense:bride-component'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:bridegroom-bride-0067'),'knowledge_boundary','No deeper parent is promoted for Old English brȳd from the reviewed bridegroom sources.','The bride component reaches an explicit evidence boundary.','SET-U editorial boundary · Merriam-Webster Editors · American Heritage Dictionary Editors','boundary','The complete compound is established even though this component’s deeper history is outside the present reviewed evidence.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:figure:attested:sense:shape-form-noun'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:figura:attested:sense:shape-form-result'),'competing_borrowing','American Heritage labels the French intermediary Old French, while Merriam-Webster labels it Anglo-French.','The shape and form noun passes from Latin through medieval French into English.','American Heritage Dictionary Editors','proposed','The graph preserves both donor labels rather than silently selecting one medieval French variety.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:figura:attested:sense:shape-form-result'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:fingere:attested:sense:shape-mold-verb'),'competing_derivation','Merriam-Webster derives figūra from fig-, a variant stem of fingere, plus -ūra.','A result or product of shaping becomes form, likeness, and representation.','Merriam-Webster Editors','proposed','American Heritage instead prints the noun as a direct suffixed root formation; both analyses remain visible.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:fingere:attested:sense:shape-mold-verb'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:dheigh:reconstructed:sense:form-build-root'),'inheritance','Latin fingere reflects a nasalized zero-grade formation under *dheigh-.','Molding and shaping continue the form-and-build field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:brydguma:attested:sense:bride-man-compound' AND p.canonical_key='node:3:bryd:attested:sense:bride-component' AND e.relation_type='compound_component'),374,'Etymology: brȳd plus guma, man','supports','Publishes the bride component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:brydguma:attested:sense:bride-man-compound' AND p.canonical_key='node:3:bryd:attested:sense:bride-component' AND e.relation_type='compound_component'),375,'Etymology: brȳd, bride plus guma, man','context','Independently confirms both components.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:bryd:attested:sense:bride-component' AND p.canonical_key='boundary:graph:bridegroom-bride-0067' AND e.relation_type='knowledge_boundary'),374,'Bridegroom etymology stops after identifying brȳd','supports','Defines the present evidence limit for this component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:8:figure:attested:sense:shape-form-noun' AND p.canonical_key='node:9:figura:attested:sense:shape-form-result' AND e.relation_type='competing_borrowing'),379,'Etymology: Middle English from Old French from Latin figūra','supports','Publishes the alternate medieval French label.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:figura:attested:sense:shape-form-result' AND p.canonical_key='node:9:fingere:attested:sense:shape-mold-verb' AND e.relation_type='competing_derivation'),378,'Etymology: figūra from fig-, stem of fingere, plus -ūra','supports','Publishes the verb-stem analysis.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:fingere:attested:sense:shape-mold-verb' AND p.canonical_key='node:6:dheigh:reconstructed:sense:form-build-root' AND e.relation_type='inheritance'),353,'dheigh-: nasalized zero-grade formation to Latin fingere','supports','Publishes the Latin verb under the root.');
