-- Close the contrarian-truth coverage gap across the reviewed canon. Every
-- dossier now has one ranked reveal with claim-level evidence. These rows reuse
-- already-reviewed relation and dispute sources, no dossier bibliography is
-- treated as blanket support.

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(101,1,2012,'love','Romance is not the whole prehistory of love.','The reconstructed love family spans a wider comparative field of desire, care, pleasure, and longing. Modern romantic love is one powerful branch, not a one-word prehistoric definition.','A',96,'The wider semantic field is directly supported; the exact breadth of the reconstructed gloss remains a published dispute.'),
(102,2,2013,'etymology','The search for a true root ends in uncertainty.','Greek etymology combines the true-word family with an account or study, yet its own descent reaches the proposed *set-u- reconstruction and then an explicit evidence boundary.','A',100,'The Greek compound is attested; the deepest morphology remains separately graded as reconstructed and disputed.'),
(103,14,2014,'collect','Collect almost says its Latin construction aloud.','Latin colligere joins com- with legere: gathering together. Unlike many dramatic semantic reversals, the modern English core remains strikingly close to the historical construction.','A',91,'The Latin compound analysis and lexical meaning are independently located.'),
(104,20,2015,'mussel','Mussel and muscle were once spelling twins.','Middle English could spell the shellfish muscle. The shellfish and anatomical words ultimately belong to Latin’s mouse-derived musculus family, though the naming resemblance itself is not fully recoverable.','A',100,'The shared family and spelling overlap are established; the original metaphorical motivation remains unresolved.'),
(105,21,2016,'mouse','English mouse is not a Latin loan.','English mouse follows its inherited Germanic line while Latin mūs is a cognate branch. Their resemblance reflects common ancestry, not a direct Latin-to-English borrowing.','A',99,'The Germanic path and reconstructed comparison are directly sourced.'),
(106,22,2017,'host','The host could also be the guest.','Latin hospes carried reciprocal host-and-guest roles. The opposition feels fixed in modern English, but the historical hospitality relationship could reverse when obligations were returned.','A',100,'The reciprocal Latin senses are established while the deepest compound reduction remains disputed.'),
(107,23,2018,'guest','Guest and hostile share a stranger.','Germanic guest and Latin hostis remain separate branches until reconstructed *ghos-ti-. One branch preserved the visitor; the Latin branch developed the outsider and enemy family.','A',100,'The convergence is comparative cognacy, never a claim that English guest was borrowed from Latin.'),
(108,25,2019,'hospital','A hospital was hospitality before medicine.','The English record begins with lodging and charitable shelter. The medical institution developed inside an older guest-care family rather than naming medicine from the start.','A',100,'The earlier lodging senses and later medical specialization are directly separated by the reviewed sources.'),
(109,26,2020,'hotel','Hotel and hospital are siblings, not parent and child.','French hôtel continues Old French hostel, while hospital follows a related learned route through the same Latin guest-accommodation family. English hotel is not simply a shortening of English hospital.','A',99,'The French succession and related-but-distinct hospital transmission are both directly sourced.'),
(110,28,2021,'science','Science originally meant knowledge.','Before the modern natural-science center, science could mean knowledge or an organized branch of learning. A directly inspected 1704 witness still prints that broader institutional sense.','A',100,'The semantic history is supported by a historical dictionary and a directly inspected primary-page witness.'),
(111,30,2022,'decimal','Decimal is named for tenths, not the point.','The word runs through the tenth-part family to Latin decem “ten.” The decimal point is a notation used by decimals, not the ancestor that named them.','A',100,'The derivation through decima and decem is directly located.'),
(112,33,2023,'chess','Chess may be a fossilized plural.','English chess comes through French plural game or piece forms. Its deeper route remains contested between the king-call šāh family and the traveling game-name šatranj.','A−',100,'The French plural history is established; the competing deeper route remains visible rather than being forced into one verdict.'),
(113,35,2024,'shah','The king is still hiding inside check.','English shah directly borrows the Persian royal title. A much longer route through chess vocabulary carries that same king-word into English check and its later restraint, verification, and banking senses.','A',99,'The direct shah borrowing and the separate historical route into check are both directly sourced.'),
(114,37,2025,'chai','Chai is tea returning through another route.','The source-language forms behind English chai ordinarily mean tea. English specialized one returning member of the wider Chinese tea-word dispersal as a particular drink style.','A',100,'The English culinary specialization and the overland cha/chai distribution are directly sourced; no unique immediate donor is invented.'),
(115,38,2026,'ten','Ten and decimal are cousins, not borrower and source.','English ten is inherited through Germanic; decimal is learned through Latin. Both independently continue the reconstructed Indo-European numeral family.','A',100,'The inherited Germanic path and the shared Germanic-Latin reconstruction are directly sourced.');
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
(101,6,'Emotion 16.27','supports','Publishes the reconstructed love root and a comparative semantic field broader than modern romance.'),
(101,4,'Germanic love family','context','Supplies the Germanic evidence that constrains, but does not exhaust, the deeper semantic reconstruction.'),
(102,10,'ἐτυμολογία','supports','Supplies the attested Greek technical compound and its true-sense analysis.'),
(102,11,'ἐτός / ἔτυμος dossier','context','Records the *set-u- analysis and competing discussion rather than presenting a certain ultimate root.'),
(103,46,'com- + legere','supports','Publishes the Latin compound analysis behind collect.'),
(103,51,'colligō','context','Supplies the Latin lexical form and its gathering semantic range.'),
(104,66,'Latin musculus / *muscula family','supports','Documents the shellfish and anatomical forms in the same Latin mouse family.'),
(104,73,'Muscle and mussel history','context','Documents the former spelling overlap while preserving uncertainty about the exact resemblance mechanism.'),
(105,70,'Germanic origin and cognates','supports','Places English mouse in the inherited Germanic branch rather than deriving it from Latin.'),
(105,72,'Germanic comparanda','context','Places Germanic and Latin forms as parallel reflexes of the reconstructed family.'),
(106,74,'hospes note and reconstructed compound','supports','Explains the reciprocal host and guest senses preserved by Latin hospes.'),
(106,80,'Latin hospes, hospit-','context','Independently records the same polysemous Latin source.'),
(107,75,'Germanic *gasti- and cognates','supports','Keeps Germanic guest separate from Latin hostis until their reconstructed family.'),
(107,82,'ghos-ti- root','context','Publishes the shared reciprocal-outsider reconstruction.'),
(108,77,'Middle English senses and First Known Use','supports','Documents lodging and charitable senses before medical specialization.'),
(108,79,'hospital semantic history','context','Explains the later medical development within the guest-care family.'),
(109,78,'French hôtel from Old French hostel','supports','Documents the French succession specific to hotel.'),
(109,79,'hospital family transmission','context','Distinguishes the related hospital and hotel transmission paths.'),
(110,86,'Definitions and etymology','supports','Documents the older general-knowledge and branch-of-learning range against the modern natural-science center.'),
(110,100,'Image [812], left column, SYSTEM entry, “System of Philosophy”; e-rara content image 2867876','supports','Directly witnesses Science meaning an organized branch of knowledge in Harris’s 1704 English dictionary.'),
(111,90,'Etymology','supports','Traces decimal through decima and decem rather than the punctuation mark.'),
(111,92,'Root dekm̥, section 1.3','context','Places decimal under Latin decem in the reconstructed ten family.'),
(112,94,'Etymology and Kids Etymology','supports','Documents the French plural game-name development.'),
(112,98,'Headword summary; history of chess','challenges','Supplies the separately reviewed šatranj game-name route.'),
(113,96,'Etymology; First Known Use','supports','Documents shah as a direct English borrowing from Persian.'),
(113,93,'Noun etymology','context','Documents the separate longer route from Persian šāh through chess vocabulary to English check.'),
(114,104,'Etymology and First Known Use','supports','Lists the source-language chay forms and dates the specialized English culinary word.'),
(114,102,'Chapter 138, discussion of overland chai-type transmission','context','Documents the wider overland cha/chai distribution within the global tea-word dispersal.'),
(115,110,'Word History: Etymology','supports','Gives the inherited Old English and Germanic path for ten.'),
(115,92,'Root dekm̥, Germanic and Latin descendants','supports','Shows Germanic ten-family and Latin decem-family forms as cognates under one reconstruction.');
