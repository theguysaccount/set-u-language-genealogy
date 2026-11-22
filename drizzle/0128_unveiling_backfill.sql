UPDATE leaderboard_entries AS board SET
  root_form=(
    SELECT form.form FROM forms form
    WHERE form.entry_id=board.entry_id AND form.status<>'boundary'
    ORDER BY form.step_order DESC LIMIT 1
  ),
  root_language=(
    SELECT language.name FROM forms form
    JOIN languages language ON language.id=form.language_id
    WHERE form.entry_id=board.entry_id AND form.status<>'boundary'
    ORDER BY form.step_order DESC LIMIT 1
  ),
  root_gloss=(
    SELECT form.gloss FROM forms form
    WHERE form.entry_id=board.entry_id AND form.status<>'boundary'
    ORDER BY form.step_order DESC LIMIT 1
  ),
  root_status=(
    SELECT form.status FROM forms form
    WHERE form.entry_id=board.entry_id AND form.status<>'boundary'
    ORDER BY form.step_order DESC LIMIT 1
  ),
  transformation_path=(
    SELECT path FROM (
      SELECT group_concat(form.form,' → ') OVER (
        ORDER BY form.step_order DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
      ) AS path
      FROM forms form
      WHERE form.entry_id=board.entry_id AND form.status<>'boundary'
      LIMIT 1
    )
  ),
  unveiling_reason=board.reveal,
  unveiling_score=MIN(89,
    52
    + CAST(board.myth_gap_score * 0.2 AS integer)
    + CASE board.evidence_grade WHEN 'A' THEN 8 WHEN 'A-' THEN 5 ELSE 2 END
    + 3 * (SELECT COUNT(*) FROM leaderboard_claim_sources citation WHERE citation.leaderboard_entry_id=board.id)
  );
