
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (1, 20, 'on', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (43, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (46, 3, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (44, 4, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (45, 5, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (34, 9, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (26, 11, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (24, 2, NULL, 'no');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (21, 16, NULL, 'no');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`) VALUES (15, 12, 'no', 'no', 1, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`) VALUES (23, 7, 'no', 'yes', 1, 20);

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
INSERT INTO `tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `included_fields`, `allow_multiple`, `show_preview`, `lock`) VALUES (4, 13, 2, NULL, '{$title}', '{$title}', '9,7', 1, 1, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (10, 6, 'markdown_extra', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (7, 17, 'markdown_extra_with_smartypants', 15);

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_1` ***
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 1, 'bootstrap', 'Bootstrap');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 3, 'quickstart', 'Quickstart');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 7, 'about-bootstrap', 'About Bootstrap');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 12, 'grid-system', 'Grid System');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 16, 'display-grids', 'Display Grids');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 17, 'quick-start-examples', 'Quick-start examples');

-- *** STRUCTURE: `tbl_entries_data_11` ***
DROP TABLE IF EXISTS `tbl_entries_data_11`;
CREATE TABLE `tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_11` ***

-- *** STRUCTURE: `tbl_entries_data_12` ***
DROP TABLE IF EXISTS `tbl_entries_data_12`;
CREATE TABLE `tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_12` ***

-- *** STRUCTURE: `tbl_entries_data_13` ***
DROP TABLE IF EXISTS `tbl_entries_data_13`;
CREATE TABLE `tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_13` ***

-- *** STRUCTURE: `tbl_entries_data_14` ***
DROP TABLE IF EXISTS `tbl_entries_data_14`;
CREATE TABLE `tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_14` ***

-- *** STRUCTURE: `tbl_entries_data_15` ***
DROP TABLE IF EXISTS `tbl_entries_data_15`;
CREATE TABLE `tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_15` ***
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (27, 4, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (28, 5, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (29, 6, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (20, 2, NULL);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (30, 8, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (31, 9, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (32, 10, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (39, 11, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (34, 13, 1);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (36, 14, 3);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (38, 15, 4);

-- *** STRUCTURE: `tbl_entries_data_16` ***
DROP TABLE IF EXISTS `tbl_entries_data_16`;
CREATE TABLE `tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_16` ***
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (27, 4, 2);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (20, 2, 1);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (28, 5, 3);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (29, 6, 4);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (30, 8, 5);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (31, 9, 6);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (32, 10, 7);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (39, 11, 8);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (34, 13, 9);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (36, 14, 10);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (38, 15, 11);

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_17` ***
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 2, '<h1>Bootstrap, <br />from Twitter</h1>\r\n<p class=\"lead\">Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.<br /> It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.</p>\r\n<p><strong>Nerd alert:</strong> Bootstrap is <a href=\"#less\" title=\"Read about using Bootstrap with Less\">built with Less</a> and was designed to work out of the gate with modern browsers in mind.</p>\r\n', NULL);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 4, '<h6>Hotlink the CSS</h6>\r\n<p>For the quickest and easiest start, just copy this snippet into your webpage.</p>\r\n<form>\r\n<textarea class=\"copy-code\" rows=\"1\">&lt;link rel=\"stylesheet\" href=\"http://twitter.github.com/bootstrap/assets/css/bootstrap.min.css\"></textarea>\r\n</form>\r\n', '<h6>Hotlink the CSS</h6>\n\n<p>For the quickest and easiest start, just copy this snippet into your webpage.</p>\n\n<form>\n<textarea class=\"copy-code\" rows=\"1\">&lt;link rel=&#8221;stylesheet&#8221; href=&#8221;http://twitter.github.com/bootstrap/assets/css/bootstrap.min.css&#8221;></textarea>\n</form>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 5, '<h6>Use it with Less</h6>\r\n<p>A fan of using Less? No problem, just clone the repo and add these lines:</p>\r\n<form>\r\n<textarea class=\"copy-code\" rows=\"2\">&lt;link rel=\"stylesheet/less\" href=\"/path/to/bootstrap.less\"&gt;\r\n&lt;script src=\"/path/to/less.js\"&gt;&lt;/script&gt;</textarea>\r\n</form>\r\n', '<h6>Use it with Less</h6>\n\n<p>A fan of using Less? No problem, just clone the repo and add these lines:</p>\n\n<form>\n<textarea class=\"copy-code\" rows=\"2\">&lt;link rel=&#8221;stylesheet/less&#8221; href=&#8221;/path/to/bootstrap.less&#8221;&gt;\n&lt;script src=&#8221;/path/to/less.js&#8221;&gt;&lt;/script&gt;</textarea>\n</form>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 6, '<h6>Fork on GitHub</h6>\r\n<p>Download, fork, pull, file issues, and more with the official Bootstrap repo on Github.</p>\r\n<p><a target=\"_blank\" href=\"https://github.com/twitter/bootstrap\" class=\"btn primary\">Bootstrap on GitHub &#187;</a></p>\r\n<p class=\"current-version\">Currently <a href=\"https://github.com/twitter/bootstrap/wiki/Changelog\">v1.3.0</a></p>\r\n', '<h6>Fork on GitHub</h6>\n\n<p>Download, fork, pull, file issues, and more with the official Bootstrap repo on Github.</p>\n\n<p><a target=\"_blank\" href=\"https://github.com/twitter/bootstrap\" class=\"btn primary\">Bootstrap on GitHub &#187;</a></p>\n\n<p class=\"current-version\">Currently <a href=\"https://github.com/twitter/bootstrap/wiki/Changelog\">v1.3.0</a></p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 8, '<h3>History</h3>\r\n<p>Engineers at Twitter have historically used almost any library they were familiar with to meet front-end requirements. Bootstrap began as an answer to the challenges that presented. With the help of many awesome folks, Bootstrap has grown significantly.</p>\r\n<p>Read more on <a href=\"https://dev.twitter.com/blog/bootstrap-twitter\">dev.twitter.com &rsaquo;</a></p>\r\n<p>\r\n<a href=\"http://twitter.com/twbootstrap\" class=\"twitter-follow-button\">Follow @twbootstrap</a>\r\n<script src=\"http://platform.twitter.com/widgets.js\" type=\"text/javascript\"></script>\r\n</p>\r\n', '<h3>History</h3>\n\n<p>Engineers at Twitter have historically used almost any library they were familiar with to meet front-end requirements. Bootstrap began as an answer to the challenges that presented. With the help of many awesome folks, Bootstrap has grown significantly.</p>\n\n<p>Read more on <a href=\"https://dev.twitter.com/blog/bootstrap-twitter\">dev.twitter.com ›</a></p>\n\n<p>\n<a href=\"http://twitter.com/twbootstrap\" class=\"twitter-follow-button\">Follow @twbootstrap</a>\n<script src=\"http://platform.twitter.com/widgets.js\" type=\"text/javascript\"></script>\n</p>');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 9, '<h3>Browser support</h3>\r\n<p>Bootstrap is tested and supported in major modern browsers like Chrome, Safari, Internet Explorer, and Firefox.</p>\r\n<img src=\"/workspace/bootstrap/docs/assets/img/browsers.png\" alt=\"Tested and supported in Chrome, Safari, Internet Explorer, and Firefox\" />\r\n<ul>\r\n<li>Latest Safari</li>\r\n<li>Latest Google Chrome</li>\r\n<li>Firefox 4+</li>\r\n<li>Internet Explorer 7+</li>\r\n<li>Opera 11</li>\r\n</ul>\r\n', '<h3>Browser support</h3>\n\n<p>Bootstrap is tested and supported in major modern browsers like Chrome, Safari, Internet Explorer, and Firefox.</p>\n\n<p><img src=\"/workspace/bootstrap/docs/assets/img/browsers.png\" alt=\"Tested and supported in Chrome, Safari, Internet Explorer, and Firefox\" /></p>\n\n<ul>\n<li>Latest Safari</li>\n<li>Latest Google Chrome</li>\n<li>Firefox 4+</li>\n<li>Internet Explorer 7+</li>\n<li>Opera 11</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 10, '<h3>What\'s included</h3>\r\n<p>Bootstrap comes complete with compiled CSS, uncompiled, and example templates.</p>\r\n<ul>\r\n<li><span class=\"label\">New in 1.3</span> <a href=\"/workspace/bootstrap/docs/javascript.html\">Javascript plugins</a></li>\r\n<li>All original .less files</li>\r\n<li>Fully <a href=\"/workspace/bootstrap/bootstrap.css\">compiled</a> and <a href=\"/workspace/bootstrap/bootstrap.min.css\">minified</a> CSS</li>\r\n<li>Complete styleguide documentation</li>\r\n<li>Three example pages with different layouts</li>\r\n</ul>\r\n', '<h3>What&#8217;s included</h3>\n\n<p>Bootstrap comes complete with compiled CSS, uncompiled, and example templates.</p>\n\n<ul>\n<li><span class=\"label\">New in 1.3</span> <a href=\"/workspace/bootstrap/docs/javascript.html\">Javascript plugins</a></li>\n<li>All original .less files</li>\n<li>Fully <a href=\"/workspace/bootstrap/bootstrap.css\">compiled</a> and <a href=\"/workspace/bootstrap/bootstrap.min.css\">minified</a> CSS</li>\n<li>Complete styleguide documentation</li>\n<li>Three example pages with different layouts</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 11, '<h3>Quick-start examples</h3>\r\n<p>Need some quick templates? Check out these basic examples we\'ve put together:</p>\r\n<ul class=\"media-grid\">\r\n<li>\r\n<a href=\"/workspace/bootstrap/examples/hero.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-01.png\" alt=\"Simple three-column layout with hero unit\" /></a>\r\n</li>\r\n<li>\r\n<a href=\"/workspace/bootstrap/examples/fluid.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-02.png\" alt=\"Fluid layout with static sidebar\" /></a>\r\n</li>\r\n<li>\r\n<a href=\"/workspace/bootstrap/examples/container-app.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-03.png\" alt=\"Simple hanging container for apps\" /></a>\r\n</li>\r\n</ul>\r\n', '<h3>Quick-start examples</h3>\n\n<p>Need some quick templates? Check out these basic examples we&#8217;ve put together:</p>\n\n<ul class=\"media-grid\">\n<li>\n<a href=\"/workspace/bootstrap/examples/hero.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-01.png\" alt=\"Simple three-column layout with hero unit\" /></a>\n</li>\n<li>\n<a href=\"/workspace/bootstrap/examples/fluid.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-02.png\" alt=\"Fluid layout with static sidebar\" /></a>\n</li>\n<li>\n<a href=\"/workspace/bootstrap/examples/container-app.html\"><img src=\"/workspace/bootstrap/docs/assets/img/example-diagram-03.png\" alt=\"Simple hanging container for apps\" /></a>\n</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 13, '<h2>Responsive grid</h2>\r\n<p>A grid system by <a href=\"http://mongrl.com/\">Craig Zheng</a> designed for <a href=\"http://publicculture.org/\">publicculture.org</a> and <a href=\"http://symphony-cms.com/\">symphony-cms.com</a>. Adapted by <a href=\"http://domain7.com/team/stephen-bau/\">Stephen Bau</a> for the <a href=\"http://markuplibrary.org/\">Markup Library</a>.</p>\r\n', '<h2>Responsive grid</h2>\n\n<p>A grid system by <a href=\"http://mongrl.com/\">Craig Zheng</a> designed for <a href=\"http://publicculture.org/\">publicculture.org</a> and <a href=\"http://symphony-cms.com/\">symphony-cms.com</a>. Adapted by <a href=\"http://domain7.com/team/stephen-bau/\">Stephen Bau</a> for the <a href=\"http://markuplibrary.org/\">Markup Library</a>.</p>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 14, '<h3>Sections Grid System</h3>\r\n<ol>\r\n<li><code>class=\"section\"</code> basically designates a \'row\', within which any\r\nnumber of <code>class=\"subsection\"</code> elements represent \'columns\'</li>\r\n<li>The \'column\' widths are specified with another class: either\r\n<code>fragment</code>, <code>simple</code>, <code>compound</code> or <code>complex</code> (semantic nomenclature I\r\nborrowed right from English grammar).</li>\r\n</ol>\r\n<p>So we end up with something like this:</p>\r\n<pre class=\"prettyprint linenums\">\r\n&lt;div class=\"section\"&gt;\r\n  &lt;div class=\"subsection simple\"&gt;\r\n    ...\r\n  &lt;/div&gt;\r\n  &lt;div class=\"subsection compound\"&gt;\r\n    ...\r\n  &lt;/div&gt;\r\n  &lt;div class=\"subsection simple\"&gt;\r\n    ...\r\n  &lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n\r\n<p>Which gives you a half-width column in the middle with two\r\nquarter-width columns on either side. Of course, you could dispense\r\nwith the DIVs if you don\'t need them and just apply those classes to\r\nany other block-level elements. The CSS looks like this:\r\n</p>\r\n<pre class=\"prettyprint linenums\">/* 3-column grid */\r\n.thirds .subsection,\r\n.thirds .simple {\r\n	width: 33.3333%;\r\n}\r\n.thirds .fragment {\r\n	width: 16.6666%;\r\n}\r\n.thirds .compound {\r\n	width: 66.6666%;\r\n}\r\n\r\n/* 4-column grid (default) */\r\n.fragment {\r\n	width: 12.5%;\r\n}\r\n.simple {\r\n	width: 25%;\r\n}\r\n.compound {\r\n	width: 50%;\r\n}\r\n.complex {\r\n	width: 75%;\r\n}\r\n\r\n/* 5-column grid */\r\n.fifths .subsection,\r\n.fifths .simple {\r\n	width: 20%;\r\n}\r\n.fifths .fragment {\r\n	width: 10%;\r\n}\r\n.fifths .compound {\r\n	width: 40%;\r\n}\r\n.fifths .complex {\r\n	width: 60%;\r\n}\r\n.fifths .compound-complex {\r\n	width: 80%;\r\n}\r\n</pre>\r\n', '<h3>Sections Grid System</h3>\n\n<ol>\n<li><code>class=\"section\"</code> basically designates a &#8216;row&#8217;, within which any\nnumber of <code>class=\"subsection\"</code> elements represent &#8216;columns&#8217;</li>\n<li>The &#8216;column&#8217; widths are specified with another class: either\n<code>fragment</code>, <code>simple</code>, <code>compound</code> or <code>complex</code> (semantic nomenclature I\nborrowed right from English grammar).</li>\n</ol>\n\n<p>So we end up with something like this:</p>\n\n<pre class=\"prettyprint linenums\">\n&lt;div class=\"section\"&gt;\n  &lt;div class=\"subsection simple\"&gt;\n    ...\n  &lt;/div&gt;\n  &lt;div class=\"subsection compound\"&gt;\n    ...\n  &lt;/div&gt;\n  &lt;div class=\"subsection simple\"&gt;\n    ...\n  &lt;/div&gt;\n&lt;/div&gt;</pre>\n\n<p>Which gives you a half-width column in the middle with two\nquarter-width columns on either side. Of course, you could dispense\nwith the DIVs if you don&#8217;t need them and just apply those classes to\nany other block-level elements. The CSS looks like this:\n</p>\n\n<pre class=\"prettyprint linenums\">/* 3-column grid */\n.thirds .subsection,\n.thirds .simple {\n    width: 33.3333%;\n}\n.thirds .fragment {\n    width: 16.6666%;\n}\n.thirds .compound {\n    width: 66.6666%;\n}\n\n/* 4-column grid (default) */\n.fragment {\n    width: 12.5%;\n}\n.simple {\n    width: 25%;\n}\n.compound {\n    width: 50%;\n}\n.complex {\n    width: 75%;\n}\n\n/* 5-column grid */\n.fifths .subsection,\n.fifths .simple {\n    width: 20%;\n}\n.fifths .fragment {\n    width: 10%;\n}\n.fifths .compound {\n    width: 40%;\n}\n.fifths .complex {\n    width: 60%;\n}\n.fifths .compound-complex {\n    width: 80%;\n}\n</pre>\n');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 15, '<h2 class=\"content\">5-Column Grid</h2>\r\n<div class=\"section\">\r\n<div class=\"content\">\r\n<p>.content</p>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound-complex\">\r\n<div class=\"content\">\r\n<p>.compound-complex</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection compound-complex\">\r\n<div class=\"content\">\r\n<p>.compound-complex</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section fifths\">\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<h2 class=\"content\">4-Column Grid</h2>\r\n<div class=\"section\">\r\n<div class=\"content\">\r\n<p>.content</p>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection complex\">\r\n<div class=\"content\">\r\n<p>.complex</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<h2 class=\"content\">3-Column Grid</h2>\r\n<div class=\"section thirds\">\r\n<div class=\"content\">\r\n<p>.content</p>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection compound\">\r\n<div class=\"content\">\r\n<p>.compound</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection simple\">\r\n<div class=\"content\">\r\n<p>.simple</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n<div class=\"subsection fragment\">\r\n<div class=\"content\">\r\n<p>.fragment</p>\r\n</div>\r\n</div>\r\n</div>\r\n', '<h2 class=\"content\">5-Column Grid</h2>\n\n<div class=\"section\">\n<div class=\"content\">\n<p>.content</p>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound-complex\">\n<div class=\"content\">\n<p>.compound-complex</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection compound-complex\">\n<div class=\"content\">\n<p>.compound-complex</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section fifths\">\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n</div>\n\n<h2 class=\"content\">4-Column Grid</h2>\n\n<div class=\"section\">\n<div class=\"content\">\n<p>.content</p>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection complex\">\n<div class=\"content\">\n<p>.complex</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n</div>\n\n<h2 class=\"content\">3-Column Grid</h2>\n\n<div class=\"section thirds\">\n<div class=\"content\">\n<p>.content</p>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection compound\">\n<div class=\"content\">\n<p>.compound</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection simple\">\n<div class=\"content\">\n<p>.simple</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n<div class=\"subsection fragment\">\n<div class=\"content\">\n<p>.fragment</p>\n</div>\n</div>\n</div>\n');

-- *** STRUCTURE: `tbl_entries_data_18` ***
DROP TABLE IF EXISTS `tbl_entries_data_18`;
CREATE TABLE `tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_18` ***
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (1, 4, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (2, 5, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (3, 6, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (4, 8, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (5, 9, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (6, 10, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (13, 11, 3);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (8, 13, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (10, 14, 4);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `value`) VALUES (12, 15, 4);

-- *** STRUCTURE: `tbl_entries_data_19` ***
DROP TABLE IF EXISTS `tbl_entries_data_19`;
CREATE TABLE `tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_19` ***
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (9, 7, 3);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (8, 3, 3);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (7, 1, 1);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (10, 12, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (6, 16, 4);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`) VALUES (11, 17, 3);

-- *** STRUCTURE: `tbl_entries_data_2` ***
DROP TABLE IF EXISTS `tbl_entries_data_2`;
CREATE TABLE `tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_2` ***
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (11, 1, 1);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (12, 3, 2);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (13, 7, 3);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (14, 12, 5);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (10, 16, 6);
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (15, 17, 4);

-- *** STRUCTURE: `tbl_entries_data_20` ***
DROP TABLE IF EXISTS `tbl_entries_data_20`;
CREATE TABLE `tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_20` ***
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (1, 1, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (2, 3, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (3, 7, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (4, 12, 'yes');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`) VALUES (5, 17, 'no');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_3` ***
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 1, 'from-twitter', 'from Twitter');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 7, 'brief-history-browser-support-and-more', 'Brief history, browser support, and more');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 12, 'a-responsive-grid-system-from-the-markup-library', 'A responsive grid system from the Markup Library');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_4` ***
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 1, 'bootstrap', 'Bootstrap');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 7, 'about', 'About');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 12, 'grid', 'Grid');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 1, 'overview', 'overview');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 7, 'about', 'about');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 12, 'grid', 'grid');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 16, 'display-grids', 'display-grids');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 1, 'Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.\r\nIt includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.\r\nNerd alert: Bootstrap is built with Less and was designed to work out of the gate with modern browsers in mind.', '<p>Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.\nIt includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.\nNerd alert: Bootstrap is built with Less and was designed to work out of the gate with modern browsers in mind.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 3, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 7, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 12, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 16, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 17, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_7` ***
DROP TABLE IF EXISTS `tbl_entries_data_7`;
CREATE TABLE `tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_7` ***
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (24, 2, 1);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (31, 4, 3);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (32, 5, 3);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (33, 6, 3);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (34, 8, 7);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (35, 9, 7);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (36, 10, 7);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (43, 11, 17);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (38, 13, 12);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (40, 14, 12);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `relation_id`) VALUES (42, 15, 16);

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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_9` ***
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 2, 'masthead-blueprinty-thing', 'Masthead (blueprinty thing)');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 4, 'hotlink-the-css', 'Hotlink the CSS');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 5, 'use-it-with-less', 'Use it with LESS');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 6, 'fork-on-github', 'Fork on GitHub');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 8, 'history', 'History');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 9, 'browser-support', 'Browser support');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 10, 'whats-included', 'What\'s included');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 11, 'quick-start-examples', 'Quick-start examples');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 13, 'responsive-grid', 'Responsive grid');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 14, 'sections-grid-system', 'Sections Grid System');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 15, 'display-grids', 'Display Grids');

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
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Sort', 'sort', 'order_entries', 1, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Subheading', 'subheading', 'input', 1, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Navigation Title', 'navigation-title', 'input', 1, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'URL Handle', 'url-handle', 'input', 1, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Description', 'description', 'textarea', 1, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Section', 'section', 'selectbox_link', 2, 'yes', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Content', 'content', 'textarea', 2, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Title', 'title', 'input', 2, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Sort', 'sort', 'order_entries', 2, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Row', 'row', 'input', 3, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Section', 'section', 'selectbox_link', 3, 'yes', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'Subsections', 'subsections', 'subsectionmanager', 3, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'Columns', 'columns', 'number', 3, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Span', 'span', 'number', 2, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Columns', 'columns', 'number', 2, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Columns', 'columns', 'number', 1, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Display header', 'display-header', 'checkbox', 1, 'no', 7, 'sidebar', 'yes');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, NULL, 'sections,subsections', NULL, 1);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (4, 1, 'index');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Sections', 'sections', 1, 2, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Subsections', 'subsections', 2, 16, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (3, 'Layout', 'layout', 3, NULL, 'asc', 'no', 'Content');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (27, 1, 1, 2, 7, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (18, 1, 1, 3, 12, 'yes');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (19, 3, 13, 2, 13, 'yes');
