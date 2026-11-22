CREATE TABLE `contribution_submissions` (
  `id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  `receipt_key` text NOT NULL,
  `contributor_user_id` text NOT NULL,
  `contributor_email` text NOT NULL,
  `contributor_name` text,
  `proposal_type` text NOT NULL CHECK (`proposal_type` IN ('new_dossier','ancestry_edge','sound_change','semantic_change','attestation','dispute','correction')),
  `subject_form` text NOT NULL CHECK (length(trim(`subject_form`)) BETWEEN 1 AND 160),
  `normalized_subject` text NOT NULL CHECK (length(trim(`normalized_subject`)) BETWEEN 1 AND 160),
  `subject_language` text NOT NULL CHECK (length(trim(`subject_language`)) BETWEEN 2 AND 120),
  `proposed_relation` text CHECK (`proposed_relation` IS NULL OR length(trim(`proposed_relation`)) BETWEEN 1 AND 500),
  `claim_text` text NOT NULL CHECK (length(trim(`claim_text`)) BETWEEN 30 AND 2000),
  `confidence_suggestion` text NOT NULL CHECK (`confidence_suggestion` IN ('established','probable','proposed','speculative','unknown')),
  `source_title` text NOT NULL CHECK (length(trim(`source_title`)) BETWEEN 3 AND 300),
  `source_author` text CHECK (`source_author` IS NULL OR length(trim(`source_author`)) BETWEEN 1 AND 300),
  `source_url` text NOT NULL CHECK (`source_url` LIKE 'https://%' AND length(`source_url`) <= 2000),
  `source_locator` text NOT NULL CHECK (length(trim(`source_locator`)) BETWEEN 2 AND 500),
  `evidence_note` text NOT NULL CHECK (length(trim(`evidence_note`)) BETWEEN 20 AND 1500),
  `limits_note` text NOT NULL CHECK (length(trim(`limits_note`)) BETWEEN 20 AND 1200),
  `contributor_note` text CHECK (`contributor_note` IS NULL OR length(trim(`contributor_note`)) BETWEEN 1 AND 1200),
  `fingerprint` text NOT NULL CHECK (length(`fingerprint`) = 64 AND `fingerprint` NOT GLOB '*[^0-9a-f]*'),
  `status` text DEFAULT 'submitted' NOT NULL CHECK (`status` IN ('submitted','triaged','researching','accepted','rejected')),
  `reviewed_by_user_id` text,
  `review_note` text,
  `created_at` text DEFAULT (CURRENT_TIMESTAMP) NOT NULL,
  `updated_at` text DEFAULT (CURRENT_TIMESTAMP) NOT NULL
);
CREATE UNIQUE INDEX `idx_contribution_submissions_receipt` ON `contribution_submissions` (`receipt_key`);
CREATE UNIQUE INDEX `idx_contribution_submissions_user_fingerprint` ON `contribution_submissions` (`contributor_user_id`,`fingerprint`);
CREATE INDEX `idx_contribution_submissions_status_created` ON `contribution_submissions` (`status`,`created_at`);
CREATE INDEX `idx_contribution_submissions_subject_language` ON `contribution_submissions` (`normalized_subject`,`subject_language`);
CREATE INDEX `idx_contribution_submissions_user_created` ON `contribution_submissions` (`contributor_user_id`,`created_at`);
