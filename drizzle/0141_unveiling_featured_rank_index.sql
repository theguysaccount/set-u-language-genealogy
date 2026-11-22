CREATE UNIQUE INDEX `idx_leaderboard_featured_rank` ON `leaderboard_entries` (`featured_rank`) WHERE `featured_rank` IS NOT NULL;
