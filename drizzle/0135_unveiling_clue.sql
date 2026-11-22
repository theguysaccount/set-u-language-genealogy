UPDATE leaderboard_entries SET
  featured_rank=6,
  unveiling_score=95,
  claim='Evidence became a thread you could follow.',
  reveal='Old English cliewen was a ball of thread; the labyrinth metaphor turned it into guidance through uncertainty.',
  root_form='cliewen',
  root_language='Old English',
  root_gloss='ball, sphere, or ball of thread',
  root_status='attested',
  transformation_path='cliewen → clew “ball of thread” → guiding thread → clue “evidence”',
  unveiling_reason='A clue is not merely information. Its history encodes a method: hold the thread, follow it through confusion, and use it to find the way out.',
  reveal_type='root_revelation',
  editorial_note='The material word and figurative guiding-thread development are independently cited; Greek myth changes the sense, not the English ancestry.'
WHERE entry_id=(SELECT id FROM entries WHERE slug='clue');
