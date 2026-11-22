-- Candidate promotion is a lexical claim, not a row-counting exercise.
-- This ledger records source-cited decisions that a graph-visible form is not
-- a separate lexeme and therefore must not become a duplicate dossier.

CREATE TABLE `candidate_resolutions` (
  `id` integer PRIMARY KEY NOT NULL,
  `form` text NOT NULL CHECK (length(trim(`form`)) BETWEEN 1 AND 160),
  `normalized_form` text NOT NULL CHECK (length(trim(`normalized_form`)) BETWEEN 1 AND 160),
  `language` text NOT NULL CHECK (length(trim(`language`)) BETWEEN 2 AND 120),
  `disposition` text NOT NULL CHECK (`disposition` IN ('represented_variant','merged_with_existing_lexeme','not_a_lexeme','duplicate_candidate')),
  `canonical_node_id` integer NOT NULL,
  `explanation` text NOT NULL CHECK (length(trim(`explanation`)) BETWEEN 30 AND 2000),
  `editorial_status` text DEFAULT 'reviewed' NOT NULL CHECK (`editorial_status` IN ('reviewed','draft')),
  FOREIGN KEY (`canonical_node_id`) REFERENCES `lexeme_nodes`(`id`) ON UPDATE no action ON DELETE restrict
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_candidate_resolutions_identity` ON `candidate_resolutions` (`normalized_form`,`language`);
--> statement-breakpoint
CREATE INDEX `idx_candidate_resolutions_node` ON `candidate_resolutions` (`canonical_node_id`);
--> statement-breakpoint

CREATE TABLE `candidate_resolution_sources` (
  `resolution_id` integer NOT NULL,
  `source_id` integer NOT NULL,
  `locator` text NOT NULL CHECK (length(trim(`locator`)) BETWEEN 2 AND 500),
  `stance` text NOT NULL CHECK (`stance` IN ('supports','challenges','context','contradicts')),
  `evidence_note` text NOT NULL CHECK (length(trim(`evidence_note`)) BETWEEN 20 AND 1500),
  PRIMARY KEY (`resolution_id`,`source_id`),
  FOREIGN KEY (`resolution_id`) REFERENCES `candidate_resolutions`(`id`) ON UPDATE no action ON DELETE cascade,
  FOREIGN KEY (`source_id`) REFERENCES `sources`(`id`) ON UPDATE no action ON DELETE restrict
);
--> statement-breakpoint
CREATE INDEX `idx_candidate_resolution_sources_source` ON `candidate_resolution_sources` (`source_id`);
--> statement-breakpoint

INSERT INTO `candidate_resolutions` (`id`,`form`,`normalized_form`,`language`,`disposition`,`canonical_node_id`,`explanation`,`editorial_status`)
SELECT 1,'fian','fian','Gothic','represented_variant',node.id,
  'Project Wulfila redirects fian to fijan, Streitberg groups the j-bearing and j-less forms under one historical verb, and the reviewed graph already represents that relationship as an orthographic-variant edge. No exact corpus infinitive fian or separate Gothic lexeme is claimed, so a second dossier would manufacture lexical independence rather than add evidence.',
  'reviewed'
FROM lexeme_nodes node
WHERE node.canonical_key='node:34:fian:attested:sense:hate-class-three-jless-variant';
--> statement-breakpoint

INSERT INTO `candidate_resolution_sources` (`resolution_id`,`source_id`,`locator`,`stance`,`evidence_note`) VALUES
(1,488,'Lemma fian: See fijan','supports','Project Wulfila redirects the normalized fian lemma to fijan instead of inventorying a separate verb.'),
(1,490,'p. 34, fijan with fian variants, class, and gloss','supports','Streitberg groups the j-bearing and j-less forms inside one historical dictionary entry.');
