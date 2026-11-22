-- Build the English truth-and-steadfastness family without turning a vivid
-- cognate relationship into a slogan. TRUE, TRUTH, TRUST, TROTH, BETROTH,
-- TRUCE, and TREE follow distinct attested and reconstructed branches. They
-- converge only at the published *deru- / *dreu- firmness-and-wood horizon.

INSERT INTO `entries` (`id`,`slug`,`headword`,`normalized_headword`,`pronunciation`,`part_of_speech`,`summary`,`contrarian_truth`,`editorial_status`) VALUES
(122,'true','true','true','/truː/','adjective','In accord with fact, reality, or a standard; historically an inherited word whose older center is firmness, faithfulness, and steadfastness.','True did not begin as a technical label for factual correspondence. Its inherited center was steadfast, faithful, and trustworthy.','reviewed'),
(123,'truth','truth','truth','/truːθ/','noun','Conformity with fact or reality; inherited through Old English trēowþ, whose recorded semantic field includes fidelity, loyalty, and constancy.','The earliest source-reported English sense of truth is fidelity or constancy, not an abstract theory of correspondence.','reviewed'),
(124,'trust','trust','trust','/trʌst/','noun','Assured reliance, confidence, or responsibility; probably entering Middle English from Scandinavian material meaning confidence and firmness.','Trust is a Scandinavian firmness word before it is a legal property arrangement.','reviewed'),
(125,'troth','troth','troth','/trɔːθ/','noun','Pledged fidelity, good faith, or betrothal; a surviving historical twin of truth rather than a later poetic fabrication.','Troth and truth descend through the same Old English faith-and-loyalty noun; modern English divided their jobs.','reviewed'),
(126,'betroth','betroth','betroth','/bɪˈtrɔːθ/','verb','To promise in marriage; a Middle English prefixed formation built on the same historical noun that yielded truth and troth.','To betroth is literally to bind someone by troth—the older truth of pledged fidelity—not merely to announce an engagement.','reviewed'),
(127,'truce','truce','truce','/truːs/','noun','A temporary suspension of hostilities by agreement; inherited through a Middle English plural of a word for agreement or pledge.','A truce began as pledges or agreements: its ceasefire sense is rooted in fidelity, not in exhaustion from fighting.','reviewed'),
(128,'tree','tree','tree','/triː/','noun','A perennial woody plant; inherited through Old English trēow and Germanic *trewam from the firmness-and-wood branch of *deru-.','Tree and truth are deep cousins: both descend from a reconstructed family of firmness and solidity, not one from the other.','reviewed');
--> statement-breakpoint

INSERT INTO `sources` (`id`,`citation_key`,`title`,`author`,`year`,`publisher`,`url`,`doi`,`source_type`) VALUES
(284,'mw-true','True — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/true',NULL,'historical_dictionary'),
(285,'ahd-true','True — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=true',NULL,'historical_dictionary'),
(286,'mw-truth','Truth — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/truth',NULL,'historical_dictionary'),
(287,'ahd-truth','Truth — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=truth',NULL,'historical_dictionary'),
(288,'mw-trust','Trust — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/trust',NULL,'historical_dictionary'),
(289,'ahd-trust','Trust — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=trust',NULL,'historical_dictionary'),
(290,'mw-troth','Troth — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/troth',NULL,'historical_dictionary'),
(291,'ahd-troth','Troth — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=troth',NULL,'historical_dictionary'),
(292,'mw-betroth','Betroth — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/betroth',NULL,'historical_dictionary'),
(293,'ahd-betroth','Betroth — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=betroth',NULL,'historical_dictionary'),
(294,'mw-truce','Truce — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/truce',NULL,'historical_dictionary'),
(295,'ahd-truce','Truce — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=truce',NULL,'historical_dictionary'),
(296,'mw-tree','Tree — Definition, Word History, and First Known Use','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/tree',NULL,'historical_dictionary'),
(297,'ahd-tree','Tree — American Heritage Dictionary','American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/search.html?q=tree',NULL,'historical_dictionary'),
(298,'ahd-ie-deru','Indo-European Root deru-','Calvert Watkins and American Heritage Dictionary Editors',2022,'HarperCollins','https://www.ahdictionary.com/word/indoeurop.html',NULL,'scholarly_reference'),
(299,'mw-be-prefix','Be- — Prefix Definition and Word History','Merriam-Webster Editors',2026,'Merriam-Webster','https://www.merriam-webster.com/dictionary/be-',NULL,'historical_dictionary');
--> statement-breakpoint

INSERT INTO `forms` (`id`,`entry_id`,`language_id`,`step_order`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`) VALUES
(730,122,1,1,'true','true','fact-faithful-accurate','true','/truː/','attested','before 12th century–today',1000,NULL,'in accord with fact; faithful; accurate','The oldest source-reported English sense is steadfast or loyal; current meanings remain plural.'),
(731,122,2,2,'trewe','trewe','faithful-steadfast-adjective','trewe',NULL,'attested','Middle English',1150,1500,'faithful, steadfast, true','Merriam-Webster supplies the Middle English form.'),
(732,122,3,3,'trēowe','treowe','faithful-steadfast-adjective','trēowe',NULL,'attested','Old English',450,1150,'faithful, firm, trustworthy','The Old English semantic center is explicitly preserved.'),
(733,122,5,4,'*treuwaz','treuwaz','firm-faithful-adjective','*treuwaz',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'firm, faithful, trustworthy','American Heritage reconstructs this shared Germanic adjective behind the family.'),
(734,122,6,5,'*deru-','deru','firm-solid-wood-root','*deru- / *dreu-',NULL,'reconstructed','Proto-Indo-European horizon',-4500,-2500,'be firm, solid, steadfast; wood, tree','The source also gives the variant shape dreu-; this node does not make either spelling attested.'),
(735,122,7,6,'UNKNOWN','unknown','true-deep-boundary',NULL,NULL,'boundary','before the reviewed *deru- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the firmness-and-wood root.','The trail stops without converting a comparative root into a first spoken word.'),

(736,123,1,1,'truth','truth','fact-reality-fidelity','truth','/truːθ/','attested','before 12th century–today',1000,NULL,'conformity to fact or reality; sincerity; fidelity','Merriam-Webster reports the earliest use in the archaic fidelity or constancy sense.'),
(737,123,2,2,'trewthe','trewthe','faith-loyalty-truth','trewthe',NULL,'attested','Middle English',1150,1500,'loyalty, fidelity, truth','The factual and fidelity fields are not collapsed into one modern definition.'),
(738,123,3,3,'trēowþ','treowth','faith-loyalty-truth','trēowþ',NULL,'attested','Old English',450,1150,'faith, loyalty, fidelity, truth','Shared historical noun with the troth and betroth dossiers.'),
(739,123,5,4,'*treuwithō','treuwitho','faith-loyalty-abstract-noun','*treuwithō',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'faith, loyalty, truth','American Heritage explicitly publishes the Germanic abstract noun.'),
(740,123,5,5,'*treuwaz','treuwaz','firm-faithful-adjective','*treuwaz',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'firm, faithful, trustworthy','Shared adjective base of the Germanic faith-and-firmness family.'),
(741,123,6,6,'*deru-','deru','firm-solid-wood-root','*deru- / *dreu-',NULL,'reconstructed','Proto-Indo-European horizon',-4500,-2500,'be firm, solid, steadfast; wood, tree','Deepest reviewed comparative horizon.'),
(742,123,7,7,'UNKNOWN','unknown','truth-deep-boundary',NULL,NULL,'boundary','before the reviewed *deru- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the firmness-and-wood root.','The trail ends before philosophical speculation replaces linguistic evidence.'),

(743,124,1,1,'trust','trust','confidence-reliance','trust','/trʌst/','attested','12th century–today',1100,NULL,'assured reliance, confidence, care, or obligation','The legal property sense is one development inside a much wider confidence word.'),
(744,124,2,2,'truste','truste','confidence-reliance','truste',NULL,'attested','Middle English',1150,1500,'confidence, reliance','American Heritage supplies the Middle English form and cautiously marks the donor route.'),
(745,124,66,3,'traust','traust','confidence-firmness','traust',NULL,'attested','Old Norse',700,1350,'confidence, firmness','Merriam-Webster says probably Scandinavian; American Heritage says perhaps Old Norse.'),
(746,124,5,4,'*traustam','traustam','confidence-firmness-abstract-noun','*traustam',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'confidence, firmness','Published Germanic abstract noun behind Old Norse traust.'),
(747,124,5,5,'*treuwaz','treuwaz','firm-faithful-adjective','*treuwaz',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'firm, faithful, trustworthy','Shared Germanic adjective base.'),
(748,124,6,6,'*deru-','deru','firm-solid-wood-root','*deru- / *dreu-',NULL,'reconstructed','Proto-Indo-European horizon',-4500,-2500,'be firm, solid, steadfast; wood, tree','Deepest reviewed comparative horizon.'),
(749,124,7,7,'UNKNOWN','unknown','trust-deep-boundary',NULL,NULL,'boundary','before the reviewed *deru- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the firmness-and-wood root.','The probable Scandinavian donor route remains visible.'),

(750,125,1,1,'troth','troth','pledged-fidelity','troth','/trɔːθ/','attested','12th century–today',1100,NULL,'pledged fidelity, good faith, or betrothal','The modern word preserves a semantic branch once shared with truth.'),
(751,125,2,2,'trouth','trouth','faith-loyalty-truth','trouth',NULL,'attested','Middle English',1150,1500,'truth, troth, pledged fidelity','Merriam-Webster and American Heritage publish this historical form.'),
(752,125,3,3,'trēowþ','treowth','faith-loyalty-truth','trēowþ',NULL,'attested','Old English',450,1150,'faith, loyalty, fidelity, truth','Shared historical noun with truth and betroth.'),
(753,125,5,4,'*treuwithō','treuwitho','faith-loyalty-abstract-noun','*treuwithō',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'faith, loyalty, truth','Published Germanic abstract noun.'),
(754,125,5,5,'*treuwaz','treuwaz','firm-faithful-adjective','*treuwaz',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'firm, faithful, trustworthy','Shared adjective base.'),
(755,125,6,6,'*deru-','deru','firm-solid-wood-root','*deru- / *dreu-',NULL,'reconstructed','Proto-Indo-European horizon',-4500,-2500,'be firm, solid, steadfast; wood, tree','Deepest reviewed comparative horizon.'),
(756,125,7,7,'UNKNOWN','unknown','troth-deep-boundary',NULL,NULL,'boundary','before the reviewed *deru- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the firmness-and-wood root.','The rare modern word is not treated as a modern coinage.'),

(757,126,1,1,'betroth','betroth','marriage-pledge','betroth','/bɪˈtrɔːθ/','attested','14th century–today',1300,NULL,'promise in marriage','A prefixed formation on the historical truth or troth noun.'),
(758,126,2,2,'bitrouthen','bitrouthen','pledge-compound','bitrouthen',NULL,'attested','Middle English',1150,1500,'promise or pledge in marriage','American Heritage supplies bi-/be- plus trouth as the visible formation.'),
(759,126,2,3,'trouth','trouth','faith-loyalty-truth','trouth',NULL,'attested','Middle English',1150,1500,'truth, troth, pledged fidelity','Lexical member of the compound; be- follows a second graph branch.'),
(760,126,3,4,'trēowþ','treowth','faith-loyalty-truth','trēowþ',NULL,'attested','Old English',450,1150,'faith, loyalty, fidelity, truth','Shared historical noun.'),
(761,126,5,5,'*treuwithō','treuwitho','faith-loyalty-abstract-noun','*treuwithō',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'faith, loyalty, truth','Published Germanic abstract noun.'),
(762,126,5,6,'*treuwaz','treuwaz','firm-faithful-adjective','*treuwaz',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'firm, faithful, trustworthy','Shared adjective base.'),
(763,126,6,7,'*deru-','deru','firm-solid-wood-root','*deru- / *dreu-',NULL,'reconstructed','Proto-Indo-European horizon',-4500,-2500,'be firm, solid, steadfast; wood, tree','Deepest reviewed comparative horizon.'),
(764,126,7,8,'UNKNOWN','unknown','betroth-deep-boundary',NULL,NULL,'boundary','before the reviewed *deru- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the firmness-and-wood root.','The be- component reaches a separate boundary.'),

(765,127,1,1,'truce','truce','hostility-suspension','truce','/truːs/','attested','13th century–today',1200,NULL,'temporary suspension of hostilities by agreement','The singular modern form continues a Middle English plural.'),
(766,127,2,2,'trewes','trewes','agreements-plural','trewes',NULL,'attested','Middle English',1150,1500,'agreements, pledges','Merriam-Webster explicitly identifies this form as a plural.'),
(767,127,2,3,'trewe','trewe','agreement-pledge','trewe',NULL,'attested','Middle English',1150,1500,'agreement, treaty, pledge','The plural trewes is analyzed from this singular agreement noun.'),
(768,127,3,4,'trēow','treow','pledge-fidelity','trēow',NULL,'attested','Old English',450,1150,'pledge, fidelity','A sense-specific node distinct from Old English trēow “tree.”'),
(769,127,5,5,'*treuwō','treuwo','pledge-noun','*treuwō',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'pledge, fidelity','Published Germanic pledge noun.'),
(770,127,6,6,'*drew-o-','drew-o','firmness-suffixed-formation','*drew-o-',NULL,'reconstructed','Proto-Indo-European suffixed variant',-4500,-2500,'firm or steadfast formation; wood or pledge branch','A reconstructed suffixed variant, not an attested word.'),
(771,127,6,7,'*deru-','deru','firm-solid-wood-root','*deru- / *dreu-',NULL,'reconstructed','Proto-Indo-European horizon',-4500,-2500,'be firm, solid, steadfast; wood, tree','Deepest reviewed comparative horizon.'),
(772,127,7,8,'UNKNOWN','unknown','truce-deep-boundary',NULL,NULL,'boundary','before the reviewed *deru- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the firmness-and-wood root.','The ceasefire meaning does not justify a deeper military root.'),

(773,128,1,1,'tree','tree','woody-perennial','tree','/triː/','attested','before 12th century–today',1000,NULL,'perennial woody plant; branching structure','The genealogical-diagram sense is a later extension of the inherited plant word.'),
(774,128,2,2,'tree','tree','woody-perennial','tree',NULL,'attested','Middle English',1150,1500,'tree, wood','Merriam-Webster records a Middle English stage without a different supplied spelling.'),
(775,128,3,3,'trēow','treow','woody-perennial','trēow',NULL,'attested','Old English',450,1150,'tree, wood','Sense-specific node distinct from Old English trēow “pledge.”'),
(776,128,5,4,'*trewam','trewam','tree-wood-noun','*trewam',NULL,'reconstructed','Proto-Germanic horizon',-500,200,'tree, wood','Published Germanic tree noun.'),
(777,128,6,5,'*drew-o-','drew-o','firmness-suffixed-formation','*drew-o-',NULL,'reconstructed','Proto-Indo-European suffixed variant',-4500,-2500,'firm or steadfast formation; wood or pledge branch','Shared reconstructed formation with the pledge branch.'),
(778,128,6,6,'*deru-','deru','firm-solid-wood-root','*deru- / *dreu-',NULL,'reconstructed','Proto-Indo-European horizon',-4500,-2500,'be firm, solid, steadfast; wood, tree','Deepest reviewed comparative horizon.'),
(779,128,7,7,'UNKNOWN','unknown','tree-deep-boundary',NULL,NULL,'boundary','before the reviewed *deru- reconstruction',NULL,NULL,'No securely promoted ancestor is known beyond the firmness-and-wood root.','Tree and truth meet at this root; neither is made the other’s parent.');
--> statement-breakpoint

INSERT INTO `relations` (`id`,`entry_id`,`child_form_id`,`parent_form_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
(609,122,730,731,'continuation','Modern true continues Middle English trewe through regular English spelling and pronunciation history.','Faithful and steadfast remain live senses beside factual accuracy.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use before the twelfth century.','reviewed'),
(610,122,731,732,'continuation','Middle English trewe continues Old English trēowe.','Faithful, steadfast, and trustworthy remain central.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(611,122,732,733,'inheritance','Old English trēowe continues reconstructed Germanic *treuwaz.','The Germanic firmness adjective develops the faithful and trustworthy field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic form is reconstructed, not an attested donor token.','reviewed'),
(612,122,733,734,'inheritance','Germanic *treuwaz reflects the variant *dreu- grade of reconstructed *deru-.','Firm and steadfast motivate the faithful and trustworthy field without erasing later meanings.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; no single transmission event is claimed.','reviewed'),
(613,122,734,735,'knowledge_boundary','No older form is promoted beyond the reviewed *deru- firmness-and-wood root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(614,123,736,737,'continuation','Modern truth continues Middle English trewthe through English spelling and sound history.','Fidelity and constancy coexist historically with sincerity and factual correspondence.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use before the twelfth century.','reviewed'),
(615,123,737,738,'continuation','Middle English trewthe continues Old English trēowþ.','Loyalty, faith, and truth remain joined in the historical noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(616,123,738,739,'inheritance','Old English trēowþ continues reconstructed Germanic *treuwithō through inherited West Germanic development.','The abstract noun denotes faith, loyalty, and truth.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic form is reconstructed.','reviewed'),
(617,123,739,740,'derivation','Germanic *treuwithō is an abstract noun formation on *treuwaz.','Being firm or faithful becomes the quality of faith, loyalty, or truth.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both Germanic forms are reconstructed.','reviewed'),
(618,123,740,741,'inheritance','Germanic *treuwaz reflects the variant *dreu- grade of reconstructed *deru-.','Firm and steadfast motivate the faithful and trustworthy field without erasing later meanings.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; no single transmission event is claimed.','reviewed'),
(619,123,741,742,'knowledge_boundary','No older form is promoted beyond the reviewed *deru- firmness-and-wood root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(620,124,743,744,'continuation','Modern trust continues Middle English truste through regular English form history.','Confidence and assured reliance remain central while legal and institutional senses develop alongside them.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports noun use in the twelfth century.','reviewed'),
(621,124,744,745,'borrowing','Middle English truste is probably borrowed from Scandinavian, perhaps specifically Old Norse traust.','Confidence and firmness enter the English trust noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','probable','The sources independently use cautious probably or perhaps language rather than claiming a certain donor token.',NULL,'reviewed'),
(622,124,745,746,'inheritance','Old Norse traust continues reconstructed Germanic *traustam.','Confidence and firmness remain the core semantic field.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic noun is reconstructed.','reviewed'),
(623,124,746,747,'derivation','Germanic *traustam is an abstract noun formation related to *treuwaz.','Firm or faithful becomes confidence, reliance, or firmness.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both Germanic forms are reconstructed.','reviewed'),
(624,124,747,748,'inheritance','Germanic *treuwaz reflects the variant *dreu- grade of reconstructed *deru-.','Firm and steadfast motivate the faithful and trustworthy field without erasing later meanings.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; no single transmission event is claimed.','reviewed'),
(625,124,748,749,'knowledge_boundary','No older form is promoted beyond the reviewed *deru- firmness-and-wood root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(626,125,750,751,'continuation','Modern troth continues Middle English trouth with regular English spelling and sound development.','Pledged fidelity narrows a historical noun that also covered truth and loyalty.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports noun use in the twelfth century.','reviewed'),
(627,125,751,752,'inheritance','Middle English trouth continues Old English trēowþ.','Truth, faith, and pledged fidelity remain joined before later lexical specialization.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(628,125,752,753,'inheritance','Old English trēowþ continues reconstructed Germanic *treuwithō through inherited West Germanic development.','The abstract noun denotes faith, loyalty, and truth.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic form is reconstructed.','reviewed'),
(629,125,753,754,'derivation','Germanic *treuwithō is an abstract noun formation on *treuwaz.','Being firm or faithful becomes the quality of faith, loyalty, or truth.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both Germanic forms are reconstructed.','reviewed'),
(630,125,754,755,'inheritance','Germanic *treuwaz reflects the variant *dreu- grade of reconstructed *deru-.','Firm and steadfast motivate the faithful and trustworthy field without erasing later meanings.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; no single transmission event is claimed.','reviewed'),
(631,125,755,756,'knowledge_boundary','No older form is promoted beyond the reviewed *deru- firmness-and-wood root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(632,126,757,758,'continuation','Modern betroth continues Middle English bitrouthen with regular English spelling and sound development.','The marriage promise remains the specialized sense.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use in the fourteenth century.','reviewed'),
(633,126,758,759,'compound_member','Middle English bitrouthen contains trouth as its lexical member; bi- or be- follows a second canonical parent.','A pledge of truth or troth specializes as a promise in marriage.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'The prefix branch is separately modeled and cited.','reviewed'),
(634,126,759,760,'inheritance','Middle English trouth continues Old English trēowþ.','Truth, faith, and pledged fidelity remain joined before later lexical specialization.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(635,126,760,761,'inheritance','Old English trēowþ continues reconstructed Germanic *treuwithō through inherited West Germanic development.','The abstract noun denotes faith, loyalty, and truth.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic form is reconstructed.','reviewed'),
(636,126,761,762,'derivation','Germanic *treuwithō is an abstract noun formation on *treuwaz.','Being firm or faithful becomes the quality of faith, loyalty, or truth.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both Germanic forms are reconstructed.','reviewed'),
(637,126,762,763,'inheritance','Germanic *treuwaz reflects the variant *dreu- grade of reconstructed *deru-.','Firm and steadfast motivate the faithful and trustworthy field without erasing later meanings.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative reconstruction; no single transmission event is claimed.','reviewed'),
(638,126,763,764,'knowledge_boundary','No older form is promoted beyond the reviewed *deru- firmness-and-wood root.','The lexical trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word; the prefix branch ends separately.',NULL,'reviewed'),

(639,127,765,766,'continuation','Modern singular truce continues Middle English trewes after the inherited plural was reanalyzed as a singular form.','Agreements or pledges specialize as a temporary suspension of hostilities.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports noun use in the thirteenth century.','reviewed'),
(640,127,766,767,'inflectional_reanalysis','Middle English plural trewes is formed on singular trewe and later supplies the English singular truce.','Multiple agreements or pledges furnish the form reanalyzed for one suspension of hostilities.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'The cited dictionary explicitly marks trewes as plural.','reviewed'),
(641,127,767,768,'inheritance','Middle English trewe continues Old English trēow in the pledge and fidelity sense.','A pledge or agreement continues the older fidelity noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(642,127,768,769,'inheritance','Old English trēow continues reconstructed Germanic *treuwō in the pledge branch.','Pledge and fidelity remain the semantic center.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic noun is reconstructed.','reviewed'),
(643,127,769,770,'inheritance','Germanic *treuwō continues the reconstructed suffixed formation *drew-o-.','A firmness formation develops the pledge and fidelity noun.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both forms are reconstructed.','reviewed'),
(644,127,770,771,'derivation','Reconstructed *drew-o- is a suffixed formation under *deru-.','Firmness supports both wood and pledge branches without making one descendant the parent of the other.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative morphology; no single date or token is claimed.','reviewed'),
(645,127,771,772,'knowledge_boundary','No older form is promoted beyond the reviewed *deru- firmness-and-wood root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed'),

(646,128,773,774,'continuation','Modern tree continues the Middle English plant noun through regular English spelling and sound history.','The woody plant remains central while branching diagrams and structures develop as extensions.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Merriam-Webster reports use before the twelfth century.','reviewed'),
(647,128,774,775,'inheritance','Middle English tree continues Old English trēow in the wood and plant sense.','Tree and wood remain the semantic center.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,NULL,'reviewed'),
(648,128,775,776,'inheritance','Old English trēow continues reconstructed Germanic *trewam in the tree branch.','The inherited noun denotes tree or wood.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'The Germanic noun is reconstructed.','reviewed'),
(649,128,776,777,'inheritance','Germanic *trewam continues the reconstructed suffixed formation *drew-o-.','A firmness formation develops the wood and tree noun.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Both forms are reconstructed.','reviewed'),
(650,128,777,778,'derivation','Reconstructed *drew-o- is a suffixed formation under *deru-.','Firmness supports both wood and pledge branches without making one descendant the parent of the other.','Calvert Watkins and American Heritage Dictionary Editors','established',NULL,'Comparative morphology; no single date or token is claimed.','reviewed'),
(651,128,778,779,'knowledge_boundary','No older form is promoted beyond the reviewed *deru- firmness-and-wood root.','The trail ends where the published comparative analysis ends.','SET-U editorial boundary','boundary','The reconstructed root is not an attested first word.',NULL,'reviewed');
--> statement-breakpoint

INSERT INTO `relation_sources` (`relation_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(609,284,'Word History and First Known Use','supports','Supplies Middle English trewe, the Old English ancestry, current meanings, and the pre-twelfth-century horizon.'),
(609,285,'Headword etymology and Word History','context','Independently preserves steadfast and loyal in the history of true.'),
(610,284,'Etymology: Middle English trewe from Old English trēowe','supports','Explicitly supplies the English continuity.'),
(611,285,'Etymology: Old English trēowe from Germanic *treuwaz','supports','Publishes the reconstructed Germanic adjective.'),
(612,298,'deru-, variant dreu-, Germanic *treuwaz section','supports','Places the Germanic adjective under the firmness-and-wood root.'),
(612,285,'Word History: true and tree joined at the root','context','Explains the shared root without making tree an ancestor of true.'),
(613,298,'deru- entry endpoint','supports','Defines the deepest reviewed source horizon.'),
(614,286,'Word History, definitions, and First Known Use','supports','Supplies Middle English trewthe, current senses, and the early fidelity horizon.'),
(614,287,'Headword etymology','context','Independently supplies the loyalty history.'),
(615,286,'Etymology: Middle English trewthe from Old English trēowth','supports','Explicitly supplies the English continuity.'),
(616,298,'deru-, Germanic abstract *treuwithō to Old English trēowth','supports','Publishes the abstract noun and Old English reflex.'),
(617,298,'deru-, *treuwithō under Germanic *treuwaz','supports','Publishes the abstract formation under the adjective.'),
(618,298,'deru-, variant dreu-, Germanic *treuwaz section','supports','Places the Germanic adjective under the firmness-and-wood root.'),
(619,298,'deru- entry endpoint','supports','Defines the deepest reviewed source horizon.'),
(620,288,'Definitions, Word History, and First Known Use','supports','Supplies Middle English truste, the broad semantic range, and twelfth-century noun horizon.'),
(620,289,'Headword etymology','context','Independently documents the Middle English noun.'),
(621,288,'Etymology: probably of Scandinavian origin; akin to Old Norse traust','supports','Supports a probable Scandinavian route without overstating the exact donor.'),
(621,289,'Etymology: perhaps from Old Norse traust','context','Independently uses cautious donor language.'),
(622,298,'deru-, Germanic *traustam and Old Norse traust','supports','Publishes the Germanic noun and Old Norse reflex.'),
(623,298,'deru-, *traustam under Germanic *treuwaz','supports','Publishes the abstract noun relationship.'),
(624,298,'deru-, variant dreu-, Germanic *treuwaz section','supports','Places the Germanic adjective under the firmness-and-wood root.'),
(625,298,'deru- entry endpoint','supports','Defines the deepest reviewed source horizon.'),
(626,290,'Definitions, Word History, and First Known Use','supports','Supplies Middle English trouth, the fidelity senses, and twelfth-century noun horizon.'),
(626,291,'Headword etymology','context','Independently identifies the historical truth variant.'),
(627,291,'Etymology: Middle English trouth from Old English trēowth','supports','Explicitly supplies the English continuity.'),
(628,298,'deru-, Germanic abstract *treuwithō to Old English trēowth','supports','Publishes the abstract noun and Old English reflex.'),
(629,298,'deru-, *treuwithō under Germanic *treuwaz','supports','Publishes the abstract formation under the adjective.'),
(630,298,'deru-, variant dreu-, Germanic *treuwaz section','supports','Places the Germanic adjective under the firmness-and-wood root.'),
(631,298,'deru- entry endpoint','supports','Defines the deepest reviewed source horizon.'),
(632,292,'Word History and First Known Use','supports','Supplies the Middle English formation and fourteenth-century horizon.'),
(632,293,'Headword etymology','context','Independently supplies Middle English bitrouthen.'),
(633,293,'Etymology: bi- or be- plus trouth','supports','Explicitly identifies both components of the Middle English verb.'),
(633,292,'Etymology: be- plus trouthe, truth or troth','context','Independently identifies the prefixed formation.'),
(634,293,'trouth from Old English trēowth','supports','Supplies the inherited lexical member.'),
(635,298,'deru-, Germanic abstract *treuwithō to Old English trēowth','supports','Publishes the abstract noun and Old English reflex.'),
(636,298,'deru-, *treuwithō under Germanic *treuwaz','supports','Publishes the abstract formation under the adjective.'),
(637,298,'deru-, variant dreu-, Germanic *treuwaz section','supports','Places the Germanic adjective under the firmness-and-wood root.'),
(638,298,'deru- entry endpoint','supports','Defines the deepest reviewed lexical horizon.'),
(639,294,'Word History and First Known Use','supports','Supplies Middle English plural trewes and the thirteenth-century noun horizon.'),
(639,295,'Headword etymology','context','Independently documents the plural-to-singular route.'),
(640,294,'Etymology: Middle English trewes, plural of trewe','supports','Explicitly analyzes the inherited plural.'),
(641,294,'Etymology: trewe from Old English trēow, fidelity','supports','Supplies the pledge branch.'),
(642,298,'deru-, Germanic *treuwō to Old English trēow, pledge','supports','Publishes the Germanic pledge noun and Old English reflex.'),
(643,298,'deru-, suffixed *drew-o- to Germanic *treuwō','supports','Publishes the reconstructed formation behind the pledge branch.'),
(644,298,'deru-, suffixed form *drew-o-','supports','Analyzes the suffixed formation under the firmness-and-wood root.'),
(645,298,'deru- entry endpoint','supports','Defines the deepest reviewed source horizon.'),
(646,296,'Definitions, Word History, and First Known Use','supports','Supplies the English history, plant meanings, and pre-twelfth-century horizon.'),
(646,297,'Headword etymology','context','Independently supplies the inherited tree noun.'),
(647,296,'Etymology: Middle English from Old English trēow','supports','Explicitly supplies the English continuity.'),
(648,298,'deru-, Germanic *trewam to Old English trēow, tree','supports','Publishes the Germanic tree noun and Old English reflex.'),
(649,298,'deru-, suffixed *drew-o- to Germanic *trewam','supports','Publishes the reconstructed formation behind the tree branch.'),
(650,298,'deru-, suffixed form *drew-o-','supports','Analyzes the suffixed formation under the firmness-and-wood root.'),
(651,298,'deru- entry endpoint','supports','Defines the deepest reviewed source horizon.');
--> statement-breakpoint

INSERT INTO `attestations` (`id`,`form_id`,`source_id`,`date_label`,`year`,`witness`,`locator`,`excerpt`,`confidence`,`witness_type`,`repository`,`shelfmark`,`facsimile_url`,`directly_inspected`,`editorial_note`) VALUES
(157,730,284,'before 12th century',NULL,'Merriam-Webster first-known-use report for true','First Known Use, adjective',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported earliest written record located by current scholarship; no underlying Old English object was directly inspected.'),
(158,736,286,'before 12th century',NULL,'Merriam-Webster first-known-use report for truth','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported earliest written record located by current scholarship; no underlying Old English object was directly inspected.'),
(159,743,288,'12th century',NULL,'Merriam-Webster first-known-use report for trust','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying twelfth-century object was directly inspected.'),
(160,750,290,'12th century',NULL,'Merriam-Webster first-known-use report for troth','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying twelfth-century object was directly inspected.'),
(161,757,292,'14th century',NULL,'Merriam-Webster first-known-use report for betroth','First Known Use, verb',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying fourteenth-century object was directly inspected.'),
(162,765,294,'13th century',NULL,'Merriam-Webster first-known-use report for truce','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Century-level source report; no underlying thirteenth-century object was directly inspected.'),
(163,773,296,'before 12th century',NULL,'Merriam-Webster first-known-use report for tree','First Known Use, noun',NULL,'established','lexicographic_first_use','Merriam-Webster',NULL,NULL,0,'Source-reported earliest written record located by current scholarship; no underlying Old English object was directly inspected.');
--> statement-breakpoint

INSERT INTO `relatives` (`id`,`entry_id`,`form`,`language`,`relation`,`source_id`) VALUES
(385,122,'truth','English','abstract-noun descendant in the same firmness family',285),
(386,122,'tree','English','parallel wood branch under *deru-, not an ancestor',285),
(387,122,'trust','English / Norse route','deep Germanic cousin in the firmness family',298),
(388,122,'gitriuwi','Old High German','Germanic faithful cognate',284),
(389,123,'true','English','adjective base in the same historical family',287),
(390,123,'troth','English','historical lexical specialization of the shared fidelity noun',291),
(391,123,'betroth','English','prefixed descendant through historical trouth',293),
(392,123,'truce','English','parallel pledge branch under *deru-',298),
(393,124,'true','English','deep Germanic cousin under *treuwaz',298),
(394,124,'truth','English','parallel abstract-noun branch under *treuwaz',298),
(395,124,'troth','English','parallel fidelity branch under *treuwaz',298),
(396,124,'betroth','English','parallel pledge descendant under *treuwaz',298),
(397,125,'truth','English','historical counterpart from the shared Old English noun',291),
(398,125,'betroth','English','prefixed descendant through historical trouth',293),
(399,125,'true','English','adjective relative in the shared firmness family',298),
(400,125,'truce','English','parallel pledge branch under *deru-',298),
(401,126,'troth','English','modern lexical relative preserving pledged fidelity',293),
(402,126,'truth','English','historical trouth relative in the compound analysis',292),
(403,126,'true','English','deep adjective relative under *treuwaz',298),
(404,126,'truce','English','parallel pledge branch under *deru-',298),
(405,127,'truth','English','parallel fidelity abstract under *deru-',298),
(406,127,'true','English','parallel adjective branch under *deru-',298),
(407,127,'tree','English','parallel wood branch through *drew-o-',298),
(408,127,'troth','English','parallel pledge-and-fidelity specialization',298),
(409,128,'true','English','parallel adjective branch under *deru-',285),
(410,128,'truth','English','parallel abstract branch under *deru-',298),
(411,128,'truce','English','parallel pledge branch through *drew-o-',298),
(412,128,'druid','English / Celtic lineage','separately published derivative under the wood-and-firmness root',298);
--> statement-breakpoint

INSERT INTO `places` (`id`,`entry_id`,`step_order`,`place`,`date_label`,`note`,`latitude_e6`,`longitude_e6`,`geographic_confidence`,`date_start`,`date_end`,`temporal_precision`,`temporal_note`) VALUES
(448,122,1,'Indo-European linguistic horizon','reconstructed *deru- or *dreu-','The firmness-and-wood root is a comparative reconstruction, not an archaeological map point.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The reviewed source supplies a root and descendants, not one date or homeland coordinate.'),
(449,122,2,'Germanic linguistic horizon','reconstructed *treuwaz','The firmness adjective develops in the Germanic branch.',NULL,NULL,'broad',NULL,NULL,'unresolved','No dated token or single map point is asserted for the reconstruction.'),
(450,122,3,'England','Old English trēowe to Middle English trewe','The inherited adjective carries faithful and steadfast senses through recorded English.',52200000,-1500000,'regional',NULL,NULL,'unresolved','The ancestry is established more securely than one first transmission event.'),
(451,122,4,'Global English','before 12th century–today','True retains faithful senses beside factual, accurate, and conforming senses.',NULL,NULL,'global',NULL,1099,'before','The upper bound encodes before the twelfth century and does not claim a coinage year.'),

(452,123,1,'Indo-European linguistic horizon','reconstructed *deru- or *dreu-','The firmness-and-wood root is reconstructed from comparative evidence.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No unique place or dated event is supplied by the root entry.'),
(453,123,2,'Germanic linguistic horizon','*treuwaz to abstract *treuwithō','The adjective family produces an abstract noun of faith, loyalty, and truth.',NULL,NULL,'broad',NULL,NULL,'unresolved','Both stages are reconstructed and remain undated here.'),
(454,123,3,'England','Old English trēowþ to Middle English trewthe','The recorded noun joins loyalty, fidelity, and truth before later semantic specialization.',52200000,-1500000,'regional',NULL,NULL,'unresolved','The form history is established more securely than one first token.'),
(455,123,4,'Global English','before 12th century–today','Fidelity and constancy are historically early while factual correspondence becomes central in modern use.',NULL,NULL,'global',NULL,1099,'before','The source reports use before the twelfth century, not an exact year.'),

(456,124,1,'Indo-European linguistic horizon','reconstructed *deru- or *dreu-','The deep firmness root is reconstructed rather than geographically observed.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No unique place or dated event is supplied.'),
(457,124,2,'Germanic linguistic horizon','*treuwaz to abstract *traustam','A Germanic firmness-and-confidence noun develops under the shared adjective family.',NULL,NULL,'broad',NULL,NULL,'unresolved','The comparative forms are not assigned a first year.'),
(458,124,3,'Scandinavian linguistic horizon','Old Norse traust or a related Scandinavian source','The probable donor area is Scandinavian, while the exact Old Norse donor remains cautiously phrased.',62000000,15000000,'broad',NULL,NULL,'unresolved','Merriam-Webster says probably Scandinavian; American Heritage says perhaps Old Norse.'),
(459,124,4,'England','Middle English truste','The confidence noun enters Middle English through the probable Scandinavian route.',52200000,-1500000,'regional',NULL,NULL,'unresolved','No single borrowing event is invented.'),
(460,124,5,'Global English','12th century–today','Trust expands from confidence and reliance into care, obligation, institutions, and legal arrangements.',NULL,NULL,'global',1100,1199,'century','The interval preserves the source-reported century and does not claim an exact first year.'),

(461,125,1,'Indo-European linguistic horizon','reconstructed *deru- or *dreu-','The deep root joins firmness, fidelity, and wood branches without collapsing them.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparative horizon is not mapped to one point.'),
(462,125,2,'Germanic linguistic horizon','*treuwaz to *treuwithō','A fidelity abstract develops within Germanic.',NULL,NULL,'broad',NULL,NULL,'unresolved','Both forms are reconstructed.'),
(463,125,3,'England','Old English trēowþ to Middle English trouth','The shared truth-and-fidelity noun develops toward pledged troth.',52200000,-1500000,'regional',NULL,NULL,'unresolved','No exact specialization date is asserted.'),
(464,125,4,'Global English','12th century–today','Troth survives as a marked word for pledged fidelity and betrothal.',NULL,NULL,'global',1100,1199,'century','The interval preserves the source-reported century.'),

(465,126,1,'Indo-European linguistic horizon','reconstructed *deru- or *dreu-','The lexical member ultimately reaches the firmness-and-wood root.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The prefix and lexical branch did not yet form one prehistoric word.'),
(466,126,2,'Germanic linguistic horizon','*treuwaz to *treuwithō','The fidelity noun develops within Germanic before its English compound use.',NULL,NULL,'broad',NULL,NULL,'unresolved','The stages are reconstructed.'),
(467,126,3,'England','Middle English bi-/be- plus trouth','Middle English combines the prefix and fidelity noun in a marriage-promise verb.',52200000,-1500000,'regional',NULL,NULL,'unresolved','The formation is established more securely than one coinage event.'),
(468,126,4,'Global English','14th century–today','Betroth remains a formal verb for promising in marriage.',NULL,NULL,'global',1300,1399,'century','The interval preserves the source-reported century.'),

(469,127,1,'Indo-European linguistic horizon','reconstructed *deru- and *drew-o-','The firmness root and suffixed formation support a pledge branch.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','The comparative forms are not unique spoken tokens.'),
(470,127,2,'Germanic linguistic horizon','reconstructed *treuwō','A pledge or fidelity noun develops in Germanic.',NULL,NULL,'broad',NULL,NULL,'unresolved','The stage is reconstructed and undated here.'),
(471,127,3,'England','Old English trēow to Middle English plural trewes','A pledge noun becomes a plural agreement form later reanalyzed as singular truce.',52200000,-1500000,'regional',NULL,NULL,'unresolved','The morphology is established; one reanalysis date is not invented.'),
(472,127,4,'Global English','13th century–today','Truce specializes as a temporary suspension of hostilities by agreement.',NULL,NULL,'global',1200,1299,'century','The interval preserves the source-reported century.'),

(473,128,1,'Indo-European linguistic horizon','reconstructed *deru- and *drew-o-','The firmness-and-wood root and its suffixed formation are comparative reconstructions.',NULL,NULL,'uncertain',NULL,NULL,'unresolved','No unique homeland or first token is asserted.'),
(474,128,2,'Germanic linguistic horizon','reconstructed *trewam','The wood and tree noun develops in Germanic.',NULL,NULL,'broad',NULL,NULL,'unresolved','The stage is reconstructed and undated here.'),
(475,128,3,'England','Old English trēow to Middle English tree','The inherited plant noun continues through recorded English.',52200000,-1500000,'regional',NULL,NULL,'unresolved','The ancestry is established more securely than one first event.'),
(476,128,4,'Global English','before 12th century–today','The plant noun later supplies branching-diagram and structural extensions.',NULL,NULL,'global',NULL,1099,'before','The upper bound encodes before the twelfth century and does not claim a coinage year.');
--> statement-breakpoint

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(448,298,'deru- heading and variant dreu-','supports','Publishes the reconstructed root without a unique map point.'),
(449,298,'deru-, Germanic *treuwaz section','supports','Supplies the Germanic stage.'),
(450,284,'Etymology: Middle English from Old English','supports','Supplies the inherited English route.'),
(451,284,'Definitions and First Known Use','supports','Supplies the semantic range and temporal horizon.'),
(452,298,'deru- heading','supports','Publishes the root without a unique place or date.'),
(453,298,'*treuwaz and *treuwithō section','supports','Supplies the Germanic formation.'),
(454,286,'Etymology: Middle English trewthe from Old English trēowth','supports','Supplies the English route.'),
(455,286,'Definitions and First Known Use','supports','Supplies the fidelity horizon and modern semantic range.'),
(456,298,'deru- heading','supports','Publishes the root without a unique place or date.'),
(457,298,'*treuwaz and *traustam section','supports','Supplies the Germanic formation.'),
(458,288,'Probably Scandinavian; akin to Old Norse traust','supports','Supports the broad donor area with explicit uncertainty.'),
(458,289,'Perhaps Old Norse traust','context','Supports the possible specific donor.'),
(459,288,'Etymology: Middle English, probably Scandinavian','supports','Supplies the entry into English.'),
(460,288,'Definitions and First Known Use','supports','Supplies the semantic range and century horizon.'),
(461,298,'deru- heading','supports','Publishes the deep comparative horizon.'),
(462,298,'*treuwaz and *treuwithō section','supports','Supplies the Germanic formation.'),
(463,291,'Etymology: Middle English trouth from Old English trēowth','supports','Supplies the English route.'),
(464,290,'Definitions and First Known Use','supports','Supplies the modern marked senses and century horizon.'),
(465,298,'deru- heading','supports','Supplies the lexical branch horizon.'),
(466,298,'*treuwaz and *treuwithō section','supports','Supplies the Germanic formation.'),
(467,293,'Etymology: bi-/be- plus trouth','supports','Supplies the Middle English compound.'),
(468,292,'Definition and First Known Use','supports','Supplies the modern sense and century horizon.'),
(469,298,'deru-, suffixed *drew-o- section','supports','Supplies the comparative pledge branch.'),
(470,298,'Germanic *treuwō section','supports','Supplies the Germanic pledge noun.'),
(471,294,'Etymology: Middle English trewes, plural of trewe, from Old English trēow','supports','Supplies the inherited plural route.'),
(472,294,'Definition and First Known Use','supports','Supplies the current sense and century horizon.'),
(473,298,'deru-, suffixed *drew-o- section','supports','Supplies the comparative wood branch.'),
(474,298,'Germanic *trewam section','supports','Supplies the Germanic tree noun.'),
(475,296,'Etymology: Middle English from Old English trēow','supports','Supplies the inherited English route.'),
(476,296,'Definitions and First Known Use','supports','Supplies current extensions and the temporal horizon.');
--> statement-breakpoint

INSERT INTO `disputes` (`id`,`entry_id`,`title`,`position`,`confidence`,`source_summary`,`status`,`resolution_note`) VALUES
(226,122,'Did true originally mean only factually correct?','No. The reviewed English history foregrounds faithful, steadfast, loyal, and trustworthy senses before and beside modern factual accuracy.','established','Merriam-Webster gives Old English trēowe “faithful,” and American Heritage explicitly traces the loyalty field.','resolved','The dossier retains semantic plurality instead of declaring the current factual sense false.'),
(227,122,'Does true descend from tree?','No. True and tree are parallel descendants in different branches that meet at reconstructed *deru-; the modern tree noun is not a parent of true.','established','American Heritage explicitly says the words are joined at the root and publishes separate Germanic formations.','resolved','The canonical graph shares only the deep root and draws no tree-to-true ancestry edge.'),
(228,123,'Was truth first only correspondence with fact?','No. Merriam-Webster reports the earliest located English use under fidelity or constancy, while modern truth also covers factual correspondence.','established','The dictionary separately identifies the archaic early sense and present definitions.','resolved','The semantic record treats fidelity as history without using etymology to erase the current meaning.'),
(229,123,'Is *deru- a written ancestral word?','No. The asterisk marks a reconstructed comparative form rather than an attested token.','established','American Heritage publishes *deru-, *treuwaz, and *treuwithō as reconstructed forms.','resolved','The trail ends at a boundary after the starred root.'),
(230,124,'Was the exact donor of trust Old Norse traust?','Probably Scandinavian, perhaps Old Norse traust, but the reviewed authorities do not present the precise donor as certain.','probable','Merriam-Webster says probably Scandinavian; American Heritage says perhaps Old Norse.','open',NULL),
(231,124,'Did trust begin as a legal property arrangement?','No. The historical noun centers on confidence and reliance; legal trust is one later semantic institution within the word’s wider range.','established','Both dictionaries place confidence and reliance in the inherited semantic core.','resolved','The dossier does not mistake one prominent modern legal sense for the donor meaning.'),
(232,125,'Is troth a poetic modern invention?','No. Troth continues a Middle English and Old English fidelity noun and is reported in English from the twelfth century.','established','Merriam-Webster and American Heritage both publish the inherited history.','resolved','The rare modern register does not make the word historically recent.'),
(233,125,'Has troth always meant only a marriage promise?','No. Its reported meanings include fidelity, loyalty, good faith, pledged word, and betrothal.','established','The reviewed definitions and etymology retain the broader truth-and-fidelity field.','resolved','The marriage sense is modeled as one specialization rather than the whole ancestry.'),
(234,126,'Is betroth built on truth or troth?','The historical base is Middle English trouth or trouthe, where the modern truth and troth spellings were not yet cleanly separated; mapping it to only one modern headword overstates the evidence.','probable','Merriam-Webster glosses the base as truth or troth; American Heritage gives trouth and routes it through troth.','open',NULL),
(235,126,'Is the be- in betroth the verb be?','No. It is the historical prefix bi- or be-, related to Old English bi- or be- and bī “by, near,” not the copular verb.','established','The betroth entries identify a prefix, and Merriam-Webster separately publishes the prefix history.','resolved','A second graph branch exposes the prefix and prevents a false copular-be analysis.'),
(236,127,'Was truce borrowed from French?','No. The reviewed history continues Middle English trewes from Old English trēow “fidelity” inside an inherited Germanic pledge branch.','established','Merriam-Webster and American Heritage publish the English and Germanic route.','resolved','No French donor edge is drawn.'),
(237,127,'Was truce historically singular all the way back?','No. Modern singular truce continues Middle English trewes, explicitly analyzed as a plural of trewe “agreement.”','established','Both reviewed dictionaries identify the plural form.','resolved','The graph records inflectional reanalysis instead of silently skipping from trewe to truce.'),
(238,128,'Is tree the literal ancestor of true?','No. Tree and true share the reconstructed *deru- family but travel through different Germanic formations and different senses.','established','American Heritage’s word history and root appendix publish the parallel branches.','resolved','The graph joins them at *deru- only.'),
(239,128,'Did *deru- mean only tree or wood?','No. The published reconstructed semantic range begins with being firm, solid, or steadfast and extends to wood and tree.','established','The American Heritage root heading explicitly supplies both semantic fields.','resolved','The dossier preserves a semantic range rather than inventing one “literal true meaning.”');
--> statement-breakpoint

INSERT INTO `dispute_sources` (`dispute_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(226,284,'Etymology: Old English trēowe, faithful; definitions','supports','Directly places faithful in the ancestry and documents current factual senses.'),
(226,285,'Word History: steadfast, loyal, trustworthy','context','Independently expands the historical fidelity field.'),
(227,285,'Word History: true and tree joined at the root','supports','States the root relationship without a direct tree-to-true route.'),
(227,298,'Separate *treuwaz and *trewam formations under deru-','supports','Publishes parallel adjective and tree branches.'),
(228,286,'First Known Use: fidelity or constancy sense; definitions','supports','Directly separates the early reported horizon from the present factual senses.'),
(228,287,'Etymology: loyalty from Old English trēowth','context','Independently anchors the fidelity history.'),
(229,298,'deru-, *treuwaz, and *treuwithō entries','supports','Publishes the starred comparative forms.'),
(229,271,'Dictionary-etymology methodology for reconstructed forms','context','Supports the evidence-status distinction.'),
(230,288,'Probably of Scandinavian origin; akin to Old Norse traust','supports','Establishes the broad donor family and explicit uncertainty.'),
(230,289,'Perhaps from Old Norse traust','supports','Establishes the possible specific donor without certainty.'),
(231,288,'Definitions and Etymology','supports','Places confidence and assured reliance before the legal arrangements.'),
(231,289,'Headword definitions','context','Independently documents the confidence core.'),
(232,290,'Etymology and First Known Use: 12th century','supports','Publishes the inherited route and early horizon.'),
(232,291,'Etymology: variant of Middle English treuthe from Old English trēowth','context','Independently shows the word is inherited.'),
(233,290,'Definitions 1–3','supports','Documents fidelity, pledged word, and betrothal.'),
(233,291,'Definitions and etymology','context','Preserves the truth-and-loyalty field.'),
(234,292,'Etymology: be- plus trouthe, truth or troth','supports','Explicitly gives both modern glosses for the historical base.'),
(234,293,'Etymology: bi-/be- plus trouth; see troth','supports','Uses the unsplit historical form and a troth cross-reference.'),
(235,293,'Etymology: bi- or be- plus trouth','supports','Identifies a prefix rather than the verb be.'),
(235,299,'Etymology of be- from Old English bi-/be- and bī','supports','Publishes the historical prefix lineage.'),
(236,294,'Etymology: Middle English from Old English trēow','supports','Supplies the inherited English route.'),
(236,295,'Headword etymology','context','Independently supplies the same route.'),
(237,294,'Etymology: trewes, plural of trewe','supports','Explicitly marks the Middle English plural.'),
(237,295,'Etymology: Middle English trewes, pl. of trewe','context','Independently supports the reanalysis.'),
(238,297,'Etymology: Old English trēow in the tree branch','supports','Supplies the tree ancestry.'),
(238,285,'Word History: true and tree joined at the root','supports','States the deep relationship without direct descent.'),
(239,298,'deru- heading: be firm, solid, steadfast; hence wood, tree','supports','Directly publishes the full reconstructed semantic range.'),
(239,296,'Etymology and akin forms','context','Documents the inherited wood noun without reducing the root to that noun alone.');
--> statement-breakpoint

UPDATE `leaderboard_entries` SET `rank`=`rank`+1000;
--> statement-breakpoint

INSERT INTO `leaderboard_entries` (`id`,`entry_id`,`rank`,`word`,`claim`,`reveal`,`evidence_grade`,`myth_gap_score`,`editorial_note`) VALUES
(122,122,2033,'true','True was steadfast before it was merely factual.','Old English trēowe meant faithful; its Germanic *treuwaz branch reaches reconstructed *deru- “firm, solid, steadfast; wood, tree.” Factual accuracy is real, but not the whole history.','A',100,'The claim preserves historical and current senses without treating etymology as a superior definition.'),
(123,123,2034,'truth','Truth’s oldest reported English horizon is fidelity.','Merriam-Webster reports the earliest located use under fidelity or constancy. The noun descends through the same firmness family as true, trust, troth, truce, and tree.','A',100,'The first-use statement remains a lexicographic horizon, not a guaranteed coinage date.'),
(124,124,2035,'trust','Trust is confidence made firm.','The likely Scandinavian noun belongs to a Germanic family of firmness and faith. Its exact Old Norse donor remains probable rather than certain.','A',99,'The contrarian reveal keeps the uncertainty on the borrowing edge.'),
(125,125,2036,'troth','Truth and troth were once one word family in plain sight.','Middle English trouth and Old English trēowþ covered truth, faith, loyalty, and pledged fidelity before the modern words specialized.','A',99,'The reveal does not claim the present words are interchangeable.'),
(126,126,2037,'betroth','To betroth is to bind by one’s truth or troth.','Middle English bitrouthen visibly combines bi-/be- with trouth, the historical fidelity noun before modern truth and troth were cleanly separated.','A',100,'Both the lexical member and prefix have separately cited graph branches.'),
(127,127,2038,'truce','A truce was grammatically plural.','Modern singular truce continues Middle English trewes, the plural of an agreement noun from Old English trēow “fidelity.” A ceasefire is historically a set of pledged terms.','A',100,'The plural-to-singular reanalysis and fidelity route are directly published.'),
(128,128,2039,'tree','Tree and truth meet at firmness, not fantasy.','Tree follows the wood branch through Germanic *trewam; truth follows the fidelity branch through *treuwaz and *treuwithō. They meet at *deru- “firm, solid, steadfast; wood, tree.”','A',100,'The graph explicitly rejects direct descent in either direction.');
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
(122,285,'Word History and etymology','supports','Connects steadfast true with tree only at the root.'),
(122,298,'deru-, Germanic *treuwaz section','supports','Publishes the firmness root and adjective branch.'),
(123,286,'First Known Use, fidelity or constancy sense','supports','Supplies the early lexicographic horizon.'),
(123,298,'deru-, *treuwithō and related Germanic branches','context','Publishes the wider family.'),
(124,288,'Probably Scandinavian; akin to Old Norse traust','supports','Supplies the donor family and uncertainty.'),
(124,298,'deru-, *traustam under *treuwaz','supports','Publishes the firmness-and-confidence formation.'),
(125,291,'Etymology: trouth from trēowth, truth','supports','Publishes the shared historical noun.'),
(125,298,'deru-, *treuwithō section','context','Publishes the Germanic abstract formation.'),
(126,292,'Etymology: be- plus trouthe, truth or troth','supports','Publishes the two-part formation and historical base.'),
(126,299,'be- prefix etymology','context','Independently supplies the prefix history.'),
(127,294,'Etymology: trewes plural of trewe from trēow, fidelity','supports','Publishes the plural reanalysis and fidelity route.'),
(127,298,'deru-, *treuwō pledge branch','context','Supplies the deeper reconstructed branch.'),
(128,285,'Word History: true and tree joined at the root','supports','States the deep relationship.'),
(128,298,'Separate *trewam and *treuwaz formations under deru-','supports','Publishes the parallel branches and shared root.');
--> statement-breakpoint

INSERT INTO `rabbit_holes` (`id`,`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(84,123,128,'TRUTH AND TREE MEET AT FIRMNESS','Truth follows the fidelity branch and tree the wood branch; the evidence-backed graph joins them only at reconstructed *deru-.',100,'A','reviewed'),
(85,122,124,'TRUE CROSSES THE NORTH SEA AS TRUST','Inherited English true and probably Scandinavian trust are Germanic cousins under *treuwaz, not one English word derived from the other.',99,'A','reviewed'),
(86,125,126,'A MARRIAGE PROMISE HIDES TROTH','Betroth exposes its historical trouth member and a separate bi-/be- prefix branch, turning fidelity into a marriage pledge.',100,'A','reviewed'),
(87,127,123,'A TRUCE IS A PLEDGE COUSIN OF TRUTH','Truce follows Old English trēow “fidelity” through a pledge branch; truth follows trēowþ through the fidelity abstract branch.',100,'A','reviewed'),
(88,124,128,'TRUST AND TREE SHARE SOLID GROUND','The confidence noun and wood noun travel through different Germanic formations before meeting at the firmness root.',98,'A','reviewed'),
(89,126,127,'BETROTH AND TRUCE ARE TWO KINDS OF PLEDGE','One formation binds a marriage promise through trouth; the other reanalyzes plural agreements into a singular suspension of hostilities.',99,'A','reviewed');
--> statement-breakpoint

-- Canonicalize every dossier form. Shared Old English, Germanic, and root
-- nodes collapse only when language, normalized form, sense, and evidence
-- status agree, tree and pledge senses of trēow remain distinct.
WITH keyed_forms AS (
  SELECT f.*, CASE
    WHEN f.status='boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
    ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status || CASE WHEN f.sense_key='default' THEN '' ELSE ':sense:' || f.sense_key END
  END AS canonical_key
  FROM forms f WHERE f.id BETWEEN 730 AND 779
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
WHERE f.id BETWEEN 730 AND 779;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT child_link.node_id,parent_link.node_id,r.relation_type,r.sound_change,r.semantic_change,r.scholar,r.confidence,r.confidence_note,r.chronology_note,r.editorial_status
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
WHERE r.id BETWEEN 609 AND 651;
--> statement-breakpoint

INSERT OR IGNORE INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id,edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id=r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id=r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id=child_link.node_id AND edge.parent_node_id=parent_link.node_id AND edge.relation_type=r.relation_type
WHERE r.id BETWEEN 609 AND 651;
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id,citation.source_id,citation.locator,citation.stance,citation.evidence_note
FROM relation_sources citation
JOIN relation_edge_links link ON link.relation_id=citation.relation_id
WHERE citation.relation_id BETWEEN 609 AND 651;
--> statement-breakpoint

-- Betroth is not a false one-parent chain. The main dossier follows trouth,
-- this graph-only branch exposes historical bi-/be- and stops at its own
-- reviewed horizon without confusing the prefix with the verb be.
INSERT OR IGNORE INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`sense_key`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`) VALUES
('node:2:bi-be:attested:sense:betroth-prefix',2,'bi-/be-','bi-be','betroth-prefix','bi-/be-',NULL,'attested','Middle English',1150,1500,'prefix used in bitrouthen','The historical prefix is a second component of betroth, not the copular verb be.','reviewed'),
('node:3:bi-be:attested:sense:locative-prefix',3,'bi-/be-','bi-be','locative-prefix','bi-/be-',NULL,'attested','Old English',450,1150,'by, near; prefix with several later functions','Merriam-Webster traces the prefix to Old English bi- or be- and bī.','reviewed'),
('boundary:graph:betroth-be-prefix',7,'UNKNOWN','unknown','betroth-be-prefix-boundary',NULL,NULL,'boundary','before the reviewed Old English prefix history',NULL,NULL,'No deeper unique prefix ancestor is promoted.','The source reports an Old English prefix and adverbial comparison without one deeper lexical root.','reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`) VALUES
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:bitrouthen:attested:sense:pledge-compound'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:bi-be:attested:sense:betroth-prefix'),'compound_component','Middle English bi- or be- remains visible at the left edge of bitrouthen.','The prefix helps form the pledge verb without supplying the lexical fidelity noun.','Merriam-Webster Editors · American Heritage Dictionary Editors','established',NULL,'Middle English formation; no single coinage date is asserted.','reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:2:bi-be:attested:sense:betroth-prefix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:bi-be:attested:sense:locative-prefix'),'inheritance','Middle English bi-/be- continues Old English bi-/be- with form and functions preserved across the period boundary.','A historically locative prefix broadens across English word formations.','Merriam-Webster Editors','established','The entry publishes several prefix functions; this edge does not force one gloss onto every formation.',NULL,'reviewed'),
((SELECT id FROM lexeme_nodes WHERE canonical_key='node:3:bi-be:attested:sense:locative-prefix'),(SELECT id FROM lexeme_nodes WHERE canonical_key='boundary:graph:betroth-be-prefix'),'knowledge_boundary','No older unique form is promoted beyond the reviewed Old English prefix history.','The component trail ends at the published horizon.','SET-U editorial boundary','boundary','A comparison with Old English bī is retained in notes rather than converted into an unsupported deeper parent.',NULL,'reviewed');
--> statement-breakpoint

INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:bitrouthen:attested:sense:pledge-compound' AND p.canonical_key='node:2:bi-be:attested:sense:betroth-prefix' AND e.relation_type='compound_component'),293,'Etymology: bi-/be- plus trouth','supports','Explicitly identifies the prefix component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:bitrouthen:attested:sense:pledge-compound' AND p.canonical_key='node:2:bi-be:attested:sense:betroth-prefix' AND e.relation_type='compound_component'),292,'Etymology: be- plus trouthe','context','Independently identifies the prefix component.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:2:bi-be:attested:sense:betroth-prefix' AND p.canonical_key='node:3:bi-be:attested:sense:locative-prefix' AND e.relation_type='inheritance'),299,'Etymology: Middle English from Old English bi-/be-','supports','Publishes the historical prefix continuity.'),
((SELECT e.id FROM lexeme_edges e JOIN lexeme_nodes c ON c.id=e.child_node_id JOIN lexeme_nodes p ON p.id=e.parent_node_id WHERE c.canonical_key='node:3:bi-be:attested:sense:locative-prefix' AND p.canonical_key='boundary:graph:betroth-be-prefix' AND e.relation_type='knowledge_boundary'),299,'Prefix entry endpoint and comparison with Old English bī','supports','Defines the reviewed component horizon without inventing a deeper root.');
