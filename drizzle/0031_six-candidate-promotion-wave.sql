INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(38,'ten','ten','ten','/tɛn/','noun, adjective, pronoun','The inherited English cardinal number, carried through Old English and Germanic from the Indo-European numeral also reflected in Latin decem.','Ten and decimal are not related because modern English borrowed one from the other. They are cousins: inherited Germanic ten and learned Latin decimal independently continue the same reconstructed numeral.','reviewed'),
(39,'dime','dime','dime','/daɪm/','noun','The United States ten-cent coin, named with an older English and French word for a tenth part or tithe.','Dime did not begin as the arbitrary name of a coin. It is literally the tenth word in the same family as decimal, decimate, December, and ten.','reviewed'),
(40,'hostel','hostel','hostel','/ˈhɑːstəl/','noun','A lodging place, especially an inexpensive dormitory-style accommodation, continuing the older hospitality branch shared with hospital and hotel.','Hostel is not a clipped modern hotel. It is the older-looking doublet, and hospital and hotel are its historical siblings.','reviewed'),
(41,'hospice','hospice','hospice','/ˈhɑːspɪs/','noun','A program or facility for palliative care, historically a lodging or shelter for travelers, the poor, or the infirm.','Hospice did not originally name end-of-life medicine. It named hospitality and lodging before care for the dying became its central modern sense.','reviewed'),
(42,'lesson','lesson','lesson','/ˈlɛsən/','noun','A unit of instruction or something learned, descending through a word that first named an act or selection of reading.','A lesson began as a reading. Its family includes lecture, legend, select, collect, and the Latin verb for gathering and reading.','reviewed'),
(43,'select','select','select','/səˈlɛkt/','verb, adjective','To choose or mark out from a group, borrowed from Latin selectus and seligere, literally gathering apart.','To select is historically to gather apart. The word belongs to the same Latin gathering-and-reading family as lecture, lesson, legend, and collect.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(110,'mw-ten','Ten — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/ten',NULL,'historical_dictionary'),
(111,'mw-dime','Dime — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/dime',NULL,'historical_dictionary'),
(112,'mw-hostel','Hostel — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hostel',NULL,'historical_dictionary'),
(113,'mw-hospice','Hospice — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/hospice',NULL,'historical_dictionary'),
(114,'mw-lesson','Lesson — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/lesson',NULL,'historical_dictionary'),
(115,'mw-select','Select — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/select',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(257,38,1,1,'ten','ten','cardinal-number',NULL,'/tɛn/','attested','modern spelling; inherited word recorded before the 12th century',1100,NULL,'the cardinal number one greater than nine','The headword node uses the modern spelling while the earlier Old and Middle English forms remain separate nodes.'),
(258,38,2,2,'ten','ten','cardinal-number',NULL,NULL,'attested','Middle English, c. 1150–1500',1150,1500,'ten','The modern spelling is already represented in Middle English alongside other inherited forms.'),
(259,38,3,3,'tīen / tēn','tien ten','cardinal-number',NULL,NULL,'attested','Old English, before 1150',450,1150,'ten','Merriam-Webster gives West Saxon tīen and tēn as the Old English sources.'),
(260,38,5,4,'*tehun','tehun','cardinal-number',NULL,NULL,'reconstructed','Proto-Germanic reconstruction, c. 500 BCE–200 CE',-500,200,'ten','The asterisk marks the Germanic form as reconstructed rather than directly attested.'),
(261,38,6,5,'*dekm̥','dekm','ten-cardinal',NULL,NULL,'reconstructed','Proto-Indo-European reconstruction, c. 4500–2500 BCE',-4500,-2500,'ten','Shared canonical numeral node with decimal, decimate, December, and dime.'),
(262,38,7,6,'UNKNOWN','unknown','ten-deep-boundary',NULL,NULL,'boundary','before the reviewed Indo-European numeral',NULL,NULL,'No deeper numeral ancestor is promoted here.','The boundary records the end of the reviewed path, not proof that no deeper proposal exists.'),

(263,39,1,1,'dime','dime','ten-cent-coin',NULL,'/daɪm/','attested','1786–today',1786,NULL,'a United States or Canadian coin worth ten cents','The dossier follows the coin sense while preserving the older tenth-part word behind it.'),
(264,39,2,2,'dime','dime','tenth-part-tithe',NULL,NULL,'attested','Middle English, c. 1150–1500',1150,1500,'a tenth part; tithe','The older English word named a tenth before the modern coin existed.'),
(265,39,12,3,'disme / dime','disme dime','tenth-part-tithe',NULL,NULL,'attested','Anglo-French, c. 1066–1500',1066,1500,'a tenth part; tithe','The consonant-bearing and simplified spellings belong to the same French tenth-word family.'),
(266,39,9,4,'decima','decima','tenth-part-tithe',NULL,NULL,'attested','Latin antiquity',-700,700,'a tenth part; tithe','Shared canonical node with the decimal dossier.'),
(267,39,9,5,'decimus','decimus','tenth-ordinal',NULL,NULL,'attested','Latin antiquity',-700,700,'tenth','Shared canonical ordinal node with the decimate dossier.'),
(268,39,9,6,'decem','decem','ten-cardinal',NULL,NULL,'attested','Latin antiquity',-700,700,'ten','Shared canonical cardinal node with the existing ten-family dossiers.'),
(269,39,6,7,'*dekm̥','dekm','ten-cardinal',NULL,NULL,'reconstructed','Proto-Indo-European reconstruction, c. 4500–2500 BCE',-4500,-2500,'ten','Shared canonical numeral node.'),
(270,39,7,8,'UNKNOWN','unknown','dime-deep-boundary',NULL,NULL,'boundary','before the reviewed Indo-European numeral',NULL,NULL,'No deeper numeral ancestor is promoted here.','The explicit stop prevents an unattested deeper numeral from being implied.'),

(271,40,1,1,'hostel','hostel','budget-lodging',NULL,'/ˈhɑːstəl/','attested','14th century–today',1300,NULL,'an inn or inexpensive lodging facility','The modern low-cost and youth-travel senses are later specializations of a general lodging word.'),
(272,40,2,2,'hostel','hostel','guest-lodging',NULL,NULL,'attested','Middle English, 14th–15th centuries',1300,1500,'lodging, accommodation, inn, or dwelling place','Merriam-Webster records the Middle English lodging sense.'),
(273,40,12,3,'ostel / hostel','ostel hostel','guest-lodging',NULL,NULL,'attested','Anglo-French, c. 1066–1500',1066,1500,'lodging or accommodation','The Anglo-French forms continue the Gallo-Romance development from Latin hospitāle.'),
(274,40,14,4,'hospitāle','hospitale','guest-lodging',NULL,NULL,'attested','Medieval Latin, c. 500–1500',500,1500,'guest accommodation; charitable lodging','Shared canonical node with hospital and hotel.'),
(275,40,9,5,'hospitālis','hospitalis','hospitality-quality',NULL,NULL,'attested','Latin antiquity',-700,700,'of a guest; hospitable','Shared canonical adjective node.'),
(276,40,9,6,'hospes (hospit-)','hospes hospit','reciprocal-host-guest',NULL,NULL,'attested','Latin antiquity',-700,700,'guest, visitor, or the person receiving a guest','Latin preserves both sides of the reciprocal hospitality role.'),
(277,40,6,7,'*ghos-pot-','ghos-pot','guest-master-compound',NULL,NULL,'reconstructed','Proto-Indo-European compound reconstruction',-4500,-2500,'guest-master; person embodying reciprocal hospitality','Shared canonical reconstructed compound.'),
(278,40,6,8,'*ghos-ti-','ghos-ti','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Indo-European reconstruction',-4500,-2500,'stranger, guest, host; person in reciprocal hospitality','Shared canonical hospitality root.'),
(279,40,7,9,'UNKNOWN','unknown','hostel-deep-boundary',NULL,NULL,'boundary','before secure reconstruction of *ghos-ti-',NULL,NULL,'No single deeper ancestor is treated as secure.','A proposed deeper exchange root remains visible elsewhere as a competing graph edge, not as this dossier’s sole path.'),

(280,41,1,1,'hospice','hospice','palliative-care',NULL,'/ˈhɑːspɪs/','attested','1818–today',1818,NULL,'a program or facility providing palliative care; historically a lodging or shelter','The modern medical sense developed from the older lodging-and-care institution.'),
(281,41,18,2,'hospise / hospice','hospise hospice','religious-lodging',NULL,NULL,'attested','Middle French, c. 1300–1600',1300,1600,'lodging, shelter, or religious guesthouse','French adapts the Medieval Latin ending while retaining the hospitality sense.'),
(282,41,14,3,'hospitium','hospitium','guest-lodging',NULL,NULL,'attested','Medieval Latin, c. 500–1500',500,1500,'hospitality, lodgings, monastic guesthouse, or shelter','The Latin noun names accommodation and hospitality before modern palliative specialization.'),
(283,41,9,4,'hospes (hospit-)','hospes hospit','reciprocal-host-guest',NULL,NULL,'attested','Latin antiquity',-700,700,'guest, visitor, or the person receiving a guest','Shared canonical Latin hospitality node.'),
(284,41,6,5,'*ghos-pot-','ghos-pot','guest-master-compound',NULL,NULL,'reconstructed','Proto-Indo-European compound reconstruction',-4500,-2500,'guest-master; person embodying reciprocal hospitality','Shared canonical reconstructed compound.'),
(285,41,6,6,'*ghos-ti-','ghos-ti','reciprocal-outsider',NULL,NULL,'reconstructed','Proto-Indo-European reconstruction',-4500,-2500,'stranger, guest, host; person in reciprocal hospitality','Shared canonical hospitality root.'),
(286,41,7,7,'UNKNOWN','unknown','hospice-deep-boundary',NULL,NULL,'boundary','before secure reconstruction of *ghos-ti-',NULL,NULL,'No single deeper ancestor is treated as secure.','The boundary keeps competing deeper proposals from being collapsed into certainty.'),

(287,42,1,1,'lesson','lesson','instruction-or-learning',NULL,'/ˈlɛsən/','attested','13th century–today',1200,NULL,'a unit of instruction or something learned','The modern teaching and experience senses grow from a word for reading.'),
(288,42,2,2,'lesson / lessoun','lesson lessoun','reading-or-instruction',NULL,NULL,'attested','Middle English, 13th–15th centuries',1200,1500,'a reading, assigned text, or unit of instruction','The written and instructional senses coexist in medieval English.'),
(289,42,12,3,'leçon','lecon','reading',NULL,NULL,'attested','Anglo-French, c. 1066–1500',1066,1500,'a reading or lesson','Anglo-French transmits the Late Latin reading noun.'),
(290,42,9,4,'lectiō','lectio','act-of-reading',NULL,NULL,'attested','Late Latin',300,700,'a reading; act of reading','The noun is derived from Latin legere, to read or gather.'),
(291,42,9,5,'legere','legere','default',NULL,NULL,'attested','Latin antiquity',-700,700,'to gather, select, choose; to read','Shared canonical node with lecture, legend, collect, and select.'),
(292,42,6,6,'*leǵ-','leg','default',NULL,NULL,'reconstructed','Proto-Indo-European reconstruction',-4500,-2500,'to collect or gather; with descendants involving speech and reading','Shared canonical gathering root.'),
(293,42,7,7,'UNKNOWN','unknown','lesson-deep-boundary',NULL,NULL,'boundary','before the reviewed *leǵ- reconstruction',NULL,NULL,'No deeper ancestor is presented as secure.','Competing analysis of parts of the wider family remains separated in the dispute graph.'),

(294,43,1,1,'select','select','choose-apart',NULL,'/səˈlɛkt/','attested','1565–today',1565,NULL,'to choose from a group; chosen for value or fitness','The adjective is reported from 1565 and the verb from 1566.'),
(295,43,9,2,'selectus','selectus','chosen-apart',NULL,NULL,'attested','Latin antiquity',-700,700,'selected, chosen','The Latin past participle supplies the English adjective and verb.'),
(296,43,9,3,'seligere','seligere','choose-apart',NULL,NULL,'attested','Latin antiquity',-700,700,'to select or choose apart','Latin se- “apart” combines with legere “gather, choose.”'),
(297,43,9,4,'legere','legere','default',NULL,NULL,'attested','Latin antiquity',-700,700,'to gather, select, choose; to read','Shared canonical Latin gathering node.'),
(298,43,6,5,'*leǵ-','leg','default',NULL,NULL,'reconstructed','Proto-Indo-European reconstruction',-4500,-2500,'to collect or gather; with descendants involving speech and reading','Shared canonical gathering root.'),
(299,43,7,6,'UNKNOWN','unknown','select-deep-boundary',NULL,NULL,'boundary','before the reviewed *leǵ- reconstruction',NULL,NULL,'No deeper ancestor is presented as secure.','The dossier stops at the reviewed reconstruction rather than manufacturing a deeper root.' );
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(220,38,257,258,'historical_continuation','Modern English ten continues the Middle English spelling with ordinary phonological stabilization.','The cardinal value remains ten while later noun, rating, money, and idiomatic senses branch from it.','Merriam-Webster Editors','established','The English continuity and historical forms are directly reported.','Middle English to modern English.','reviewed'),
(221,38,258,259,'inheritance','Middle English ten continues Old English tīen and tēn with vowel shortening and spelling convergence.','The cardinal meaning remains ten.','Merriam-Webster Editors','established','The entry explicitly supplies the Old and Middle English lineage.','Old English to Middle English.','reviewed'),
(222,38,259,260,'inheritance','Old English tīen and tēn continue Germanic *tehun through West Germanic consonant loss and vowel development.','The numeral meaning remains ten.','Merriam-Webster Editors','probable','The Germanic and Old English forms are given, while this edge summarizes multiple regular developments rather than one spelling substitution.','Proto-Germanic to Old English.','reviewed'),
(223,38,260,261,'inheritance','Germanic *tehun continues Indo-European *deḱm̥ with the initial stop shift and branch-specific treatment of the following consonant cluster.','The numeral meaning remains ten.','Merriam-Webster Editors · American Heritage Dictionary Editors','probable','Both references connect the Germanic and wider Indo-European numeral family; notation varies between *deḱm̥ and *dekm̥.','Proto-Indo-European to Proto-Germanic.','reviewed'),
(224,38,261,262,'knowledge_boundary','No older form is promoted beyond the reviewed Indo-European numeral.','The numeral history reaches the present evidence horizon.','SET-U editorial boundary','boundary','This is an evidence boundary, not a metaphysical claim that no deeper history existed.',NULL,'reviewed'),

(225,39,263,264,'semantic_specialization','Modern dime preserves the older spelling while English pronunciation developed to /daɪm/.','A general tenth-part or tithe word is applied specifically to a coin worth one tenth of a dollar.','Merriam-Webster Editors','established','Merriam-Webster supplies both the older tenth-part meaning and the 1786 coin use.','Middle English ancestry; United States coin sense reported from 1786.','reviewed'),
(226,39,264,265,'borrowing','Middle English dime adapts Anglo-French disme or dime, including loss of the written consonant in the simplified form.','The meaning remains a tenth part or tithe.','Merriam-Webster Editors','established','The borrowing route is explicit in the source.','Anglo-French to Middle English.','reviewed'),
(227,39,265,266,'romance_development','Anglo-French disme and dime continue Latin decima through regular Romance reduction and spelling change.','The tenth-part and tithe meaning remains central.','Merriam-Webster Editors','established','The source directly traces the French forms to Latin decima.','Latin to Anglo-French.','reviewed'),
(228,39,266,267,'inflectional_derivation','Latin decima is the feminine form of decimus.','The ordinal adjective “tenth” is substantivized as a tenth part or tithe.','Merriam-Webster Editors','established','Merriam-Webster explicitly identifies decima as feminine of decimus.','Latin derivation.','reviewed'),
(229,39,267,268,'ordinal_derivation','Latin decimus adds ordinal morphology to the base represented by decem.','The cardinal ten becomes the ordinal tenth.','Merriam-Webster Editors','established','The ordinal relationship is explicit in the etymology.','Latin derivation.','reviewed'),
(230,39,268,269,'inherited','Latin decem continues the Indo-European ten numeral with Italic sound development.','The cardinal meaning remains ten.','American Heritage Dictionary Editors','established','American Heritage places Latin decem under reconstructed *dekm̥.','Proto-Indo-European to Latin.','reviewed'),
(231,39,269,270,'knowledge_boundary','No older form is promoted beyond the reviewed Indo-European numeral.','The tenth-word history reaches the present evidence horizon.','SET-U editorial boundary','boundary','The stop records the current evidence limit.',NULL,'reviewed'),

(232,40,271,272,'historical_continuation','Modern hostel continues the Middle English form, including its revived use after a period of reduced currency.','A general inn or lodging word specializes toward inexpensive, communal, youth, and institutional accommodation.','Merriam-Webster Editors','established','The dictionary and family history support the medieval word and modern lodging senses.','Medieval English origin with later revival and specialization.','reviewed'),
(233,40,272,273,'borrowing','Middle English hostel borrows Anglo-French ostel or hostel with close preservation of the form.','The lodging meaning remains stable.','Merriam-Webster Editors','established','The borrowing is directly stated.','Anglo-French to Middle English.','reviewed'),
(234,40,273,274,'romance_development','Anglo-French ostel or hostel continues Latin hospitāle with loss and reduction around the initial consonant cluster.','Guest accommodation remains the core meaning.','Merriam-Webster Editors','established','The source directly gives Latin hospitāle as the predecessor.','Latin to Gallo-Romance and Anglo-French.','reviewed'),
(235,40,274,275,'substantivization','Latin hospitāle is a substantivized form built from hospitālis.','The quality “of a guest” becomes a place of guest accommodation.','Merriam-Webster Editors','established','The existing hospital-family sources directly support this formation.','Latin derivation.','reviewed'),
(236,40,275,276,'derivation','Latin hospitālis is built on the hospit- stem of hospes.','The reciprocal host-or-guest role becomes the adjective “of a guest; hospitable.”','Merriam-Webster Editors','established','The Latin derivation is established in the reviewed family sources.','Latin derivation.','reviewed'),
(237,40,276,277,'compound_reflex','Latin hospes is analyzed as a reduced reflex of a reconstructed guest-master compound.','The compound names the person responsible for a reciprocal hospitality relationship.','Merriam-Webster Editors · American Heritage Dictionary Editors','probable','The reconstruction is strongly represented but phonetic reduction leads some scholars to question the exact analysis.','Proto-Indo-European compound to Latin.','reviewed'),
(238,40,277,278,'compound_component','The reconstructed compound includes the *ghos-ti- guest or stranger element.','The outsider relation is framed through reciprocal hospitality.','American Heritage Dictionary Editors','probable','This is one component of the compound, not a claim that the second *pot- element vanished without history.','Internal compound analysis.','reviewed'),
(239,40,278,279,'knowledge_boundary','No single deeper ancestor of *ghos-ti- is selected for this dossier.','The hospitality lineage reaches an explicit evidence boundary.','SET-U editorial boundary','boundary','A proposed *ǵhes- analysis remains a competing branch elsewhere in the graph.',NULL,'reviewed'),

(240,41,280,281,'borrowing','English hospice adapts French hospice with English pronunciation.','A religious or charitable lodging develops toward institutional palliative care and support.','Merriam-Webster Editors','established','The French borrowing, 1818 first use, and older lodging sense are directly reported.','Middle French to English.','reviewed'),
(241,41,281,282,'borrowing','Middle French hospise or hospice adapts Medieval Latin hospitium, including the ending that becomes French -ce.','Hospitality, lodging, and shelter remain central.','Merriam-Webster Editors','established','The source explicitly describes the Medieval Latin borrowing and French ending.','Medieval Latin to Middle French.','reviewed'),
(242,41,282,283,'derivation','Medieval Latin hospitium is built on the hospit- stem of hospes with a denominal suffix.','The host-or-guest role becomes accommodation, hospitality, or shelter.','Merriam-Webster Editors','established','The derivation is explicit in the hospice entry.','Latin and Medieval Latin derivation.','reviewed'),
(243,41,283,284,'compound_reflex','Latin hospes is analyzed as a reduced reflex of a reconstructed guest-master compound.','The compound encodes the reciprocal hospitality role.','Merriam-Webster Editors · American Heritage Dictionary Editors','probable','The phonetic reduction and exact reconstruction remain explicitly qualified.','Proto-Indo-European compound to Latin.','reviewed'),
(244,41,284,285,'compound_component','The reconstructed compound includes the *ghos-ti- guest or stranger element.','The outsider relation is organized through reciprocal hospitality.','American Heritage Dictionary Editors','probable','The element is one component of a modeled compound.','Internal compound analysis.','reviewed'),
(245,41,285,286,'knowledge_boundary','No single deeper ancestor of *ghos-ti- is selected for this dossier.','The hospice lineage reaches an explicit evidence boundary.','SET-U editorial boundary','boundary','Competing deeper proposals remain separate rather than silently merged.',NULL,'reviewed'),

(246,42,287,288,'historical_continuation','Modern lesson continues the Middle English form with spelling stabilization.','A reading or assigned text expands into instruction and then something learned from experience.','Merriam-Webster Editors','established','The historical and current senses are documented in the entry.','Middle English to modern English.','reviewed'),
(247,42,288,289,'borrowing','Middle English lesson or lessoun adapts Anglo-French leçon.','The reading and instructional senses remain connected.','Merriam-Webster Editors','established','The Anglo-French borrowing is directly reported.','Anglo-French to Middle English.','reviewed'),
(248,42,289,290,'borrowing','Anglo-French leçon continues Late Latin lectiō through regular Romance sound and spelling development.','An act or selection of reading remains the source of the lesson sense.','Merriam-Webster Editors','established','The source gives Late Latin lection-, lectio as the French source.','Late Latin to Anglo-French.','reviewed'),
(249,42,290,291,'derivation','Latin lectiō is formed from the reading stem associated with legere.','The act of gathering or selecting develops into reading, then a reading passage.','Merriam-Webster Editors','established','The derivation from Latin legere “to read” is explicit.','Latin derivation.','reviewed'),
(250,42,291,292,'inheritance','Latin legere is compared with reconstructed *leǵ-, with Italic sound development.','Gathering and selecting develop into reading.','University of Texas Linguistics Research Center','probable','The Latin comparison is well supported; the wider *leǵ- family retains scholarly disputes on some branches.','Proto-Indo-European to Latin.','reviewed'),
(251,42,292,293,'knowledge_boundary','No deeper ancestor is promoted beyond *leǵ-.','The reading-and-instruction path reaches its reviewed horizon.','SET-U editorial boundary','boundary','The boundary preserves uncertainty rather than naming a speculative predecessor.',NULL,'reviewed'),

(252,43,294,295,'borrowing','English select borrows Latin selectus with minor English phonological adaptation.','The Latin “chosen apart” sense becomes English adjectival and verbal selection.','Merriam-Webster Editors','established','The source explicitly gives Latin selectus as the English source.','English adjective reported from 1565 and verb from 1566.','reviewed'),
(253,43,295,296,'inflection','Latin selectus is the past participle of seligere.','The action “choose apart” becomes the result “chosen.”','Merriam-Webster Editors','established','The inflectional relation is explicit in the entry.','Latin morphology.','reviewed'),
(254,43,296,297,'prefixed_derivation','Latin seligere combines se- “apart” with legere “gather, select.”','Gathering becomes discriminating choice by adding the apart element.','Merriam-Webster Editors','established','The source explicitly decomposes se- plus legere.','Latin derivation.','reviewed'),
(255,43,297,298,'inheritance','Latin legere is compared with reconstructed *leǵ-, with Italic sound development.','Gathering and selecting remain central, while reading develops within the Latin branch.','University of Texas Linguistics Research Center','probable','The root comparison is reviewed; disputed branches are not treated as universal proof.','Proto-Indo-European to Latin.','reviewed'),
(256,43,298,299,'knowledge_boundary','No deeper ancestor is promoted beyond *leǵ-.','The gathering-and-selection path reaches its reviewed horizon.','SET-U editorial boundary','boundary','The boundary prevents a decorative but uncited deeper root.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(220,110,'Word History: Etymology and current definitions','supports','Connects modern ten to the inherited English lineage and documents later noun and rating senses.'),
(221,110,'Word History: Etymology','supports','Gives Middle English and Old English tīen and tēn in the direct history.'),
(222,110,'Word History: Etymology','supports','Aligns Old English with reconstructed Germanic *tehun and cognate Germanic forms.'),
(223,110,'Word History: Etymology','supports','Traces Germanic *tehun to Indo-European *deḱm̥ and lists cognates across branches.'),
(223,92,'Root dekm̥, section 1','supports','Places Germanic ten and Latin decem under the reconstructed numeral root.'),
(224,92,'Root dekm̥','supports','The reviewed root inventory reaches *dekm̥; SET-U makes that selected horizon explicit.'),

(225,111,'Word History: Etymology and First Known Use','supports','Documents the older tenth-part word and reports 1786 for the coin sense.'),
(226,111,'Word History: Etymology','supports','Traces Middle English to Anglo-French disme and dime.'),
(227,111,'Word History: Etymology','supports','Traces the French forms to Latin decima.'),
(228,111,'Word History: Etymology','supports','Identifies decima as the feminine of decimus.'),
(229,111,'Word History: Etymology','supports','Connects decimus “tenth” with decem “ten.”'),
(230,92,'Root dekm̥, Latin descendants','supports','Lists Latin decem under the Indo-European ten root.'),
(231,92,'Root dekm̥','supports','The selected reviewed chain reaches *dekm̥ and no unique deeper numeral in this dataset.'),

(232,112,'Definitions; Word History: Etymology and First Known Use','supports','Documents the inn and inexpensive-lodging senses and the medieval English record.'),
(232,79,'Paragraphs on hostel history and revival','context','Describes medieval use, later reduced currency, nineteenth-century revival, and modern specialization.'),
(233,112,'Word History: Etymology','supports','States that Middle English borrowed Anglo-French ostel and hostel.'),
(234,112,'Word History: Etymology','supports','Traces the Anglo-French lodging word to Latin hospitāle.'),
(235,79,'Latin formative source discussion','supports','Explains hospitāle as the lodging source of hospital, hostel, and hotel.'),
(236,77,'Word History: Etymology','supports','Derives the hospitality adjective and lodging noun from the hospes family.'),
(237,74,'Noun 1 etymology and reconstruction note','supports','Analyzes Latin hospes through a reconstructed guest-master compound while preserving doubts about reduction.'),
(237,82,'Compound *ghos-pot-','supports','Supplies the compound analysis under the hospitality root.'),
(238,82,'Root ghos-ti-, compound derivatives','supports','Identifies the guest or stranger element in the reconstructed compound.'),
(239,82,'Root ghos-ti-','supports','Supplies the reviewed root horizon; the boundary does not erase the separate proposed deeper branch.'),

(240,113,'Word History: Etymology and First Known Use','supports','Traces English hospice through French and reports the 1818 lodging sense.'),
(241,113,'Word History: Etymology','supports','Explains the borrowing from Medieval Latin hospitium and the French -ce ending.'),
(242,113,'Word History: Etymology','supports','Derives hospitium from the hospit- stem of hospes with a denominal suffix.'),
(243,74,'Noun 1 etymology and reconstruction note','supports','Supports the reconstructed hospitality compound behind Latin hospes.'),
(243,82,'Compound *ghos-pot-','supports','Supplies the modeled compound and reciprocal hospitality meaning.'),
(244,82,'Root ghos-ti-, compound derivatives','supports','Identifies *ghos-ti- as the guest or stranger component.'),
(245,82,'Root ghos-ti-','supports','Supports the explicit reviewed horizon while allowing competing deeper analyses elsewhere.'),

(246,114,'Definitions and Word History','supports','Documents reading, instruction, and learned-experience senses in the English word.'),
(247,114,'Word History: Etymology','supports','Traces Middle English lesson to Anglo-French leçon.'),
(248,114,'Word History: Etymology','supports','Traces Anglo-French leçon to Late Latin lection-, lectio.'),
(249,114,'Word History: Etymology','supports','Derives lectio from Latin legere “to read.”'),
(250,37,'Root *leg-, Latin descendants','supports','Connects Latin legere with the reviewed Indo-European gathering root.'),
(250,38,'Discussion of competing *sleg- analysis','challenges','Shows why the wider Latin lex family cannot be treated as a single uncontested reconstruction.'),
(251,37,'Root *leg-','supports','Supplies the reviewed root horizon used by this dossier.'),

(252,115,'Word History: Etymology and First Known Use','supports','Derives English select from Latin selectus and reports 1565 for the adjective.'),
(253,115,'Word History: Etymology','supports','Identifies selectus as the past participle of seligere.'),
(254,115,'Word History: Etymology','supports','Explicitly analyzes seligere as se- “apart” plus legere “gather, select.”'),
(255,37,'Root *leg-, Latin descendants','supports','Connects Latin legere to the reconstructed gathering root.'),
(255,38,'Discussion of competing *sleg- analysis','challenges','Preserves the scholarly warning that not every apparent lex branch is equally secure.'),
(256,37,'Root *leg-','supports','Supplies the reviewed root horizon without inventing a deeper ancestor.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(53,257,110,'First known use reported as before the 12th century',NULL,'Merriam-Webster first-known-use record for ten','First Known Use',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported medieval horizon. SET-U did not inspect a particular underlying Old English manuscript for this record.'),
(54,263,111,'First known coin use reported as 1786',1786,'Merriam-Webster first-known-use record for dime','First Known Use, coin sense',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported lexicographic date for the ten-cent coin. The older tenth-part word predates this sense.'),
(55,271,112,'First known use reported as the 14th century',NULL,'Merriam-Webster first-known-use record for hostel','First Known Use, noun',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported century. No underlying fourteenth-century primary object was directly inspected in this tranche.'),
(56,280,113,'First known use reported as 1818',1818,'Merriam-Webster first-known-use record for hospice','First Known Use, lodging sense',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'The date belongs to the older lodging sense, not automatically to modern palliative care. The underlying primary object was not directly inspected.'),
(57,287,114,'First known use reported as the 13th century',NULL,'Merriam-Webster first-known-use record for lesson','First Known Use, noun',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported century for the noun. No specific medieval manuscript was directly inspected in this tranche.'),
(58,294,115,'First known adjective use reported as 1565',1565,'Merriam-Webster first-known-use record for select','First Known Use, adjective',NULL,'established','lexicographic_first_use',NULL,NULL,NULL,0,'Source-reported lexicographic date. The underlying 1565 primary object was not directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(151,38,'dime','English','Romance tenth-part cousin from Latin decima, now the ten-cent coin word.',110),
(152,38,'decimal','English','Learned Latin cousin built on tenths and base ten.',92),
(153,38,'December','English','Latin calendar cousin preserving the former tenth month.',92),
(154,38,'decimate','English','Latin ordinal cousin originally involving every tenth member.',92),
(155,39,'ten','English','Inherited Germanic cousin from the same Indo-European numeral.',92),
(156,39,'decimal','English','Latin tenth-part cousin in mathematical vocabulary.',111),
(157,39,'December','English','Latin ten-family cousin in the calendar.',111),
(158,40,'hospital','English','Doublet from the same Latin guest-lodging family.',79),
(159,40,'hotel','English','French-shaped doublet from the same lodging source.',79),
(160,40,'hospice','English','Parallel hospes-family descendant through Latin hospitium.',79),
(161,41,'hostel','English','Parallel lodging descendant in the hospitality family.',79),
(162,41,'hospital','English','Parallel lodging-and-care descendant from the hospes family.',79),
(163,41,'hotel','English','Parallel commercial-lodging descendant from the hospes family.',79),
(164,41,'host','English','Direct role-word cousin through Latin hospes.',113),
(165,42,'lecture','English','Reading-family cousin through Latin legere and lect- forms.',114),
(166,42,'legend','English','Reading-family cousin literally formed around things to be read.',114),
(167,42,'select','English','Gathering-and-choosing cousin through Latin seligere.',114),
(168,43,'collect','English','Gather-together cousin through Latin colligere.',115),
(169,43,'lesson','English','Reading-family cousin through Latin lectio and legere.',115),
(170,43,'lecture','English','Reading-family cousin through Latin lect- and legere.',115),
(171,43,'legend','English','Reading-family cousin through Latin legendus and legere.',115);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(154,38,1,'Indo-European linguistic horizon','Proto-Indo-European reconstruction','The dossier reaches reconstructed *dekm̥. This is a linguistic horizon, not a pinpointed archaeological location.',NULL,NULL,'broad',NULL,NULL,'unresolved','The root source supplies a reconstruction and cognate set but not one datable place or event.'),
(155,38,2,'Germanic and Old English continuum','Proto-Germanic reconstruction through Old English','Germanic *tehun develops into Old English tīen and tēn. The graph shows linguistic stages without pretending that each had one capital or border.',NULL,NULL,'broad',NULL,NULL,'unresolved','The forms are directly cited, but their inheritance spans communities and centuries rather than one source-dated event.'),
(156,38,3,'England','recorded before the 12th century','Merriam-Webster reports English ten before the twelfth century, retaining the inherited Germanic numeral.',52355500,-1174300,'regional',NULL,1099,'before','The upper bound encodes the dictionary’s “before the 12th century” convention; it is not an exact coinage year.'),
(157,38,4,'Global English','inherited word to the present','The cardinal number persists while noun, rating, money, and idiomatic uses accumulate.',NULL,NULL,'global',1100,NULL,'open','The open interval represents continuing English use after the medieval horizon, not the date of every later specialized sense.'),

(158,39,1,'Latin tenth-word family','Latin antiquity','Latin decem, decimus, and decima connect the cardinal, ordinal, and tenth-part meanings inherited by the dossier.',NULL,NULL,'broad',NULL,NULL,'unresolved','The lexical relationships are directly cited, but the selected sources do not delimit one point location or onset for all three Latin forms.'),
(159,39,2,'Anglo-French and Middle English','medieval transmission','Anglo-French disme or dime enters Middle English as a tenth part or tithe, centuries before the United States coin.',NULL,NULL,'broad',1150,1500,'range','The range conservatively represents the Middle English period, not the exact date of every French or English occurrence.'),
(160,39,3,'United States','1786 coin-sense horizon','The older tenth-word is applied to the ten-cent coin. Merriam-Webster reports 1786 as the first known use for that sense.',NULL,NULL,'regional',1786,1786,'exact','1786 is the reviewed lexicographic first-use year for the coin sense, not proof of the first spoken use.'),
(161,39,4,'Global English','1786 onward','The coin name continues and develops money, cost, basketball-pass, and accurate-throw senses without losing its ten-based identity.',NULL,NULL,'global',1786,NULL,'open','The interval begins with the reviewed coin horizon; later figurative senses are not all assigned to 1786.'),

(162,40,1,'Latin and Gallo-Romance hospitality network','Latin hospitāle to Anglo-French ostel','The lodging noun moves through Gallo-Romance before appearing in English. The route is linguistic and distributed rather than one mappable trip.',NULL,NULL,'broad',NULL,NULL,'unresolved','The derivation is directly cited, but no single conservative numeric interval or point location covers the whole Romance development.'),
(163,40,2,'England','14th-century English record','Middle English hostel names lodging, accommodation, an inn, or a dwelling place.',52355500,-1174300,'regional',1300,1399,'century','The century range represents the dictionary’s rounded first-known-use horizon, not a precise manuscript date.'),
(164,40,3,'British English revival','early 19th-century revival','After reduced currency, hostel returns prominently in the nineteenth century while older institutional-lodging senses continue.',NULL,NULL,'regional',NULL,NULL,'unresolved','The family history describes an early nineteenth-century revival but does not provide one exact year in the reviewed source.'),
(165,40,4,'Global travel network','modern inexpensive-lodging sense','Hostel becomes especially associated with inexpensive, dormitory-style, and youth travel accommodation.',NULL,NULL,'global',NULL,NULL,'unresolved','The current definition is directly supported; the reviewed source does not assign one universal onset to the global specialization.'),

(166,41,1,'Latin hospitality network','Latin and Medieval Latin','Hospes and hospitium name reciprocal hospitality, accommodation, and guest shelter before the French and English forms.',NULL,NULL,'broad',NULL,NULL,'unresolved','The lexical derivation is cited, but its distributed Latin use does not resolve to one point or exact interval here.'),
(167,41,2,'French-speaking Europe','Middle French transmission','Middle French hospise or hospice adapts Medieval Latin hospitium and carries the lodging or shelter sense.',NULL,NULL,'regional',1300,1600,'range','The interval represents the Middle French language stage rather than a claimed first occurrence.'),
(168,41,3,'England','1818 English lodging horizon','English hospice is first reported in 1818 for a lodging, especially one maintained by a religious order.',52355500,-1174300,'regional',1818,1818,'exact','1818 is the reviewed first-known-use year for the lodging sense, not for modern palliative medicine.'),
(169,41,4,'Modern palliative-care network','by the end of the 19th century onward','The lodging-and-care institution specializes toward facilities and programs supporting terminally ill people and their families.',NULL,NULL,'global',NULL,NULL,'unresolved','The family history places the extension by the end of the nineteenth century but does not provide one exact onset in the reviewed record.'),

(170,42,1,'Latin reading culture','Latin legere and lectio','The gathering-and-selecting verb legere develops a reading sense, and lectio names the act or selection of reading.',NULL,NULL,'broad',NULL,NULL,'unresolved','The lexical derivation is directly cited, but the source does not delimit one single Roman place or date for the semantic development.'),
(171,42,2,'Anglo-French transmission','medieval transmission','Anglo-French leçon carries the reading word into Middle English.',NULL,NULL,'broad',NULL,NULL,'unresolved','The borrowing route is explicit; one exact transmission date is not supplied.'),
(172,42,3,'England','13th-century English record','English lesson is recorded for the reading-and-instruction family in the thirteenth century.',52355500,-1174300,'regional',1200,1299,'century','The century band reflects the dictionary’s rounded first-known-use horizon.'),
(173,42,4,'Global English','reading, instruction, and learned-experience senses','Lesson expands from a reading or assigned text to instruction and to something learned through experience.',NULL,NULL,'global',NULL,NULL,'unresolved','The current senses are directly documented, but the reviewed source does not give one onset for each semantic branch.'),

(174,43,1,'Latin linguistic horizon','Latin seligere and selectus','Latin se- “apart” combines with legere “gather, select”; selectus names what has been chosen.',NULL,NULL,'broad',NULL,NULL,'unresolved','The morphological analysis is explicit, but the source does not locate the Latin formation at one point or exact year.'),
(175,43,2,'England','1565 adjective horizon','English select is first reported in 1565 as an adjective for something chosen from a group.',52355500,-1174300,'regional',1565,1565,'exact','1565 is the reviewed first-known-use year for the adjective, not the date of every borrowing occurrence.'),
(176,43,3,'England','1566 verb horizon','The English verb select is reported from 1566 for choosing from a number or group.',52355500,-1174300,'regional',1566,1566,'exact','1566 is the reviewed first-known-use year for the verb.'),
(177,43,4,'Global English','1566 onward','Select continues in ordinary choice and develops technical, computational, institutional, and biological uses.',NULL,NULL,'global',1566,NULL,'open','The open interval tracks the English verb after its reviewed horizon; later specialized senses are not all dated to 1566.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(154,92,'Root dekm̥','supports','Supplies the reconstructed numeral and cross-branch descendants without asserting one archaeological point.'),
(155,110,'Word History: Etymology','supports','Lists Germanic *tehun, Old English forms, and related Germanic numerals.'),
(156,110,'First Known Use','supports','Reports English ten before the twelfth century.'),
(157,110,'Current definitions and Word History','supports','Documents continuing cardinal, noun, money, rating, and idiomatic uses.'),
(158,111,'Word History: Etymology','supports','Connects decem, decimus, and decima through ten, tenth, and tenth-part meanings.'),
(158,92,'Root dekm̥, Latin descendants','context','Places the Latin family under the reconstructed Indo-European numeral.'),
(159,111,'Word History: Etymology','supports','Documents Anglo-French disme or dime and Middle English tenth-part use.'),
(160,111,'First Known Use','supports','Reports 1786 for the ten-cent coin sense.'),
(161,111,'Current definitions','supports','Documents coin, money, cost, basketball-pass, and accurate-throw senses.'),
(162,112,'Word History: Etymology','supports','Traces Anglo-French ostel or hostel to Latin hospitāle.'),
(162,79,'Latin formative source discussion','context','Places hostel beside hospital and hotel in the same lodging family.'),
(163,112,'First Known Use and Etymology','supports','Reports the fourteenth-century English lodging word.'),
(164,79,'Hostel history paragraph','supports','Describes the period of disuse and revival in the early nineteenth century.'),
(165,112,'Current definitions','supports','Defines modern inexpensive and institutional lodging senses.'),
(166,113,'Word History: Etymology','supports','Connects hospitium to hospes and documents lodging and hospitality senses.'),
(167,113,'Word History: Etymology','supports','Documents the French and Middle French stage from Medieval Latin.'),
(168,113,'First Known Use','supports','Reports 1818 for the English lodging sense.'),
(169,79,'Hospice history paragraph','supports','Describes the extension from religious lodging to care for the terminally ill by the end of the nineteenth century.'),
(170,114,'Word History: Etymology','supports','Derives lesson through lectio from legere “to read.”'),
(171,114,'Word History: Etymology','supports','Documents the Anglo-French-to-Middle-English borrowing route.'),
(172,114,'First Known Use','supports','Reports the English noun in the thirteenth century.'),
(173,114,'Current definitions and Kids Definition','supports','Documents reading, assigned study, instruction, and learned-experience senses.'),
(174,115,'Word History: Etymology','supports','Analyzes Latin selectus, seligere, se-, and legere.'),
(175,115,'First Known Use, adjective','supports','Reports 1565 for the adjective.'),
(176,115,'First Known Use, verb','supports','Reports 1566 for the verb.'),
(177,115,'Current adjective, verb, noun, and medical definitions','supports','Documents ordinary choice and later technical or biological uses.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(79,38,'Is English ten borrowed from Latin decem?','No. English ten is inherited through Old English and Germanic, while Latin decem is a cognate from the same Indo-European numeral.','established','Merriam-Webster gives the Germanic inheritance path; American Heritage places both Germanic and Latin descendants under *dekm̥.','resolved','The global graph joins them at the reconstructed root without making Latin the parent of English ten.'),
(80,39,'Was dime invented as a coin name in 1786?','The coin sense is reported from 1786, but the word itself already existed in Middle English and Anglo-French for a tenth part or tithe.','established','Merriam-Webster separates the older etymological word from the first-known-use date of the coin sense.','resolved','The dossier preserves both the medieval word and the later United States specialization.'),
(81,40,'Is hostel a shortened modern form of hotel?','No. Hostel is the historically older-looking English doublet. Both words descend by different French histories from Latin hospitāle.','established','The hostel entry supplies the medieval route; the Merriam-Webster family history compares hospital, hostel, hotel, and hospice directly.','resolved','The graph shares hospitāle while keeping each borrowing route separate.'),
(82,41,'Did hospice always mean palliative care?','No. The 1818 English record names lodging, especially a religious guesthouse; palliative care is a later specialization.','established','The hospice entry and hospital-family history distinguish the older lodging institution from the later end-of-life-care sense.','resolved','The semantic edge and timeline refuse to backdate modern medical care to the first English record.'),
(83,42,'Did lesson originally mean a spoken class?','Its secure ancestry points first to reading: Anglo-French leçon and Late Latin lectio, an act or selection of reading from legere. Instruction and learned-experience senses develop from that base.','established','Merriam-Webster directly traces the word through lectio and legere and preserves reading in the current sense inventory.','resolved','The dossier models reading before instruction instead of projecting the modern classroom backward.'),
(84,43,'Is select descended from English lecture or lesson?','No. The English words are cousins. Select comes from Latin selectus and seligere; lecture and lesson take other Latin formations that independently reach legere.','established','The select, lecture, and lesson entries expose separate Latin branches while the canonical graph shares legere.','resolved','The graph joins the dossiers at Latin legere without making one modern English word the ancestor of another.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(79,110,'Word History: Etymology','supports','Gives the inherited Old English and Germanic path for ten.'),
(79,92,'Root dekm̥, Germanic and Latin descendants','supports','Shows English ten-family and Latin decem-family forms as cognates under one reconstruction.'),
(80,111,'Word History: Etymology and First Known Use','supports','Separates the medieval tenth-word ancestry from the 1786 coin horizon.'),
(81,112,'Word History: Etymology and First Known Use','supports','Documents fourteenth-century hostel from Anglo-French and Latin hospitāle.'),
(81,79,'Hospital, hostel, and hotel comparison','supports','Explicitly treats the words as doublets from a shared Latin lodging source.'),
(82,113,'Definitions, Etymology, and First Known Use','supports','Documents the 1818 lodging sense and modern palliative definition.'),
(82,79,'Hospice history paragraph','supports','Describes the later extension to care for the terminally ill.'),
(83,114,'Word History: Etymology and current senses','supports','Traces lesson through lectio and legere while retaining reading and instruction senses.'),
(84,115,'Word History: Etymology','supports','Traces select through selectus and seligere to legere.'),
(84,114,'Word History: Etymology','context','Shows lesson as a separate lectio branch from the same Latin verb.'),
(84,42,'Lecture — Word History','context','Shows lecture as a separate lect- formation in the same Latin reading family.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+100;
--> statement-breakpoint
UPDATE `leaderboard_entries` SET `rank`=(`rank`-100)+CASE
  WHEN (`rank`-100)>=23 THEN 5
  WHEN (`rank`-100)>=20 THEN 4
  WHEN (`rank`-100)>=16 THEN 3
  WHEN (`rank`-100)>=14 THEN 2
  WHEN (`rank`-100)>=6 THEN 1
  ELSE 0 END;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(24,39,6,'dime','A dime is literally a tenth.','The coin name reuses a medieval tenth-part word from Anglo-French and Latin decima. It sits in the same deep numeral family as decimal, decimate, December, and inherited English ten.','A',99,'The tenth-part ancestry and 1786 coin specialization are directly documented.'),
(25,40,15,'hostel','Hostel is older than the modern hotel story.','Hostel, hotel, and hospital are doublets from Latin guest lodging. Hostel preserves the older-looking French form; it is not a recent clipping of hotel.','A',92,'The medieval route and comparative family history are explicit in Merriam-Webster.'),
(26,41,18,'hospice','Hospice began as hospitality, not terminal care.','English hospice first named lodging, especially a religious guesthouse. Palliative care is a later specialization of the same shelter-and-care history.','A',89,'The source distinguishes the 1818 lodging record from the later medical sense.'),
(27,42,23,'lesson','A lesson began as a reading.','Anglo-French leçon and Late Latin lectio name reading before the word expands into instruction and something learned from experience.','A',81,'The reading ancestry and modern semantic branches are directly documented.'),
(28,43,27,'select','To select is to gather apart.','Latin seligere combines se- “apart” with legere “gather, select.” The same gathering verb sits behind lecture, lesson, legend, and collect.','A-',76,'The Latin morphology is explicit; A- reflects the wider root family’s preserved scholarly disputes.');
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(24,111,'Word History: Etymology and First Known Use','supports','Documents the tenth-part ancestry and 1786 coin sense.'),
(24,92,'Root dekm̥','supports','Connects the Latin and Germanic ten families at the reconstructed numeral.'),
(25,112,'Word History: Etymology and First Known Use','supports','Documents medieval hostel from Anglo-French and Latin hospitāle.'),
(25,79,'Hospital, hostel, and hotel comparison','supports','Explicitly compares the doublets and their divergent histories.'),
(26,113,'Definitions, Etymology, and First Known Use','supports','Documents the older lodging sense and current palliative meaning.'),
(26,79,'Hospice history paragraph','supports','Places the medical specialization later than the lodging word.'),
(27,114,'Word History: Etymology and current senses','supports','Traces lesson through lectio “reading” and documents instructional extensions.'),
(28,115,'Word History: Etymology','supports','Explicitly analyzes se- plus legere and the “gather, select” meaning.'),
(28,37,'Root *leg-','context','Connects Latin legere to the wider reconstructed gathering family.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(21,39,31,'THE COIN AND THE MONTH BOTH COUNT TO TEN','Dime reaches Latin decima, a tenth part; December reaches Latin December, the old tenth month. Both converge at decem and reconstructed *dekm̥.',99,'A','reviewed'),
(22,40,25,'THE CHEAP BED AND THE MEDICAL WARD ARE DOUBLETS','Hostel and hospital travel through different French and English routes but share Latin hospitāle, guest accommodation, and the deeper hospitality family.',96,'A','reviewed'),
(23,41,24,'CARE FOR THE DYING AND HOSTILITY SHARE THE STRANGER','Hospice reaches Latin hospes and the reciprocal guest family; hostile reaches Latin hostis, where outsider becomes enemy. The connection is historical, not moral equivalence.',98,'A-','reviewed'),
(24,42,43,'THE LESSON AND THE CHOICE SHARE GATHERING','Lesson comes through lectio, reading; select comes through seligere, gathering apart. Both reach Latin legere and reconstructed *leǵ-.',95,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.entry_id BETWEEN 38 AND 43
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
WHERE f.entry_id BETWEEN 38 AND 43;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.entry_id BETWEEN 38 AND 43;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.entry_id BETWEEN 38 AND 43;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
JOIN relations relation ON relation.id=citation.relation_id
WHERE relation.entry_id BETWEEN 38 AND 43;
--> statement-breakpoint

UPDATE `relations` SET
  `sound_change`=(SELECT edge.sound_change FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `semantic_change`=(SELECT edge.semantic_change FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `scholar`=(SELECT edge.scholar FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `confidence`=(SELECT edge.confidence FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `confidence_note`=(SELECT edge.confidence_note FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `chronology_note`=(SELECT edge.chronology_note FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id),
  `editorial_status`=(SELECT edge.editorial_status FROM relation_edge_links link JOIN lexeme_edges edge ON edge.id=link.edge_id WHERE link.relation_id=relations.id)
WHERE `id` IN (229,230,235,236,237,238,243,244,250,255);
