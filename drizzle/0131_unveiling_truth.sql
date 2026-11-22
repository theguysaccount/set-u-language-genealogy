UPDATE leaderboard_entries SET
  featured_rank=2,
  unveiling_score=99,
  claim='Truth began with firmness and fidelity.',
  reveal='Before truth centered factual correspondence, its family named what was firm, faithful, and steadfast.',
  root_form='*deru-',
  root_language='Proto-Indo-European',
  root_gloss='be firm, solid, steadfast; wood or tree',
  root_status='reconstructed',
  transformation_path='*deru- “firm” → *treuwaz “faithful” → trēowþ “fidelity” → truth',
  unveiling_reason='The ancestry does not define truth forever, but it reveals the older metaphor beneath it: truth was first something that held firm—loyalty and fidelity before the modern abstract test of fact.',
  reveal_type='root_revelation',
  editorial_note='The firmness family and the early fidelity sense are directly cited; the deepest form is reconstructed, not a surviving first word.'
WHERE entry_id=(SELECT id FROM entries WHERE slug='truth');
