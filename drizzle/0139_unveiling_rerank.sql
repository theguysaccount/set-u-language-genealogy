WITH reranked AS (
  SELECT id,ROW_NUMBER() OVER (
    ORDER BY unveiling_score DESC,
      CASE evidence_grade WHEN 'A' THEN 0 WHEN 'A-' THEN 1 ELSE 2 END,
      rank ASC,
      id ASC
  ) AS next_rank
  FROM leaderboard_entries
)
UPDATE leaderboard_entries
SET rank=(SELECT next_rank FROM reranked WHERE reranked.id=leaderboard_entries.id);
