CREATE TABLE `witness_inspections` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`attestation_id` integer NOT NULL,
	`inspection_date` text NOT NULL,
	`inspector_role` text NOT NULL,
	`method` text DEFAULT 'visual_facsimile' NOT NULL,
	`observed_form` text NOT NULL,
	`observed_context` text NOT NULL,
	`exact_locator` text NOT NULL,
	`artifact_url` text NOT NULL,
	`claim_scope` text NOT NULL,
	`editorial_status` text DEFAULT 'reviewed' NOT NULL,
	FOREIGN KEY (`attestation_id`) REFERENCES `attestations`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_witness_inspections_attestation` ON `witness_inspections` (`attestation_id`);
--> statement-breakpoint
CREATE INDEX `idx_witness_inspections_date` ON `witness_inspections` (`inspection_date`);
--> statement-breakpoint

UPDATE `attestations`
SET `locator`='e-rara image 55, right column, entry ALGORITHM; content image 2867119',
    `facsimile_url`='https://www.e-rara.ch/zut/content/zoom/2867119?query=ALGORITHM',
    `directly_inspected`=1,
    `editorial_note`='The e-rara page image was directly inspected. It verifies the ALGORITHM headword and definition in John Harris''s 1704 volume; it is not claimed as the earliest surviving English occurrence.'
WHERE `id`=49;
--> statement-breakpoint

UPDATE `attestations`
SET `locator`='Codex Argenteus DG 1, fol. 57v, facsimile 276, Mark 1:11, line containing “sa liuba”',
    `facsimile_url`='https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/276mc1f.jpg',
    `directly_inspected`=1,
    `editorial_note`='The facsimile pixels were directly inspected against Project Wulfila''s verse-level transcription. The object verifies inflected liuba in Mark 1:11, not a written nominative liufs; 510 remains a representative point within the official early-sixth-century manuscript dating.'
WHERE `id`=64;
--> statement-breakpoint

INSERT INTO `witness_inspections` (`id`,`attestation_id`,`inspection_date`,`inspector_role`,`method`,`observed_form`,`observed_context`,`exact_locator`,`artifact_url`,`claim_scope`,`editorial_status`) VALUES
(1,50,'2026-08-26','SET-U editorial review','visual_facsimile','ROBOTS','R.U.R. (ROSSUM''S UNIVERSAL ROBOTS)','1923 English edition, photographed title-page spread, right-page title line','https://cdn.essentiels.bnf.fr/media/images/cache/crop/rc/pvMicQiZ/uploads/media/image/20240308095039000000_4_22.jpg','Verifies the printed plural ROBOTS in the title of this photographed edition. It does not establish the first English use or any unpictured passage.','reviewed'),
(2,49,'2026-08-26','SET-U editorial review','visual_facsimile','ALGORITHM','ALGORITHM, sometimes called Logistica Numeralis, is the Summ of the Principal Rules of Numeral Computation.','e-rara image 55, right column, ALGORITHM entry, content image 2867119','https://www.e-rara.ch/zut/content/zoom/2867119?query=ALGORITHM','Verifies the headword and opening definition in the 1704 printed volume. It does not establish the earliest surviving English occurrence.','reviewed'),
(3,64,'2026-08-26','SET-U editorial review','visual_facsimile','liuba','þu is sunus meins sa liuba','Codex Argenteus DG 1, fol. 57v, facsimile 276, Mark 1:11, line containing “sa liuba”','https://www.modeemi.fi/~david/Codex_Argenteus/jpg_files/276mc1f.jpg','Verifies the inflected manuscript token liuba at Mark 1:11 when the image is aligned with the verse transcription. It does not show the normalized citation form liufs as a written token.','reviewed');
