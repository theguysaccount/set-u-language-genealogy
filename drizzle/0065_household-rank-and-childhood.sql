-- Six household, rank, and childhood dossiers expose compounds, borrowing,
-- semantic drift, and real evidential limits. LORD and LADY meet at loaf but
-- diverge in their second components, HUSBAND is a Norse householder before a
-- spouse, WIFE reconnects with WOMAN, GIRL stops at an unknown origin while
-- retaining a tentative garment comparison, and BOY makes its ox-hide route
-- visible only as a proposed analysis.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(81,'tocharian-b','Tocharian B','Indo-European','Tocharian',0,500,1000,'An attested Tocharian language of the Tarim Basin; used here only for the probable kwīpe comparison reported beside Old English wīf.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(146,'lord','lord','lord','/lɔːrd/','noun','A ruler, master, or titled man; historically the worn-down descendant of an Old English compound joining loaf with guardian.','Lord began as hlāford, the loaf-guardian. Its elevated title grew from household provision and keeping, not from an originally divine word.','reviewed'),
(147,'lady','lady','lady','/ˈleɪdi/','noun','A woman of rank or a polite term for a woman; historically from an Old English household compound joining loaf with a kneading element.','Lady is not the feminine form of lord. Hlāfdige shares the loaf component with hlāford but has a different second element connected with kneading.','reviewed'),
(148,'husband','husband','husband','/ˈhʌzbənd/','noun','A married man in relation to a spouse; borrowed from a Norse compound whose earlier center was householder or master of a house.','Husband was borrowed into English from a Norse householder word. The spouse sense grew from household status; the word is not house plus band.','reviewed'),
(149,'wife','wife','wife','/waɪf/','noun','A married woman in relation to a spouse; inherited from Old English wīf, whose historical field included woman more generally.','Wife did not always mean only a female spouse. Old English wīf also meant woman, and its deeper ancestry remains uncertain.','reviewed'),
(150,'girl','girl','girl','/ɡɜːrl/','noun','A female child or young woman; in Middle English the word could denote a child or young person of either sex.','Girl was not originally restricted to girls. Middle English girle could denote a child of either sex, and the word’s deeper origin is unknown.','reviewed'),
(151,'boy','boy','boy','/bɔɪ/','noun','A male child or young man; Middle English also used the word for a male servant or churl, and its origin remains disputed.','Boy reaches a servant before it securely reaches a child. A proposed trail through fetters to ox hide and ox is ingenious—but not established ancestry.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(348,'mw-lord','Lord — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/lord',NULL,'historical_dictionary'),
(349,'ahd-lord','Lord — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=lord',NULL,'historical_dictionary'),
(350,'ahd-ie-wer3','Indo-European Root: wer-3','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(351,'mw-lady','Lady — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/lady',NULL,'historical_dictionary'),
(352,'ahd-lady','Lady — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=lady',NULL,'historical_dictionary'),
(353,'ahd-ie-dheigh','Indo-European Root: dheigh-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(354,'mw-husband','Husband — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/husband',NULL,'historical_dictionary'),
(355,'ahd-husband','Husband — American Heritage Dictionary and Word History','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=husband',NULL,'historical_dictionary'),
(356,'ahd-ie-bheue','Indo-European Root: bheue- and bheu-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(357,'mw-girl','Girl — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/girl',NULL,'historical_dictionary'),
(358,'ahd-girl','Girl — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=girl',NULL,'historical_dictionary'),
(359,'med-girle','girle — Middle English Dictionary','Middle English Dictionary Editors',2026,'University of Michigan','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED18637',NULL,'historical_dictionary'),
(360,'mw-boy','Boy — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/boy',NULL,'historical_dictionary'),
(361,'oxford-boy','Boy — Oxford Advanced Learner''s Dictionary, Word Origin','Oxford University Press Editors',2026,'Oxford University Press','https://www.oxfordlearnersdictionaries.com/definition/english/boy_1',NULL,'historical_dictionary'),
(362,'ahd-boy','Boy — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=boy',NULL,'historical_dictionary'),
(363,'ahd-ie-gwou','Indo-European Root: gwou-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(914,146,1,1,'lord','lord','rank-master-title','lord','/lɔːrd/','attested','before the 12th century–today',1000,NULL,'ruler; master; titled man','The modern short form conceals the Old English household compound.'),
(915,146,2,2,'loverd','loverd','lord-title','loverd',NULL,'attested','Middle English',1150,1500,'lord; master','A medieval continuation of Old English hlāford.'),
(916,146,3,3,'hlāford','hlaford','loaf-guardian-compound','hlāford',NULL,'attested','Old English',450,1150,'lord; master; loaf guardian','A compound whose loaf and guardian components are both modeled in the canonical graph.'),
(917,146,3,4,'hlāf','hlaf','bread-loaf','hlāf',NULL,'attested','Old English',450,1150,'loaf; bread','The first component shared with the historical formation of lady.'),
(918,146,7,5,'UNKNOWN','unknown','lord-main-boundary',NULL,NULL,'boundary','before the reviewed Old English hlāf component',NULL,NULL,'No securely promoted ancestor is currently known beyond the loaf branch in this dossier spine.','The guardian component continues separately to a reconstructed root.'),

(919,147,1,1,'lady','lady','woman-rank-title','lady','/ˈleɪdi/','attested','before the 12th century–today',1000,NULL,'woman of rank; polite term for a woman','The modern form conceals the household compound.'),
(920,147,2,2,'lady','lady','lady-title','lady',NULL,'attested','Middle English',1150,1500,'lady; mistress of a household','A medieval continuation of Old English hlǣfdige.'),
(921,147,3,3,'hlǣfdige','hlaefdige','loaf-kneader-compound','hlǣfdige',NULL,'attested','Old English',450,1150,'lady; mistress of a household; loaf kneader','A compound whose loaf and kneading components are modeled separately.'),
(922,147,3,4,'hlāf','hlaf','bread-loaf','hlāf',NULL,'attested','Old English',450,1150,'loaf; bread','The same historical loaf component exposed in lord.'),
(923,147,7,5,'UNKNOWN','unknown','lady-main-boundary',NULL,NULL,'boundary','before the reviewed Old English hlāf component',NULL,NULL,'No securely promoted ancestor is currently known beyond the loaf branch in this dossier spine.','The kneading component continues separately to a reconstructed root.'),

(924,148,1,1,'husband','husband','male-spouse','husband','/ˈhʌzbənd/','attested','13th century–today',1200,NULL,'married man in relation to a spouse','The spouse sense grew from a borrowed householder word.'),
(925,148,2,2,'husbonde','husbonde','husband-householder','husbonde',NULL,'attested','Middle English',1150,1500,'husband; householder','A medieval continuation of the Norse-derived Old English form.'),
(926,148,3,3,'hūsbōnda','husbonda','householder-master','hūsbōnda',NULL,'attested','Old English',450,1150,'master of a house; householder','A borrowing from Old Norse rather than a native Old English kinship formation.'),
(927,148,66,4,'hūsbōndi','husbondi','house-householder-compound','hūsbōndi',NULL,'attested','Old Norse',700,1500,'householder; master of a house','A compound of hūs, house, and bōndi or būandi, householder.'),
(928,148,66,5,'bōndi','bondi','dwelling-householder-participle','bōndi',NULL,'attested','Old Norse',700,1500,'householder; dweller','A participial noun connected with Old Norse būa, to dwell.'),
(929,148,66,6,'būa','bua','dwell-inhabit-verb','būa',NULL,'attested','Old Norse',700,1500,'to dwell; inhabit; prepare','The verb underlying the householder element.'),
(930,148,5,7,'*bōwan','bowan','dwell-germanic-verb','*bōwan',NULL,'reconstructed','Proto-Germanic',-500,200,'to dwell; live','The Germanic verb behind Old Norse būa.'),
(931,148,6,8,'*bhōw-','bhow','live-lengthened-o-grade','*bhōw-',NULL,'reconstructed','Proto-Indo-European lengthened o-grade',-4500,-2500,'to live; dwell','A published lengthened-grade formation behind the Germanic verb.'),
(932,148,6,9,'*bheuə-','bheue','be-exist-grow-root','*bheuə-',NULL,'reconstructed','Proto-Indo-European root',-4500,-2500,'to be; exist; grow','The comparative root family includes dwelling and becoming formations.'),
(933,148,6,10,'*bheuhₓ-','bheuhx','be-exist-oldest-root','*bheuhₓ-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'to be; exist; grow','The oldest form printed for the root family in the reviewed appendix.'),
(934,148,7,11,'UNKNOWN','unknown','husband-deep-boundary',NULL,NULL,'boundary','before the reviewed *bheuhₓ- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed be and grow root.','The root gloss is deep ancestry, not a definition of modern marriage.'),

(935,149,1,1,'wife','wife','female-spouse','wife','/waɪf/','attested','before the 12th century–today',1000,NULL,'married woman in relation to a spouse','The spouse sense is narrower than the older woman-or-wife field.'),
(936,149,2,2,'wif','wif','woman-wife-noun','wif',NULL,'attested','Middle English',1150,1500,'woman; wife','A medieval continuation of Old English wīf.'),
(937,149,3,3,'wīf','wif','woman-wife-noun','wīf',NULL,'attested','Old English',450,1150,'woman; wife','The same canonical Old English node used as the first component of woman.'),
(938,149,7,4,'UNKNOWN','unknown','wife-deep-boundary',NULL,NULL,'boundary','before the reviewed Old English wīf horizon',NULL,NULL,'No securely promoted direct ancestor is currently known beyond Old English wīf.','A probable Tocharian B comparison remains a side branch, not a direct parent.'),

(939,150,1,1,'girl','girl','female-child-young-woman','girl','/ɡɜːrl/','attested','14th century–today',1300,NULL,'female child; young woman','Modern sex-specific usage follows a broader medieval child word.'),
(940,150,2,2,'girle','girle','child-young-person','girle',NULL,'attested','Middle English',1150,1500,'child or young person of either sex; girl','The Middle English Dictionary records both broad child and female-child senses.'),
(941,150,7,3,'UNKNOWN','unknown','girl-deep-boundary',NULL,NULL,'boundary','before the reviewed Middle English girle horizon',NULL,NULL,'No securely established origin is currently known before Middle English girle.','A tentative reconstructed Old English and garment comparison remains graph-only.'),

(942,151,1,1,'boy','boy','male-child-young-man','boy','/bɔɪ/','attested','14th century–today',1300,NULL,'male child; young man','The modern child sense follows medieval servant and churl uses.'),
(943,151,2,2,'boi','boi','male-servant-churl-young-male','boi',NULL,'attested','Middle English',1150,1500,'male servant; churl; young male','The recorded Middle English form has an origin that major references still label uncertain.'),
(944,151,8,3,'embuié','embuie','fettered-person','embuié',NULL,'attested','Old French',842,1400,'person in fetters','American Heritage proposes this as a possible source of Middle English boi.'),
(945,151,8,4,'embuier','embuier','fetter-verb','embuier',NULL,'attested','Old French',842,1400,'to fetter','The proposed source verb behind embuié.'),
(946,151,8,5,'buie','buie','fetter-shackle','buie',NULL,'attested','Old French',842,1400,'fetter; shackle','A French restraint noun traced to Latin bōia.'),
(947,151,9,6,'bōia','boia','criminal-restraint-collar','bōia',NULL,'attested','Latin',-700,700,'collar or yoke used to restrain criminals','The Latin restraint term in the proposed deep route.'),
(948,151,10,7,'βοεία (δορά)','boeia-dora','ox-hide','boeía (dorá)',NULL,'attested','Ancient Greek',-1400,600,'ox hide','The ox-hide expression proposed behind Latin bōia.'),
(949,151,10,8,'βοῦς','bous','ox-cow','boûs',NULL,'attested','Ancient Greek',-1400,600,'ox; bull; cow','The Greek animal noun behind the ox-hide analysis.'),
(950,151,6,9,'*gʷou-','gwou','ox-cow-root','*gʷou-',NULL,'reconstructed','Proto-Indo-European root',-4500,-2500,'ox; bull; cow','The published reconstructed root behind Greek boûs.'),
(951,151,7,10,'UNKNOWN','unknown','boy-proposed-route-boundary',NULL,NULL,'boundary','before the reviewed *gʷou- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed cattle root on this proposed route.','The existence of a deep trail does not upgrade the disputed first jump from boy to fetters.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(769,146,914,915,'continuation','Middle English loverd or lord reduces to modern lord, with loss of the unstressed medial vowel and stabilized spelling.','The master and title senses continue while the compound becomes opaque.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded before the twelfth century in English.','reviewed'),
(770,146,915,916,'continuation','Middle English loverd continues Old English hlāford with phonological reduction.','A household master term develops through medieval rank and title uses.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(771,146,916,917,'compound_component','Old English hlāford contains hlāf, loaf or bread, as its first lexical component.','The household title encodes provision through the loaf component beside guardian.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old English.','reviewed'),
(772,146,917,918,'knowledge_boundary','No deeper parent is promoted for Old English hlāf in this reviewed dossier.','The loaf branch stops while the separately modeled guardian branch continues.','SET-U editorial boundary','boundary','The headword sources establish the compound without supplying a reviewed deeper loaf ancestry.',NULL,'reviewed'),

(773,147,919,920,'continuation','Middle English lady continues into modern lady with stabilized spelling and pronunciation.','Household rank develops into aristocratic and polite forms of address.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded before the twelfth century in English.','reviewed'),
(774,147,920,921,'continuation','Middle English lady continues Old English hlǣfdige with contraction and loss of the compound’s transparency.','Mistress-of-household and rank senses continue while literal morphology recedes.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(775,147,921,922,'compound_component','Old English hlǣfdige contains hlāf, loaf or bread, as its first lexical component.','The household designation shares provision imagery with lord but not the same second component.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old English.','reviewed'),
(776,147,922,923,'knowledge_boundary','No deeper parent is promoted for Old English hlāf in this reviewed dossier.','The loaf branch stops while the separately modeled kneading branch continues.','SET-U editorial boundary','boundary','The headword sources establish the compound without supplying a reviewed deeper loaf ancestry.',NULL,'reviewed'),

(777,148,924,925,'continuation','Middle English husbonde develops into modern husband with reduction of the final vowel and stabilized spelling.','Householder and master senses narrow toward the married-man relation.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded in the thirteenth century.','reviewed'),
(778,148,925,926,'continuation','Middle English husbonde continues Old English hūsbōnda.','The borrowed householder noun develops the spouse sense in English.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(779,148,926,927,'borrowing','Old English hūsbōnda was borrowed from Old Norse hūsbōndi.','A Norse householder and master term enters English before becoming the basic spouse term.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'The donor and recipient are historical Germanic languages.','reviewed'),
(780,148,927,928,'compound_component','Old Norse hūsbōndi contains bōndi or būandi, householder, as its second component.','The householder element supplies the resident or master role.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old Norse.','reviewed'),
(781,148,928,929,'derivation','Old Norse bōndi or būandi is a participial noun from būa.','A dwelling action supplies the householder noun.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(782,148,929,930,'inheritance','Old Norse būa reflects Proto-Germanic *bōwan.','Dwelling and inhabiting continue across the inherited verb.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(783,148,930,931,'inheritance','Proto-Germanic *bōwan reflects the lengthened o-grade *bhōw-.','The dwell and live formation continues at reconstructed depth.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(784,148,931,932,'morphological_derivation','The lengthened-grade *bhōw- is analyzed under *bheuə-, to be, exist, or grow.','Living and dwelling belong to the wider being and becoming field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(785,148,932,933,'root_extension','The root entry identifies *bheuhₓ- as the oldest shape behind *bheuə- or *bheu-.','The being, existing, and growing field remains at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(786,148,933,934,'knowledge_boundary','No older form is promoted beyond reviewed *bheuhₓ-.','The trail ends where the published comparative root ends.','SET-U editorial boundary','boundary','The root is reconstructed, not an attested first word.',NULL,'reviewed'),

(787,149,935,936,'continuation','Middle English wif develops into modern wife with the Great Vowel Shift and final silent-e spelling.','The older woman-or-wife field narrows toward the spouse sense.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded before the twelfth century in English.','reviewed'),
(788,149,936,937,'continuation','Middle English wif continues Old English wīf.','Woman and wife senses continue through medieval English.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(789,149,937,938,'knowledge_boundary','No direct parent is promoted beyond Old English wīf.','The trail stops while a probable Tocharian comparison remains explicitly non-parental.','SET-U editorial boundary','boundary','The reviewed sources do not supply a secure direct ancestor.',NULL,'reviewed'),

(790,150,939,940,'continuation','Middle English girle develops into modern girl with stabilized spelling and pronunciation.','A child or young person of either sex narrows to a female child or young woman.','Merriam-Webster Editors · American Heritage Dictionary Editors · Middle English Dictionary Editors','established',NULL,'Recorded in the fourteenth century.','reviewed'),
(791,150,940,941,'knowledge_boundary','No established parent is promoted beyond Middle English girle.','The secure trail ends before an uncertain Old English and garment comparison.','SET-U editorial boundary','boundary','American Heritage labels the origin unknown; the Middle English Dictionary marks its proposals with question marks.',NULL,'reviewed'),

(792,151,942,943,'continuation','Middle English boi develops into modern boy with stabilized spelling.','Male servant, churl, and young-male senses settle around the modern male-child center.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded in the fourteenth century.','reviewed'),
(793,151,943,944,'competing_borrowing','Middle English boi has been compared with Old French embuié, a person in fetters.','The servant or churl field is proposed to connect with a restrained person.','American Heritage Dictionary Editors','proposed','Oxford labels the origin unknown, and American Heritage introduces this path only as possible.',NULL,'reviewed'),
(794,151,944,945,'derivation','Old French embuié is the participial person-form of embuier, to fetter.','A person in fetters is named from the restraining action.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(795,151,945,946,'derivation','Old French embuier is formed on buie, a fetter or shackle.','The verb continues the restraint meaning of the noun.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(796,151,946,947,'borrowing','Old French buie continues Latin bōia.','The restraint noun crosses from Latin into French.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(797,151,947,948,'borrowing','Latin bōia is traced to Greek boeía dorá, ox hide.','An ox-hide material expression is proposed behind a restraining collar or yoke.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(798,151,948,949,'derivation','Greek boeía, bovine or of an ox, is formed from boûs, ox or cow.','The material name specializes the cattle word as ox hide.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(799,151,949,950,'inheritance','Greek boûs reflects Proto-Indo-European *gʷou-.','The ox, bull, and cow field continues at reconstructed depth.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(800,151,950,951,'knowledge_boundary','No older form is promoted beyond reviewed *gʷou-.','The proposed trail ends where the published cattle root ends.','SET-U editorial boundary','boundary','The final boundary does not resolve the disputed connection back to boy.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(769,348,'Etymology and First Known Use','supports','Publishes Middle English loverd or lord and the pre-twelfth-century horizon.'),
(769,349,'Headword etymology','context','Independently publishes the Old and Middle English development.'),
(770,348,'Etymology: Middle English loverd from Old English hlāford','supports','Publishes the recorded English continuity.'),
(770,349,'Etymology: Middle English loverd from Old English hlāford','context','Independently confirms the step.'),
(771,348,'Etymology: hlāf loaf plus weard keeper','supports','Publishes the two compound components.'),
(771,349,'Etymology: hlāf loaf plus weard guardian','context','Independently confirms the morphology.'),
(772,348,'Headword etymology stops at the Old English components','supports','Defines the present evidence limit for the loaf branch.'),

(773,351,'Etymology and First Known Use','supports','Publishes the recorded English history and pre-twelfth-century horizon.'),
(773,352,'Headword etymology','context','Independently publishes the Old and Middle English development.'),
(774,351,'Etymology: Middle English from Old English hlǣfdige','supports','Publishes the contraction path.'),
(774,352,'Etymology: Middle English lady from Old English hlǣfdige','context','Independently confirms the step.'),
(775,351,'Etymology: hlāf bread plus -dige, akin to dǣge kneader','supports','Publishes the first component and distinguishes the second.'),
(775,352,'Etymology: hlǣf loaf plus dige kneader','context','Independently confirms the morphology.'),
(776,351,'Headword etymology stops at the Old English components','supports','Defines the present evidence limit for the loaf branch.'),

(777,354,'Etymology and First Known Use','supports','Publishes Middle English husbonde and the thirteenth-century horizon.'),
(777,355,'Word History and etymology','context','Documents the development from householder to spouse.'),
(778,354,'Etymology: Middle English husbonde from Old English hūsbonda','supports','Publishes the English continuity.'),
(778,355,'Etymology: Middle English huseband from Old English hūsbōnda','context','Independently confirms the step.'),
(779,354,'Etymology: Old English hūsbonda from Old Norse hūsbōndi','supports','Publishes the borrowing.'),
(779,355,'Word History: borrowed from Norse, not a native basic kinship term','context','Explains why the borrowing matters.'),
(780,354,'Etymology: hūs house plus bōndi householder','supports','Publishes the compound.'),
(780,355,'Etymology: hūs plus bōndi or būandi','context','Independently confirms the two components.'),
(781,355,'Etymology: bōndi or būandi, participle of būa','supports','Publishes the derivation.'),
(782,356,'bheue-: Germanic *bōwan and Old Norse būa','supports','Publishes the Germanic reconstruction and Norse reflex.'),
(783,356,'bheue-: lengthened o-grade *bhōw- to Germanic *bōwan','supports','Publishes the reconstructed formation.'),
(784,356,'bheue- root and lengthened-grade derivatives','supports','Analyzes the formation under the be and grow root.'),
(785,356,'bheue- heading and oldest form','supports','Publishes the oldest printed root shape.'),
(786,356,'bheue- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(787,345,'Etymology and First Known Use','supports','Publishes Middle English wif, Old English wīf, and the pre-twelfth-century horizon.'),
(787,346,'Headword etymology','context','Independently confirms the inherited English route.'),
(788,345,'Etymology: Middle English wif from Old English wīf','supports','Publishes the recorded English continuity.'),
(788,346,'Etymology endpoint at Old English wīf','context','Independently preserves the secure horizon.'),
(789,345,'Old English wīf, probably akin to Tocharian B kwīpe','supports','Justifies a boundary before the non-parental comparison.'),
(789,346,'Etymology stops at Old English wīf','context','Confirms that no secure direct ancestor is supplied.'),

(790,357,'Word History: Middle English gurle or girle, young person of either sex','supports','Publishes the broad medieval sense and fourteenth-century horizon.'),
(790,359,'Senses: child of either sex; girl or young woman','context','Documents the Middle English semantic range directly.'),
(791,358,'Etymology: Middle English girle, origin unknown','supports','Defines the secure evidence boundary.'),
(791,359,'Etymology marks proposed Old English and garment comparisons with question marks','context','Preserves the tentative alternatives without promotion.'),

(792,360,'Etymology and First Known Use','supports','Publishes the Middle English horizon and fourteenth-century record.'),
(792,362,'Etymology: Middle English boi; male servant, churl, young male','context','Documents the medieval form and semantic field.'),
(793,362,'Etymology: possibly Old French embuié','supports','Publishes the route only as a possibility.'),
(793,361,'Word Origin: Middle English male servant; origin unknown','challenges','Prevents the proposed French route from being presented as settled.'),
(794,362,'Etymology: embuié from embuier, to fetter','supports','Publishes the French derivation.'),
(795,362,'Etymology: embuier from buie, fetter or shackle','supports','Publishes the French formation.'),
(796,362,'Etymology: Old French buie from Latin bōia','supports','Publishes the borrowing.'),
(797,362,'Etymology: Latin bōia from Greek boeía dorá, ox hide','supports','Publishes the proposed deep material path.'),
(798,362,'Etymology: Greek boeía from bous, ox','supports','Publishes the Greek derivation.'),
(799,363,'gwou-: Greek bous from the ox and cow root','supports','Publishes the Greek reflex and reconstruction.'),
(800,363,'gwou- entry endpoint','supports','Defines the deepest reviewed comparative horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(181,914,348,'before the 12th century',NULL,'Merriam-Webster first-known-use report for lord','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported horizon; no underlying manuscript object was directly inspected.'),
(182,919,351,'before the 12th century',NULL,'Merriam-Webster first-known-use report for lady','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported horizon; no underlying manuscript object was directly inspected.'),
(183,924,354,'13th century',NULL,'Merriam-Webster first-known-use report for husband','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying object was directly inspected.'),
(184,935,345,'before the 12th century',NULL,'Merriam-Webster first-known-use report for wife','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported horizon; no underlying manuscript object was directly inspected.'),
(185,939,357,'14th century',NULL,'Merriam-Webster first-known-use report for girl','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying object was directly inspected.'),
(186,942,360,'14th century',NULL,'Merriam-Webster first-known-use report for boy','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying object was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(475,146,'loaf','English / Germanic route','continuation of the first component rather than a descendant of the title',348),
(476,146,'ward','English / Germanic route','relative of the guardian component under *wer-³',350),
(477,146,'warden','English / Germanic route','guardian-family relative under *wer-³',350),
(478,147,'loaf','English / Germanic route','continuation of the component shared with lord',351),
(479,147,'dough','English / Germanic route','relative under the form-and-build root *dheigh-',353),
(480,147,'figure','English / Latin route','deep relative through Latin fingere under *dheigh-',353),
(481,148,'house','English / Germanic route','cognate of Old Norse hūs, the first compound component',354),
(482,148,'husbandry','English','derivative preserving household management and cultivation senses',354),
(483,148,'be','English / Germanic route','deep relative under the reconstructed be and grow root',356),
(484,149,'woman','English','historical compound descendant containing Old English wīf',345),
(485,149,'wīb','Old High German','Germanic cognate of Old English wīf',345),
(486,149,'kwīpe','Tocharian B','probable comparative relative, not a direct parent',345),
(487,150,'gurl(e)','Middle English','recorded spelling-family variant of girle',359),
(488,150,'*gyrela','Reconstructed Old English','tentative predecessor proposed by the Middle English Dictionary',359),
(489,150,'gierela','Old English','tentative garment comparison, not established ancestry',359),
(490,151,'embuié','Old French','possible source comparison for Middle English boi',362),
(491,151,'bōia','Latin','deep restraint term on the proposed route',362),
(492,151,'bovine','English / Latin route','distant cattle-root relative, not evidence for the first boy-to-fetter jump',363);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(545,146,1,'Early English linguistic horizon','Old English hlāford','Loaf and guardian combine in an Old English household title.',NULL,NULL,'broad',NULL,NULL,'unresolved','The compound is secure but no single coinage place or year is asserted.'),
(546,146,2,'Medieval England','hlāford to loverd','Phonological reduction makes the compound less transparent.',52000000,-1500000,'regional',NULL,NULL,'unresolved','The language stages do not identify one event coordinate.'),
(547,146,3,'English-speaking world','lord before the 12th century','The reduced title is recorded in English.',NULL,NULL,'global',NULL,1099,'before','The endpoint encodes only the source-reported before-the-twelfth-century horizon.'),
(548,146,4,'Global English','modern lord','Religious, aristocratic, and ordinary master senses travel globally.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),

(549,147,1,'Early English linguistic horizon','Old English hlǣfdige','Loaf and a kneading element combine in a household designation.',NULL,NULL,'broad',NULL,NULL,'unresolved','The compound is secure but no single coinage place or year is asserted.'),
(550,147,2,'Medieval England','hlǣfdige to lady','Contraction makes the two historical components opaque.',52000000,-1500000,'regional',NULL,NULL,'unresolved','The language stages do not identify one event coordinate.'),
(551,147,3,'English-speaking world','lady before the 12th century','The rank and household word is recorded in English.',NULL,NULL,'global',NULL,1099,'before','The endpoint encodes only the source-reported before-the-twelfth-century horizon.'),
(552,147,4,'Global English','modern lady','Rank, politeness, and gendered reference spread globally.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),

(553,148,1,'Indo-European linguistic horizon','*bheuhₓ- to *bhōw-','Being and growing formations develop toward Germanic dwelling vocabulary.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Comparative reconstruction does not identify one homeland pin or first token.'),
(554,148,2,'North Germanic linguistic horizon','Old Norse hūsbōndi','House and householder combine in a Norse compound.',NULL,NULL,'broad',NULL,NULL,'unresolved','The language and compound are identified without a single event coordinate.'),
(555,148,3,'Medieval England','hūsbōnda to husbonde','The Norse householder word enters English and develops spouse reference.',52000000,-1500000,'regional',NULL,NULL,'unresolved','The borrowing and semantic overlap are historical processes, not one dated token.'),
(556,148,4,'English-speaking world','husband, 13th century','The married-man sense becomes the dominant modern center.',NULL,NULL,'global',1200,1299,'century','The interval preserves the source-reported first-use century.'),

(557,149,1,'Early English linguistic horizon','Old English wīf','The inherited noun denotes a woman or wife while its deeper source remains uncertain.',NULL,NULL,'broad',NULL,NULL,'unresolved','No single place or earlier parent is asserted.'),
(558,149,2,'Medieval England','wīf to wif','The noun continues through Middle English as spouse reference grows more central.',52000000,-1500000,'regional',NULL,NULL,'unresolved','The semantic narrowing is not assigned one event date.'),
(559,149,3,'English-speaking world','wife before the 12th century','The inherited word is recorded in English.',NULL,NULL,'global',NULL,1099,'before','The endpoint encodes only the source-reported before-the-twelfth-century horizon.'),
(560,149,4,'Global English','modern wife','The spouse term spreads globally while older woman senses recede.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),

(561,150,1,'Medieval England','Middle English girle','The word denotes a child or young person, sometimes explicitly a boy.',52000000,-1500000,'regional',NULL,NULL,'unresolved','The dictionary senses do not identify one first token coordinate.'),
(562,150,2,'English-speaking world','girl, 14th century','The female-child sense is recorded and becomes dominant.',NULL,NULL,'global',1300,1399,'century','The interval preserves the source-reported first-use century.'),
(563,150,3,'Global English','modern girl','Female child and young-woman senses spread globally.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),
(564,150,4,'Beyond secure reconstruction','origin unknown','The trail stops before competing Old English proposals.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','An evidential boundary has no geographic coordinate or fabricated date.'),

(565,151,1,'Medieval England','Middle English boi','Male servant, churl, and young-male senses coexist.',52000000,-1500000,'regional',NULL,NULL,'unresolved','The sources do not identify one first token coordinate.'),
(566,151,2,'English-speaking world','boy, 14th century','The male-child word is recorded in English.',NULL,NULL,'global',1300,1399,'century','The interval preserves the source-reported first-use century.'),
(567,151,3,'France, Rome, and Greece','proposed fetter-to-ox-hide trail','One possible analysis crosses French, Latin, and Greek, but the first connection remains disputed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','A proposed multi-stage analysis is not assigned a single map line or event date.'),
(568,151,4,'Global English','modern boy','The male-child sense spreads globally.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(545,348,'Etymology: Old English hlāford from hlāf plus weard','supports','Publishes the Old English compound.'),
(546,349,'Etymology: Middle English loverd from Old English hlāford','supports','Publishes the medieval reduction.'),
(547,348,'First Known Use: before the 12th century','supports','Supplies the open-ended temporal boundary.'),
(548,348,'Modern headword and definitions','supports','Documents continuation as the modern English headword.'),
(549,351,'Etymology: Old English hlǣfdige from hlāf plus -dige','supports','Publishes the Old English compound.'),
(550,352,'Etymology: Middle English lady from Old English hlǣfdige','supports','Publishes the medieval reduction.'),
(551,351,'First Known Use: before the 12th century','supports','Supplies the open-ended temporal boundary.'),
(552,351,'Modern headword and definitions','supports','Documents continuation as the modern English headword.'),
(553,356,'bheue- root and Germanic *bōwan formation','supports','Publishes the reconstructed stages.'),
(554,354,'Etymology: Old Norse hūsbōndi','supports','Publishes the Norse compound.'),
(555,355,'Word History: Norse borrowing and house-master to spouse overlap','supports','Documents the English borrowing and semantic development.'),
(556,354,'First Known Use: 13th century','supports','Supplies the century interval.'),
(557,345,'Etymology endpoint at Old English wīf','supports','Publishes the secure Old English horizon.'),
(558,346,'Etymology: Middle English wif from Old English wīf','supports','Publishes the English continuity.'),
(559,345,'First Known Use: before the 12th century','supports','Supplies the open-ended temporal boundary.'),
(560,345,'Modern headword and definitions','supports','Documents continuation as the modern English headword.'),
(561,359,'Senses: child of either sex; sometimes a boy','supports','Documents the broad Middle English field.'),
(562,357,'First Known Use: 14th century','supports','Supplies the century interval.'),
(563,357,'Modern headword and definitions','supports','Documents continuation as the modern English headword.'),
(564,358,'Etymology: origin unknown','supports','Defines the evidential and geographic boundary.'),
(565,362,'Etymology: Middle English boi, male servant, churl, young male','supports','Publishes the medieval form and senses.'),
(566,360,'First Known Use: 14th century','supports','Supplies the century interval.'),
(567,362,'Possible French, Latin, and Greek route','supports','Publishes the proposed multilingual analysis.'),
(567,361,'Word Origin: origin unknown','challenges','Prevents the route from becoming a settled journey.'),
(568,360,'Modern headword and definitions','supports','Documents continuation as the modern English headword.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(274,146,'Was lord originally a divine title?','No. The recorded ancestry leads to Old English hlāford, a household compound of loaf and guardian.','established','Merriam-Webster and American Heritage independently publish the compound and its components.','resolved','Later religious and aristocratic uses do not erase the household formation.'),
(275,146,'Does loaf guardian prove that every hlāford literally distributed bread?','No. The morphology is established; a literal social ritual for every speaker and use is not.','established','The dictionaries publish the compound while the word history describes a household master.','resolved','The interface separates lexical morphology from an overconfident reconstruction of daily practice.'),
(276,147,'Is lady simply the female form of lord?','No. The histories share hlāf, loaf, but hlǣfdige has a kneading element where hlāford has guardian.','established','The two headword etymologies independently identify distinct second components.','resolved','The shared canonical loaf node joins the words without collapsing their formations.'),
(277,147,'Does loaf kneader define the timeless nature of a lady?','No. It is historical compound morphology, not a biological or prescriptive definition of women.','established','Merriam-Webster describes the household title and warns against reducing it to a literal baker in every use.','resolved','The dossier presents semantic history without turning etymology into essence.'),
(278,148,'Is husband a native English kinship term built from house plus band?','No. English borrowed a Norse householder compound: hūs plus bōndi or būandi. Band is not a component.','established','Both dictionaries publish the Norse borrowing and the actual two components.','resolved','The graph exposes house and householder and creates no band edge.'),
(279,148,'Did husband originally mean only a married man?','No. The earlier center was householder or master of a house; household and spouse senses overlapped before the modern specialization.','established','American Heritage explicitly explains the house-master and spouse overlap.','resolved','The semantic-change fields preserve the narrowing rather than projecting the modern relation backward.'),
(280,149,'Did wife always mean only a female spouse?','No. Old English wīf and Middle English wif could mean woman as well as wife.','established','Merriam-Webster and American Heritage publish the older forms; the woman compound independently preserves the woman sense.','resolved','The wife dossier shares its Old English node with the first component of woman.'),
(281,149,'Is Tocharian B kwīpe the direct ancestor of wife?','No direct ancestry is established. Merriam-Webster calls the comparison probable, while the secure reviewed line stops at Old English wīf.','probable','One dictionary reports the Tocharian comparison and another stops at the Old English horizon.','open','Kwīpe is a side comparison with its own boundary, never the parent in the dossier spine.'),
(282,150,'Did Middle English girl mean only a female child?','No. Girle could denote a child or young person of either sex and could even be specified as a boy.','established','Merriam-Webster and the Middle English Dictionary independently document the broader medieval field.','resolved','The semantic edge records narrowing without claiming a single instant of change.'),
(283,150,'Does girl have a securely known Old English ancestor?','No. American Heritage labels the origin unknown; the Middle English Dictionary marks *gyrela and a gierela garment comparison as uncertain.','proposed','The reviewed sources agree on the secure Middle English horizon but differ in how much tentative prehistory to display.','open','Both proposals remain graph-only and end at separate evidence boundaries.'),
(284,151,'Did boy begin as the ordinary word for a male child?','Not exclusively. American Heritage records Middle English boi as male servant, churl, and young male.','established','The headword history documents a wider and more status-marked medieval semantic field.','resolved','The dossier does not pretend one gloss exhausted the medieval word.'),
(285,151,'Does boy securely descend from a word for ox hide?','No. American Heritage offers a possible chain through a fettered person, fetter, Latin restraint collar, and Greek ox hide; Oxford labels the origin unknown.','proposed','The long internal route is published, but the first connection to Middle English boi remains disputed.','open','Every later edge can be inspected without upgrading the initial proposed borrowing.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(274,348,'Etymology: Old English hlāford, hlāf plus weard','supports','Publishes the household compound rather than a divine source.'),
(274,349,'Headword etymology','context','Independently confirms the formation.'),
(275,348,'Word History and etymology','supports','Publishes the lexical components and household-master history without proving one universal ritual.'),
(276,348,'Etymology: hlāf plus weard','supports','Supplies lord’s distinct second component.'),
(276,351,'Etymology: hlāf plus -dige','supports','Supplies lady’s distinct second component.'),
(277,351,'Word History: woman in charge of a household','supports','Places the morphology in historical household vocabulary rather than timeless essence.'),
(278,354,'Etymology: Old Norse hūsbōndi, hūs plus bōndi','supports','Publishes the borrowing and actual components.'),
(278,355,'Word History: basic kinship term is not native English','context','Independently rejects a native house-plus-band analysis.'),
(279,355,'Word History: house-master and spouse semantic overlap','supports','Directly documents the semantic development.'),
(279,354,'Etymology: master of a house','context','Publishes the older center.'),
(280,345,'Etymology: Old English wīf','supports','Publishes the inherited older form and related woman history.'),
(280,346,'Etymology: Middle English wif, Old English wīf','context','Independently preserves the secure line.'),
(281,345,'Probably akin to Tocharian B kwīpe','supports','Explicitly grades the comparison as probable rather than direct ancestry.'),
(281,346,'Etymology endpoint at Old English wīf','context','Defines the secure reviewed horizon.'),
(282,357,'Word History: young person of either sex','supports','Directly documents the broad medieval sense.'),
(282,359,'Senses: child of either sex; often a boy','context','Adds detailed Middle English evidence.'),
(283,358,'Etymology: origin unknown','supports','Defines the secure boundary.'),
(283,359,'Etymology: question-marked *gyrela and gierela comparisons','context','Preserves the tentative alternatives.'),
(284,362,'Etymology: male servant, churl, young male','supports','Documents the medieval semantic field.'),
(284,360,'Etymology endpoint at Middle English','context','Confirms the medieval horizon.'),
(285,362,'Etymology: possibly Old French embuié through the ox-hide chain','supports','Publishes the route only as possible.'),
(285,361,'Word Origin: origin unknown','challenges','Prevents the possible route from being stated as certain ancestry.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(146,146,2057,'lord','Lord began as the loaf guardian.','Old English hlāford combines hlāf, loaf, with weard, guardian; title and mastery grew from a household compound.','A',100,'The claim is lexical morphology, not proof of one literal bread-distribution ritual.'),
(147,147,2058,'lady','Lady is not the feminine form of lord.','Old English hlǣfdige shares lord’s loaf component but pairs it with a kneading element, not guardian.','A',100,'The shared node and distinct component edges preserve both kinship and difference.'),
(148,148,2059,'husband','A husband was a householder before he was a spouse.','English borrowed Old Norse hūsbōndi, house plus householder; spouse meaning grew from household status.','A',100,'The reveal rejects house-plus-band while avoiding claims about modern family roles.'),
(149,149,2060,'wife','Wife once meant woman more broadly.','Old English wīf meant woman or wife and survives inside wīfman, the ancestor of woman; its deeper source remains uncertain.','A',100,'The reveal joins the wife and woman dossiers at one exact canonical node.'),
(150,150,2061,'girl','Girl could once refer to a boy.','Middle English girle could denote a child of either sex; later English narrowed it toward a female child or young woman.','A',100,'The secure semantic reveal is kept separate from the unknown deeper origin.'),
(151,151,2062,'boy','Boy may reach ox—but only through a disputed trail.','One proposal runs from a fettered person through a shackle, restraint collar, ox hide, and ox; another major reference says the origin is unknown.','B',100,'The surprising route is displayed with a proposed first edge and an explicit dispute.');
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
(146,348,'Etymology: hlāf loaf plus weard keeper','supports','Publishes the compound and components.'),
(146,349,'Etymology: loaf plus guardian','context','Independently confirms the reveal.'),
(147,351,'Etymology: hlāf bread plus -dige kneader','supports','Publishes lady’s distinct components.'),
(147,348,'Etymology: hlāf plus weard','context','Supplies the contrasting second component in lord.'),
(148,354,'Etymology: hūs house plus bōndi householder','supports','Publishes the Norse compound.'),
(148,355,'Word History: house-master and spouse overlap','context','Documents the semantic development.'),
(149,345,'Etymology: Old English wīf; wife and woman family','supports','Publishes the older form and broader relation.'),
(149,325,'Etymology: woman from Old English wīfman','context','Preserves wīf inside the woman compound.'),
(150,357,'Word History: young person of either sex','supports','Publishes the broad Middle English sense.'),
(150,359,'Senses include child of either sex and boy','context','Documents the strongest surprising example.'),
(151,362,'Etymology: possible fetter-to-ox-hide route','supports','Publishes the long route with explicit possibility.'),
(151,361,'Word Origin: origin unknown','challenges','Makes the dispute part of the leaderboard claim itself.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(104,146,147,'THE LORD AND LADY MEET AT THE LOAF','Lord and lady share Old English hlāf, loaf, then split: guardian for hlāford, a kneading element for hlǣfdige.',100,'A','reviewed'),
(105,148,149,'THE SPOUSE WORDS DO NOT SHARE AN ANCESTOR','Husband arrives as a Norse householder; wife is inherited Old English wīf. Modern pairing is social and semantic, not one lexical family.',100,'A','reviewed'),
(106,150,151,'GIRL COULD MEAN BOY; BOY COULD MEAN SERVANT','The modern childhood pair is historically asymmetric: girle once crossed sex, while boi carried servant and churl senses.',100,'A','reviewed');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(10,148,149,'semantic_pair_distinct_ancestry','A MODERN PAIR, TWO SEPARATE HISTORIES','Husband and wife form a modern spouse pair, but their reviewed ancestries do not merge: husband is a Norse householder borrowing, while wife continues Old English wīf and reconnects with woman.','Merriam-Webster Editors · American Heritage Dictionary Editors','established','reviewed'),
(11,150,151,'semantic_pair_distinct_histories','TWO CHILD WORDS THAT DID NOT START AS MIRRORS','Girl and boy now form a familiar pair, but Middle English girle could cross sex while boi included male servant and churl. Their deeper origins remain unknown or proposed.','Merriam-Webster Editors · American Heritage Dictionary Editors · Middle English Dictionary Editors · Oxford University Press Editors','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(10,354,'Husband etymology and householder history','supports','Publishes the Norse householder ancestry.'),
(10,345,'Wife etymology and Old English wīf','supports','Publishes the distinct inherited ancestry.'),
(11,357,'Girl: young person of either sex','supports','Publishes the broad medieval girl history.'),
(11,362,'Boy: male servant, churl, young male','supports','Publishes the nonparallel boy history.');
--> statement-breakpoint

-- Canonicalize every dossier spine. The repeated hlāf node joins LORD and
-- LADY, and the repeated wīf node joins WIFE back into WOMAN. Boundaries remain
-- dossier-specific so one evidence limit never masquerades as another.
WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 914 AND 951
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
WHERE f.id BETWEEN 914 AND 951;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 769 AND 800;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 769 AND 800;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 769 AND 800;
--> statement-breakpoint

-- Side branches keep morphology, cognacy, and proposals out of the linear
-- ancestor spine when they are not direct parents. Every graph-only branch has
-- its own cited boundary.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:3:weard:attested:sense:guardian-keeper',3,'weard','weard','guardian-keeper','weard',NULL,'attested','Old English',450,1150,'guardian; keeper','The second component of hlāford, connected through the published guardian root analysis.','reviewed'),
('node:5:wardaz:reconstructed:sense:guardian-germanic',5,'*wardaz','wardaz','guardian-germanic','*wardaz',NULL,'reconstructed','Proto-Germanic',-500,200,'guard; guardian','The reconstructed Germanic form behind Old English weard.','reviewed'),
('node:6:wor-to:reconstructed:sense:watching-o-grade-formation',6,'*wor-to-','wor-to','watching-o-grade-formation','*wor-to-',NULL,'reconstructed','Proto-Indo-European suffixed o-grade formation',-4500,-2500,'watching; guarding formation','The published suffixed o-grade formation behind the Germanic guard noun.','reviewed'),
('node:6:wer3:reconstructed:sense:perceive-watch-root',6,'*wer-³','wer3','perceive-watch-root','*wer-³',NULL,'reconstructed','Proto-Indo-European root',-4500,-2500,'to perceive; watch out for','The numbered root is kept distinct from unrelated roots printed as wer-.','reviewed'),
('boundary:graph:lord-guardian-0065',7,'UNKNOWN','unknown','lord-guardian-boundary',NULL,NULL,'boundary','before the reviewed *wer-³ reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed watch root.','This boundary closes the guardian component rather than the loaf component.','reviewed'),

('node:3:dige:attested:sense:kneader-element',3,'-dige','dige','kneader-element','-dige',NULL,'attested','Old English',450,1150,'kneader element','The second component of hlǣfdige, compared with Old English dǣge, kneader.','reviewed'),
('node:5:dig:reconstructed:sense:knead-germanic',5,'*dīg-','dig','knead-germanic','*dīg-',NULL,'reconstructed','Proto-Germanic',-500,200,'to knead or form','The reconstructed Germanic element placed under the form-and-build root.','reviewed'),
('node:6:dheigh:reconstructed:sense:form-build-root',6,'*dheigh-','dheigh','form-build-root','*dheigh-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'to form; build','The published centum form behind Germanic kneading vocabulary.','reviewed'),
('node:6:dheigh-oldest:reconstructed:sense:form-build-oldest-root',6,'*dheig̑h-','dheigh-oldest','form-build-oldest-root','*dheig̑h-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'to form; build','The oldest printed form in the reviewed root appendix.','reviewed'),
('boundary:graph:lady-kneader-0065',7,'UNKNOWN','unknown','lady-kneader-boundary',NULL,NULL,'boundary','before the reviewed *dheig̑h- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed form-and-build root.','This boundary closes the kneading component rather than the loaf component.','reviewed'),

('node:66:hus:attested:sense:house-dwelling',66,'hūs','hus','house-dwelling','hūs',NULL,'attested','Old Norse',700,1500,'house','The first component of hūsbōndi and a cognate of English house.','reviewed'),
('boundary:graph:husband-house-0065',7,'UNKNOWN','unknown','husband-house-boundary',NULL,NULL,'boundary','before the reviewed Old Norse hūs component',NULL,NULL,'No securely promoted ancestor is currently known beyond the house component in this dossier.','The reviewed work focused the other component’s deep ancestry.','reviewed'),

('node:81:kwipe:attested:sense:shame-modesty-woman-comparison',81,'kwīpe','kwipe','shame-modesty-woman-comparison','kwīpe',NULL,'attested','Tocharian B',500,1000,'shame; modesty; woman comparison','Merriam-Webster reports only a probable comparison with Old English wīf; this is not promoted as direct ancestry.','reviewed'),
('boundary:graph:wife-kwipe-0065',7,'UNKNOWN','unknown','wife-kwipe-boundary',NULL,NULL,'boundary','before the reviewed Tocharian B kwīpe comparison',NULL,NULL,'No securely promoted shared ancestor is currently known for the wīf and kwīpe comparison.','The branch records a probable cognate relation without inventing its parent.','reviewed'),

('node:3:gyrela:reconstructed:sense:proposed-child-predecessor',3,'*gyrela','gyrela','proposed-child-predecessor','*gyrela',NULL,'reconstructed','proposed Old English form',450,1150,'proposed predecessor of girle','A question-marked reconstruction in the Middle English Dictionary, challenged by the broader origin-unknown judgment.','reviewed'),
('boundary:graph:girl-gyrela-0065',7,'UNKNOWN','unknown','girl-gyrela-boundary',NULL,NULL,'boundary','before the proposed *gyrela reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the tentative reconstructed form.','The branch ends before the proposal is mistaken for attestation.','reviewed'),
('node:3:gierela:attested:sense:garment-comparison',3,'gierela','gierela','garment-comparison','gierela',NULL,'attested','Old English',450,1150,'garment','A question-marked comparison for girle, not an established semantic or phonological derivation.','reviewed'),
('boundary:graph:girl-garment-0065',7,'UNKNOWN','unknown','girl-garment-boundary',NULL,NULL,'boundary','before the reviewed Old English garment comparison',NULL,NULL,'No securely promoted relationship carries the girl dossier beyond this tentative comparison.','The separate boundary prevents two proposals from being fused into one lineage.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:hlaford:attested:sense:loaf-guardian-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:weard:attested:sense:guardian-keeper'),'compound_component','Old English hlāford contains weard as its guardian or keeper component.','Guardian supplies the keeping role beside the provision symbolized by loaf.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:weard:attested:sense:guardian-keeper'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:wardaz:reconstructed:sense:guardian-germanic'),'inheritance','Old English weard reflects Proto-Germanic *wardaz.','Guardian and keeper continue the watch field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:wardaz:reconstructed:sense:guardian-germanic'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:wor-to:reconstructed:sense:watching-o-grade-formation'),'inheritance','Proto-Germanic *wardaz reflects the suffixed o-grade formation *wor-to-.','A guard noun develops from watching.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:wor-to:reconstructed:sense:watching-o-grade-formation'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:wer3:reconstructed:sense:perceive-watch-root'),'morphological_derivation','The suffixed o-grade *wor-to- is analyzed under *wer-³.','Perceiving and watching supply the guard formation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:wer3:reconstructed:sense:perceive-watch-root'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:lord-guardian-0065'),'knowledge_boundary','No older form is promoted beyond reviewed *wer-³.','The guardian trail ends where the published comparative root ends.','SET-U editorial boundary','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:hlaefdige:attested:sense:loaf-kneader-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:dige:attested:sense:kneader-element'),'compound_component','Old English hlǣfdige contains -dige, a kneading element, beside hlāf.','The kneading role supplies the second household component.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:dige:attested:sense:kneader-element'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:dig:reconstructed:sense:knead-germanic'),'inheritance','Old English -dige is analyzed with the Germanic kneading element *dīg-.','Kneading and forming remain the semantic center.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:dig:reconstructed:sense:knead-germanic'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:dheigh:reconstructed:sense:form-build-root'),'inheritance','Germanic *dīg- reflects the centum form *dheigh-.','Kneading specializes the broader form-and-build field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:dheigh:reconstructed:sense:form-build-root'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:dheigh-oldest:reconstructed:sense:form-build-oldest-root'),'root_extension','The root appendix identifies *dheig̑h- as the oldest shape behind centum *dheigh-.','The form-and-build field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:dheigh-oldest:reconstructed:sense:form-build-oldest-root'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:lady-kneader-0065'),'knowledge_boundary','No older form is promoted beyond reviewed *dheig̑h-.','The kneading trail ends where the published comparative root ends.','SET-U editorial boundary','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

((SELECT id FROM lexeme_nodes WHERE canonical_key='node:66:husbondi:attested:sense:house-householder-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:66:hus:attested:sense:house-dwelling'),'compound_component','Old Norse hūsbōndi contains hūs, house, as its first component.','House identifies the dwelling governed or inhabited by the householder.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old Norse.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:66:hus:attested:sense:house-dwelling'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:husband-house-0065'),'knowledge_boundary','No deeper parent is promoted for Old Norse hūs in this reviewed dossier.','The house component stops while the householder component carries the reviewed deep trail.','SET-U editorial boundary','boundary','The headword research did not review the full independent history of house.',NULL,'reviewed'),

((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:wif:attested:sense:woman-wife-noun'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:81:kwipe:attested:sense:shame-modesty-woman-comparison'),'proposed_comparison','Old English wīf is reported as probably akin to Tocharian B kwīpe.','The comparison may connect woman-related lexical material without establishing direction or a direct parent.','Merriam-Webster Editors','probable','The source says probably akin, not derived from.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:81:kwipe:attested:sense:shame-modesty-woman-comparison'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:wife-kwipe-0065'),'knowledge_boundary','No shared reconstructed parent is promoted beyond the wīf and kwīpe comparison.','The probable comparison remains open at the present evidence frontier.','SET-U editorial boundary','boundary','The reviewed sources do not supply a direct ancestor.',NULL,'reviewed'),

((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:girle:attested:sense:child-young-person'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:gyrela:reconstructed:sense:proposed-child-predecessor'),'proposed_inheritance','Middle English girle has been derived from a reconstructed Old English *gyrela.','The child or young-person field is projected backward only tentatively.','Middle English Dictionary Editors','proposed','The dictionary marks the etymology with a question mark; American Heritage says origin unknown.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:gyrela:reconstructed:sense:proposed-child-predecessor'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:girl-gyrela-0065'),'knowledge_boundary','No older form is promoted beyond proposed *gyrela.','The reconstructed predecessor remains an open hypothesis.','SET-U editorial boundary','boundary','The branch is tentative from its first edge.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:girle:attested:sense:child-young-person'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:gierela:attested:sense:garment-comparison'),'proposed_comparison','Middle English girle has been compared with Old English gierela, garment.','A garment word is proposed as a lexical comparison without a secure semantic bridge.','Middle English Dictionary Editors','proposed','The dictionary marks the comparison with a question mark; American Heritage says origin unknown.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:gierela:attested:sense:garment-comparison'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:girl-garment-0065'),'knowledge_boundary','No secure relationship is promoted beyond the Old English garment comparison.','The garment hypothesis stops at its evidential limit.','SET-U editorial boundary','boundary','The comparison is not an established ancestor.',NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:hlaford:attested:sense:loaf-guardian-compound' AND p.canonical_key='node:3:weard:attested:sense:guardian-keeper' AND e.relation_type='compound_component'),348,'Etymology: hlāf plus weard keeper','supports','Publishes the guardian component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:weard:attested:sense:guardian-keeper' AND p.canonical_key='node:5:wardaz:reconstructed:sense:guardian-germanic' AND e.relation_type='inheritance'),350,'wer-3: Germanic *wardaz to Old English weard','supports','Publishes the Germanic form and English reflex.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:5:wardaz:reconstructed:sense:guardian-germanic' AND p.canonical_key='node:6:wor-to:reconstructed:sense:watching-o-grade-formation' AND e.relation_type='inheritance'),350,'wer-3: suffixed o-grade *wor-to- to Germanic *wardaz','supports','Publishes the reconstructed derivation.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:6:wor-to:reconstructed:sense:watching-o-grade-formation' AND p.canonical_key='node:6:wer3:reconstructed:sense:perceive-watch-root' AND e.relation_type='morphological_derivation'),350,'wer-3 root and *wor-to- formation','supports','Analyzes the formation under the root.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:6:wer3:reconstructed:sense:perceive-watch-root' AND p.canonical_key='boundary:graph:lord-guardian-0065' AND e.relation_type='knowledge_boundary'),350,'wer-3 entry endpoint','supports','Defines the reviewed boundary.'),

((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:hlaefdige:attested:sense:loaf-kneader-compound' AND p.canonical_key='node:3:dige:attested:sense:kneader-element' AND e.relation_type='compound_component'),351,'Etymology: -dige akin to dǣge kneader','supports','Publishes the kneading component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:dige:attested:sense:kneader-element' AND p.canonical_key='node:5:dig:reconstructed:sense:knead-germanic' AND e.relation_type='inheritance'),353,'dheigh-: Germanic *dīg- and Old English dige family','supports','Publishes the Germanic analysis.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:5:dig:reconstructed:sense:knead-germanic' AND p.canonical_key='node:6:dheigh:reconstructed:sense:form-build-root' AND e.relation_type='inheritance'),353,'dheigh-: centum form and Germanic *dīg-','supports','Publishes the inherited relation.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:6:dheigh:reconstructed:sense:form-build-root' AND p.canonical_key='node:6:dheigh-oldest:reconstructed:sense:form-build-oldest-root' AND e.relation_type='root_extension'),353,'dheigh- heading and oldest form *dheig̑h-','supports','Publishes the oldest root shape.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:6:dheigh-oldest:reconstructed:sense:form-build-oldest-root' AND p.canonical_key='boundary:graph:lady-kneader-0065' AND e.relation_type='knowledge_boundary'),353,'dheigh- entry endpoint','supports','Defines the reviewed boundary.'),

((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:66:husbondi:attested:sense:house-householder-compound' AND p.canonical_key='node:66:hus:attested:sense:house-dwelling' AND e.relation_type='compound_component'),354,'Etymology: hūs house plus bōndi householder','supports','Publishes the house component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:66:hus:attested:sense:house-dwelling' AND p.canonical_key='boundary:graph:husband-house-0065' AND e.relation_type='knowledge_boundary'),354,'Headword analysis stops at hūs','supports','Defines the present component-branch evidence limit.'),

((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:wif:attested:sense:woman-wife-noun' AND p.canonical_key='node:81:kwipe:attested:sense:shame-modesty-woman-comparison' AND e.relation_type='proposed_comparison'),345,'Probably akin to Tocharian B kwīpe','supports','Publishes the comparison with explicit probability.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:81:kwipe:attested:sense:shame-modesty-woman-comparison' AND p.canonical_key='boundary:graph:wife-kwipe-0065' AND e.relation_type='knowledge_boundary'),345,'Comparison supplies no reconstructed direct parent','supports','Defines the present boundary.'),

((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:girle:attested:sense:child-young-person' AND p.canonical_key='node:3:gyrela:reconstructed:sense:proposed-child-predecessor' AND e.relation_type='proposed_inheritance'),359,'Etymology: question-marked Old English *gyrela','supports','Publishes the reconstruction only tentatively.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:girle:attested:sense:child-young-person' AND p.canonical_key='node:3:gyrela:reconstructed:sense:proposed-child-predecessor' AND e.relation_type='proposed_inheritance'),358,'Etymology: origin unknown','challenges','Prevents promotion of the proposed predecessor.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:gyrela:reconstructed:sense:proposed-child-predecessor' AND p.canonical_key='boundary:graph:girl-gyrela-0065' AND e.relation_type='knowledge_boundary'),359,'Question mark on reconstructed predecessor','supports','Defines the tentative branch limit.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:girle:attested:sense:child-young-person' AND p.canonical_key='node:3:gierela:attested:sense:garment-comparison' AND e.relation_type='proposed_comparison'),359,'Etymology: question-marked comparison with gierela garment','supports','Publishes the comparison only tentatively.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:girle:attested:sense:child-young-person' AND p.canonical_key='node:3:gierela:attested:sense:garment-comparison' AND e.relation_type='proposed_comparison'),358,'Etymology: origin unknown','challenges','Prevents promotion of the garment hypothesis.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:gierela:attested:sense:garment-comparison' AND p.canonical_key='boundary:graph:girl-garment-0065' AND e.relation_type='knowledge_boundary'),359,'Question mark on garment comparison','supports','Defines the tentative branch limit.');
