ALTER TABLE `attestations` ADD `witness_type` text DEFAULT 'lexicographic_record' NOT NULL;--> statement-breakpoint
ALTER TABLE `attestations` ADD `repository` text;--> statement-breakpoint
ALTER TABLE `attestations` ADD `shelfmark` text;--> statement-breakpoint
ALTER TABLE `attestations` ADD `facsimile_url` text;--> statement-breakpoint
ALTER TABLE `attestations` ADD `directly_inspected` integer DEFAULT false NOT NULL;--> statement-breakpoint
ALTER TABLE `attestations` ADD `editorial_note` text;
--> statement-breakpoint
UPDATE `attestations` SET `witness_type` = 'lexicographic_first_use'
WHERE `id` IN (3,6,7,9,10,12,13,16,17,18,19,20);
--> statement-breakpoint
UPDATE `attestations` SET `witness_type` = 'lexical_corpus_record'
WHERE `id` NOT IN (3,6,7,9,10,12,13,16,17,18,19,20);
--> statement-breakpoint
UPDATE `attestations` SET `editorial_note` = 'The date and form are source-reported. No manuscript or inscription facsimile has been directly inspected for this record.'
WHERE `directly_inspected` = 0;
