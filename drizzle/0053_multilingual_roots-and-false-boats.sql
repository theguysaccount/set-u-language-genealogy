-- Deepen three borrowing families in their source languages and preserve one
-- exceptionally deceptive false cognate. Māori tapu and Hawaiian kapu join
-- taboo through Proto-Oceanic *tampu, Spanish aguacate becomes independently
-- searchable, Greenlandic qajaq extends kayak into Eskimo prehistory, and
-- Turkish kayık remains a cited chance resemblance rather than a fake ancestor.

INSERT INTO `languages` (`id`,`slug`,`name`,`family`,`branch`,`reconstructed`,`date_start`,`date_end`,`notes`) VALUES
(67,'maori','Māori','Austronesian','Eastern Polynesian',0,1200,NULL,'Te reo Māori of Aotearoa New Zealand; tapu preserves the widespread Oceanic sacred and restricted semantic field.'),
(68,'hawaiian','Hawaiian','Austronesian','Marquesic · Eastern Polynesian',0,1000,NULL,'ʻŌlelo Hawaiʻi; kapu shows the regular Hawaiian *t to k development while preserving sacred and prohibited senses.'),
(69,'greenlandic','Greenlandic','Eskimo-Aleut','Inuit',0,1200,NULL,'Kalaallisut and related Greenlandic varieties represented by the official qajaq terminology record.'),
(70,'proto-eskimo','Proto-Eskimo','Eskimo-Aleut','Eskimo',1,-2500,500,'Comparative reconstruction used cautiously for the kayak word family; exact notation and derivation remain source-dependent.'),
(71,'old-turkic','Old Turkic','Turkic','Common Turkic',0,700,1300,'Historical Turkic represented here by the eleventh-century kayguk record discussed in the reviewed philological source.'),
(72,'proto-turkic','Proto-Turkic','Turkic','Proto-Turkic',1,-2000,500,'Reconstructed Turkic represented only to the depth supported by the reviewed kayık analysis.');
--> statement-breakpoint

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(95,'tapu','tapu','tapu','/ˈta.pu/','stative · modifier · noun','A Māori word for what is sacred, prohibited, restricted, set apart, or under atua protection, inherited within the wider Oceanic *tampu family.','Māori tapu is not an English loan and English taboo was not borrowed from Māori. They are historical cousins: English came from Tongan, while Māori independently preserves the older Oceanic family.','reviewed'),
(96,'kapu','kapu','kapu','/ˈka.pu/','adjective · noun · verb','A Hawaiian word for what is prohibited, sacred, consecrated, or set apart, continuing the Oceanic tapu family through the characteristic Hawaiian *t to k sound change.','Kapu is not a misspelling of tapu. Its k is the visible result of a regular Hawaiian sound change, while the sacred and prohibited semantic field stayed remarkably stable.','reviewed'),
(97,'aguacate','aguacate','aguacate','/aɣwaˈkate/','noun','The Spanish word for the avocado tree and fruit, borrowed from Nahuatl āhuacatl, whose historical records include both fruit and testicle senses.','Aguacate preserves the Indigenous source more transparently than English avocado. The famous anatomical story rests on real Nahuatl polysemy, but the evidence still does not prove which sense named the other.','reviewed'),
(98,'qajaq','qajaq','qajaq','/qa.jaq/','noun','The Greenlandic word for a kayak, part of an Inuit and Proto-Eskimo word family whose history is independent of the nearly identical Turkish boat word kayık.','Qajaq and Turkish kayık look alike and both mean boat—yet the best philological analysis gives them separate Eskimo and Turkic prehistories. Similar form plus identical meaning is still not proof of kinship.','reviewed'),
(99,'kayik','kayık','kayık','/kaˈjɯk/','noun','The Turkish word for a small boat, continued from Old Turkic kayguk and analyzed within an internal Turkic history rather than the Inuit qayaq family.','Kayık is the false cognate that should fool almost everyone: it resembles kayak and means a small boat, but its documented Old Turkic history rules out the seductive Inuit connection.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(235,'te-aka-tapu','Tapu — Te Aka Māori Dictionary','John C. Moorfield',2026,'Te Aka Māori Dictionary · Te Murumāra Foundation','https://maoridictionary.co.nz/search?keywords=tapu',NULL,'institutional_lexicon'),
(236,'wehewehe-kapu','Kapu — Nā Puke Wehewehe ʻŌlelo Hawaiʻi','Lorrin Andrews et al.',1836,'University of Hawaiʻi at Hilo · Ulukau','https://wehe.hilo.hawaii.edu/?q=kapu',NULL,'historical_dictionary'),
(237,'blust-2004-t-to-k','*t to k: An Austronesian Sound Change Revisited','Robert A. Blust',2004,'Oceanic Linguistics · University of Hawaiʻi Press','https://uhpress.hawaii.edu/oceanic-linguistics-vol-43-no-2-2004/','10.1353/ol.2005.0001','scholarly_article'),
(238,'alonso-2010-kayik-qayaq','Urban legends: Turkish kayık “boat” and “Eskimo” qayaq “kayak”','José Andrés Alonso de la Fuente',2010,'Studia Linguistica Universitatis Iagellonicae Cracoviensis · Jagiellonian University Repository','https://ruj.uj.edu.pl/entities/publication/b7857f75-e4d6-4fe5-a369-4c0f34dcae1e',NULL,'scholarly_article'),
(239,'tdk-kayik','Kayık — Güncel Türkçe Sözlük','Türk Dil Kurumu Editors',2023,'Türk Dil Kurumu','https://sozluk.gov.tr/?aranan=kay%C4%B1k',NULL,'institutional_lexicon'),
(240,'unam-gdn-ahuacatl','Ahuacatl — Gran Diccionario Náhuatl','Universidad Nacional Autónoma de México Editors',2012,'Instituto de Investigaciones Bibliográficas · UNAM','https://gdn.iib.unam.mx/diccionario/ahuacatl/181685',NULL,'historical_dictionary');
--> statement-breakpoint

-- Replace kayak's former terminal boundary with the published Proto-Eskimo
-- formation, then give the now-deeper dossier a new explicit boundary.
UPDATE `forms`
SET `language_id`=70, `form`='*qan-yaq', `normalized_form`='qan-yaq',
    `sense_key`='kayak-formation', `status`='reconstructed',
    `date_label`='Proto-Eskimo reconstruction', `date_start`=-2500, `date_end`=500,
    `gloss`='reconstructed kayak formation',
    `notes`='Alonso de la Fuente reconstructs a distinct Proto-Eskimo *qan-yaq history; the dates are only a broad comparative horizon.'
WHERE `id`=352;
--> statement-breakpoint

UPDATE `lexeme_nodes`
SET `canonical_key`='node:70:qan-yaq:reconstructed:sense:kayak-formation',
    `language_id`=70, `form`='*qan-yaq', `normalized_form`='qan-yaq',
    `sense_key`='kayak-formation', `status`='reconstructed',
    `date_label`='Proto-Eskimo reconstruction', `date_start`=-2500, `date_end`=500,
    `gloss`='reconstructed kayak formation',
    `notes`='Shared Proto-Eskimo horizon for the broad Inuit qayaq and Greenlandic qajaq dossiers; exact donor identity for English remains unresolved.'
WHERE `id`=330 AND `canonical_key`='boundary:55:3';
--> statement-breakpoint

UPDATE `relations`
SET `relation_type`='proposed_inheritance',
    `sound_change`='The broad Inuit qayaq form is compared with Proto-Eskimo *qan-yaq; the notation is source-dependent and does not identify one modern donor variety.',
    `semantic_change`='The kayak or skin-boat referent remains central across the comparison.',
    `scholar`='José Andrés Alonso de la Fuente', `confidence`='probable',
    `confidence_note`='A specialist philological analysis supports a distinct Eskimo reconstruction, while the English dictionary supplies only the broad label Inuit.',
    `chronology_note`='Proto-Eskimo reconstruction precedes attested Inuit forms.',
    `editorial_status`='reviewed'
WHERE `id`=297;
--> statement-breakpoint

UPDATE `lexeme_edges`
SET `relation_type`='proposed_inheritance',
    `sound_change`='The broad Inuit qayaq form is compared with Proto-Eskimo *qan-yaq; the notation is source-dependent and does not identify one modern donor variety.',
    `semantic_change`='The kayak or skin-boat referent remains central across the comparison.',
    `scholar`='José Andrés Alonso de la Fuente', `confidence`='probable',
    `confidence_note`='A specialist philological analysis supports a distinct Eskimo reconstruction, while the English dictionary supplies only the broad label Inuit.',
    `chronology_note`='Proto-Eskimo reconstruction precedes attested Inuit forms.',
    `editorial_status`='reviewed'
WHERE `id`=316;
--> statement-breakpoint

UPDATE `relation_sources`
SET `stance`='context',
    `evidence_note`=CASE `source_id`
      WHEN 140 THEN 'Supplies the broad Inuit qayaq stage and English borrowing, but no deeper reconstruction.'
      WHEN 141 THEN 'Supplies the living Greenlandic qajaq comparison without identifying the unique English donor.'
      ELSE `evidence_note` END
WHERE `relation_id`=297;
--> statement-breakpoint

UPDATE `lexeme_edge_sources`
SET `stance`='context',
    `evidence_note`=CASE `source_id`
      WHEN 140 THEN 'Supplies the broad Inuit qayaq stage and English borrowing, but no deeper reconstruction.'
      WHEN 141 THEN 'Supplies the living Greenlandic qajaq comparison without identifying the unique English donor.'
      ELSE `evidence_note` END
WHERE `edge_id`=316;
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(297,238,'Abstract and pp. 7–24 — recoverable Eskimo stages *qan-yaq and *qan(ə)-','supports','Publishes the separate Eskimo reconstruction used to extend the former boundary.');
--> statement-breakpoint

INSERT INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(316,238,'Abstract and pp. 7–24 — recoverable Eskimo stages *qan-yaq and *qan(ə)-','supports','Publishes the separate Eskimo reconstruction used to extend the former boundary.');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(573,55,7,4,'UNKNOWN','unknown','kayak-proto-eskimo-boundary',NULL,NULL,'boundary','before the reviewed Proto-Eskimo formation',NULL,NULL,'No deeper ancestor is promoted beyond the reviewed Proto-Eskimo analysis.','The new boundary preserves the article''s stated depth without importing speculative macro-family comparisons.'),

(574,95,67,1,'tapu','tapu','sacred-prohibited',NULL,'/ˈta.pu/','attested','Māori record–today',1800,NULL,'sacred, prohibited, restricted, set apart, or under atua protection','Te Aka preserves a cultural and grammatical field broader than the casual English sense taboo.'),
(575,95,42,2,'*tampu','tampu','ritual-restriction',NULL,NULL,'reconstructed','Proto-Oceanic reconstruction',-2000,-1000,'sacred, forbidden; under ritual restriction','Reuses the canonical reconstruction already reached by taboo.'),
(576,95,7,3,'UNKNOWN','unknown','tapu-deep-boundary',NULL,NULL,'boundary','before Proto-Oceanic *tampu',NULL,NULL,'No deeper ancestor is promoted beyond the reviewed comparative reconstruction.','The trail stops at the cited Oceanic horizon.'),

(577,96,68,1,'kapu','kapu','sacred-prohibited',NULL,'/ˈka.pu/','attested','Hawaiian record–today',1800,NULL,'prohibited, forbidden, sacred, consecrated, or set apart','Historical Hawaiian dictionaries preserve nominal, adjectival, and verbal uses.'),
(578,96,42,2,'*tampu','tampu','ritual-restriction',NULL,NULL,'reconstructed','Proto-Oceanic reconstruction',-2000,-1000,'sacred, forbidden; under ritual restriction','Reuses the canonical reconstruction already reached by taboo and tapu.'),
(579,96,7,3,'UNKNOWN','unknown','kapu-deep-boundary',NULL,NULL,'boundary','before Proto-Oceanic *tampu',NULL,NULL,'No deeper ancestor is promoted beyond the reviewed comparative reconstruction.','The trail stops at the cited Oceanic horizon.'),

(580,97,44,1,'aguacate','aguacate','fruit',NULL,'/aɣwaˈkate/','attested','Spanish record–today',1500,NULL,'avocado tree, fruit, and later extended Spanish senses','Reuses the canonical Spanish stage already reached by avocado.'),
(581,97,46,2,'āhuacatl','ahuacatl','fruit-testicle-polysemy','āhuacatl',NULL,'attested','Classical Nahuatl record',1500,1700,'avocado fruit; testicle','UNAM preserves multiple historical dictionary witnesses and the documented polysemy.'),
(582,97,7,3,'UNKNOWN','unknown','aguacate-nahuatl-boundary',NULL,NULL,'boundary','before Nahuatl āhuacatl',NULL,NULL,'No securely reviewed deeper ancestor or direction between the two senses is promoted.','The graph preserves the attested word and stops before the viral origin story.'),

(583,98,69,1,'qajaq','qajaq','skin-boat',NULL,'/qa.jaq/','attested','Greenlandic record–today',1700,NULL,'kayak; traditional narrow hunting and travel craft','Oqaasileriffik publishes qajaq and a large living terminology around the craft.'),
(584,98,70,2,'*qan-yaq','qan-yaq','kayak-formation',NULL,NULL,'reconstructed','Proto-Eskimo reconstruction',-2500,500,'reconstructed kayak formation','Reuses the node that now deepens the English kayak dossier.'),
(585,98,70,3,'*qan(ə)-','qanə','approach-go-near',NULL,NULL,'reconstructed','deeper Proto-Eskimo analysis',-2500,500,'to go or come near','Alonso de la Fuente proposes this internal Eskimo base; the exact derivation remains analytical.'),
(586,98,7,4,'UNKNOWN','unknown','qajaq-deep-boundary',NULL,NULL,'boundary','before the reviewed Proto-Eskimo base',NULL,NULL,'No deeper ancestor is promoted beyond *qan(ə)-.','The trail rejects the tempting Turkish comparison and stops.'),

(587,99,55,1,'kayık','kayık','small-boat',NULL,'/kaˈjɯk/','attested','Modern Turkish',1900,NULL,'small boat or rowboat','The Turkish Language Association preserves the modern headword.'),
(588,99,71,2,'kayguk','kayguk','small-boat',NULL,NULL,'attested','Old Turkic, 11th century',1000,1100,'small boat','The philological study identifies kayguk as the oldest recoverable Turkic stage.'),
(589,99,72,3,'*kad- / *kad-ï','kad kadi','fir-tree-wood-root',NULL,NULL,'reconstructed','Proto-Turkic analysis',-2000,500,'fir tree; reconstructed base proposed in the boat-word history','The source also discusses a competing *kay- “turn, bend” analysis; both remain visible in the dispute record.'),
(590,99,7,4,'UNKNOWN','unknown','kayik-deep-boundary',NULL,NULL,'boundary','before the reviewed Proto-Turkic analysis',NULL,NULL,'No deeper ancestor is promoted beyond the competing Turkic analyses.','The boundary prevents a chance resemblance to Inuit from becoming a fabricated connection.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(479,55,352,573,'knowledge_boundary','No still deeper form is promoted beyond *qan-yaq in the reviewed kayak dossier.','The kayak lineage reaches the reviewed Proto-Eskimo formation and stops.','SET-U editorial boundary · José Andrés Alonso de la Fuente','boundary','The specialist article proposes a deeper base for qajaq, modeled in that dossier, while the English donor variety remains unresolved.',NULL,'reviewed'),

(480,95,574,575,'inheritance','Māori tapu preserves the t and vowels of the wider Oceanic comparison; intermediate subgroup stages are not invented.','Sacredness, prohibition, restriction, and being set apart remain central.','POLLEX editors · John C. Moorfield','probable','The Māori word is attested; *tampu is a comparative reconstruction.',NULL,'reviewed'),
(481,95,575,576,'knowledge_boundary','No deeper form is promoted beyond Proto-Oceanic *tampu.','The Māori dossier reaches the current reviewed comparative horizon.','SET-U editorial boundary · POLLEX editors','boundary',NULL,NULL,'reviewed'),

(482,96,577,578,'inheritance','Hawaiian kapu reflects the characteristic Hawaiian development of earlier *t to k after the older k-space changed; the rest of the form remains visibly close.','Sacred, prohibited, consecrated, and set-apart senses continue across the family.','Robert A. Blust · POLLEX editors','probable','POLLEX supplies the lexical comparison; Blust documents the Hawaiian *t to k sound change and its historical complexity.',NULL,'reviewed'),
(483,96,578,579,'knowledge_boundary','No deeper form is promoted beyond Proto-Oceanic *tampu.','The Hawaiian dossier reaches the current reviewed comparative horizon.','SET-U editorial boundary · POLLEX editors','boundary',NULL,NULL,'reviewed'),

(484,97,580,581,'borrowing','Spanish aguacate adapted Nahuatl āhuacatl to Spanish phonology and spelling.','The avocado sense was carried into Spanish, while the source word’s testicle sense did not become the ordinary Spanish fruit meaning.','Merriam-Webster Editors · RAE · ASALE editors','established','Both dictionaries explicitly give Nahuatl āhuacatl or ahuacatl and document its avocado and testicle senses.','Colonial-era transfer into Spanish; no invented exact year.','reviewed'),
(485,97,581,582,'knowledge_boundary','No deeper form or semantic derivation direction is promoted beyond the documented Nahuatl word.','The graph preserves fruit-and-testicle polysemy without converting it into an unsupported naming event.','SET-U editorial boundary · RAE · UNAM','boundary',NULL,NULL,'reviewed'),

(486,98,583,584,'inheritance','Greenlandic qajaq continues the independently reconstructed Proto-Eskimo kayak formation; exact intermediate dialect stages are not over-specified.','The watercraft referent remains central.','José Andrés Alonso de la Fuente · Oqaasileriffik','probable','The Greenlandic form is attested and the Proto-Eskimo form reconstructed.',NULL,'reviewed'),
(487,98,584,585,'proposed_derivation','The source analyzes *qan-yaq within Proto-Eskimo from *qan(ə)-; the notation is preserved without inventing an unattested segment-by-segment derivation.','A motion or approach base is proposed beneath the lexicalized kayak formation.','José Andrés Alonso de la Fuente','proposed','The deeper internal analysis is published but remains analytical rather than directly attested.',NULL,'reviewed'),
(488,98,585,586,'knowledge_boundary','No deeper form is promoted beyond the reviewed Proto-Eskimo base.','The graph stops before speculative macro-family comparison.','SET-U editorial boundary · José Andrés Alonso de la Fuente','boundary',NULL,NULL,'reviewed'),

(489,99,587,588,'historical_continuation','Old Turkic kayguk develops into Turkish kayık through documented Turkic consonant-cluster reduction and vowel history; it does not descend from Inuit qayaq.','The small-boat referent remains central.','José Andrés Alonso de la Fuente · Türk Dil Kurumu','established','The historical and modern forms are independently documented.',NULL,'reviewed'),
(490,99,588,589,'proposed_derivation','The reviewed study places kayguk in an internal Turkic *kad- / *kad-ï history; a competing *kay- “turn, bend” account remains open.','A fir-tree or wood base is proposed to have developed into a boat word, plausibly through material association.','José Andrés Alonso de la Fuente','proposed','The historical kayguk form is secure; the deeper derivational analysis is disputed.',NULL,'reviewed'),
(491,99,589,590,'knowledge_boundary','No deeper form is promoted beyond the competing Turkic analyses.','The dossier ends inside Turkic and explicitly rejects chance similarity as ancestry.','SET-U editorial boundary · José Andrés Alonso de la Fuente','boundary',NULL,NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(479,238,'Abstract and pp. 7–24 — recoverable Proto-Eskimo stages','supports','Supplies the deepest reviewed formation and warrants the new boundary.'),
(480,139,'New Zealand Maori reflex under OC.TAPU; POC *tampu note','supports','Directly compares Māori tapu with the Oceanic reconstruction.'),
(480,235,'Tapu definitions 1–4','supports','Documents the attested Māori form and full semantic field.'),
(481,139,'POC *tampu reconstruction endpoint','supports','Supplies the deepest promoted comparative form.'),
(482,139,'Hawaiian kapu reflex under OC.TAPU; POC *tampu note','supports','Directly compares Hawaiian kapu with the Oceanic reconstruction.'),
(482,237,'pp. 365–410 — Hawaiian *t to k','supports','Documents the sound change and its historical and dialectal complexity.'),
(482,236,'Kapu entries from Andrews 1836 and 1865','supports','Documents the attested Hawaiian form and semantic field.'),
(483,139,'POC *tampu reconstruction endpoint','supports','Supplies the deepest promoted comparative form.'),
(484,145,'Etymology: del náhuatl ahuacatl','supports','Identifies the Nahuatl source and both reported senses.'),
(484,240,'Ahuacatl entries and translations, including Molina 1571','supports','Independently documents the historical Nahuatl form and its fruit and anatomical senses.'),
(485,145,'Etymology ending at Nahuatl ahuacatl','supports','Does not supply a secure deeper ancestor or semantic direction.'),
(485,240,'Historical entry inventory for ahuacatl','supports','Documents polysemy without deciding which sense generated the other.'),
(486,141,'Qajaq-terms — qajaq and derived terminology','supports','Documents the living Greenlandic form and watercraft field.'),
(486,238,'Abstract and pp. 7–24 — Greenlandic and Proto-Eskimo history','supports','Places qajaq in the separate Eskimo reconstruction.'),
(487,238,'Abstract — *qan-yaq from Proto-Eskimo *qan(ə)-','supports','Publishes the proposed internal derivation.'),
(488,238,'Conclusion and recoverable-stage limit','supports','Supports stopping before the rejected Turkic comparison or deeper speculation.'),
(489,239,'Güncel Türkçe Sözlük — kayık','supports','Documents the current Turkish headword.'),
(489,238,'pp. 7–24 — Old Turkic kayguk and modern Turkish kayık','supports','Documents the historical continuation inside Turkic.'),
(490,238,'Abstract and Turkic analysis — kayguk, *kad- / *kad-ï, and competing *kay- account','supports','Publishes the secure historical stage and competing deeper analyses.'),
(491,238,'Conclusion — no genealogical or areal relation to qayaq','supports','Supports the Turkic boundary and explicit rejection of false ancestry.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(130,574,235,'1872 corpus example reported by Te Aka',1872,'Te Waka Maori o Niu Tirani example','Tapu definition 4; TWMNT 3/4/1872:58','a karakia whakahorohoro i ngā tapu o ngā tāngata','established','lexical_corpus_record','Te Aka Māori Dictionary',NULL,NULL,0,'The dated example is source-reported. SET-U has not directly inspected the underlying newspaper page.'),
(131,577,236,'1836 Hawaiian dictionary record',1836,'Andrews Hawaiian dictionary entry','Ka-pu entries, Andrews 1836','prohibited, forbidden, sacred, devoted to certain purposes','established','lexical_corpus_record','Nā Puke Wehewehe ʻŌlelo Hawaiʻi · Ulukau',NULL,NULL,0,'The dictionary record is reproduced by the institutional portal; SET-U has not inspected the original printed page as an artifact.'),
(132,581,240,'1571 Molina dictionary record',1571,'Molina 1571 Nahuatl dictionary entry','Ahuacatl — Molina 2','fruta conocida, o el compañon','established','lexical_corpus_record','Gran Diccionario Náhuatl · UNAM',NULL,NULL,0,'UNAM reports the historical dictionary entry. SET-U has not directly inspected Molina''s original printed page.'),
(133,583,141,'1987 qajaq terminology record',1987,'Qajaq. Inoqarfinni tamani','Qajaq-terms — qajaq row','qajaq | kayak','established','lexical_corpus_record','Oqaasileriffik · Atuakkiorfik',NULL,NULL,0,'The institutional terminology record is source-reported; no underlying 1987 page image was directly inspected.'),
(134,588,238,'11th-century kayguk report',1070,'Dīwān Lughāt al-Turk record discussed by Alonso de la Fuente','Abstract and Turkic philological analysis','kay-guk — small boat','probable','lexical_corpus_record','Jagiellonian University Repository',NULL,NULL,0,'The historical form and century are reported by the scholarly article; SET-U has not directly inspected the manuscript or edition page.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(307,95,'taboo','Present-Day English','English borrowing from Tongan, a sibling Oceanic reflex; not a borrowing from Māori tapu.',138),
(308,96,'taboo','Present-Day English','English borrowing from Tongan; Hawaiian kapu is a cognate reflex, not the direct donor.',139),
(309,97,'avocado','Present-Day English','English descendant reshaped from Spanish aguacate.',144),
(310,98,'kayak','Present-Day English','English borrowing from a broadly labeled Inuit qayaq source; Greenlandic qajaq belongs to the family without proving unique donor identity.',140),
(311,99,'kayak','Present-Day English','Chance resemblance with the same referent; the reviewed philology rejects shared ancestry.',238);
--> statement-breakpoint

-- Insert the new Proto-Eskimo stage before kayak's existing Inuit and English
-- route while preserving stable place IDs for the published records.
UPDATE `places` SET `step_order`=`step_order`+10 WHERE `entry_id`=55;
--> statement-breakpoint
UPDATE `places` SET `step_order`=`step_order`-9 WHERE `entry_id`=55;
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(361,55,1,'Proto-Eskimo comparative horizon','reconstructed *qan-yaq','The specialist analysis supplies a Proto-Eskimo formation without licensing one point on the map or exact year.',NULL,NULL,'broad',NULL,NULL,'unresolved','A linguistic reconstruction is not a directly located community or artifact.'),
(362,95,1,'Proto-Oceanic comparative horizon','reconstructed *tampu','POLLEX reconstructs the sacred and prohibited form at the Oceanic level.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstruction is comparative and is not localized to one settlement or exact year.'),
(363,95,2,'Aotearoa New Zealand Māori record','1872 corpus example–today','Te Aka documents Māori tapu and reports a dated 1872 example while preserving its living semantic field.',-41286000,174776000,'regional',1872,NULL,'open','1872 is the cited corpus-example year, not a claim that the word began then.'),
(364,96,1,'Proto-Oceanic comparative horizon','reconstructed *tampu','POLLEX reconstructs the sacred and prohibited form at the Oceanic level.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstruction is comparative and is not localized to one settlement or exact year.'),
(365,96,2,'Hawaiian-language record','1836 dictionary record–today','Historical Hawaiian dictionaries document kapu as prohibited, sacred, consecrated, and set apart.',21307000,-157858000,'regional',1836,NULL,'open','1836 is the cited dictionary record, not a claim that the inherited word began then.'),
(366,97,1,'Nahuatl-speaking central Mexico','1571 Molina record','UNAM reports Molina''s 1571 ahuacatl entry with fruit and anatomical senses.',19433000,-99133000,'regional',1571,1571,'exact','The year belongs to a reported dictionary witness, not the origin of the word.'),
(367,97,2,'Spanish-language aguacate','current RAE record','Spanish adapted and continues the Nahuatl fruit word as aguacate.',NULL,NULL,'global',2024,NULL,'open','2024 identifies the cited online dictionary edition; it is not a first-use claim.'),
(368,98,1,'Proto-Eskimo comparative horizon','reconstructed *qan-yaq and *qan(ə)-','The reviewed article reconstructs an internal Eskimo history without reducing it to one exact homeland point.',NULL,NULL,'broad',NULL,NULL,'unresolved','Comparative forms are not pinned to one settlement or exact year.'),
(369,98,2,'Greenlandic qajaq terminology','1987 terminology record–today','Oqaasileriffik publishes qajaq and hundreds of words for the craft and its use.',64181000,-51721000,'regional',1987,NULL,'open','1987 identifies the cited terminology source, not the beginning of the inherited word.'),
(370,99,1,'Proto-Turkic comparative horizon','competing *kad- and *kay- analyses','The reviewed study keeps the deeper Turkic derivation distinct from the Eskimo reconstruction.',NULL,NULL,'broad',NULL,NULL,'unresolved','The reconstructed analyses are not localized to one settlement or exact year.'),
(371,99,2,'Old Turkic textual record','11th-century kayguk','The philological study reports kayguk in the eleventh-century Turkic record.',NULL,NULL,'broad',1000,1099,'century','The century is source-reported; SET-U has not directly inspected the underlying manuscript object.'),
(372,99,3,'Modern Turkish kayık','2023 dictionary record–today','The Turkish Language Association preserves the current small-boat headword.',39000000,35000000,'regional',2023,NULL,'open','2023 identifies the cited dictionary edition, not the beginning of the modern form.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(361,238,'Abstract — recoverable Proto-Eskimo stages','supports','Supplies the reconstruction while warranting geographic and temporal caution.'),
(362,139,'POC *tampu reconstruction','supports','Supplies the comparative Oceanic horizon.'),
(363,235,'Tapu definition 4 and TWMNT 3/4/1872:58','supports','Documents the living Māori field and dated example.'),
(363,139,'New Zealand Maori reflex','context','Places the form in the wider Oceanic comparison.'),
(364,139,'POC *tampu reconstruction','supports','Supplies the comparative Oceanic horizon.'),
(365,236,'Andrews 1836 and 1865 kapu entries','supports','Documents the Hawaiian form and historical semantic field.'),
(365,139,'Hawaiian kapu reflex','context','Places the form in the wider Oceanic comparison.'),
(366,240,'Ahuacatl — Molina 1571 entry','supports','Documents the historical Nahuatl record and senses.'),
(366,145,'Etymology: del náhuatl ahuacatl','context','Confirms the source-language identity.'),
(367,145,'Aguacate headword and etymology','supports','Documents the current Spanish form and Nahuatl source.'),
(368,238,'Abstract — *qan-yaq and *qan(ə)-','supports','Supplies the reconstructed Eskimo stages without a defensible single map point.'),
(369,141,'Qajaq-terms — source and qajaq row','supports','Documents the 1987 Greenlandic terminology record.'),
(369,238,'Greenlandic evidence and separate Eskimo history','context','Provides the historical-linguistic frame.'),
(370,238,'Turkic analysis and conclusion','supports','Supplies the competing internal Turkic analyses and rejects the Eskimo comparison.'),
(371,238,'Old Turkic kayguk discussion','supports','Reports the eleventh-century historical form.'),
(372,239,'Güncel Türkçe Sözlük — kayık','supports','Documents the current Turkish headword.'),
(372,238,'Modern Turkish continuation','context','Connects the current form to the Old Turkic history.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(168,95,'Did English taboo come from Māori tapu?','No. Merriam-Webster identifies Tongan tabu as the English donor. Māori tapu is a related Oceanic reflex, not the borrowing source.','established','The English dictionary names Tongan; POLLEX independently lists Māori and Tongan reflexes.','resolved','The canonical graph joins the words only at reconstructed *tampu.'),
(169,95,'Does tapu mean only “forbidden”?','No. Te Aka defines a culturally specific field spanning sacredness, restriction, being set apart, prohibition, atua protection, and social or environmental responsibility.','established','Te Aka supplies the Māori semantic analysis and POLLEX supplies the wider comparative field.','resolved','The dossier does not reduce tapu to its casual English loanword descendant.'),
(170,96,'Is kapu merely a misspelling of tapu?','No. Hawaiian kapu reflects a documented historical *t to k development; POLLEX lists it as the Hawaiian reflex of the same Oceanic family.','established','Blust documents the sound change and POLLEX supplies the lexical comparison.','resolved','The canonical graph preserves distinct attested nodes and one shared reconstruction.'),
(171,96,'Did Hawaiian kapu directly give English taboo?','No. English taboo is traced to Tongan tabu. Hawaiian kapu is a cognate reflex whose resemblance reveals family history, not the borrowing event.','established','Merriam-Webster identifies Tongan while POLLEX distinguishes the Hawaiian reflex.','resolved','Connection without direct descent is made explicit.'),
(172,97,'Does āhuacatl prove that the fruit was named after a testicle?','No. The historical dictionaries establish that one Nahuatl word had fruit and anatomical senses; they do not establish which sense came first or motivated the other.','established','RAE and UNAM independently document the polysemy without a direction-of-derivation claim.','resolved','The contrarian reveal is the documented fact plus the refusal to overclaim it.'),
(173,97,'Can aguacate be securely pushed deeper than āhuacatl?','Not from the reviewed sources. The institutional dictionaries reach the Nahuatl word and its historical witnesses but do not establish a deeper lexical ancestor.','boundary','The cited records document the attested form rather than a deeper reconstruction.','open','The final node remains an explicit research boundary.'),
(174,98,'Was Greenlandic qajaq the unique direct donor of English kayak?','The reviewed English etymology says only Inuit qayaq. Greenlandic qajaq proves a living related form, but not one uniquely identified borrowing event.','probable','Merriam-Webster uses the broad label Inuit; Oqaasileriffik documents Greenlandic; the specialist article reconstructs the wider history.','open','The lexical family is joined while donor-variety precision remains unresolved.'),
(175,98,'Is qajaq related to Turkish kayık because both words mean boat?','No. The specialist philological study reconstructs independent Eskimo and Turkic histories and explicitly rejects genealogical or borrowing scenarios.','established','The article is devoted to testing and rejecting this exact comparison.','resolved','A sourced context link records the seductive resemblance as non-ancestry.'),
(176,99,'Is Turkish kayık an Arctic borrowing related to qayaq?','No. Old Turkic kayguk is documented centuries before the modern surface resemblance and belongs to a separate Turkic history.','established','The specialist study compares the philological records and rejects both genealogy and borrowing.','resolved','The graph keeps the two boat families disconnected.'),
(177,99,'Does kayguk continue *kad- “fir tree” or a *kay- “turn, bend” base?','The reviewed article argues for a *kad- / *kad-ï analysis and discusses the older *kay- account. The historical kayguk stage is secure; the deeper derivation remains proposed.','proposed','One specialist study presents and evaluates the competing Turkic analyses.','open','Both analyses remain named; the linear dossier follows the article''s preferred route at proposed confidence.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(168,138,'Word History — Tongan tabu','supports','Identifies the direct English source as Tongan.'),
(168,139,'New Zealand Maori and Tongan reflexes','context','Shows that the forms are related reflexes rather than a Māori-to-English route.'),
(169,235,'Tapu definitions 1–4','supports','Documents the culturally specific Māori semantic field.'),
(169,139,'New Zealand Maori reflex and OC.TAPU description','context','Supplies the wider inherited semantic comparison.'),
(170,237,'pp. 365–410 — Hawaiian *t to k','supports','Documents the historical sound change.'),
(170,139,'Hawaiian kapu reflex under OC.TAPU','supports','Applies the comparison to this lexical item.'),
(171,138,'Word History — Tongan tabu','supports','Names the actual English donor.'),
(171,139,'Hawaiian and Tongan reflexes','context','Distinguishes cognate reflexes from the borrowing channel.'),
(171,236,'Historical kapu entries','context','Documents the Hawaiian word without claiming English descent.'),
(172,145,'Etymology: ahuacatl “fruit,” “testicle”','supports','Documents both senses without semantic direction.'),
(172,240,'Molina, Durán, Clavijero, and Wimmer records','supports','Independently preserves fruit and anatomical senses.'),
(173,145,'Etymology endpoint at Nahuatl ahuacatl','supports','Supplies no secure deeper ancestor.'),
(173,240,'Historical ahuacatl record inventory','context','Documents the attested word rather than a reconstruction.'),
(174,140,'Word History — Inuit qayaq','supports','The broad donor label supports retaining variety uncertainty.'),
(174,141,'Qajaq-terms','context','Documents Greenlandic qajaq without proving unique donor status.'),
(174,238,'Eskimo philological history','context','Adds the deeper family history without identifying the English event.'),
(175,238,'Title, abstract, and conclusion','supports','Directly tests and rejects the Turkish–Eskimo comparison.'),
(175,141,'Qajaq-terms — qajaq','context','Documents one side of the resemblance.'),
(175,239,'Güncel Türkçe Sözlük — kayık','context','Documents the other side of the resemblance.'),
(176,238,'Old Turkic evidence and conclusion','supports','Rejects genealogical and borrowing connections to qayaq.'),
(176,239,'Güncel Türkçe Sözlük — kayık','context','Documents the modern Turkish headword.'),
(177,238,'Turkic analysis: kayguk, *kad- / *kad-ï, and the competing *kay- account','supports','Publishes the competing analyses and the secure historical stage.'),
(177,239,'Current kayık headword','context','Anchors the modern endpoint but does not resolve the deeper derivation.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(80,95,2001,'tapu','English taboo did not come from Māori tapu.','Māori tapu and English taboo meet deeper in the Oceanic family. English borrowed the Tongan reflex; Māori independently preserves sacredness, prohibition, restriction, and atua protection.','A',99,'The donor route and comparative relationship come from separate institutional sources.'),
(81,96,2002,'kapu','The k in kapu is a fossilized sound change.','Hawaiian kapu and Māori tapu are not misspellings of one another: Hawaiian regularly changed inherited *t toward k while preserving the sacred and prohibited semantic field.','A',99,'POLLEX secures the lexical comparison and Blust secures the sound-change mechanism.'),
(82,97,2003,'aguacate','The anatomical avocado story is both true and overstated.','Nahuatl āhuacatl is historically recorded with fruit and testicle senses. That establishes polysemy—not which sense named the other.','A',100,'RAE and UNAM independently establish the lexical fact while neither licenses the viral direction claim.'),
(83,98,2004,'qajaq','The perfect-looking boat cognate is false.','Greenlandic qajaq and Turkish kayık resemble one another and name similar craft, but their documented prehistories separate into Proto-Eskimo and Old Turkic.','A',100,'A specialist article examines and rejects the exact comparison.'),
(84,99,2005,'kayık','Same sound, same object, different ancestry.','Turkish kayık reaches Old Turkic kayguk; kayak reaches Inuit qayaq. Their uncanny agreement is chance resemblance, not evidence of contact or a common root.','A',100,'The philological histories independently reach records incompatible with the tempting shortcut.');
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
(80,138,'Word History — Tongan tabu','supports','Secures the actual English donor.'),
(80,235,'Tapu definitions 1–4','supports','Secures the independent Māori form and semantic depth.'),
(81,139,'Hawaiian kapu and New Zealand Maori tapu reflexes','supports','Places both words in one comparative family.'),
(81,237,'pp. 365–410 — Hawaiian *t to k','supports','Explains the visible consonant difference as historical sound change.'),
(82,145,'Etymology: ahuacatl “fruit,” “testicle”','supports','Documents the polysemy.'),
(82,240,'Historical translations under ahuacatl','supports','Independently documents both senses without semantic direction.'),
(83,238,'Title, abstract, and conclusion','supports','Directly rejects the qayaq–kayık comparison and supplies separate histories.'),
(83,141,'Qajaq-terms — qajaq row','context','Documents the living Greenlandic side.'),
(84,238,'Old Turkic and Eskimo philological comparison','supports','Separates kayguk from qayaq.'),
(84,239,'Güncel Türkçe Sözlük — kayık','context','Documents the modern Turkish endpoint.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(8,99,55,'false_friend_same_referent_not_ancestry','THE TWO BOATS THAT REFUSE TO BE COUSINS','Turkish kayık and English kayak look strikingly alike and name similar craft. Philological evidence instead takes kayık through Old Turkic kayguk and kayak through Inuit qayaq. The resemblance is a tested false cognate, not a graph edge.','José Andrés Alonso de la Fuente','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(8,238,'Title, abstract, and pp. 7–24','supports','Directly evaluates and rejects genealogical and borrowing scenarios.'),
(8,140,'Word History — Inuit qayaq','context','Documents the English and Inuit side.'),
(8,239,'Güncel Türkçe Sözlük — kayık','context','Documents the Turkish side.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(58,95,54,'THE ENGLISH WORD TOOK A DIFFERENT ISLAND ROUTE','Māori tapu and English taboo share *tampu, but English borrowed the Tongan reflex rather than Māori tapu.',99,'A','reviewed'),
(59,96,54,'ONE CONSONANT RECORDS AN OCEAN OF CHANGE','Hawaiian kapu and English taboo meet at *tampu; Hawaiian k records a real historical sound change, while English preserves a Tongan borrowing.',99,'A','reviewed'),
(60,97,57,'ENGLISH HID THE NAHUATL SHAPE','Spanish aguacate visibly carries Nahuatl āhuacatl; English avocado reshaped that Spanish intermediary.',98,'A','reviewed'),
(61,98,55,'THE ENGLISH LOAN OPENS BACK INTO A LIVING ARCTIC WORD','Greenlandic qajaq joins English kayak through a shared Proto-Eskimo horizon while the exact English donor variety remains unresolved.',100,'A','reviewed'),
(62,99,55,'THE MOST CONVINCING FALSE COGNATE IS A BOAT','Turkish kayık and English kayak look and mean almost the same thing, yet the cited histories remain disconnected.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 573 AND 590
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
WHERE f.id BETWEEN 573 AND 590;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 479 AND 491;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 479 AND 491;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 479 AND 491;
