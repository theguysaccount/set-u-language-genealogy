CREATE TABLE `rabbit_holes` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`from_entry_id` integer NOT NULL,
	`to_entry_id` integer NOT NULL,
	`title` text NOT NULL,
	`reveal` text NOT NULL,
	`surprise_score` integer NOT NULL,
	`evidence_grade` text NOT NULL,
	`editorial_status` text DEFAULT 'reviewed' NOT NULL,
	FOREIGN KEY (`from_entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`to_entry_id`) REFERENCES `entries`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_rabbit_holes_pair` ON `rabbit_holes` (`from_entry_id`,`to_entry_id`);--> statement-breakpoint
CREATE INDEX `idx_rabbit_holes_from_score` ON `rabbit_holes` (`from_entry_id`,`surprise_score`);--> statement-breakpoint
CREATE INDEX `idx_rabbit_holes_to_score` ON `rabbit_holes` (`to_entry_id`,`surprise_score`);
--> statement-breakpoint
INSERT INTO `rabbit_holes` (`from_entry_id`,`to_entry_id`,`title`,`reveal`,`surprise_score`,`evidence_grade`,`editorial_status`) VALUES
(2,9,'The study of true words contains the root of logic.','Greek ἐτυμολογία contains the -λογία member of the λόγος family. Logic descends through λογικός from that same λόγος node.',99,'A','reviewed'),
(9,11,'Reason and reading meet beneath Greek and Latin.','logic follows the Greek λόγος branch; lecture follows Latin legere. The branches are traditionally joined at *leǵ-, with *sleǵ- preserved as a published challenge.',93,'B+','reviewed'),
(10,14,'Law and collecting may converge at a disputed gather-root.','legal reaches Latin lēx while collect reaches Latin legere. Their deeper comparison is published but disputed, so the surprise is real and the confidence stays qualified.',92,'B','reviewed'),
(11,12,'A lecture and a legend were both acts of reading.','lecture comes through lectūra “a reading”; legend through legenda “things to be read.” Both return to Latin legere.',95,'A','reviewed'),
(12,13,'A legendary tale and intelligence share Latin selection.','legend reaches legere through “things to be read”; intelligence reaches it through intellegere, traditionally inter- plus legere.',96,'A−','reviewed'),
(13,14,'Understanding and collecting share a Latin selection family.','intelligence passes through intellegere while collect passes through colligere. Both contain formations on Latin legere.',90,'A−','reviewed');
