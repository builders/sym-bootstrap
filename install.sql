
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_author` ***

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (12, 20, 'on', NULL);

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (88, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (91, 3, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (89, 4, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (90, 5, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (94, 9, NULL);

-- *** STRUCTURE: `tbl_fields_number` ***
DROP TABLE IF EXISTS `tbl_fields_number`;
CREATE TABLE `tbl_fields_number` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_number` ***

-- *** STRUCTURE: `tbl_fields_order_entries` ***
DROP TABLE IF EXISTS `tbl_fields_order_entries`;
CREATE TABLE `tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `hide` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (36, 2, NULL, 'no');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (39, 16, NULL, 'no');

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`) VALUES (35, 21, 'no', 'no', 1, 100);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`) VALUES (38, 7, 'no', 'yes', 1, 100);

-- *** STRUCTURE: `tbl_fields_stage` ***
DROP TABLE IF EXISTS `tbl_fields_stage`;
CREATE TABLE `tbl_fields_stage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `constructable` smallint(1) DEFAULT '0',
  `destructable` smallint(1) DEFAULT '0',
  `draggable` smallint(1) DEFAULT '0',
  `droppable` smallint(1) DEFAULT '0',
  `searchable` smallint(1) DEFAULT '0',
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_stage` ***
INSERT INTO `tbl_fields_stage` (`id`, `field_id`, `constructable`, `destructable`, `draggable`, `droppable`, `searchable`, `context`) VALUES (4, 13, 1, 1, 1, 0, 1, 'subsectionmanager');

-- *** STRUCTURE: `tbl_fields_stage_sorting` ***
DROP TABLE IF EXISTS `tbl_fields_stage_sorting`;
CREATE TABLE `tbl_fields_stage_sorting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `order` text COLLATE utf8_unicode_ci,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_stage_sorting` ***

-- *** STRUCTURE: `tbl_fields_subsectionmanager` ***
DROP TABLE IF EXISTS `tbl_fields_subsectionmanager`;
CREATE TABLE `tbl_fields_subsectionmanager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filter_tags` text COLLATE utf8_unicode_ci,
  `caption` text COLLATE utf8_unicode_ci,
  `droptext` text COLLATE utf8_unicode_ci,
  `included_fields` text COLLATE utf8_unicode_ci,
  `allow_multiple` tinyint(1) DEFAULT '0',
  `show_preview` tinyint(1) DEFAULT '0',
  `lock` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_subsectionmanager` ***

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_taglist` ***

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (22, 6, 'markdown_extra', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (25, 17, NULL, 15);

-- *** STRUCTURE: `tbl_fields_textupload` ***
DROP TABLE IF EXISTS `tbl_fields_textupload`;
CREATE TABLE `tbl_fields_textupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `file_destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_formatter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_cdata` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `text_size` enum('small','medium','large','huge') COLLATE utf8_unicode_ci DEFAULT 'medium',
  `text_mode` enum('editable','disabled','hidden') COLLATE utf8_unicode_ci DEFAULT 'editable',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textupload` ***

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_upload` ***

-- *** STRUCTURE: `tbl_entries_data_1` ***
DROP TABLE IF EXISTS `tbl_entries_data_1`;
CREATE TABLE `tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_1` ***
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 1, 'bootstrap', 'Bootstrap');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 3, 'quickstart', 'Quickstart');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 7, 'about-bootstrap', 'About Bootstrap');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 12, 'grid-system', 'Grid System');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 16, 'display-grids', 'Display Grids');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 17, 'quick-start-examples', 'Quick-start examples');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 18, 'layouts', 'Layouts');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 21, 'typography', 'Typography');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 27, 'headings-and-copy', 'Headings & copy');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 28, 'misc-elements', 'Misc. elements');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 29, 'blockquotes', 'Blockquotes');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 32, 'lists', 'Lists');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 37, 'code', 'Code');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 40, 'inline-labels', 'Inline labels');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 43, 'media', 'Media');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 46, 'tables', 'Tables');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 49, 'forms', 'Forms');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 52, 'default-styles', 'Default styles');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 53, 'stacked-forms', 'Stacked forms');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 56, 'buttons', 'Buttons');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 59, 'navigation', 'Navigation');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 61, 'about-topbar', 'About Topbar');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 67, 'tabs-and-pills', 'Tabs and Pills');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 69, 'breadcrumbs', 'Breadcrumbs');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 72, 'pagination', 'Pagination');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 75, 'alerts-and-errors', 'Alerts & Errors');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 78, 'basic-alerts-examples', 'Basic alerts examples');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 79, 'block-messages', 'Block messages');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 82, 'popovers', 'Popovers');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 83, 'modals', 'Modals');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 86, 'tooltips', 'Tooltips');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 89, 'popovers-subsection', 'Popovers subsection');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 92, 'using-javascript-with-bootstrap', 'Using javascript with Bootstrap');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 95, 'using-bootstrap-with-less', 'Using Bootstrap with Less');

-- *** STRUCTURE: `tbl_entries_data_15` ***
DROP TABLE IF EXISTS `tbl_entries_data_15`;
CREATE TABLE `tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_15` ***
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (27, 4, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (28, 5, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (29, 6, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (20, 2, NULL);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (152, 8, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (31, 9, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (32, 10, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (39, 11, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (34, 13, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (36, 14, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (38, 15, 4);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (42, 19, 2);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (41, 20, 2);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (48, 22, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (49, 23, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (50, 24, 2);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (51, 25, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (52, 26, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (53, 30, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (54, 31, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (56, 33, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (57, 34, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (58, 35, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (59, 36, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (60, 38, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (61, 39, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (62, 41, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (63, 42, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (64, 44, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (65, 45, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (66, 47, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (67, 48, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (70, 50, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (71, 51, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (72, 54, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (73, 55, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (74, 57, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (84, 58, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (86, 60, 4);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (87, 62, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (88, 63, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (89, 64, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (90, 65, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (126, 66, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (127, 68, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (94, 70, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (96, 71, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (97, 73, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (110, 74, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (113, 76, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (122, 77, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (123, 80, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (124, 81, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (154, 84, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (131, 85, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (155, 87, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (133, 88, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (156, 90, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (141, 91, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (153, 93, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (144, 94, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (148, 96, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (151, 97, 3);

-- *** STRUCTURE: `tbl_entries_data_16` ***
DROP TABLE IF EXISTS `tbl_entries_data_16`;
CREATE TABLE `tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_16` ***
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (27, 4, 2);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (20, 2, 1);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (28, 5, 3);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (29, 6, 4);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (152, 8, 5);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (31, 9, 6);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (32, 10, 7);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (39, 11, 8);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (34, 13, 9);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (36, 14, 10);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (38, 15, 11);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (42, 19, 12);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (41, 20, 13);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (48, 22, 14);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (49, 23, 15);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (50, 24, 16);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (51, 25, 17);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (52, 26, 18);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (53, 30, 19);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (54, 31, 20);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (56, 33, 21);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (57, 34, 22);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (58, 35, 23);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (59, 36, 24);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (60, 38, 25);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (61, 39, 26);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (62, 41, 27);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (63, 42, 28);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (64, 44, 29);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (65, 45, 30);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (66, 47, 31);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (67, 48, 32);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (70, 50, 33);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (71, 51, 34);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (72, 54, 35);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (73, 55, 36);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (74, 57, 37);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (84, 58, 38);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (86, 60, 39);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (87, 62, 40);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (88, 63, 41);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (89, 64, 42);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (90, 65, 43);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (126, 66, 44);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (127, 68, 45);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (94, 70, 46);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (96, 71, 47);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (97, 73, 48);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (110, 74, 49);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (113, 76, 50);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (122, 77, 51);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (123, 80, 52);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (124, 81, 53);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (154, 84, 54);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (131, 85, 55);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (155, 87, 56);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (133, 88, 57);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (156, 90, 58);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (141, 91, 59);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (153, 93, 60);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (144, 94, 61);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (148, 96, 62);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (151, 97, 63);

-- *** STRUCTURE: `tbl_entries_data_17` ***
DROP TABLE IF EXISTS `tbl_entries_data_17`;
CREATE TABLE `tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_17` ***
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 2, '<h1>Bootstrap, <br />from Twitter</h1>\r\n<p class=\"lead\">Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.<br /> It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.</p>\r\n<p><strong>Nerd alert:</strong> Bootstrap is <a href=\"#less\" title=\"Read about using Bootstrap with Less\">built with Less</a> and was designed to work out of the gate with modern browsers in mind.</p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 4, '<h6>Hotlink the CSS</h6>\r\n<p>For the quickest and easiest start, just copy this snippet into your webpage.</p>\r\n<form>\r\n<textarea class=\"copy-code\" rows=\"1\">&lt;link rel=\"stylesheet\" href=\"http://twitter.github.com/bootstrap/assets/css/bootstrap.min.css\"></textarea>\r\n</form>\r\n', '<h6>Hotlink the CSS</h6>\n\n<p>For the quickest and easiest start, just copy this snippet into your webpage.</p>\n\n<form>\n<textarea class=\"copy-code\" rows=\"1\">&lt;link rel=&#8221;stylesheet&#8221; href=&#8221;http://twitter.github.com/bootstrap/assets/css/bootstrap.min.css&#8221;></textarea>\n</form>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 5, '<h6>Use it with Less</h6>\r\n<p>A fan of using Less? No problem, just clone the repo and add these lines:</p>\r\n<form>\r\n<textarea class=\"copy-code\" rows=\"2\">&lt;link rel=\"stylesheet/less\" href=\"/path/to/bootstrap.less\"&gt;\r\n&lt;script src=\"/path/to/less.js\"&gt;&lt;/script&gt;</textarea>\r\n</form>\r\n', '<h6>Use it with Less</h6>\n\n<p>A fan of using Less? No problem, just clone the repo and add these lines:</p>\n\n<form>\n<textarea class=\"copy-code\" rows=\"2\">&lt;link rel=&#8221;stylesheet/less&#8221; href=&#8221;/path/to/bootstrap.less&#8221;&gt;\n&lt;script src=&#8221;/path/to/less.js&#8221;&gt;&lt;/script&gt;</textarea>\n</form>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 6, '<h6>Fork on GitHub</h6>\r\n<p>Download, fork, pull, file issues, and more with the official Bootstrap repo on Github.</p>\r\n<p><a target=\"_blank\" href=\"https://github.com/twitter/bootstrap\" class=\"btn primary\">Bootstrap on GitHub &#187;</a></p>\r\n<p class=\"current-version\">Currently <a href=\"https://github.com/twitter/bootstrap/wiki/Changelog\">v1.3.0</a></p>\r\n', '<h6>Fork on GitHub</h6>\n\n<p>Download, fork, pull, file issues, and more with the official Bootstrap repo on Github.</p>\n\n<p><a target=\"_blank\" href=\"https://github.com/twitter/bootstrap\" class=\"btn primary\">Bootstrap on GitHub &#187;</a></p>\n\n<p class=\"current-version\">Currently <a href=\"https://github.com/twitter/bootstrap/wiki/Changelog\">v1.3.0</a></p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (140, 8, '<h3>History</h3>\r\n<p>Engineers at Twitter have historically used almost any library they were familiar with to meet front-end requirements. Bootstrap began as an answer to the challenges that presented. With the help of many awesome folks, Bootstrap has grown significantly.</p>\r\n<p>Read more on <a href=\"https://dev.twitter.com/blog/bootstrap-twitter\">dev.twitter.com &#8250;</a></p>\r\n<p>\r\n<a href=\"http://twitter.com/twbootstrap\" class=\"twitter-follow-button\">Follow @twbootstrap</a>\r\n<script src=\"http://platform.twitter.com/widgets.js\" type=\"text/javascript\"></script>\r\n</p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 9, '<h3>Browser support</h3>\r\n<p>Bootstrap is tested and supported in major modern browsers like Chrome, Safari, Internet Explorer, and Firefox.</p>\r\n<img src=\"/workspace/bootstrap/docs/assets/img/browsers.png\" alt=\"Tested and supported in Chrome, Safari, Internet Explorer, and Firefox\" />\r\n<ul>\r\n<li>Latest Safari</li>\r\n<li>Latest Google Chrome</li>\r\n<li>Firefox 4+</li>\r\n<li>Internet Explorer 7+</li>\r\n<li>Opera 11</li>\r\n</ul>\r\n', '<h3>Browser support</h3>\n\n<p>Bootstrap is tested and supported in major modern browsers like Chrome, Safari, Internet Explorer, and Firefox.</p>\n\n<p><img src=\"/workspace/bootstrap/docs/assets/img/browsers.png\" alt=\"Tested and supported in Chrome, Safari, Internet Explorer, and Firefox\" /></p>\n\n<ul>\n<li>Latest Safari</li>\n<li>Latest Google Chrome</li>\n<li>Firefox 4+</li>\n<li>Internet Explorer 7+</li>\n<li>Opera 11</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 10, '<h3>What\'s included</h3>\r\n<p>Bootstrap comes complete with compiled CSS, uncompiled, and example templates.</p>\r\n<ul>\r\n<li><span class=\"label\">New in 1.3</span> <a href=\"/workspace/bootstrap/docs/javascript.html\">Javascript plugins</a></li>\r\n<li>All original .less files</li>\r\n<li>Fully <a href=\"/workspace/bootstrap/bootstrap.css\">compiled</a> and <a href=\"/workspace/bootstrap/bootstrap.min.css\">minified</a> CSS</li>\r\n<li>Complete styleguide documentation</li>\r\n<li>Three example pages with different layouts</li>\r\n</ul>\r\n', '<h3>What&#8217;s included</h3>\n\n<p>Bootstrap comes complete with compiled CSS, uncompiled, and example templates.</p>\n\n<ul>\n<li><span class=\"label\">New in 1.3</span> <a href=\"/workspace/bootstrap/docs/javascript.html\">Javascript plugins</a></li>\n<li>All original .less files</li>\n<li>Fully <a href=\"/workspace/bootstrap/bootstrap.css\">compiled</a> and <a href=\"/workspace/bootstrap/bootstrap.min.css\">minified</a> CSS</li>\n<li>Complete styleguide documentation</li>\n<li>Three example pages with different layouts</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 11, '<h3>Quick-start examples</h3>\r\n<p>Need some quick templates? Check out these basic examples we\'ve put together:</p>\r\n<ul class=\"media-grid\">\r\n<li>\r\n<a href=\"/workspace/bootstrap/examples/hero.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-01.png\" alt=\"Simple three-column layout with hero unit\" /></a>\r\n</li>\r\n<li>\r\n<a href=\"/workspace/bootstrap/examples/fluid.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-02.png\" alt=\"Fluid layout with static sidebar\" /></a>\r\n</li>\r\n<li>\r\n<a href=\"/workspace/bootstrap/examples/container-app.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-03.png\" alt=\"Simple hanging container for apps\" /></a>\r\n</li>\r\n</ul>\r\n', '<h3>Quick-start examples</h3>\n\n<p>Need some quick templates? Check out these basic examples we&#8217;ve put together:</p>\n\n<ul class=\"media-grid\">\n<li>\n<a href=\"/workspace/bootstrap/examples/hero.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-01.png\" alt=\"Simple three-column layout with hero unit\" /></a>\n</li>\n<li>\n<a href=\"/workspace/bootstrap/examples/fluid.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-02.png\" alt=\"Fluid layout with static sidebar\" /></a>\n</li>\n<li>\n<a href=\"/workspace/bootstrap/examples/container-app.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-03.png\" alt=\"Simple hanging container for apps\" /></a>\n</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 13, '<h2>Responsive grid</h2>\r\n<p>A grid system by <a href=\"http://mongrl.com/\">Craig Zheng</a> designed for <a href=\"http://publicculture.org/\">publicculture.org</a> and <a href=\"http://symphony-cms.com/\">symphony-cms.com</a>. Adapted by <a href=\"http://domain7.com/team/stephen-bau/\">Stephen Bau</a> for the <a href=\"http://markuplibrary.org/\">Markup Library</a>.</p>\r\n', '<h2>Responsive grid</h2>\n\n<p>A grid system by <a href=\"http://mongrl.com/\">Craig Zheng</a> designed for <a href=\"http://publicculture.org/\">publicculture.org</a> and <a href=\"http://symphony-cms.com/\">symphony-cms.com</a>. Adapted by <a href=\"http://domain7.com/team/stephen-bau/\">Stephen Bau</a> for the <a href=\"http://markuplibrary.org/\">Markup Library</a>.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 14, '<h3>Sections Grid System</h3>\r\n<ol>\r\n<li><code>class=\"section\"</code> basically designates a \'row\', within which any\r\nnumber of <code>class=\"subsection\"</code> elements represent \'columns\'</li>\r\n<li>The \'column\' widths are specified with another class: either\r\n<code>fragment</code>, <code>simple</code>, <code>compound</code> or <code>complex</code> (semantic nomenclature I\r\nborrowed right from English grammar).</li>\r\n</ol>\r\n<p>So we end up with something like this:</p>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;div class=\"section\"&gt;\r\n  &lt;div class=\"subsection simple\"&gt;\r\n    ...\r\n  &lt;/div&gt;\r\n  &lt;div class=\"subsection compound\"&gt;\r\n    ...\r\n  &lt;/div&gt;\r\n  &lt;div class=\"subsection simple\"&gt;\r\n    ...\r\n  &lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n\r\n<p>Which gives you a half-width column in the middle with two\r\nquarter-width columns on either side. Of course, you could dispense\r\nwith the DIVs if you don\'t need them and just apply those classes to\r\nany other block-level elements. The CSS looks like this:\r\n</p>\r\n<pre class=\"prettyprint linenums\">/* 3-column grid */\r\n.thirds .subsection,\r\n.thirds .simple {\r\n	width: 33.3333%;\r\n}\r\n.thirds .fragment {\r\n	width: 16.6666%;\r\n}\r\n.thirds .compound {\r\n	width: 66.6666%;\r\n}\r\n\r\n/* 4-column grid (default) */\r\n.fragment {\r\n	width: 12.5%;\r\n}\r\n.simple {\r\n	width: 25%;\r\n}\r\n.compound {\r\n	width: 50%;\r\n}\r\n.complex {\r\n	width: 75%;\r\n}\r\n\r\n/* 5-column grid */\r\n.fifths .subsection,\r\n.fifths .simple {\r\n	width: 20%;\r\n}\r\n.fifths .fragment {\r\n	width: 10%;\r\n}\r\n.fifths .compound {\r\n	width: 40%;\r\n}\r\n.fifths .complex {\r\n	width: 60%;\r\n}\r\n.fifths .compound-complex {\r\n	width: 80%;\r\n}\r\n</pre>\r\n', '<h3>Sections Grid System</h3>\n\n<ol>\n<li><code>class=\"section\"</code> basically designates a &#8216;row&#8217;, within which any\nnumber of <code>class=\"subsection\"</code> elements represent &#8216;columns&#8217;</li>\n<li>The &#8216;column&#8217; widths are specified with another class: either\n<code>fragment</code>, <code>simple</code>, <code>compound</code> or <code>complex</code> (semantic nomenclature I\nborrowed right from English grammar).</li>\n</ol>\n\n<p>So we end up with something like this:</p>\n\n<pre class=\"prettyprint linenums\">\n&lt;div class=\"section\"&gt;\n  &lt;div class=\"subsection simple\"&gt;\n    ...\n  &lt;/div&gt;\n  &lt;div class=\"subsection compound\"&gt;\n    ...\n  &lt;/div&gt;\n  &lt;div class=\"subsection simple\"&gt;\n    ...\n  &lt;/div&gt;\n&lt;/div&gt;</pre>\n\n<p>Which gives you a half-width column in the middle with two\nquarter-width columns on either side. Of course, you could dispense\nwith the DIVs if you don&#8217;t need them and just apply those classes to\nany other block-level elements. The CSS looks like this:\n</p>\n\n<pre class=\"prettyprint linenums\">/* 3-column grid */\n.thirds .subsection,\n.thirds .simple {\n    width: 33.3333%;\n}\n.thirds .fragment {\n    width: 16.6666%;\n}\n.thirds .compound {\n    width: 66.6666%;\n}\n\n/* 4-column grid (default) */\n.fragment {\n    width: 12.5%;\n}\n.simple {\n    width: 25%;\n}\n.compound {\n    width: 50%;\n}\n.complex {\n    width: 75%;\n}\n\n/* 5-column grid */\n.fifths .subsection,\n.fifths .simple {\n    width: 20%;\n}\n.fifths .fragment {\n    width: 10%;\n}\n.fifths .compound {\n    width: 40%;\n}\n.fifths .complex {\n    width: 60%;\n}\n.fifths .compound-complex {\n    width: 80%;\n}\n</pre>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 15, '<h2 class=\"content\">5-Column Grid</h2>\r\n<div class=\"section\">\r\n<div class=\"content\">\r\n<p>.content</p>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound-complex\">\r\n<div class=\"content\">\r\n<p>.compound-complex</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection compound-complex\">\r\n<div class=\"content\">\r\n<p>.compound-complex</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<h2 class=\"content\">4-Column Grid</h2>\r\n<div class=\"section\">\r\n<div class=\"content\">\r\n<p>.content</p>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<h2 class=\"content\">3-Column Grid</h2>\r\n<div class=\"section thirds\">\r\n<div class=\"content\">\r\n<p>.content</p>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n</div>\r\n', '<h2 class=\"content\">5-Column Grid</h2>\n\n<div class=\"section\">\n<div class=\"content\">\n<p>.content</p>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound-complex\">\n<div class=\"content\">\n<p>.compound-complex</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection compound-complex\">\n<div class=\"content\">\n<p>.compound-complex</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n</div>\n\n<h2 class=\"content\">4-Column Grid</h2>\n\n<div class=\"section\">\n<div class=\"content\">\n<p>.content</p>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n</div>\n\n<h2 class=\"content\">3-Column Grid</h2>\n\n<div class=\"section thirds\">\n<div class=\"content\">\n<p>.content</p>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n</div>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 19, '<h2>Fixed layout</h2>\r\n<p>The default and simple 940px-wide, centered layout for just about any website or page provided by a single <code>&lt;div.container&gt;</code>.</p>\r\n<div class=\"mini-layout\">\r\n<div class=\"mini-layout-body\"></div>\r\n</div>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;body&gt;\r\n  &lt;div class=\"container\"&gt;\r\n    ...\r\n  &lt;/div&gt;\r\n&lt;/body&gt;\r\n</pre>\r\n', '<h2>Fixed layout</h2>\n\n<p>The default and simple 940px-wide, centered layout for just about any website or page provided by a single <code>&lt;div.container&gt;</code>.</p>\n\n<div class=\"mini-layout\">\n<div class=\"mini-layout-body\"></div>\n</div>\n\n<pre class=\"prettyprint linenums\">\n&lt;body&gt;\n  &lt;div class=\"container\"&gt;\n    ...\n  &lt;/div&gt;\n&lt;/body&gt;\n</pre>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 20, '<h2>Fluid layout</h2>\r\n<p>An alternative, flexible fluid page structure with min- and max-widths and a left-hand sidebar. Great for apps and docs.</p>\r\n<div class=\"mini-layout fluid\">\r\n<div class=\"mini-layout-sidebar\"></div>\r\n<div class=\"mini-layout-body\"></div>\r\n</div>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;body&gt;\r\n  &lt;div class=\"container-fluid\"&gt;\r\n    &lt;div class=\"sidebar\"&gt;\r\n      ...\r\n    &lt;/div&gt;\r\n    &lt;div class=\"content\"&gt;\r\n      ...\r\n    &lt;/div&gt;\r\n  &lt;/div&gt;\r\n&lt;/body&gt;\r\n</pre>\r\n', '<h2>Fluid layout</h2>\n\n<p>An alternative, flexible fluid page structure with min- and max-widths and a left-hand sidebar. Great for apps and docs.</p>\n\n<div class=\"mini-layout fluid\">\n<div class=\"mini-layout-sidebar\"></div>\n<div class=\"mini-layout-body\"></div>\n</div>\n\n<pre class=\"prettyprint linenums\">\n&lt;body&gt;\n  &lt;div class=\"container-fluid\"&gt;\n    &lt;div class=\"sidebar\"&gt;\n      ...\n    &lt;/div&gt;\n    &lt;div class=\"content\"&gt;\n      ...\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/body&gt;\n</pre>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 22, '<h2>Headings &amp; copy</h2>\r\n<p>A standard typographic hierarchy for structuring your webpages.</p>\r\n<p>The entire typographic grid is based on two Less variables in our preboot.less file: <code>@basefont</code> and <code>@baseline</code>. The first is the base font-size used throughout and the second is the base line-height.</p>\r\n<p>We use those variables, and some math, to create the margins, paddings, and line-heights of all our type and more.</p>\r\n', '<h2>Headings &amp; copy</h2>\n\n<p>A standard typographic hierarchy for structuring your webpages.</p>\n\n<p>The entire typographic grid is based on two Less variables in our preboot.less file: <code>@basefont</code> and <code>@baseline</code>. The first is the base font-size used throughout and the second is the base line-height.</p>\n\n<p>We use those variables, and some math, to create the margins, paddings, and line-heights of all our type and more.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 23, '<h1>h1. Heading 1</h1>\r\n<h2>h2. Heading 2</h2>\r\n<h3>h3. Heading 3</h3>\r\n<h4>h4. Heading 4</h4>\r\n<h5>h5. Heading 5</h5>\r\n<h6>h6. Heading 6</h6>\r\n', '<h1>h1. Heading 1</h1>\n\n<h2>h2. Heading 2</h2>\n\n<h3>h3. Heading 3</h3>\n\n<h4>h4. Heading 4</h4>\n\n<h5>h5. Heading 5</h5>\n\n<h6>h6. Heading 6</h6>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 24, '<h3>Example paragraph</h3>\r\n<p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n<h1>Example heading <small>Has sub-heading&hellip;</small></h1>\r\n', '<h3>Example paragraph</h3>\n\n<p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n\n<h1>Example heading <small>Has sub-heading…</small></h1>');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (39, 25, '<h2>Misc. elements</h2>\r\n<p>Using emphasis, addresses, &amp; abbreviations</p>\r\n<p>\r\n<code>&lt;strong&gt;</code>\r\n<code>&lt;em&gt;</code>\r\n<code>&lt;address&gt;</code>\r\n<code>&lt;abbr&gt;</code>\r\n</p>\r\n', '<h2>Misc. elements</h2>\n\n<p>Using emphasis, addresses, &amp; abbreviations</p>\n\n<p>\n<code>&lt;strong&gt;</code>\n<code>&lt;em&gt;</code>\n<code>&lt;address&gt;</code>\n<code>&lt;abbr&gt;</code>\n</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (40, 26, '<h3>When to use</h3>\r\n<p>Emphasis tags (<code>&lt;strong&gt;</code> and <code>&lt;em&gt;</code>) should be used to indicate additional importance or emphasis of a word or phrase relative to its surrounding copy. Use <code>&lt;strong&gt;</code> for importance and <code>&lt;em&gt;</code> for <em>stress</em> emphasis.</p>\r\n<h3>Emphasis in a paragraph</h3>\r\n<p><a href=\"#\">Fusce dapibus</a>, <strong>tellus ac cursus commodo</strong>, <em>tortor mauris condimentum nibh</em>, ut fermentum massa justo sit amet risus. Maecenas faucibus mollis interdum. Nulla vitae elit libero, a pharetra augue.</p>\r\n<p><strong>Note:</strong> It\'s still okay to use <code>&lt;b&gt;</code> and <code>&lt;i&gt;</code> tags in HTML5 and they don\'t have to be styled bold and italic, respectively (although if there is a more semantic element, use it). <code>&lt;b&gt;</code> is meant to highlight words or phrases without conveying additional importance, while <code>&lt;i&gt;</code> is mostly for voice, technical terms, etc.</p>\r\n<h3>Addresses</h3>\r\n<p>The <code>&lt;address&gt;</code> element is used for contact information for its nearest ancestor, or the entire body of work. Here are two examples of how it could be used:</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"span4\">\r\n<address>\r\n<strong>Twitter, Inc.</strong><br />\r\n795 Folsom Ave, Suite 600<br />\r\nSan Francisco, CA 94107<br />\r\n<abbr title=\"Phone\">P:</abbr> (123) 456-7890\r\n</address>\r\n</div>\r\n<div class=\"span4\">\r\n<address>\r\n<strong>Full Name</strong><br />\r\n<a mailto=\"\">first.last@gmail.com</a>\r\n</address>\r\n</div>\r\n</div>\r\n\r\n<p><strong>Note:</strong> Each line in an <code>&lt;address&gt;</code> must end with a line-break (<code>&lt;br /&gt;</code>) or be wrapped in a block-level tag (e.g., <code>&lt;p&gt;</code>) to properly structure the content.</p>\r\n<h3>Abbreviations</h3>\r\n<p>For abbreviations and acronyms, use the <code>&lt;abbr&gt;</code> tag (<code>&lt;acronym&gt;</code> is deprecated in <abbr title=\"HyperText Markup Langugage 5\">HTML5</abbr>). Put the shorthand form within the tag and set a title for the complete name.</p>\r\n', '<h3>When to use</h3>\n\n<p>Emphasis tags (<code>&lt;strong&gt;</code> and <code>&lt;em&gt;</code>) should be used to indicate additional importance or emphasis of a word or phrase relative to its surrounding copy. Use <code>&lt;strong&gt;</code> for importance and <code>&lt;em&gt;</code> for <em>stress</em> emphasis.</p>\n\n<h3>Emphasis in a paragraph</h3>\n\n<p><a href=\"#\">Fusce dapibus</a>, <strong>tellus ac cursus commodo</strong>, <em>tortor mauris condimentum nibh</em>, ut fermentum massa justo sit amet risus. Maecenas faucibus mollis interdum. Nulla vitae elit libero, a pharetra augue.</p>\n\n<p><strong>Note:</strong> It&#8217;s still okay to use <code>&lt;b&gt;</code> and <code>&lt;i&gt;</code> tags in HTML5 and they don&#8217;t have to be styled bold and italic, respectively (although if there is a more semantic element, use it). <code>&lt;b&gt;</code> is meant to highlight words or phrases without conveying additional importance, while <code>&lt;i&gt;</code> is mostly for voice, technical terms, etc.</p>\n\n<h3>Addresses</h3>\n\n<p>The <code>&lt;address&gt;</code> element is used for contact information for its nearest ancestor, or the entire body of work. Here are two examples of how it could be used:</p>\n\n<div class=\"row\">\n<div class=\"span4\">\n<address>\n<strong>Twitter, Inc.</strong><br />\n795 Folsom Ave, Suite 600<br />\nSan Francisco, CA 94107<br />\n<abbr title=\"Phone\">P:</abbr> (123) 456-7890\n</address>\n</div>\n<div class=\"span4\">\n<address>\n<strong>Full Name</strong><br />\n<a mailto=\"\">first.last@gmail.com</a>\n</address>\n</div>\n</div>\n\n<p><strong>Note:</strong> Each line in an <code>&lt;address&gt;</code> must end with a line-break (<code>&lt;br /&gt;</code>) or be wrapped in a block-level tag (e.g., <code>&lt;p&gt;</code>) to properly structure the content.</p>\n\n<h3>Abbreviations</h3>\n\n<p>For abbreviations and acronyms, use the <code>&lt;abbr&gt;</code> tag (<code>&lt;acronym&gt;</code> is deprecated in <abbr title=\"HyperText Markup Langugage 5\">HTML5</abbr>). Put the shorthand form within the tag and set a title for the complete name.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 30, '<h2>Blockquotes</h2>\r\n<p>\r\n<code>&lt;blockquote&gt;</code>\r\n<code>&lt;p&gt;</code>\r\n<code>&lt;small&gt;</code>\r\n</p>\r\n', '<h2>Blockquotes</h2>\n\n<p>\n<code>&lt;blockquote&gt;</code>\n<code>&lt;p&gt;</code>\n<code>&lt;small&gt;</code>\n</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 31, '<h3>How to quote</h3>\r\n<p>To include a blockquote, wrap <code>&lt;blockquote&gt;</code> around <code>&lt;p&gt;</code> and <code>&lt;small&gt;</code> tags. Use the <code>&lt;small&gt;</code> element to cite your source and you\'ll get an em dash <code>&amp;mdash;</code> before it.</p>\r\n<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\r\n<small>Dr. Julius Hibbert</small>\r\n</blockquote>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;blockquote&gt;\r\n  &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.&lt;/p&gt;\r\n  &lt;small&gt;Dr. Julius Hibbert&lt;/small&gt;\r\n&lt;/blockquote&gt;\r\n</pre>\r\n', '<h3>How to quote</h3>\n\n<p>To include a blockquote, wrap <code>&lt;blockquote&gt;</code> around <code>&lt;p&gt;</code> and <code>&lt;small&gt;</code> tags. Use the <code>&lt;small&gt;</code> element to cite your source and you&#8217;ll get an em dash <code>&amp;mdash;</code> before it.</p>\n\n<blockquote>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>\n<small>Dr. Julius Hibbert</small>\n</blockquote>\n\n<pre class=\"prettyprint linenums\">\n&lt;blockquote&gt;\n  &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.&lt;/p&gt;\n  &lt;small&gt;Dr. Julius Hibbert&lt;/small&gt;\n&lt;/blockquote&gt;\n</pre>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 33, '<h4>Unordered <code>&lt;ul&gt;</code></h4>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipiscing elit</li>\r\n<li>Integer molestie lorem at massa</li>\r\n<li>Facilisis in pretium nisl aliquet</li>\r\n<li>Nulla volutpat aliquam velit\r\n<ul>\r\n<li>Phasellus iaculis neque</li>\r\n<li>Purus sodales ultricies</li>\r\n<li>Vestibulum laoreet porttitor sem</li>\r\n<li>Ac tristique libero volutpat at</li>\r\n</ul>\r\n</li>\r\n<li>Faucibus porta lacus fringilla vel</li>\r\n<li>Aenean sit amet erat nunc</li>\r\n<li>Eget porttitor lorem</li>\r\n</ul>\r\n', '<h4>Unordered <code>&lt;ul&gt;</code></h4>\n\n<ul>\n<li>Lorem ipsum dolor sit amet</li>\n<li>Consectetur adipiscing elit</li>\n<li>Integer molestie lorem at massa</li>\n<li>Facilisis in pretium nisl aliquet</li>\n<li>Nulla volutpat aliquam velit\n<ul>\n<li>Phasellus iaculis neque</li>\n<li>Purus sodales ultricies</li>\n<li>Vestibulum laoreet porttitor sem</li>\n<li>Ac tristique libero volutpat at</li>\n</ul>\n</li>\n<li>Faucibus porta lacus fringilla vel</li>\n<li>Aenean sit amet erat nunc</li>\n<li>Eget porttitor lorem</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 34, '<h4>Unstyled <code>&lt;ul.unstyled&gt;</code></h4>\r\n<ul class=\"unstyled\">\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipiscing elit</li>\r\n<li>Integer molestie lorem at massa</li>\r\n<li>Facilisis in pretium nisl aliquet</li>\r\n<li>Nulla volutpat aliquam velit\r\n<ul>\r\n<li>Phasellus iaculis neque</li>\r\n<li>Purus sodales ultricies</li>\r\n<li>Vestibulum laoreet porttitor sem</li>\r\n<li>Ac tristique libero volutpat at</li>\r\n</ul>\r\n</li>\r\n<li>Faucibus porta lacus fringilla vel</li>\r\n<li>Aenean sit amet erat nunc</li>\r\n<li>Eget porttitor lorem</li>\r\n</ul>\r\n', '<h4>Unstyled <code>&lt;ul.unstyled&gt;</code></h4>\n\n<ul class=\"unstyled\">\n<li>Lorem ipsum dolor sit amet</li>\n<li>Consectetur adipiscing elit</li>\n<li>Integer molestie lorem at massa</li>\n<li>Facilisis in pretium nisl aliquet</li>\n<li>Nulla volutpat aliquam velit\n<ul>\n<li>Phasellus iaculis neque</li>\n<li>Purus sodales ultricies</li>\n<li>Vestibulum laoreet porttitor sem</li>\n<li>Ac tristique libero volutpat at</li>\n</ul>\n</li>\n<li>Faucibus porta lacus fringilla vel</li>\n<li>Aenean sit amet erat nunc</li>\n<li>Eget porttitor lorem</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 35, '<h4>Ordered <code>&lt;ol&gt;</code></h4>\r\n<ol>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipiscing elit</li>\r\n<li>Integer molestie lorem at massa</li>\r\n<li>Facilisis in pretium nisl aliquet</li>\r\n<li>Nulla volutpat aliquam velit</li>\r\n<li>Faucibus porta lacus fringilla vel</li>\r\n<li>Aenean sit amet erat nunc</li>\r\n<li>Eget porttitor lorem</li>\r\n</ol>\r\n', '<h4>Ordered <code>&lt;ol&gt;</code></h4>\n\n<ol>\n<li>Lorem ipsum dolor sit amet</li>\n<li>Consectetur adipiscing elit</li>\n<li>Integer molestie lorem at massa</li>\n<li>Facilisis in pretium nisl aliquet</li>\n<li>Nulla volutpat aliquam velit</li>\n<li>Faucibus porta lacus fringilla vel</li>\n<li>Aenean sit amet erat nunc</li>\n<li>Eget porttitor lorem</li>\n</ol>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 36, '<h4>Description <code>dl</code></h4>\r\n<dl>\r\n<dt>Description lists</dt>\r\n<dd>A description list is perfect for defining terms.</dd>\r\n<dt>Euismod</dt>\r\n<dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>\r\n<dd>Donec id elit non mi porta gravida at eget metus.</dd>\r\n<dt>Malesuada porta</dt>\r\n<dd>Etiam porta sem malesuada magna mollis euismod.</dd>\r\n</dl>\r\n', '<h4>Description <code>dl</code></h4>\n\n<dl>\n<dt>Description lists</dt>\n<dd>A description list is perfect for defining terms.</dd>\n<dt>Euismod</dt>\n<dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>\n<dd>Donec id elit non mi porta gravida at eget metus.</dd>\n<dt>Malesuada porta</dt>\n<dd>Etiam porta sem malesuada magna mollis euismod.</dd>\n</dl>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (48, 38, '<h2>Code</h2>\r\n<p>\r\n<code>&lt;code&gt;</code>\r\n<code>&lt;pre&gt;</code>\r\n</p>\r\n<p>Pimp your code in style with two simple tags. For even more awesomeness through JavaScript, drop in Google\'s code prettify library and you\'re set.</p>\r\n', '<h2>Code</h2>\n\n<p>\n<code>&lt;code&gt;</code>\n<code>&lt;pre&gt;</code>\n</p>\n\n<p>Pimp your code in style with two simple tags. For even more awesomeness through JavaScript, drop in Google&#8217;s code prettify library and you&#8217;re set.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (49, 39, '<h3>Presenting code</h3>\r\n<p>Code, blocks of or just snippets inline, can be displayed with style just by wrapping in the right tag. For blocks of code spanning multiple lines, use the <code>&lt;pre&gt;</code> element. For inline code, use the <code>&lt;code&gt;</code> element.</p>\r\n<table class=\"zebra-striped\">\r\n<thead>\r\n<tr>\r\n<th style=\"width: 190px;\">Element</th>\r\n<th>Result</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><code>&lt;code&gt;</code></td>\r\n<td>In a line of text like this, your wrapped code will look like this <code>&gt;html&lt;</code> element.</td>\r\n</tr>\r\n<tr>\r\n<td><code>&lt;pre&gt;</code></td>\r\n<td>\r\n<pre>&lt;div&gt;\r\n  &lt;h1&gt;Heading&lt;/h1&gt;\r\n  &lt;p&gt;Something right here...&lt;/p&gt;\r\n&lt;/div&gt;</pre>\r\n<p><strong>Note:</strong> Be sure to keep code within <code>pre</code> tags as close to the left as possible; it will render all tabs.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><code>&lt;pre class=\"prettyprint\"&gt;</code></td>\r\n<td>\r\n<p>Using the google-code-prettify library, you\'re blocks of code get a slightly different visual style and automatic syntax highlighting.</p>\r\n<pre class=\"prettyprint\">&lt;div&gt;\r\n  &lt;h1&gt;Heading&lt;/h1&gt;\r\n  &lt;p&gt;Something right here...&lt;/p&gt;\r\n&lt;/div&gt;</pre>\r\n<p><a href=\"http://code.google.com/p/google-code-prettify/\">Download google-code-prettify</a> and view the readme for <a href=\"http://google-code-prettify.googlecode.com/svn/trunk/README.html\">how to use</a>.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '<h3>Presenting code</h3>\n\n<p>Code, blocks of or just snippets inline, can be displayed with style just by wrapping in the right tag. For blocks of code spanning multiple lines, use the <code>&lt;pre&gt;</code> element. For inline code, use the <code>&lt;code&gt;</code> element.</p>\n\n<table class=\"zebra-striped\">\n<thead>\n<tr>\n<th style=\"width: 190px;\">Element</th>\n<th>Result</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><code>&lt;code&gt;</code></td>\n<td>In a line of text like this, your wrapped code will look like this <code>&gt;html&lt;</code> element.</td>\n</tr>\n<tr>\n<td><code>&lt;pre&gt;</code></td>\n<td>\n<pre>&lt;div&gt;\n  &lt;h1&gt;Heading&lt;/h1&gt;\n  &lt;p&gt;Something right here...&lt;/p&gt;\n&lt;/div&gt;</pre>\n<p><strong>Note:</strong> Be sure to keep code within <code>pre</code> tags as close to the left as possible; it will render all tabs.</p>\n</td>\n</tr>\n<tr>\n<td><code>&lt;pre class=\"prettyprint\"&gt;</code></td>\n<td>\n<p>Using the google-code-prettify library, you&#8217;re blocks of code get a slightly different visual style and automatic syntax highlighting.</p>\n<pre class=\"prettyprint\">&lt;div&gt;\n  &lt;h1&gt;Heading&lt;/h1&gt;\n  &lt;p&gt;Something right here...&lt;/p&gt;\n&lt;/div&gt;</pre>\n<p><a href=\"http://code.google.com/p/google-code-prettify/\">Download google-code-prettify</a> and view the readme for <a href=\"http://google-code-prettify.googlecode.com/svn/trunk/README.html\">how to use</a>.</p>\n</td>\n</tr>\n</tbody>\n</table>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (50, 41, '<h2>Inline labels</h2>\r\n<p>\r\n<code>&lt;span class=\"label\"&gt;</code>\r\n</p>\r\n<p>Call attention to or flag any phrase in your body text.</p>\r\n', '<h2>Inline labels</h2>\n\n<p>\n<code>&lt;span class=\"label\"&gt;</code>\n</p>\n\n<p>Call attention to or flag any phrase in your body text.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (51, 42, '<h3>Label anything</h3>\r\n<p>Ever needed one of those fancy <span class=\"label success\">New!</span> or <span class=\"label important\">Important</span> flags when writing code? Well, now you have them. Here\'s what\'s included by default:</p>\r\n<table class=\"zebra-striped\">\r\n<thead>\r\n<tr>\r\n<th style=\"width: 50%;\">Label</th>\r\n<th>Result</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<code>&lt;span class=\"label\"&gt;Default&lt;/span&gt;</code>\r\n</td>\r\n<td>\r\n<span class=\"label\">Default</span>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<code>&lt;span class=\"label success\"&gt;New&lt;/span&gt;</code>\r\n</td>\r\n<td>\r\n<span class=\"label success\">New</span>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<code>&lt;span class=\"label warning\"&gt;Warning&lt;/span&gt;</code>\r\n</td>\r\n<td>\r\n<span class=\"label warning\">Warning</span>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<code>&lt;span class=\"label important\"&gt;Important&lt;/span&gt;</code>\r\n</td>\r\n<td>\r\n<span class=\"label important\">Important</span>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<code>&lt;span class=\"label notice\"&gt;Notice&lt;/span&gt;</code>\r\n</td>\r\n<td>\r\n<span class=\"label notice\">Notice</span>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '<h3>Label anything</h3>\n\n<p>Ever needed one of those fancy <span class=\"label success\">New!</span> or <span class=\"label important\">Important</span> flags when writing code? Well, now you have them. Here&#8217;s what&#8217;s included by default:</p>\n\n<table class=\"zebra-striped\">\n<thead>\n<tr>\n<th style=\"width: 50%;\">Label</th>\n<th>Result</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>\n<code>&lt;span class=\"label\"&gt;Default&lt;/span&gt;</code>\n</td>\n<td>\n<span class=\"label\">Default</span>\n</td>\n</tr>\n<tr>\n<td>\n<code>&lt;span class=\"label success\"&gt;New&lt;/span&gt;</code>\n</td>\n<td>\n<span class=\"label success\">New</span>\n</td>\n</tr>\n<tr>\n<td>\n<code>&lt;span class=\"label warning\"&gt;Warning&lt;/span&gt;</code>\n</td>\n<td>\n<span class=\"label warning\">Warning</span>\n</td>\n</tr>\n<tr>\n<td>\n<code>&lt;span class=\"label important\"&gt;Important&lt;/span&gt;</code>\n</td>\n<td>\n<span class=\"label important\">Important</span>\n</td>\n</tr>\n<tr>\n<td>\n<code>&lt;span class=\"label notice\"&gt;Notice&lt;/span&gt;</code>\n</td>\n<td>\n<span class=\"label notice\">Notice</span>\n</td>\n</tr>\n</tbody>\n</table>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 44, '<h2>Media grid</h2>\r\n<p>Display thumbnails of varying sizes on pages with a low HTML footprint and minimal styles.</p>\r\n', '<h2>Media grid</h2>\n\n<p>Display thumbnails of varying sizes on pages with a low HTML footprint and minimal styles.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (53, 45, '<h3>Example thumbnails</h3>\r\n<p>Thumbnails in the <code>.media-grid</code> can be any size, but they work best when mapped directly to the built-in Bootstrap grid system. Image widths like 90, 210, and 330 combine with a few pixels of padding to equal the <code>.span2</code>, <code>.span4</code>, and <code>.span6</code> column sizes.</p>\r\n<h4>Large</h4>\r\n<ul class=\"media-grid\">\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/330x230\" alt=\"\" />\r\n</a>\r\n</li>\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/330x230\" alt=\"\" />\r\n</a>\r\n</li>\r\n</ul>\r\n<h4>Medium</h4>\r\n<ul class=\"media-grid\">\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\r\n</a>\r\n</li>\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\r\n</a>\r\n</li>\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\r\n</a>\r\n</li>\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\r\n</a>\r\n</li>\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\r\n</a>\r\n</li>\r\n</ul>\r\n<h4>Small</h4>\r\n<ul class=\"media-grid\">\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/90x90\" alt=\"\" />\r\n</a>\r\n</li>\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/90x90\" alt=\"\" />\r\n</a>\r\n</li>\r\n<li>\r\n<a href=\"#\">\r\n<img class=\"thumbnail\" src=\"http://placehold.it/90x90\" alt=\"\" />\r\n</a>\r\n</li>\r\n</ul>\r\n<h4>Coding them</h4>\r\n<p>Media grids are easy to use and rather simple on the markup side. Their dimensions are purely based on the size of the images included.</p>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;ul class=\"media-grid\"&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=\"#\"&gt;\r\n      &lt;img class=\"thumbnail\" src=\"http://placehold.it/330x230\" alt=\"\"&gt;\r\n    &lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href=\"#\"&gt;\r\n      &lt;img class=\"thumbnail\" src=\"http://placehold.it/330x230\" alt=\"\"&gt;\r\n    &lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;\r\n</pre>\r\n', '<h3>Example thumbnails</h3>\n\n<p>Thumbnails in the <code>.media-grid</code> can be any size, but they work best when mapped directly to the built-in Bootstrap grid system. Image widths like 90, 210, and 330 combine with a few pixels of padding to equal the <code>.span2</code>, <code>.span4</code>, and <code>.span6</code> column sizes.</p>\n\n<h4>Large</h4>\n\n<ul class=\"media-grid\">\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/330x230\" alt=\"\" />\n</a>\n</li>\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/330x230\" alt=\"\" />\n</a>\n</li>\n</ul>\n\n<h4>Medium</h4>\n\n<ul class=\"media-grid\">\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\n</a>\n</li>\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\n</a>\n</li>\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\n</a>\n</li>\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\n</a>\n</li>\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/210x150\" alt=\"\" />\n</a>\n</li>\n</ul>\n\n<h4>Small</h4>\n\n<ul class=\"media-grid\">\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/90x90\" alt=\"\" />\n</a>\n</li>\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/90x90\" alt=\"\" />\n</a>\n</li>\n<li>\n<a href=\"#\">\n<img class=\"thumbnail\" src=\"http://placehold.it/90x90\" alt=\"\" />\n</a>\n</li>\n</ul>\n\n<h4>Coding them</h4>\n\n<p>Media grids are easy to use and rather simple on the markup side. Their dimensions are purely based on the size of the images included.</p>\n\n<pre class=\"prettyprint linenums\">\n&lt;ul class=\"media-grid\"&gt;\n  &lt;li&gt;\n    &lt;a href=\"#\"&gt;\n      &lt;img class=\"thumbnail\" src=\"http://placehold.it/330x230\" alt=\"\"&gt;\n    &lt;/a&gt;\n  &lt;/li&gt;\n  &lt;li&gt;\n    &lt;a href=\"#\"&gt;\n      &lt;img class=\"thumbnail\" src=\"http://placehold.it/330x230\" alt=\"\"&gt;\n    &lt;/a&gt;\n  &lt;/li&gt;\n&lt;/ul&gt;\n</pre>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 47, '<h2>Building tables</h2>\r\n<p>\r\n<code>&lt;table&gt;</code>\r\n<code>&lt;thead&gt;</code>\r\n<code>&lt;tbody&gt;</code>\r\n<code>&lt;tr&gt;</code>\r\n<code>&lt;th&gt;</code>\r\n<code>&lt;td&gt;</code>\r\n<code>&lt;colspan&gt;</code>\r\n<code>&lt;caption&gt;</code>\r\n</p>\r\n<p>Tables are great&#8212;for a lot of things. Great tables, however, need a bit of markup love to be useful, scalable, and readable (at the code level). Here are a few tips to help.</p>\r\n<p>Always wrap your column headers in a <code>&lt;thead&gt;</code> such that hierarchy is <code>&lt;thead&gt;</code> > <code>&lt;tr&gt;</code> > <code>&lt;th&gt;</code>.</p>\r\n<p>Similar to the column headers, all your table’s body content should be wrapped in a <code>&lt;tbody&gt;</code> so your hierarchy is <code>&lt;tbody&gt;</code> > <code>&lt;tr&gt;</code> > <code>&lt;td&gt;</code>.</p>\r\n', '<h2>Building tables</h2>\n\n<p>\n<code>&lt;table&gt;</code>\n<code>&lt;thead&gt;</code>\n<code>&lt;tbody&gt;</code>\n<code>&lt;tr&gt;</code>\n<code>&lt;th&gt;</code>\n<code>&lt;td&gt;</code>\n<code>&lt;colspan&gt;</code>\n<code>&lt;caption&gt;</code>\n</p>\n\n<p>Tables are great&#8212;for a lot of things. Great tables, however, need a bit of markup love to be useful, scalable, and readable (at the code level). Here are a few tips to help.</p>\n\n<p>Always wrap your column headers in a <code>&lt;thead&gt;</code> such that hierarchy is <code>&lt;thead&gt;</code> > <code>&lt;tr&gt;</code> > <code>&lt;th&gt;</code>.</p>\n\n<p>Similar to the column headers, all your table’s body content should be wrapped in a <code>&lt;tbody&gt;</code> so your hierarchy is <code>&lt;tbody&gt;</code> > <code>&lt;tr&gt;</code> > <code>&lt;td&gt;</code>.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 48, '<h3>Example: Default table styles</h3>\r\n<p>All tables will be automatically styled with only the essential borders to ensure readability and maintain structure. No need to add extra classes or attributes.</p>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>#</th>\r\n<th>First Name</th>\r\n<th>Last Name</th>\r\n<th>Language</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>1</td>\r\n<td>Some</td>\r\n<td>One</td>\r\n<td>English</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Joe</td>\r\n<td>Sixpack</td>\r\n<td>English</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>Stu</td>\r\n<td>Dent</td>\r\n<td>Code</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;table&gt;\r\n  ...\r\n&lt;/table&gt;</pre>\r\n<h3>Example: Zebra-striped</h3>\r\n<p>Get a little fancy with your tables by adding zebra-striping&mdash;just add the <code>.zebra-striped</code> class.</p>\r\n<table class=\"zebra-striped\">\r\n<thead>\r\n<tr>\r\n<th>#</th>\r\n<th>First Name</th>\r\n<th>Last Name</th>\r\n<th>Language</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>1</td>\r\n<td>Some</td>\r\n<td>One</td>\r\n<td>English</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Joe</td>\r\n<td>Sixpack</td>\r\n<td>English</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>Stu</td>\r\n<td>Dent</td>\r\n<td>Code</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Note:</strong> Zebra-striping is a progressive enhancement not available for older browsers like IE8 and below.</p>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;table class=\"zebra-striped\"&gt;\r\n...\r\n&lt;/table&gt;</pre>\r\n<h3>Example: Zebra-striped w/ TableSorter.js</h3>\r\n<p>Taking the previous example, we improve the usefulness of our tables by providing sorting functionality via <a href=\"http://jquery.com\">jQuery</a> and the <a href=\"http://tablesorter.com/docs/\">Tablesorter</a> plugin. <strong>Click any column’s header to change the sort.</strong></p>\r\n<table class=\"zebra-striped\" id=\"sortTableExample\">\r\n<thead>\r\n<tr>\r\n<th>#</th>\r\n<th class=\"yellow\">First Name</th>\r\n<th class=\"blue\">Last Name</th>\r\n<th class=\"green\">Language</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>1</td>\r\n<td>Your</td>\r\n<td>One</td>\r\n<td>English</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Joe</td>\r\n<td>Sixpack</td>\r\n<td>English</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>Stu</td>\r\n<td>Dent</td>\r\n<td>Code</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;script src=\"js/jquery/jquery.tablesorter.min.js\"&gt;&lt;/script&gt;\r\n&lt;script &gt;\r\n  $(function() {\r\n    $(\"table#sortTableExample\").tablesorter({ sortList: [[1,0]] });\r\n  });\r\n&lt;/script&gt;\r\n&lt;table class=\"zebra-striped\"&gt;\r\n  ...\r\n&lt;/table&gt;</pre>\r\n', '<h3>Example: Default table styles</h3>\n\n<p>All tables will be automatically styled with only the essential borders to ensure readability and maintain structure. No need to add extra classes or attributes.</p>\n\n<table>\n<thead>\n<tr>\n<th>#</th>\n<th>First Name</th>\n<th>Last Name</th>\n<th>Language</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>Some</td>\n<td>One</td>\n<td>English</td>\n</tr>\n<tr>\n<td>2</td>\n<td>Joe</td>\n<td>Sixpack</td>\n<td>English</td>\n</tr>\n<tr>\n<td>3</td>\n<td>Stu</td>\n<td>Dent</td>\n<td>Code</td>\n</tr>\n</tbody>\n</table>\n\n<pre class=\"prettyprint linenums\">\n<table>\n  ...\n</table></pre>\n\n<h3>Example: Zebra-striped</h3>\n\n<p>Get a little fancy with your tables by adding zebra-striping—just add the <code>.zebra-striped</code> class.</p>\n\n<table class=\"zebra-striped\">\n<thead>\n<tr>\n<th>#</th>\n<th>First Name</th>\n<th>Last Name</th>\n<th>Language</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>Some</td>\n<td>One</td>\n<td>English</td>\n</tr>\n<tr>\n<td>2</td>\n<td>Joe</td>\n<td>Sixpack</td>\n<td>English</td>\n</tr>\n<tr>\n<td>3</td>\n<td>Stu</td>\n<td>Dent</td>\n<td>Code</td>\n</tr>\n</tbody>\n</table>\n\n<p><strong>Note:</strong> Zebra-striping is a progressive enhancement not available for older browsers like IE8 and below.</p>\n\n<pre class=\"prettyprint linenums\">\n<table class=\"zebra-striped\">\n...\n</table></pre>\n\n<h3>Example: Zebra-striped w/ TableSorter.js</h3>\n\n<p>Taking the previous example, we improve the usefulness of our tables by providing sorting functionality via <a href=\"http://jquery.com\">jQuery</a> and the <a href=\"http://tablesorter.com/docs/\">Tablesorter</a> plugin. <strong>Click any column’s header to change the sort.</strong></p>\n\n<table class=\"zebra-striped\" id=\"sortTableExample\">\n<thead>\n<tr>\n<th>#</th>\n<th class=\"yellow\">First Name</th>\n<th class=\"blue\">Last Name</th>\n<th class=\"green\">Language</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>Your</td>\n<td>One</td>\n<td>English</td>\n</tr>\n<tr>\n<td>2</td>\n<td>Joe</td>\n<td>Sixpack</td>\n<td>English</td>\n</tr>\n<tr>\n<td>3</td>\n<td>Stu</td>\n<td>Dent</td>\n<td>Code</td>\n</tr>\n</tbody>\n</table>\n\n<pre class=\"prettyprint linenums\">\n<script src=\"js/jquery/jquery.tablesorter.min.js\"></script>\n<script >\n  $(function() {\n    $(\"table#sortTableExample\").tablesorter({ sortList: [[1,0]] });\n  });\n</script>\n<table class=\"zebra-striped\">\n  ...\n</table></pre>');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 50, '<h2>Default styles</h2>\r\n<p>All forms are given default styles to present them in a readable and scalable way. Styles are provided for text inputs, select lists, textareas, radio buttons and checkboxes, and buttons.</p>\r\n', '<h2>Default styles</h2>\n\n<p>All forms are given default styles to present them in a readable and scalable way. Styles are provided for text inputs, select lists, textareas, radio buttons and checkboxes, and buttons.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (59, 51, '<form>\r\n<fieldset>\r\n<legend>Example form legend</legend>\r\n<div class=\"clearfix\">\r\n<label for=\"xlInput\">X-Large input</label>\r\n<div class=\"input\">\r\n<input class=\"xlarge\" id=\"xlInput\" name=\"xlInput\" size=\"30\" type=\"text\" />\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"normalSelect\">Select</label>\r\n<div class=\"input\">\r\n<select name=\"normalSelect\" id=\"normalSelect\">\r\n<option>1</option>\r\n<option>2</option>\r\n<option>3</option>\r\n<option>4</option>\r\n<option>5</option>\r\n</select>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"mediumSelect\">Select</label>\r\n<div class=\"input\">\r\n<select class=\"medium\" name=\"mediumSelect\" id=\"mediumSelect\">\r\n<option>1</option>\r\n<option>2</option>\r\n<option>3</option>\r\n<option>4</option>\r\n<option>5</option>\r\n</select>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"multiSelect\">Multiple select</label>\r\n<div class=\"input\">\r\n<select class=\"medium\" multiple=\"multiple\" name=\"multiSelect\" id=\"multiSelect\">\r\n<option>1</option>\r\n<option>2</option>\r\n<option>3</option>\r\n<option>4</option>\r\n<option>5</option>\r\n</select>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label>Uneditable input</label>\r\n<div class=\"input\">\r\n<span class=\"uneditable-input\">Some value here</span>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"disabledInput\">Disabled input</label>\r\n<div class=\"input\">\r\n<input class=\"xlarge disabled\" id=\"disabledInput\" name=\"disabledInput\" size=\"30\" type=\"text\" placeholder=\"Disabled input here… carry on.\" disabled=\"disabled\" />\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"disabledInput\">Disabled textarea</label>\r\n<div class=\"input\">\r\n<textarea class=\"xxlarge\" name=\"textarea\" id=\"textarea\" rows=\"3\" disabled=\"disabled\"></textarea>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix error\">\r\n<label for=\"xlInput2\">X-Large input</label>\r\n<div class=\"input\">\r\n<input class=\"xlarge error\" id=\"xlInput2\" name=\"xlInput2\" size=\"30\" type=\"text\" />\r\n<span class=\"help-inline\">Small snippet of help text</span>\r\n</div>\r\n</div><!-- /clearfix -->\r\n</fieldset>\r\n<fieldset>\r\n<legend>Example form legend</legend>\r\n<div class=\"clearfix\">\r\n<label for=\"prependedInput\">Prepended text</label>\r\n<div class=\"input\">\r\n<div class=\"input-prepend\">\r\n<span class=\"add-on\">@</span>\r\n<input class=\"medium\" id=\"prependedInput\" name=\"prependedInput\" size=\"16\" type=\"text\" />\r\n</div>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"prependedInput2\">Prepended checkbox</label>\r\n<div class=\"input\">\r\n<div class=\"input-prepend\">\r\n<label class=\"add-on\"><input type=\"checkbox\" name=\"\" id=\"\" value=\"\" /></label>\r\n<input class=\"mini\" id=\"prependedInput2\" name=\"prependedInput2\" size=\"16\" type=\"text\" />\r\n</div>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"appendedInput\">Appended checkbox</label>\r\n<div class=\"input\">\r\n<div class=\"input-append\">\r\n<input class=\"mini\" id=\"appendedInput\" name=\"appendedInput\" size=\"16\" type=\"text\" />\r\n<label class=\"add-on active\"><input type=\"checkbox\" name=\"\" id=\"\" value=\"\" checked=\"checked\" /></label>\r\n</div>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"fileInput\">File input</label>\r\n<div class=\"input\">\r\n<input class=\"input-file\" id=\"fileInput\" name=\"fileInput\" type=\"file\" />\r\n</div>\r\n</div><!-- /clearfix -->\r\n</fieldset>\r\n<fieldset>\r\n<legend>Example form legend</legend>\r\n<div class=\"clearfix\">\r\n<label id=\"optionsCheckboxes\">List of options</label>\r\n<div class=\"input\">\r\n<ul class=\"inputs-list\">\r\n<li>\r\n<label>\r\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option1\" />\r\n<span>Option one is this and that&mdash;be sure to include why it’s great</span>\r\n</label>\r\n</li>\r\n<li>\r\n<label>\r\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option2\" />\r\n<span>Option two can also be checked=\"checked\" and included in form results</span>\r\n</label>\r\n</li>\r\n<li>\r\n<label>\r\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option2\" />\r\n<span>Option three can&mdash;yes, you guessed it&mdash;also be checked=\"checked\" and included in form results</span>\r\n</label>\r\n</li>\r\n<li>\r\n<label class=\"disabled\">\r\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option2\" disabled=\"disabled\" />\r\n<span>Option four cannot be checked=\"checked\" as it is disabled.</span>\r\n</label>\r\n</li>\r\n</ul>\r\n<span class=\"help-block\">\r\n<strong>Note:</strong> Labels surround all the options for much larger click areas and a more usable form.\r\n</span>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label>Date range</label>\r\n<div class=\"input\">\r\n<div class=\"inline-inputs\">\r\n<input class=\"small\" type=\"text\" value=\"May 1, 2011\" />\r\n<input class=\"mini\" type=\"text\" value=\"12:00am\" />\r\nto\r\n<input class=\"small\" type=\"text\" value=\"May 8, 2011\" />\r\n<input class=\"mini\" type=\"text\" value=\"11:59pm\" />\r\n<span class=\"help-inline\">All times are shown as Pacific Standard Time (GMT -08:00).</span>\r\n</div>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"textarea\">Textarea</label>\r\n<div class=\"input\">\r\n<textarea class=\"xxlarge\" id=\"textarea2\" name=\"textarea2\" rows=\"3\"></textarea>\r\n<span class=\"help-block\">\r\nBlock of help text to describe the field above if need be.\r\n</span>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label id=\"optionsRadio\">List of options</label>\r\n<div class=\"input\">\r\n<ul class=\"inputs-list\">\r\n<li>\r\n<label>\r\n<input type=\"radio\" checked=\"checked\" name=\"optionsRadios\" value=\"option1\" />\r\n<span>Option one is this and that&mdash;be sure to include why it’s great</span>\r\n</label>\r\n</li>\r\n<li>\r\n<label>\r\n<input type=\"radio\" name=\"optionsRadios\" value=\"option2\" />\r\n<span>Option two can is something else and selecting it will deselect options 1</span>\r\n</label>\r\n</li>\r\n</ul>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"actions\">\r\n<input type=\"submit\" class=\"btn primary\" value=\"Save changes\" />&nbsp;<button type=\"reset\" class=\"btn\">Cancel</button>\r\n</div>\r\n</fieldset>\r\n</form>\r\n', '<form>\n<fieldset>\n<legend>Example form legend</legend>\n<div class=\"clearfix\">\n<label for=\"xlInput\">X-Large input</label>\n<div class=\"input\">\n<input class=\"xlarge\" id=\"xlInput\" name=\"xlInput\" size=\"30\" type=\"text\" />\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"normalSelect\">Select</label>\n<div class=\"input\">\n<select name=\"normalSelect\" id=\"normalSelect\">\n<option>1</option>\n<option>2</option>\n<option>3</option>\n<option>4</option>\n<option>5</option>\n</select>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"mediumSelect\">Select</label>\n<div class=\"input\">\n<select class=\"medium\" name=\"mediumSelect\" id=\"mediumSelect\">\n<option>1</option>\n<option>2</option>\n<option>3</option>\n<option>4</option>\n<option>5</option>\n</select>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"multiSelect\">Multiple select</label>\n<div class=\"input\">\n<select class=\"medium\" multiple=\"multiple\" name=\"multiSelect\" id=\"multiSelect\">\n<option>1</option>\n<option>2</option>\n<option>3</option>\n<option>4</option>\n<option>5</option>\n</select>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label>Uneditable input</label>\n<div class=\"input\">\n<span class=\"uneditable-input\">Some value here</span>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"disabledInput\">Disabled input</label>\n<div class=\"input\">\n<input class=\"xlarge disabled\" id=\"disabledInput\" name=\"disabledInput\" size=\"30\" type=\"text\" placeholder=\"Disabled input here… carry on.\" disabled=\"disabled\" />\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"disabledInput\">Disabled textarea</label>\n<div class=\"input\">\n<textarea class=\"xxlarge\" name=\"textarea\" id=\"textarea\" rows=\"3\" disabled=\"disabled\"></textarea>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix error\">\n<label for=\"xlInput2\">X-Large input</label>\n<div class=\"input\">\n<input class=\"xlarge error\" id=\"xlInput2\" name=\"xlInput2\" size=\"30\" type=\"text\" />\n<span class=\"help-inline\">Small snippet of help text</span>\n</div>\n</div><!-- /clearfix -->\n</fieldset>\n<fieldset>\n<legend>Example form legend</legend>\n<div class=\"clearfix\">\n<label for=\"prependedInput\">Prepended text</label>\n<div class=\"input\">\n<div class=\"input-prepend\">\n<span class=\"add-on\">@</span>\n<input class=\"medium\" id=\"prependedInput\" name=\"prependedInput\" size=\"16\" type=\"text\" />\n</div>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"prependedInput2\">Prepended checkbox</label>\n<div class=\"input\">\n<div class=\"input-prepend\">\n<label class=\"add-on\"><input type=\"checkbox\" name=\"\" id=\"\" value=\"\" /></label>\n<input class=\"mini\" id=\"prependedInput2\" name=\"prependedInput2\" size=\"16\" type=\"text\" />\n</div>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"appendedInput\">Appended checkbox</label>\n<div class=\"input\">\n<div class=\"input-append\">\n<input class=\"mini\" id=\"appendedInput\" name=\"appendedInput\" size=\"16\" type=\"text\" />\n<label class=\"add-on active\"><input type=\"checkbox\" name=\"\" id=\"\" value=\"\" checked=\"checked\" /></label>\n</div>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"fileInput\">File input</label>\n<div class=\"input\">\n<input class=\"input-file\" id=\"fileInput\" name=\"fileInput\" type=\"file\" />\n</div>\n</div><!-- /clearfix -->\n</fieldset>\n<fieldset>\n<legend>Example form legend</legend>\n<div class=\"clearfix\">\n<label id=\"optionsCheckboxes\">List of options</label>\n<div class=\"input\">\n<ul class=\"inputs-list\">\n<li>\n<label>\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option1\" />\n<span>Option one is this and that—be sure to include why it’s great</span>\n</label>\n</li>\n<li>\n<label>\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option2\" />\n<span>Option two can also be checked=”checked” and included in form results</span>\n</label>\n</li>\n<li>\n<label>\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option2\" />\n<span>Option three can—yes, you guessed it—also be checked=”checked” and included in form results</span>\n</label>\n</li>\n<li>\n<label class=\"disabled\">\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option2\" disabled=\"disabled\" />\n<span>Option four cannot be checked=”checked” as it is disabled.</span>\n</label>\n</li>\n</ul>\n<span class=\"help-block\">\n<strong>Note:</strong> Labels surround all the options for much larger click areas and a more usable form.\n</span>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label>Date range</label>\n<div class=\"input\">\n<div class=\"inline-inputs\">\n<input class=\"small\" type=\"text\" value=\"May 1, 2011\" />\n<input class=\"mini\" type=\"text\" value=\"12:00am\" />\nto\n<input class=\"small\" type=\"text\" value=\"May 8, 2011\" />\n<input class=\"mini\" type=\"text\" value=\"11:59pm\" />\n<span class=\"help-inline\">All times are shown as Pacific Standard Time (GMT -08:00).</span>\n</div>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"textarea\">Textarea</label>\n<div class=\"input\">\n<textarea class=\"xxlarge\" id=\"textarea2\" name=\"textarea2\" rows=\"3\"></textarea>\n<span class=\"help-block\">\nBlock of help text to describe the field above if need be.\n</span>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label id=\"optionsRadio\">List of options</label>\n<div class=\"input\">\n<ul class=\"inputs-list\">\n<li>\n<label>\n<input type=\"radio\" checked=\"checked\" name=\"optionsRadios\" value=\"option1\" />\n<span>Option one is this and that—be sure to include why it’s great</span>\n</label>\n</li>\n<li>\n<label>\n<input type=\"radio\" name=\"optionsRadios\" value=\"option2\" />\n<span>Option two can is something else and selecting it will deselect options 1</span>\n</label>\n</li>\n</ul>\n</div>\n</div><!-- /clearfix -->\n<div class=\"actions\">\n<input type=\"submit\" class=\"btn primary\" value=\"Save changes\" /> <button type=\"reset\" class=\"btn\">Cancel</button>\n</div>\n</fieldset>\n</form>');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 54, '<h2>Stacked forms</h2>\r\n<p>Add <code>.form-stacked</code> to your form’s HTML and you’ll have labels on top of their fields instead of to their left. This works great if your forms are short or you have two columns of inputs for heavier forms.</p>\r\n', '<h2>Stacked forms</h2>\n\n<p>Add <code>.form-stacked</code> to your form’s HTML and you’ll have labels on top of their fields instead of to their left. This works great if your forms are short or you have two columns of inputs for heavier forms.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 55, '<form action=\"\" class=\"form-stacked\">\r\n<fieldset>\r\n<legend>Example form legend</legend>\r\n<div class=\"clearfix\">\r\n<label for=\"xlInput3\">X-Large input</label>\r\n<div class=\"input\">\r\n<input class=\"xlarge\" id=\"xlInput3\" name=\"xlInput3\" size=\"30\" type=\"text\" />\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label for=\"stackedSelect\">Select</label>\r\n<div class=\"input\">\r\n<select name=\"stackedSelect\" id=\"stackedSelect\">\r\n<option>1</option>\r\n<option>2</option>\r\n<option>3</option>\r\n<option>4</option>\r\n<option>5</option>\r\n</select>\r\n</div>\r\n</div><!-- /clearfix -->\r\n</fieldset>\r\n<fieldset>\r\n<legend>Example form legend</legend>\r\n<div class=\"clearfix error\">\r\n<label for=\"xlInput4\">X-Large input</label>\r\n<div class=\"input\">\r\n<input class=\"xlarge error\" id=\"xlInput4\" name=\"xlInput4\" size=\"30\" type=\"text\" />\r\n<span class=\"help-inline\">Small snippet of help text</span>\r\n</div>\r\n</div><!-- /clearfix -->\r\n<div class=\"clearfix\">\r\n<label id=\"optionsCheckboxes\">List of options</label>\r\n<div class=\"input\">\r\n<ul class=\"inputs-list\">\r\n<li>\r\n<label>\r\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option1\" />\r\n<span>Option one is this and that&mdash;be sure to include why it’s great</span>\r\n</label>\r\n</li>\r\n<li>\r\n<label>\r\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option2\" />\r\n<span>Option two can also be checked and included in form results</span>\r\n</label>\r\n</li>\r\n</ul>\r\n<span class=\"help-block\">\r\n<strong>Note:</strong> Labels surround all the options for much larger click areas and a more usable form.\r\n</span>\r\n</div>\r\n</div><!-- /clearfix -->\r\n</fieldset>\r\n<div class=\"actions\">\r\n<button type=\"submit\" class=\"btn primary\">Save changes</button>&nbsp;<button type=\"reset\" class=\"btn\">Cancel</button>\r\n</div>\r\n</form>\r\n', '<form action=\"\" class=\"form-stacked\">\n<fieldset>\n<legend>Example form legend</legend>\n<div class=\"clearfix\">\n<label for=\"xlInput3\">X-Large input</label>\n<div class=\"input\">\n<input class=\"xlarge\" id=\"xlInput3\" name=\"xlInput3\" size=\"30\" type=\"text\" />\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label for=\"stackedSelect\">Select</label>\n<div class=\"input\">\n<select name=\"stackedSelect\" id=\"stackedSelect\">\n<option>1</option>\n<option>2</option>\n<option>3</option>\n<option>4</option>\n<option>5</option>\n</select>\n</div>\n</div><!-- /clearfix -->\n</fieldset>\n<fieldset>\n<legend>Example form legend</legend>\n<div class=\"clearfix error\">\n<label for=\"xlInput4\">X-Large input</label>\n<div class=\"input\">\n<input class=\"xlarge error\" id=\"xlInput4\" name=\"xlInput4\" size=\"30\" type=\"text\" />\n<span class=\"help-inline\">Small snippet of help text</span>\n</div>\n</div><!-- /clearfix -->\n<div class=\"clearfix\">\n<label id=\"optionsCheckboxes\">List of options</label>\n<div class=\"input\">\n<ul class=\"inputs-list\">\n<li>\n<label>\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option1\" />\n<span>Option one is this and that—be sure to include why it’s great</span>\n</label>\n</li>\n<li>\n<label>\n<input type=\"checkbox\" name=\"optionsCheckboxes\" value=\"option2\" />\n<span>Option two can also be checked and included in form results</span>\n</label>\n</li>\n</ul>\n<span class=\"help-block\">\n<strong>Note:</strong> Labels surround all the options for much larger click areas and a more usable form.\n</span>\n</div>\n</div><!-- /clearfix -->\n</fieldset>\n<div class=\"actions\">\n<button type=\"submit\" class=\"btn primary\">Save changes</button> <button type=\"reset\" class=\"btn\">Cancel</button>\n</div>\n</form>');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (62, 57, '<h2>Buttons</h2>\r\n<p>As a convention, buttons are used for actions while links are used for objects. For instance, \"Download\" could be a button and \"recent activity\" could be a link.</p>\r\n<p>All buttons default to a light gray style, but a number of functional classes can be applied for different color styles. These classes include a blue <code>.primary</code> class, a light-blue <code>.info</code> class, a green <code>.success</code> class, and a red <code>.danger</code> class.</p>\r\n', '<h2>Buttons</h2>\n\n<p>As a convention, buttons are used for actions while links are used for objects. For instance, &#8220;Download&#8221; could be a button and &#8220;recent activity&#8221; could be a link.</p>\n\n<p>All buttons default to a light gray style, but a number of functional classes can be applied for different color styles. These classes include a blue <code>.primary</code> class, a light-blue <code>.info</code> class, a green <code>.success</code> class, and a red <code>.danger</code> class.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (72, 58, '<h3>Example buttons</h3>\r\n<p>Button styles can be applied to anything with the <code>.btn</code> applied. Typically you\'ll want to apply these to only <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, and select <code>&lt;input&gt;</code> elements. Here\'s how it looks:</p>\r\n<div class=\"well\" style=\"padding: 14px 19px;\">\r\n<button class=\"btn primary\">Primary</button>\r\n<button class=\"btn\">Default</button>\r\n<button class=\"btn info\">Info</button>\r\n<button class=\"btn success\">Success</button>\r\n<button class=\"btn danger\">Danger</button>\r\n</div>\r\n<h3>Alternate sizes</h3>\r\n<p>Fancy larger or smaller buttons? Have at it!</p>\r\n<div class=\"well\">\r\n<a href=\"#\" class=\"btn large primary\">Primary action</a>\r\n<a href=\"#\" class=\"btn large\">Action</a>\r\n</div>\r\n<div class=\"well\" style=\"padding: 16px 19px;\">\r\n<a href=\"#\" class=\"btn small primary\">Primary action</a>\r\n<a href=\"#\" class=\"btn small\">Action</a>\r\n</div>\r\n<h3>Disabled state</h3>\r\n<p>For buttons that are not active or are disabled by the app for one reason or another, use the disabled state. That\'s <code>.disabled</code> for links and <code>:disabled</code> for <code>&lt;button&gt;</code> elements.</p>\r\n<h4>Links</h4>\r\n<div class=\"well\">\r\n<a href=\"#\" class=\"btn large primary disabled\">Primary action</a>\r\n<a href=\"#\" class=\"btn large disabled\">Action</a>\r\n</div>\r\n<h4>Buttons</h4>\r\n<div class=\"well\">\r\n<button class=\"btn large primary disabled\" disabled=\"disabled\">Primary action</button>\r\n<button class=\"btn large\" disabled=\"disabled\">Action</button>\r\n</div>\r\n', '<h3>Example buttons</h3>\n\n<p>Button styles can be applied to anything with the <code>.btn</code> applied. Typically you&#8217;ll want to apply these to only <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, and select <code>&lt;input&gt;</code> elements. Here&#8217;s how it looks:</p>\n\n<div class=\"well\" style=\"padding: 14px 19px;\">\n<button class=\"btn primary\">Primary</button>\n<button class=\"btn\">Default</button>\n<button class=\"btn info\">Info</button>\n<button class=\"btn success\">Success</button>\n<button class=\"btn danger\">Danger</button>\n</div>\n\n<h3>Alternate sizes</h3>\n\n<p>Fancy larger or smaller buttons? Have at it!</p>\n\n<div class=\"well\">\n<a href=\"#\" class=\"btn large primary\">Primary action</a>\n<a href=\"#\" class=\"btn large\">Action</a>\n</div>\n\n<div class=\"well\" style=\"padding: 16px 19px;\">\n<a href=\"#\" class=\"btn small primary\">Primary action</a>\n<a href=\"#\" class=\"btn small\">Action</a>\n</div>\n\n<h3>Disabled state</h3>\n\n<p>For buttons that are not active or are disabled by the app for one reason or another, use the disabled state. That&#8217;s <code>.disabled</code> for links and <code>:disabled</code> for <code>&lt;button&gt;</code> elements.</p>\n\n<h4>Links</h4>\n\n<div class=\"well\">\n<a href=\"#\" class=\"btn large primary disabled\">Primary action</a>\n<a href=\"#\" class=\"btn large disabled\">Action</a>\n</div>\n\n<h4>Buttons</h4>\n\n<div class=\"well\">\n<button class=\"btn large primary disabled\" disabled=\"disabled\">Primary action</button>\n<button class=\"btn large\" disabled=\"disabled\">Action</button>\n</div>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (74, 60, '<h2>Fixed topbar</h2>\r\n<div class=\"topbar-wrapper\" style=\"z-index: 5;\">\r\n<div class=\"topbar\" data-dropdown=\"dropdown\" >\r\n<div class=\"topbar-inner\">\r\n<div class=\"container\">\r\n<h3><a href=\"#\">Project Name</a></h3>\r\n<ul class=\"nav\">\r\n<li class=\"active\"><a href=\"#\">Home</a></li>\r\n<li><a href=\"#\">Link</a></li>\r\n<li><a href=\"#\">Link</a></li>\r\n<li><a href=\"#\">Link</a></li>\r\n<li class=\"dropdown\">\r\n<a href=\"#\" class=\"dropdown-toggle\">Dropdown</a>\r\n<ul class=\"dropdown-menu\">\r\n<li><a href=\"#\">Secondary link</a></li>\r\n<li><a href=\"#\">Something else here</a></li>\r\n<li class=\"divider\"></li>\r\n<li><a href=\"#\">Another link</a></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<form class=\"pull-left\" action=\"\">\r\n<input type=\"text\" placeholder=\"Search\" />\r\n</form>\r\n<ul class=\"nav secondary-nav\">\r\n<li class=\"dropdown\">\r\n<a href=\"#\" class=\"dropdown-toggle\">Dropdown</a>\r\n<ul class=\"dropdown-menu\">\r\n<li><a href=\"#\">Secondary link</a></li>\r\n<li><a href=\"#\">Something else here</a></li>\r\n<li class=\"divider\"></li>\r\n<li><a href=\"#\">Another link</a></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>\r\n</div><!-- /topbar-inner -->\r\n</div><!-- /topbar -->\r\n</div><!-- /topbar-wrapper -->\r\n', '<h2>Fixed topbar</h2>\n\n<div class=\"topbar-wrapper\" style=\"z-index: 5;\">\n<div class=\"topbar\" data-dropdown=\"dropdown\" >\n<div class=\"topbar-inner\">\n<div class=\"container\">\n<h3><a href=\"#\">Project Name</a></h3>\n<ul class=\"nav\">\n<li class=\"active\"><a href=\"#\">Home</a></li>\n<li><a href=\"#\">Link</a></li>\n<li><a href=\"#\">Link</a></li>\n<li><a href=\"#\">Link</a></li>\n<li class=\"dropdown\">\n<a href=\"#\" class=\"dropdown-toggle\">Dropdown</a>\n<ul class=\"dropdown-menu\">\n<li><a href=\"#\">Secondary link</a></li>\n<li><a href=\"#\">Something else here</a></li>\n<li class=\"divider\"></li>\n<li><a href=\"#\">Another link</a></li>\n</ul>\n</li>\n</ul>\n<form class=\"pull-left\" action=\"\">\n<input type=\"text\" placeholder=\"Search\" />\n</form>\n<ul class=\"nav secondary-nav\">\n<li class=\"dropdown\">\n<a href=\"#\" class=\"dropdown-toggle\">Dropdown</a>\n<ul class=\"dropdown-menu\">\n<li><a href=\"#\">Secondary link</a></li>\n<li><a href=\"#\">Something else here</a></li>\n<li class=\"divider\"></li>\n<li><a href=\"#\">Another link</a></li>\n</ul>\n</li>\n</ul>\n</div>\n</div><!-- /topbar-inner -->\n</div><!-- /topbar -->\n</div>\n\n<!-- /topbar-wrapper -->\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (75, 62, '<h4>What is it</h4>\r\n<p>Our topbar is a fixed bar that houses a website’s logo or name, primary navigation, and search form.</p>\r\n', '<h4>What is it</h4>\n\n<p>Our topbar is a fixed bar that houses a website’s logo or name, primary navigation, and search form.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (76, 63, '<h4>Customizable</h4>\r\n<p>All elements within, and the entire topbar as well, are optional. You can choose to include a logo/name, nav, search, and a secondary nav&mdash;or any combination of that.</p>\r\n', '<h4>Customizable</h4>\n\n<p>All elements within, and the entire topbar as well, are optional. You can choose to include a logo/name, nav, search, and a secondary nav—or any combination of that.</p>');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (77, 64, '<h4>Dropdowns included</h4>\r\n<p>As part of the main navigation, we’ve included the ability for you to add dropdowns to your nav. Check out the secondary nav above (right aligned) to see how it’s done. Dropdowns <code>li</code> tags also support <code>.active</code> for showing current page selection.</p>\r\n', '<h4>Dropdowns included</h4>\n\n<p>As part of the main navigation, we’ve included the ability for you to add dropdowns to your nav. Check out the secondary nav above (right aligned) to see how it’s done. Dropdowns <code>li</code> tags also support <code>.active</code> for showing current page selection.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (78, 65, '<p><strong>Note:</strong> When using the topbar on any page, be sure to account for the overlap it causes by adding <code>padding-top: 40px;</code> to your <code>body</code>.</p>\r\n', '<p><strong>Note:</strong> When using the topbar on any page, be sure to account for the overlap it causes by adding <code>padding-top: 40px;</code> to your <code>body</code>.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (114, 66, '<h2>Tabs and pills</h2>\r\n<p>Create simple secondary navigation with a <code>&lt;ul&gt;</code>. Swap between tabs or pills by adding the appropriate class.</p>\r\n<p>Great for sub-sections of content like our account settings pages and user timelines for toggling between pages of like content. Available in tabbed or pill styles.</p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 68, '<ul class=\"tabs\">\r\n<li class=\"active\"><a href=\"#\">Home</a></li>\r\n<li><a href=\"#\">Profile</a></li>\r\n<li><a href=\"#\">Messages</a></li>\r\n<li><a href=\"#\">Settings</a></li>\r\n<li><a href=\"#\">Contact</a></li>\r\n<li class=\"dropdown\" data-dropdown=\"dropdown\">\r\n<a href=\"#\" class=\"dropdown-toggle\">Dropdown</a>\r\n<ul class=\"dropdown-menu\">\r\n<li><a href=\"#\">Secondary link</a></li>\r\n<li><a href=\"#\">Something else here</a></li>\r\n<li class=\"divider\"></li>\r\n<li><a href=\"#\">Another link</a></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;ul class=\"tabs\"&gt;\r\n  &lt;li class=\"active\"&gt;&lt;a href=\"#\"&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Profile&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Messages&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Settings&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Contact&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n</pre>\r\n<ul class=\"pills\">\r\n<li class=\"active\"><a href=\"#\">Home</a></li>\r\n<li><a href=\"#\">Profile</a></li>\r\n<li><a href=\"#\">Messages</a></li>\r\n<li><a href=\"#\">Settings</a></li>\r\n<li><a href=\"#\">Contact</a></li>\r\n</ul>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;ul class=\"pills\"&gt;\r\n  &lt;li class=\"active\"&gt;&lt;a href=\"#\"&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Profile&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Messages&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Settings&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Contact&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n</pre>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (142, 84, '<h2>Modals</h2>\r\n<p>Modals&#8212;dialogs or lightboxes&#8212;are great for contextual actions in situations where it’s important that the background context be maintained.</p>\r\n<p><a class=\"btn js-btn\" href=\"/workspace/bootstrap/docs/javascript.html#modal\">Get the javascript &#187;</a></p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (119, 85, '<div class=\"well\" style=\"background-color: #888; border: none; padding: 40px;\">\r\n<!-- Modal -->\r\n<div class=\"modal\" style=\"position: relative; top: auto; left: auto; margin: 0 auto; z-index: 1\">\r\n<div class=\"modal-header\">\r\n<a href=\"#\" class=\"close\">&#215;</a>\r\n<h3>Modal Heading</h3>\r\n</div>\r\n<div class=\"modal-body\">\r\n<p>One fine body…</p>\r\n</div>\r\n<div class=\"modal-footer\">\r\n<a href=\"#\" class=\"btn primary\">Primary</a>\r\n<a href=\"#\" class=\"btn secondary\">Secondary</a>\r\n</div>\r\n</div>\r\n</div>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (143, 87, '<h2>Tooltips</h2>\r\n<p>Twipsies are super useful for aiding a confused user and pointing them in the right direction.</p>\r\n<p><a class=\"btn js-btn\" href=\"/workspace/bootstrap/docs/javascript.html#twipsy\">Get the javascript &#187;</a></p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (121, 88, '<div class=\"twipsies well\">\r\n<div style=\"position: relative\">\r\n<p class=\"muted\" style=\"margin-bottom: 0\">\r\nLorem ipsum dolar sit amet illo error <a href=\"#\" title=\"below\">ipsum</a> veritatis aut iste perspiciatis iste voluptas natus illo quasi odit aut natus consequuntur consequuntur, aut natus illo voluptatem odit perspiciatis laudantium rem doloremque totam voluptas. <a href=\"#\" title=\"right\">Voluptasdicta</a> eaque beatae aperiam ut enim voluptatem explicabo explicabo, voluptas quia odit fugit accusantium totam totam architecto explicabo sit quasi fugit fugit, totam doloremque unde sunt <a href=\"#\" title=\"left\">sed</a> dicta quae accusantium fugit voluptas nemo voluptas voluptatem <a href=\"#\" title=\"above\">rem</a> quae aut veritatis quasi quae.\r\n</p>\r\n</div>\r\n</div>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (82, 70, '<h2>Breadcrumbs</h2>\r\n<p>Breadcrumb navigation is used as a way to show users where they are within an app or a site, but not for primary navigation.</p>\r\n', '<h2>Breadcrumbs</h2>\n\n<p>Breadcrumb navigation is used as a way to show users where they are within an app or a site, but not for primary navigation.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (84, 71, '<ul class=\"breadcrumb\">\r\n<li class=\"active\">Home</li>\r\n</ul>\r\n<ul class=\"breadcrumb\">\r\n<li><a href=\"#\">Home</a> <span class=\"divider\">/</span></li>\r\n<li class=\"active\">Middle page</li>\r\n</ul>\r\n<ul class=\"breadcrumb\">\r\n<li><a href=\"#\">Home</a> <span class=\"divider\">/</span></li>\r\n<li><a href=\"#\">Middle page</a> <span class=\"divider\">/</span></li>\r\n<li class=\"active\">Another one</li>\r\n</ul>\r\n<ul class=\"breadcrumb\">\r\n<li><a href=\"#\">Home</a> <span class=\"divider\">/</span></li>\r\n<li><a href=\"#\">Middle page</a> <span class=\"divider\">/</span></li>\r\n<li><a href=\"#\">Another one</a> <span class=\"divider\">/</span></li>\r\n<li class=\"active\">You are here</li>\r\n</ul>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;ul class=\"breadcrumb\"&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Home&lt;/a&gt; &lt;span class=\"divider\"&gt;/&lt;/span&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Middle page&lt;/a&gt; &lt;span class=\"divider\"&gt;/&lt;/span&gt;&lt;/li&gt;\r\n  &lt;li&gt;&lt;a href=\"#\"&gt;Another one&lt;/a&gt; &lt;span class=\"divider\"&gt;/&lt;/span&gt;&lt;/li&gt;\r\n  &lt;li class=\"active\"&gt;You are here&lt;/li&gt;\r\n&lt;/ul&gt;\r\n</pre>\r\n', '<ul class=\"breadcrumb\">\n<li class=\"active\">Home</li>\n</ul>\n\n<ul class=\"breadcrumb\">\n<li><a href=\"#\">Home</a> <span class=\"divider\">/</span></li>\n<li class=\"active\">Middle page</li>\n</ul>\n\n<ul class=\"breadcrumb\">\n<li><a href=\"#\">Home</a> <span class=\"divider\">/</span></li>\n<li><a href=\"#\">Middle page</a> <span class=\"divider\">/</span></li>\n<li class=\"active\">Another one</li>\n</ul>\n\n<ul class=\"breadcrumb\">\n<li><a href=\"#\">Home</a> <span class=\"divider\">/</span></li>\n<li><a href=\"#\">Middle page</a> <span class=\"divider\">/</span></li>\n<li><a href=\"#\">Another one</a> <span class=\"divider\">/</span></li>\n<li class=\"active\">You are here</li>\n</ul>\n\n<pre class=\"prettyprint linenums\">\n&lt;ul class=\"breadcrumb\"&gt;\n  &lt;li&gt;&lt;a href=\"#\"&gt;Home&lt;/a&gt; &lt;span class=\"divider\"&gt;/&lt;/span&gt;&lt;/li&gt;\n  &lt;li&gt;&lt;a href=\"#\"&gt;Middle page&lt;/a&gt; &lt;span class=\"divider\"&gt;/&lt;/span&gt;&lt;/li&gt;\n  &lt;li&gt;&lt;a href=\"#\"&gt;Another one&lt;/a&gt; &lt;span class=\"divider\"&gt;/&lt;/span&gt;&lt;/li&gt;\n  &lt;li class=\"active\"&gt;You are here&lt;/li&gt;\n&lt;/ul&gt;\n</pre>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (85, 73, '<h2>Pagination</h2>\r\n<p>Ultra simplistic and minimally styled pagination inspired by Rdio. The large block is hard to miss, easily scalable, and provides large click areas.</p>\r\n', '<h2>Pagination</h2>\n\n<p>Ultra simplistic and minimally styled pagination inspired by Rdio. The large block is hard to miss, easily scalable, and provides large click areas.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (98, 74, '<div class=\"pagination\">\r\n<ul>\r\n<li class=\"prev disabled\"><a href=\"#\">&#8592; Previous</a></li>\r\n<li class=\"active\"><a href=\"#\">1</a></li>\r\n<li><a href=\"#\">2</a></li>\r\n<li><a href=\"#\">3</a></li>\r\n<li><a href=\"#\">4</a></li>\r\n<li><a href=\"#\">5</a></li>\r\n<li class=\"next\"><a href=\"#\">Next &#8594;</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"pagination\">\r\n<ul>\r\n<li class=\"prev\"><a href=\"#\">&#8592; Previous</a></li>\r\n<li class=\"active\"><a href=\"#\">10</a></li>\r\n<li><a href=\"#\">11</a></li>\r\n<li><a href=\"#\">12</a></li>\r\n<li class=\"disabled\"><a href=\"#\">…</a></li>\r\n<li><a href=\"#\">19</a></li>\r\n<li><a href=\"#\">20</a></li>\r\n<li><a href=\"#\">21</a></li>\r\n<li class=\"next\"><a href=\"#\">Next &#8594;</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"pagination\">\r\n<ul>\r\n<li class=\"prev\"><a href=\"#\">&#8592; Previous</a></li>\r\n<li><a href=\"#\">10</a></li>\r\n<li><a href=\"#\">11</a></li>\r\n<li><a href=\"#\">12</a></li>\r\n<li><a href=\"#\">13</a></li>\r\n<li><a href=\"#\">14</a></li>\r\n<li class=\"active\"><a href=\"#\">15</a></li>\r\n<li><a href=\"#\">16</a></li>\r\n<li><a href=\"#\">17</a></li>\r\n<li><a href=\"#\">18</a></li>\r\n<li><a href=\"#\">19</a></li>\r\n<li><a href=\"#\">20</a></li>\r\n<li class=\"next\"><a href=\"#\">Next &#8594;</a></li>\r\n</ul>\r\n</div>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;div class=\"pagination\"&gt;\r\n  &lt;ul&gt;\r\n    &lt;li class=\"prev disabled\"&gt;&lt;a href=\"#\"&gt;&amp;#8592; Previous&lt;/a&gt;&lt;/li>\r\n    &lt;li class=\"active\"&gt;&lt;a href=\"#\"&gt;1&lt;/a&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;a href=\"#\"&gt;2&lt;/a&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;a href=\"#\"&gt;3&lt;/a&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;a href=\"#\"&gt;4&lt;/a&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;a href=\"#\"&gt;5&lt;/a&gt;&lt;/li&gt;\r\n    &lt;li class=\"next\"&gt;&lt;a href=\"#\"&gt;Next &amp;#8594;&lt;/a&gt;&lt;/li>\r\n  &lt;/ul&gt;\r\n&lt;/div&gt;\r\n</pre>', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (101, 76, '<h2>Basic alerts</h2>\r\n<p><code>.alert-message</code></p>\r\n<p>One-line messages for highlighting the failure, possible failure, or success of an action. Particularly useful for forms.</p>\r\n<p><a class=\"btn js-btn\" href=\"./javascript.html#alerts\">Get the JavaScript &#187;</a></p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 81, '<div class=\"alert-message block-message error\">\r\n<a class=\"close\" href=\"#\">&#215;</a>\r\n<p><strong>Oh snap! You got an error!</strong> Change this and that and try again. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum.</p>\r\n<p><a class=\"btn small\" href=\"#\">Take this action</a> <a class=\"btn small\" href=\"#\">Or do this</a></p>\r\n</div>\r\n<div class=\"alert-message block-message warning\">\r\n<a class=\"close\" href=\"#\">&#215;</a>\r\n<p><strong>Holy gaucamole! This is a warning!</strong> Best check yo self, you’re not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\r\n<p><a class=\"btn small\" href=\"#\">Take this action</a> <a class=\"btn small\" href=\"#\">Or do this</a></p>\r\n</div>\r\n<div class=\"alert-message block-message success\">\r\n<a class=\"close\" href=\"#\">&#215;</a>\r\n<p><strong>Well done!</strong> You successfully read this alert message. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas faucibus mollis interdum.</p>\r\n<p><a class=\"btn small\" href=\"#\">Take this action</a> <a class=\"btn small\" href=\"#\">Or do this</a></p>\r\n</div>\r\n<div class=\"alert-message block-message info\">\r\n<a class=\"close\" href=\"#\">&#215;</a>\r\n<p><strong>Heads up!</strong> This is an alert that needs your attention, but it’s not a huge priority just yet.</p>\r\n<p><a class=\"btn small\" href=\"#\">Take this action</a> <a class=\"btn small\" href=\"#\">Or do this</a></p>\r\n</div>\r\n<h4>Example code</h4>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;div class=\"alert-message block-message warning\"&gt;\r\n  &lt;a class=\"close\" href=\"#\"&gt;&times;&lt;/a&gt;\r\n  &lt;p&gt;&lt;strong&gt;Holy guacamole! This is a warning!&lt;/strong&gt; Best check yo self, you’re not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.&lt;/p&gt;\r\n  &lt;div class=\"alert-actions\"&gt;\r\n    &lt;a class=\"btn small\" href=\"#\"&gt;Take this action&lt;/a&gt; &lt;a class=\"btn small\" href=\"#\"&gt;Or do this&lt;/a>\r\n  &lt;/div&gt;\r\n&lt;/div&gt;\r\n</pre>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (110, 77, '<div class=\"alert-message warning\">\r\n<a class=\"close\" href=\"#\">&#215;</a>\r\n<p><strong>Holy guacamole!</strong> Best check yo self, you’re not looking too good.</p>\r\n</div>\r\n<div class=\"alert-message error\">\r\n<a class=\"close\" href=\"#\">&#215;</a>\r\n<p><strong>Oh snap!</strong> Change this and that and try again.</p>\r\n</div>\r\n<div class=\"alert-message success\">\r\n<a class=\"close\" href=\"#\">&#215;</a>\r\n<p><strong>Well done!</strong> You successfully read this alert message.</p>\r\n</div>\r\n<div class=\"alert-message info\">\r\n<a class=\"close\" href=\"#\">&#215;</a>\r\n<p><strong>Heads up!</strong> This is an alert that needs your attention, but it’s not a huge priority just yet.</p>\r\n</div>\r\n<h4>Example code</h4>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;div class=\"alert-message warning\"&gt;\r\n  &lt;a class=\"close\" href=\"#\"&gt;&times;&lt;/a&gt;\r\n  &lt;p&gt;&lt;strong&gt;Holy guacamole!&lt;/strong&gt; Best check yo self, you’re not looking too good.&lt;/p&gt;\r\n&lt;/div&gt;\r\n</pre>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (111, 80, '<h2>Block messages</h2>\r\n<p><code>.alert-message.block-message</code></p>\r\n<p>For messages that require a bit of explanation, we have paragraph style alerts. These are perfect for bubbling up longer error messages, warning a user of a pending action, or just presenting information for more emphasis on the page.</p>\r\n<p><a class=\"btn js-btn\" href=\"./javascript.html#alerts\">Get the javascript &#187;</a></p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (144, 90, '<h2>Popovers</h2>\r\n<p>Use popovers to provide subtextual information to a page without affecting layout.</p>\r\n<p><a class=\"btn js-btn\" href=\"/workspace/bootstrap/docs/javascript.html#popover\">Get the javascript &#187;</a></p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (129, 91, '<div class=\"well popover-well\">\r\n<div class=\"popover-wrapper\">\r\n<div class=\"popover left\">\r\n<div class=\"arrow\"></div>\r\n<div class=\"inner\">\r\n<h3 class=\"title\">Popover Title</h3>\r\n<div class=\"content\">\r\n<p>Etiam porta sem malesuada magna mollis euismod. Maecenas faucibus mollis interdum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<img class=\"large-bird\" src=\"/workspace/bootstrap/docs/assets/img/bird.png\" />\r\n</div>\r\n</div>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (141, 93, '<h2>Getting started</h2>\r\n<p>Integrating javascript with the Bootstrap library is super easy. Below we go over the basics and provide you with some awesome plugins to get you started!</p>\r\n<p><a class=\"btn primary\" href=\"/workspace/bootstrap/docs/javascript.html\">View javascript docs &#187;</a></p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (132, 94, '<h3>What\'s included</h3>\r\n<p>Bring some of Bootstrap\'s primary components to life with new custom plugins that work with <a href=\"http://jquery.com/\" target=\"_blank\">jQuery</a> and <a href=\"http://ender.no.de\" target=\"_blank\">Ender</a>. We encourage you to extend and modify them to fit your specific development needs.</p>\r\n<table class=\"zebra-striped\">\r\n<thead>\r\n<tr>\r\n<th style=\"width: 150px;\">File</th>\r\n<th>Description</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><a href=\"./javascript.html#modal\">bootstrap-modal.js</a></td>\r\n<td>Our Modal plugin is a <strong>super</strong> slim take on the traditional modal js plugin! We took special care to include only the bare functionality that we require at twitter.</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"./javascript.html#alerts\">bootstrap-alerts.js</a></td>\r\n<td>The alert plugin is a super tiny class for adding close functionality to alerts.</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"./javascript.html#dropdowns\">bootstrap-dropdown.js</a></td>\r\n<td>This plugin is for adding dropdown interaction to the bootstrap topbar or tabbed navigations.</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"./javascript.html#scrollspy\">bootstrap-scrollspy.js</a></td>\r\n<td>The ScrollSpy plugin is for adding an auto updating nav based on scroll position to the bootstrap topbar.</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"./javascript.html#tabs\">bootstrap-tabs.js</a></td>\r\n<td>This plugin adds quick, dynamic tab and pill functionality for cycling through local content.</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"./javascript.html#twipsy\">bootstrap-twipsy.js</a></td>\r\n<td>Based on the excellent jQuery.tipsy plugin written by Jason Frame; twipsy is an updated version, which doesn\'t rely on images, uses css3 for animations, and data-attributes for local title storage!</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"./javascript.html#popover\">bootstrap-popover.js</a></td>\r\n<td>The popover plugin provides a simple interface for adding popovers to your application. It extends the <a href=\"#twipsy\">boostrap-twipsy.js</a> plugin, so be sure to grab that file as well when including popovers in your project!</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Is javascript necessary?</h3>\r\n<p><strong>Nope!</strong> Bootstrap is designed first and foremost to be a CSS library. This javascript provides a basic interactive layer on top of the included styles.</p>\r\n<p>However, for those who do need javascript, we\'ve provided the plugins above to help you understand how to integrate Bootstrap with javascript and to give you a quick, lightweight option for the basic functionality right away.</p>\r\n<p>For more information and to see some live demos, please refer to our <a href=\"./javascript.html\">plugin documentation page</a>.</p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (136, 96, '<p>Bootstrap was built from <a href=\"http://markdotto.com/bootstrap/\">Preboot</a>, an open-source pack of mixins and variables to be used in conjunction with <a href=\"http://lesscss.org\" target=\"_blank\">Less</a>, a CSS preprocessor for faster and easier web development.</p>\r\n<p>Check out how we used Preboot in Bootstrap and how you can make use of it should you choose to run Less on your next project.</p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (139, 97, '<h2>How to use it</h2>\r\n<p>Use this option to make full use of Bootstrap’s Less variables, mixins, and nesting in CSS via javascript in your browser.</p>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;link rel=\"stylesheet/less\" href=\"less/bootstrap.less\" media=\"all\" /&gt;\r\n&lt;script src=\"js/less-1.1.3.min.js\"&gt;&lt;/script&gt;</pre>\r\n<p>Not feeling the .js solution? <a href=\"http://incident57.com/less\" target=\"_blank\">Try the Less Mac app</a> or <a href=\"http://lesscss.org/#-client-side-usage\" target=\"_blank\">use Node.js</a> to compile when you deploy your code.</p>\r\n\r\n<h2>What’s included</h2>\r\n<p>Here are some of the highlights of what’s included in Twitter Bootstrap as part of Bootstrap. Head over to the Bootstrap website or Github project page to download and learn more.</p>\r\n<h3>Variables</h3>\r\n<p>Variables in Less are perfect for maintaining and updating your CSS headache free. When you want to change a color value or a frequently used value, update it in one spot and you’re set.</p>\r\n<pre class=\"prettyprint linenums\">\r\n// Links\r\n@linkColor:         #8b59c2;\r\n@linkColorHover:    darken(@linkColor, 10);\r\n\r\n// Grays\r\n@black:             #000;\r\n@grayDark:          lighten(@black, 25%);\r\n@gray:              lighten(@black, 50%);\r\n@grayLight:         lighten(@black, 70%);\r\n@grayLighter:       lighten(@black, 90%);\r\n@white:             #fff;\r\n\r\n// Accent Colors\r\n@blue:              #08b5fb;\r\n@green:             #46a546;\r\n@red:               #9d261d;\r\n@yellow:            #ffc40d;\r\n@orange:            #f89406;\r\n@pink:              #c3325f;\r\n@purple:            #7a43b6;\r\n\r\n// Baseline grid\r\n@basefont:          13px;\r\n@baseline:          18px;\r\n</pre>\r\n\r\n<h3>Commenting</h3>\r\n<p>Less also provides another style of commenting in addition to CSS’s normal <code>/* ... */</code> syntax.</p>\r\n<pre class=\"prettyprint linenums\">\r\n// This is a comment\r\n/* This is also a comment */\r\n</pre>\r\n\r\n<h3>Mixins up the wazoo</h3>\r\n<p>Mixins are basically includes or partials for CSS, allowing you to combine a block of code into one. They’re great for vendor prefixed properties like <code>box-shadow</code>, cross-browser gradients, font stacks, and more. Below is a sample of the mixins that are included with Bootstrap.</p>\r\n<h4>Font stacks</h4>\r\n<pre class=\"prettyprint linenums\">\r\n#font {\r\n.shorthand(@weight: normal, @size: 14px, @lineHeight: 20px) {\r\nfont-size: @size;\r\nfont-weight: @weight;\r\nline-height: @lineHeight;\r\n}\r\n.sans-serif(@weight: normal, @size: 14px, @lineHeight: 20px) {\r\nfont-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\nfont-size: @size;\r\nfont-weight: @weight;\r\nline-height: @lineHeight;\r\n}\r\n...\r\n}\r\n</pre>\r\n<h4>Gradients</h4>\r\n<pre class=\"prettyprint linenums\">\r\n#gradient {\r\n...\r\n.vertical (@startColor: #555, @endColor: #333) {\r\nbackground-color: @endColor;\r\nbackground-repeat: repeat-x;\r\nbackground-image: -khtml-gradient(linear, left top, left bottom, from(@startColor), to(@endColor)); // Konqueror\r\nbackground-image: -moz-linear-gradient(@startColor, @endColor); // FF 3.6+\r\nbackground-image: -ms-linear-gradient(@startColor, @endColor); // IE10\r\nbackground-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, @startColor), color-stop(100%, @endColor)); // Safari 4+, Chrome 2+\r\nbackground-image: -webkit-linear-gradient(@startColor, @endColor); // Safari 5.1+, Chrome 10+\r\nbackground-image: -o-linear-gradient(@startColor, @endColor); // Opera 11.10\r\nbackground-image: linear-gradient(@startColor, @endColor); // The standard\r\n}\r\n...\r\n}\r\n</pre>\r\n\r\n<h3>Operations</h3>\r\n<p>Get fancy and perform some math to generate flexible and powerful mixins like the one below.</p>\r\n<pre class=\"prettyprint linenums\">\r\n// Griditude\r\n@gridColumns:       16;\r\n@gridColumnWidth:   40px;\r\n@gridGutterWidth:   20px;\r\n@siteWidth:         (@gridColumns * @gridColumnWidth) + (@gridGutterWidth * (@gridColumns - 1));\r\n\r\n// Make some columns\r\n.columns(@columnSpan: 1) {\r\nwidth: (@gridColumnWidth * @columnSpan) + (@gridGutterWidth * (@columnSpan - 1));\r\n}\r\n</pre>\r\n\r\n<h2>Compiling Less</h2>\r\n<p>After modifying the <code>.less</code> files in /lib/, you\'ll need to recompile them in order to regenerate the bootstrap-*.*.*.css and bootstrap-*.*.*.min.css files. If you\'re submitting a pull request to GitHub, you must always recompile.</p>\r\n<h3>Ways to compile</h3>\r\n<table class=\"zebra-striped\">\r\n<thead>\r\n<tr>\r\n<th style=\"width: 120px;\">Method</th>\r\n<th>Steps</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Node with makefile</td>\r\n<td>\r\n<p>Install the less command line compiler with npm by running the following command:</p>\r\n<pre>$ npm install lessc</pre>\r\n<p>Once installed just run <code>make</code> from the root of your bootstrap directory and you\'re all set.</p>\r\n<p>Additionally, if you have <a href=\"https://github.com/mynyml/watchr\">watchr</a> installed, you may run <code>make watch</code> to have bootstrap automatically rebuilt every time you edit a file in the bootstrap lib (this isn\'t required, just a convenience method).</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Javascript</td>\r\n<td>\r\n<p><a href=\"http://lesscss.org/\">Download the latest Less.js</a> and include the path to it (and Bootstrap) in the <code>head</code>.</p>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;link rel=\"stylesheet/less\" href=\"/path/to/bootstrap.less\"&gt;\r\n&lt;script src=\"/path/to/less.js\"&gt;&lt;/script&gt;\r\n</pre>\r\n<p>To recompile the .less files, just save them and reload your page. Less.js compiles them and stores them in local storage.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Command line</td>\r\n<td>\r\n<p>If you already have the less command line tool installed, simply run the following command:</p>\r\n<pre>$ lessc ./lib/bootstrap.less > bootstrap.css</pre>\r\n<p>Be sure to include <code>--compress</code> in that command if you\'re trying to save some bytes!</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Less Mac app</td>\r\n<td>\r\n<p><a href=\"http://incident57.com/less/\">The unofficial Mac app</a> watches directories of .less files and compiles the code to local files after every save of a watched .less file.</p>\r\n<p>If you like, you can toggle preferences in the app for automatic minifying and which directory the compiled files end up in.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', NULL);

-- *** STRUCTURE: `tbl_entries_data_18` ***
DROP TABLE IF EXISTS `tbl_entries_data_18`;
CREATE TABLE `tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_18` ***
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (1, 4, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (2, 5, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (3, 6, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (126, 8, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (5, 9, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (6, 10, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (13, 11, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (8, 13, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (10, 14, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (12, 15, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (16, 19, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (15, 20, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (22, 22, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (23, 23, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (24, 24, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (25, 25, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (26, 26, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (27, 30, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (28, 31, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (30, 33, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (31, 34, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (32, 35, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (33, 36, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (34, 38, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (35, 39, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (36, 41, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (37, 42, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (38, 44, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (39, 45, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (40, 47, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (41, 48, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (44, 50, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (45, 51, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (46, 54, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (47, 55, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (48, 57, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (58, 58, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (60, 60, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (61, 62, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (62, 63, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (63, 64, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (64, 65, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (100, 66, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (101, 68, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (68, 70, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (70, 71, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (71, 73, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (84, 74, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (87, 76, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (96, 77, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (97, 80, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (98, 81, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (128, 84, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (105, 85, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (129, 87, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (107, 88, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (130, 90, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (115, 91, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (127, 93, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (118, 94, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (122, 96, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (125, 97, 4);

-- *** STRUCTURE: `tbl_entries_data_19` ***
DROP TABLE IF EXISTS `tbl_entries_data_19`;
CREATE TABLE `tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_19` ***
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (65, 7, 3);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (26, 3, 3);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (7, 1, 1);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (22, 12, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (27, 16, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (21, 17, 3);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (12, 18, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (13, 21, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (28, 27, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (29, 28, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (31, 29, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (33, 32, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (34, 37, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (36, 40, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (37, 43, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (38, 46, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (39, 49, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (40, 52, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (41, 53, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (42, 56, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (43, 59, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (44, 61, 3);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (48, 67, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (49, 69, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (50, 72, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (51, 75, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (54, 78, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (55, 79, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (56, 82, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (57, 83, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (59, 86, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (62, 89, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (63, 92, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (64, 95, 4);

-- *** STRUCTURE: `tbl_entries_data_2` ***
DROP TABLE IF EXISTS `tbl_entries_data_2`;
CREATE TABLE `tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_2` ***
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (11, 1, 1);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (30, 3, 2);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (69, 7, 3);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (26, 12, 5);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (31, 16, 6);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (25, 17, 4);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (16, 18, 7);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (17, 21, 8);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (32, 27, 9);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (33, 28, 10);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (35, 29, 11);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (37, 32, 12);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (38, 37, 13);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (40, 40, 14);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (41, 43, 15);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (42, 46, 16);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (43, 49, 17);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (44, 52, 18);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (45, 53, 19);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (46, 56, 20);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (47, 59, 21);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (48, 61, 22);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (52, 67, 23);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (53, 69, 24);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (54, 72, 25);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (55, 75, 26);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (58, 78, 27);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (59, 79, 28);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (60, 82, 29);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (61, 83, 30);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (63, 86, 31);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (66, 89, 32);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (67, 92, 33);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (68, 95, 34);

-- *** STRUCTURE: `tbl_entries_data_20` ***
DROP TABLE IF EXISTS `tbl_entries_data_20`;
CREATE TABLE `tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_20` ***
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (1, 1, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (20, 3, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (59, 7, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (16, 12, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (15, 17, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (6, 18, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (7, 21, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (21, 16, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (22, 27, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (23, 28, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (25, 29, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (27, 32, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (28, 37, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (30, 40, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (31, 43, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (32, 46, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (33, 49, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (34, 52, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (35, 53, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (36, 56, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (37, 59, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (38, 61, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (42, 67, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (43, 69, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (44, 72, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (45, 75, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (48, 78, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (49, 79, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (50, 82, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (51, 83, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (53, 86, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (56, 89, 'no');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (57, 92, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (58, 95, 'yes');

-- *** STRUCTURE: `tbl_entries_data_21` ***
DROP TABLE IF EXISTS `tbl_entries_data_21`;
CREATE TABLE `tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_21` ***
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (14, 16, 12);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (9, 12, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (8, 17, 7);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (13, 3, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (52, 7, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (15, 27, 21);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (16, 28, 21);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (18, 29, 21);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (20, 32, 21);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (21, 37, 21);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (23, 40, 21);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (24, 43, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (25, 46, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (26, 49, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (27, 52, 49);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (28, 53, 49);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (29, 56, 49);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (30, 59, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (31, 61, 59);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (35, 67, 59);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (36, 69, 59);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (37, 72, 59);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (38, 75, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (41, 78, 75);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (42, 79, 75);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (43, 82, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (44, 83, 82);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (46, 86, 82);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (49, 89, 82);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (50, 92, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (51, 95, NULL);

-- *** STRUCTURE: `tbl_entries_data_3` ***
DROP TABLE IF EXISTS `tbl_entries_data_3`;
CREATE TABLE `tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_3` ***
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 1, 'from-twitter', 'from Twitter');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 7, 'brief-history-browser-support-and-more', 'Brief history, browser support, and more');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 12, 'a-responsive-grid-system-from-the-markup-library', 'A responsive grid system from the Markup Library');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 18, 'basic-templates-to-create-webpages', 'Basic templates to create webpages');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 21, 'headings-paragraphs-lists-and-other-inline-type-elements', 'Headings, paragraphs, lists, and other inline type elements');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 43, 'displaying-images-and-videos', 'Displaying images and videos');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 46, 'for-you-guessed-it-tabular-data', 'For, you guessed it, tabular data');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 75, 'styles-for-success-warning-and-error-messages-or-alerts', 'Styles for success, warning, and error messages or alerts');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 82, 'components-for-displaying-content-in-modals-tooltips-and-popovers', 'Components for displaying content in modals, tooltips, and popovers');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 92, 'an-index-of-plugins-to-get-you-started', 'An index of plugins to get you started');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 95, 'supercharge-your-css-with-variables-mixins-and-functions', 'Supercharge your CSS with variables, mixins, and functions');

-- *** STRUCTURE: `tbl_entries_data_4` ***
DROP TABLE IF EXISTS `tbl_entries_data_4`;
CREATE TABLE `tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_4` ***
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 1, 'bootstrap', 'Bootstrap');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 7, 'about', 'About');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 12, 'grid', 'Grid');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 18, 'layout', 'Layout');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 21, 'type', 'Type');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 43, 'media', 'Media');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 46, 'tables', 'Tables');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 49, 'forms', 'forms');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 59, 'navigation', 'Navigation');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 75, 'alerts', 'Alerts');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 82, 'popovers', 'Popovers');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 92, 'javascript', 'JavaScript');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 95, 'less', 'Less');

-- *** STRUCTURE: `tbl_entries_data_5` ***
DROP TABLE IF EXISTS `tbl_entries_data_5`;
CREATE TABLE `tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 1, 'overview', 'overview');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 7, 'about', 'about');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 12, 'grid-system', 'grid-system');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 16, 'display-grids', 'display-grids');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 18, 'layout', 'layout');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 21, 'typography', 'typography');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 17, 'quickstart', 'quickstart');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 27, 'headings-and-copy', 'headings-and-copy');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 28, 'misc-elements', 'misc-elements');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 29, 'blockquotes', 'blockquotes');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 32, 'lists', 'lists');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 37, 'code', 'code');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 40, 'labels', 'labels');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 43, 'media', 'media');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 46, 'tables', 'tables');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 49, 'forms', 'forms');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 59, 'navigation', 'navigation');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 75, 'alerts', 'alerts');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 82, 'popovers', 'popovers');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 92, 'javascript', 'javascript');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 95, 'less', 'less');

-- *** STRUCTURE: `tbl_entries_data_6` ***
DROP TABLE IF EXISTS `tbl_entries_data_6`;
CREATE TABLE `tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 1, 'Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.\r\nIt includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.\r\nNerd alert: Bootstrap is built with Less and was designed to work out of the gate with modern browsers in mind.', '<p>Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.\nIt includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.\nNerd alert: Bootstrap is built with Less and was designed to work out of the gate with modern browsers in mind.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 3, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (69, 7, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 12, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 16, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 17, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 18, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 21, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 27, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 28, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 29, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 32, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 37, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (40, 40, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 43, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 46, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (43, 49, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 52, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 53, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 56, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 59, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (48, 61, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 67, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (53, 69, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 72, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 75, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 78, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (59, 79, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 82, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 83, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (63, 86, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (66, 89, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 92, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 95, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_7` ***
DROP TABLE IF EXISTS `tbl_entries_data_7`;
CREATE TABLE `tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_7` ***
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (24, 2, 1);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (31, 4, 3);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (32, 5, 3);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (33, 6, 3);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (156, 8, 7);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (35, 9, 7);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (36, 10, 7);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (43, 11, 17);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (38, 13, 12);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (40, 14, 12);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (42, 15, 16);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (46, 19, 18);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (45, 20, 18);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (52, 22, 27);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (53, 23, 27);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (54, 24, 27);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (55, 25, 28);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (56, 26, 28);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (57, 30, 29);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (58, 31, 29);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (60, 33, 32);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (61, 34, 32);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (62, 35, 32);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (63, 36, 32);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (64, 38, 37);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (65, 39, 37);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (66, 41, 40);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (67, 42, 40);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (68, 44, 43);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (69, 45, 43);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (70, 47, 46);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (71, 48, 46);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (74, 50, 52);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (75, 51, 52);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (76, 54, 53);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (77, 55, 53);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (78, 57, 56);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (88, 58, 56);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (90, 60, 59);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (91, 62, 61);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (92, 63, 61);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (93, 64, 61);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (94, 65, 61);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (130, 66, 67);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (131, 68, 67);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (98, 70, 69);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (100, 71, 69);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (101, 73, 72);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (114, 74, 72);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (117, 76, 78);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (126, 77, 78);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (127, 80, 79);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (128, 81, 79);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (158, 84, 83);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (135, 85, 83);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (159, 87, 86);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (137, 88, 86);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (160, 90, 89);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (145, 91, 89);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (157, 93, 92);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (148, 94, 92);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (152, 96, 95);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (155, 97, 95);

-- *** STRUCTURE: `tbl_entries_data_9` ***
DROP TABLE IF EXISTS `tbl_entries_data_9`;
CREATE TABLE `tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_9` ***
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 2, 'masthead-blueprinty-thing', 'Masthead (blueprinty thing)');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 4, 'hotlink-the-css', 'Hotlink the CSS');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 5, 'use-it-with-less', 'Use it with LESS');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 6, 'fork-on-github', 'Fork on GitHub');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (155, 8, 'history', 'History');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 9, 'browser-support', 'Browser support');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 10, 'whats-included', 'What\'s included');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 11, 'quick-start-examples', 'Quick-start examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 13, 'responsive-grid', 'Responsive grid');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 14, 'sections-grid-system', 'Sections Grid System');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 15, 'display-grids', 'Display Grids');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 19, 'fixed-layout', 'Fixed layout');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 20, 'fluid-layout', 'Fluid layout');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 22, 'headings-and-copy', 'Headings & copy');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 23, 'headings', 'Headings');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 24, 'example-paragraph', 'Example paragraph');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 25, 'misc-elements', 'Misc. elements');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 26, 'when-to-use', 'When to use');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 30, 'blockquotes', 'Blockquotes');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 31, 'how-to-quote', 'How to quote');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 33, 'unordered', 'Unordered');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 34, 'unstyled', 'Unstyled');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 35, 'ordered', 'Ordered');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 36, 'description', 'Description');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 38, 'code', 'Code');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 39, 'presenting-code', 'Presenting code');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 41, 'inline-labels', 'Inline labels');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 42, 'label-anything', 'Label anything');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 44, 'media-grid', 'Media grid');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 45, 'example-thumbnails', 'Example thumbnails');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 47, 'building-tables', 'Building tables');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 48, 'example-default-table-styles', 'Example: Default table styles');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 50, 'default-styles', 'Default styles');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 51, 'example-form-legend', 'Example form legend');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 54, 'stacked-forms', 'Stacked forms');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 55, 'example-form-legend', 'Example form legend');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 57, 'buttons', 'Buttons');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (87, 58, 'example-buttons', 'Example buttons');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (89, 60, 'fixed-topbar', 'Fixed topbar');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (90, 62, 'what-is-it', 'What is it');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (91, 63, 'customizable', 'Customizable');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (92, 64, 'dropdowns-included', 'Dropdowns included');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (93, 65, 'topbar-note', 'Topbar note');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (129, 66, 'tabs-and-pills', 'Tabs and pills');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 68, 'tabs-and-pills-examples', 'Tabs and pills examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (97, 70, 'breadcrumbs', 'Breadcrumbs');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (99, 71, 'breadcrumb-examples', 'Breadcrumb examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (100, 73, 'pagination', 'Pagination');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 74, 'pagination-examples', 'Pagination examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (116, 76, 'basic-alerts', 'Basic alerts');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 77, 'basic-alerts-examples', 'Basic alerts examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 80, 'block-messages', 'Block messages');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 81, 'block-messages-examples', 'Block messages examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (157, 84, 'modals', 'Modals');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (134, 85, 'modals-example', 'Modals example');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (158, 87, 'tooltips', 'Tooltips');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (136, 88, 'tooltips-examples', 'Tooltips examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (159, 90, 'popovers', 'Popovers');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (144, 91, 'popovers-examples', 'Popovers examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (156, 93, 'getting-started', 'Getting started');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (147, 94, 'javascript-examples', 'JavaScript examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (151, 96, 'less', 'Less');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (154, 97, 'less-examples', 'Less examples');

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (1, 1, 1, '2011-09-23 09:25:39', '2011-09-23 16:25:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (2, 2, 1, '2011-09-25 07:10:07', '2011-09-25 14:10:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (3, 1, 1, '2011-09-26 14:07:41', '2011-09-26 21:07:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (4, 2, 1, '2011-09-26 14:18:31', '2011-09-26 21:18:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (5, 2, 1, '2011-09-26 14:20:17', '2011-09-26 21:20:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (6, 2, 1, '2011-09-26 14:27:36', '2011-09-26 21:27:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (7, 1, 1, '2011-09-26 17:01:29', '2011-09-27 00:01:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (8, 2, 1, '2011-09-26 17:30:54', '2011-09-27 00:30:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (9, 2, 1, '2011-09-26 17:32:25', '2011-09-27 00:32:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (10, 2, 1, '2011-09-26 17:39:33', '2011-09-27 00:39:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (11, 2, 1, '2011-09-26 17:47:14', '2011-09-27 00:47:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (12, 1, 1, '2011-09-27 09:00:58', '2011-09-27 16:00:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (13, 2, 1, '2011-09-27 09:03:02', '2011-09-27 16:03:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (14, 2, 1, '2011-09-27 09:06:09', '2011-09-27 16:06:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (15, 2, 1, '2011-09-27 10:01:31', '2011-09-27 17:01:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (16, 1, 1, '2011-09-27 10:25:54', '2011-09-27 17:25:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 1, 1, '2011-09-27 10:46:58', '2011-09-27 17:46:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 1, 1, '2011-09-28 19:43:24', '2011-09-29 02:43:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (19, 2, 1, '2011-09-28 19:44:29', '2011-09-29 02:44:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 2, 1, '2011-09-28 19:45:36', '2011-09-29 02:45:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 1, 1, '2011-09-28 20:59:39', '2011-09-29 03:59:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 2, 1, '2011-09-28 21:01:56', '2011-09-29 04:01:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (23, 2, 1, '2011-09-28 21:05:02', '2011-09-29 04:05:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (24, 2, 1, '2011-09-28 21:06:08', '2011-09-29 04:06:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (25, 2, 1, '2011-09-28 21:11:11', '2011-09-29 04:11:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 2, 1, '2011-09-28 21:53:04', '2011-09-29 04:53:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 1, 1, '2011-09-29 01:08:50', '2011-09-29 08:08:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 1, 1, '2011-09-29 01:19:03', '2011-09-29 08:19:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 1, 1, '2011-09-29 01:27:30', '2011-09-29 08:27:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (30, 2, 1, '2011-09-29 01:31:24', '2011-09-29 08:31:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (31, 2, 1, '2011-09-29 01:32:30', '2011-09-29 08:32:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (32, 1, 1, '2011-09-29 01:33:18', '2011-09-29 08:33:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 2, 1, '2011-09-29 01:34:37', '2011-09-29 08:34:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 2, 1, '2011-09-29 01:41:16', '2011-09-29 08:41:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (35, 2, 1, '2011-09-29 01:42:57', '2011-09-29 08:42:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (36, 2, 1, '2011-09-29 01:43:41', '2011-09-29 08:43:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (37, 1, 1, '2011-09-29 01:45:21', '2011-09-29 08:45:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (38, 2, 1, '2011-09-29 01:45:39', '2011-09-29 08:45:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (39, 2, 1, '2011-09-29 01:47:24', '2011-09-29 08:47:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (40, 1, 1, '2011-09-29 01:48:23', '2011-09-29 08:48:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (41, 2, 1, '2011-09-29 01:49:21', '2011-09-29 08:49:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (42, 2, 1, '2011-09-29 01:51:21', '2011-09-29 08:51:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (43, 1, 1, '2011-09-29 01:52:39', '2011-09-29 08:52:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (44, 2, 1, '2011-09-29 01:56:54', '2011-09-29 08:56:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (45, 2, 1, '2011-09-29 02:00:54', '2011-09-29 09:00:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (46, 1, 1, '2011-09-29 02:02:41', '2011-09-29 09:02:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (47, 2, 1, '2011-09-29 02:06:15', '2011-09-29 09:06:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (48, 2, 1, '2011-09-29 02:09:00', '2011-09-29 09:09:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (49, 1, 1, '2011-09-29 02:16:23', '2011-09-29 09:16:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (50, 2, 1, '2011-09-29 02:17:13', '2011-09-29 09:17:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (51, 2, 1, '2011-09-29 05:16:20', '2011-09-29 12:16:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (52, 1, 1, '2011-09-29 05:17:58', '2011-09-29 12:17:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (53, 1, 1, '2011-09-29 05:19:19', '2011-09-29 12:19:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (54, 2, 1, '2011-09-29 05:19:46', '2011-09-29 12:19:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (55, 2, 1, '2011-09-29 05:22:00', '2011-09-29 12:22:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (56, 1, 1, '2011-09-29 05:23:00', '2011-09-29 12:23:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (57, 2, 1, '2011-09-29 05:23:33', '2011-09-29 12:23:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (58, 2, 1, '2011-09-29 05:29:18', '2011-09-29 12:29:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (59, 1, 1, '2011-09-29 05:36:56', '2011-09-29 12:36:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (60, 2, 1, '2011-09-29 05:40:24', '2011-09-29 12:40:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 1, 1, '2011-09-29 05:59:54', '2011-09-29 12:59:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 2, 1, '2011-09-29 06:00:37', '2011-09-29 13:00:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (63, 2, 1, '2011-09-29 06:02:15', '2011-09-29 13:02:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (64, 2, 1, '2011-09-29 06:02:56', '2011-09-29 13:02:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (65, 2, 1, '2011-09-29 06:04:42', '2011-09-29 13:04:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (66, 2, 1, '2011-09-29 06:06:11', '2011-09-29 13:06:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (67, 1, 1, '2011-09-29 06:31:29', '2011-09-29 13:31:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (68, 2, 1, '2011-09-29 06:35:51', '2011-09-29 13:35:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (69, 1, 1, '2011-09-29 06:38:22', '2011-09-29 13:38:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (70, 2, 1, '2011-09-29 06:39:32', '2011-09-29 13:39:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (71, 2, 1, '2011-09-29 06:41:04', '2011-09-29 13:41:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 1, 1, '2011-09-29 06:53:14', '2011-09-29 13:53:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 2, 1, '2011-09-29 06:53:41', '2011-09-29 13:53:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (74, 2, 1, '2011-09-29 06:54:42', '2011-09-29 13:54:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (75, 1, 1, '2011-09-29 06:58:57', '2011-09-29 13:58:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (76, 2, 1, '2011-09-29 07:59:32', '2011-09-29 14:59:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (77, 2, 1, '2011-09-29 08:02:20', '2011-09-29 15:02:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (78, 1, 1, '2011-09-29 08:03:46', '2011-09-29 15:03:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (79, 1, 1, '2011-10-13 16:03:12', '2011-10-13 23:03:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (80, 2, 1, '2011-10-13 16:03:56', '2011-10-13 23:03:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (81, 2, 1, '2011-10-13 16:07:06', '2011-10-13 23:07:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (82, 1, 1, '2011-10-13 16:32:18', '2011-10-13 23:32:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (83, 1, 1, '2011-10-14 08:58:30', '2011-10-14 15:58:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (84, 2, 1, '2011-10-14 08:58:47', '2011-10-14 15:58:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (85, 2, 1, '2011-10-14 09:06:54', '2011-10-14 16:06:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (86, 1, 1, '2011-10-14 09:08:42', '2011-10-14 16:08:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (87, 2, 1, '2011-10-14 09:10:36', '2011-10-14 16:10:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (88, 2, 1, '2011-10-14 09:12:06', '2011-10-14 16:12:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (89, 1, 1, '2011-10-14 09:13:25', '2011-10-14 16:13:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (90, 2, 1, '2011-10-14 09:14:44', '2011-10-14 16:14:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (91, 2, 1, '2011-10-14 09:17:13', '2011-10-14 16:17:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (92, 1, 1, '2011-10-14 10:15:51', '2011-10-14 17:15:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (93, 2, 1, '2011-10-14 10:17:13', '2011-10-14 17:17:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (94, 2, 1, '2011-10-14 10:18:57', '2011-10-14 17:18:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (95, 1, 1, '2011-10-14 10:20:46', '2011-10-14 17:20:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (96, 2, 1, '2011-10-14 10:21:29', '2011-10-14 17:21:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (97, 2, 1, '2011-10-14 10:22:44', '2011-10-14 17:22:44');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'xssfilter', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'debugdevkit', 'enabled', '1.2.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'export_ensemble', 'enabled', 1.16);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'selectbox_link_field', 'enabled', 1.20);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'jit_image_manipulation', 'enabled', 1.13);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'maintenance_mode', 'enabled', 1.5);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'markdown', 'enabled', 1.13);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'textupload', 'enabled', 0.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'edui', 'enabled', '0.6.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'order_entries', 'enabled', '1.9.6');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'html5_doctype', 'enabled', '1.2.4');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'numberfield', 'enabled', '1.4.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'subsectionmanager', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'codemirror', 'enabled', '1.2.1');

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 1, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 1, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 1, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 2, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 2, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 3, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 5, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 5, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 6, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 6, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 6, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 6, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 6, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 6, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 6, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 7, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 7, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 9, '/backend/', 'InitaliseAdminPageHead', 'loadFormAssets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 10, '/backend/', 'NavigationPreRender', 'deleteComponentsItem');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 10, '/backend/', 'AdminPagePreGenerate', 'setRedirects');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 11, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 12, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (23, 14, '/backend/', 'AdminPagePreGenerate', '__appendAssets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (24, 14, '/publish/new/', 'EntryPostNew', '__saveSortOrder');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (25, 14, '/publish/edit/', 'EntryPostEdit', '__saveSortOrder');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (26, 14, '/backend/', 'AppendPageAlert', '__upgradeMediathek');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (29, 16, '/backend/', 'InitaliseAdminPageHead', '__appendAdminPageAssets');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Title', 'title', 'input', 1, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Sort', 'sort', 'order_entries', 1, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Subheading', 'subheading', 'input', 1, 'no', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Navigation Title', 'navigation-title', 'input', 1, 'no', 2, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'URL Handle', 'url-handle', 'input', 1, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Description', 'description', 'textarea', 1, 'no', 5, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Section', 'section', 'selectbox_link', 2, 'yes', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Content', 'content', 'textarea', 2, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Title', 'title', 'input', 2, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Sort', 'sort', 'order_entries', 2, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Span', 'span', 'number', 2, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Columns', 'columns', 'number', 2, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Columns', 'columns', 'number', 1, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Display header', 'display-header', 'checkbox', 1, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Parent Section', 'parent-section', 'selectbox_link', 1, 'no', 1, 'sidebar', 'yes');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, NULL, 'sections,sections_by_section,subsections', NULL, 1);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (5, 1, 'index');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Sections', 'sections', 1, 2, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Subsections', 'subsections', 2, 16, 'asc', 'no', 'Content');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (42, 1, 1, 2, 7, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (39, 1, 1, 1, 21, 'yes');
