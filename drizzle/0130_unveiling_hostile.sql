UPDATE leaderboard_entries SET
  featured_rank=1,
  unveiling_score=100,
  claim='A stranger became both guest and enemy.',
  reveal='The reciprocal outsider behind guest and host also became Latin hostis, “enemy.”',
  root_form='*ghos-ti-',
  root_language='Proto-Indo-European',
  root_gloss='stranger, guest, host; a person inside reciprocal duties of hospitality',
  root_status='reconstructed',
  transformation_path='*ghos-ti- → hostis “stranger; enemy” → hostīlis → hostile',
  unveiling_reason='Hospitality and hostility are not accidental lookalikes. The documented family preserves a semantic fork in the treatment of the outsider: reciprocal guest on one branch, enemy on another.',
  reveal_type='root_revelation',
  editorial_note='The guest, hostis, and hospes family is directly cited. The exact internal history of hospes and any deeper root remain separately qualified.'
WHERE entry_id=(SELECT id FROM entries WHERE slug='hostile');
