CREATE TABLE `form_node_links` (
	`form_id` integer PRIMARY KEY NOT NULL,
	`node_id` integer NOT NULL,
	`confidence` text DEFAULT 'established' NOT NULL,
	`editorial_note` text,
	FOREIGN KEY (`form_id`) REFERENCES `forms`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`node_id`) REFERENCES `lexeme_nodes`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `idx_form_node_links_node` ON `form_node_links` (`node_id`);--> statement-breakpoint
CREATE TABLE `lexeme_edge_sources` (
	`edge_id` integer NOT NULL,
	`source_id` integer NOT NULL,
	`locator` text,
	`stance` text DEFAULT 'supports' NOT NULL,
	`evidence_note` text,
	PRIMARY KEY(`edge_id`, `source_id`),
	FOREIGN KEY (`edge_id`) REFERENCES `lexeme_edges`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`source_id`) REFERENCES `sources`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE INDEX `idx_lexeme_edge_sources_source` ON `lexeme_edge_sources` (`source_id`);--> statement-breakpoint
CREATE TABLE `lexeme_edges` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`child_node_id` integer NOT NULL,
	`parent_node_id` integer NOT NULL,
	`relation_type` text NOT NULL,
	`sound_change` text NOT NULL,
	`semantic_change` text NOT NULL,
	`scholar` text NOT NULL,
	`confidence` text NOT NULL,
	`confidence_note` text,
	`chronology_note` text,
	`editorial_status` text DEFAULT 'reviewed' NOT NULL,
	FOREIGN KEY (`child_node_id`) REFERENCES `lexeme_nodes`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`parent_node_id`) REFERENCES `lexeme_nodes`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_lexeme_edges_nodes_type` ON `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`);--> statement-breakpoint
CREATE INDEX `idx_lexeme_edges_child` ON `lexeme_edges` (`child_node_id`);--> statement-breakpoint
CREATE INDEX `idx_lexeme_edges_parent` ON `lexeme_edges` (`parent_node_id`);--> statement-breakpoint
CREATE TABLE `lexeme_nodes` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`canonical_key` text NOT NULL,
	`language_id` integer NOT NULL,
	`form` text NOT NULL,
	`normalized_form` text NOT NULL,
	`transliteration` text,
	`pronunciation` text,
	`status` text NOT NULL,
	`date_label` text NOT NULL,
	`date_start` integer,
	`date_end` integer,
	`gloss` text NOT NULL,
	`notes` text,
	`editorial_status` text DEFAULT 'reviewed' NOT NULL,
	FOREIGN KEY (`language_id`) REFERENCES `languages`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE UNIQUE INDEX `idx_lexeme_nodes_canonical_key` ON `lexeme_nodes` (`canonical_key`);--> statement-breakpoint
CREATE INDEX `idx_lexeme_nodes_form_language` ON `lexeme_nodes` (`normalized_form`,`language_id`);--> statement-breakpoint
CREATE INDEX `idx_lexeme_nodes_status` ON `lexeme_nodes` (`status`);--> statement-breakpoint
CREATE TABLE `relation_edge_links` (
	`relation_id` integer PRIMARY KEY NOT NULL,
	`edge_id` integer NOT NULL,
	FOREIGN KEY (`relation_id`) REFERENCES `relations`(`id`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`edge_id`) REFERENCES `lexeme_edges`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE INDEX `idx_relation_edge_links_edge` ON `relation_edge_links` (`edge_id`);
--> statement-breakpoint
WITH keyed_forms AS (
	SELECT f.*,
		CASE
			WHEN f.status = 'boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
			ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status
		END AS canonical_key
	FROM forms f
)
INSERT INTO `lexeme_nodes` (`canonical_key`,`language_id`,`form`,`normalized_form`,`transliteration`,`pronunciation`,`status`,`date_label`,`date_start`,`date_end`,`gloss`,`notes`,`editorial_status`)
SELECT k.canonical_key, k.language_id, k.form, k.normalized_form, k.transliteration, k.pronunciation,
	k.status, k.date_label, k.date_start, k.date_end, k.gloss, k.notes, 'reviewed'
FROM keyed_forms k
WHERE k.id = (SELECT MIN(k2.id) FROM keyed_forms k2 WHERE k2.canonical_key = k.canonical_key);
--> statement-breakpoint
INSERT INTO `form_node_links` (`form_id`,`node_id`,`confidence`,`editorial_note`)
SELECT f.id, n.id, 'established',
	CASE WHEN f.status = 'boundary' THEN 'Boundary nodes remain dossier-specific.' ELSE 'Canonicalized by language, normalized form, and evidence status.' END
FROM forms f
JOIN lexeme_nodes n ON n.canonical_key = CASE
	WHEN f.status = 'boundary' THEN 'boundary:' || f.entry_id || ':' || f.step_order
	ELSE 'node:' || f.language_id || ':' || f.normalized_form || ':' || f.status
END;
--> statement-breakpoint
WITH keyed_relations AS (
	SELECT r.*, child_link.node_id AS child_node_id, parent_link.node_id AS parent_node_id
	FROM relations r
	JOIN form_node_links child_link ON child_link.form_id = r.child_form_id
	JOIN form_node_links parent_link ON parent_link.form_id = r.parent_form_id
)
INSERT INTO `lexeme_edges` (`child_node_id`,`parent_node_id`,`relation_type`,`sound_change`,`semantic_change`,`scholar`,`confidence`,`confidence_note`,`chronology_note`,`editorial_status`)
SELECT k.child_node_id, k.parent_node_id, k.relation_type, k.sound_change, k.semantic_change,
	k.scholar, k.confidence, k.confidence_note, k.chronology_note, k.editorial_status
FROM keyed_relations k
WHERE k.id = (
	SELECT MIN(k2.id) FROM keyed_relations k2
	WHERE k2.child_node_id = k.child_node_id
		AND k2.parent_node_id = k.parent_node_id
		AND k2.relation_type = k.relation_type
);
--> statement-breakpoint
INSERT INTO `relation_edge_links` (`relation_id`,`edge_id`)
SELECT r.id, edge.id
FROM relations r
JOIN form_node_links child_link ON child_link.form_id = r.child_form_id
JOIN form_node_links parent_link ON parent_link.form_id = r.parent_form_id
JOIN lexeme_edges edge ON edge.child_node_id = child_link.node_id
	AND edge.parent_node_id = parent_link.node_id
	AND edge.relation_type = r.relation_type;
--> statement-breakpoint
INSERT OR IGNORE INTO `lexeme_edge_sources` (`edge_id`,`source_id`,`locator`,`stance`,`evidence_note`)
SELECT link.edge_id, source.source_id, source.locator, source.stance, source.evidence_note
FROM relation_sources source
JOIN relation_edge_links link ON link.relation_id = source.relation_id;
