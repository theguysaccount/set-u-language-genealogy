UPDATE `places` SET
  `place`='Latin-speaking mollusk-name tradition',
  `date_label`='Latin and post-Latin transmission; exact interval unresolved',
  `note`='Latin musculus and Vulgar Latin *muscula supply a mouse-family mollusk name. The lexical ancestry is cited, but the route does not turn a distributed Latin tradition into one point or one date range.',
  `geographic_confidence`='broad',
  `temporal_note`='The Latin and Vulgar Latin lexical stages are directly cited, but the reviewed sources do not delimit one conservative interval for the whole transmission.'
WHERE `id`=76;

UPDATE `places` SET
  `place`='Old English records',
  `date_label`='before the 12th c. first-use horizon',
  `note`='Old English muscelle names the bivalve mollusk on the direct route to English mussel.',
  `date_start`=NULL,
  `date_end`=1099,
  `temporal_precision`='before',
  `geographic_confidence`='broad',
  `temporal_note`='The before-1100 bound exposes the source-reported “before the 12th century” English horizon; it is not an exact date for the Old English borrowing.'
WHERE `id`=77;

UPDATE `places` SET
  `place`='Middle English mollusk usage',
  `date_label`='Middle English spelling stage; exact interval unresolved',
  `note`='The mollusk word appears as Middle English muscle, overlapping the spelling of the anatomical word while remaining a distinct sense.',
  `geographic_confidence`='broad',
  `temporal_note`='The Middle English form and spelling overlap are directly cited, but the reviewed sources do not justify one numeric interval for this stage.'
WHERE `id`=78;

UPDATE `places` SET
  `place`='English-language mussel senses',
  `date_label`='current spelling and senses; onset unresolved',
  `note`='Modern mussel names marine and freshwater bivalves. American Heritage reports possible influence from Dutch mossel on the modern spelling, so that contribution remains qualified rather than forced into the direct chain.',
  `geographic_confidence`='broad',
  `temporal_note`='Current definitions and the spelling question are cited, but the sources do not establish one defensible onset for the distributed modern stage.'
WHERE `id`=79;

UPDATE `places` SET
  `place`='Reconstructed Indo-European speech communities',
  `date_label`='Proto-Indo-European reconstruction; date and homeland unresolved',
  `note`='Comparative evidence reconstructs *mūs- “mouse.” SET-U preserves the reconstruction while refusing to convert a comparative form into one archaeological place or exact period.',
  `geographic_confidence`='uncertain',
  `temporal_note`='The reconstructed root and its reflexes are cited, but the reviewed lexical sources do not establish one numeric prehistoric interval or homeland point.'
WHERE `id`=80;

UPDATE `places` SET
  `place`='Reconstructed Proto-Germanic speech communities',
  `date_label`='Proto-Germanic reconstruction; exact interval unresolved',
  `note`='The inherited mouse word continues through the reconstructed Germanic branch. Comparative evidence supports the branch, not a single northern-European coordinate.',
  `geographic_confidence`='uncertain',
  `temporal_note`='The Proto-Germanic stage is directly supported by the comparative record, but the reviewed source does not delimit one conservative interval.'
WHERE `id`=81;

UPDATE `places` SET
  `place`='Old English records',
  `date_label`='before the 12th c. first-use horizon',
  `note`='Old English mūs is the direct recorded ancestor of English mouse.',
  `date_start`=NULL,
  `date_end`=1099,
  `temporal_precision`='before',
  `geographic_confidence`='broad',
  `temporal_note`='The before-1100 bound exposes the source-reported “before the 12th century” English horizon; it does not date every Old English occurrence.'
WHERE `id`=82;

UPDATE `places` SET
  `place`='English-language mouse senses',
  `date_label`='core noun before the 12th c.; later senses, onset unresolved',
  `note`='Mouse remains the rodent name and extends to a computer device, a timid person, a black eye, and several verbal senses. The dictionary dates the core English word, not every later extension.',
  `geographic_confidence`='broad',
  `temporal_note`='The current sense network and the core noun’s first-use horizon are cited, but no single numeric onset is assigned to the combined modern stage.'
WHERE `id`=83;

UPDATE `places` SET
  `place`='Latin hospitāle lodging tradition',
  `date_label`='Roman and medieval Latin transmission; exact interval unresolved',
  `note`='Medieval Latin hospitāle, from the hospes hospitality family, names a house or lodging for travelers and guests. The linguistic tradition is distributed rather than one mappable institution.',
  `geographic_confidence`='broad',
  `temporal_note`='The Latin formation and lodging sense are directly cited, but the reviewed sources do not delimit one numeric interval for their full transmission.'
WHERE `id`=96;

UPDATE `places` SET
  `place`='Anglo-French and Middle English transmission',
  `date_label`='medieval borrowing; exact interval unresolved',
  `note`='Anglo-French hospital and ospitale carry the lodging-and-charity institution into Middle English.',
  `geographic_confidence`='broad',
  `temporal_note`='The Anglo-French route is directly cited, but the reviewed entry does not provide one conservative numeric borrowing interval.'
WHERE `id`=97;

UPDATE `places` SET
  `place`='English lodging, charity, and care institutions',
  `date_label`='14th–15th c. semantic transition',
  `note`='English hospital is reported in the fourteenth century for lodging or charitable residence; fifteenth-century use develops toward an institution caring for sick or injured people.',
  `date_start`=1300,
  `date_end`=1499,
  `temporal_precision`='range',
  `geographic_confidence`='broad',
  `temporal_note`='The interval conservatively combines the fourteenth-century English first-use horizon and the cited fifteenth-century medical development; it is not an exact institutional chronology.'
WHERE `id`=98;

UPDATE `places` SET
  `place`='English-language hospital senses',
  `date_label`='15th c. medical institution onward',
  `note`='The medical institution becomes the modern center while hospital also retains institutional and specialized care senses.',
  `date_start`=1400,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='broad',
  `temporal_note`='The open interval begins with the cited fifteenth-century medical development. It does not date every modern institutional specialization to that century.'
WHERE `id`=99;

UPDATE `places` SET
  `place`='Latin hospitāle lodging tradition',
  `date_label`='Roman and medieval Latin transmission; exact interval unresolved',
  `note`='Hospitāle names accommodation for guests and travelers, the shared departure point for hospital, hostel, hotel, and hospice routes.',
  `geographic_confidence`='broad',
  `temporal_note`='The Latin lodging word is directly cited, but the reviewed sources do not delimit one numeric interval for its distributed use.'
WHERE `id`=100;

UPDATE `places` SET
  `place`='French hostel / ostel / hôtel forms',
  `date_label`='Old French to modern French development; exact interval unresolved',
  `note`='Old French hostel or ostel develops into hôtel, with the lost s later signaled by the circumflex. This is the French branch that English hotel borrows.',
  `geographic_confidence`='broad',
  `temporal_note`='The French formal route is directly cited, but the reviewed sources do not supply one conservative interval for the entire development.'
WHERE `id`=101;

UPDATE `places` SET
  `place`='English hotel borrowing',
  `date_label`='1687 first-known-use horizon',
  `note`='English borrows French hôtel as hotel for an establishment providing lodging and related services.',
  `date_start`=1687,
  `date_end`=1687,
  `temporal_precision`='exact',
  `geographic_confidence`='broad',
  `temporal_note`='1687 is the reviewed English first-known-use year, not an exact date for every French-to-English contact or occurrence.'
WHERE `id`=102;

UPDATE `places` SET
  `place`='English-language hotel senses',
  `date_label`='1687 lodging establishment onward',
  `note`='Hotel continues as the English term for an establishment offering lodging and often meals, entertainment, or personal services.',
  `date_start`=1687,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='broad',
  `temporal_note`='The open interval begins with the cited 1687 English first-use horizon. It does not assign every later service or institutional extension to that year.'
WHERE `id`=103;

UPDATE `places` SET
  `place`='Proposed Indo-European comparison',
  `date_label`='reconstructed *skei- comparison; chronology unresolved',
  `note`='American Heritage publishes a route from reconstructed *skei- “cut, split” through distinguishing to knowing. Merriam-Webster records competing formations and calls that semantic progression questionable, so SET-U presents the comparison as disputed.',
  `geographic_confidence`='uncertain',
  `temporal_note`='The reconstruction and direct scholarly challenge are both cited. Their disagreement prevents one numeric prehistoric interval or homeland point from being promoted.'
WHERE `id`=108;

UPDATE `places` SET
  `place`='Latin scientia knowledge tradition',
  `date_label`='Latin antiquity; exact interval unresolved',
  `note`='Latin scientia names knowledge, awareness, understanding, a branch of knowledge, and learning, from sciens and scīre “know.”',
  `geographic_confidence`='broad',
  `temporal_note`='The Latin formation and senses are directly cited, but the reviewed lexical source does not delimit one numeric interval for their complete history.'
WHERE `id`=109;

UPDATE `places` SET
  `place`='Anglo-French and Middle English learning vocabulary',
  `date_label`='14th c. English first-known-use horizon',
  `note`='Anglo-French science or cience enters Middle English for knowledge, learning, ability to know, or a branch of learning.',
  `date_start`=1300,
  `date_end`=1399,
  `temporal_precision`='century',
  `geographic_confidence`='broad',
  `temporal_note`='The whole fourteenth century is exposed as the source-reported English first-use horizon, not an exact borrowing year.'
WHERE `id`=110;

UPDATE `places` SET
  `place`='Modern science senses',
  `date_label`='systematic and natural-knowledge specialization; onset unresolved',
  `note`='Modern science centers tested, systematized knowledge and the natural sciences while the older general “knowledge” sense remains visible in the history.',
  `geographic_confidence`='global',
  `temporal_note`='The older and current semantic centers are directly cited, but the reviewed source does not justify one numeric onset for a worldwide specialization stage.'
WHERE `id`=111;

UPDATE `places` SET
  `place`='Northern Indian game tradition',
  `date_label`='6th c. first-certain caturaṅga evidence',
  `note`='The first certain caturaṅga game-name evidence belongs to a sixth-century Indian military-game tradition; earlier origin stories remain less secure.',
  `date_start`=500,
  `date_end`=599,
  `temporal_precision`='century',
  `geographic_confidence`='broad',
  `temporal_note`='The sixth century is the source’s first-certain documentary horizon, not an exact invention date or one point of origin.'
WHERE `id`=130;

UPDATE `places` SET
  `place`='Persian chess traditions',
  `date_label`='late Sasanian transmission probable; certain records later',
  `note`='The game is reported as reaching Persia in the sixth century and appears as Middle Persian čatrang and later Persian or Arabic šatranj. Legendary narratives and later redactions make a single exact interval unsafe.',
  `geographic_confidence`='broad',
  `temporal_note`='The Persian transmission and game names are cited, but the source distinguishes historical evidence from later narrative traditions and does not license one normalized interval.'
WHERE `id`=131;

UPDATE `places` SET
  `place`='Arabic chess networks',
  `date_label`='early Islamic transmission; exact interval unresolved',
  `note`='Arabic-speaking chess networks receive the game and Persian terminology and carry them westward through the early Islamic world.',
  `geographic_confidence`='broad',
  `temporal_note`='The direction of transmission is directly cited, but the reviewed history does not delimit one numeric interval for the distributed Arabic network.'
WHERE `id`=132;

UPDATE `places` SET
  `place`='French game name and Middle English chess',
  `date_label`='14th c. English first-known-use horizon; French route earlier',
  `note`='French plural escheks or eschez, literally the chess “checks,” becomes Middle English chesse, ches, or esches. Persian-to-European game transmission predates the English record.',
  `date_start`=1300,
  `date_end`=1399,
  `temporal_precision`='century',
  `geographic_confidence`='broad',
  `temporal_note`='The numeric bound records the cited fourteenth-century English first-use horizon only; it does not date the earlier French formation or every European transmission event.'
WHERE `id`=133;

UPDATE `places` SET
  `place`='English-language and international chess nomenclature',
  `date_label`='14th c. English game name onward; later global adoption',
  `note`='The inherited English game name persists while rules change and chess becomes global. The unrelated grass called chess remains a separate word of unknown origin.',
  `date_start`=1300,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='global',
  `temporal_note`='The open interval begins with the cited fourteenth-century English game-name horizon. It does not date worldwide adoption or every rule change to that century.'
WHERE `id`=134;

UPDATE `places` SET
  `place`='Achaemenid royal-title tradition',
  `date_label`='Achaemenid period, c. 550–330 BCE',
  `note`='Old Persian xšāyaθiya is attested in official Achaemenid royal protocol and continues historically toward Middle and New Persian šāh.',
  `date_start`=-550,
  `date_end`=-330,
  `temporal_precision`='range',
  `geographic_confidence`='broad',
  `temporal_note`='The range locates the attested Achaemenid title stage, not an exact coinage date for xšāyaθiya or every inscription.'
WHERE `id`=140;

UPDATE `places` SET
  `place`='Persian royal and chess terminology',
  `date_label`='Middle and New Persian continuation; exact interval unresolved',
  `note`='Old Persian xšāyaθiya continues as Middle and New Persian šāh “king”; the title also becomes part of Persian chess terminology.',
  `geographic_confidence`='broad',
  `temporal_note`='The historical continuation and chess use are directly cited, but no single numeric interval represents the whole distributed Persian stage.'
WHERE `id`=141;

UPDATE `places` SET
  `place`='English shah borrowing',
  `date_label`='1566 first-known-use horizon',
  `note`='English directly borrows Persian shāh as the title of an Iranian sovereign.',
  `date_start`=1566,
  `date_end`=1566,
  `temporal_precision`='exact',
  `geographic_confidence`='broad',
  `temporal_note`='1566 is the reviewed English first-known-use year, not an exact date for every borrowing event or title occurrence.'
WHERE `id`=142;

UPDATE `places` SET
  `place`='English-language shah usage',
  `date_label`='1566 title onward; modern historical usage',
  `note`='Shah remains the English historical and political title for sovereigns of Iran and related Persian royal contexts.',
  `date_start`=1566,
  `date_end`=NULL,
  `temporal_precision`='open',
  `geographic_confidence`='global',
  `temporal_note`='The open interval begins with the cited 1566 English horizon. It does not date every international historical or political use to that year.'
WHERE `id`=143;

INSERT INTO `place_sources` (`place_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(76,66,'Word History: Etymology, Latin musculus and Vulgar Latin *muscula','supports','Traces the mollusk word through Old English and Vulgar Latin *muscula to Latin musculus, supporting the mouse-family mollusk name without one geographic point.'),
(76,73,'Muscle and mussel history, shared Latin origin','context','Explains the convergence of the anatomical and mollusk words in Latin musculus while preserving their distinct English senses.'),
(77,66,'Word History: Etymology and First Known Use','supports','Identifies Old English muscelle in the direct ancestry of mussel and reports English use before the twelfth century.'),
(78,66,'Word History: Etymology, Middle English muscle','supports','Records Middle English muscle as the mollusk form on the route from Old English muscelle.'),
(78,73,'Muscle and mussel history, Middle English spelling overlap','context','Documents that the anatomical and mollusk words shared the spelling muscle in Middle English even though their senses remained distinct.'),
(79,66,'Current definitions and Word History','supports','Documents current marine and freshwater bivalve senses and the historical English chain.'),
(79,69,'Word History: Etymology, possible Dutch mossel influence','context','Reports possible Dutch influence on the modern English spelling, preserving that contribution as qualified rather than certain.'),
(80,71,'Indo-European Root mūs-','supports','Publishes reconstructed Indo-European *mūs- “mouse” and its descendant or cognate forms without assigning a single homeland point.'),
(80,72,'Indo-European Lexicon: mūs-','supports','Supplies independent comparative reconstruction and reflex evidence for *mūs- while leaving archaeological location and exact time depth open.'),
(81,72,'Indo-European Lexicon: Germanic reflexes under mūs-','supports','Documents the inherited Germanic branch of the reconstructed mouse family without converting it into one point location.'),
(82,67,'Word History: Etymology and First Known Use','supports','Identifies Old English mūs as the direct ancestor of Middle and Modern English mouse and reports use before the twelfth century.'),
(82,70,'Word History: Old English mūs','supports','Confirms the recorded Old English form and its Germanic relatives on the direct English route.'),
(83,67,'Current noun and verb definitions; First Known Use','supports','Documents the rodent, computer-device, timid-person, black-eye, hunting, searching, and stealth senses while dating only the core noun before the twelfth century.'),
(96,77,'Word History: Etymology, Medieval Latin hospitāle','supports','Traces hospital through Medieval Latin hospitāle, hospitālis, and hospes.'),
(96,79,'Hospital / hostel / hotel / hospice family history','supports','Explains hospitāle as a house or lodging for travelers and the common departure point of the English doublets.'),
(97,77,'Word History: Etymology, Anglo-French and Middle English forms','supports','Documents Anglo-French hospital or ospitale on the route into Middle English.'),
(98,77,'Word History: Etymology and First Known Use','supports','Reports the Middle English lodging and charitable-institution senses and a fourteenth-century first-known-use horizon.'),
(98,79,'Hospital family history, fourteenth- and fifteenth-century developments','supports','Separates the fourteenth-century traveler-lodging stage, fifteenth-century charitable housing, and later fifteenth-century medical institution.'),
(99,77,'Current definitions and Word History','supports','Documents the modern medical and institutional senses of hospital.'),
(99,79,'Hospital family history, medical development','supports','Places development toward an institution for the sick in the fifteenth century while preserving the older lodging history.'),
(100,79,'Hospital / hostel / hotel / hospice family history','supports','Identifies Medieval Latin hospitāle as lodging for guests and travelers and as the shared source of the later English family.'),
(101,78,'Word History: Etymology, French hôtel and Old French hostel / ostel','supports','Traces French hôtel through Old French hostel or ostel and supports the direct donor route into English.'),
(101,79,'Hospital family history, hostel to hôtel','supports','Explains the French formal development and the circumflex marking the lost s.'),
(102,78,'Word History: Etymology and First Known Use','supports','Identifies French hôtel as the English donor and reports 1687 as the first-known-use horizon.'),
(102,79,'Hospital family history, later seventeenth-century English borrowing','context','Places the English hotel borrowing in the later seventeenth century and distinguishes its route from hospital, hostel, and hospice.'),
(103,78,'Current definitions and First Known Use','supports','Documents the continuing lodging-establishment sense and related meals, entertainment, and personal services from the 1687 English horizon.'),
(108,87,'Root skei-, section 2','supports','Publishes *skei- “cut, split” and the proposed distinguish-to-know bridge leading toward Latin scīre.'),
(108,86,'Word History: Etymology notes on scīre','challenges','Records competing formations and says the semantic development from cutting or flaying to knowing is questionable, so the reconstructed comparison remains disputed.'),
(109,86,'Word History: Latin scientia, sciens, and scīre','supports','Documents Latin scientia as knowledge, awareness, understanding, a branch of knowledge, and learning, derived through sciens from scīre.'),
(110,86,'Word History: Etymology and First Known Use','supports','Reports Anglo-French science or cience, Middle English knowledge and learning senses, and a fourteenth-century English first-use horizon.'),
(111,86,'Current definitions and Word History','supports','Documents modern tested and systematized knowledge and natural-science senses against the older general knowledge history without assigning one global onset.'),
(130,98,'Chess i, Indian origin and first certain caturaṅga evidence','supports','Reports the first certain mention of caturaṅga in the sixth century while treating earlier origin stories cautiously.'),
(131,98,'Chess i, Persian transmission, čatrang, and šatranj','supports','Documents transmission to Persia and the Persian game names while distinguishing later literary narratives from the most secure historical evidence.'),
(132,98,'Chess i, early Islamic transmission westward','supports','Describes the game’s passage from Persia through Arabs and other Muslim peoples toward Byzantium and Europe.'),
(133,94,'Word History: Etymology and First Known Use','supports','Traces Anglo-French escheks or eschez into Middle English chesse, ches, and esches and reports a fourteenth-century first-use horizon.'),
(133,98,'Chess i, transmission from Persia toward Europe','context','Places the European game-name route inside the broader westward transmission history without claiming that the source dates the exact English borrowing.'),
(134,94,'Current game definition; grass-chess note','supports','Documents the modern game noun and separates it from the unrelated grass word whose origin is unknown.'),
(134,98,'Chess i, European rule changes and game continuity','context','Shows that later rule reforms occurred within the continuing game tradition, supporting the distinction between name history and changing rules.'),
(140,99,'Titles, official royal protocol and xšāyaθiya','supports','Documents xšāyaθiya in official Achaemenid royal protocol and relates it to Middle and New Persian šāh.'),
(140,93,'Word History: noun etymology, Old Persian route','context','Independently places Persian šāh on a route through Middle Persian to the attested Old Persian royal title while preserving the separate deeper-root dispute.'),
(141,99,'Titles, xšāyaθiya and Middle / New Persian šāh','supports','Supports the historical continuation from the Old Persian title to Middle and New Persian šāh.'),
(141,98,'Chess i, Persian names and šāh terminology','supports','Documents šāh “king” as Persian royal vocabulary embedded in the chess tradition.'),
(142,96,'Word History: Etymology and First Known Use','supports','Identifies shah as a direct English borrowing from Persian shāh and reports 1566 as the first-known-use horizon.'),
(143,96,'Current definition and First Known Use','supports','Documents the continuing English title for an Iranian sovereign from the 1566 English horizon.' );
