-- Promote English kindred as a two-root compound, not a descendant of kind.
-- The direct dossier route follows the kin component through Old English cynn
-- and the already reviewed *kunja- birth lineage. A cited graph-only branch
-- follows the fossilized -ræden “condition” component through Germanic *rēdan
-- and PIE *rē-dh- to *h₂erh₁- “fit together.” The intrusive modern d is
-- represented as a historical sound change, never as evidence for kind.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(174,'kindred','kindred','kindred','/ˈkɪndrɪd/','noun · adjective','An inherited English kinship word built from Old English cynn “kin” plus -ræden “condition or state,” with an intrusive d and a fossilized second element whose wider word-forming pattern disappeared.','Kindred contains kin, not kind. Its d is intrusive, and its surviving -red hides a lost element meaning a condition or state—so the word descends through two roots rather than one.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(430,'mw-kindred','Kindred — definition, etymology, and first known use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/kindred',NULL,'historical_dictionary'),
(431,'ahd-kindred','Kindred — definition and etymology','American Heritage Dictionary Editors',2022,'HarperCollins Publishers','https://ahdictionary.com/word/search.html?q=kindredness',NULL,'historical_dictionary'),
(432,'med-rede-reden-suffix','-rē̆de(n suffix — Middle English Dictionary','Robert E. Lewis et al. · Frances McSparran et al.',2001,'University of Michigan Library','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED36311',NULL,'historical_dictionary'),
(433,'traugott-2014-constructional-framework','Toward a constructional framework for research on language change','Elizabeth Closs Traugott',2014,'John Benjamins Publishing Company','https://traugottpeople.sites.stanford.edu/sites/g/files/sbiybj28616/files/media/file/traugott2014a.pdf','10.1075/slcs.162.06tra','book_chapter');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1120,174,1,1,'kindred','kindred','family-relatives-related-character','kindred','/ˈkɪndrɪd/','attested','before the 12th century–today',1050,NULL,'relatives or a family group; of the same ancestry; related in origin, nature, or character','Merriam-Webster distinguishes the inherited noun from the later attributive adjective. The written d is not projected backward into the Old English compound.'),
(1121,174,2,2,'kinrede / kindrede','kinrede-kindrede','kinship-lineage-family','kinrede / kindrede',NULL,'attested','Middle English',1150,1500,'family, lineage, blood relations, kinship, nation, or related people','The d-bearing kindrede variant exists in the medieval record, but the d is a later intrusion between n and r. The representative pair does not pretend that one spelling replaced every other form at one date.'),
(1122,174,3,3,'cynræden / cynrēde','cynraeden-cynrede','kinship-compound','cynræden / cynrēde',NULL,'attested','Late Old English',950,1150,'kinship; the condition or collective state associated with kin','Merriam-Webster reports the late Old English compound once as inflected kynrædan; American Heritage prints cynrēde. The graph preserves the spelling difference and exposes both compound components.'),
(1123,174,3,4,'cynn','cynn','kindred-race-kind','cynn',NULL,'attested','Old English',450,1150,'kindred, kind, race, nation, people, tribe, family, lineage, generation, or progeny','First component of cynræden. This is the exact canonical Old English kin node already reviewed in the kin dossier, not a newly invented whole-word ancestor.'),
(1124,174,5,5,'*kunja-','kunja','kin-lineage-base','*kunja-',NULL,'reconstructed','Proto-Germanic',-500,200,'lineage, family, kin, descent, people, kind, or generation','The reconstructed kin base is reused from the reviewed kin and king dossiers.'),
(1125,174,6,6,'*gn̥ə-yo-','gneh-yo','kin-generation-formation','*gn̥ə-yo-',NULL,'reconstructed','Proto-Indo-European suffixed zero grade',-4500,-2500,'generation, lineage, or kin formation','The suffixed zero-grade formation is reused exactly from the reviewed kin lineage.'),
(1126,174,6,7,'*ǵenh₁-','genh1','beget-birth-root','*ǵenh₁-',NULL,'reconstructed','oldest reviewed Proto-Indo-European birth form',-4500,-2500,'give birth; beget; produce, with derivatives for family and tribal groups','The kin component reaches the same canonical birth root as kin, king, and kind, but kind follows a different suffixed formation.'),
(1127,174,7,8,'UNKNOWN','unknown','kindred-kin-branch-boundary',NULL,NULL,'boundary','before the reviewed birth-and-generation root',NULL,NULL,'No securely promoted ancestor is known beyond the reviewed *ǵenh₁- root on the kin branch.','The trail stops before a reconstructed birth root is mistaken for an attested first word, a universal kinship system, or the ancestry of the separate suffix branch.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(947,174,1120,1121,'historical_continuation','Middle English kinrede loses the final weak syllable inherited from -ræden, while an intrusive d develops between n and r and becomes fixed in kindred. The edge preserves kindrede as a medieval variant without treating kind as a component.','The family, lineage, blood-relation, and kinship noun continues; attributive use produces the adjective for shared ancestry and later for related origin, nature, or character.','Elizabeth Closs Traugott · Merriam-Webster Editors · American Heritage Dictionary Editors','established','Traugott directly identifies kin-reden and the intrusive d; the dictionaries document the form history, noun-to-adjective relationship, and current senses.','Middle English reduction into modern English, with no single invented date for d-fixation.','reviewed'),
(948,174,1121,1122,'inheritance','Middle English kinrede continues late Old English cynræden / cynrēde through normal replacement of Old English c and y spellings, reduction of the second element, and loss of inherited inflection; the d-bearing variant is later.','Old English kinship and kin-conditioned state develops the medieval family, lineage, blood-relations, nation, and collective-relatives field.','Merriam-Webster Editors · American Heritage Dictionary Editors · Middle English Dictionary Editors','established','The dictionaries align the Middle and late Old English forms; the representative spellings do not collapse dialectal and inflectional variation.','Late Old English into Middle English.','reviewed'),
(949,174,1122,1123,'compound_component','The first element of cyn-ræden is Old English cynn in compound form; the compound boundary does not assert a sound change from the whole word to cynn.','Kin, family, lineage, and people supplies the social relation whose condition or collective state the compound names.','Merriam-Webster Editors · American Heritage Dictionary Editors · Elizabeth Closs Traugott','established','All three sources analyze the first element as cynn or kin. This is component ancestry, not whole-word inheritance.','A late Old English compound analysis.','reviewed'),
(950,174,1123,1124,'inheritance','The published prehistoric sequence is *kunjō > *kunnjō > *kynni > cynn: West Germanic gemination doubles n before j, i-umlaut fronts u to y, and the glide and ending are lost.','The Germanic generation, lineage, kind, and family formation continues as the wide Old English cynn semantic field.','Elżbieta Adamczyk · R. D. Fulk · Rosemarie Lühr','established','Adamczyk prints the exact sequence; Fulk independently identifies Runic kunni as evidence for gemination. The precise dating and analysis of Sievers’ Law remain open.','Proto-Germanic through West Germanic prehistory into attested Old English.','reviewed'),
(951,174,1124,1125,'inheritance','Proto-Germanic k reflects the Indo-European palatal stop under Grimm’s Law, while the suffixed zero-grade formation develops into Germanic *kunja-.','A birth or generation formation develops the lineage, family, and kin field.','Calvert Watkins and American Heritage Dictionary Editors · Rosemarie Lühr','established','American Heritage directly places Germanic *kunjam under *gn̥ə-yo-; EWA publishes the laryngeal correspondence.','Proto-Indo-European to Proto-Germanic reconstruction.','reviewed'),
(952,174,1125,1126,'derivation','The suffixed zero grade suppresses the root e and combines the reduced root with *-yo-; the full oldest root is reconstructed as *ǵenh₁-.','Give birth and beget supply derivatives for generation, lineage, family, and tribal groups.','Calvert Watkins and American Heritage Dictionary Editors · Rosemarie Lühr','established',NULL,'Two analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
(953,174,1126,1127,'knowledge_boundary','No older form is promoted beyond the reviewed *ǵenh₁- root on this branch.','The kin branch stops before comparative reconstruction becomes an origin story for kinship, family, or the whole compound.','SET-U editorial boundary','boundary','The separate condition branch receives its own root and evidence boundary.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(947,433,'pp. 96–97: kindred from kin-reden, intrusive d, and loss of the -en ending','supports','Directly documents the intrusive consonant and morphophonological reduction of the fossilized compound.'),
(947,430,'Word History and First Known Use sections','supports','Documents Middle English kynrede, the noun ancestry, and the later adjective.'),
(947,431,'Kindred noun, adjective, and bracketed etymology','context','Publishes Middle English kinrede / kindrede and the modern noun and adjective fields.'),
(948,430,'Word History: Middle English kynrede and late Old English cynræden','supports','Directly aligns the whole-word stages and records the unique inflected Old English spelling kynrædan.'),
(948,431,'Bracketed etymology: Middle English kinrede, kindrede from late Old English cynrēde','supports','Independently aligns the Middle and late Old English forms.'),
(948,432,'-rē̆de(n etymology, forms, and kinrede example','context','Documents the medieval suffix inventory and kinrede as a continuation of late Old English cynrēde.'),
(949,430,'Word History: cynn plus -ræden','supports','Directly segments the late Old English compound.'),
(949,431,'Bracketed etymology: cyn plus -rēde','supports','Independently identifies the kin component.'),
(949,433,'pp. 96–97: X-RÆDEN schema and kindred from kin-reden','supports','Analyzes kindred as a relic compound in the condition-related-to-X schema.'),
(950,422,'Studia Anglica Posnaniensia 36, pp. 64–65, derivation (2b)','supports','Prints *kunjan > *kunnjan > *kynni > cynn with gemination, umlaut, and glide loss.'),
(950,421,'Section 6.15, p. 128; PDF p. 144','context','Uses Runic kunni as collateral evidence for West Germanic gemination.'),
(951,414,'genə-, zero-grade *gn̥ə-yo- section','supports','Publishes Germanic *kunjam under the suffixed Indo-European zero grade.'),
(951,413,'Column 892: *kunja- from the birth root','supports','Provides the corresponding laryngeal derivation.'),
(952,414,'genə- heading and zero-grade *gn̥ə-yo- section','supports','Publishes the oldest birth root and the suffixed zero-grade formation.'),
(952,413,'Column 892: derivation from *ǵenh₁- “beget”','supports','Independently derives the kin formation from the birth root.'),
(953,414,'genə- entry endpoint','supports','Defines the deepest reviewed birth-root horizon for the kin branch.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(222,1120,430,'before the 12th century',1050,'Merriam-Webster first-known-use record for kindred as a noun','First Known Use, noun','before the 12th century','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported written-use horizon. The sorting year is a midpoint inside the stated period, not an exact token date or first spoken use.'),
(223,1122,430,'late Old English, unique inflected form',1050,'Merriam-Webster report of kynrædan','Word History, noun etymology','kynrædan','established','lexical_corpus_record','Merriam-Webster historical record','late Old English occurrence, source-reported',NULL,0,'Merriam-Webster reports the form as the one attestation of cynræden, accusative or dative. The underlying manuscript object was not directly inspected.'),
(224,1121,432,'Middle English dictionary record',NULL,'Middle English Dictionary suffix record for kinrede','MED36311, definition 1(c)','kinrede','established','lexical_corpus_record','Middle English Compendium · University of Michigan Library','MED36311',NULL,0,'The suffix entry identifies kinrede and its semantic range but is not promoted as a directly inspected manuscript token or an earliest-use claim.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(606,174,'kin','English','the first lexical component and the reviewed birth-lineage branch inside kindred',431),
(607,174,'kind','English','a tempting visual false parent; the words meet only through deeper birth-root history, not through the intrusive d',433),
(608,174,'hatred','English','the other modern relic of the once-productive X-RÆDEN condition schema',433),
(609,174,'ready','English','historical comparison for the condition element, whose exact Old English pathways require caution',430),
(610,174,'read','English','parallel descendant assigned to Germanic *rēdan and PIE *rē-dh-, through Old English rædan “advise”',414),
(611,174,'rede','English','parallel counsel-family descendant under Germanic *rēdan and PIE *rē-dh-',414),
(612,174,'dread','English','parallel descendant through Old English rædan under the same reconstructed suffix root',414),
(613,174,'-hood','English','productive condition or status formation that outcompeted -RÆDEN in Middle English',433),
(614,174,'-ship','English','productive condition or status formation that outcompeted -RÆDEN in Middle English',433),
(615,174,'-dom','English','productive condition or status formation that outcompeted -RÆDEN in Middle English',433);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(663,174,1,'Indo-European comparative horizon','*ǵenh₁- and *h₂erh₁-','The two reviewed branches are reconstructed separately: a birth and generation root supplies kin, while a fit-together root supplies the condition element.',NULL,NULL,'uncertain',-4500,-2500,'range','The interval is a comparative horizon, not a point homeland, first compound, or claim that the two roots formed one PIE word.'),
(664,174,2,'Proto-Germanic linguistic horizon','*kunja- and *rēdan','Germanic prehistory supplies the kin base and the separately reconstructed condition or arrangement family later combined in English.',NULL,NULL,'uncertain',-500,200,'range','The broad interval brackets two reconstructed lineages; it does not date their later Old English compounding.'),
(665,174,3,'Late Old English records','cynræden / cynrēde','The compound joins cynn with an affixoid meaning a condition or state associated with its first element.',NULL,NULL,'broad',950,1150,'range','Merriam-Webster reports one inflected occurrence. The interval describes the late Old English stage, not the date of an inspected manuscript object.'),
(666,174,4,'Middle English records','kinrede / kindrede and the decline of X-RÆDEN','The compound loses the suffix ending, the broader formation competes with -ship, -hood, and -dom, and an intrusive d appears between n and r.',NULL,NULL,'broad',1150,1500,'range','The sources support gradual morphophonological reduction and falling productivity, not one simultaneous change across every speaker or spelling.'),
(667,174,5,'Global English','kindred as relatives and as related ancestry, origin, nature, or character','The noun survives as relatives or a family group; attributive use yields the adjective and later similarity senses while the old suffix is no longer transparent.',NULL,NULL,'global',1500,NULL,'open','The modern-language anchor is conventional. Merriam-Webster reports the adjective in the fourteenth century, overlapping the medieval stage.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(663,414,'genə- *gn̥ə-yo- section and ar- *rē-dh- section','supports','Publishes both reconstructed roots and their distinct formations behind the compound components.'),
(663,431,'Bracketed etymology: cyn plus -rēde, with separate Indo-European cross-references','context','Confirms that the whole word decomposes into two separately rooted elements.'),
(664,414,'genə- Germanic *kunjam and ar- Germanic *rēdan sections','supports','Publishes the two Germanic reconstructions.'),
(664,420,'CYN, cynn record','context','Supplies the attested Old English kin side of the comparison.'),
(665,430,'Word History: late Old English cynræden, once as kynrædan','supports','Documents the compound and the source-reported late Old English record.'),
(665,433,'pp. 96–97: late Old English X-RÆDEN schema','supports','Places the compound inside a wider late Old English word-formation pattern.'),
(666,433,'pp. 96–97: competition, lost productivity, intrusive d, and -en loss','supports','Documents the Middle English decline and the surviving kindred form.'),
(666,432,'-rē̆de(n forms, etymology, and definition 1','supports','Publishes the medieval suffix variants, functions, and kinrede example.'),
(667,430,'Modern senses and First Known Use sections','supports','Documents the current noun and adjective fields and their distinct source-reported horizons.'),
(667,431,'Modern noun and adjective senses','context','Independently documents family and similarity senses.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(344,174,'Does kindred descend from kind?','No. The first component is kin, continuing Old English cynn. Kind follows a separate Germanic *kund- and Indo-European *gn̥ə-t- formation; the words meet only at the deeper birth root.','established','Traugott analyzes kindred as kin-reden; Merriam-Webster and American Heritage segment the Old English compound as cynn plus -ræden.','resolved','The graph connects kindred directly to cynn and reaches kind only by traversing the deeper shared *ǵenh₁- node.'),
(345,174,'Is the d in kindred inherited from the oldest compound?','No. Traugott explicitly identifies an intrusive d between n and r. The late Old English compound is cynræden / cynrēde and Middle English records include both kinrede and kindrede.','established','The scholarly analysis, historical dictionaries, and form sequence agree that d is not an original component.','resolved','The modern-to-medieval edge labels the insertion; the Old English node contains no d.'),
(346,174,'Is the surviving -red element the color red?','No. It is the reduced relic of Old English -ræden, a condition or state-forming element. The wider pattern once made social and abstract nouns and survives principally in kindred and hatred.','established','The Middle English Dictionary defines the suffix; Traugott reconstructs the productive X-RÆDEN schema and its decline.','resolved','The second compound edge descends through -ræden and never touches the color word red.'),
(347,174,'Did kindred begin as an adjective meaning similar in nature?','No. The inherited noun names kinship, family, lineage, and related people. Merriam-Webster analyzes the adjective as attributive use of that noun and reports it later than the noun.','established','Merriam-Webster separates the noun and adjective histories; American Heritage preserves both modern categories.','resolved','The similarity sense is recorded as semantic development on the whole-word continuation edge.'),
(348,174,'Is the exact history of -ræden reducible to either ready or read?','The condition element is secure, and American Heritage assigns it through Germanic *rēdan to PIE *rē-dh-. But Merriam-Webster notes that Old English evidence can reflect a probable relationship to geræde “ready,” older analysis through rædan “advise,” and partial merger with ræding; Germanic *raidja- and *rēd- outcomes can be difficult to separate.','proposed','The sources agree on the inherited condition element but preserve different cautions about its immediate derivation and later formal convergence.','open',NULL);
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(344,433,'pp. 96–97: kindred from kin-reden','supports','Identifies kin, not kind, as the first element.'),
(344,430,'Word History: cynn plus -ræden','supports','Independently segments the compound.'),
(344,414,'genə-: separate *gn̥ə-yo- and *gn̥ə-t- formations','context','Shows where the kin and kind histories diverge before reaching the shared birth root.'),
(345,433,'p. 96: intrusive d between n and r','supports','Directly identifies the consonant as intrusive.'),
(345,431,'Etymology: Middle English kinrede, kindrede from late Old English cynrēde','context','Publishes forms with and without d across the historical record.'),
(346,432,'Definition 1 and kinrede / hatred examples','supports','Defines the native condition-forming suffix and its abstract and collective functions.'),
(346,433,'pp. 96–97: X-RÆDEN schema and its two relics','supports','Documents the pattern, its loss of productivity, and the surviving relics.'),
(347,430,'Adjective etymology and distinct first-known-use sections','supports','Treats the adjective as attributive use of the noun and reports the later horizon.'),
(347,431,'Noun and adjective sense sections','context','Documents the current semantic split.'),
(348,430,'Etymology note on ræden, geræde, rædan, ræding, *raidja-, and *rēd-','supports','Preserves the immediate etymological uncertainty instead of forcing one clean path.'),
(348,414,'ar- variant *rē-, suffixed *rē-dh-, and Germanic *rēdan','context','Supplies the deeper comparative route used in the graph-only suffix branch.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(174,174,2085,'kindred','The d in kindred is an intruder—and kind is not in the word.','Kindred is kin plus a fossilized native element meaning a condition or state. One branch reaches the birth root; the other reaches a fit-together root. The modern d arrived between n and r after the compound already existed.','A',100,'Traugott directly documents kin-reden, the intrusive d, the lost suffix ending, and the collapse of the wider schema; historical dictionaries independently preserve the two components and form sequence.');
--> statement-breakpoint

WITH ranked AS (
  SELECT id,ROW_NUMBER() OVER (
    ORDER BY myth_gap_score DESC,evidence_grade ASC,
      CASE WHEN rank BETWEEN 1001 AND 1999 THEN rank ELSE 3000 + id END
  ) AS new_rank
  FROM leaderboard_entries
)
UPDATE `leaderboard_entries`
SET `rank`=(SELECT ranked.new_rank FROM ranked WHERE ranked.id=leaderboard_entries.id);
--> statement-breakpoint

INSERT INTO `leaderboard_claim_sources` (`leaderboard_entry_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(174,433,'pp. 96–97: kin-reden, intrusive d, -en loss, and X-RÆDEN decline','supports','Directly supports the hidden morphology, sound change, and relic status.'),
(174,430,'Word History and etymology note','supports','Documents cynn plus -ræden and the condition meaning while preserving immediate derivational caution.'),
(174,431,'Bracketed etymology with genə- and ar- cross-references','supports','Publishes the two-component analysis and the two deeper root families.'),
(174,432,'Definition 1 and kinrede example','context','Shows that -rē̆de(n was a wider condition-forming suffix, not the color word red.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(129,174,173,'THE D DOES NOT MAKE KIND THE PARENT','Kindred enters the birth family through kin and *gn̥ə-yo-. Kind enters through *gn̥ə-t-. The intrusive d makes the modern spellings look closer than their actual Germanic formations are.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1120 AND 1127
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
WHERE f.id BETWEEN 1120 AND 1127;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 947 AND 953;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 947 AND 953;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 947 AND 953;
--> statement-breakpoint

-- Graph-only suffix branch. It is connected to the compound by a cited
-- component edge and receives its own boundary so the kin branch cannot hide
-- where evidence for the independent condition element ends.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:3:raeden:attested:sense:condition-status-affixoid',3,'-ræden','raeden','condition-status-affixoid','-ræden',NULL,'attested','Old English',650,1150,'condition, state, estimation, rule, or relation to the first compound element','Graph-only attested compound branch: the leading hyphen marks suffixal or affixoid use. Traugott and the Middle English Dictionary show that it also occurred independently or across a wider X-RÆDEN schema.','reviewed'),
('node:5:reedan:reconstructed:sense:condition-arrangement-family',5,'*rēdan','reedan','condition-arrangement-family','*rēdan',NULL,'reconstructed','Proto-Germanic',-500,200,'condition or arrangement family also associated with counsel','Graph-only reconstructed branch: American Heritage assigns Old English ræden / -ræden and rædan to Germanic *rēdan; Merriam-Webster requires caution about immediately separable Germanic outcomes.','reviewed'),
('node:6:ree-dh:reconstructed:sense:condition-counsel-formation',6,'*rē-dh-','ree-dh','condition-counsel-formation','*rē-dh-',NULL,'reconstructed','Proto-Indo-European suffixed variant',-4500,-2500,'a suffixed formation behind condition, counsel, and related Germanic derivatives','Graph-only reconstructed branch published in the American Heritage Indo-European appendix under the fit-together root.','reviewed'),
('node:6:h2erh1:reconstructed:sense:fit-together-root',6,'*h₂erh₁-','h2erh1','fit-together-root','*h₂erh₁-',NULL,'reconstructed','oldest reviewed Proto-Indo-European form',-4500,-2500,'fit together','Graph-only reconstructed root: American Heritage gives *h₂erh₁- as the oldest form and *h₂reh₁- > *rē- as the relevant variant.','reviewed'),
('boundary:174:suffix-branch',7,'UNKNOWN','unknown','kindred-suffix-branch-boundary',NULL,NULL,'boundary','before the reviewed fit-together root',NULL,NULL,'No securely promoted ancestor is known beyond *h₂erh₁- on the condition branch.','Graph-only dossier-specific boundary: the trail ends before a comparative fit-together root is treated as an attested word or as proof of one original social concept.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:cynraeden-cynrede:attested:sense:kinship-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:raeden:attested:sense:condition-status-affixoid'),'compound_component','The second element of cyn-ræden is the suffixal or affixoid use of Old English ræden; this component edge is morphological analysis, not a claim that the whole compound changed into the suffix.','A condition related to kin yields kinship and, through collective interpretation, family or related people.','Elizabeth Closs Traugott · Merriam-Webster Editors · Middle English Dictionary Editors','established','Three sources independently identify the second component and its condition or state function.','Late Old English compound analysis.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:raeden:attested:sense:condition-status-affixoid'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:reedan:reconstructed:sense:condition-arrangement-family'),'inheritance','Old English æ and the -en noun formation continue the reconstructed Germanic *rēd- family; exact separation from related *raidja- outcomes is not asserted.','The reconstructed arrangement or condition family continues as condition, status, estimation, and rule in Old English.','American Heritage Dictionary Editors · Merriam-Webster Editors','probable','American Heritage publishes the inheritance; Merriam-Webster preserves uncertainty about the immediate Old English derivational pathways and partial mergers.','Proto-Germanic reconstruction into attested Old English.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:5:reedan:reconstructed:sense:condition-arrangement-family'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:ree-dh:reconstructed:sense:condition-counsel-formation'),'comparative_derivation','Germanic *rēdan continues the lengthened variant and suffixed *rē-dh- formation printed by American Heritage; the edge is comparative, not directly observed.','The fit or arrangement formation supplies condition and counsel-related Germanic meanings.','Calvert Watkins and American Heritage Dictionary Editors','established','American Heritage explicitly places both Old English condition and advise outcomes under Germanic *rēdan and *rē-dh-.','Proto-Indo-European to Proto-Germanic reconstruction.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:ree-dh:reconstructed:sense:condition-counsel-formation'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:h2erh1:reconstructed:sense:fit-together-root'),'derivation','The suffixed lengthened-grade form *rē-dh- is analyzed from variant *h₂reh₁-, itself related to the oldest *h₂erh₁- root form.','Fit together develops arrangement, condition, counsel, and confirmation-related derivatives.','Calvert Watkins and American Heritage Dictionary Editors','established','The source prints the oldest root, the variant, and the suffixed formation in one comparative entry.','Analytical reconstructed levels, not independently attested spoken tokens.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:h2erh1:reconstructed:sense:fit-together-root'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:174:suffix-branch'),'knowledge_boundary','No older form is promoted beyond the reviewed *h₂erh₁- root on the suffix branch.','The graph stops before a comparative fit-together root becomes a speculative original meaning for family or kinship.','SET-U editorial boundary','boundary','The condition branch has an independent endpoint from the kin branch.',NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:cynraeden-cynrede:attested:sense:kinship-compound' AND p.canonical_key='node:3:raeden:attested:sense:condition-status-affixoid' AND e.relation_type='compound_component'),433,'pp. 96–97: X-RÆDEN schema and kindred from kin-reden','supports','Analyzes the second element and its condition-related-to-X construction.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:cynraeden-cynrede:attested:sense:kinship-compound' AND p.canonical_key='node:3:raeden:attested:sense:condition-status-affixoid' AND e.relation_type='compound_component'),430,'Word History: -ræden as condition or stipulation','supports','Identifies the compound’s second component and core meaning.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:cynraeden-cynrede:attested:sense:kinship-compound' AND p.canonical_key='node:3:raeden:attested:sense:condition-status-affixoid' AND e.relation_type='compound_component'),432,'Definition 1 and kinrede example','context','Documents the wider medieval condition and collective suffix functions.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:raeden:attested:sense:condition-status-affixoid' AND p.canonical_key='node:5:reedan:reconstructed:sense:condition-arrangement-family' AND e.relation_type='inheritance'),414,'ar-: *rē-dh-, Old English ræden / -ræden, Germanic *rēdan','supports','Publishes the reconstructed inheritance path.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:raeden:attested:sense:condition-status-affixoid' AND p.canonical_key='node:5:reedan:reconstructed:sense:condition-arrangement-family' AND e.relation_type='inheritance'),430,'Etymology note on ræden and difficult-to-separate Germanic outcomes','context','Preserves the uncertainty around immediate derivation and partial merger.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:5:reedan:reconstructed:sense:condition-arrangement-family' AND p.canonical_key='node:6:ree-dh:reconstructed:sense:condition-counsel-formation' AND e.relation_type='comparative_derivation'),414,'ar-: suffixed *rē-dh- and Germanic *rēdan','supports','Publishes the Germanic form under the Indo-European suffixed formation.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:6:ree-dh:reconstructed:sense:condition-counsel-formation' AND p.canonical_key='node:6:h2erh1:reconstructed:sense:fit-together-root' AND e.relation_type='derivation'),414,'ar- heading, variant *h₂reh₁- > *rē-, and suffixed *rē-dh-','supports','Publishes the root, variant, and derived formation.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:6:h2erh1:reconstructed:sense:fit-together-root' AND p.canonical_key='boundary:174:suffix-branch' AND e.relation_type='knowledge_boundary'),414,'ar- entry endpoint','supports','Defines the deepest reviewed comparative horizon for the suffix branch.');
