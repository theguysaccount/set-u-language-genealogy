UPDATE leaderboard_entries SET
  featured_rank=7,
  unveiling_score=94,
  claim='Nice crossed from ignorance to approval.',
  reveal='Latin nescius “ignorant” became foolish or wanton, then fastidious and precise, and finally pleasant or kind.',
  root_form='nescius',
  root_language='Latin',
  root_gloss='ignorant; not knowing',
  root_status='attested',
  transformation_path='nescius “ignorant” → nice “foolish” → “fastidious / precise” → “pleasant”',
  unveiling_reason='The modern compliment is the end of a long reversal. The path shows meaning as social history: criticism, refinement, precision, and approval accumulated in sequence.',
  reveal_type='semantic_migration',
  editorial_note='The Latin and medieval path is directly cited. The deeper *skei- comparison is proposed and intentionally omitted from the root headline.'
WHERE entry_id=(SELECT id FROM entries WHERE slug='nice');
