-- Turn the tea/chai sketch into a multilingual lexical family. Portuguese chá,
-- Persian čāy, Turkish çay, Russian чай, and Urdu چائے become independently
-- searchable dossiers while preserving every uncertain relay and source conflict.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(73,'russian','Russian','Indo-European','Balto-Slavic · East Slavic',0,1000,NULL,'Russian represented by чай and the Turkic relay analysis in Vasmer.'),
(74,'urdu','Urdu','Indo-European','Indo-Aryan · Hindustani',0,1200,NULL,'Urdu in Perso-Arabic script, modeled separately from the broader Hindi–Urdu continuum when its spelling history is the evidence under review.'),
(75,'cantonese','Cantonese','Sino-Tibetan','Sinitic · Yue',0,1000,NULL,'The Yue variety associated by WALS with the Portuguese chá route through Macao; the immediate donor label is disputed by Portuguese lexicography.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(100,'cha-portuguese','chá','cha','/ˈʃa/','noun','The Portuguese word for tea, a European cha-type form associated with sixteenth-century Portuguese contact through Macao rather than the Dutch te-type route.','Portuguese chá is the maritime exception that breaks the viral sea-versus-land rule: it crossed by sea but kept a cha-type name. Even its immediate Chinese donor label remains disputed.','reviewed'),
(101,'chay-persian','چای','cay','/tʃɒːj/','noun','Persian čāy, derived from Chinese ch’a in Encyclopaedia Iranica, with Persian awareness reported by the eleventh century but the adoption mechanism still unknown.','Bīrūnī describing tea in the eleventh century proves learned Persian awareness—not the date when tea became an ordinary Persian drink. The source explicitly leaves adoption timing and mechanism unresolved.','reviewed'),
(102,'cay-turkish','çay','cay','/tʃaj/','noun','The Turkish word for tea, ultimately Chinese but analyzed in Turkish scholarship as reaching historical Turkey Turkish through Persian as a bridge language.','Calling Turkish çay a direct Chinese loan erases the relay. The reviewed Turkish study argues that Persian, not direct Chinese contact, is the better historical bridge.','reviewed'),
(103,'chay-russian','чай','caj','/tɕaj/','noun','The Russian word for tea, placed by Vasmer in a chain through several Turkic languages ultimately reaching northern Chinese ch’a.','Russian чай is not securely a one-hop borrowing from Chinese—or even from one uniquely named Turkic language. Vasmer preserves a relay with several plausible Turkic channels.','reviewed'),
(104,'chay-urdu','چائے','cay','/tʃɑː.eː/','noun','The standard modern Urdu word for tea, recorded by Rekhta with Persian origin and a historical trail through older spellings such as چا and چاہ.','The familiar spelling چائے is not timeless. Urdu records preserve older چا and چاہ forms before the modern spelling became standard.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(241,'infopedia-portuguese-cha','Chá — Dicionário Infopédia da Língua Portuguesa','Porto Editora Editors',2026,'Porto Editora','https://www.infopedia.pt/dicionarios/lingua-portuguesa/CH%C3%81',NULL,'institutional_lexicon'),
(242,'dehkhoda-persian-chay','چای — لغت‌نامه دهخدا','Ali-Akbar Dehkhoda',1931,'Vajehyab · Dehkhoda Dictionary','https://vajehyab.com/dehkhoda/%DA%86%D8%A7%DB%8C',NULL,'historical_dictionary'),
(243,'tdk-turkish-cay','Çay — Güncel Türkçe Sözlük','Türk Dil Kurumu Editors',2023,'Türk Dil Kurumu','https://sozluk.gov.tr/?ara=%C3%A7ay',NULL,'institutional_lexicon'),
(244,'vasmer-russian-chay','Чай — Этимологический словарь русского языка','Max Vasmer',1953,'Vasmer Etymological Dictionary · Lexicography.online','https://lexicography.online/etymology/vasmer/%D1%87/%D1%87%D0%B0%D0%B9',NULL,'historical_dictionary'),
(245,'rekhta-urdu-chaae','چائے — Rekhta Dictionary','Rekhta Dictionary Editors',2026,'Rekhta Foundation','https://www.rekhtadictionary.com/meaning-of-chaae?lang=ur',NULL,'institutional_lexicon'),
(246,'boz-2012-turkish-cay','Türkçe Sözlüklerde Çok Anlamlı Sözlük Birimlerindeki Art Zamanlı Anlam Değişme Olayları ve “Çay” Örneği','Erdoğan Boz',2012,'VII. Uluslararası Türk Dili Kurultayı Bildirileri · Türk Dil Kurumu','https://tdk.gov.tr/wp-content/uploads/2019/12/VII.Kurultay-1.cilt_-1.pdf',NULL,'conference_paper'),
(247,'rekhta-urdu-chaa-history','چا — Urdu spelling history of the tea word','Shamsur Rahman Faruqi',2026,'Rekhta Dictionary · Lughat-e-Rozmarra','https://www.rekhtadictionary.com/meaning-of-chaa?lang=ur',NULL,'scholarly_lexicographic_note');
--> statement-breakpoint

UPDATE `relatives` SET `form`='چای' WHERE `id`=147;
--> statement-breakpoint
UPDATE `relatives` SET `form`='чай' WHERE `id`=149;
--> statement-breakpoint
UPDATE `relatives` SET `form`='چائے' WHERE `id`=150;
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(591,100,49,1,'chá','cha','tea-beverage','chá','/ˈʃa/','attested','Portuguese record–today',1500,NULL,'tea plant, leaves, infusion, and related current senses','Infopédia supplies the current pronunciation and labels the source Mandarin; WALS instead associates the Portuguese route with Cantonese through Macao.'),
(592,100,75,2,'茶','cha','tea-beverage','chàh / caa4',NULL,'attested','Cantonese contact form',1000,NULL,'tea','WALS identifies Cantonese cha as the source type in the Portuguese Macao route; exact historical romanization is not treated as one fixed spelling.'),
(593,100,26,3,'*lˤra','lra','tea-beverage','*lˤra',NULL,'reconstructed','Old Chinese reconstruction',-1200,200,'name of a plant','Shared canonical Old Chinese node with the tea and chai dossiers.'),
(594,100,7,4,'UNKNOWN','unknown','portuguese-cha-deep-boundary',NULL,NULL,'boundary','before the reviewed Old Chinese reconstruction',NULL,NULL,'No unique deeper ancestor is promoted by this dossier.','The trail reaches the same reviewed reconstruction as the wider tea family and stops.'),

(595,101,19,1,'چای','cay','tea-beverage','čāy',NULL,'attested','Persian, reported by the 11th century',1000,NULL,'tea','Reuses the canonical Persian graph node previously visible only as a side branch.'),
(596,101,27,2,'茶','cha','tea-beverage','chá','/ʈʂʰa˧˥/','attested','modern Mandarin',1300,NULL,'tea','Shared canonical Mandarin node.'),
(597,101,25,3,'*drae','drae','tea-beverage','*drae',NULL,'reconstructed','Middle Chinese reconstruction',600,1000,'tea; name of a plant','Shared canonical Middle Chinese reconstruction.'),
(598,101,26,4,'*lˤra','lra','tea-beverage','*lˤra',NULL,'reconstructed','Old Chinese reconstruction',-1200,200,'name of a plant','Shared canonical Old Chinese reconstruction.'),
(599,101,7,5,'UNKNOWN','unknown','persian-chay-deep-boundary',NULL,NULL,'boundary','before the reviewed Old Chinese reconstruction',NULL,NULL,'No unique deeper ancestor is promoted by this dossier.','The adoption event is uncertain, but the reviewed deep reconstruction remains explicit.'),

(600,102,55,1,'çay','cay','tea-beverage','çay','/tʃaj/','attested','Turkey Turkish record–today',1700,NULL,'tea plant, leaves, beverage, and later social-event senses','TDK documents the current lexeme; Boz separates its Chinese ultimate origin from a probable Persian bridge into historical Turkey Turkish.'),
(601,102,27,2,'茶','cha','tea-beverage','chá','/ʈʂʰa˧˥/','attested','modern Mandarin',1300,NULL,'tea','Shared canonical Mandarin node; Persian is modeled in the relation as a relay rather than fabricated as a uniquely dated intermediate form.'),
(602,102,25,3,'*drae','drae','tea-beverage','*drae',NULL,'reconstructed','Middle Chinese reconstruction',600,1000,'tea; name of a plant','Shared canonical Middle Chinese reconstruction.'),
(603,102,26,4,'*lˤra','lra','tea-beverage','*lˤra',NULL,'reconstructed','Old Chinese reconstruction',-1200,200,'name of a plant','Shared canonical Old Chinese reconstruction.'),
(604,102,7,5,'UNKNOWN','unknown','turkish-cay-deep-boundary',NULL,NULL,'boundary','before the reviewed Old Chinese reconstruction',NULL,NULL,'No unique deeper ancestor is promoted by this dossier.','The dossier preserves the relay while stopping at the reviewed Old Chinese horizon.'),

(605,103,73,1,'чай','caj','tea-beverage','čaj','/tɕaj/','attested','Russian record–today',1600,NULL,'tea','Vasmer compares several Turkic forms rather than selecting one unique direct donor.'),
(606,103,27,2,'茶','cha','tea-beverage','chá','/ʈʂʰa˧˥/','attested','modern Mandarin',1300,NULL,'tea','Shared canonical Mandarin node; the relation records the multiple Turkic relay.'),
(607,103,25,3,'*drae','drae','tea-beverage','*drae',NULL,'reconstructed','Middle Chinese reconstruction',600,1000,'tea; name of a plant','Shared canonical Middle Chinese reconstruction.'),
(608,103,26,4,'*lˤra','lra','tea-beverage','*lˤra',NULL,'reconstructed','Old Chinese reconstruction',-1200,200,'name of a plant','Shared canonical Old Chinese reconstruction.'),
(609,103,7,5,'UNKNOWN','unknown','russian-chay-deep-boundary',NULL,NULL,'boundary','before the reviewed Old Chinese reconstruction',NULL,NULL,'No unique deeper ancestor is promoted by this dossier.','The exact Turkic donor remains open while the deeper Chinese history stays explicit.'),

(610,104,74,1,'چائے','cay','tea-beverage','cāy',NULL,'attested','standard modern Urdu',1800,NULL,'tea plant, leaves, beverage, infusion, and tea gathering','Rekhta labels the current form Persian in origin and preserves historical spelling commentary under چا.'),
(611,104,27,2,'茶','cha','tea-beverage','chá','/ʈʂʰa˧˥/','attested','modern Mandarin',1300,NULL,'tea','The direct graph edge summarizes an overland borrowing family, not direct Urdu–Mandarin contact.'),
(612,104,25,3,'*drae','drae','tea-beverage','*drae',NULL,'reconstructed','Middle Chinese reconstruction',600,1000,'tea; name of a plant','Shared canonical Middle Chinese reconstruction.'),
(613,104,26,4,'*lˤra','lra','tea-beverage','*lˤra',NULL,'reconstructed','Old Chinese reconstruction',-1200,200,'name of a plant','Shared canonical Old Chinese reconstruction.'),
(614,104,7,5,'UNKNOWN','unknown','urdu-chay-deep-boundary',NULL,NULL,'boundary','before the reviewed Old Chinese reconstruction',NULL,NULL,'No unique deeper ancestor is promoted by this dossier.','Persian origin is lexicographically reported; the precise borrowing date and channel remain open.' );
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(492,100,591,592,'borrowing','Portuguese chá adapts a Cantonese cha-type form with Portuguese spelling and /ʃ/ realization; Infopédia instead labels the source Mandarin.','The meaning remains tea, later extending regularly to the plant, leaves, infusion, and social uses.','Östen Dahl · Porto Editora Editors','probable','WALS explicitly gives a Cantonese route through Macao, while Infopédia gives Mandarin. The graph follows the historically specific route and exposes the disagreement.','Portuguese contact through Macao in the sixteenth century.','reviewed'),
(493,100,592,593,'sinitic_reflex','Cantonese cha is treated as a Sinitic reflex of the word reconstructed as Old Chinese *lˤra; no false one-line sound law is invented.','The tea meaning remains stable.','Östen Dahl · William H. Baxter · Laurent Sagart','probable','WALS identifies the Cantonese cha family; Baxter and Sagart supply the reviewed Old Chinese reconstruction. Intermediate readings are not over-specified.','Old Chinese reconstruction to the historically documented Cantonese form.','reviewed'),
(494,100,593,594,'knowledge_boundary','No older form is promoted beyond Baxter and Sagart’s *lˤra in this reviewed path.','The plant-name history reaches the present editorial evidence horizon.','SET-U editorial boundary','boundary','This is a boundary of the selected evidence, not proof that no deeper proposal has ever been published.',NULL,'reviewed'),

(495,101,595,596,'borrowing','Persian čāy is reported as derived from Chinese ch’a, retaining the cha onset and adding the final glide represented in Persian transliteration.','The meaning remains tea.','Daniel Balland · Marcel Bazin','probable','Encyclopaedia Iranica gives the Chinese derivation but says the date and mechanism of Persian adoption remain uncertain.','Chinese to Persian overland transmission; Persian awareness is reported by the 11th century.','reviewed'),
(496,101,596,597,'historical_continuation','Modern Mandarin chá continues the Chinese word represented by reconstructed Middle Chinese *drae, with the onset and vowel changes summarized by the Baxter–Sagart correspondence table.','The tea meaning remains stable.','William H. Baxter · Laurent Sagart','probable','The modern form is attested, while the Middle Chinese phonological value is reconstructed.','Middle Chinese to modern Mandarin.','reviewed'),
(497,101,597,598,'historical_reconstruction','Baxter and Sagart reconstruct Middle Chinese drae from Old Chinese *lˤra for the same character 茶.','The gloss remains a plant name associated with tea.','William H. Baxter · Laurent Sagart','probable','Both phonological stages are scholarly reconstructions even though the character and lexical tradition are historically attested.','Old Chinese to Middle Chinese.','reviewed'),
(498,101,598,599,'knowledge_boundary','No older form is promoted beyond Baxter and Sagart’s *lˤra in this reviewed path.','The plant-name history reaches the present editorial evidence horizon.','SET-U editorial boundary','boundary','This is a boundary of the selected evidence, not proof that no deeper proposal has ever been published.',NULL,'reviewed'),

(499,102,600,601,'borrowing_via_persian','Turkish çay belongs to the Chinese cha/chay family, but the reviewed Turkish study argues that historical Turkey Turkish received it through Persian rather than by direct Chinese contact.','The core tea meaning remains, then Turkish develops ordinary plant, beverage, gathering, and refreshment senses.','Erdoğan Boz · Östen Dahl','probable','Boz identifies Persian as the better bridge language; WALS supports the broader overland cha-type distribution without resolving every local intermediary.','Overland transmission into historical Turkey Turkish; no exact adoption year is invented.','reviewed'),
(500,102,601,602,'historical_continuation','Modern Mandarin chá continues the Chinese word represented by reconstructed Middle Chinese *drae, with the onset and vowel changes summarized by the Baxter–Sagart correspondence table.','The tea meaning remains stable.','William H. Baxter · Laurent Sagart','probable','The modern form is attested, while the Middle Chinese phonological value is reconstructed.','Middle Chinese to modern Mandarin.','reviewed'),
(501,102,602,603,'historical_reconstruction','Baxter and Sagart reconstruct Middle Chinese drae from Old Chinese *lˤra for the same character 茶.','The gloss remains a plant name associated with tea.','William H. Baxter · Laurent Sagart','probable','Both phonological stages are scholarly reconstructions even though the character and lexical tradition are historically attested.','Old Chinese to Middle Chinese.','reviewed'),
(502,102,603,604,'knowledge_boundary','No older form is promoted beyond Baxter and Sagart’s *lˤra in this reviewed path.','The plant-name history reaches the present editorial evidence horizon.','SET-U editorial boundary','boundary','This is a boundary of the selected evidence, not proof that no deeper proposal has ever been published.',NULL,'reviewed'),

(503,103,605,606,'borrowing_via_turkic','Russian чай is traced through a relay of Turkic forms—including Turkish, Crimean Tatar, Tatar, Kyrgyz, Altai, and Uyghur comparisons—to northern Chinese ch’a; no single immediate donor is silently selected.','The tea meaning remains stable across the relay.','Max Vasmer · Östen Dahl','probable','Vasmer supports a Turkic-mediated chain but lists several candidates; WALS supplies the global overland pattern.','Historical overland transmission from China through Turkic-speaking networks into Russian.','reviewed'),
(504,103,606,607,'historical_continuation','Modern Mandarin chá continues the Chinese word represented by reconstructed Middle Chinese *drae, with the onset and vowel changes summarized by the Baxter–Sagart correspondence table.','The tea meaning remains stable.','William H. Baxter · Laurent Sagart','probable','The modern form is attested, while the Middle Chinese phonological value is reconstructed.','Middle Chinese to modern Mandarin.','reviewed'),
(505,103,607,608,'historical_reconstruction','Baxter and Sagart reconstruct Middle Chinese drae from Old Chinese *lˤra for the same character 茶.','The gloss remains a plant name associated with tea.','William H. Baxter · Laurent Sagart','probable','Both phonological stages are scholarly reconstructions even though the character and lexical tradition are historically attested.','Old Chinese to Middle Chinese.','reviewed'),
(506,103,608,609,'knowledge_boundary','No older form is promoted beyond Baxter and Sagart’s *lˤra in this reviewed path.','The plant-name history reaches the present editorial evidence horizon.','SET-U editorial boundary','boundary','This is a boundary of the selected evidence, not proof that no deeper proposal has ever been published.',NULL,'reviewed'),

(507,104,610,611,'overland_borrowing_route','Urdu cāy belongs to the cha/chay family ultimately derived from Chinese chá; Rekhta labels the current Urdu headword Persian in origin, while the graph does not invent an exact dated Persian-to-Urdu event.','The general tea meaning remains, with local extensions to infusions and social tea.','Rekhta Dictionary Editors · Östen Dahl · Merriam-Webster Editors','probable','Rekhta supports Persian origin; WALS and Merriam-Webster support the wider overland family but do not establish one complete sequence of intermediaries.','Overland transmission into the Hindi–Urdu continuum before the modern English culinary borrowing.','reviewed'),
(508,104,611,612,'historical_continuation','Modern Mandarin chá continues the Chinese word represented by reconstructed Middle Chinese *drae, with the onset and vowel changes summarized by the Baxter–Sagart correspondence table.','The tea meaning remains stable.','William H. Baxter · Laurent Sagart','probable','The modern form is attested, while the Middle Chinese phonological value is reconstructed.','Middle Chinese to modern Mandarin.','reviewed'),
(509,104,612,613,'historical_reconstruction','Baxter and Sagart reconstruct Middle Chinese drae from Old Chinese *lˤra for the same character 茶.','The gloss remains a plant name associated with tea.','William H. Baxter · Laurent Sagart','probable','Both phonological stages are scholarly reconstructions even though the character and lexical tradition are historically attested.','Old Chinese to Middle Chinese.','reviewed'),
(510,104,613,614,'knowledge_boundary','No older form is promoted beyond Baxter and Sagart’s *lˤra in this reviewed path.','The plant-name history reaches the present editorial evidence horizon.','SET-U editorial boundary','boundary','This is a boundary of the selected evidence, not proof that no deeper proposal has ever been published.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(492,102,'Chapter 138 — Portuguese import through Macao; chá from Cantonese cha','supports','Supplies the historically specific Cantonese maritime route and its status as an exception.'),
(492,241,'Etimologia — do mandarim chá','challenges','Labels the source Mandarin, preserving a live disagreement over the immediate Sinitic donor.'),
(493,102,'Chapter 138 — Cantonese cha and the Sinitic cha class','supports','Places the Cantonese form in the Chinese-derived cha family.'),
(493,105,'Table row 茶 chá, PDF page 11: Old Chinese *lˤra','supports','Supplies the reviewed Old Chinese reconstruction without fabricating an intermediate reading.'),
(494,105,'Table row 茶 chá, PDF page 11','supports','The selected reconstruction table reaches Old Chinese *lˤra; SET-U makes the end of this reviewed chain explicit.'),

(495,106,'Headword etymology and The spread of tea in the Persian world','supports','Derives Persian čāy from Chinese ch’a while explicitly preserving uncertainty over when Persian speakers first encountered the beverage.'),
(495,242,'Dehkhoda headword چای and Chinese-origin note','context','Documents the Persian lexeme and its lexicographic Chinese attribution.'),
(496,105,'Table row 茶 chá, PDF page 11','supports','Aligns Mandarin chá with reconstructed Middle Chinese drae.'),
(497,105,'Table row 茶 chá, PDF page 11','supports','Reconstructs Middle Chinese drae and Old Chinese *lˤra for 茶.'),
(498,105,'Table row 茶 chá, PDF page 11','supports','The selected reconstruction table reaches Old Chinese *lˤra; SET-U makes the end of this reviewed chain explicit.'),

(499,246,'pp. 553–564 — Chinese ultimate origin and Persian bridge into historical Turkey Turkish','supports','Argues that Persian is the more defensible bridge language rather than direct Chinese borrowing.'),
(499,102,'Chapter 138 — overland cha/chai-type distribution','context','Supplies the broader transmission tendency while preserving exceptions.'),
(499,243,'Güncel Türkçe Sözlük — çay','context','Documents the current Turkish headword and semantic branches.'),
(500,105,'Table row 茶 chá, PDF page 11','supports','Aligns Mandarin chá with reconstructed Middle Chinese drae.'),
(501,105,'Table row 茶 chá, PDF page 11','supports','Reconstructs Middle Chinese drae and Old Chinese *lˤra for 茶.'),
(502,105,'Table row 茶 chá, PDF page 11','supports','The selected reconstruction table reaches Old Chinese *lˤra; SET-U makes the end of this reviewed chain explicit.'),

(503,244,'Чай — Turkic comparisons and northern Chinese ch’a','supports','Lists multiple Turkic relay forms and avoids selecting one unique immediate donor.'),
(503,102,'Chapter 138 — overland cha/chai-type distribution','context','Places Russian in the wider land-associated cha family.'),
(503,104,'Etymology — Russian, Turkish, Persian, Hindi, and Urdu forms','context','Independently groups the Russian form with the wider chay family.'),
(504,105,'Table row 茶 chá, PDF page 11','supports','Aligns Mandarin chá with reconstructed Middle Chinese drae.'),
(505,105,'Table row 茶 chá, PDF page 11','supports','Reconstructs Middle Chinese drae and Old Chinese *lˤra for 茶.'),
(506,105,'Table row 茶 chá, PDF page 11','supports','The selected reconstruction table reaches Old Chinese *lˤra; SET-U makes the end of this reviewed chain explicit.'),

(507,245,'Headword چائے — Origin: Persian; tea senses','supports','Documents the current Urdu form, semantic field, and Persian source label.'),
(507,102,'Chapter 138 — overland cha/chai-type distribution','context','Places Urdu in the wider overland family without fixing every intermediary.'),
(507,104,'Etymology — Hindi and Urdu chay among the source forms','context','Independently places Urdu in the wider English chai source family.'),
(508,105,'Table row 茶 chá, PDF page 11','supports','Aligns Mandarin chá with reconstructed Middle Chinese drae.'),
(509,105,'Table row 茶 chá, PDF page 11','supports','Reconstructs Middle Chinese drae and Old Chinese *lˤra for 茶.'),
(510,105,'Table row 茶 chá, PDF page 11','supports','The selected reconstruction table reaches Old Chinese *lˤra; SET-U makes the end of this reviewed chain explicit.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(135,591,241,'current Infopédia lexical record',2026,'Dicionário Infopédia da Língua Portuguesa headword','chá — pronunciation, senses, and etymology','chá','established','lexical_corpus_record','Porto Editora · Infopédia',NULL,NULL,0,'The online institutional dictionary entry was inspected; this is a current lexical record, not a first-use claim.'),
(136,595,106,'first half of the 11th century, source-reported',NULL,'Bīrūnī discussion of čāy','The spread of tea in the Persian world','čāy and its use in China and Tibet','probable','lexical_corpus_record','Encyclopaedia Iranica',NULL,NULL,0,'Iranica reports Bīrūnī’s discussion. SET-U has not directly inspected the underlying manuscript or edition, and no exact year is invented.'),
(137,600,243,'2023 Güncel Türkçe Sözlük edition',2023,'Güncel Türkçe Sözlük headword','çay headword and current senses','çay','established','lexical_corpus_record','Türk Dil Kurumu',NULL,NULL,0,'The year identifies the cited dictionary edition, not the first appearance of the word in Turkish.'),
(138,605,244,'Vasmer etymological dictionary record',1953,'Vasmer чай headword','чай — etymology and Turkic comparisons','чай','established','lexical_corpus_record','Vasmer Etymological Dictionary',NULL,NULL,0,'The witness is the published etymological dictionary record, not the earliest Russian use.'),
(139,610,247,'1834 Shakespear dictionary record, source-reported',1834,'John Shakespear dictionary entry reported by Faruqi','Interesting information — older چا and چا دان spellings','چا; چا دان','probable','lexical_corpus_record','Rekhta Dictionary · A Dictionary, Hindustani and English',NULL,NULL,0,'Rekhta reports the 1834 dictionary forms. SET-U has not directly inspected the printed dictionary page; the record demonstrates an older spelling, not the origin date.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(312,100,'tea','Present-Day English','A te-type cousin whose maritime route passed through Southern Min and Dutch rather than the Portuguese Macao channel.',102),
(313,101,'chai','Present-Day English','An English specialization from the same overland chay family, without one uniquely selected donor language.',104),
(314,102,'چای','Persian','The probable bridge form identified by the reviewed Turkish study rather than a fabricated direct Chinese contact event.',246),
(315,103,'çay','Turkish','One member of the wider Turkic relay compared by Vasmer; not proven to be the one unique immediate Russian donor.',244),
(316,104,'chai','Present-Day English','A later English culinary specialization related to the ordinary Urdu word for tea.',104);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(373,100,1,'Old Chinese comparative horizon','reconstructed *lˤra','Baxter and Sagart supply the shared deep reconstruction without licensing one archaeological point.',NULL,NULL,'broad',NULL,NULL,'unresolved','A linguistic reconstruction is not a directly located settlement or exact year.'),
(374,100,2,'Macao and Cantonese maritime contact','16th century','WALS links Portuguese chá to Cantonese cha through Portuguese import activity at Macao.',22198700,113543900,'approximate',1500,1599,'century','The century describes the historically reported contact route, not one dated borrowing token.'),
(375,100,3,'Portuguese-language record','current Infopédia record','The living Portuguese headword preserves the cha-type form and /ʃ/ pronunciation.',39399900,-8224500,'regional',2026,NULL,'open','2026 identifies the consulted online record, not the beginning of Portuguese chá.'),

(376,101,1,'Chinese linguistic horizon','Old and Middle Chinese reconstructions','The Persian family ultimately reaches the same Chinese word and reconstructed stages as chai.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstruction is comparative, not a pinpointed origin event.'),
(377,101,2,'Persian scholarly awareness','first half of the 11th century','Iranica reports Bīrūnī discussing čāy and its use in China and Tibet, while refusing to equate awareness with widespread Persian adoption.',NULL,NULL,'broad',1000,1049,'range','The range expresses the source’s half-century label; it is not a first-use date.'),
(378,101,3,'Persian-language record','Dehkhoda lexicographic record–today','The Persian headword and Chinese attribution remain current in the historical dictionary tradition.',32000000,53000000,'regional',1931,NULL,'open','1931 marks the beginning of Dehkhoda dictionary publication, not the beginning of Persian čāy.'),

(379,102,1,'Chinese linguistic horizon','Old and Middle Chinese reconstructions','The Turkish word ultimately belongs to the Chinese cha family.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstruction does not identify a single transmission route or map point.'),
(380,102,2,'Persian-to-Turkey-Turkish bridge','historical route, exact date unresolved','Boz argues that Persian is the more defensible bridge language into historical Turkey Turkish.',NULL,NULL,'broad',NULL,NULL,'unresolved','The source supports the bridge but does not license one exact adoption year or settlement.'),
(381,102,3,'Turkey Turkish record','2023 dictionary edition–today','TDK records the modern form and its expanded semantic field.',39000000,35000000,'regional',2023,NULL,'open','The date identifies the current dictionary edition, not the beginning of the word.'),

(382,103,1,'Northern Chinese linguistic horizon','Chinese ch’a family','Vasmer ultimately connects Russian чай through Turkic comparisons to northern Chinese ch’a.',NULL,NULL,'broad',NULL,NULL,'unresolved','The historical-linguistic label is not reduced to one exact city or year.'),
(383,103,2,'Turkic-speaking relay networks','multiple candidate channels','Vasmer names Turkish, Crimean Tatar, Tatar, Kyrgyz, Altai, Uyghur, and Mongolian comparisons rather than one settled path.',NULL,NULL,'broad',NULL,NULL,'unresolved','The source’s multiplicity is preserved as geographic and chronological uncertainty.'),
(384,103,3,'Russian-language record','Vasmer dictionary record','The etymological dictionary anchors the modern Russian headword and its relay analysis.',55755800,37617300,'regional',1953,NULL,'open','1953 marks the cited dictionary publication, not the word’s first Russian use.'),

(385,104,1,'Chinese linguistic horizon','Old and Middle Chinese reconstructions','Urdu cāy ultimately belongs to the Chinese-derived cha/chay family.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstruction is comparative and does not erase the probable Persian relay.'),
(386,104,2,'Historical Urdu record','late 17th–19th-century spelling evidence','Rekhta reports چاہ in a Shah Mubarak Abru verse and چا in Shakespear’s 1834 dictionary before modern چائے became standard.',NULL,NULL,'broad',1685,1834,'range','The range combines separately reported witnesses; it is not a claim of continuous exclusive spelling.'),
(387,104,3,'Urdu-language record','standard modern spelling–today','Rekhta records چائے as the current standard form and labels its origin Persian.',NULL,NULL,'broad',2026,NULL,'open','2026 identifies the consulted record, not the beginning of the standard spelling.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(373,105,'Table row 茶 chá, PDF page 11','supports','Supplies the reviewed Old Chinese horizon.'),
(374,102,'Chapter 138 — Portuguese import through Macao and Cantonese cha','supports','Supplies the contact location, century, and exceptional cha-type route.'),
(375,241,'Headword, pronunciation, and etymology','supports','Documents the current Portuguese form.'),
(375,102,'Chapter 138 — Portuguese chá exception','context','Places the living word in the wider global distribution.'),
(376,105,'Table row 茶 chá, PDF page 11','supports','Supplies the reviewed Chinese reconstructions.'),
(377,106,'The spread of tea in the Persian world — Bīrūnī','supports','Reports first-half-eleventh-century awareness while preserving adoption uncertainty.'),
(378,242,'Dehkhoda headword چای','supports','Documents the Persian lexicographic record.'),
(378,106,'Headword and Persian-world history','context','Connects the living form to the earlier source report.'),
(379,105,'Table row 茶 chá, PDF page 11','supports','Supplies the reviewed Chinese reconstructions.'),
(380,246,'pp. 553–564 — Persian as bridge language','supports','Supplies the historically argued relay and warrants the unresolved date.'),
(380,106,'Persian čāy etymology and uncertain adoption','context','Documents the proposed bridge language without a precise event date.'),
(381,243,'Güncel Türkçe Sözlük — çay','supports','Documents the current Turkish headword.'),
(382,244,'Чай — northern Chinese ch’a endpoint','supports','Supplies the ultimate Chinese attribution.'),
(383,244,'Чай — Turkish, Crimean Tatar, Tatar, Kyrgyz, Altai, Uyghur, and Mongolian comparisons','supports','Supplies the multiple relay candidates.'),
(383,102,'Chapter 138 — overland cha distribution','context','Provides the global distributional frame.'),
(384,244,'Чай headword','supports','Anchors the Russian lexical record.'),
(385,105,'Table row 茶 chá, PDF page 11','supports','Supplies the reviewed Chinese reconstructions.'),
(386,247,'Interesting information — Abru, Shakespear 1834, and older spellings','supports','Reports the historical Urdu spelling evidence and its date limits.'),
(387,245,'Headword چائے — Origin: Persian','supports','Documents the standard modern spelling and source label.'),
(387,247,'Modern standard spelling discussion','context','States that چائے has displaced older چا and چاہ in standard usage.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(178,100,'Was Portuguese chá borrowed specifically from Cantonese or from Mandarin?','WALS gives a Cantonese cha route through Macao; Infopédia labels the source Mandarin chá. The shared cha-type Chinese family is secure, but the immediate variety label is not unanimous.','probable','A typological-historical source and Portuguese institutional dictionary disagree at the donor-variety level.','open','The graph follows the more historically specific Macao–Cantonese route at probable confidence and cites the challenge on the edge.'),
(179,100,'Does Portuguese chá disprove the sea-versus-land rule?','It disproves the rule as a universal law, not the global tendency. Portuguese merchants used a maritime route yet Portuguese retained a cha-type form.','established','WALS names Portuguese chá as an exception while still documenting the broad maritime te and overland cha distributions.','resolved','The leaderboard turns the exception into a lesson about probabilistic historical patterns.'),
(180,101,'When and how did Persian adopt čāy?','The exact date and mechanism remain unknown. Iranica derives the word from Chinese ch’a but explicitly says the adoption event is uncertain.','boundary','The strongest reviewed Persian reference separates etymological origin from an undocumented borrowing event.','open','No fabricated caravan, intermediary language, or exact year is placed in the graph.'),
(181,101,'Does Bīrūnī prove tea was already a common Persian drink in the 11th century?','No. The report proves learned awareness and discussion of use in China and Tibet; Iranica says this does not establish broad Persian consumption at that time.','established','Iranica distinguishes early textual awareness from the later spread of tea in the Persian world.','resolved','The attestation is labeled a secondary report of awareness, not a Persian first-use token.'),
(182,102,'Was Turkish çay borrowed directly from Chinese?','The ultimate source is Chinese, but Boz argues that Persian is the more credible bridge into historical Turkey Turkish. “From Chinese” is genealogically true and historically incomplete.','probable','The Turkish scholarly study evaluates dictionary traditions and explicitly favors Persian as the bridge language.','resolved','The relation type names the Persian relay and retains probable confidence.'),
(183,102,'Can Turkish çay be assigned one exact borrowing date?','Not from the reviewed evidence. The route can be argued more securely than a single adoption year.','boundary','The current dictionary and diachronic semantic study document the word and its path without licensing one exact first token.','open','The journey stage keeps both date and point unresolved.'),
(184,103,'Which Turkic language directly supplied Russian чай?','Vasmer lists several Turkic comparanda and routes but does not reduce them to one uniquely established immediate donor.','probable','The historical dictionary explicitly preserves Turkish, Crimean Tatar, Tatar, Kyrgyz, Altai, Uyghur, and Mongolian comparisons.','open','The graph uses a Turkic-relay relation instead of a fabricated one-language parent.'),
(185,103,'Is Russian чай simply a direct Chinese loan?','No secure one-hop event is established. Vasmer’s etymology routes the word through Turkic-speaking networks before reaching Chinese ch’a.','probable','Vasmer supplies the mediated chain; WALS supplies the broader overland distribution.','resolved','The dossier distinguishes ultimate origin from transmission history.'),
(186,104,'Has Urdu always spelled the tea word چائے?','No. Rekhta’s historical note reports older چا and چاہ spellings and says modern standard usage has largely converged on چائے.','established','The lexicographic note cites Abru, Shakespear’s 1834 dictionary, and later dictionaries while distinguishing modern standard usage.','resolved','Historical spelling evidence is preserved as attestations rather than invented ancestor nodes.'),
(187,104,'Did Urdu receive cāy directly from Chinese or through Persian?','Rekhta labels the current Urdu headword Persian in origin, while the wider references establish only the Chinese-derived overland family. Persian is therefore probable as the immediate source, not promoted as a uniquely dated event.','probable','Urdu lexicography supplies the Persian label; WALS and Merriam-Webster supply the broader family context.','open','The edge encodes the overland family and states the probable Persian relay in its confidence note.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(178,102,'Chapter 138 — Portuguese chá from Cantonese cha through Macao','supports','Supplies the historically specific donor claim.'),
(178,241,'Etimologia — do mandarim chá','challenges','Supplies the competing Mandarin donor label.'),
(179,102,'Chapter 138 — Portuguese exception and global values','supports','Demonstrates the exception while retaining the distributional tendency.'),
(179,241,'Portuguese chá headword','context','Documents the exceptional living form.'),
(180,106,'Headword etymology and adoption uncertainty','supports','Explicitly leaves the date and mechanism unresolved.'),
(180,242,'Dehkhoda headword and origin note','context','Documents the Persian lexeme without resolving the event.'),
(181,106,'The spread of tea in the Persian world — Bīrūnī passage','supports','Separates early knowledge from later widespread drinking.'),
(181,242,'Dehkhoda headword','context','Anchors the later lexicographic form.'),
(182,246,'pp. 553–564 — Persian bridge conclusion','supports','Argues for mediated rather than direct borrowing into Turkey Turkish.'),
(182,102,'Chapter 138 — overland family','context','Supplies the global transmission pattern.'),
(183,246,'Diachronic history and conclusion','supports','Documents change without a defensible single adoption date.'),
(183,243,'Current çay headword','context','Documents the endpoint rather than the origin event.'),
(184,244,'Чай — Turkic and Mongolian comparison chain','supports','Preserves multiple plausible channels.'),
(184,104,'Etymology — Russian and other chay forms','context','Places the form in the wider family without choosing a donor.'),
(185,244,'Чай — path to northern Chinese ch’a','supports','Supplies the mediated historical analysis.'),
(185,102,'Chapter 138 — overland tendency','context','Provides the global route-level context.'),
(186,247,'Interesting information — چا, چاہ, چاء, and modern چائے','supports','Documents spelling variation and modern standardization.'),
(186,245,'Current چائے headword','context','Anchors the modern standard form.'),
(187,245,'Headword metadata — Origin: Persian','supports','Supplies the immediate-source label.'),
(187,102,'Chapter 138 — overland cha family','context','Supplies ultimate Chinese-family context without a local event sequence.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(85,100,2001,'chá','The maritime rule has a maritime exception.','Portuguese chá crossed through Macao by sea yet belongs to the cha-type family usually associated with overland diffusion. Historical tendencies are not laws.','A',100,'WALS identifies the contact route and explicitly treats Portuguese as an exception.'),
(86,101,2002,'چای','An 11th-century mention is not an 11th-century mass habit.','Bīrūnī’s report establishes Persian scholarly awareness of čāy; it does not date widespread Persian drinking, and Iranica leaves the adoption mechanism unknown.','A',99,'The scholarly reference explicitly distinguishes awareness, adoption uncertainty, and later spread.'),
(87,102,2003,'çay','“From Chinese” can be true and still hide the history.','Turkish çay ultimately belongs to the Chinese cha family, but the reviewed Turkish study favors Persian as the bridge into historical Turkey Turkish.','A-',100,'A- reflects confidence in the relay argument without inventing one dated borrowing token.'),
(88,103,2004,'чай','The route is a network, not an arrow.','Russian чай reaches Chinese ch’a through a cluster of Turkic comparisons. Vasmer does not license one clean, uniquely named donor language.','A-',99,'The source is explicit about the comparison chain but not a single immediate donor.'),
(89,104,2005,'چائے','The modern spelling arrived after the word.','Urdu historical records preserve چا and چاہ before standard modern چائے displaced them. A familiar written form can be the newest layer of an older spoken history.','A',100,'Rekhta’s scholarly note supplies named historical witnesses and distinguishes current standard usage.');
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
(85,102,'Chapter 138 — Portuguese import through Macao and exception to the broad distribution','supports','Secures the counterexample and the larger pattern.'),
(85,241,'Current Portuguese chá headword','context','Documents the living form.'),
(86,106,'Bīrūnī report and uncertain Persian adoption','supports','Distinguishes textual awareness from widespread adoption.'),
(86,242,'Dehkhoda headword','context','Documents the Persian lexical endpoint.'),
(87,246,'pp. 553–564 — Persian bridge conclusion','supports','Supplies the hidden relay.'),
(87,102,'Chapter 138 — overland cha family','context','Supplies ultimate-family and distribution context.'),
(88,244,'Чай — multi-language relay comparison','supports','Supplies the network rather than one arrow.'),
(88,104,'Etymology — Russian among the chay forms','context','Independently places the word in the wider family.'),
(89,247,'Interesting information — historical spelling witnesses','supports','Documents older forms and modern standardization.'),
(89,245,'Current چائے headword','context','Documents the modern endpoint.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(63,100,36,'THE SHIP THAT BROKE THE RULE','Portuguese chá and English tea both traveled through maritime exchange, yet one kept a Cantonese-associated cha form and the other followed Southern Min te through Dutch.',100,'A','reviewed'),
(64,101,37,'THE ENGLISH SPECIALTY WAS ONCE AN ORDINARY WORD','English chai specializes toward a South Asian preparation; Persian čāy remains the everyday word tea, and both rejoin the Chinese family.',99,'A-','reviewed'),
(65,102,101,'THE INVISIBLE BRIDGE BETWEEN CHINA AND TURKEY','Turkish çay and Persian چای share more than shape: the reviewed Turkish study makes Persian the probable historical bridge.',100,'A-','reviewed'),
(66,103,102,'THE WORD CROSSED A NETWORK, NOT A BORDER','Russian чай and Turkish çay sit in a broader Turkic relay whose exact immediate donor remains unresolved.',99,'A-','reviewed'),
(67,104,37,'THE SPELLING CHANGED BEFORE ENGLISH SPECIALIZED THE MEANING','Urdu چائے preserves an ordinary word for tea with older spellings behind it; English chai later narrows the family word toward a culinary style.',99,'A-','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 591 AND 614
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
WHERE f.id BETWEEN 591 AND 614;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 492 AND 510;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 492 AND 510;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 492 AND 510;
