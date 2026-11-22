UPDATE leaderboard_entries SET
  featured_rank=3,
  unveiling_score=98,
  evidence_grade='A',
  claim='Robot named forced labor before machinery.',
  reveal='The machine word begins in Czech robota: compulsory labor, corvée, or drudgery.',
  root_form='robota',
  root_language='Czech',
  root_gloss='compulsory labor, corvée, drudgery',
  root_status='attested',
  transformation_path='robota “forced labor” → R.U.R. artificial workers → robot',
  unveiling_reason='The word’s original center is not intelligence or metal. It is labor under compulsion. The modern machine inherits a social role before it acquires a technical body.',
  reveal_type='root_revelation',
  editorial_note='The Czech source word and Čapek coinage are secure. More remote Slavic and Indo-European reconstruction remains outside this headline.'
WHERE entry_id=(SELECT id FROM entries WHERE slug='robot');
