UPDATE leaderboard_entries SET
  featured_rank=5,
  unveiling_score=96,
  claim='Calculation began with a pebble in the hand.',
  reveal='Latin calculus was a small stone used for reckoning before calculation became abstract.',
  root_form='calculus',
  root_language='Latin',
  root_gloss='small pebble; counting-board stone',
  root_status='attested',
  transformation_path='calculus “pebble” → calculāre “reckon” → calculate',
  unveiling_reason='The root makes abstraction tangible: calculation is fossilized counting technology, a physical token transformed into a general act of reasoning with numbers.',
  reveal_type='root_revelation',
  editorial_note='The pebble-to-reckoning bridge is secure; the deeper proposed connection to calx is excluded from the headline.'
WHERE entry_id=(SELECT id FROM entries WHERE slug='calculate');
