CREATE TABLE `place_sources` (
  `place_id` integer NOT NULL,
  `source_id` integer NOT NULL,
  `locator` text NOT NULL,
  `stance` text NOT NULL DEFAULT 'supports',
  `evidence_note` text NOT NULL,
  PRIMARY KEY (`place_id`, `source_id`),
  FOREIGN KEY (`place_id`) REFERENCES `places`(`id`) ON UPDATE no action ON DELETE cascade,
  FOREIGN KEY (`source_id`) REFERENCES `sources`(`id`) ON UPDATE no action ON DELETE no action
);

CREATE INDEX `idx_place_sources_source` ON `place_sources` (`source_id`);
