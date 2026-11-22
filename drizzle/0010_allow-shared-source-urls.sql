DROP INDEX `idx_sources_url`;--> statement-breakpoint
CREATE INDEX `idx_sources_url` ON `sources` (`url`);
