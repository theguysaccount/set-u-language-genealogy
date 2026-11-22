ALTER TABLE `places` ADD COLUMN `date_start` integer;
ALTER TABLE `places` ADD COLUMN `date_end` integer;
ALTER TABLE `places` ADD COLUMN `temporal_precision` text NOT NULL DEFAULT 'unresolved';
ALTER TABLE `places` ADD COLUMN `temporal_note` text NOT NULL DEFAULT 'No source-backed numeric bounds are currently encoded for this route stage.';

CREATE INDEX `idx_places_temporal_bounds`
ON `places` (`date_start`,`date_end`)
WHERE `date_start` IS NOT NULL OR `date_end` IS NOT NULL;

UPDATE `places` SET
  `date_end`=1149,
  `temporal_precision`='before',
  `temporal_note`='The Old English record is earlier than 1150. An upper bound is encoded without inventing a lower bound for the stage.'
WHERE `id`=17;

UPDATE `places` SET
  `date_start`=1500,
  `date_end`=1599,
  `temporal_precision`='century',
  `temporal_note`='The prose label says late sixteenth century; the numeric layer conservatively exposes the whole century instead of inventing a narrower decade.'
WHERE `id`=18;

UPDATE `places` SET
  `date_start`=1600,
  `temporal_precision`='open',
  `temporal_note`='The modern clue sense is represented from the seventeenth century forward; the interval remains open rather than assigning an end date.'
WHERE `id`=19;

UPDATE `places` SET
  `date_start`=700,
  `date_end`=899,
  `temporal_precision`='range',
  `temporal_note`='The eighth-to-ninth-century biographical window is encoded as a broad calendar range; it does not claim an exact date for the nisba.'
WHERE `id`=56;

UPDATE `places` SET
  `date_start`=800,
  `date_end`=899,
  `temporal_precision`='century',
  `temporal_note`='Al-Khwarizmi''s Baghdad scholarly activity is placed only within the ninth century in this route model.'
WHERE `id`=57;

UPDATE `places` SET
  `date_start`=1100,
  `date_end`=1499,
  `temporal_precision`='range',
  `temporal_note`='Latin and Middle English arithmetic transmission is modeled across the twelfth through fifteenth centuries.'
WHERE `id`=58;

UPDATE `places` SET
  `date_start`=1900,
  `temporal_precision`='open',
  `temporal_note`='The computing-era stage begins at the twentieth-century boundary and remains open into current usage.'
WHERE `id`=59;

UPDATE `places` SET
  `date_start`=800,
  `date_end`=850,
  `temporal_precision`='circa',
  `temporal_note`='The treatise is conventionally dated around 825. The wider 800–850 window preserves that approximation.'
WHERE `id`=60;

UPDATE `places` SET
  `date_start`=1100,
  `date_end`=1199,
  `temporal_precision`='century',
  `temporal_note`='The translation stage is encoded at century precision; the reviewed source reports Robert of Chester''s work around 1140.'
WHERE `id`=61;

UPDATE `places` SET
  `date_start`=1551,
  `date_end`=1551,
  `temporal_precision`='exact',
  `temporal_note`='1551 is the reviewed lexicographic first-known-use year for English algebra, not the date of every English occurrence.'
WHERE `id`=62;

UPDATE `places` SET
  `temporal_note`='The reviewed definitions establish algebra''s present scope but do not supply one defensible numeric onset for the global-modern stage.'
WHERE `id`=63;

UPDATE `places` SET
  `temporal_note`='The reconstruction is linguistically ordered but the cited table does not assign this route stage one calendar interval.'
WHERE `id` IN (144,149);

UPDATE `places` SET
  `date_start`=1600,
  `date_end`=1699,
  `temporal_precision`='century',
  `temporal_note`='Dutch contact and maritime diffusion are encoded only at seventeenth-century precision.'
WHERE `id` IN (145,146);

UPDATE `places` SET
  `date_start`=1655,
  `temporal_precision`='open',
  `temporal_note`='The English tea stage begins with the reviewed 1655 first-known-use year and remains open into current usage.'
WHERE `id`=147;

UPDATE `places` SET
  `temporal_note`='The modern typological distribution is a sampled global state, not a single historical interval with a defensible start year.'
WHERE `id`=148;

UPDATE `places` SET
  `temporal_note`='The source supports an overland transmission tendency but does not provide one numeric interval for the distributed network.'
WHERE `id`=150;

UPDATE `places` SET
  `date_start`=1000,
  `date_end`=1049,
  `temporal_precision`='range',
  `temporal_note`='The source places Biruni''s report in the first half of the eleventh century; the encoded interval is 1000–1049.'
WHERE `id`=151;

UPDATE `places` SET
  `temporal_note`='The source establishes modern Hindi and Urdu forms but does not identify one defensible start year for the South Asian stage.'
WHERE `id`=152;

UPDATE `places` SET
  `date_start`=1984,
  `temporal_precision`='open',
  `temporal_note`='The global-English stage begins with the reviewed 1984 first-known-use year for culinary chai and remains open.'
WHERE `id`=153;
