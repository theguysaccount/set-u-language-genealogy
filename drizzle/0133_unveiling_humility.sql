UPDATE leaderboard_entries SET
  featured_rank=4,
  unveiling_score=97,
  claim='Humility is an earth-and-lowness metaphor.',
  reveal='Latin humus “ground” produced humilis “low,” then humilitās “lowness,” before the moral virtue.',
  root_form='humus',
  root_language='Latin',
  root_gloss='earth, soil, ground',
  root_status='attested',
  transformation_path='humus “ground” → humilis “low” → humilitās “lowness” → humility',
  unveiling_reason='A physical position became a social condition and then a virtue. The root reveals the whole moral transformation instead of reducing humility to a timeless dictionary definition.',
  reveal_type='root_revelation',
  editorial_note='Classical and ecclesiastical sense chronology is directly cited; “grounded” is a modern interpretive shortcut, not the historical definition.'
WHERE entry_id=(SELECT id FROM entries WHERE slug='humility');
