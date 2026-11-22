ALTER TABLE `contribution_submissions` ADD `last_review_key` text;
CREATE UNIQUE INDEX `idx_contribution_submissions_last_review_key` ON `contribution_submissions` (`last_review_key`);

CREATE TABLE `editorial_reviewers` (
  `user_id` text PRIMARY KEY NOT NULL,
  `role` text DEFAULT 'reviewer' NOT NULL CHECK (`role` IN ('owner','reviewer')),
  `active` integer DEFAULT 1 NOT NULL CHECK (`active` IN (0,1)),
  `added_at` text DEFAULT (CURRENT_TIMESTAMP) NOT NULL
);
CREATE INDEX `idx_editorial_reviewers_active_role` ON `editorial_reviewers` (`active`,`role`);
INSERT INTO `editorial_reviewers` (`user_id`,`role`,`active`)
VALUES ('redacted-owner-account','owner',1);  -- the live site's owner account ID is not published

CREATE TABLE `contribution_reviews` (
  `id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  `review_key` text NOT NULL,
  `submission_id` integer NOT NULL REFERENCES `contribution_submissions`(`id`) ON DELETE CASCADE,
  `reviewer_user_id` text NOT NULL REFERENCES `editorial_reviewers`(`user_id`),
  `prior_status` text NOT NULL CHECK (`prior_status` IN ('submitted','triaged','researching','accepted','rejected')),
  `next_status` text NOT NULL CHECK (`next_status` IN ('triaged','researching','accepted','rejected')),
  `source_reproduced` integer DEFAULT 0 NOT NULL CHECK (`source_reproduced` IN (0,1)),
  `locator_verified` integer DEFAULT 0 NOT NULL CHECK (`locator_verified` IN (0,1)),
  `alternatives_checked` integer DEFAULT 0 NOT NULL CHECK (`alternatives_checked` IN (0,1)),
  `review_note` text NOT NULL CHECK (length(trim(`review_note`)) BETWEEN 30 AND 2000),
  `created_at` text DEFAULT (CURRENT_TIMESTAMP) NOT NULL,
  CHECK (
    (`prior_status`='submitted' AND `next_status` IN ('triaged','rejected')) OR
    (`prior_status`='triaged' AND `next_status` IN ('researching','rejected')) OR
    (`prior_status`='researching' AND `next_status` IN ('accepted','rejected'))
  ),
  CHECK (`next_status`<>'accepted' OR (`source_reproduced`=1 AND `locator_verified`=1 AND `alternatives_checked`=1))
);
CREATE UNIQUE INDEX `idx_contribution_reviews_review_key` ON `contribution_reviews` (`review_key`);
CREATE INDEX `idx_contribution_reviews_submission_created` ON `contribution_reviews` (`submission_id`,`created_at`);
CREATE INDEX `idx_contribution_reviews_reviewer_created` ON `contribution_reviews` (`reviewer_user_id`,`created_at`);
