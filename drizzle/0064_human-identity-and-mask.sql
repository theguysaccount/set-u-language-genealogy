-- Six identity-word dossiers turn several of English's most persistent folk
-- etymologies into explicit graph distinctions. Compounds expose both
-- components, analogical spelling influence is not ancestry, cognate Latin
-- earth words remain siblings, and PERSON preserves a genuinely uncertain
-- Etruscan/Greek frontier instead of forcing one clean answer.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(80,'etruscan','Etruscan','Tyrsenian','Etruscan',0,-700,100,'The attested non-Indo-European language of ancient Etruria; used here for the phersu candidate behind Latin persona.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(140,'woman','woman','woman','/ˈwʊmən/','noun','An adult female human being; historically a compound of Old English wīf, woman, and mann, human being or person.','Woman is not womb plus man. It is the worn-down descendant of wīfmann: literally a female person in the older English sense of man.','reviewed'),
(141,'man','man','man','/mæn/','noun','A human being and, in later dominant use, an adult male human; inherited through Old English mann from the Germanic human-person family.','The oldest English center of man was human being or person, not exclusively adult male; wer and wīf once made the sex distinction.','reviewed'),
(142,'female','female','female','/ˈfiːmeɪl/','noun and adjective','A sex-class term borrowed through French from Latin fēmella, a diminutive of fēmina, with its English spelling later remodeled under male.','Female was not built from male. The words have different Latin ancestries; male changed female only by analogical spelling influence.','reviewed'),
(143,'male','male','male','/meɪl/','noun and adjective','A sex-class term borrowed through Anglo-French from Latin masculus, a diminutive formation on mās.','Male comes from Latin masculus and mās. It is neither a shortening of female nor a formation on mal-, bad.','reviewed'),
(144,'human','human','human','/ˈhjuːmən/','noun and adjective','A member of humankind or relating to people, borrowed through French from Latin hūmānus and the homō family.','Human belongs to an earthling family only at a reconstructed depth: Latin homō and humus are relatives under the earth root, not a license to say English human descends directly from dirt.','reviewed'),
(145,'person','person','person','/ˈpɜːrsən/','noun','An individual human being, historically from Latin persōna, whose older semantic field includes theatrical mask, character, and role.','Person reaches a mask and role in Latin. The tempting per-sonare sound-through story is not secure, and the proposed trail through Etruscan phersu toward Greek prosōpon remains genuinely disputed.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(325,'mw-woman','Woman — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/woman',NULL,'historical_dictionary'),
(326,'ahd-woman','Woman — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://ahdictionary.com/word/search.html?q=Woman',NULL,'historical_dictionary'),
(327,'mw-man','Man — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/man',NULL,'historical_dictionary'),
(328,'ahd-man','Man — American Heritage Dictionary and Word History','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=man',NULL,'historical_dictionary'),
(329,'ahd-ie-man1','Indo-European Roots: man-1 and men-1','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(330,'mw-female','Female — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/female',NULL,'historical_dictionary'),
(331,'ahd-female','Female — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://ahdictionary.com/word/search.html?id=F5075100',NULL,'historical_dictionary'),
(332,'ahd-ie-dhei','Indo-European Root: dhē(i)-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(333,'mw-male','Male — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/male',NULL,'historical_dictionary'),
(334,'ahd-male','Male — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://ahdictionary.com/word/search.html?q=male',NULL,'historical_dictionary'),
(335,'mw-human','Human — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/human',NULL,'historical_dictionary'),
(336,'ahd-human','Human — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=human',NULL,'historical_dictionary'),
(337,'ahd-ie-dhghem','Indo-European Root: dhghem-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(338,'mw-person','Person — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/person',NULL,'historical_dictionary'),
(339,'ahd-person','Person — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://ahdictionary.com/word/search.html?id=P5224400',NULL,'historical_dictionary'),
(340,'ocd-masks','Masks','The Oxford Classical Dictionary Editors',2026,'Oxford University Press','https://academic.oup.com/edited-volume/61673/chapter-abstract/549654502',NULL,'scholarly_reference'),
(341,'dinapoli-persona','Persona: storia e significati','Marta Di Napoli',2005,'Università degli Studi Roma Tre','https://iris.uniroma3.it/handle/11590/269778',NULL,'journal_article'),
(342,'perseus-lsj-prosopon','πρόσωπον — Liddell, Scott, Jones Ancient Greek Lexicon','Henry George Liddell, Robert Scott, Henry Stuart Jones, and Perseus Editors',1940,'Perseus Digital Library','https://atlas.perseus.tufts.edu/dictionaries/entry/urn%3Acite2%3Ascaife-viewer%3Adictionaries.v1%3Alsj-n90433/',NULL,'historical_dictionary'),
(343,'ahd-prosopopeia','Prosopopeia — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=prosopopeia',NULL,'historical_dictionary'),
(344,'ahd-ie-okw','Indo-European Root: okw-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(345,'mw-wife','Wife — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/wife',NULL,'historical_dictionary'),
(346,'ahd-wife','Wife — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://ahdictionary.com/word/search.html?id=W5158300',NULL,'historical_dictionary'),
(347,'mw-mal','Mal- — Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/Mal',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(871,140,1,1,'woman','woman','adult-female-human','woman','/ˈwʊmən/','attested','before the 12th century–today',1000,NULL,'adult female human being','Modern spelling and pronunciation conceal the older compound.'),
(872,140,2,2,'womman','womman','woman-noun','womman',NULL,'attested','Middle English',1150,1500,'woman','A contracted and assimilated continuation of Old English wīfman.'),
(873,140,3,3,'wīfman','wifman','female-person-compound','wīfman',NULL,'attested','Old English',450,1150,'woman; female person','A compound whose two components are modeled separately in the canonical graph.'),
(874,140,3,4,'wīf','wif','woman-wife-noun','wīf',NULL,'attested','Old English',450,1150,'woman; wife','The first component of wīfman; its deeper origin remains uncertain in the reviewed headword sources.'),
(875,140,7,5,'UNKNOWN','unknown','woman-deep-boundary',NULL,NULL,'boundary','before the reviewed Old English wīf horizon',NULL,NULL,'No securely promoted ancestor is currently known beyond this component in the dossier spine.','A probable Tocharian comparison is retained as a relative, not promoted as a direct parent.'),

(876,141,1,1,'man','man','human-and-adult-male','man','/mæn/','attested','before the 12th century–today',1000,NULL,'human being; adult male human','The male-specific sense became dominant, while generic human uses remain historically important.'),
(877,141,2,2,'man','man','human-person','man',NULL,'attested','Middle English',1150,1500,'human being; man','Continues the Old English human-person word.'),
(878,141,3,3,'mann','mann','human-person','mann',NULL,'attested','Old English',450,1150,'human being; person; man','Old English also used wer and wīf to distinguish male and female.'),
(879,141,5,4,'*mann-','mann','human-person','*mann-',NULL,'reconstructed','Proto-Germanic',-500,200,'human being; person','The common Germanic noun family behind Old English mann and its cognates. '),
(880,141,6,5,'*manu-','manu','human-extended-form','*manu-',NULL,'reconstructed','Proto-Indo-European extended form',-4500,-2500,'human being; man','Published extended formation under the man-¹ root. '),
(881,141,6,6,'*man-¹','man1','human-root','*man-¹',NULL,'reconstructed','Proto-Indo-European root',-4500,-2500,'man; human being','American Heritage distinguishes this root from men-¹, to think. '),
(882,141,7,7,'UNKNOWN','unknown','man-deep-boundary',NULL,NULL,'boundary','before the reviewed *man-¹ reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed human-being root.','The graph refuses the attractive but unsupported jump from man to the distinct think root.'),

(883,142,1,1,'female','female','female-sex-class','female','/ˈfiːmeɪl/','attested','14th century–today',1300,NULL,'of or relating to the female sex; a female individual','The modern spelling was remodeled under the influence of male. '),
(884,142,2,2,'femelle','femelle','female-noun','femelle',NULL,'attested','Middle English',1150,1500,'female','The earlier English form preserves the French shape before analogical remodeling. '),
(885,142,8,3,'femele','femele','female-noun','femele',NULL,'attested','Old French',842,1400,'female','French intermediary from Latin fēmella. '),
(886,142,9,4,'fēmella','femella','young-female-diminutive','fēmella',NULL,'attested','Latin',-700,700,'young female; female','A diminutive formation on Latin fēmina. '),
(887,142,9,5,'fēmina','femina','woman-female','fēmina',NULL,'attested','Latin',-700,700,'woman; female','The Latin base represented in feminine and femme. '),
(888,142,6,6,'*dhē-mnā-','dhe-mna','suckle-woman-formation','*dhē-mnā-',NULL,'reconstructed','Proto-Indo-European suffixed reduced formation',-4500,-2500,'woman or nursing female formation','Published morphological analysis; not an attested social definition of women. '),
(889,142,6,7,'*dheh₁(i)-','dheh1i','suck-suckle-root','*dheh₁(i)-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'to suck','Oldest form printed for the root behind the Latin formation. '),
(890,142,7,8,'UNKNOWN','unknown','female-deep-boundary',NULL,NULL,'boundary','before the reviewed *dheh₁(i)- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed suckle root.','The trail ends before the reconstruction is turned into a biological essence claim.'),

(891,143,1,1,'male','male','male-sex-class','male','/meɪl/','attested','14th century–today',1300,NULL,'of or relating to the male sex; a male individual','The modern English form descends through French from a separate Latin family from female. '),
(892,143,2,2,'male','male','male-sex-class','male',NULL,'attested','Middle English',1150,1500,'male','Middle English borrowing from Anglo-French. '),
(893,143,12,3,'masle','masle','male-noun-adjective','masle',NULL,'attested','Anglo-French',1066,1500,'male','The older consonant remains visible in the Anglo-French form. '),
(894,143,9,4,'masculus','masculus','male-diminutive','masculus',NULL,'attested','Latin',-700,700,'male; masculine','A diminutive formation on Latin mās. '),
(895,143,9,5,'mās','mas','male-person-animal','mās',NULL,'attested','Latin',-700,700,'male','The reviewed headword sources stop at this Latin base. '),
(896,143,7,6,'UNKNOWN','unknown','male-deep-boundary',NULL,NULL,'boundary','before the reviewed Latin mās horizon',NULL,NULL,'No securely promoted ancestor is currently known beyond Latin mās in this dossier.','The unrelated Latin malus, bad, receives no ancestry edge.'),

(897,144,1,1,'human','human','human-being','human','/ˈhjuːmən/','attested','15th century–today',1400,NULL,'human being; relating to humankind','English combines noun and adjective histories in the Latin human family. '),
(898,144,2,2,'humain','humain','human-adjective','humain',NULL,'attested','Middle English',1150,1500,'human','Medieval English continuation of a French borrowing. '),
(899,144,12,3,'humain','humain','human-adjective','humain',NULL,'attested','Anglo-French',1066,1500,'human','The immediate French-language channel reported by Merriam-Webster. '),
(900,144,9,4,'hūmānus','humanus','human-adjective','hūmānus',NULL,'attested','Latin',-700,700,'human; of people','A Latin derivative associated with homō, human being. '),
(901,144,9,5,'homō','homo','human-earthling','homō',NULL,'attested','Latin',-700,700,'human being; man','The Latin human noun analyzed under a reconstructed earthling formation. '),
(902,144,6,6,'*(dh)ghom-on-','dhghom-on','earthling-formation','*(dh)ghom-on-',NULL,'reconstructed','Proto-Indo-European suffixed formation',-4500,-2500,'earthling; human being','Published formation behind Latin homō; a reconstruction, not an attested self-name. '),
(903,144,6,7,'*dhghem-','dhghem','earth-root','*dhghem-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'earth','The earth root also has Latin humus as a sibling reflex. '),
(904,144,7,8,'UNKNOWN','unknown','human-deep-boundary',NULL,NULL,'boundary','before the reviewed *dhghem- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed earth root.','The reconstruction is not evidence that English human directly descends from English humus or dirt.'),

(905,145,1,1,'person','person','individual-human','person','/ˈpɜːrsən/','attested','13th century–today',1200,NULL,'individual human being','The modern individual sense continues a word with older role and mask senses. '),
(906,145,2,2,'persone','persone','person-role','persone',NULL,'attested','Middle English',1150,1500,'person; character','Middle English borrowing through medieval French. '),
(907,145,12,3,'persone','persone','person-role','persone',NULL,'attested','Anglo-French',1066,1500,'person; character','The immediate French-language form reported by Merriam-Webster. '),
(908,145,9,4,'persōna','persona','mask-role-person','persōna',NULL,'attested','Latin',-700,700,'actor’s mask; role; character; person','The semantic path includes theatrical representation before the modern individual. '),
(909,145,80,5,'phersu','phersu','masked-figure','phersu',NULL,'attested','Etruscan, 6th century BCE',-600,-500,'masked figure or ritual character','A probable source candidate for Latin persōna, visible in Etruscan tomb imagery; the exact relationship remains debated. '),
(910,145,10,6,'πρόσωπον','prosopon','face-mask-character','prósōpon',NULL,'attested','Ancient Greek',-1400,600,'face; countenance; mask; character','Proposed deeper comparison behind Etruscan phersu; preserved as uncertain, not forced ancestry. '),
(911,145,10,7,'ὤψ','ops','eye-face','ṓps',NULL,'attested','Ancient Greek',-1400,600,'eye; face','The second component in the conventional analysis of πρόσωπον. '),
(912,145,6,8,'*h₃ekʷ-','h3ekw','see-eye-root','*h₃ekʷ-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'to see','Published oldest form behind Greek ὤψ. '),
(913,145,7,9,'UNKNOWN','unknown','person-deep-boundary',NULL,NULL,'boundary','before the reviewed *h₃ekʷ- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed see root.','The boundary coexists with uncertainty much earlier in the persona–phersu–prosōpon route.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(732,140,871,872,'continuation','Middle English womman develops to modern woman with reduction of the unstressed final syllable and modern spelling.','The female-person compound remains the ordinary adult-female noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded before the twelfth century in English.','reviewed'),
(733,140,872,873,'continuation','Old English wīfman contracts and assimilates into Middle English womman.','The compound remains a woman noun while its internal morphology becomes opaque.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(734,140,873,874,'compound_component','Old English wīfman contains wīf as its first lexical component.','Woman or wife combines with the separately modeled human-person component mann.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old English, not a borrowing event.','reviewed'),
(735,140,874,875,'knowledge_boundary','No direct parent is promoted beyond Old English wīf in the reviewed dossier spine.','The trail stops while probable cognate comparisons remain labeled as relatives.','SET-U editorial boundary','boundary','Merriam-Webster calls the Tocharian comparison probable rather than supplying a secure direct ancestor.',NULL,'reviewed'),

(736,141,876,877,'continuation','Modern man continues Middle English man with stabilized spelling and pronunciation.','A broad human-being word develops an increasingly salient adult-male sense.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded before the twelfth century in English.','reviewed'),
(737,141,877,878,'continuation','Middle English man continues Old English mann or mon.','Human being and person remain central while male-specific usage expands.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(738,141,878,879,'inheritance','Old English mann reflects Proto-Germanic *mann-.','The human-person field remains visible across Germanic.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The parent is reconstructed; the child is attested.','reviewed'),
(739,141,879,880,'inheritance','Proto-Germanic *mann- is analyzed under the extended Indo-European form *manu-.','The human-being noun continues across the reconstructed stages.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(740,141,880,881,'derivation','Extended *manu- is built on the root *man-¹.','The extension forms a human-being noun without invoking the separate think root.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(741,141,881,882,'knowledge_boundary','No older form is promoted beyond reviewed *man-¹.','The human-being trail ends before unsupported root-merging.','SET-U editorial boundary','boundary','American Heritage prints man-¹ and men-¹ as distinct entries.',NULL,'reviewed'),

(742,142,883,884,'analogical_reshaping','Earlier femelle or femel was respelled female under the influence of male.','The sex-class meaning continues while surface spelling creates a misleading resemblance.','Merriam-Webster Editors · American Heritage Dictionary Editors','established','Influence is not common ancestry or morphological composition.','The remodeling occurs within English after borrowing.','reviewed'),
(743,142,884,885,'borrowing','Middle English femelle continues Old French femele or femelle.','The female noun crosses from French into English.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(744,142,885,886,'inheritance','Old French femele continues Latin fēmella.','The female noun continues through Romance.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(745,142,886,887,'diminutive_derivation','Latin fēmella is a diminutive of fēmina.','A young-female formation continues the broader woman or female noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(746,142,887,888,'derivation','Latin fēmina is analyzed from the suffixed reduced formation *dhē-mnā-.','The reconstructed formation connects a woman noun to the suckle root without defining modern women by that history.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative morphology, not a dated social definition.','reviewed'),
(747,142,888,889,'derivation','Reconstructed *dhē-mnā- is built on the oldest root form *dheh₁(i)-.','The formation specializes the root meaning to suck or suckle.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(748,142,889,890,'knowledge_boundary','No older form is promoted beyond reviewed *dheh₁(i)-.','The trail ends where the published comparative root ends.','SET-U editorial boundary','boundary','The root is reconstructed rather than an attested first word.',NULL,'reviewed'),

(749,143,891,892,'continuation','Modern male continues Middle English male.','The male sex-class meaning remains central.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded in the fourteenth century.','reviewed'),
(750,143,892,893,'borrowing','Middle English male was borrowed from Anglo-French masle or male.','The noun and adjective cross into English.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(751,143,893,894,'inheritance','Anglo-French masle continues Latin masculus through Romance sound change.','The male noun and adjective continue through French.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(752,143,894,895,'diminutive_derivation','Latin masculus is a diminutive of mās.','The Latin male base receives a diminutive formation.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(753,143,895,896,'knowledge_boundary','No older form is promoted beyond Latin mās in the reviewed headword sources.','The trail stops without inventing a reconstruction or linking unrelated mal-.','SET-U editorial boundary','boundary','A missing deeper parent is represented explicitly.',NULL,'reviewed'),

(754,144,897,898,'continuation','Modern human continues Middle English humain with modern spelling.','Human reference remains while noun and adjective uses develop.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'The adjective is reported from the fifteenth century.','reviewed'),
(755,144,898,899,'borrowing','Middle English humain was borrowed through Anglo-French humain.','The human adjective crosses through French into English.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(756,144,899,900,'inheritance','Anglo-French humain continues Latin hūmānus through Romance.','The human adjective continues across the borrowing channel.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(757,144,900,901,'derivation','Latin hūmānus belongs to the Latin homō, human-being, family.','A human adjective is formed from the human noun family.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(758,144,901,902,'inheritance','Latin homō is analyzed from the reconstructed suffixed formation *(dh)ghom-on-.','Human being is reconstructed as an earthling formation.','Calvert Watkins and American Heritage Dictionary Editors','established','Earthling is a comparative gloss, not an attested original slogan.',NULL,'reviewed'),
(759,144,902,903,'derivation','The earthling formation *(dh)ghom-on- is built on *dhghem-, earth.','The earth root supplies a human-being formation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(760,144,903,904,'knowledge_boundary','No older form is promoted beyond reviewed *dhghem-.','The trail ends where the published comparative root ends.','SET-U editorial boundary','boundary','The root is reconstructed rather than an attested first word.',NULL,'reviewed'),

(761,145,905,906,'continuation','Modern person continues Middle English persone with loss of final unstressed e and stabilized spelling.','Role and individual reference develop into the modern person noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Recorded in the thirteenth century.','reviewed'),
(762,145,906,907,'borrowing','Middle English persone was borrowed through Anglo-French persone.','The person and character noun crosses through French into English.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(763,145,907,908,'inheritance','Anglo-French persone continues Latin persōna.','Mask, role, character, and person senses travel through Romance.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(764,145,908,909,'competing_borrowing','Latin persōna is probably related to or borrowed from Etruscan phersu.','An Etruscan masked figure is proposed behind the Latin mask, role, and person word.','Oxford Classical Dictionary Editors · Marta Di Napoli · Merriam-Webster Editors','proposed','The route is widely reported but not a securely demonstrated ordinary borrowing with an uncontested sound history.','Etruscan phersu is represented in sixth-century BCE material; Latin evidence follows in antiquity.','reviewed'),
(765,145,909,910,'proposed_comparison','Etruscan phersu has been compared with Greek πρόσωπον, but the exact historical direction and mediation are uncertain.','Masked figure, face, mask, and character provide a semantic comparison.','Merriam-Webster Editors · Marta Di Napoli','proposed','The graph preserves the published comparison without upgrading it to consensus ancestry.',NULL,'reviewed'),
(766,145,910,911,'compound_component','Greek πρόσωπον is conventionally analyzed with ὤψ or ὠπ-, eye or face, beside separately modeled pros-.','Face and eye supply the visible-surface component that develops mask and character senses.','American Heritage Dictionary Editors · Liddell, Scott, and Jones','established',NULL,'A morphological analysis inside Greek.','reviewed'),
(767,145,911,912,'inheritance','Greek ὤψ reflects the Indo-European see and eye root *h₃ekʷ-.','Eye and face continue the visual root field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(768,145,912,913,'knowledge_boundary','No older form is promoted beyond reviewed *h₃ekʷ-.','The visual-root branch ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','This deep boundary does not erase the earlier uncertainty between Latin, Etruscan, and Greek.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(732,325,'Etymology and First Known Use','supports','Publishes Middle English womman, Old English wīfman, and the pre-twelfth-century horizon.'),
(732,326,'Headword and etymology','context','Independently publishes the wimman and wīfman history.'),
(733,325,'Etymology: Middle English womman from Old English wīfman','supports','Publishes the contraction path.'),
(733,326,'Etymology: wimman, variant of Old English wīfman','context','Confirms the medieval reshaping.'),
(734,325,'Etymology: wīf woman or wife plus man human being','supports','Publishes both compound components and their historical senses.'),
(734,326,'Etymology: wīf woman plus man person','context','Independently supplies the compound structure.'),
(735,345,'Etymology: Old English wīf, probably akin to Tocharian B kwīpe','supports','Justifies stopping at Old English while retaining only a probable comparison.'),
(735,346,'Etymology endpoint at Old English wīf','context','Independently confirms the securely attested horizon without supplying a direct older parent.'),

(736,327,'Etymology and First Known Use','supports','Publishes the Old and Middle English history and pre-twelfth-century horizon.'),
(736,328,'Word History and definitions','context','Documents the broad older human sense and later male salience.'),
(737,327,'Etymology: Middle English, from Old English man or mon','supports','Publishes the recorded English continuity.'),
(737,328,'Word History: principal Old English sense human being','context','Supplies the older semantic distribution.'),
(738,329,'man-1: Germanic *manna- to Old English mann','supports','Publishes the Germanic formation and English reflex.'),
(739,329,'man-1: extended forms *manu- and *manw-','supports','Publishes the reconstructed extended form.'),
(740,329,'man-1 root heading and extended forms','supports','Analyzes the extension under the human root.'),
(741,329,'Separate man-1 and men-1 entries','supports','Defines the evidence boundary and rejects silent merger with the think root.'),

(742,330,'Word History: alteration of femel or femelle influenced by male','supports','Directly identifies male as spelling influence rather than ancestor.'),
(742,331,'Etymology: alteration influenced by male','context','Independently publishes the analogical remodeling.'),
(743,330,'Etymology: Middle English femel or femelle from Anglo-French femele or femelle','supports','Publishes the French borrowing channel.'),
(743,331,'Etymology: Middle English femelle from Old French','context','Independently supplies the French intermediary.'),
(744,331,'Etymology: Old French femelle from Latin fēmella','supports','Publishes the Romance-to-Latin step.'),
(745,330,'Etymology: Latin femella, diminutive of femina','supports','Publishes the Latin diminutive.'),
(745,331,'Etymology: fēmella, diminutive of fēmina','context','Independently confirms the derivation.'),
(746,332,'dhē(i)-: suffixed reduced-grade *dhē-mnā- to Latin fēmina','supports','Publishes the reconstructed formation.'),
(747,332,'dhē(i)- heading: oldest form *dheh1(i)-','supports','Publishes the oldest root and its relationship to the suffixed formation.'),
(748,332,'dhē(i)- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(749,333,'Etymology and First Known Use','supports','Publishes the Middle English form and fourteenth-century horizon.'),
(749,334,'Headword definitions and etymology','context','Independently supplies the recorded lineage.'),
(750,333,'Etymology: Middle English from Anglo-French masle or male','supports','Publishes the borrowing channel.'),
(750,334,'Etymology: Middle English from Anglo-Norman masle','context','Independently supplies the French form.'),
(751,333,'Etymology: Anglo-French from Latin masculus','supports','Publishes the Romance-to-Latin step.'),
(752,334,'Etymology: Latin masculus, diminutive of mās','supports','Publishes the Latin derivation.'),
(753,333,'Etymology endpoint at Latin masculus','supports','Supports the honest boundary after the Latin base rather than an invented deeper root.'),

(754,335,'Etymology and First Known Use','supports','Publishes Middle English humain and the fifteenth-century adjective horizon.'),
(754,336,'Headword etymology','context','Independently supplies the French and Latin route.'),
(755,335,'Etymology: Middle English humain from Anglo-French','supports','Publishes the immediate borrowing channel.'),
(756,335,'Etymology: Anglo-French from Latin humanus','supports','Publishes the Romance-to-Latin step.'),
(756,336,'Etymology: Old French humain from Latin hūmānus','context','Supplies a parallel French label for the same Romance channel.'),
(757,335,'Etymology: humanus, akin to Latin homo','supports','Publishes the Latin family relationship.'),
(757,336,'Etymology: Latin hūmānus; see dhghem-','context','Places the adjective in the homō family.'),
(758,337,'dhghem-: suffixed zero-grade *(dh)ghom-on- to Latin homō','supports','Publishes the earthling formation and Latin reflex.'),
(759,337,'dhghem- root heading and earthling formation','supports','Analyzes the human noun formation on the earth root.'),
(760,337,'dhghem- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(761,338,'Etymology and First Known Use','supports','Publishes Middle English persone and the thirteenth-century horizon.'),
(761,339,'Headword etymology','context','Independently supplies the medieval and Latin history.'),
(762,338,'Etymology: Middle English from Anglo-French persone','supports','Publishes the immediate borrowing channel.'),
(763,338,'Etymology: Anglo-French from Latin persona','supports','Publishes the Latin source.'),
(763,339,'Etymology: Old French persone from Latin persōna','context','Independently supplies the Romance-to-Latin route.'),
(764,340,'Masks: Latin persona probably Etruscan phersu','supports','Connects the Latin word with the Etruscan masked figure while retaining probability.'),
(764,341,'Archaeological and literary review of phersu and persona','context','Treats the relationship as a historical problem requiring material and textual evidence.'),
(765,338,'Etymology: probably Etruscan phersu, from Greek prosōpa','supports','Publishes the proposed deeper comparison.'),
(765,341,'Discussion of phersu, persona, and Greek comparison','challenges','Prevents the deeper route from being presented as uncontested ancestry.'),
(766,343,'Etymology: Greek prosōpon face, mask, character; pros- plus ōps','supports','Publishes the conventional Greek morphological analysis.'),
(766,342,'Headword senses: face, countenance, mask','context','Documents the face-to-mask semantic range.'),
(767,344,'okw-: Greek ōps from the see root','supports','Publishes the Greek reflex and oldest reconstructed form.'),
(768,344,'okw- entry endpoint','supports','Defines the deepest reviewed comparative horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(175,871,325,'before the 12th century',NULL,'Merriam-Webster first-known-use report for woman','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported horizon; no underlying manuscript object was directly inspected.'),
(176,876,327,'before the 12th century',NULL,'Merriam-Webster first-known-use report for man','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported horizon; no underlying manuscript object was directly inspected.'),
(177,883,330,'14th century',NULL,'Merriam-Webster first-known-use report for female','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying object was directly inspected.'),
(178,891,333,'14th century',NULL,'Merriam-Webster first-known-use report for male','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying object was directly inspected.'),
(179,897,335,'15th century',NULL,'Merriam-Webster first-known-use report for human','First Known Use, adjective',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying object was directly inspected.'),
(180,905,338,'13th century',NULL,'Merriam-Webster first-known-use report for person','First Known Use',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying object was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(457,140,'wife','English','continuation of the first wīf component as its own English word',345),
(458,140,'wif','Middle English','recorded continuation of Old English wīf',345),
(459,140,'wīb','Old High German','Germanic cognate of Old English wīf',345),
(460,141,'Manu','Sanskrit','Indo-Aryan cognate under extended *manu-',329),
(461,141,'Mann','German','Germanic human-person cognate',329),
(462,141,'wer','Old English','historical male-specific contrast word, not an ancestor of man',328),
(463,142,'feminine','English / Latin route','derivative in the Latin fēmina family',332),
(464,142,'femme','French','Romance relative in the Latin fēmina family',332),
(465,142,'fetus','English / Latin route','deeper relative listed under the suckle root',332),
(466,143,'masculine','English / Latin route','derivative in the Latin masculus family',334),
(467,143,'mās','Latin','Latin base preserved as the deepest reviewed historical form',334),
(468,144,'humus','Latin','sibling earth reflex under *dhghem-, not a direct parent of human',337),
(469,144,'humble','English / Latin route','relative through Latin humilis in the earth family',337),
(470,144,'homō','Latin','human-being noun behind the Latin adjective family',337),
(471,144,'bridegroom','English / Germanic route','unexpected relative through the human-being element altered to groom',337),
(472,145,'persona','English / Latin route','learned continuation of the mask, role, and character word',339),
(473,145,'prosopography','English / Greek route','face- or person-description formation on Greek prosōpon',343),
(474,145,'prosopopoeia','English / Greek route','personification formation on Greek prosōpon',343);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(521,140,1,'Early English linguistic horizon','Old English wīf plus mann','The female-person compound forms inside Old English.',NULL,NULL,'broad',NULL,NULL,'unresolved','The compound structure is cited; no single coinage place or year is asserted.'),
(522,140,2,'Medieval England','wīfman to womman','Contraction makes the original two-part structure progressively opaque.',52000000,-1500000,'regional',NULL,NULL,'unresolved','The language stages do not identify one event coordinate.'),
(523,140,3,'English-speaking world','woman before the 12th century','The ordinary modern word emerges from the contracted compound.',NULL,NULL,'global',NULL,1099,'before','The endpoint encodes only the source-reported before-the-twelfth-century horizon.'),
(524,140,4,'Global English','modern woman','The word travels globally while the historical compound becomes invisible to most speakers.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is global but not assigned a fabricated start year.'),

(525,141,1,'Indo-European linguistic horizon','*man-¹ to *manu-','A reconstructed human-being root develops an extended noun formation.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Comparative reconstruction does not identify one first token or map coordinate.'),
(526,141,2,'Germanic linguistic horizon','*mann-','The human-person noun spreads across Germanic branches.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstructed stage receives no single location pin.'),
(527,141,3,'Early and medieval England','Old English mann to Middle English man','Generic human and increasingly male-specific senses coexist and shift in salience.',52000000,-1500000,'regional',NULL,NULL,'unresolved','The semantic redistribution is historical, not a single dated event.'),
(528,141,4,'English-speaking world','man before the 12th century','The inherited word continues into global English.',NULL,NULL,'global',NULL,1099,'before','The endpoint encodes only the source-reported before-the-twelfth-century horizon.'),

(529,142,1,'Indo-European linguistic horizon','*dheh₁(i)- to *dhē-mnā-','A suckle root receives a reconstructed formation behind Latin fēmina.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Comparative morphology does not identify a coinage place or year.'),
(530,142,2,'Roman linguistic world','fēmina to fēmella','A Latin diminutive formation supplies the later Romance noun.',41900000,12500000,'regional',NULL,NULL,'unresolved','The Latin morphology is secure without one asserted token location.'),
(531,142,3,'France and England','femele to femelle','The noun crosses through French into medieval English.',50000000,2000000,'broad',NULL,NULL,'unresolved','The borrowing channel is regional rather than a single event point.'),
(532,142,4,'English-speaking world','female, 14th century','The borrowed form is respelled under male and later spreads globally.',NULL,NULL,'global',1300,1399,'century','The interval preserves the source-reported first-use century.'),

(533,143,1,'Roman linguistic world','mās to masculus','A Latin diminutive formation builds the ancestor of the French word.',41900000,12500000,'regional',NULL,NULL,'unresolved','No single formation date or token is asserted.'),
(534,143,2,'France and England','masle to male','The word crosses through Anglo-French into Middle English.',50000000,2000000,'broad',NULL,NULL,'unresolved','The borrowing channel is regional rather than one map point.'),
(535,143,3,'English-speaking world','male, 14th century','The word enters recorded English independently of female’s ancestry.',NULL,NULL,'global',1300,1399,'century','The interval preserves the source-reported first-use century.'),
(536,143,4,'Global technical and everyday English','modern male','The noun and adjective spread through everyday and classificatory use.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern distribution is not assigned a fabricated start year.'),

(537,144,1,'Indo-European linguistic horizon','*dhghem- to *(dh)ghom-on-','The earth root supplies a reconstructed earthling formation.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The reconstruction receives no unique homeland or first year.'),
(538,144,2,'Roman linguistic world','homō to hūmānus','A Latin human-being family supplies the adjective.',41900000,12500000,'regional',NULL,NULL,'unresolved','The derivation is more secure than any single map point.'),
(539,144,3,'France and England','humain','The Latin adjective travels through French into Middle English.',50000000,2000000,'broad',NULL,NULL,'unresolved','The cited sources vary between Anglo-French and Old French labels.'),
(540,144,4,'English-speaking world','human, 15th century','The adjective and later noun spread through English.',NULL,NULL,'global',1400,1499,'century','The interval uses the source-reported adjective horizon.'),

(541,145,1,'Etruria and the eastern Mediterranean','phersu and πρόσωπον comparison','Etruscan masked-figure and Greek face or mask forms define the disputed deep route.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparison is not assigned a single direction, point, or event date.'),
(542,145,2,'Roman linguistic world','Latin persōna','Mask, role, character, and person senses coexist and develop in Latin.',41900000,12500000,'regional',NULL,NULL,'unresolved','The semantic history spans antiquity rather than one token.'),
(543,145,3,'France and England','persone','The Latin word travels through medieval French into English.',50000000,2000000,'broad',NULL,NULL,'unresolved','The borrowing channel is regional rather than one event point.'),
(544,145,4,'English-speaking world','person, 13th century','The individual-human noun is recorded in English and later spreads globally.',NULL,NULL,'global',1200,1299,'century','The interval preserves the source-reported first-use century.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(521,325,'Etymology: Old English wīfman from wīf plus man','supports','Publishes the compound and Old English stage.'),
(522,326,'Etymology: wimman, variant of wīfman','supports','Publishes the medieval contraction.'),
(523,325,'First Known Use: before the 12th century','supports','Supplies the open-ended temporal boundary.'),
(524,325,'Modern headword and definitions','supports','Documents continuation as the modern English headword.'),
(525,329,'man-1 root and extended *manu-','supports','Publishes the reconstructed stages.'),
(526,329,'man-1: Germanic *manna-','supports','Publishes the Germanic formation.'),
(527,328,'Word History: Old English human sense and later male salience','supports','Documents the semantic distribution in English.'),
(528,327,'First Known Use: before the 12th century','supports','Supplies the open-ended temporal boundary.'),
(529,332,'dhē(i)- root and *dhē-mnā- formation','supports','Publishes the reconstructed stages.'),
(530,330,'Etymology: femella, diminutive of femina','supports','Publishes the Latin formation.'),
(531,331,'Etymology: Old French femelle to Middle English','supports','Publishes the medieval channel.'),
(532,330,'Word History and First Known Use: 14th century','supports','Supplies both analogical remodeling and the temporal interval.'),
(533,334,'Etymology: masculus, diminutive of mās','supports','Publishes the Latin formation.'),
(534,333,'Etymology: Anglo-French masle or male','supports','Publishes the borrowing channel.'),
(535,333,'First Known Use: 14th century','supports','Supplies the century interval.'),
(536,333,'Modern headword and definitions','supports','Documents continuation as the modern English headword.'),
(537,337,'dhghem- root and earthling formation','supports','Publishes the reconstructed stages.'),
(538,335,'Etymology: humanus akin to homo','supports','Publishes the Latin family relationship.'),
(539,335,'Etymology: Anglo-French humain','supports','Publishes the medieval borrowing channel.'),
(539,336,'Etymology: Old French humain','context','Preserves the source-label variation without forcing one dialect label.'),
(540,335,'First Known Use, adjective: 15th century','supports','Supplies the century interval.'),
(541,340,'Masks: Etruscan phersu candidate','supports','Documents the Etruscan masked-figure comparison.'),
(541,342,'Headword senses: face and mask','context','Documents the Greek semantic comparator.'),
(542,339,'Etymology: Latin persōna, mask, role, person','supports','Publishes the Latin stage and semantic range.'),
(543,338,'Etymology: Anglo-French persone','supports','Publishes the medieval borrowing channel.'),
(544,338,'First Known Use: 13th century','supports','Supplies the century interval.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(262,140,'Does woman come from womb plus man?','No. The historical form is Old English wīfman, built from wīf, woman or wife, and mann, human being or person.','established','Merriam-Webster and American Heritage independently publish the two Old English components.','resolved','The graph exposes both real components and creates no womb edge.'),
(263,140,'Did man inside wīfman already mean only an adult male?','No. In this compound man carries its older human-being or person sense.','established','Both reviewed dictionaries gloss the second component as human being or person.','resolved','The woman and man dossiers share the exact Old English human-person node.'),
(264,141,'Did Old English man mean only an adult male?','No. Its principal older sense was human being or person; wer and wīf could mark the sex distinction.','established','American Heritage gives the Old English semantic distribution and Merriam-Webster preserves human-being ancestry.','resolved','The dossier retains both the generic and later male-specific senses.'),
(265,141,'Is man derived from the Indo-European think root?','Not in the reviewed American Heritage analysis. It publishes man-¹, human being, separately from men-¹, to think.','established','The root appendix separates the entries and their reflexes.','resolved','No graph edge merges the two roots merely because modern explanations sometimes associate humanity with thought.'),
(266,142,'Was female formed by adding fe- to male?','No. Female continues Latin fēmella through French; male only influenced its later English spelling.','established','Both dictionaries explicitly distinguish ancestry from analogical spelling influence.','resolved','The only female-to-male graph edge is typed analogical_influence, never inheritance.'),
(267,142,'Does the suckle root give the true modern definition of female?','No. It is a proposed comparative analysis of the Latin word’s deep formation, not a timeless or prescriptive definition of people.','established','The root appendix supplies reconstructed morphology, while the dictionaries document later lexical meanings.','resolved','The reveal states the historical formation without turning origin into essence.'),
(268,143,'Does male come from mal-, bad?','No. Male comes through French from Latin masculus and mās; mal- comes from a different Latin family headed by malus, bad.','established','Merriam-Webster publishes the two independent histories.','resolved','The graph has no mal- ancestry edge.'),
(269,143,'Do male and female share one historical root?','No. They have different Latin ancestries. Their modern visual pairing comes partly from male reshaping female’s English spelling.','established','The male and female headword histories publish separate Latin sources and direct spelling influence.','resolved','A cross-dossier influence edge preserves the contact without merging their families.'),
(270,144,'Does human descend directly from Latin humus, soil?','No. Latin homō and humus are sibling reflexes analyzed under the earth root; hūmānus belongs to the homō family.','established','Merriam-Webster links hūmānus with homō; the root appendix separately lists homō and humus under dhghem-.','resolved','The graph joins human and humus only at reconstructed ancestry.'),
(271,144,'Was earthling an attested original word for human?','No. Earthling is a modern gloss for reconstructed *(dh)ghom-on-, not a surviving Proto-Indo-European inscription.','established','American Heritage marks the formation with an asterisk and derives Latin homō from it.','resolved','Every reconstructed node remains visibly starred and the trail ends at an explicit boundary.'),
(272,145,'Does persōna securely mean a mask through which sound passes?','No secure reviewed etymology derives it as Latin per plus sonāre. The historical sources instead report a probable Etruscan connection and treat the origin as difficult.','probable','The major dictionaries and classical reference favor or discuss phersu; the scholarly review keeps the problem open.','open','The product surfaces the familiar sound-through account only as a rejected or unsupported certainty claim.'),
(273,145,'Is persona to phersu to prosōpon one certain chain?','No. Latin persōna to Etruscan phersu is probable in major references, while the deeper Greek comparison is proposed and contested.','proposed','Merriam-Webster prints the fuller route; Oxford supports the Etruscan candidate; Di Napoli reviews the unresolved evidence.','open','The graph uses two uncertainty grades rather than flattening the route into fact.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(262,325,'Etymology: wīf plus man','supports','Publishes the actual compound.'),
(262,326,'Etymology: Old English wīfman','context','Independently rejects the womb folk segmentation.'),
(263,325,'Etymology: man, human being','supports','Gives the historical sense inside the compound.'),
(263,326,'Etymology: man, person','supports','Independently gives the non-male-specific component sense.'),
(264,328,'Word History: principal Old English sense human being','supports','Documents the older sense and wer or wīf contrast.'),
(264,327,'Etymology: Old English man or mon, human being','context','Independently preserves the generic history.'),
(265,329,'Separate man-1 and men-1 entries','supports','Publishes the roots as distinct analyses.'),
(266,330,'Word History: femel or femelle altered by influence of male','supports','Separates descent from later spelling influence.'),
(266,331,'Etymology: alteration influenced by male, from femelle','context','Independently publishes the same distinction.'),
(267,332,'dhē(i)- reconstructed formation to Latin fēmina','supports','Shows that the claim concerns comparative word formation.'),
(267,330,'Modern definitions and Latin history','context','Documents later lexical senses rather than an essential definition.'),
(268,333,'Etymology: masculus from mās','supports','Publishes the actual male lineage.'),
(268,347,'Etymology: mal- from Latin malus, bad','supports','Publishes the separate bad family.'),
(269,333,'Etymology: male from masculus','supports','Publishes male’s independent Latin ancestry.'),
(269,330,'Word History: female spelling influenced by male','supports','Publishes contact as influence, not shared descent.'),
(270,335,'Etymology: humanus akin to homo','supports','Places human in the homō family.'),
(270,337,'dhghem- reflexes: homō and humus on separate formations','supports','Publishes the sibling relationship under the root.'),
(271,337,'Asterisked *(dh)ghom-on- formation to Latin homō','supports','Marks the earthling formation as reconstructed.'),
(272,340,'Masks: Latin persona probably from Etruscan phersu','supports','Supplies the main classical candidate instead of a secure per-sonare derivation.'),
(272,341,'Review of competing persona origin arguments','context','Keeps the origin problem open rather than certain.'),
(273,338,'Etymology: probably Etruscan phersu from Greek prosōpa','supports','Publishes the fuller proposed chain.'),
(273,340,'Masks: Latin persona probably Etruscan phersu','context','Supports only the Etruscan portion.'),
(273,341,'Archaeological and textual reassessment','challenges','Prevents the Greek extension from being treated as uncontested.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(140,140,2051,'woman','Woman does not contain womb.','Old English wīfman combines wīf, woman or wife, with mann, human being or person; contraction hid the compound in plain sight.','A',100,'The reveal preserves the historical senses without projecting modern categories backward.'),
(141,141,2052,'man','Man was a human word before adult male became its center of gravity.','Old English mann principally meant a human being or person, while wer and wīf could mark male and female.','A',100,'The claim is semantic history, not a demand about modern usage.'),
(142,142,2053,'female','Male changed female’s spelling, not its ancestry.','Female descends from Latin fēmella and fēmina through French; later English speakers remodeled its spelling under male.','A',100,'The graph types influence separately from descent.'),
(143,143,2054,'male','Male is not mal-, bad.','Male descends through Anglo-French masle from Latin masculus and mās; the bad prefix mal- belongs to Latin malus.','A',100,'The claim rejects a false resemblance without moral interpretation.'),
(144,144,2055,'human','Human reaches earth as a reconstructed earthling, not a direct dirt word.','Latin hūmānus belongs with homō; comparative analysis derives homō from *(dh)ghom-on-, an earthling formation on *dhghem-, earth.','A',100,'The asterisks and sibling humus branch prevent a false direct descent claim.'),
(145,145,2056,'person','A person was a mask and role before the modern individual.','Latin persōna carries mask, role, and character senses; a probable Etruscan phersu connection and proposed Greek route remain visibly uncertain.','A',100,'The reveal foregrounds both semantic change and scholarly disagreement.');
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
(140,325,'Etymology: wīf woman or wife plus man human being','supports','Publishes the actual compound.'),
(140,326,'Etymology: wīf plus man person','context','Independently confirms the components.'),
(141,328,'Word History: principal Old English sense human being','supports','Directly documents the semantic reveal.'),
(141,327,'Etymology: Old English man or mon, human being','context','Independently preserves the generic ancestry.'),
(142,330,'Word History: altered under the influence of male','supports','Publishes influence without ancestry.'),
(142,331,'Etymology from femelle and fēmella','supports','Publishes the separate descent path.'),
(143,333,'Etymology: masculus from mās','supports','Publishes the actual male lineage.'),
(143,347,'Etymology: mal- from malus, bad','supports','Publishes the unrelated lookalike family.'),
(144,337,'dhghem-: earthling formation to Latin homō','supports','Publishes the deep reconstructed reveal.'),
(144,335,'Etymology: hūmānus akin to homō','supports','Connects the English lineage with the Latin human noun.'),
(145,339,'Etymology: Latin persona, mask, role, person','supports','Publishes the semantic history.'),
(145,340,'Masks: probable Etruscan phersu connection','context','Supplies the uncertain deeper route.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(101,140,141,'THE MAN INSIDE WOMAN ONCE MEANT PERSON','Woman contracts Old English wīfman. Its second component is the same human-person mann traced in the man dossier, not proof that the compound meant wife of a male. ',100,'A','reviewed'),
(102,142,143,'ONE WORD RESHAPED THE OTHER WITHOUT FATHERING IT','Female and male have separate Latin lineages. They touch in English only when male analogically reshapes female’s spelling.',100,'A','reviewed'),
(103,144,145,'HUMAN IS AN EARTHLING; PERSON IS A MASK','Human and person overlap in modern reference but reveal different histories: a reconstructed earthling formation versus Latin mask, role, and character.',100,'A','reviewed');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(9,144,145,'semantic_overlap_distinct_ancestry','TWO WORDS FOR US, TWO DIFFERENT ARCHAEOLOGIES','Human and person can identify the same individual today, but their reviewed ancestries do not merge: human travels through Latin hūmānus and homō toward an earth root, while person travels through Latin persōna toward a disputed mask and role history.','Merriam-Webster Editors · American Heritage Dictionary Editors','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(9,335,'Human definitions and etymology','supports','Publishes the human headword’s modern reference and Latin ancestry.'),
(9,338,'Person definitions and etymology','supports','Publishes the person headword’s modern reference and distinct Latin ancestry.');
--> statement-breakpoint

-- Canonicalize all six dossier spines. Boundaries remain dossier-specific,
-- shared components collapse only when language, normalized form, status, and
-- sense match exactly.
WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 871 AND 913
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
WHERE f.id BETWEEN 871 AND 913;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 732 AND 768;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 732 AND 768;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 732 AND 768;
--> statement-breakpoint

-- Non-linear evidence that must not be flattened into dossier spines:
-- WOMAN exposes mann as its second component, FEMALE points to MALE only as
-- spelling influence, HUMAN has a competing French channel and a humus sibling,
-- PERSON exposes pros- as the other Greek component.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:8:humain:attested:sense:human-adjective',8,'humain','humain','human-adjective','humain',NULL,'attested','Old French',842,1400,'human','American Heritage labels the medieval French channel Old French; retained beside Merriam-Webster’s Anglo-French label.','reviewed'),
('node:9:humus:attested:sense:earth-soil',9,'humus','humus','earth-soil','humus',NULL,'attested','Latin',-700,700,'earth; soil','A sibling Latin reflex under *dhghem-, not the direct parent of English human.','reviewed'),
('node:10:pros:attested:sense:toward-near-prefix',10,'πρός','pros','toward-near-prefix','prós',NULL,'attested','Ancient Greek',-1400,600,'toward; near; at','The first component in the conventional πρόσωπον analysis.','reviewed'),
('boundary:graph:greek-pros-person-0064',7,'UNKNOWN','unknown','greek-pros-boundary',NULL,NULL,'boundary','before the reviewed Greek pros- component',NULL,NULL,'No securely promoted earlier parent is attached to this side branch in the person dossier.','The boundary prevents a component from appearing fully traced when only the headword analysis was reviewed.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:wifman:attested:sense:female-person-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:mann:attested:sense:human-person'),'compound_component','Old English wīfman contains mann as its second lexical component beside wīf.','The historical human-being or person sense specializes the compound as female person.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'A morphological relation inside Old English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:female:attested:sense:female-sex-class'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:male:attested:sense:male-sex-class'),'analogical_influence','The spelling female was remodeled under the influence of male.','The words become visually paired without acquiring shared ancestry.','Merriam-Webster Editors · American Heritage Dictionary Editors','established','This edge encodes spelling influence only.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:humain:attested:sense:human-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:humain:attested:sense:human-adjective'),'competing_borrowing','American Heritage labels the immediate French source Old French, while Merriam-Webster labels it Anglo-French.','The human adjective crosses through medieval French into English.','American Heritage Dictionary Editors','proposed','Dialect labels differ across the reviewed headword sources; both paths converge at Latin hūmānus.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:8:humain:attested:sense:human-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:humanus:attested:sense:human-adjective'),'inheritance','Old French humain continues Latin hūmānus through Romance.','The human adjective continues.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:humus:attested:sense:earth-soil'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:dhghem:reconstructed:sense:earth-root'),'inheritance','Latin humus reflects the Indo-European earth root *dhghem-.','Earth and soil preserve the root meaning.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Humus is a sibling branch, not an ancestor of homō or human.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:prosopon:attested:sense:face-mask-character'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:pros:attested:sense:toward-near-prefix'),'compound_component','Greek πρόσωπον contains pros- beside ōps or ōp-, eye or face.','The relational prefix participates in the face or visible-surface formation.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:pros:attested:sense:toward-near-prefix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:greek-pros-person-0064'),'knowledge_boundary','No deeper parent is promoted for pros- in this reviewed component branch.','The side trail stops at the current evidence limit.','SET-U editorial boundary','boundary','The person dossier reviewed the headword analysis, not the full independent history of Greek pros-.',NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:wifman:attested:sense:female-person-compound' AND p.canonical_key='node:3:mann:attested:sense:human-person' AND e.relation_type='compound_component'),325,'Etymology: wīf plus man human being','supports','Publishes mann as the second component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:wifman:attested:sense:female-person-compound' AND p.canonical_key='node:3:mann:attested:sense:human-person' AND e.relation_type='compound_component'),326,'Etymology: wīf plus man person','context','Independently supplies the component and sense.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:female:attested:sense:female-sex-class' AND p.canonical_key='node:1:male:attested:sense:male-sex-class' AND e.relation_type='analogical_influence'),330,'Word History: alteration influenced by male','supports','Directly publishes the spelling influence.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:female:attested:sense:female-sex-class' AND p.canonical_key='node:1:male:attested:sense:male-sex-class' AND e.relation_type='analogical_influence'),331,'Etymology: alteration influenced by male','context','Independently confirms the edge.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:humain:attested:sense:human-adjective' AND p.canonical_key='node:8:humain:attested:sense:human-adjective' AND e.relation_type='competing_borrowing'),336,'Etymology: Middle English humain from Old French humain','supports','Publishes the alternate medieval French label.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:8:humain:attested:sense:human-adjective' AND p.canonical_key='node:9:humanus:attested:sense:human-adjective' AND e.relation_type='inheritance'),336,'Etymology: Old French humain from Latin hūmānus','supports','Publishes the alternate French-to-Latin route.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:humus:attested:sense:earth-soil' AND p.canonical_key='node:6:dhghem:reconstructed:sense:earth-root' AND e.relation_type='inheritance'),337,'dhghem-: Latin humus from suffixed zero-grade formation','supports','Publishes the sibling earth reflex.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:prosopon:attested:sense:face-mask-character' AND p.canonical_key='node:10:pros:attested:sense:toward-near-prefix' AND e.relation_type='compound_component'),343,'Etymology: pros- plus ōps, eye','supports','Publishes the first Greek component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:10:pros:attested:sense:toward-near-prefix' AND p.canonical_key='boundary:graph:greek-pros-person-0064' AND e.relation_type='knowledge_boundary'),343,'Headword analysis stops at pros-','supports','Defines the present component-branch evidence limit.');
