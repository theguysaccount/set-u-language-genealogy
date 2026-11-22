UPDATE leaderboard_entries SET
  featured_rank=8,
  unveiling_score=93,
  claim='Etymology calls itself the “true account.”',
  reveal='Greek ἔτυμος “true, real” joined -λογία “account or study”; even that truth-word reaches a reconstructed root.',
  root_form='*set-u-',
  root_language='Proto-Indo-European',
  root_gloss='true, real, in true order',
  root_status='reconstructed',
  transformation_path='*set-u- → ἔτυμος “true” → ἐτυμολογία “true account” → etymology',
  unveiling_reason='The discipline names its own ambition—recover the true account of a word—while the asterisk on its deepest displayed ancestor forces that ambition to admit uncertainty.',
  reveal_type='root_revelation',
  editorial_note='The Greek compound is attested. Beekes’s deeper *set-u- analysis is reconstructed and disputed, which is why the asterisk remains part of the reveal.'
WHERE entry_id=(SELECT id FROM entries WHERE slug='etymology');
