-- Promote English friend as a complete, bounded love-family dossier. The
-- historical formation is striking but must not become an etymological
-- fallacy: friend is the inherited Germanic agent noun "one who loves," not a
-- timeless definition of every modern friendship. Friend and fiend are
-- parallel agent-noun formations built on different lexical bases.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(210,'friend','friend','friend','/frɛnd/','English common noun and historical adjective','English friend continues Middle English frẹ̄nd and Old English frēond, an inherited Germanic nd-stem agent noun. OED identifies cognates across West, East, and North Germanic and analyzes them as noun uses of a present participle of the Germanic base behind free; Bosworth–Toller explicitly calls Old English freónd the participle of freón, a verb meaning free or love; American Heritage independently explains the formation as originally one who loves. The historical noun later covers intimate companion, ally, supporter, relation, lover, form of address, Quaker, climbing device, and social-network contact. The graph displays a normalized *frijōnd- participial formation, Germanic *frī-, the proposed Indo-European comparison *prī-, and then stops.','Friend and fiend are grammatical mirrors, not cognates. Friend fossilizes a loving-one formation; fiend fossilizes a hating-one or enemy formation. OED explicitly compares the morphology while keeping the lexical bases distinct.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(607,'oed-friend','Oxford English Dictionary — friend, n. & adj.','Oxford English Dictionary editors',2013,'Oxford University Press','https://www.oed.com/dictionary/friend_n',NULL,'historical_dictionary'),
(608,'med-frend','Middle English Dictionary — frẹ̄nd, n.','Middle English Dictionary editors',2026,'University of Michigan','https://quod.lib.umich.edu/m/middle-english-dictionary/dictionary/MED17655',NULL,'historical_dictionary'),
(609,'bosworth-toller-freond','An Anglo-Saxon Dictionary Online — freónd','Joseph Bosworth · Thomas Northcote Toller · Christ Sean · Ondřej Tichy',2014,'Faculty of Arts, Charles University','https://bosworthtoller.com/12316',NULL,'historical_dictionary'),
(610,'bosworth-toller-freon','An Anglo-Saxon Dictionary Online — freón','Joseph Bosworth · Thomas Northcote Toller · Christ Sean · Ondřej Tichy',2014,'Faculty of Arts, Charles University','https://bosworthtoller.com/12314',NULL,'historical_dictionary'),
(611,'ahd-friend','American Heritage Dictionary — friend','American Heritage Dictionary editors',2022,'HarperCollins Publishers','https://www.ahdictionary.com/word/search.html?q=FRIEND',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(1336,210,1,1,'friend','friend','companion-ally-supporter-modern-english-noun','friend','/frɛnd/','attested','English; spelling attested from Middle English and standard today',1500,2026,'a trusted or close companion; an ally, supporter, relation, form of address, or specialized modern contact','OED records the spelling friend from Middle English onward and separates eleven noun senses plus historical adjectival use. The current pronunciation does not transparently preserve the Old English diphthong.'),
(1337,210,2,2,'frẹ̄nd','frend','friend-companion-ally-middle-english-noun','frẹ̄nd',NULL,'attested','Middle English',1150,1500,'friend, comrade, intimate, ally, patron, relation, possible paramour, or form of address','MED inventories vrend, friend, vryend, freond, vreond, frond, frund, frind, and vrind beside frẹ̄nd, then separates companion, benefactor, ally, relation, address, and other uses.'),
(1338,210,3,3,'frēond','freond','loving-one-friend-old-english-nd-stem','frēond',NULL,'attested','Old English',450,1150,'friend, relation, or one favorably disposed; historically an nd-stem agent noun','OED records frēond and dialectal forms; Bosworth–Toller prints freónd and friónd and identifies freónd as the participle of freón. Accent and macron conventions are editorial representations of the same Old English headword.'),
(1339,210,5,4,'*frijōnd-','frijond','loving-one-proto-germanic-present-participle','*frijōnd-',NULL,'reconstructed','normalized Proto-Germanic participial formation',-500,200,'a reconstructed present-participial formation, the loving or favorably disposed one','The exact normalized spelling is reconstructive. OED supplies the cross-Germanic descendant set and participial analysis; American Heritage independently describes the Germanic present-participle ancestry. No written Proto-Germanic token survives.'),
(1340,210,5,5,'*frī-','fri','love-like-befriend-free-germanic-base','*frī-',NULL,'reconstructed','Germanic lexical base',-500,200,'to like, love, or be friendly to; also represented in the free verb family','American Heritage explicitly prints the Germanic root *frī- and glosses it like, love, or be friendly to. OED describes the base vowel as *ī, earlier *ij, and connects it with the Germanic base of free.'),
(1341,210,6,6,'*prī-','pri','love-like-friend-proposed-indo-european-root','*prī-',NULL,'reconstructed','proposed Indo-European comparison',-4500,-2500,'a proposed Indo-European root compared with the Germanic friend and free family','American Heritage directs the English etymology to prī- in its Indo-European appendix. This is a comparative root label, not a recorded word, one recoverable original sentence, or an uncontested semantic scene.'),
(1342,210,7,7,'UNKNOWN','unknown','friend-deep-boundary',NULL,NULL,'boundary','beyond the proposed *prī- comparison',NULL,NULL,'No securely reviewed older ancestor or uniquely recoverable original social meaning is currently known.','The trail ends before love, freedom, friendship, peace, kinship, or social membership is declared the one universal prehistoric essence.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(1127,210,1336,1337,'historical_continuation','Middle English friend and related spellings continue into the modern standard while vowel quantity, vowel quality, and spelling conventions converge on /frɛnd/. No one spelling date is treated as a single sound-change event.','The companion, ally, supporter, relation, and address senses continue; later specialized uses, including a social-network contact, expand the noun without replacing its historical range.','Oxford English Dictionary editors · Middle English Dictionary editors','established','OED and MED directly document the spelling continuum and overlapping senses. The precise diffusion of modern pronunciation across regions is not reduced to one date.','Middle English forms into early modern and current English.','reviewed'),
(1128,210,1337,1338,'historical_continuation','OED describes late Old English incipient monophthongization of ēo and Middle English coexistence of long close ē, short ĕ, and short ĭ. MED directly derives frẹ̄nd and its variants from Old English frēond and its inflected forms.','The inherited friend, ally, and relation noun remains lexically stable enough to recognize while its contextual and address uses diversify.','Oxford English Dictionary editors · Middle English Dictionary editors','established','The lexical descent is explicit. Surviving spelling variation prevents one mechanically uniform phonetic path.','Old English into the conventionally dated Middle English record.','reviewed'),
(1129,210,1338,1339,'inheritance','OED derives the West Germanic stem vowel from *iu, produced by contraction of the base vowel *ī, earlier *ij, with the participial suffix vowel; Old English ēo and īo reflect branch and dialect development.','An inherited present-participial agent formation functions as the ordinary noun friend, relation, or favored person in Old English.','Oxford English Dictionary editors · American Heritage Dictionary editors','probable','The cross-Germanic set and participial morphology are published, but *frijōnd- is reconstructed and the exact prehistoric phonetic sequence was never written down.','Proto-Germanic reconstruction into Old English textual evidence.','reviewed'),
(1130,210,1339,1340,'participial_derivation','The agent noun is built with Germanic present-participial nd-morphology on the *frī- or earlier *frij- base. OED traces the later *iu diphthong to contraction with the suffixal vowel.','A productive loving or favorably disposed participant becomes a lexical noun for friend or relation. The derivation does not make every later friend literally a person performing a continuous act of loving.','Oxford English Dictionary editors · Bosworth · Toller · American Heritage Dictionary editors','probable','Three independent dictionary treatments identify the participial relation. The exact lexicalization date and every prehistoric inflection remain unrecoverable.','Germanic derivation before the daughter-language records.','reviewed'),
(1131,210,1340,1341,'comparative_derivation','American Heritage compares Germanic *frī- with Indo-European *prī-. The initial Germanic f corresponds to the older labial stop under the comparative analysis; the exact intermediate morphology is not promoted as attested.','The reconstructed like, love, or friendliness field is compared across Indo-European, but no one original institution of friendship or freedom is recovered.','American Heritage Dictionary editors','proposed','The source publishes the root cross-reference, while the accessible record does not establish one directly attested proto-form, sentence, or social structure.','Proposed Indo-European base to Germanic reconstruction.','reviewed'),
(1132,210,1341,1342,'knowledge_boundary','No older form is promoted beyond the proposed *prī- comparison.','The graph stops before friendship, love, freedom, peace, kinship, or group membership is reverse-engineered into one universal prehistoric story.','SET-U editorial boundary · American Heritage Dictionary editors','boundary','The deepest displayed form is already reconstructed; no securely reviewed earlier node clears the evidence boundary.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1127,607,'Forms tab; friend from Middle English onward; meanings A.1–A.11','supports','Documents the spelling continuum and later semantic expansion.'),
(1127,608,'Forms and senses 1–6','supports','Supplies the Middle English variant field and overlapping semantic inventory.'),
(1128,607,'Etymology, Form history; Forms tab','supports','Explains late Old English monophthongization and Middle English vowel variation.'),
(1128,608,'Etymology: OE frēond; forms inventory','supports','Directly derives the Middle English headword and variants from Old English forms.'),
(1129,607,'Etymology Summary and Form history','supports','Publishes the cross-Germanic cognates, participial analysis, and stem-vowel history.'),
(1129,611,'Etymology and Word History','context','Independently connects Modern English friend through Old English frēond to a Germanic present participle.'),
(1130,607,'Etymology Summary; similar formation of fiend; Form history','supports','Identifies noun use of the present participle and explains the nd-stem class.'),
(1130,609,'Grammar: freónd, freónde loving, participle of freón','supports','Makes the Old English participial analysis explicit.'),
(1130,610,'Headword freón: to free, love','supports','Supplies the attested Old English verb behind the historical analysis.'),
(1130,611,'Word History: originally one who loves; Germanic *frī-','supports','Independently explains the agent meaning and prints the Germanic base.'),
(1131,611,'Etymology: see prī- in the Appendix of Indo-European roots','supports','Publishes the Indo-European comparison used here with proposed confidence.'),
(1132,611,'Deepest displayed prī- cross-reference','supports','Supports ending the reviewed route after the proposed root rather than inventing an earlier form.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(508,1338,607,'Old English, source-reported',NULL,'Beowulf, Heorot filled with friends','Meaning A.1a; Beowulf 1018','Heorot innan wæs freondum afylled','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports the edited Old English line. No manuscript object was directly inspected, and the record does not claim first use or an exact composition year.'),
(509,1338,607,'Old English, source-reported',NULL,'Alexander''s Letter to Aristotle, beloved teacher as friend','Meaning A.1a; translation of Alexander''s Letter to Aristotle §2.224','þu me eart se leofesta freond','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED supplies the source-reported quotation and locator. The underlying manuscript object was not directly inspected.'),
(510,1338,607,'late Old English, source-reported',NULL,'King Alfred''s translation of Augustine, degrees of friendship','Meaning A.1a; Soliloquies, MS Vitellius, i.16','Ic lufige ælcne minra freonda: sume læs, sume swyðor','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports the manuscript-based edition quotation. The Vitellius object was not directly inspected, and the wording does not prove a first use.'),
(511,1337,607,'circa 1175, source-reported',1175,'Ormulum, bridegroom''s friend','Meaning A.1a; Ormulum, Burchfield transcript, line 17960','& wha se iss þatt bridgumess frend He stannt wiþþ himm','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports the transcript and approximate date. No manuscript pixels were inspected, and the representative year does not claim an exact copying event.'),
(512,1337,608,'circa 1275, source-reported',1275,'Liuis firist, gathering one''s friend','Supplemental Materials; Trinity College Cambridge B.14.39, line 4','Þine children to consailen & þine frent to gadien','established','lexical_corpus_record',NULL,NULL,NULL,0,'MED reports the newly indexed spelling frent and manuscript locator. The underlying object was not directly inspected.'),
(513,1336,607,'before 1637, source-reported',1637,'Hobbes translation of Aristotle, explicit love definition','Meaning A.1a; Briefe Art Rhetorique ii.76','A Friend is he that loves, and he that is beloved.','established','lexical_corpus_record',NULL,NULL,NULL,0,'OED reports the dated printed-text quotation. It documents one early modern definition in context, not the timeless original meaning of every use of friend.');
-- All six records remain directly_inspected=0: the dictionaries were read, but
-- no underlying manuscript or printed primary object was visually inspected.
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(1128,210,'free','English','a real historical relative through the Germanic base, not a definition of modern friend',607),
(1129,210,'freón','Old English','the attested verb to free or love named by Bosworth–Toller behind freónd',610),
(1130,210,'fiend','English','the antonym with a similar agent-noun formation but a different lexical root',607),
(1131,210,'friūnd','Old Frisian','a West Germanic cognate named by OED',607),
(1132,210,'freon','West Frisian','the modern West Frisian continuation named by OED',607),
(1133,210,'friunt','Old Dutch','an Old Dutch cognate named by OED',607),
(1134,210,'vriend','Dutch','the Dutch continuation named by OED',607),
(1135,210,'friund','Old Saxon','an Old Saxon cognate named by OED',607),
(1136,210,'friunt','Old High German','an Old High German cognate named by OED',607),
(1137,210,'Freund','German','the German continuation named by OED',607),
(1138,210,'frijonds','Gothic','the East Germanic cognate reflecting early formal variation',607),
(1139,210,'frændi','Old Icelandic','a North Germanic cognate whose Scandinavian sense centers relative',607),
(1140,210,'frände','Swedish','a Scandinavian continuation in the relation or kinsman sense',607),
(1141,210,'frænde','Danish','a Scandinavian continuation in the relation or kinsman sense',607),
(1142,210,'*frithu-','Germanic','a related peace or safety noun formed from the same root according to American Heritage',611),
(1143,210,'Frigg','Germanic deity name','a name placed by American Heritage in the wider *frī- family',611),
(1144,210,'Friday','English','a later name preserving Frigg through the weekday formation',611),
(1145,210,'Frederick','English personal name','a name ultimately containing the related Germanic peace noun',611),
(1146,210,'Siegfried','German personal name','a name ultimately containing the related Germanic peace noun',611);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(925,210,1,'Proposed Indo-European comparative horizon','*prī-','American Heritage places the Germanic friend and free family under a reconstructed Indo-European root. This is not one archaeological site, written token, or recoverable friendship institution.',NULL,NULL,'uncertain',-4500,-2500,'range','Conventional comparative bounds for a proposed reconstruction.'),
(926,210,2,'Proto-Germanic linguistic horizon','*frī-','The like, love, or friendly base is reconstructed from daughter-language evidence; no Proto-Germanic speaker, homeland point, or manuscript token is claimed.',NULL,NULL,'uncertain',-500,200,'range','A comparative-linguistic interval, not a directly dated word.'),
(927,210,3,'Germanic participial-formation horizon','*frijōnd-','The loving-one agent formation predates the daughter-language records, but its exact lexicalization moment and inflectional shape remain reconstructed.',NULL,NULL,'uncertain',-500,200,'range','The same broad language horizon does not imply an exact coinage date.'),
(928,210,4,'Old English textual record','frēond, frīond, friand, and inflected forms','OED and Bosworth–Toller document dialectal and inflectional variation across Old English texts without reducing the language to one birthplace.',NULL,NULL,'broad',450,1150,'range','Conventional Old English bounds; individual source records are separately qualified.'),
(929,210,5,'Middle English textual record','frẹ̄nd and a wide spelling field','MED records forms including friend, frend, freond, frind, vrend, and many others across companion, ally, relation, and address senses.',NULL,NULL,'broad',1150,1500,'range','Conventional Middle English bounds, not one standardization event.'),
(930,210,6,'Early modern English print continuum','friend and competing spellings','OED records continuing variation while the current friend spelling and short-vowel pronunciation become conventional. The process is not assigned to one city or year.',NULL,NULL,'broad',1500,1800,'range','A broad standardization interval, not an exact sound-change date.'),
(931,210,7,'Global contemporary English','friend across interpersonal and specialized senses','OED includes companion, ally, supporter, Quaker, climbing device, and social-network contact. Contemporary English is distributed and not reduced to one map point.',NULL,NULL,'global',1800,2026,'range','A modern semantic continuum, not proof that every sense is equally common.'),
(932,210,8,'Knowledge boundary','beyond the proposed *prī- comparison','The route stops before love, freedom, friendship, peace, kinship, and social membership are merged into one prehistoric origin myth.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No defensible earlier date or coordinate is known.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(925,611,'Etymology: see prī- in the Appendix of Indo-European roots','supports','Publishes the proposed deep comparison.'),
(926,611,'Word History: Germanic root *frī-','supports','Prints and glosses the reconstructed Germanic base.'),
(926,607,'Etymology and Form history: Germanic base of free; *ī from earlier *ij','context','Supplies the independent base-vowel analysis.'),
(927,607,'Etymology Summary and Form history','supports','Publishes the Germanic present-participial formation and morphology.'),
(927,609,'Grammar: freónd, freónde loving, participle of freón','context','Supplies the Old English reflex and its grammatical analysis.'),
(928,607,'Old English quotations and Forms tab','supports','Documents the Old English textual and variant record.'),
(928,609,'Headword, grammar, examples, and etymology','supports','Supplies the Old English headword, inflection, and cognate set.'),
(929,608,'Forms, etymology, definitions, and quotations','supports','Documents Middle English variation and semantic range.'),
(930,607,'Forms tab; early modern quotations','supports','Documents spelling variation and early modern continuation.'),
(931,607,'Meanings A.1–A.11 and Phrases','supports','Supplies the current and specialized semantic inventory.'),
(932,611,'Deepest displayed prī- comparison','supports','Supports an explicit stopping point after the proposed root.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(790,210,'Was friend historically an agent noun meaning one who loves?','Yes at the word-formation level. OED, Bosworth–Toller, and American Heritage independently identify a present-participial formation on the love or favor base.','established','Three dictionary traditions converge on the grammatical analysis.','resolved','The dossier states this as historical morphology, not a mandatory modern definition.'),
(791,210,'Are friend and free historically related?','Yes. OED places friend on the Germanic base of free, Bosworth–Toller glosses freón as free or love, and American Heritage traces both through Germanic *frī-.','established','Independent sources explicitly connect the families.','resolved','The relation is represented through the shared reconstructed base.'),
(792,210,'Does friend literally mean free in modern English?','No. Historical relationship is not synchronic definition. OED gives friend its own extensive noun senses, while the Germanic base links the histories.','established','The same sources separate headword meaning from ancestry.','resolved','The graph rejects an etymological-fallacy slogan.'),
(793,210,'Are friend and fiend the same root with opposite meanings?','No. OED says fiend shows a similar formation, but the two agent nouns are built on different verb bases. Parallel morphology does not establish cognacy.','established','Both OED etymologies explicitly compare the formations without merging the roots.','resolved','A cited context link and rabbit hole connect them without an ancestry edge.'),
(794,210,'Does Modern English friend descend through Middle English and Old English?','Yes. MED derives frẹ̄nd from Old English frēond, and OED supplies the continuous form history into modern English.','established','The route is directly documented by historical dictionaries.','resolved','Attested stages remain separate nodes with their own dates and forms.'),
(795,210,'Was friend always spelled friend?','No. OED and MED inventory friand, freond, frend, frind, vrend, freynd, frynd, and many further forms.','established','Both form inventories are extensive and explicit.','resolved','Variant spellings are evidence, not duplicate word origins.'),
(796,210,'Was Old English frēond still transparently a productive participle in every use?','Not demonstrably. Its history is participial, but OED says it inflects as a strong masculine agent noun and the textual record uses it as an ordinary noun.','probable','Historical derivation and synchronic lexical category are different questions.','open',NULL),
(797,210,'Is *frijōnd- an attested Proto-Germanic spelling?','No. It is a normalized reconstruction used to represent the common participial formation behind the daughter-language set.','established','OED and American Heritage publish the comparative analysis, not a written Proto-Germanic object.','resolved','The asterisk remains structural and visible.'),
(798,210,'Can the exact Proto-Germanic pronunciation and inflection be recovered?','Not completely. OED reconstructs vowel contraction and formal variation, but no recording or written Proto-Germanic paradigm survives.','probable','Comparative grammar explains the forms without reproducing a historical audio event.','open',NULL),
(799,210,'Does friend securely descend from exactly *prī-?','It is a published Indo-European comparison, not direct attestation. The Germanic and Old English stages are firmer than the deepest displayed root.','proposed','American Heritage supplies the root cross-reference; no proto-language token survives.','open',NULL),
(800,210,'Did friend always mean only an intimate non-relative companion?','No. OED and MED document ally, supporter, patron, relation, lover, address, and other uses beside close companion.','established','The numbered senses and historical quotations are explicit.','resolved','The summary preserves semantic plurality rather than a single definition.'),
(801,210,'Can the exact moment when a loving one became the noun friend be dated?','No. The formation predates the daughter-language records, while lexicalization is inferred from already-established nouns in those languages.','probable','Comparative evidence gives relative chronology, not a coinage event.','open',NULL),
(802,210,'Does the friend-free relationship prove that early friends were legally free group members?','No. The reviewed sources establish a lexical base spanning love, favor, and freeing; they do not recover one legal or sociological institution behind the word.','established','No cited source licenses that social-history leap.','resolved','The dossier keeps semantic reconstruction separate from institutional speculation.'),
(803,210,'Are Dutch vriend and German Freund cognates of English friend?','Yes. OED lists the Old and modern West Germanic forms in the inherited cognate set.','established','The cross-Germanic inventory is explicit.','resolved','They are relatives, not daughter-to-daughter borrowings.'),
(804,210,'Did the Scandinavian cognates preserve exactly the English companion sense?','No. OED says the Scandinavian words center the sense relative, while their ordinary friend sense is expressed by another word family.','established','OED explicitly distinguishes the Scandinavian semantic outcome.','resolved','Cognacy does not require identical later meanings.'),
(805,210,'Does the Beowulf quotation prove the first use of friend?','No. It is one source-reported Old English textual witness, not a birth certificate for the word or its earliest surviving physical token.','established','OED supplies the quotation but does not make the dossier''s inspected-object claim.','resolved','The attestation remains source-reported.'),
(806,210,'Does the spelling friend preserve one stable medieval vowel?','No. OED describes Old English ēo and īo, late monophthongization, and Middle English long and short vowel variants.','established','The form-history note expressly records competing vowel outcomes.','resolved','Spelling continuity is not phonetic stasis.'),
(807,210,'Can the pronunciation of Old English frēond and Proto-Germanic *frijōnd- be heard exactly?','No. Historical phonology supports normalized approximations, not audio recordings or one recoverable dialect realization.','established','The sources are written and comparative records.','resolved','Only the modern headword receives a current phonemic transcription.'),
(808,210,'Are Latin amīcus and Greek philos cognates of friend because all mean friend?','No such cognacy is established here. American Heritage uses them as transparent love-to-friend analogies, not as ancestors of English friend.','established','The Word History separates analogy from the Germanic ancestry it then explains.','resolved','No ancestry edge is drawn to Latin or Greek.'),
(809,210,'Do Frigg, Friday, Frederick, and Siegfried descend from the noun friend?','No. American Heritage places them in related Germanic formations under the wider *frī- family; they are collateral relatives, not descendants of English friend.','established','The source describes the root and peace-noun connections separately.','resolved','They appear as relatives, never children of the English headword.'),
(810,210,'Is one still older ancestor securely known beyond *prī-?','No. The displayed form is already a proposed reconstruction, and no deeper node clears the reviewed evidence boundary.','established','The accessible source trail ends at the Indo-European root cross-reference.','resolved','The route ends at UNKNOWN.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(790,607,'Etymology Summary','supports','Identifies noun use of a Germanic present participle.'),
(790,609,'Grammar: freónd, freónde loving, participle of freón','supports','Supplies the Old English grammatical analysis.'),
(790,611,'Word History: originally one who loves','supports','Independently states the agent meaning.'),
(791,607,'Germanic base of free v.','supports','Explicitly connects the word histories.'),
(791,610,'freón: to free, love','supports','Documents the Old English verb''s paired meanings.'),
(791,611,'Word History: frēon survives as free; Germanic *frī-','supports','Supplies the wider historical relation.'),
(792,607,'Meanings A.1–A.11','supports','Separates the modern noun senses from deep ancestry.'),
(793,607,'Etymology Summary: fiend shows a similar formation','supports','Publishes the morphological parallel.'),
(793,509,'Etymology Summary: friend as the antonym with similar formation','supports','Confirms the comparison from the fiend side.'),
(794,608,'Etymology: OE frēond','supports','Directly links the Middle and Old English stages.'),
(794,607,'Forms and Etymology tabs','supports','Continues the record into modern English.'),
(795,607,'Forms tab','supports','Supplies the Old, Middle, early modern, regional, and Scottish forms.'),
(795,608,'Forms inventory','supports','Supplies the Middle English spelling field.'),
(796,607,'Form history: strong masculine and agent nouns in -nd','supports','Distinguishes inherited morphology from noun inflection.'),
(797,607,'Cross-Germanic cognates and reconstructed vowel analysis','supports','Supplies comparative evidence rather than an attested proto-token.'),
(798,607,'Form history','supports','Shows the reconstructive complexity of vowel and inflectional history.'),
(799,611,'Etymology: see prī-','supports','Publishes the deep comparison without direct attestation.'),
(800,607,'Meanings A.1–A.11','supports','Documents the English semantic range.'),
(800,608,'Definitions 1–6','context','Documents overlapping Middle English senses.'),
(801,607,'Germanic participial analysis and daughter-language cognates','supports','Establishes relative prehistory without an innovation date.'),
(802,611,'Word History: love, like, honor, set free','supports','Supplies the semantic cluster but no legal institution.'),
(803,607,'Etymology Summary: Dutch vriend and German Freund set','supports','Publishes the cognates.'),
(804,607,'Notes: meanings in other Germanic languages','supports','Separates Scandinavian relative from West Germanic friend senses.'),
(805,607,'Beowulf 1018 quotation','supports','Supplies the textual witness without an inspected manuscript claim.'),
(806,607,'Form history','supports','Documents the vowel variation and monophthongization.'),
(807,607,'Written forms and historical-grammar analysis','supports','Provides no recorded ancient or medieval audio.'),
(808,611,'Word History: Latin and Greek analogies before the Germanic explanation','supports','Uses semantic analogy without claiming cognacy.'),
(809,611,'Word History: *frithu-, Frigg, Friday, Frederick, and Siegfried','supports','Publishes the collateral root-family relationships.'),
(810,611,'Deepest displayed prī- cross-reference','supports','Supports the explicit boundary.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(210,210,2102,'friend','Friend and fiend are grammatical twins—but not cognates.','OED analyzes friend as a noun use of the present participle behind the Germanic free and love family, and it explicitly calls fiend a similar formation. Bosworth–Toller makes the Old English structure visible: freónd is the loving participle of freón, to free or love. The enemy word follows a different hate verb. The real unveiling is structural: one inherited agent noun is the loving one, the other the hating one or enemy, and parallel grammar must not be mistaken for one root splitting into moral opposites.','A',100,'The Middle and Old English forms, cross-Germanic cognates, participial morphology, base verb, semantic range, and friend-fiend comparison are independently recoverable. The exact Proto-Germanic surface, lexicalization moment, pronunciation, PIE comparison, and any prehistoric social institution remain qualified.');
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
(210,607,'Etymology Summary and Form history','supports','Publishes the Germanic participial ancestry, cross-family set, and explicit fiend comparison.'),
(210,609,'Grammar: freónd, freónde loving, participle of freón','supports','Makes the Old English loving-agent structure explicit.'),
(210,610,'freón: to free, love','supports','Supplies the attested base verb.'),
(210,611,'Word History: originally one who loves','supports','Independently explains the formation and Germanic base.'),
(210,509,'Fiend etymology: friend as similar antonym formation','context','Confirms the morphological mirror from the enemy-word dossier.');
--> statement-breakpoint

INSERT INTO `context_links` (`id`,`from_entry_id`,`to_entry_id`,`link_type`,`title`,`explanation`,`scholar`,`confidence`,`editorial_status`) VALUES
(16,210,188,'parallel_agent_nouns_distinct_roots','FRIEND AND FIEND MIRROR EACH OTHER IN GRAMMAR, NOT ANCESTRY','Friend descends from a Germanic loving or favorably disposed participle; fiend descends from a different hating or hostile participle that lexicalized as enemy. OED explicitly calls the formations similar. This cited bridge records morphological parallelism and antonymy without drawing a genealogical edge.','Oxford English Dictionary editors · SET-U editorial review','established','reviewed');
--> statement-breakpoint

INSERT INTO `context_link_sources` (`context_link_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(16,607,'Etymology Summary: fiend shows a similar formation','supports','Publishes the comparison while keeping friend on its own Germanic base.'),
(16,509,'Etymology Summary: friend as antonym with similar agent-noun formation','supports','Confirms the bridge from the fiend entry.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(166,210,188,'FRIEND AND FIEND: MORPHOLOGICAL MIRRORS, NOT COGNATES','Travel sideways from the loving-one fossil to the hating-one or enemy fossil. Their matching nd-agent architecture is real and explicitly compared by OED; their verb bases and reconstructed ancestry remain distinct. The rabbit hole exposes grammar without inventing a moral fable about one root splitting into good and evil.',100,'A','reviewed');
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*,CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 1336 AND 1342
)
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key,k.language_id,k.form,k.normalized_form,k.sense_key,k.transliteration,k.pronunciation,k.status,k.date_label,k.date_start,k.date_end,k.gloss,k.notes,'reviewed'
FROM keyed_forms k
WHERE k.id=(SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key=k.canonical_key);
--> statement-breakpoint

INSERT OR IGNORE INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id,n.id,CASE WHEN f.status='boundary' THEN 'boundary' WHEN f.id BETWEEN 1336 AND 1338 THEN 'established' WHEN f.id BETWEEN 1339 AND 1340 THEN 'probable' ELSE 'proposed' END,
  CASE WHEN f.status='boundary' THEN 'Dossier-specific endpoint beyond the proposed *prī- comparison.' WHEN f.id BETWEEN 1336 AND 1338 THEN 'Attested English-stage form supported by historical dictionary records.' ELSE 'Canonicalized reconstructed form; comparative uncertainty remains on the cited edges.' END
FROM forms f JOIN lexeme_nodes n ON n.canonical_key=CASE
  WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
  ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
END
WHERE f.id BETWEEN 1336 AND 1342;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 1127 AND 1132;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_form_link ON parent_form_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_form_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 1127 AND 1132;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 1127 AND 1132;
