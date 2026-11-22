-- Build the lexical family at the center of the project itself. WORD follows
-- the inherited Germanic zero-grade branch, VERB and its English descendants
-- follow Latin verbum through French or learned transmission. The graph joins
-- the branches only at the independently published *werh1- speaking root and
-- exposes ad-, pro-, -alis, and -atim as real component paths.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(116,'word','word','word','/wɜːrd/','noun','A meaningful spoken or written unit; an inherited English form whose Germanic branch is cognate with Latin verbum rather than borrowed from it.','Word and verb are deep cousins, not parent and child: English word is inherited through Germanic while verb returned through Latin and French.','reviewed'),
(117,'verb','verb','verb','/vɜːrb/','noun','A grammatical word class expressing action, occurrence, or state; English borrowed the label through Anglo-French from Latin verbum.','Before verb named one grammatical class, Latin verbum could mean any word, utterance, expression, or discourse.','reviewed'),
(118,'verbal','verbal','verbal','/ˈvɜːrbəl/','adjective','Of, relating to, or consisting of words; also of verbs and, in one modern contrast, spoken rather than written.','Verbal did not begin as a synonym for spoken: its older and wider center is words themselves.','reviewed'),
(119,'adverb','adverb','adverb','/ˈædˌvɜːrb/','noun','A grammatical class commonly modifying verbs, adjectives, other adverbs, phrases, clauses, or sentences; the English term continues Latin adverbium.','The ad- in adverb is not English add, and the class does far more than modify verbs.','reviewed'),
(120,'proverb','proverb','proverb','/ˈprɑːˌvɜːrb/','noun','A brief traditional saying or maxim; English received the word through Anglo-French from Latin proverbium.','Proverb and pro-verb are different words: the ancient saying and the modern grammatical substitute only look identical without the hyphen.','reviewed'),
(121,'verbatim','verbatim','verbatim','/vɜːrˈbeɪtəm/','adverb','In exactly the same words; English borrowed the Medieval Latin adverb verbatim, built on verbum and -atim.','Verbatim entered English as an adverb meaning word for word; its familiar adjective use is later.','reviewed');
--> statement-breakpoint

PRAGMA defer_foreign_keys = ON;
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(571,116,686,687,'continuation','Modern English preserves the inherited spelling word while pronunciation continues the history of English vowel and rhotic systems.','The core linguistic-unit sense continues alongside utterance, promise, news, command, and technical extensions.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use before the twelfth century.','reviewed'),
(572,116,687,688,'continuation','Middle English word continues Old English word with no donor-language substitution.','Word, utterance, and expression remain central.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(573,116,688,689,'inheritance','Old English word continues reconstructed Germanic *wurdam through inherited West Germanic development.','Something spoken remains a word or utterance.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic form is reconstructed, not a written donor token.','reviewed'),
(574,116,689,690,'inheritance','Germanic *wurdam reflects the zero-grade *wr̥-dho- formation with inherited Germanic nominal development.','The reconstructed spoken-unit noun remains the source of the Germanic word family.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; no single transmission date is claimed.','reviewed'),
(575,116,690,691,'derivation','Zero-grade *wr̥- combines with the reconstructed *-dho- nominal suffix.','The speaking root becomes a noun for something spoken.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both forms are reconstructed.','reviewed'),
(576,116,691,692,'knowledge_boundary','No older form is promoted beyond the reviewed *werh1- speaking root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The root is reconstructed and must not be mistaken for an attested first word.',NULL,'reviewed'),

(577,117,693,694,'continuation','English verb regularizes the Middle English final vowel away while preserving the learned stem.','The specialized grammatical class remains central.','Merriam-Webster Editors','established',NULL,'First known use is reported in the fourteenth century.','reviewed'),
(578,117,694,695,'borrowing','Middle English verbe borrows Anglo-French verbe with minor English phonological adaptation.','The grammatical term is transmitted without a return to the broader meaning word.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(579,117,695,696,'borrowing','Anglo-French verbe continues Latin verbum with Romance loss of the final syllable.','The Latin grammatical use becomes the French and English class name.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(580,117,696,697,'semantic_specialization','The Latin form is unchanged; the grammatical use selects one technical sense of verbum.','A general word or utterance becomes the name of the predicate word class.','Lewis and Short','established',NULL,'Lewis and Short cite Varro and Cicero for the grammatical use.','reviewed'),
(581,117,697,698,'inheritance','The reconstructed *wer-dho- formation develops into Latin verbum; the graph records the published comparison without inventing intermediate spellings.','A formation meaning something spoken becomes Latin word, utterance, and later grammatical verb.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; not a directly dated transmission event.','reviewed'),
(582,117,698,699,'derivation','Full-grade *wer- combines with the reconstructed *-dho- suffix.','The speaking root becomes a nominal formation for something spoken.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both forms are reconstructed.','reviewed'),
(583,117,699,700,'knowledge_boundary','No older form is promoted beyond the reviewed *werh1- speaking root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The English grammatical history does not make the prehistoric root directly observable.',NULL,'reviewed'),

(584,118,701,702,'continuation','English verbal regularizes the Middle English final vowel while preserving the learned base and suffix.','The relational word sense continues while verb-related and spoken-language senses develop alongside it.','Merriam-Webster Editors','established',NULL,'First known use is reported in the fifteenth century.','reviewed'),
(585,118,702,703,'borrowing','Middle English verbale borrows Late Latin verbalis with English adaptation of the final syllable.','Of words or verbs enters English and later supports the spoken-rather-than-written contrast.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(586,118,703,704,'derivation','Late Latin verbalis adds the relational suffix -alis to verbum.','A word or verb becomes the base of an adjective meaning of or consisting of words.','Merriam-Webster Editors','established',NULL,'The suffix follows a separately traversable graph branch.','reviewed'),
(587,118,704,705,'inheritance','The reconstructed *wer-dho- formation develops into Latin verbum; the graph records the published comparison without inventing intermediate spellings.','A formation meaning something spoken becomes Latin word, utterance, and later grammatical verb.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; not a directly dated transmission event.','reviewed'),
(588,118,705,706,'derivation','Full-grade *wer- combines with the reconstructed *-dho- suffix.','The speaking root becomes a nominal formation for something spoken.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both forms are reconstructed.','reviewed'),
(589,118,706,707,'knowledge_boundary','No older form is promoted beyond the reviewed *werh1- speaking root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The -alis branch ends separately.',NULL,'reviewed'),

(590,119,708,709,'continuation','English adverb regularizes the Middle English final vowel while retaining the learned compound.','The grammatical class remains a modifier category whose actual scope is wider than verbs alone.','Merriam-Webster Editors','established',NULL,'First known use is reported in the fifteenth century.','reviewed'),
(591,119,709,710,'borrowing','Middle English adverbe borrows Middle French adverbe.','The grammatical category is transmitted through French.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(592,119,710,711,'borrowing','Middle French adverbe continues Latin adverbium with Romance loss of the final syllable.','The Latin technical category enters French and English grammatical vocabulary.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(593,119,711,712,'compound_member','Latin adverbium contains verbum as its lexical member; ad- is exposed as a second canonical parent.','A word attached toward another expression becomes a technical modifier category.','Merriam-Webster Editors','established',NULL,'Merriam-Webster also identifies the term as a translation of Greek epirrhema.','reviewed'),
(594,119,712,713,'inheritance','The reconstructed *wer-dho- formation develops into Latin verbum; the graph records the published comparison without inventing intermediate spellings.','A formation meaning something spoken becomes Latin word, utterance, and later grammatical verb.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; not a directly dated transmission event.','reviewed'),
(595,119,713,714,'derivation','Full-grade *wer- combines with the reconstructed *-dho- suffix.','The speaking root becomes a nominal formation for something spoken.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both forms are reconstructed.','reviewed'),
(596,119,714,715,'knowledge_boundary','No older form is promoted beyond the reviewed *werh1- speaking root.','The lexical branch ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The ad- component reaches a separate boundary.',NULL,'reviewed'),

(597,120,716,717,'continuation','English proverb regularizes the Middle English final vowel while preserving the learned stem.','The traditional-saying sense continues.','Merriam-Webster Editors','established',NULL,'First known use is reported in the fourteenth century.','reviewed'),
(598,120,717,718,'borrowing','Middle English proverbe borrows Anglo-French proverbe.','The traditional maxim enters English through French.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(599,120,718,719,'borrowing','Anglo-French proverbe continues Latin proverbium with Romance loss of the final syllable.','The Latin saying term becomes the French and English noun.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(600,120,719,720,'compound_member','Latin proverbium contains verbum as its lexical member; pro- is exposed as a second canonical parent.','A marked or public saying becomes the traditional maxim named by the compound.','Merriam-Webster Editors','established','The compound structure is secure; the reviewed dictionary does not reduce the semantic force of pro- to one modern gloss.',NULL,'reviewed'),
(601,120,720,721,'inheritance','The reconstructed *wer-dho- formation develops into Latin verbum; the graph records the published comparison without inventing intermediate spellings.','A formation meaning something spoken becomes Latin word, utterance, and later grammatical verb.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; not a directly dated transmission event.','reviewed'),
(602,120,721,722,'derivation','Full-grade *wer- combines with the reconstructed *-dho- suffix.','The speaking root becomes a nominal formation for something spoken.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both forms are reconstructed.','reviewed'),
(603,120,722,723,'knowledge_boundary','No older form is promoted beyond the reviewed *werh1- speaking root.','The lexical branch ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The pro- component reaches a separate boundary.',NULL,'reviewed'),

(604,121,724,725,'borrowing','English verbatim borrows Medieval Latin verbatim with learned stress and pronunciation adaptation.','Word for word remains the core adverbial meaning; adjective use develops later in English.','Merriam-Webster Editors','established',NULL,'The adverb is reported from the fifteenth century and the adjective from 1613.','reviewed'),
(605,121,725,726,'derivation','Medieval Latin verbatim forms an adverb on verbum with -atim.','A word becomes the base of the distributive sense word by word.','Merriam-Webster Editors','established',NULL,'The suffix follows a separately traversable graph branch.','reviewed'),
(606,121,726,727,'inheritance','The reconstructed *wer-dho- formation develops into Latin verbum; the graph records the published comparison without inventing intermediate spellings.','A formation meaning something spoken becomes Latin word, utterance, and later grammatical verb.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; not a directly dated transmission event.','reviewed'),
(607,121,727,728,'derivation','Full-grade *wer- combines with the reconstructed *-dho- suffix.','The speaking root becomes a nominal formation for something spoken.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both forms are reconstructed.','reviewed'),
(608,121,728,729,'knowledge_boundary','No older form is promoted beyond the reviewed *werh1- speaking root.','The lexical branch ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The -atim component reaches a separate boundary.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(571,273,'Word History and current definitions','supports','Supplies the inherited English form, current semantic range, and pre-twelfth-century horizon.'),
(571,274,'Headword definitions and etymology','context','Independently documents the modern form and Old English ancestry.'),
(572,273,'Etymology: Middle English from Old English','supports','Explicitly supplies the English continuity.'),
(572,274,'Etymology: Middle English from Old English','context','Independently supplies the same path.'),
(573,275,'wer-5, section 1: Old English word from Germanic *wurdam','supports','Publishes the Germanic reconstruction behind Old English word.'),
(573,273,'Old High German wort comparison','context','Provides an independent Germanic cognate anchor.'),
(574,275,'wer-5, section 1: *wr-dho- to Germanic *wurdam','supports','Publishes the zero-grade formation and Germanic reflex.'),
(575,275,'wer-5 heading and section 1','supports','Analyzes the zero-grade suffixed form under the speaking root.'),
(576,275,'wer-5 entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(577,276,'Word History and First Known Use','supports','Supplies the Middle English form and fourteenth-century English horizon.'),
(578,276,'Etymology: Middle English verbe borrowed from Anglo-French','supports','Names the immediate donor.'),
(579,276,'Etymology: Anglo-French borrowed from Latin verbum','supports','Names the Latin source.'),
(580,277,'I and II.C: general word senses and grammatical verb','supports','Directly distinguishes broad Latin verbum from the specialized grammatical use.'),
(580,276,'Latin verbum “word, verb”','context','Independently preserves both Latin senses in the English etymology.'),
(581,275,'wer-5, section 2: *wer-dho- to Latin verbum','supports','Publishes the reconstructed full-grade formation.'),
(581,273,'Latin verbum listed as akin to English word','context','Independently connects the Latin and Germanic branches as cognates.'),
(582,275,'wer-5 heading and section 2','supports','Analyzes the suffixed full-grade form under the speaking root.'),
(583,275,'wer-5 entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(584,278,'Definitions, Word History, and First Known Use','supports','Supplies the English form, wide semantic range, and fifteenth-century horizon.'),
(585,278,'Etymology: Middle English verbale borrowed from Late Latin verbalis','supports','Names the direct learned route.'),
(586,278,'Etymology: verbalis from verbum + -alis','supports','Explicitly identifies the lexical base and suffix.'),
(587,275,'wer-5, section 2: *wer-dho- to Latin verbum','supports','Publishes the reconstructed full-grade formation.'),
(588,275,'wer-5 heading and section 2','supports','Analyzes the suffixed form under the speaking root.'),
(589,275,'wer-5 entry endpoint','supports','Defines the deepest reviewed source horizon.'),

(590,279,'Definitions, Word History, and First Known Use','supports','Supplies the English form, modern modifier scope, and fifteenth-century horizon.'),
(591,279,'Etymology: Middle English adverbe borrowed from Middle French','supports','Names the immediate French donor.'),
(592,279,'Etymology: Middle French borrowed from Latin adverbium','supports','Names the Latin technical source.'),
(593,279,'Etymology: Latin adverbium, translation of Greek epirrhema, from ad- + verbum','supports','Publishes both compound members and the Greek-calque context.'),
(594,275,'wer-5, section 2: *wer-dho- to Latin verbum','supports','Publishes the reconstructed full-grade formation.'),
(595,275,'wer-5 heading and section 2','supports','Analyzes the suffixed form under the speaking root.'),
(596,275,'wer-5 entry endpoint','supports','Defines the deepest reviewed lexical horizon.'),

(597,280,'Word History and First Known Use','supports','Supplies the English form and fourteenth-century horizon.'),
(598,280,'Etymology: Middle English proverbe from Anglo-French','supports','Names the immediate donor.'),
(599,280,'Etymology: Anglo-French from Latin proverbium','supports','Names the Latin source.'),
(600,280,'Etymology: Latin proverbium from pro- + verbum','supports','Publishes both lexical components.'),
(601,275,'wer-5, section 2: *wer-dho- to Latin verbum','supports','Publishes the reconstructed full-grade formation.'),
(602,275,'wer-5 heading and section 2','supports','Analyzes the suffixed form under the speaking root.'),
(603,275,'wer-5 entry endpoint','supports','Defines the deepest reviewed lexical horizon.'),

(604,281,'Word History and First Known Use','supports','Supplies the Medieval Latin source, English adverb horizon, and later adjective date.'),
(605,281,'Etymology: Medieval Latin verbatim from verbum + -atim','supports','Explicitly identifies both components.'),
(605,277,'I.B.1: ad verbum and verbum pro verbo, word for word','context','Documents the Classical Latin word-for-word phrase family.'),
(606,275,'wer-5, section 2: *wer-dho- to Latin verbum','supports','Publishes the reconstructed full-grade formation.'),
(607,275,'wer-5 heading and section 2','supports','Analyzes the suffixed form under the speaking root.'),
(608,275,'wer-5 entry endpoint','supports','Defines the deepest reviewed lexical horizon.');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(273,'mw-word','Word — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/word',NULL,'historical_dictionary'),
(274,'ahd-word','Word — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=word',NULL,'historical_dictionary'),
(275,'ahd-ie-wer5','Indo-European Root wer-5','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(276,'mw-verb','Verb — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/verb',NULL,'historical_dictionary'),
(277,'lewis-short-verbum','Verbum — Lewis and Short, A Latin Dictionary','Charlton T. Lewis and Charles Short',1879,'Clarendon Press','https://classics.andrewgadsden.com/lewisandshort/entry/n50523',NULL,'historical_dictionary'),
(278,'mw-verbal','Verbal — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/verbal',NULL,'historical_dictionary'),
(279,'mw-adverb','Adverb — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/adverb',NULL,'historical_dictionary'),
(280,'mw-proverb','Proverb — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/proverb',NULL,'historical_dictionary'),
(281,'mw-verbatim','Verbatim — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/verbatim',NULL,'historical_dictionary'),
(282,'ahd-ie-ad','Indo-European Root ad-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(283,'ahd-ie-per1','Indo-European Base per-1','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(686,116,1,1,'word','word','meaningful-language-unit','word','/wɜːrd/','attested','before 12th century–today',1000,NULL,'a meaningful spoken or written unit; an utterance or expression','Merriam-Webster reports use before the twelfth century; the normalized start is a display horizon, not a directly inspected first token.'),
(687,116,2,2,'word','word','meaningful-language-unit','word',NULL,'attested','Middle English',1150,1500,'word, utterance, expression','The spelling remains visibly stable across the Middle English transition.'),
(688,116,3,3,'word','word','meaningful-language-unit','word',NULL,'attested','Old English',450,1150,'word, utterance, speech','Both Merriam-Webster and American Heritage identify the Old English stage.'),
(689,116,5,4,'*wurdam','wurdam','spoken-unit-noun','*wurdam',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'word; something spoken','American Heritage publishes the Germanic reconstruction under the zero-grade branch.'),
(690,116,6,5,'*wr̥-dho-','wr-dho','spoken-unit-formation','*wr̥-dho-',NULL,'reconstructed','Proto-Indo-European suffixed zero grade',-4500,-2500,'something spoken; word','A reconstructed formation, never an attested spelling.'),
(691,116,6,6,'*werh₁-','werh1','speak-root','*werh₁-',NULL,'reconstructed','Proto-Indo-European speaking root',-4500,-2500,'speak','American Heritage gives *werh1- as the oldest root shape, with a *wreh1- variant.'),
(692,116,7,7,'UNKNOWN','unknown','word-deep-boundary',NULL,NULL,'boundary','before the reviewed *werh₁- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the speaking root.','The trail stops at the source-supported root rather than inventing a universal first word.'),

(693,117,1,1,'verb','verb','grammar-word-class','verb','/vɜːrb/','attested','14th century–today',1300,NULL,'a grammatical word class expressing action, occurrence, or state','The first-known-use century is source-reported, not a directly inspected object.'),
(694,117,2,2,'verbe','verbe','grammar-word-class','verbe',NULL,'attested','Middle English, 14th century',1300,1500,'verb','Middle English preserves the Anglo-French learned form.'),
(695,117,12,3,'verbe','verbe','grammar-word-class','verbe',NULL,'attested','Anglo-French before 1400',1066,1400,'verb; grammatical word','The immediate donor named by Merriam-Webster.'),
(696,117,9,4,'verbum','verbum','grammar-word-class','verbum',NULL,'attested','Latin grammatical tradition',-100,700,'verb; predicate word','Lewis and Short document the specialized grammatical sense in Varro and Cicero.'),
(697,117,9,5,'verbum','verbum','word-utterance','verbum',NULL,'attested','Latin antiquity',-700,700,'word, utterance, expression, language, discourse','The broad lexical sense precedes and coexists with the grammatical specialization.'),
(698,117,6,6,'*wer-dho-','wer-dho','spoken-unit-formation','*wer-dho-',NULL,'reconstructed','Proto-Indo-European suffixed full grade',-4500,-2500,'something spoken; word','Published reconstructed formation behind Latin verbum.'),
(699,117,6,7,'*werh₁-','werh1','speak-root','*werh₁-',NULL,'reconstructed','Proto-Indo-European speaking root',-4500,-2500,'speak','Shared deepest reviewed root with English word.'),
(700,117,7,8,'UNKNOWN','unknown','verb-deep-boundary',NULL,NULL,'boundary','before the reviewed *werh₁- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the speaking root.','The English borrowing route and Latin semantic specialization do not make the reconstruction attested.'),

(701,118,1,1,'verbal','verbal','word-related-adjective','verbal','/ˈvɜːrbəl/','attested','15th century–today',1400,NULL,'of, relating to, or consisting of words; of a verb; spoken rather than written','The word has several live senses; the spoken contrast is not the whole history.'),
(702,118,2,2,'verbale','verbale','word-related-adjective','verbale',NULL,'attested','Middle English, 15th century',1400,1500,'of or consisting of words','Merriam-Webster identifies the Middle English form.'),
(703,118,9,3,'verbālis','verbalis','word-related-adjective','verbālis',NULL,'attested','Late Latin',200,700,'of or relating to words or verbs','Late Latin derivative of verbum plus -alis.'),
(704,118,9,4,'verbum','verbum','word-utterance','verbum',NULL,'attested','Latin antiquity',-700,700,'word, utterance, expression, language, discourse','Shared lexical base.'),
(705,118,6,5,'*wer-dho-','wer-dho','spoken-unit-formation','*wer-dho-',NULL,'reconstructed','Proto-Indo-European suffixed full grade',-4500,-2500,'something spoken; word','Shared Latin-branch reconstruction.'),
(706,118,6,6,'*werh₁-','werh1','speak-root','*werh₁-',NULL,'reconstructed','Proto-Indo-European speaking root',-4500,-2500,'speak','Shared root.'),
(707,118,7,7,'UNKNOWN','unknown','verbal-deep-boundary',NULL,NULL,'boundary','before the reviewed *werh₁- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the speaking root.','The adjective suffix follows its own separately cited branch.'),

(708,119,1,1,'adverb','adverb','modifier-word-class','adverb','/ˈædˌvɜːrb/','attested','15th century–today',1400,NULL,'a word class modifying verbs, adjectives, adverbs, phrases, clauses, or sentences','The class has wider scope than its name may suggest.'),
(709,119,2,2,'adverbe','adverbe','modifier-word-class','adverbe',NULL,'attested','Middle English, 15th century',1400,1500,'adverb','English learned form from French.'),
(710,119,18,3,'adverbe','adverbe','modifier-word-class','adverbe',NULL,'attested','Middle French',1300,1600,'adverb','Immediate French donor named by Merriam-Webster.'),
(711,119,9,4,'adverbium','adverbium','grammar-compound','adverbium',NULL,'attested','Latin grammatical tradition',-100,700,'adverb; a word attached to another word or predicate','Merriam-Webster identifies a Latin translation of Greek epirrhema and analyzes ad- plus verbum.'),
(712,119,9,5,'verbum','verbum','word-utterance','verbum',NULL,'attested','Latin antiquity',-700,700,'word, utterance, expression, language, discourse','Lexical component of adverbium.'),
(713,119,6,6,'*wer-dho-','wer-dho','spoken-unit-formation','*wer-dho-',NULL,'reconstructed','Proto-Indo-European suffixed full grade',-4500,-2500,'something spoken; word','Shared Latin-branch reconstruction.'),
(714,119,6,7,'*werh₁-','werh1','speak-root','*werh₁-',NULL,'reconstructed','Proto-Indo-European speaking root',-4500,-2500,'speak','Shared root.'),
(715,119,7,8,'UNKNOWN','unknown','adverb-deep-boundary',NULL,NULL,'boundary','before the reviewed *werh₁- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the speaking root.','The ad- component follows a second branch to its own boundary.'),

(716,120,1,1,'proverb','proverb','traditional-saying','proverb','/ˈprɑːˌvɜːrb/','attested','14th century–today',1300,NULL,'a brief traditional saying, maxim, or adage','Distinct from the hyphenated grammatical term pro-verb.'),
(717,120,2,2,'proverbe','proverbe','traditional-saying','proverbe',NULL,'attested','Middle English, 14th century',1300,1500,'proverb, maxim','English continues the Anglo-French form.'),
(718,120,12,3,'proverbe','proverbe','traditional-saying','proverbe',NULL,'attested','Anglo-French before 1400',1066,1400,'proverb, maxim','Immediate donor named by Merriam-Webster.'),
(719,120,9,4,'proverbium','proverbium','saying-compound','proverbium',NULL,'attested','Latin antiquity',-200,700,'proverb, traditional saying','Latin formation on pro- and verbum.'),
(720,120,9,5,'verbum','verbum','word-utterance','verbum',NULL,'attested','Latin antiquity',-700,700,'word, utterance, expression, language, discourse','Lexical component of proverbium.'),
(721,120,6,6,'*wer-dho-','wer-dho','spoken-unit-formation','*wer-dho-',NULL,'reconstructed','Proto-Indo-European suffixed full grade',-4500,-2500,'something spoken; word','Shared Latin-branch reconstruction.'),
(722,120,6,7,'*werh₁-','werh1','speak-root','*werh₁-',NULL,'reconstructed','Proto-Indo-European speaking root',-4500,-2500,'speak','Shared root.'),
(723,120,7,8,'UNKNOWN','unknown','proverb-deep-boundary',NULL,NULL,'boundary','before the reviewed *werh₁- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the speaking root.','The pro- component follows a second branch to its own boundary.'),

(724,121,1,1,'verbatim','verbatim','exact-wording-adverb','verbatim','/vɜːrˈbeɪtəm/','attested','15th century–today',1400,NULL,'in exactly the same words; word for word','The adjective use is separately reported from 1613.'),
(725,121,14,2,'verbātim','verbatim','word-by-word-adverb','verbātim',NULL,'attested','Medieval Latin',500,1500,'word for word','Medieval Latin adverb formed from verbum plus -atim.'),
(726,121,9,3,'verbum','verbum','word-utterance','verbum',NULL,'attested','Latin antiquity',-700,700,'word, utterance, expression, language, discourse','Lexical base of verbatim.'),
(727,121,6,4,'*wer-dho-','wer-dho','spoken-unit-formation','*wer-dho-',NULL,'reconstructed','Proto-Indo-European suffixed full grade',-4500,-2500,'something spoken; word','Shared Latin-branch reconstruction.'),
(728,121,6,5,'*werh₁-','werh1','speak-root','*werh₁-',NULL,'reconstructed','Proto-Indo-European speaking root',-4500,-2500,'speak','Shared root.'),
(729,121,7,6,'UNKNOWN','unknown','verbatim-deep-boundary',NULL,NULL,'boundary','before the reviewed *werh₁- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the speaking root.','The -atim component follows its own separately cited branch.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(151,686,273,'before 12th century',NULL,'Merriam-Webster first-known-use report for word','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported earliest written record located by current scholarship; no underlying Old English object was directly inspected.'),
(152,693,276,'14th century',NULL,'Merriam-Webster first-known-use report for verb','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fourteenth-century object was directly inspected.'),
(153,701,278,'15th century',NULL,'Merriam-Webster first-known-use report for verbal','First Known Use, adjective',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fifteenth-century object was directly inspected.'),
(154,708,279,'15th century',NULL,'Merriam-Webster first-known-use report for adverb','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fifteenth-century object was directly inspected.'),
(155,716,280,'14th century',NULL,'Merriam-Webster first-known-use report for proverb','First Known Use, noun (1)',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fourteenth-century object was directly inspected.'),
(156,724,281,'15th century',NULL,'Merriam-Webster first-known-use report for adverbial verbatim','First Known Use, adverb',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fifteenth-century object was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(366,116,'Wort','German','Germanic cognate',273),
(367,116,'vaurd','Gothic','Germanic cognate cited beside Latin verbum',277),
(368,116,'eirein','Ancient Greek','speaking-root cognate',273),
(369,116,'weriya-','Hittite','calling-and-naming cognate',273),
(370,117,'verve','English / French lineage','Latin verbum descendant in the same reconstructed family',275),
(371,117,'rheme','English / Greek lineage','Greek speaking-root cousin',275),
(372,117,'irony','English / Greek lineage','Greek eirein descendant in the same reconstructed family',275),
(373,118,'nonverbal','English','negative derivative of verbal',278),
(374,118,'verbose','English / Latin lineage','verbum-family derivative through Latin verbosus',277),
(375,118,'verbality','English','abstract derivative of verbal',278),
(376,119,'epirrhema','Ancient Greek','source term translated by Latin adverbium',279),
(377,119,'adverbial','English','direct derivative of adverb',279),
(378,119,'adverbialize','English','later practice verb derived from adverbial',279),
(379,120,'pro-verb','English grammatical terminology','distinct later homograph with hyphen',280),
(380,120,'adage','English','semantic counterpart, not an ancestry claim',280),
(381,120,'byword','English','recognized semantic relative, not a donor',280),
(382,121,'ad verbum','Latin phrase','word-for-word phrase in the Classical Latin family',277),
(383,121,'verbum pro verbo','Latin phrase','literal-translation phrase in the Classical Latin family',277),
(384,121,'word-for-word','English','transparent semantic equivalent',281);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(427,116,1,'Indo-European linguistic horizon','reconstructed *werh1- and *wr-dho-','The speaking root and its zero-grade spoken-unit formation are comparative reconstructions, not archaeological points.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The reviewed source gives morphology and descendants, not a single date or homeland point.'),
(428,116,2,'Germanic linguistic horizon','reconstructed *wurdam','The zero-grade formation continues as a Germanic word noun ancestral to Old English.',NULL,NULL,'broad',-500,200,'range','The interval follows the project language horizon and does not claim a dated token.'),
(429,116,3,'England','Old English record before the 12th century','The inherited form is present in Old English and reaches Middle English without a borrowing event.',52200000,-1500000,'regional',NULL,1099,'before','The upper bound encodes Merriam-Webster’s before-the-twelfth-century label; no exact first year is claimed.'),
(430,116,4,'Global English','current word family','Modern word ranges across linguistic-unit, utterance, promise, news, command, and technical senses.',NULL,NULL,'global',NULL,NULL,'unresolved','Current global use is documented; the route does not invent one geographic point or first date.'),

(431,117,1,'Indo-European linguistic horizon','reconstructed *werh1- and *wer-dho-','The speaking root and full-grade spoken-unit formation are comparative reconstructions.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No unique place or dated event is supplied by the root entry.'),
(432,117,2,'Roman world','Latin verbum','Latin uses verbum broadly for a word or utterance and technically for a grammatical verb.',41900000,12500000,'broad',NULL,NULL,'unresolved','Lewis and Short cite ancient authors but this route does not collapse several passages into one first date.'),
(433,117,3,'Anglo-French Britain','Latin-to-French-to-English transmission','Anglo-French verbe carries the Latin grammatical term into Middle English.',52200000,-1500000,'regional',NULL,NULL,'unresolved','The donor chain is established more securely than one borrowing event.'),
(434,117,4,'Global English','14th century–today','English verb remains the grammatical class label.',NULL,NULL,'global',1300,NULL,'open','The open interval normalizes the reported fourteenth-century horizon to its lower bound; it is not a coinage claim.'),

(435,118,1,'Late Latin learned tradition','verbalis from verbum plus -alis','A relational adjective is formed on the Latin word and verb noun.',41900000,12500000,'broad',NULL,NULL,'unresolved','The source supplies a period label rather than one event.'),
(436,118,2,'England','15th-century English record','Middle English verbale becomes English verbal.',52200000,-1500000,'regional',1400,1499,'century','The interval preserves the source’s century-level precision.'),
(437,118,3,'Global English','15th century–today','Word-related, verb-related, spoken-language, and aptitude senses coexist.',NULL,NULL,'global',1400,NULL,'open','The open interval begins with the normalized source-reported century.'),

(438,119,1,'Indo-European linguistic horizon','separate ad- and *werh1- components','The two deep branches are reconstructed separately and meet only in the later Latin technical compound.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No single map point is assigned to a compound that did not yet exist.'),
(439,119,2,'Roman grammatical tradition','Latin adverbium','Latin forms adverbium and uses it as a translation of Greek epirrhema.',41900000,12500000,'broad',NULL,NULL,'unresolved','The source establishes the technical translation but does not date one coinage event.'),
(440,119,3,'France and England','Middle French to Middle English','French adverbe transmits the Latin category name into English.',49000000,2000000,'broad',NULL,NULL,'unresolved','The donor route is established more securely than one geographic handoff.'),
(441,119,4,'Global English','15th century–today','Adverb remains a major form-class label with scope extending beyond verbs.',NULL,NULL,'global',1400,NULL,'open','The open interval begins with the normalized source-reported century.'),

(442,120,1,'Indo-European linguistic horizon','separate per-1 and *werh1- components','The forward or before base and the speaking root are reconstructed separately.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No single prehistoric compound or location is asserted.'),
(443,120,2,'Roman world','Latin proverbium','Latin combines pro- and verbum in the traditional-saying noun inherited by French and English.',41900000,12500000,'broad',NULL,NULL,'unresolved','The source supplies the formation, not one dated first token.'),
(444,120,3,'Global English','14th century–today','The traditional saying remains current while the hyphenated grammatical pro-verb develops separately much later.',NULL,NULL,'global',1300,NULL,'open','The open interval begins with the normalized source-reported century.'),

(445,121,1,'Roman world','Latin verbum and word-for-word phrases','Classical Latin already expresses literal word-for-word correspondence with ad verbum and verbum pro verbo.',41900000,12500000,'broad',NULL,NULL,'unresolved','Several cited passages define the semantic background without being collapsed into one origin event.'),
(446,121,2,'Medieval Latin learned tradition','verb-atim formation','Medieval Latin builds the adverb verbatim on verbum and -atim.',NULL,NULL,'broad',NULL,NULL,'unresolved','The period label is retained without an invented year or point.'),
(447,121,3,'Global English','15th century–today','English borrows the adverb; adjective use is separately reported from 1613.',NULL,NULL,'global',1400,NULL,'open','The open interval begins with the normalized fifteenth-century report.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(427,275,'wer-5 heading and section 1','supports','Publishes the speaking root and zero-grade formation without a unique place or date.'),
(428,275,'wer-5 section 1: Germanic *wurdam','supports','Supplies the reconstructed Germanic stage.'),
(429,273,'Etymology and First Known Use: before 12th century','supports','Supplies the Old English ancestry and source-reported temporal horizon.'),
(429,274,'Etymology: Middle English from Old English','context','Independently supports the inherited English route.'),
(430,274,'Current definitions','supports','Documents the current semantic range while justifying no single map point.'),
(431,275,'wer-5 heading and section 2','supports','Publishes the reconstructed root and full-grade formation.'),
(432,277,'I and II.C, cited Latin examples','supports','Documents general and grammatical Latin uses across the ancient literary record.'),
(433,276,'Etymology: Middle English from Anglo-French from Latin','supports','Supplies the donor sequence.'),
(434,276,'First Known Use: 14th century; current definition','supports','Supplies the temporal horizon and current grammatical scope.'),
(435,278,'Etymology: Late Latin verbalis from verbum + -alis','supports','Supplies the learned Latin formation.'),
(436,278,'First Known Use: 15th century','supports','Supplies the century-level English horizon.'),
(437,278,'Current definitions 1–5','supports','Documents the coexisting modern senses.'),
(438,279,'Etymology: ad- + verbum; more at word','supports','Publishes the separate lexical branches.'),
(438,282,'ad- root entry','context','Supplies the deep directional component.'),
(439,279,'Latin adverbium as translation of Greek epirrhema','supports','Supplies the Latin technical stage and translation relationship.'),
(440,279,'Middle English borrowed from Middle French borrowed from Latin','supports','Supplies the French-to-English route.'),
(441,279,'First Known Use and current definition','supports','Supplies the century horizon and modern modifier scope.'),
(442,280,'Latin proverbium from pro- + verbum','supports','Publishes the separate compound branches.'),
(442,283,'per-1, Latin pro- section','context','Supplies the deep forward or before component.'),
(443,280,'Etymology: Latin proverbium','supports','Supplies the Latin compound stage.'),
(444,280,'First Known Use and current definitions','supports','Supplies the fourteenth-century horizon and separates the later pro-verb.'),
(445,277,'I.B.1: ad verbum and verbum pro verbo','supports','Documents Classical Latin word-for-word expressions.'),
(446,281,'Etymology: Medieval Latin verbatim from verbum + -atim','supports','Supplies the Medieval Latin formation.'),
(447,281,'First Known Use: adverb 15th century; adjective 1613','supports','Supplies both English sense horizons.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(214,116,'Was English word borrowed from Latin verbum?','No. English word is inherited through Old English and Germanic; Latin verbum is an akin or cognate branch under the shared speaking root, not the donor.','established','Merriam-Webster and American Heritage distinguish direct ancestry from the comparative Latin branch.','resolved','The canonical graph joins word and verbum only at reconstruction and never draws a Latin-to-English borrowing edge.'),
(215,116,'Is *werh1- an attested first human word?','No. The asterisk marks a comparative reconstruction, and the reviewed source stops at the speaking root rather than identifying any spoken first word.','established','American Heritage explicitly presents the root and suffixed forms as reconstructed.','resolved','The dossier ends at a knowledge boundary after the starred root.'),
(216,117,'Did verb always mean only the grammatical class?','No. Latin verbum broadly meant word, utterance, expression, language, or discourse and also developed the specialized grammatical sense.','established','Lewis and Short publish the broad senses and a separately numbered grammatical use.','resolved','Two sense-specific Latin nodes preserve the specialization.'),
(217,117,'Did English take verb directly from Latin?','The reviewed route is Middle English from Anglo-French from Latin, not a one-hop direct Latin borrowing.','established','Merriam-Webster explicitly names both donor stages.','resolved','The dossier keeps the Anglo-French node instead of compressing it away.'),
(218,118,'Does verbal historically mean only spoken rather than written?','No. The oldest structural center is Latin verbum plus -alis, of or relating to words; the spoken contrast is one later English sense among several.','established','Merriam-Webster places word-related senses before and beside the spoken-language sense.','resolved','The semantic-change record preserves plurality instead of choosing one supposedly true meaning.'),
(219,118,'Is -al the lexical ancestor of verbal?','No. Latin -alis is a derivational component of verbalis; the lexical base verbum and the suffix have separate graph branches.','established','The word history explicitly analyzes verbum plus -alis.','resolved','The main ancestry follows verbum while a canonical component edge exposes -alis.'),
(220,119,'Does an adverb only modify a verb?','No. Modern adverbs can modify verbs, adjectives, other adverbs, prepositions, phrases, clauses, or entire sentences.','established','Merriam-Webster enumerates the wider modifier scope.','resolved','The dossier rejects a definition inferred only from the visible name.'),
(221,119,'Is adverb built from the English verb add?','No. Latin adverbium contains the directional prefix ad-, from the Indo-European ad- base, plus verbum. English add is not a component.','established','Merriam-Webster supplies the Latin compound and American Heritage supplies the deeper ad- base.','resolved','The component graph makes the historical prefix independently traversable.'),
(222,120,'Are proverb and pro-verb the same historical word?','No. Proverb, the traditional saying, is recorded from the fourteenth century through Latin proverbium; pro-verb, a grammatical substitute, is separately dated to 1907.','established','One dictionary entry explicitly separates the three headword senses and their dates.','resolved','The hyphenated form remains a relative, not an ancestor node.'),
(223,120,'What exactly did pro- contribute to Latin proverbium?','The pro- plus verbum structure is secure, but the reviewed sources do not force one modern gloss for the prefix’s semantic contribution inside the inherited saying term.','probable','Merriam-Webster supplies the compound analysis; American Heritage publishes the unusually broad semantic field of per-1 and Latin pro-.','open',NULL),
(224,121,'Did verbatim enter English as an adjective?','No. Merriam-Webster reports the adverb in the fifteenth century and the adjective in 1613.','established','The entry separates parts of speech and first-known-use horizons.','resolved','The dossier headword is modeled first as an adverb and retains the later adjective as semantic history.'),
(225,121,'Does verbatim mean one isolated word?','No. Its Medieval Latin formation and older Latin phrase family express distributive exactness: word by word.','established','Merriam-Webster gives verbum plus -atim; Lewis and Short document ad verbum and verbum pro verbo.','resolved','The graph follows the word noun while the suffix branch explains the adverbial distribution.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(214,273,'Etymology: Old English; akin to Latin verbum','supports','Distinguishes inherited ancestry from an akin Latin form.'),
(214,275,'wer-5 sections 1 and 2','supports','Places Germanic *wurdam and Latin verbum in parallel reconstructed branches.'),
(214,271,'Dictionary-etymology method: akin forms are not the direct borrowing line','context','Defines the methodological distinction used by the resolution.'),
(215,275,'wer-5 heading: oldest form *werh1- and suffixed forms','supports','Marks the forms as comparative reconstructions and supplies no attested first word.'),
(215,273,'Etymology labels Latin, Greek, and Hittite forms as akin','context','Shows comparison rather than a claim about primordial speech.'),
(216,277,'I: word and discourse; II.C: grammatical verb','supports','Directly separates the broad and specialized Latin senses.'),
(216,276,'Latin verbum “word, verb”','context','Independently preserves both glosses.'),
(217,276,'Middle English verbe, borrowed from Anglo-French, borrowed from Latin','supports','Explicitly supplies the mediated route.'),
(217,271,'Dictionary-etymology method: languages name borrowing stages','context','Explains why the intermediate donor is evidence, not decoration.'),
(218,278,'Definitions 1–5 and Word History','supports','Documents word-related, verb-related, spoken, exact-wording, and aptitude senses.'),
(218,277,'General Latin verbum senses','context','Anchors the older word-centered semantic base.'),
(219,278,'Etymology: Late Latin verbalis from verbum + -alis','supports','Explicitly identifies base and suffix.'),
(219,267,'-al suffix history ending in Latin -alis','context','Supplies the separately reviewed affix branch.'),
(220,279,'Definition, Did You Know?, and Etymology','supports','Enumerates the class’s scope beyond verbs and shows why the historical name does not exhaust the modern definition.'),
(221,279,'Etymology: ad- + verbum','supports','Explicitly identifies the Latin components.'),
(221,282,'ad-: to, near, at; Latin ad, ad-','supports','Supplies the directional prefix ancestry.'),
(222,280,'Word History for proverb noun (1) and pro-verb noun (2)','supports','Separates the Latin saying word from the 1907 grammatical term.'),
(222,279,'Modern grammatical terminology context','context','Confirms that grammatical labels can contain verb without sharing proverb’s ancestry.'),
(223,280,'Etymology: Latin proverbium from pro- + verbum','supports','Establishes the compound structure.'),
(223,283,'per-1 base and Latin pro- section','context','Shows the wide reconstructed semantic range that prevents a false single-gloss verdict.'),
(224,281,'First Known Use: adverb 15th century; adjective 1613','supports','Directly establishes the order of English uses.'),
(224,271,'First-known-use methodology','context','Qualifies both dates as earliest located written records, not certain coinages.'),
(225,281,'Etymology: verbatim from verbum + -atim','supports','Supplies the distributive adverb formation.'),
(225,277,'I.B.1: ad verbum and verbum pro verbo','context','Documents the older word-for-word phrase family.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(116,116,2027,'word','Word and verb are cousins, not a borrowing pair.','English word descends through Germanic *wurdam and zero-grade *wr-dho-. English verb arrives through French from Latin verbum and the full-grade *wer-dho- branch. They meet only at reconstructed *werh1- “speak.”','A',100,'The two routes and shared root are independently published; no Latin-to-English word edge is implied.'),
(117,117,2028,'verb','A verb was once any word.','Latin verbum could mean word, utterance, expression, language, or discourse before and beside its technical grammatical sense. English inherited the specialized label.','A',100,'The Latin semantic range and grammatical specialization are directly separated in the source.'),
(118,118,2029,'verbal','Verbal is bigger than spoken.','The form is built on Latin verbum “word, verb,” and English verbal still covers what consists of words, what relates to verbs, spoken communication, exact wording, and verbal aptitude.','A',98,'The claim preserves the live polysemy rather than declaring the spoken sense wrong.'),
(119,119,2030,'adverb','The ad- in adverb is not add.','Latin adverbium joins directional ad- with verbum “word” and translates Greek epirrhema. The modern class can modify far more than verbs.','A',100,'The morphological and modern grammatical claims are separately located.'),
(120,120,2031,'proverb','A proverb is not a pro-verb.','Proverb the traditional saying reaches English in the fourteenth century through Latin proverbium. Hyphenated pro-verb is a distinct grammatical substitute reported only from 1907.','A',100,'The same dictionary explicitly separates the headwords, meanings, formations, and dates.'),
(121,121,2032,'verbatim','Verbatim was an adverb first.','English borrowed Medieval Latin verbatim “word for word” in the fifteenth century; the adjective use appears in the reviewed record only in 1613.','A',99,'The dates are source-reported horizons, not claims about spoken coinage.');
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
(116,275,'wer-5 sections 1 and 2','supports','Publishes the Germanic zero-grade and Latin full-grade branches under one speaking root.'),
(116,273,'Etymology: Old English; akin to Latin verbum','context','Confirms inherited English ancestry and comparative, not donor, status for Latin.'),
(117,277,'I and II.C','supports','Documents both the broad word and discourse senses and the grammatical specialization.'),
(117,276,'Latin verbum “word, verb”','context','Independently preserves the two historical senses in the English borrowing account.'),
(118,278,'Definitions 1–5 and Etymology','supports','Documents the Latin word base and the wider English semantic range.'),
(118,277,'General senses of Latin verbum','context','Anchors the older word-centered meaning.'),
(119,279,'Definition and Etymology','supports','Documents the wide modifier scope and the ad- plus verbum analysis.'),
(119,282,'ad- root entry','context','Independently identifies the directional component rather than English add.'),
(120,280,'Word History for proverb noun (1) and pro-verb noun (2)','supports','Directly separates the saying from the grammatical substitute.'),
(120,277,'Latin verbum sense range','context','Documents the word component inside proverbium.'),
(121,281,'Etymology and First Known Use','supports','Supplies the word-for-word formation and the adverb-before-adjective chronology.'),
(121,277,'I.B.1: ad verbum and verbum pro verbo','context','Documents the older Latin phrase family behind literal word-for-word exactness.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(79,116,117,'THE NATIVE WORD AND THE BORROWED WORD CLASS','Word and verb travel through different historical languages and different grades of the same reconstructed formation before meeting at *werh1- “speak.”',100,'A','reviewed'),
(80,117,119,'A WORD CLASS BUILT ON THE WORD FOR WORD','Verb specializes Latin verbum directly; adverb embeds that same noun inside a second grammatical label.',99,'A','reviewed'),
(81,119,120,'AD- AND PRO- MEET AT VERBUM','Adverbium and proverbium use different first components but share the same Latin word noun and deep speaking root.',98,'A','reviewed'),
(82,118,121,'WORDS ABOUT WORDS SPLIT AT THE SUFFIX','Verbal follows verbalis and -alis; verbatim follows verbatim and -atim. Both descend through Latin verbum but express different relationships to wording.',99,'A','reviewed'),
(83,116,121,'WORD FOR WORD REJOINS ITS GERMANIC COUSIN','The English phrase word for word uses the inherited Germanic noun; verbatim expresses the same relation through the Latin cognate branch.',100,'A','reviewed');
--> statement-breakpoint

-- Canonicalize every dossier form. Shared Latin, reconstructed, and root nodes
-- collapse only when language, normalized form, sense, and evidence status all
-- agree, dossier-specific knowledge boundaries remain separate.
WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 686 AND 729
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
WHERE f.id BETWEEN 686 AND 729;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 571 AND 608;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 571 AND 608;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 571 AND 608;
--> statement-breakpoint

-- Component branches prevent compounds and derivations from becoming false
-- one-parent chains. Each graph-only node discloses why it exists, every edge
-- is directly cited, and each branch ends at its own reviewed horizon.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:9:ad:attested:sense:directional-prefix',9,'ad-','ad','directional-prefix','ad-',NULL,'attested','Latin antiquity',-700,700,'to, toward','Latin component of adverbium; not the English verb add.','reviewed'),
('node:6:ad:reconstructed:sense:directional-base',6,'*ad-','ad','directional-base','*ad-',NULL,'reconstructed','Proto-Indo-European horizon',-4500,-2500,'to, near, at','American Heritage reconstructs the directional base and lists Latin ad- among its descendants.','reviewed'),
('boundary:graph:ad-component',7,'UNKNOWN','unknown','ad-component-boundary',NULL,NULL,'boundary','before the reviewed *ad- base',NULL,NULL,'No deeper directional ancestor is promoted.','The adverb component branch stops at the source-supported base.','reviewed'),
('node:9:pro:attested:sense:forward-prefix',9,'prō-','pro','forward-prefix','prō-',NULL,'attested','Latin antiquity',-700,700,'before, forward, for','Latin component of proverbium.','reviewed'),
('node:6:per:reconstructed:sense:preposition-base',6,'*per-','per','preposition-base','*per-',NULL,'reconstructed','Proto-Indo-European horizon',-4500,-2500,'forward, through, before, toward','American Heritage treats per-1 as a wide base of prepositions and preverbs and derives Latin pro- from its extended form.','reviewed'),
('boundary:graph:per1-component',7,'UNKNOWN','unknown','per1-component-boundary',NULL,NULL,'boundary','before the reviewed *per- base',NULL,NULL,'No deeper preposition base is promoted.','The proverb component branch stops at the source-supported base.','reviewed'),
('node:14:-atim:attested:sense:adverbial-suffix',14,'-ātim','-atim','adverbial-suffix','-ātim',NULL,'attested','Medieval Latin',500,1500,'distributive adverb-forming suffix','Merriam-Webster analyzes verbatim with this suffix and compares nomin-atim.','reviewed'),
('boundary:graph:verbatim-atim',7,'UNKNOWN','unknown','verbatim-atim-boundary',NULL,NULL,'boundary','before the reviewed Latin suffix analysis',NULL,NULL,'No deeper unique suffix ancestor is promoted.','The source explains the Latin formation without supplying a deeper one-root suffix history.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:adverbium:attested:sense:grammar-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:ad:attested:sense:directional-prefix'),'compound_component','Latin ad- remains visible at the left edge of adverbium.','The directional prefix helps create a technical word for a modifier attached to another expression.','Merriam-Webster Editors','established',NULL,'Latin grammatical formation; no single coinage date is asserted.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:ad:attested:sense:directional-prefix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:ad:reconstructed:sense:directional-base'),'inheritance','Latin ad- directly continues the reconstructed directional base with stable form.','To, toward continues the older to, near, at field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:ad:reconstructed:sense:directional-base'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:ad-component'),'knowledge_boundary','No older form is promoted beyond *ad-.','The component trail ends at the reviewed comparative base.','SET-U editorial boundary','boundary','The source entry supplies no deeper unique ancestor.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:proverbium:attested:sense:saying-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:pro:attested:sense:forward-prefix'),'compound_component','Latin pro- remains visible at the left edge of proverbium.','The prefix marks the saying compound without being flattened into one speculative English gloss.','Merriam-Webster Editors','established',NULL,'Latin formation; no single coinage date is asserted.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:pro:attested:sense:forward-prefix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:per:reconstructed:sense:preposition-base'),'inheritance','Latin pro- continues an extended *pro- form of the per-1 preposition base.','Before, forward, and for belong to the wider forward and through field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:6:per:reconstructed:sense:preposition-base'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:per1-component'),'knowledge_boundary','No older form is promoted beyond *per-.','The component trail ends at the reviewed comparative base.','SET-U editorial boundary','boundary','The wide preposition base is not forced into a single verbal root.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:verbalis:attested:sense:word-related-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:-alis:attested:sense:adjective-suffix'),'derivational_component','Latin verbalis visibly combines the verbum stem with relational -alis.','The suffix turns word or verb into of or relating to words or verbs.','Merriam-Webster Editors','established',NULL,'Late Latin formation.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:14:verbatim:attested:sense:word-by-word-adverb'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:14:-atim:attested:sense:adverbial-suffix'),'derivational_component','Medieval Latin verbatim visibly combines the verbum stem with -atim.','The suffix supplies distributive word-by-word adverbial force.','Merriam-Webster Editors','established',NULL,'Medieval Latin formation.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:14:-atim:attested:sense:adverbial-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:verbatim-atim'),'knowledge_boundary','No deeper unique ancestor is promoted for -atim.','The component branch ends at the reviewed Latin formation.','SET-U editorial boundary','boundary','The source compares a Latin suffix pattern but does not supply one deeper lexical root.',NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:adverbium:attested:sense:grammar-compound' AND p.canonical_key='node:9:ad:attested:sense:directional-prefix' AND e.relation_type='compound_component'),279,'Etymology: ad- + verbum','supports','Explicitly identifies the directional component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:ad:attested:sense:directional-prefix' AND p.canonical_key='node:6:ad:reconstructed:sense:directional-base' AND e.relation_type='inheritance'),282,'ad- entry, Latin descendants','supports','Publishes Latin ad- under the reconstructed directional base.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:6:ad:reconstructed:sense:directional-base' AND p.canonical_key='boundary:graph:ad-component' AND e.relation_type='knowledge_boundary'),282,'ad- entry endpoint','supports','Defines the reviewed component horizon.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:proverbium:attested:sense:saying-compound' AND p.canonical_key='node:9:pro:attested:sense:forward-prefix' AND e.relation_type='compound_component'),280,'Etymology: pro- + verbum','supports','Explicitly identifies the prefix component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:pro:attested:sense:forward-prefix' AND p.canonical_key='node:6:per:reconstructed:sense:preposition-base' AND e.relation_type='inheritance'),283,'per-1, extended pro- and Latin pro- section','supports','Publishes Latin pro- under the wider reconstructed base.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:6:per:reconstructed:sense:preposition-base' AND p.canonical_key='boundary:graph:per1-component' AND e.relation_type='knowledge_boundary'),283,'per-1 entry endpoint','supports','Defines the reviewed component horizon.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:verbalis:attested:sense:word-related-adjective' AND p.canonical_key='node:9:-alis:attested:sense:adjective-suffix' AND e.relation_type='derivational_component'),278,'Etymology: verbalis from verbum + -alis','supports','Explicitly identifies the suffix component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:14:verbatim:attested:sense:word-by-word-adverb' AND p.canonical_key='node:14:-atim:attested:sense:adverbial-suffix' AND e.relation_type='derivational_component'),281,'Etymology: verbatim from verbum + -atim','supports','Explicitly identifies the suffix component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:14:-atim:attested:sense:adverbial-suffix' AND p.canonical_key='boundary:graph:verbatim-atim' AND e.relation_type='knowledge_boundary'),281,'Etymology endpoint at Latin -atim pattern','supports','Defines the reviewed suffix horizon.');
--> statement-breakpoint

PRAGMA defer_foreign_keys = OFF;
