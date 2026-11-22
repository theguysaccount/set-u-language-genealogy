-- Six evidence-seeded satellites become complete dossiers. CHTHONIC and
-- EXHUME deepen independent Greek and Latin branches of the earth family,
-- BRIDE exposes the first component of BRIDEGROOM without dragging it down the
-- unrelated GUMA earthling branch. DAIRY, FICTION, and FEIGN deepen three
-- separate Germanic and Latin formations under the form-and-build root.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(159,'chthonic','chthonic','chthonic','/ˈθɒnɪk/','adjective','Of the underworld or of things in and under the earth; a learned English continuation of the Greek earth family.','Chthonic was an earth word before it was an underworld word. Greek khthonios means of the earth, from khthōn, earth; the infernal sense grows from what lies beneath the ground.','reviewed'),
(160,'exhume','exhume','exhume','/ɪɡˈzuːm/','verb','To remove from burial or recover from obscurity; borrowed from Medieval Latin exhumare, literally a formation on ex, out of, and humus, earth.','Exhume contains the same Latin humus found in the soil word: its oldest reviewed structure is literally out of the earth. The archival metaphor is later than the burial sense.','reviewed'),
(161,'bride','bride','bride','/braɪd/','noun','A woman about to be or recently married; inherited from Old English brȳd and directly preserved inside bridegroom.','Bridegroom contains two histories, not one: bride stops at an Old English word with wider Germanic comparanda, while guma, man, continues through a distinct earthling formation.','reviewed'),
(162,'dairy','dairy','dairy','/ˈdɛəri/','noun and adjective','Milk, milk products, or a place and enterprise devoted to them; historically built on the occupational word for a woman managing milk and food production.','Dairy did not begin as a substance. Its path runs through a woman in charge of milk to Old English dǣge, a female baker or servant, and then into the same shaping family as dough.','reviewed'),
(163,'fiction','fiction','fiction','/ˈfɪkʃən/','noun','Invented narrative, imaginative creation, pretense, or legal assumption; borrowed through French from Latin fictio, an action of shaping, molding, or feigning.','Fiction is historically something shaped. Latin fictio named shaping, molding, feigning, and pretense before English narrowed one major branch to invented narrative.','reviewed'),
(164,'feign','feign','feign','/feɪn/','verb','To invent, fabricate, make a likeness, or pretend; borrowed through Anglo-French from Latin fingere, to shape or fashion.','Feign did not begin as a synonym for lie. Its recorded Middle English field includes make, fabricate, and make a likeness, preserving the shaping history behind pretense.','reviewed');
--> statement-breakpoint

-- This migration declares evidence rows before their cited source and form rows
-- later in the file, defer foreign-key enforcement until the migration commit.
PRAGMA defer_foreign_keys=ON;
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(300,159,'Did chthonic begin as a word for hell?','No. The reviewed Greek history begins with khthōn, earth, and khthonios, of the earth; underworld reference is a specialization of what lies below.','established','Merriam-Webster and American Heritage both anchor the word in Greek earth vocabulary.','resolved','The dossier preserves earth and underworld senses without turning one into a false literal translation of the other.'),
(301,159,'Does chthonic descend through Latin humus or English humble?','No. Greek khthōn and Latin humus are separate daughter formations under *dhghem-.','established','The root appendix assigns distinct o-grade formations to the Greek and Latin branches.','resolved','The graph joins them only at the reconstructed earth root.'),
(302,160,'Is exhume literally structured as out of earth?','Yes at the Medieval Latin level: exhumare is formed from ex, out of, and humus, earth.','established','Merriam-Webster explicitly publishes both components.','resolved','Both components are preserved as separate graph parents.'),
(303,160,'When did exhume acquire the archival recovery metaphor?','The modern dictionary records the figurative sense, but the reviewed evidence does not date one secure semantic pivot.','probable','Merriam-Webster distinguishes disinterment from recovery out of neglect or obscurity without supplying a first figurative occurrence.','open','The semantic change remains explicit while its chronology stays unresolved.'),
(304,161,'Is bride the same historical word as bird?','No. Bosworth-Toller records brȳd, bride or spouse, separately from brid, the young of a bird; the reviewed bride path follows brȳd.','established','The Old English dictionary maintains separate headwords and meanings.','resolved','Surface resemblance is not allowed to create a homographic ancestry edge.'),
(305,161,'What securely precedes Old English brȳd?','The sources publish broad Germanic comparanda, including Old High German brūt, but this dossier does not yet have a reviewed source that warrants one reconstructed parent.','probable','Merriam-Webster and Bosworth-Toller list relatives without printing a common proto-form in the located entries.','open','The trail ends at an explicit cognate horizon rather than importing an uncited reconstruction.'),
(306,162,'Did dairy originally name milk as a substance?','No. The earliest reviewed route names a milk-production place built on the woman responsible for the work.','established','Merriam-Webster derives the place noun from deie, a woman in charge of milking and making butter and cheese.','resolved','Modern product senses are retained as later semantic expansion.'),
(307,162,'Are *daigjōn-, *daiga-, and dough *daigaz one interchangeable reconstructed word?','No. They are related formation, stem, and noun shapes with different grammatical and lexical roles.','established','Merriam-Webster distinguishes the occupational derivative *daigjōn- from base *daiga-, while the root appendix prints dough from *daigaz.','resolved','Separate canonical nodes prevent convenient spelling similarity from erasing morphology.'),
(308,163,'Did fiction originally mean only an invented story?','No. Latin fictiō includes shaping or molding, feigning, pretense, and legal fiction; Middle English begins with invention of the mind.','established','Merriam-Webster publishes the wide Latin and medieval semantic inventory.','resolved','Narrative is shown as one later center inside a larger inherited field.'),
(309,163,'Does fiction descend from figure?','No. Latin fictiō and figūra are sibling formations in the fingere and *dheigh- family; neither English word is the parent of the other.','established','Merriam-Webster derives fictiō from the fig- stem of fingere, while the root appendix lists figure and fiction on distinct formations.','resolved','The graph meets at fingere or deeper, never through a fiction-to-figure edge.'),
(310,164,'Did feign originally mean only to lie?','No. Its recorded Middle English field includes make, fabricate, make a likeness, dissemble, and pretend.','established','Merriam-Webster publishes the wider medieval inventory.','resolved','The modern false-appearance center is a semantic narrowing, not the entire ancestry.'),
(311,164,'Does feign descend from faint or feint?','No direct descent is established here. The root appendix groups them under the same nasalized shaping formation, while feign has its own documented French and Latin chain.','established','American Heritage supplies root-family membership; Merriam-Webster supplies the feign lineage.','resolved','Related words remain siblings unless a source warrants a directional edge.');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(300,380,'Did You Know and Etymology','supports','Explains the earth basis of the underworld sense.'),
(300,381,'Greek khthonios, of the earth, from khthōn, earth','context','Confirms the Greek sequence.'),
(301,337,'dhghem- items 2 and 4','supports','Publishes separate Greek and Latin earth formations.'),
(302,382,'Etymology: ex out of plus humus earth','supports','Publishes the literal components.'),
(303,382,'Definitions 1 and 2; Word History','supports','Records both senses without dating the figurative transition.'),
(304,384,'BRÝD headword and separate brid entry','supports','Documents distinct Old English lexical records.'),
(305,383,'Akin to Old High German brūt bride','supports','Publishes comparison without a proto-form.'),
(305,384,'Germanic etymology list','context','Supplies a wider comparative set without a promoted parent.'),
(306,385,'Etymology and first-known-use sense','supports','Publishes the occupational and place history.'),
(307,385,'*daigjōn- derivative of *daiga-','supports','Distinguishes occupational formation and base.'),
(307,353,'dheigh- items 1 and 3','context','Distinguishes dairy and dough formations.'),
(308,386,'Latin and Middle English sense inventory','supports','Publishes the shaping, feigning, legal, and mental-invention field.'),
(309,386,'Fictiō from fig-, variant stem of fingere','supports','Places fiction on the verb-stem branch.'),
(309,353,'dheigh- items 4 and 5','context','Lists figure and fiction under distinct formations.'),
(310,387,'Middle English sense inventory','supports','Publishes make, fabricate, likeness, dissemble, and pretend.'),
(311,353,'dheigh- item 5','supports','Groups feign, faint, and feint under one root formation.'),
(311,387,'Feign lineage through feindre to fingere','context','Supplies the directional history for feign itself.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(159,159,2070,'chthonic','Chthonic was an earth word before it was an underworld word.','Greek khthonios means of the earth, from khthōn, earth; infernal reference is a specialization of what lies beneath.','A',100,'The reveal preserves both Greek semantics and does not translate the word as simply hellish.'),
(160,160,2071,'exhume','Exhume is literally built on out of plus earth.','Medieval Latin exhumare combines ex, out of, and humus, earth—the same Latin earth noun behind English humus.','A',100,'The later archival metaphor remains separate from the literal historical structure.'),
(161,161,2072,'bride','Only half of bridegroom reaches the earthling root.','Bride continues Old English brȳd and stops at a Germanic comparison horizon; guma, the second compound element, follows the separate earthling branch.','A',100,'A compound can preserve two ancestries with radically different depths.'),
(162,162,2073,'dairy','Dairy begins with a woman, then a baker, then dough.','The milk-production place is formed on deie, a woman managing milk, continuing Old English dǣge, female baker or servant, in the dough and shaping family.','A',100,'The reveal describes lexical roles without treating historical labor organization as natural destiny.'),
(163,163,2074,'fiction','Fiction is historically something shaped.','Latin fictiō names shaping or molding, feigning, and pretense before English literary narrative becomes one major center.','A',100,'The reveal separates lexical history from a claim that all fiction is deception.'),
(164,164,2075,'feign','Feign once included making, not only pretending.','Middle English feynen could mean make, fabricate, or make a likeness as well as dissemble or pretend, continuing the fingere shaping family.','A',100,'The modern semantic center is not projected backward as the entire word.');
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
(159,381,'From Greek khthonios, of the earth, from khthōn, earth','supports','Publishes the literal Greek earth sequence.'),
(159,380,'Did You Know: associated with things in or under the earth','context','Explains the underworld specialization.'),
(160,382,'Etymology: ex out of plus humus earth','supports','Publishes the literal two-part formation.'),
(160,337,'dhghem- item 4: humus and exhume','context','Places the formation in the deep earth family.'),
(161,383,'Middle English from Old English brȳd; akin to Old High German brūt','supports','Publishes the bride branch and comparison limit.'),
(161,374,'Bridegroom from brȳd plus guma, man','context','Publishes the independent second component.'),
(162,385,'Deie woman in charge of milk, from dǣge female baker, from *daigjōn- and *daiga-','supports','Publishes the occupational and dough history.'),
(162,353,'dheigh- item 1: dairy','context','Places dairy under the shaping root.'),
(163,386,'Latin fictiō: shaping or molding, feigning, pretense, legal fiction','supports','Publishes the shaping history and wide field.'),
(163,353,'dheigh- item 5: fiction from Latin fingere','context','Places fiction under the shaping root.'),
(164,387,'Middle English feynen: make, fabricate, make a likeness, dissemble, pretend','supports','Publishes the older semantic range.'),
(164,353,'dheigh- item 5: feign from Latin fingere','context','Places feign under the shaping root.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(114,159,155,'THE UNDERWORLD MEETS SOIL AT EARTH','Follow chthonic through Greek khthōn and humus through Latin humus; their branches remain separate until *dhghem-.',100,'A','reviewed'),
(115,160,155,'OUT OF THE SAME EARTH AS HUMUS','Strip ex- from exhumare and the path lands on the exact Latin humus node behind the soil word.',100,'A','reviewed'),
(116,161,156,'THE TWO HISTORIES INSIDE BRIDEGROOM','Bride reaches the first brȳd component while the compound’s second element guma follows its own earthling ancestry.',100,'A','reviewed'),
(117,162,157,'THE WOMAN AND THE DOUGH INSIDE DAIRY','Descend from milk production through the female baker word until dairy and dough meet at the shaping root.',100,'A','reviewed'),
(118,163,158,'FICTION AND FIGURE ARE TWO KINDS OF SHAPING','Fiction reaches fingere through the action noun fictiō; figure reaches the same verb only through a competing analysis, while its primary formation stays distinct.',100,'A','reviewed'),
(119,164,163,'TO FEIGN AND TO MAKE FICTION','Feign and fiction travel through different French and Latin formations before meeting at fingere, to shape or make a likeness.',100,'A','reviewed');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(195,996,380,'1882 first known use',1882,'Merriam-Webster first-known-use report','Word History: First Known Use','1882, in the underworld sense','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported first-use year; no primary 1882 object was directly inspected.'),
(196,1003,382,'15th century first known use',1400,'Merriam-Webster first-known-use report','Word History: First Known Use','15th century, in the disinter sense','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported century represented conservatively by its opening year; no primary object was directly inspected.'),
(197,1011,383,'before the 12th century',1000,'Merriam-Webster first-known-use report','Word History: First Known Use','before the 12th century','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported pre-twelfth-century use represented conservatively within the Old English record; no manuscript was directly inspected.'),
(198,1015,385,'14th century first known use',1300,'Merriam-Webster first-known-use report','Word History: First Known Use','14th century, in the milk-production-place sense','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported century represented conservatively by its opening year; no primary object was directly inspected.'),
(199,1025,386,'14th century first known use',1300,'Merriam-Webster first-known-use report','Word History: First Known Use','14th century, in the invention sense','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported century represented conservatively by its opening year; no primary object was directly inspected.'),
(200,1035,387,'13th century first known use',1200,'Merriam-Webster first-known-use report','Word History: First Known Use','13th century, in the recorded verb field','established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported century represented conservatively by its opening year; no primary object was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(525,159,'allochthon','English / Greek route','parallel Greek khthōn derivative under *dhghem-',337),
(526,159,'autochthon','English / Greek route','parallel Greek khthōn derivative under *dhghem-',337),
(527,159,'chameleon','English / Greek route','ground-family relative through Greek khamai, not a chthonic descendant',337),
(528,159,'humble','English / Latin route','deep cousin through a separate Latin earth formation',337),
(529,160,'inhume','English / Latin route','oppositely prefixed Latin humus formation',337),
(530,160,'transhumance','English / Latin route','Latin humus-family derivative involving movement across ground',337),
(531,160,'humiliate','English / Latin route','parallel Latin humus and humilis family descendant',337),
(532,160,'humus','English / Latin route','modern soil noun on the same Latin earth base',382),
(533,161,'bridal','English / Germanic route','direct derivative of bride',383),
(534,161,'bridegroom','English / Germanic route','compound descendant preserving Old English brȳd',383),
(535,161,'brūt','Old High German','published Germanic comparative relative, not a parent',383),
(536,161,'bruþs','Gothic','published Germanic comparative relative, not a parent',384),
(537,162,'dough','English / Germanic route','related dough noun from a distinct Germanic formation',385),
(538,162,'lady','English / Germanic route','related kneader element under the form-and-build root',353),
(539,162,'deigja','Old Norse','Germanic occupational relative beside *daigjōn-',385),
(540,162,'pantry','English / French route','semantic model through Anglo-French paneterie, not an ancestor',385),
(541,163,'figment','English / Latin route','parallel Latin fingere-family derivative',353),
(542,163,'fictile','English / Latin route','parallel Latin fingere-family derivative',353),
(543,163,'effigy','English / Latin route','parallel Latin fingere-family derivative',353),
(544,163,'figure','English / Latin route','sibling Latin shaping formation, not a parent',353),
(545,164,'feint','English / French route','sibling derivative in the fingere family',353),
(546,164,'faint','English / French route','deeper shaping-family relative, not a descendant of feign',353),
(547,164,'fainéant','French','deeper shaping-family relative, not a direct parent',353),
(548,164,'fiction','English / Latin route','sibling Latin fingere formation',386);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(597,159,1,'Ancient Greek linguistic record','Greek khthōn and khthonios','The earth noun and adjective are attested Greek forms; the reviewed sources do not reduce their history to one map point.',NULL,NULL,'broad',NULL,NULL,'unresolved','The sources identify language and structure but no unique first date.'),
(598,159,2,'Indo-European linguistic horizon','*dh(e)ghom- and *dhghem-','The Greek branch is compared through reconstructed earth forms.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Reconstruction receives neither a unique homeland pin nor a single year.'),
(599,159,3,'English lexicographic record','1882 first known use','The reviewed dictionary reports the first known English use in 1882.',NULL,NULL,'global',1882,1882,'exact','The year is source-reported; no single geographic point is asserted.'),
(600,159,4,'Present English chthonic senses','underworld and earth senses today','Mythological and broader earth or natural uses coexist.',NULL,NULL,'global',NULL,NULL,'unresolved','Living global usage has no defensible single start year or pin.'),

(601,160,1,'Latin and Medieval Latin linguistic record','ex plus humus','Latin humus supplies the earth base and Medieval Latin exhumare the prefixed verb.',NULL,NULL,'broad',NULL,NULL,'unresolved','The sources identify linguistic stages but not one coinage place or year.'),
(602,160,2,'Indo-European linguistic horizon','*(dh)ghom-o- and *dhghem-','The Latin earth noun is compared through the reconstructed earth family.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Reconstruction receives neither a unique homeland pin nor a single year.'),
(603,160,3,'English lexicographic record','15th century first known use','The physical burial-removal sense is recorded in English in the fifteenth century.',NULL,NULL,'global',1400,1499,'century','Century bounds are source-reported and conservative.'),
(604,160,4,'Present English exhume senses','physical and archival recovery today','Removing remains and recovering neglected information coexist.',NULL,NULL,'global',NULL,NULL,'unresolved','The figurative expansion is not assigned an invented pivot year.'),

(605,161,1,'Old English language area','Old English brȳd', 'The reviewed Old English dictionary documents bride, wife, spouse, and woman senses.',52355000,-1174300,'regional',NULL,NULL,'unresolved','The lexicon supplies examples but this dossier does not claim one earliest manuscript.'),
(606,161,2,'Germanic comparison horizon','Old High German brūt and other comparanda','The sources publish related Germanic forms without a promoted common reconstruction.',NULL,NULL,'broad',NULL,NULL,'unresolved','Comparative breadth is not converted into an invented proto-date.'),
(607,161,3,'English lexicographic record','before the 12th century','Merriam-Webster reports the English word before the twelfth century.',NULL,NULL,'global',NULL,1099,'before','The upper bound reflects the published before-the-twelfth-century report.'),
(608,161,4,'Present English bride senses','marriage role today','The modern role remains continuous while social institutions vary.',NULL,NULL,'global',NULL,NULL,'unresolved','Living global usage has no defensible single pin or first year.'),

(609,162,1,'Old English language area','dǣge, female baker or servant','The occupational history begins in the reviewed Old English and Germanic record.',52355000,-1174300,'regional',NULL,NULL,'unresolved','The source identifies a language stage rather than one exact site or year.'),
(610,162,2,'Anglo-French and Middle English contact','deie plus -erie','An English occupational base enters an Anglo-French place formation and returns as Middle English deierie.',NULL,NULL,'broad',NULL,NULL,'unresolved','No single borrowing event is dated by the source.'),
(611,162,3,'English lexicographic record','14th century first known use','The milk-production-place sense is reported in the fourteenth century.',NULL,NULL,'global',1300,1399,'century','Century bounds are source-reported and conservative.'),
(612,162,4,'Present global dairy system','products, farms, and distribution today','Place, industry, and product senses coexist.',NULL,NULL,'global',NULL,NULL,'unresolved','Modern global extension has no single pin or first year.'),

(613,163,1,'Latin and Middle French linguistic record','fictiō through fiction','Shaping, feigning, and pretense travel through the Latin and French action noun.',NULL,NULL,'broad',NULL,NULL,'unresolved','The source identifies linguistic stages but no unique transfer point.'),
(614,163,2,'Medieval English language area','Middle English ficcioun','The English mental-invention noun is documented in the fourteenth century.',52355000,-1174300,'regional',1300,1399,'century','Century bounds are source-reported and the coordinate denotes a language region, not an occurrence site.'),
(615,163,3,'Indo-European linguistic horizon','*dhi-n-gh- and *dheigh-','Latin fingere is compared through the nasalized shaping formation.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Reconstruction receives neither a unique homeland pin nor a single year.'),
(616,163,4,'Present global fiction senses','narrative, imagination, pretense, and law today','Several branches of the older action noun remain active.',NULL,NULL,'global',NULL,NULL,'unresolved','Living global usage has no defensible single pin or first year.'),

(617,164,1,'Latin and Anglo-French linguistic record','fingere through feindre','The shaping verb continues through Romance into the English borrowing stem.',NULL,NULL,'broad',NULL,NULL,'unresolved','The source identifies a language chain but no unique transfer point.'),
(618,164,2,'Medieval English language area','Middle English feynen and feignen','Make, fabricate, likeness, dissembling, and pretense coexist in the reported field.',52355000,-1174300,'regional',1200,1299,'century','Century bounds are source-reported and the coordinate denotes a language region, not an occurrence site.'),
(619,164,3,'Indo-European linguistic horizon','*dhi-n-gh- and *dheigh-','Latin fingere is compared through the nasalized shaping formation.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','Reconstruction receives neither a unique homeland pin nor a single year.'),
(620,164,4,'Present global feign senses','invented false appearance today','The pretense branch dominates modern use without erasing its making history.',NULL,NULL,'global',NULL,NULL,'unresolved','Living global usage has no defensible single pin or first year.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(597,381,'Greek khthonios from khthōn, earth','supports','Publishes the Greek lexical stages.'),
(598,337,'dhghem- heading and item 2','supports','Publishes the reconstructed Greek earth branch.'),
(599,380,'First Known Use: 1882','supports','Publishes the exact English year.'),
(600,380,'Definitions and usage note','supports','Publishes the underworld and broader earth-related senses.'),
(601,382,'Etymology: Medieval Latin exhumare from ex plus humus','supports','Publishes the Latin structure.'),
(602,337,'dhghem- item 4','supports','Publishes the reconstructed Latin earth branch.'),
(603,382,'First Known Use: 15th century','supports','Publishes the English century.'),
(604,382,'Definitions 1 and 2','supports','Publishes the physical and figurative senses.'),
(605,384,'BRÝD headword, senses, and examples','supports','Documents the Old English lexical record.'),
(606,383,'Akin to Old High German brūt','supports','Publishes the comparison horizon.'),
(607,383,'First Known Use: before the 12th century','supports','Publishes the upper temporal bound.'),
(608,383,'Definition: woman just married or about to be married','supports','Publishes the modern lexical center.'),
(609,385,'Etymology: Old English dǣge and Germanic *daigjōn-','supports','Publishes the occupational history.'),
(610,385,'Deyerie from deie plus -erie','supports','Publishes the cross-language derivation.'),
(611,385,'First Known Use: 14th century','supports','Publishes the English century.'),
(612,385,'Definitions 1 through 4','supports','Publishes the product, place, farm, and distribution senses.'),
(613,386,'Etymology: Middle French fiction from Latin fictiō','supports','Publishes the Latin and French stages.'),
(614,386,'Middle English ficcioun and First Known Use: 14th century','supports','Publishes the English form and century.'),
(615,353,'dheigh- item 5','supports','Publishes the nasalized shaping formation.'),
(616,386,'Definitions 1 through 3','supports','Publishes narrative, pretense, legal, and imaginative senses.'),
(617,387,'Etymology: Anglo-French feindre from Latin fingere','supports','Publishes the Romance and Latin stages.'),
(618,387,'Middle English sense inventory and First Known Use: 13th century','supports','Publishes the medieval field and century.'),
(619,353,'dheigh- item 5','supports','Publishes the nasalized shaping formation.'),
(620,387,'Modern definitions and historical sense inventory','supports','Supports the present pretense center against the older making field.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(838,159,996,997,'learned_borrowing','English chthonic adapts Greek khthonios with the learned chthon- spelling and English adjectival pronunciation.','Of the earth and under the earth develops into the specialized underworld sense.','American Heritage Dictionary Editors','established',NULL,'First known English use is reported in 1882.','reviewed'),
(839,159,997,998,'derivation','Greek khthonios is formed from khthōn, earth, with adjectival morphology.','Earth becomes of the earth, including what lies in or under it.','American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(840,159,998,999,'inheritance','Greek khthōn reflects the Indo-European o-grade *dh(e)ghom-.','Earth preserves the root meaning.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(841,159,999,1000,'ablaut_formation','The o-grade *dh(e)ghom- is a vocalic formation of the earth root *dhghem-.','The earth meaning remains stable across the reconstructed formation.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(842,159,1000,1001,'root_extension','The appendix identifies *dhg̑hem- as the oldest shape behind centum *dhghem-.','The earth field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(843,159,1001,1002,'knowledge_boundary','No older form is promoted beyond reviewed *dhg̑hem-.','The chthonic trail ends where the published comparative earth root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

(844,160,1003,1004,'continuation','Middle English exhume continues into modern exhume with later pronunciation standardization.','Physical removal from burial remains primary while recovery from obscurity develops figuratively.','Merriam-Webster Editors','established',NULL,'Recorded in English from the fifteenth century.','reviewed'),
(845,160,1004,1005,'borrowing','Middle English borrows Medieval Latin exhumare with minimal written reshaping.','The literal removal-from-earth sense is retained.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(846,160,1005,1006,'compound_component','Medieval Latin exhumare is formed on Latin humus beside the prefix ex-.','Earth supplies the burial-ground object from which something is removed.','Merriam-Webster Editors','established',NULL,'A morphological structure, not a claim that English humus donated exhume.','reviewed'),
(847,160,1006,1007,'inheritance','Latin humus reflects the suffixed o-grade formation *(dh)ghom-o-.','Earth and soil preserve the reconstructed meaning.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(848,160,1007,1008,'morphological_derivation','The suffixed o-grade *(dh)ghom-o- is built on *dhghem-, earth.','The earth meaning remains stable.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(849,160,1008,1009,'root_extension','The appendix identifies *dhg̑hem- as the oldest shape behind centum *dhghem-.','The earth field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(850,160,1009,1010,'knowledge_boundary','No older form is promoted beyond reviewed *dhg̑hem-.','The exhume trail ends where the published comparative earth root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

(851,161,1011,1012,'continuation','Middle English bride continues into modern bride with regular spelling and pronunciation history.','The newly married or about-to-marry woman remains the lexical center.','Merriam-Webster Editors','established',NULL,'Recorded in English before the twelfth century.','reviewed'),
(852,161,1012,1013,'inheritance','Middle English bride continues Old English brȳd.','Bride, wife, and spouse senses remain in the historical field.','Merriam-Webster Editors · Joseph Bosworth and Thomas Northcote Toller','established',NULL,NULL,'reviewed'),
(853,161,1013,1014,'knowledge_boundary','The reviewed sources compare Old English brȳd with Germanic relatives but do not promote a common reconstructed parent.','The bride trail stops without inventing deeper semantics.','SET-U editorial boundary · Merriam-Webster Editors · Joseph Bosworth and Thomas Northcote Toller','boundary','Old High German brūt is preserved as a comparative relative, not a direct parent.',NULL,'reviewed'),

(854,162,1015,1016,'continuation','Middle English deierie develops into modern dairy through vowel, spelling, and stress standardization.','A milk-production place expands to the products and industry associated with it.','Merriam-Webster Editors','established',NULL,'First known use is reported in the fourteenth century.','reviewed'),
(855,162,1016,1017,'borrowing','Middle English deierie reflects Anglo-French deyerie or daerie with English orthographic adaptation.','The place of milk handling remains the center.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(856,162,1017,1018,'derivational_base','Anglo-French deyerie is formed on Middle English deie beside Anglo-French -erie.','The woman responsible for milk production becomes the base for the place where that work occurs.','Merriam-Webster Editors','established','The English base entering an Anglo-French formation makes this more than a one-way donor chain.',NULL,'reviewed'),
(857,162,1018,1019,'inheritance','Middle English deie continues Old English dǣge with regular reduction and spelling change.','Woman managing milk and food production continues the earlier female baker or servant role.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(858,162,1019,1020,'inheritance','Old English dǣge reflects reconstructed Proto-Germanic *daigjōn-.','The occupational female baker or servant meaning continues.','Merriam-Webster Editors · Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(859,162,1020,1021,'derivation','Proto-Germanic *daigjōn- is derived from the dough base *daiga-.','A person associated with kneading or dough becomes a female baker and later servant.','Merriam-Webster Editors','established','The occupational formation and the dough noun *daigaz remain distinct nodes.',NULL,'reviewed'),
(860,162,1021,1022,'inheritance','Germanic *daiga- belongs to the form-and-build family under *dheigh-.','Dough and kneading specialize the broader act of forming.','Merriam-Webster Editors · Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(861,162,1022,1023,'root_extension','The root appendix identifies *dheig̑h- as the oldest shape behind centum *dheigh-.','The form-and-build field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(862,162,1023,1024,'knowledge_boundary','No older form is promoted beyond reviewed *dheig̑h-.','The dairy trail ends where the published comparative form-and-build root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

(863,163,1025,1026,'continuation','Middle English ficcioun develops into modern fiction through French-influenced spelling and English pronunciation.','Mental invention expands into narrative, imaginative, legal, and pretense senses.','Merriam-Webster Editors','established',NULL,'First known English use is reported in the fourteenth century.','reviewed'),
(864,163,1026,1027,'borrowing','Middle English ficcioun borrows Middle French fiction with English orthographic adaptation.','Invention and feigning senses continue.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(865,163,1027,1028,'borrowing','Middle French fiction continues the borrowed Latin action noun fictiō.','Shaping, feigning, and pretense narrow and reorganize in French and English.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(866,163,1028,1029,'derivation','Latin fictiō is formed from the variant stem fig- beside the action suffix -tiō.','The action of shaping or molding extends to feigning and pretense.','Merriam-Webster Editors','established',NULL,'A morphological relation inside Latin.','reviewed'),
(867,163,1029,1030,'stem_allomorphy','Latin fig- is the variant stem of fingere used before the action-noun suffix.','The shaping and making field remains intact.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(868,163,1030,1031,'inheritance','Latin fingere reflects the nasalized zero-grade formation *dhi-n-gh-.','Molding, fashioning, making a likeness, and pretending continue the shaping field.','Merriam-Webster Editors · Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(869,163,1031,1032,'morphological_derivation','The nasalized formation *dhi-n-gh- is built on *dheigh-, to form or build.','Shaping remains the semantic center.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(870,163,1032,1033,'root_extension','The root appendix identifies *dheig̑h- as the oldest shape behind centum *dheigh-.','The form-and-build field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(871,163,1033,1034,'knowledge_boundary','No older form is promoted beyond reviewed *dheig̑h-.','The fiction trail ends where the published comparative form-and-build root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed'),

(872,164,1035,1036,'continuation','Middle English feynen and feignen develop into modern feign with spelling and pronunciation standardization.','Making, fabricating, likeness, and pretense narrow toward deliberate false appearance.','Merriam-Webster Editors','established',NULL,'First known English use is reported in the thirteenth century.','reviewed'),
(873,164,1036,1037,'borrowing','Middle English borrows the Anglo-French feign- stem with English inflection.','The make, fabricate, likeness, and pretense field is retained.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(874,164,1037,1038,'stem_derivation','Anglo-French feign- is the inflectional stem of feindre.','The fashioning and pretending senses remain connected.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(875,164,1038,1039,'inheritance','Anglo-French feindre continues Latin fingere through Romance sound and form history; no single unattested intermediate is inserted.','To shape or make a likeness develops naturally toward pretending to be.','Merriam-Webster Editors','established',NULL,NULL,'reviewed'),
(876,164,1039,1040,'inheritance','Latin fingere reflects the nasalized zero-grade formation *dhi-n-gh-.','Molding, fashioning, making a likeness, and pretending continue the shaping field.','Merriam-Webster Editors · Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(877,164,1040,1041,'morphological_derivation','The nasalized formation *dhi-n-gh- is built on *dheigh-, to form or build.','Shaping remains the semantic center.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(878,164,1041,1042,'root_extension','The root appendix identifies *dheig̑h- as the oldest shape behind centum *dheigh-.','The form-and-build field continues at the deepest reviewed level.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(879,164,1042,1043,'knowledge_boundary','No older form is promoted beyond reviewed *dheig̑h-.','The feign trail ends where the published comparative form-and-build root ends.','SET-U editorial boundary · Calvert Watkins and American Heritage Dictionary Editors','boundary','The root is reconstructed rather than attested.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(838,381,'Etymology: Greek khthonios from khthōn; see dhghem-','supports','Publishes the Greek adjective route into English.'),
(838,380,'Etymology: Greek chthon-, chthōn earth','context','Confirms the learned Greek earth base and English record.'),
(839,381,'From Greek khthonios, of the earth, from khthōn, earth','supports','Publishes the adjective formation.'),
(840,337,'dhghem- item 2: o-grade *dh(e)ghom- to Greek khthōn','supports','Publishes the exact Greek root formation.'),
(841,337,'dhghem- heading and item 2','supports','Identifies the o-grade as a formation of the earth root.'),
(842,337,'dhghem- heading: oldest *dhg̑hem- to centum *dhghem-','supports','Publishes the oldest printed root shape.'),
(843,337,'dhghem- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(844,382,'Word history and first known use: 15th century','supports','Publishes the English chronology and physical burial sense.'),
(845,382,'Etymology: Middle English from Medieval Latin exhumare','supports','Publishes the borrowing route.'),
(846,382,'Etymology: Latin ex out of plus humus earth','supports','Publishes the two-part structure.'),
(847,337,'dhghem- item 4: *(dh)ghom-o- to Latin humus and exhume','supports','Publishes the exact Latin formation.'),
(848,337,'dhghem- root heading and item 4','supports','Analyzes the suffixed o-grade under the earth root.'),
(849,337,'dhghem- heading: oldest *dhg̑hem- to centum *dhghem-','supports','Publishes the oldest printed root shape.'),
(850,337,'dhghem- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(851,383,'Etymology and first known use: before the 12th century','supports','Publishes the inherited English chronology.'),
(852,383,'Etymology: Middle English from Old English brȳd','supports','Publishes the direct Old English ancestry.'),
(852,384,'BRÝD headword, senses, and examples','context','Documents the Old English form and semantic range.'),
(853,383,'Akin to Old High German brūt bride','supports','Supplies comparison without a reconstructed parent.'),
(853,384,'Etymology list of Germanic comparanda','context','Shows a wide cognate set while leaving reconstruction outside this reviewed dossier.'),

(854,385,'Word history and first known use: 14th century','supports','Publishes the English chronology and place sense.'),
(855,385,'Etymology: Middle English deierie from Anglo-French deyerie','supports','Publishes the immediate borrowing.'),
(856,385,'Deyerie from Middle English deie plus Anglo-French -erie','supports','Publishes the cross-language derivational structure.'),
(857,385,'Middle English deie going back to Old English dǣge','supports','Publishes the inherited occupational base.'),
(858,385,'Old English dǣge from Germanic *daigjōn-','supports','Publishes the Germanic formation.'),
(858,353,'dheigh- item 1: dairy from dǣge and *daigjōn-','context','Places the formation in the comparative root family.'),
(859,385,'*daigjōn- derivative of *daiga-','supports','Publishes the dough-base derivation.'),
(860,353,'dheigh- heading and dairy item','supports','Places dairy under the form-and-build root.'),
(860,385,'*daiga- with cross-reference to dough','context','Confirms the Germanic dough base.'),
(861,353,'dheigh- heading and oldest form *dheig̑h-','supports','Publishes the oldest root shape.'),
(862,353,'dheigh- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(863,386,'Word history and first known use: 14th century','supports','Publishes the English chronology and Middle English form.'),
(864,386,'Middle English ficcioun borrowed from Middle French fiction','supports','Publishes the French borrowing.'),
(865,386,'Middle French fiction borrowed from Latin fictiō','supports','Publishes the Latin source.'),
(866,386,'Latin fictiō from fig- plus -tiō','supports','Publishes the action-noun formation.'),
(867,386,'Fig- variant stem of fingere','supports','Publishes the stem allomorphy.'),
(868,353,'dheigh- item 5: nasalized zero-grade to Latin fingere and fiction','supports','Publishes the comparative formation.'),
(868,386,'Fingere: mold, fashion, make a likeness, pretend','context','Publishes the semantic range.'),
(869,353,'dheigh- root heading and item 5','supports','Analyzes the nasalized formation under the root.'),
(870,353,'dheigh- heading and oldest form *dheig̑h-','supports','Publishes the oldest root shape.'),
(871,353,'dheigh- entry endpoint','supports','Defines the deepest reviewed comparative horizon.'),

(872,387,'Middle English feynen, feignen and first known use: 13th century','supports','Publishes the English forms, senses, and chronology.'),
(873,387,'Borrowed from Anglo-French feign-','supports','Publishes the immediate borrowing stem.'),
(874,387,'Feign-, stem of feindre','supports','Publishes the stem relation.'),
(875,387,'Feindre going back to Latin fingere','supports','Publishes the Romance-to-Latin history.'),
(876,387,'Fingere from Indo-European nasalized formation','supports','Publishes the nasalized comparative formation.'),
(876,353,'dheigh- item 5: nasalized zero-grade to Latin fingere and feign','context','Independently places feign in the root family.'),
(877,353,'dheigh- root heading and item 5','supports','Analyzes the nasalized formation under the root.'),
(878,353,'dheigh- heading and oldest form *dheig̑h-','supports','Publishes the oldest root shape.'),
(879,353,'dheigh- entry endpoint','supports','Defines the deepest reviewed comparative horizon.');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(380,'mw-chthonic','Chthonic — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/chthonic',NULL,'historical_dictionary'),
(381,'ahd-chthonic','Chthonic — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=chthonic',NULL,'historical_dictionary'),
(382,'mw-exhume','Exhume — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/exhume',NULL,'historical_dictionary'),
(383,'mw-bride','Bride — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/bride',NULL,'historical_dictionary'),
(384,'bosworth-toller-bryd','BRÝD — An Anglo-Saxon Dictionary Online','Joseph Bosworth, Thomas Northcote Toller, Christ Sean, and Ondřej Tichý',2014,'Faculty of Arts, Charles University','https://bosworthtoller.com/5275',NULL,'historical_dictionary'),
(385,'mw-dairy','Dairy — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/dairy',NULL,'historical_dictionary'),
(386,'mw-fiction','Fiction — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/fiction',NULL,'historical_dictionary'),
(387,'mw-feign','Feign — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/feign',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(996,159,1,1,'chthonic','chthonic','earth-underworld-adjective','chthonic','/ˈθɒnɪk/','attested','1882–today',1882,NULL,'of the underworld; of or under the earth','The underworld sense remains grounded in the Greek earth word.'),
(997,159,10,2,'χθόνιος','khthonios','of-earth-adjective','khthonios',NULL,'attested','Ancient Greek',-700,600,'of the earth; in or under the earth','American Heritage names this Greek adjective as the source of English chthonic.'),
(998,159,10,3,'χθών','khthon','earth-noun','khthōn',NULL,'attested','Ancient Greek',-700,600,'earth; ground','The base noun printed by both reviewed dictionaries.'),
(999,159,6,4,'*dh(e)ghom-','dheghom','earth-o-grade','*dh(e)ghom-',NULL,'reconstructed','Proto-Indo-European o-grade form',-4500,-2500,'earth','The o-grade formation printed for the Greek khthōn branch.'),
(1000,159,6,5,'*dhghem-','dhghem','earth-root','*dhghem-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'earth','The canonical earth root already shared by human, humus, humble, and bridegroom.'),
(1001,159,6,6,'*dhg̑hem-','dhghem-oldest','earth-oldest-root','*dhg̑hem-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'earth','The oldest printed form in the reviewed root appendix.'),
(1002,159,7,7,'UNKNOWN','unknown','chthonic-deep-boundary',NULL,NULL,'boundary','before the reviewed *dhg̑hem- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed earth root.','The Greek and Latin earth branches remain separate below their common root.'),

(1003,160,1,1,'exhume','exhume','remove-from-earth-verb','exhume','/ɪɡˈzuːm/','attested','15th century–today',1400,NULL,'remove from burial; recover from obscurity','The physical burial sense precedes the figurative recovery sense.'),
(1004,160,2,2,'exhume','exhume','remove-from-earth-verb','exhume',NULL,'attested','Middle English',1400,1500,'remove from burial','Merriam-Webster identifies Middle English as the first English stage.'),
(1005,160,14,3,'exhumare','exhumare','out-of-earth-verb','exhumare',NULL,'attested','Medieval Latin',700,1500,'to remove from the earth','A transparent formation from ex, out of, and humus, earth.'),
(1006,160,9,4,'humus','humus','earth-soil','humus',NULL,'attested','Latin antiquity',-700,700,'earth; soil','The exact canonical Latin earth node used by humble and humus.'),
(1007,160,6,5,'*(dh)ghom-o-','dhghom-o','earth-o-grade-formation','*(dh)ghom-o-',NULL,'reconstructed','Proto-Indo-European suffixed o-grade formation',-4500,-2500,'earth; ground','The specific formation printed behind Latin humus.'),
(1008,160,6,6,'*dhghem-','dhghem','earth-root','*dhghem-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'earth','The common earth root.'),
(1009,160,6,7,'*dhg̑hem-','dhghem-oldest','earth-oldest-root','*dhg̑hem-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'earth','The oldest printed root shape.'),
(1010,160,7,8,'UNKNOWN','unknown','exhume-deep-boundary',NULL,NULL,'boundary','before the reviewed *dhg̑hem- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed earth root.','The ex- component follows its own boundary branch.'),

(1011,161,1,1,'bride','bride','newly-married-woman','bride','/braɪd/','attested','before the 12th century–today',1000,NULL,'a woman about to be or recently married','The modern word directly continues the inherited English noun.'),
(1012,161,2,2,'bride','bride','newly-married-woman','bride',NULL,'attested','Middle English',1150,1500,'bride; wife','The Middle English continuation of Old English brȳd.'),
(1013,161,3,3,'brȳd','bryd','bride-component','brȳd',NULL,'attested','Old English',450,1150,'bride; wife; spouse; woman','The exact canonical first component already exposed inside brȳdguma.'),
(1014,161,7,4,'UNKNOWN','unknown','bride-deep-boundary',NULL,NULL,'boundary','before the reviewed Old English and Germanic comparisons',NULL,NULL,'No securely promoted reconstructed parent is supplied by the reviewed bride sources.','Old High German brūt remains a comparative relative, not a parent.'),

(1015,162,1,1,'dairy','dairy','milk-place-products','dairy','/ˈdɛəri/','attested','14th century–today',1300,NULL,'milk products; a place or enterprise producing them','The modern substance and industry senses developed from a place and occupational history.'),
(1016,162,2,2,'deierie','deierie','milk-production-place','deierie',NULL,'attested','Middle English',1300,1500,'a place where milk, butter, and cheese are handled','One of the Middle English forms printed by Merriam-Webster.'),
(1017,162,12,3,'deyerie','deyerie','milk-production-place','deyerie',NULL,'attested','Anglo-French',1066,1500,'dairy; milk-production place','A formation from the English occupational base plus Anglo-French -erie.'),
(1018,162,2,4,'deie','deie','woman-managing-milk','deie',NULL,'attested','Middle English',1150,1500,'woman in charge of milking and making butter and cheese','The human occupational base behind the place noun.'),
(1019,162,3,5,'dǣge','dage','female-baker-servant','dǣge',NULL,'attested','Old English',450,1150,'female baker; female servant','The older role preserves the bread and kneading family.'),
(1020,162,5,6,'*daigjōn-','daigjon','female-baker-germanic','*daigjōn-',NULL,'reconstructed','Proto-Germanic',-500,200,'female baker or servant','The reconstructed formation behind Old English dǣge and Old Norse deigja.'),
(1021,162,5,7,'*daiga-','daiga','dough-stem-germanic','*daiga-',NULL,'reconstructed','Proto-Germanic stem',-500,200,'dough; kneaded mass','The Germanic base from which *daigjōn- is derived; it is not identical to nominative *daigaz.'),
(1022,162,6,8,'*dheigh-','dheigh','form-build-root','*dheigh-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'to form; build','The canonical form-and-build root shared with lady, dough, figure, fiction, and feign.'),
(1023,162,6,9,'*dheig̑h-','dheigh-oldest','form-build-oldest-root','*dheig̑h-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'to form; build','The oldest printed form in the reviewed root appendix.'),
(1024,162,7,10,'UNKNOWN','unknown','dairy-deep-boundary',NULL,NULL,'boundary','before the reviewed *dheig̑h- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed form-and-build root.','The occupational history is not proof of one timeless social role.'),

(1025,163,1,1,'fiction','fiction','invented-shaped-narrative','fiction','/ˈfɪkʃən/','attested','14th century–today',1300,NULL,'invented narrative; imaginative creation; pretense; legal assumption','Modern narrative is one branch of a wider history of shaping and invention.'),
(1026,163,2,2,'ficcioun','ficcioun','mental-invention','ficcioun',NULL,'attested','Middle English',1300,1500,'invention of the mind','The Middle English sense and spelling printed by Merriam-Webster.'),
(1027,163,18,3,'fiction','fiction','shaping-pretense-noun','fiction',NULL,'attested','Middle French',1300,1600,'invention; feigning; pretense','The French borrowing channel into English.'),
(1028,163,9,4,'fictiō','fictio','shaping-feigning-action','fictiō',NULL,'attested','Latin antiquity',-700,700,'action of shaping or molding; feigning; pretense; legal fiction','The action noun before its modern literary specialization.'),
(1029,163,9,5,'fig-','fig','shape-variant-stem','fig-',NULL,'attested','Latin bound stem',-700,700,'variant stem used in the action noun fictiō','The bound stem is not presented as a free-standing Latin word.'),
(1030,163,9,6,'fingere','fingere','shape-mold-verb','fingere',NULL,'attested','Latin antiquity',-700,700,'to mold; fashion; shape; make a likeness; pretend','The exact canonical verb already exposed as a competing analysis under figure.'),
(1031,163,6,7,'*dhi-n-gh-','dhi-n-gh','nasalized-shape-formation','*dhi-n-gh-',NULL,'reconstructed','Proto-Indo-European nasalized zero-grade formation',-4500,-2500,'to shape; form','The nasalized formation printed behind Latin fingere.'),
(1032,163,6,8,'*dheigh-','dheigh','form-build-root','*dheigh-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'to form; build','The common form-and-build root.'),
(1033,163,6,9,'*dheig̑h-','dheigh-oldest','form-build-oldest-root','*dheig̑h-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'to form; build','The oldest printed root shape.'),
(1034,163,7,10,'UNKNOWN','unknown','fiction-deep-boundary',NULL,NULL,'boundary','before the reviewed *dheig̑h- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed form-and-build root.','Fiction and figure are sibling formations, not parent and child.'),

(1035,164,1,1,'feign','feign','invent-pretend-verb','feign','/feɪn/','attested','13th century–today',1200,NULL,'invent; fabricate; pretend; give a false appearance','The false-appearance sense grows from making and fashioning.'),
(1036,164,2,2,'feynen','feynen','make-fabricate-pretend','feynen',NULL,'attested','Middle English',1150,1500,'make; fabricate; make a likeness; dissemble; pretend','Merriam-Webster prints feynen and feignen as historical forms.'),
(1037,164,12,3,'feign-','feign','feindre-stem','feign-',NULL,'attested','Anglo-French bound stem',1066,1500,'stem used in feindre','The immediate borrowing base printed by Merriam-Webster.'),
(1038,164,12,4,'feindre','feindre','shape-pretend-verb','feindre',NULL,'attested','Anglo-French',1066,1500,'fashion; make a likeness; pretend','The Romance continuation of Latin fingere.'),
(1039,164,9,5,'fingere','fingere','shape-mold-verb','fingere',NULL,'attested','Latin antiquity',-700,700,'to mold; fashion; shape; make a likeness; pretend','The canonical Latin verb shared with fiction and figure.'),
(1040,164,6,6,'*dhi-n-gh-','dhi-n-gh','nasalized-shape-formation','*dhi-n-gh-',NULL,'reconstructed','Proto-Indo-European nasalized zero-grade formation',-4500,-2500,'to shape; form','The nasalized formation behind Latin fingere.'),
(1041,164,6,7,'*dheigh-','dheigh','form-build-root','*dheigh-',NULL,'reconstructed','Proto-Indo-European centum form',-4500,-2500,'to form; build','The common form-and-build root.'),
(1042,164,6,8,'*dheig̑h-','dheigh-oldest','form-build-oldest-root','*dheig̑h-',NULL,'reconstructed','oldest Proto-Indo-European form',-4500,-2500,'to form; build','The oldest printed root shape.'),
(1043,164,7,9,'UNKNOWN','unknown','feign-deep-boundary',NULL,NULL,'boundary','before the reviewed *dheig̑h- reconstruction',NULL,NULL,'No securely promoted ancestor is currently known beyond the reviewed form-and-build root.','The root connection does not make every shaping-family word a synonym.' );
--> statement-breakpoint

WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 996 AND 1043
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
WHERE f.id BETWEEN 996 AND 1043;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 838 AND 879;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 838 AND 879;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 838 AND 879;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:9:ex:attested:sense:out-of-prefix',9,'ex','ex','out-of-prefix','ex',NULL,'attested','Latin antiquity',-700,700,'out of; from','The prefix component of Medieval Latin exhumare.','reviewed'),
('boundary:graph:exhume-ex-0068',7,'UNKNOWN','unknown','exhume-ex-boundary',NULL,NULL,'boundary','before the reviewed Latin ex component',NULL,NULL,'No deeper parent is promoted for ex- in this dossier.','The prefix branch remains explicit without borrowing unrelated prefix history.','reviewed'),
('node:32:brut:attested:sense:bride-comparandum',32,'brūt','brut','bride-comparandum','brūt',NULL,'attested','Old High German',750,1050,'bride','Merriam-Webster names this as akin to Old English brȳd; it is not a parent of the English form.','reviewed'),
('node:12:erie:attested:sense:place-activity-suffix',12,'-erie','erie','place-activity-suffix','-erie',NULL,'attested','Anglo-French',1066,1500,'place or activity suffix','The suffix component of deyerie, modeled after comparable Anglo-French place nouns.','reviewed'),
('boundary:graph:dairy-erie-0068',7,'UNKNOWN','unknown','dairy-erie-boundary',NULL,NULL,'boundary','before the reviewed Anglo-French -erie component',NULL,NULL,'No deeper parent is promoted for -erie in this dossier.','The suffix branch remains explicit and bounded.','reviewed'),
('node:9:tio:attested:sense:verbal-action-suffix',9,'-tiō','tio','verbal-action-suffix','-tiō',NULL,'attested','Latin antiquity',-700,700,'suffix of verbal action','The action-noun suffix used beside the fig- stem in fictiō.','reviewed'),
('boundary:graph:fiction-tio-0068',7,'UNKNOWN','unknown','fiction-tio-boundary',NULL,NULL,'boundary','before the reviewed Latin -tiō component',NULL,NULL,'No deeper parent is promoted for -tiō in this dossier.','The suffix branch remains explicit and bounded.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:1:chthonic:attested:sense:earth-underworld-adjective'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:10:khthon:attested:sense:earth-noun'),'competing_learned_formation','Merriam-Webster summarizes English chthonic directly from Greek chthon-, chthōn, while American Heritage supplies Greek khthonios as the immediate adjective.','Greek earth vocabulary supplies the English underworld adjective under either segmentation.','Merriam-Webster Editors','proposed','The two dictionary segmentations are compatible but not silently collapsed.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:14:exhumare:attested:sense:out-of-earth-verb'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:ex:attested:sense:out-of-prefix'),'compound_component','Medieval Latin exhumare contains Latin ex, out of, beside humus, earth.','The prefix supplies removal away from or out of the earth.','Merriam-Webster Editors','established',NULL,'A morphological structure inside Medieval Latin.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:ex:attested:sense:out-of-prefix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:exhume-ex-0068'),'knowledge_boundary','No deeper parent is promoted for ex- from the reviewed exhume source.','The prefix branch reaches an explicit evidence boundary.','SET-U editorial boundary · Merriam-Webster Editors','boundary','Only the compound structure required by the headword source is asserted.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:32:brut:attested:sense:bride-comparandum'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:161:4'),'cognate_horizon','Old High German brūt is compared with Old English brȳd, but no common reconstructed parent is promoted.','Bride remains the shared semantic field across the comparison.','Merriam-Webster Editors','probable','The boundary is a comparative horizon, not an unattested word.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:12:deyerie:attested:sense:milk-production-place'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:12:erie:attested:sense:place-activity-suffix'),'derivational_component','Anglo-French deyerie contains the suffix -erie beside the English occupational base deie.','The suffix turns the worker base into a place or activity noun.','Merriam-Webster Editors','established',NULL,'A cross-language derivational formation.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:12:erie:attested:sense:place-activity-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:dairy-erie-0068'),'knowledge_boundary','No deeper parent is promoted for Anglo-French -erie from the reviewed dairy source.','The suffix branch reaches an explicit evidence boundary.','SET-U editorial boundary · Merriam-Webster Editors','boundary','Comparable place nouns motivate the suffix analysis without requiring a deeper suffix history here.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:fictio:attested:sense:shaping-feigning-action'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:tio:attested:sense:verbal-action-suffix'),'derivational_component','Latin fictiō contains the verbal-action suffix -tiō beside the fig- stem.','The suffix forms an action noun covering shaping, molding, feigning, and pretense.','Merriam-Webster Editors','established',NULL,'A morphological relation inside Latin.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:9:tio:attested:sense:verbal-action-suffix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:fiction-tio-0068'),'knowledge_boundary','No deeper parent is promoted for Latin -tiō from the reviewed fiction source.','The suffix branch reaches an explicit evidence boundary.','SET-U editorial boundary · Merriam-Webster Editors','boundary','Only the action-noun role required by the headword source is asserted.',NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:1:chthonic:attested:sense:earth-underworld-adjective' AND p.canonical_key='node:10:khthon:attested:sense:earth-noun' AND e.relation_type='competing_learned_formation'),380,'Etymology: Greek chthon-, chthōn earth','supports','Publishes the direct stem-and-noun summary.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:14:exhumare:attested:sense:out-of-earth-verb' AND p.canonical_key='node:9:ex:attested:sense:out-of-prefix' AND e.relation_type='compound_component'),382,'Etymology: Latin ex out of plus humus earth','supports','Publishes the prefix component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:ex:attested:sense:out-of-prefix' AND p.canonical_key='boundary:graph:exhume-ex-0068' AND e.relation_type='knowledge_boundary'),382,'Exhume etymology identifies ex but supplies no deeper prefix history','supports','Defines the reviewed component boundary.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:32:brut:attested:sense:bride-comparandum' AND p.canonical_key='boundary:161:4' AND e.relation_type='cognate_horizon'),383,'Akin to Old High German brūt bride','supports','Publishes the comparison without a common proto-form.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:12:deyerie:attested:sense:milk-production-place' AND p.canonical_key='node:12:erie:attested:sense:place-activity-suffix' AND e.relation_type='derivational_component'),385,'Deyerie from deie plus Anglo-French -erie','supports','Publishes the suffix component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:12:erie:attested:sense:place-activity-suffix' AND p.canonical_key='boundary:graph:dairy-erie-0068' AND e.relation_type='knowledge_boundary'),385,'Dairy etymology identifies -erie but supplies no deeper suffix history','supports','Defines the reviewed suffix boundary.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:fictio:attested:sense:shaping-feigning-action' AND p.canonical_key='node:9:tio:attested:sense:verbal-action-suffix' AND e.relation_type='derivational_component'),386,'Fictiō from fig- plus -tiō, suffix of verbal action','supports','Publishes the suffix component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:9:tio:attested:sense:verbal-action-suffix' AND p.canonical_key='boundary:graph:fiction-tio-0068' AND e.relation_type='knowledge_boundary'),386,'Fiction etymology identifies -tiō but supplies no deeper suffix history','supports','Defines the reviewed suffix boundary.');
