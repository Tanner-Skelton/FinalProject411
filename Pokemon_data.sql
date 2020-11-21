-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 17, 2020 at 07:16 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'Pokemon_Data', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"phpmyadmin\",\"Pokemon_Database\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"Pokemon_Database\",\"table\":\"Pokemon\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-11-17 18:16:19', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `Pokemon_Database`
--
CREATE DATABASE IF NOT EXISTS `Pokemon_Database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Pokemon_Database`;

-- --------------------------------------------------------

--
-- Table structure for table `Pokemon`
--

CREATE TABLE `Pokemon` (
  `pokedex_number` int(64) NOT NULL,
  `name` varchar(256) NOT NULL,
  `hp` int(64) NOT NULL,
  `attack` int(64) NOT NULL,
  `defense` int(64) NOT NULL,
  `sp_attack` int(64) NOT NULL,
  `sp_defense` int(64) NOT NULL,
  `speed` int(64) NOT NULL,
  `type1` varchar(256) NOT NULL,
  `type2` varchar(256) DEFAULT NULL,
  `generation` int(64) NOT NULL,
  `is_legendary` tinyint(1) NOT NULL,
  `against_bug` decimal(8,2) NOT NULL,
  `against_dark` decimal(8,2) NOT NULL,
  `against_dragon` decimal(8,2) NOT NULL,
  `against_electric` decimal(8,2) NOT NULL,
  `against_fairy` decimal(8,2) NOT NULL,
  `against_fight` decimal(8,2) NOT NULL,
  `against_fire` decimal(8,2) NOT NULL,
  `against_flying` decimal(8,2) NOT NULL,
  `against_ghost` decimal(8,2) NOT NULL,
  `against_grass` decimal(8,2) NOT NULL,
  `against_ground` decimal(8,2) NOT NULL,
  `against_ice` decimal(8,2) NOT NULL,
  `against_normal` decimal(8,2) NOT NULL,
  `against_poison` decimal(8,2) NOT NULL,
  `against_psychic` decimal(8,2) NOT NULL,
  `against_rock` decimal(8,2) NOT NULL,
  `against_steel` decimal(8,2) NOT NULL,
  `against_water` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Pokemon`
--

INSERT INTO `Pokemon` (`pokedex_number`, `name`, `hp`, `attack`, `defense`, `sp_attack`, `sp_defense`, `speed`, `type1`, `type2`, `generation`, `is_legendary`, `against_bug`, `against_dark`, `against_dragon`, `against_electric`, `against_fairy`, `against_fight`, `against_fire`, `against_flying`, `against_ghost`, `against_grass`, `against_ground`, `against_ice`, `against_normal`, `against_poison`, `against_psychic`, `against_rock`, `against_steel`, `against_water`) VALUES
(1, 'Bulbasaur', 45, 49, 49, 65, 65, 45, 'grass', 'poison', 1, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(2, 'Ivysaur', 60, 62, 63, 80, 80, 60, 'grass', 'poison', 1, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(3, 'Venusaur', 80, 100, 123, 122, 120, 80, 'grass', 'poison', 1, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(4, 'Charmander', 39, 52, 43, 60, 50, 65, 'fire', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(5, 'Charmeleon', 58, 64, 58, 80, 65, 80, 'fire', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(6, 'Charizard', 78, 104, 78, 159, 115, 100, 'fire', 'flying', 1, 0, '0.25', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '1.00', '1.00', '1.00', '1.00', '4.00', '0.50', '2.00'),
(7, 'Squirtle', 44, 48, 65, 50, 64, 43, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(8, 'Wartortle', 59, 63, 80, 65, 80, 58, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(9, 'Blastoise', 79, 103, 120, 135, 115, 78, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(10, 'Caterpie', 45, 30, 35, 20, 20, 45, 'bug', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(11, 'Metapod', 50, 20, 55, 25, 25, 30, 'bug', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(12, 'Butterfree', 60, 45, 50, 90, 80, 70, 'bug', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(13, 'Weedle', 40, 35, 30, 20, 20, 50, 'bug', 'poison', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(14, 'Kakuna', 45, 25, 50, 25, 25, 35, 'bug', 'poison', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(15, 'Beedrill', 65, 150, 40, 15, 80, 145, 'bug', 'poison', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(16, 'Pidgey', 40, 45, 40, 35, 35, 56, 'normal', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(17, 'Pidgeotto', 63, 60, 55, 50, 50, 71, 'normal', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(18, 'Pidgeot', 83, 80, 80, 135, 80, 121, 'normal', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(19, 'Rattata', 30, 56, 35, 25, 35, 72, 'normal', 'dark', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(20, 'Raticate', 75, 71, 70, 40, 80, 77, 'normal', 'dark', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(21, 'Spearow', 40, 60, 30, 31, 31, 70, 'normal', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(22, 'Fearow', 65, 90, 65, 61, 61, 100, 'normal', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(23, 'Ekans', 35, 60, 44, 40, 54, 55, 'poison', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(24, 'Arbok', 60, 95, 69, 65, 79, 80, 'poison', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(25, 'Pikachu', 35, 55, 40, 50, 50, 90, 'electric', '', 1, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(26, 'Raichu', 60, 85, 50, 95, 85, 110, 'electric', 'electric', 1, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(27, 'Sandshrew', 50, 75, 90, 10, 35, 40, 'ground', 'ice', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(28, 'Sandslash', 75, 100, 120, 25, 65, 65, 'ground', 'ice', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(29, 'Nidoran♀', 55, 47, 52, 40, 40, 41, 'poison', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(30, 'Nidorina', 70, 62, 67, 55, 55, 56, 'poison', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(31, 'Nidoqueen', 90, 92, 87, 75, 85, 76, 'poison', 'ground', 1, 0, '0.50', '1.00', '1.00', '0.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '0.25', '2.00', '0.50', '1.00', '2.00'),
(32, 'Nidoran♂', 46, 57, 40, 40, 40, 50, 'poison', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(33, 'Nidorino', 61, 72, 57, 55, 55, 65, 'poison', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(34, 'Nidoking', 81, 102, 77, 85, 75, 85, 'poison', 'ground', 1, 0, '0.50', '1.00', '1.00', '0.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '0.25', '2.00', '0.50', '1.00', '2.00'),
(35, 'Clefairy', 70, 45, 48, 60, 65, 35, 'fairy', '', 1, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(36, 'Clefable', 95, 70, 73, 95, 90, 60, 'fairy', '', 1, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(37, 'Vulpix', 38, 41, 40, 50, 65, 65, 'fire', 'ice', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(38, 'Ninetales', 73, 67, 75, 81, 100, 109, 'fire', 'ice', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(39, 'Jigglypuff', 115, 45, 20, 45, 25, 20, 'normal', 'fairy', 1, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(40, 'Wigglytuff', 140, 70, 45, 85, 50, 45, 'normal', 'fairy', 1, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(41, 'Zubat', 40, 45, 35, 30, 40, 55, 'poison', 'flying', 1, 0, '0.25', '1.00', '1.00', '2.00', '0.50', '0.25', '1.00', '1.00', '1.00', '0.25', '0.00', '2.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(42, 'Golbat', 75, 80, 70, 65, 75, 90, 'poison', 'flying', 1, 0, '0.25', '1.00', '1.00', '2.00', '0.50', '0.25', '1.00', '1.00', '1.00', '0.25', '0.00', '2.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(43, 'Oddish', 45, 50, 55, 75, 65, 30, 'grass', 'poison', 1, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(44, 'Gloom', 60, 65, 70, 85, 75, 40, 'grass', 'poison', 1, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(45, 'Vileplume', 75, 80, 85, 110, 90, 50, 'grass', 'poison', 1, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(46, 'Paras', 35, 70, 55, 45, 55, 25, 'bug', 'grass', 1, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '0.50', '4.00', '4.00', '1.00', '0.25', '0.25', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(47, 'Parasect', 60, 95, 80, 60, 80, 30, 'bug', 'grass', 1, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '0.50', '4.00', '4.00', '1.00', '0.25', '0.25', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(48, 'Venonat', 60, 55, 50, 40, 55, 45, 'bug', 'poison', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(49, 'Venomoth', 70, 65, 60, 90, 75, 90, 'bug', 'poison', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(50, 'Diglett', 10, 55, 30, 35, 45, 90, 'ground', 'ground', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(51, 'Dugtrio', 35, 100, 60, 50, 70, 110, 'ground', 'ground', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(52, 'Meowth', 40, 35, 35, 50, 40, 90, 'normal', 'dark', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(53, 'Persian', 65, 60, 60, 75, 65, 115, 'normal', 'dark', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(54, 'Psyduck', 50, 52, 48, 65, 50, 55, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(55, 'Golduck', 80, 82, 78, 95, 80, 85, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(56, 'Mankey', 40, 80, 35, 35, 45, 70, 'fighting', '', 1, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(57, 'Primeape', 65, 105, 60, 60, 70, 95, 'fighting', '', 1, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(58, 'Growlithe', 55, 70, 45, 70, 50, 60, 'fire', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(59, 'Arcanine', 90, 110, 80, 100, 80, 95, 'fire', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(60, 'Poliwag', 40, 50, 40, 40, 40, 90, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(61, 'Poliwhirl', 65, 65, 65, 50, 50, 90, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(62, 'Poliwrath', 90, 95, 95, 70, 90, 70, 'water', 'fighting', 1, 0, '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50'),
(63, 'Abra', 25, 20, 15, 105, 55, 90, 'psychic', '', 1, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(64, 'Kadabra', 40, 35, 30, 120, 70, 105, 'psychic', '', 1, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(65, 'Alakazam', 55, 50, 65, 175, 105, 150, 'psychic', '', 1, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(66, 'Machop', 70, 80, 50, 35, 35, 35, 'fighting', '', 1, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(67, 'Machoke', 80, 100, 70, 50, 60, 45, 'fighting', '', 1, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(68, 'Machamp', 90, 130, 80, 65, 85, 55, 'fighting', '', 1, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(69, 'Bellsprout', 50, 75, 35, 70, 30, 40, 'grass', 'poison', 1, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(70, 'Weepinbell', 65, 90, 50, 85, 45, 55, 'grass', 'poison', 1, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(71, 'Victreebel', 80, 105, 65, 100, 70, 70, 'grass', 'poison', 1, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(72, 'Tentacool', 40, 40, 35, 50, 100, 70, 'water', 'poison', 1, 0, '0.50', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '0.50'),
(73, 'Tentacruel', 80, 70, 65, 80, 120, 100, 'water', 'poison', 1, 0, '0.50', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '0.50'),
(74, 'Geodude', 40, 80, 100, 30, 30, 20, 'rock', 'ground', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '0.50', '0.50', '1.00', '4.00', '2.00', '2.00', '0.50', '0.25', '1.00', '0.50', '2.00', '4.00'),
(75, 'Graveler', 55, 95, 115, 45, 45, 35, 'rock', 'ground', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '0.50', '0.50', '1.00', '4.00', '2.00', '2.00', '0.50', '0.25', '1.00', '0.50', '2.00', '4.00'),
(76, 'Golem', 80, 120, 130, 55, 65, 45, 'rock', 'ground', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '0.50', '0.50', '1.00', '4.00', '2.00', '2.00', '0.50', '0.25', '1.00', '0.50', '2.00', '4.00'),
(77, 'Ponyta', 50, 85, 55, 65, 65, 90, 'fire', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(78, 'Rapidash', 65, 100, 70, 80, 80, 105, 'fire', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(79, 'Slowpoke', 90, 65, 65, 40, 40, 15, 'water', 'psychic', 1, 0, '2.00', '2.00', '1.00', '2.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50'),
(80, 'Slowbro', 95, 75, 180, 130, 80, 30, 'water', 'psychic', 1, 0, '2.00', '2.00', '1.00', '2.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50'),
(81, 'Magnemite', 25, 35, 70, 95, 55, 45, 'electric', 'steel', 1, 0, '0.50', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '0.25', '1.00', '0.50', '4.00', '0.50', '0.50', '0.00', '0.50', '0.50', '0.25', '1.00'),
(82, 'Magneton', 50, 60, 95, 120, 70, 70, 'electric', 'steel', 1, 0, '0.50', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '0.25', '1.00', '0.50', '4.00', '0.50', '0.50', '0.00', '0.50', '0.50', '0.25', '1.00'),
(83, 'Farfetch\'d', 52, 90, 55, 58, 62, 60, 'normal', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(84, 'Doduo', 35, 85, 45, 35, 35, 75, 'normal', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(85, 'Dodrio', 60, 110, 70, 60, 60, 110, 'normal', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(86, 'Seel', 65, 45, 55, 45, 70, 45, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(87, 'Dewgong', 90, 70, 80, 70, 95, 70, 'water', 'ice', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(88, 'Grimer', 80, 80, 50, 40, 50, 25, 'poison', 'poison', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(89, 'Muk', 105, 105, 75, 65, 100, 50, 'poison', 'poison', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(90, 'Shellder', 30, 65, 100, 45, 25, 40, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(91, 'Cloyster', 50, 95, 180, 85, 45, 70, 'water', 'ice', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(92, 'Gastly', 30, 35, 30, 100, 35, 80, 'ghost', 'poison', 1, 0, '0.25', '2.00', '1.00', '1.00', '0.50', '0.00', '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.00', '0.25', '2.00', '1.00', '1.00', '1.00'),
(93, 'Haunter', 45, 50, 45, 115, 55, 95, 'ghost', 'poison', 1, 0, '0.25', '2.00', '1.00', '1.00', '0.50', '0.00', '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.00', '0.25', '2.00', '1.00', '1.00', '1.00'),
(94, 'Gengar', 60, 65, 80, 170, 95, 130, 'ghost', 'poison', 1, 0, '0.25', '2.00', '1.00', '1.00', '0.50', '0.00', '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.00', '0.25', '2.00', '1.00', '1.00', '1.00'),
(95, 'Onix', 35, 45, 160, 30, 45, 70, 'rock', 'ground', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '0.50', '0.50', '1.00', '4.00', '2.00', '2.00', '0.50', '0.25', '1.00', '0.50', '2.00', '4.00'),
(96, 'Drowzee', 60, 48, 45, 43, 90, 42, 'psychic', '', 1, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(97, 'Hypno', 85, 73, 70, 73, 115, 67, 'psychic', '', 1, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(98, 'Krabby', 30, 105, 90, 25, 25, 50, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(99, 'Kingler', 55, 130, 115, 50, 50, 75, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(100, 'Voltorb', 40, 30, 50, 55, 55, 100, 'electric', '', 1, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(101, 'Electrode', 60, 50, 70, 80, 80, 150, 'electric', '', 1, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(102, 'Exeggcute', 60, 40, 80, 60, 45, 40, 'grass', 'psychic', 1, 0, '4.00', '2.00', '1.00', '0.50', '1.00', '0.50', '2.00', '2.00', '2.00', '0.50', '0.50', '2.00', '1.00', '2.00', '0.50', '1.00', '1.00', '0.50'),
(103, 'Exeggutor', 95, 105, 85, 125, 75, 45, 'grass', 'psychic', 1, 0, '4.00', '2.00', '1.00', '0.50', '1.00', '0.50', '2.00', '2.00', '2.00', '0.50', '0.50', '2.00', '1.00', '2.00', '0.50', '1.00', '1.00', '0.50'),
(104, 'Cubone', 50, 50, 95, 40, 50, 35, 'ground', '', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(105, 'Marowak', 60, 80, 110, 50, 80, 45, 'ground', 'fire', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(106, 'Hitmonlee', 50, 120, 53, 35, 110, 87, 'fighting', '', 1, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(107, 'Hitmonchan', 50, 105, 79, 35, 110, 76, 'fighting', '', 1, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(108, 'Lickitung', 90, 55, 75, 60, 75, 30, 'normal', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(109, 'Koffing', 40, 65, 95, 60, 45, 35, 'poison', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(110, 'Weezing', 65, 90, 120, 85, 70, 60, 'poison', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(111, 'Rhyhorn', 80, 85, 95, 30, 30, 25, 'ground', 'rock', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '0.50', '0.50', '1.00', '4.00', '2.00', '2.00', '0.50', '0.25', '1.00', '0.50', '2.00', '4.00'),
(112, 'Rhydon', 105, 130, 120, 45, 45, 40, 'ground', 'rock', 1, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '0.50', '0.50', '1.00', '4.00', '2.00', '2.00', '0.50', '0.25', '1.00', '0.50', '2.00', '4.00'),
(113, 'Chansey', 250, 5, 5, 35, 105, 50, 'normal', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(114, 'Tangela', 65, 55, 115, 100, 40, 60, 'grass', '', 1, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(115, 'Kangaskhan', 105, 125, 100, 60, 100, 100, 'normal', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(116, 'Horsea', 30, 40, 70, 70, 25, 60, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(117, 'Seadra', 55, 65, 95, 95, 45, 85, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(118, 'Goldeen', 45, 67, 60, 35, 50, 63, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(119, 'Seaking', 80, 92, 65, 65, 80, 68, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(120, 'Staryu', 30, 45, 55, 70, 55, 85, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(121, 'Starmie', 60, 75, 85, 100, 85, 115, 'water', 'psychic', 1, 0, '2.00', '2.00', '1.00', '2.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50'),
(122, 'Mr. Mime', 40, 45, 65, 100, 120, 90, 'psychic', 'fairy', 1, 0, '1.00', '1.00', '0.00', '1.00', '1.00', '0.25', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '2.00', '1.00'),
(123, 'Scyther', 70, 110, 80, 55, 80, 105, 'bug', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(124, 'Jynx', 65, 50, 35, 115, 95, 95, 'ice', 'psychic', 1, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00'),
(125, 'Electabuzz', 65, 83, 57, 95, 85, 105, 'electric', '', 1, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(126, 'Magmar', 65, 95, 57, 100, 85, 93, 'fire', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(127, 'Pinsir', 65, 155, 120, 65, 90, 105, 'bug', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(128, 'Tauros', 75, 100, 95, 40, 70, 110, 'normal', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(129, 'Magikarp', 20, 10, 55, 15, 20, 80, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(130, 'Gyarados', 95, 155, 109, 70, 130, 81, 'water', 'flying', 1, 0, '0.50', '1.00', '1.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(131, 'Lapras', 130, 85, 80, 85, 95, 60, 'water', 'ice', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(132, 'Ditto', 48, 48, 48, 48, 48, 48, 'normal', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(133, 'Eevee', 55, 55, 50, 45, 65, 55, 'normal', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(134, 'Vaporeon', 130, 65, 60, 110, 95, 65, 'water', '', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(135, 'Jolteon', 65, 65, 60, 110, 95, 130, 'electric', '', 1, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(136, 'Flareon', 65, 130, 60, 95, 110, 65, 'fire', '', 1, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(137, 'Porygon', 65, 60, 70, 85, 75, 40, 'normal', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(138, 'Omanyte', 35, 40, 100, 90, 55, 35, 'rock', 'water', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(139, 'Omastar', 70, 60, 125, 115, 70, 55, 'rock', 'water', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(140, 'Kabuto', 30, 80, 90, 55, 45, 55, 'rock', 'water', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(141, 'Kabutops', 60, 115, 105, 65, 70, 80, 'rock', 'water', 1, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(142, 'Aerodactyl', 80, 135, 85, 70, 95, 150, 'rock', 'flying', 1, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '0.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '2.00'),
(143, 'Snorlax', 160, 110, 65, 65, 110, 30, 'normal', '', 1, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(144, 'Articuno', 90, 85, 100, 95, 125, 85, 'ice', 'flying', 1, 1, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.00', '1.00', '1.00', '1.00', '1.00', '4.00', '2.00', '1.00'),
(145, 'Zapdos', 90, 90, 85, 125, 90, 100, 'electric', 'flying', 1, 1, '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00'),
(146, 'Moltres', 90, 100, 90, 125, 85, 90, 'fire', 'flying', 1, 1, '0.25', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '1.00', '1.00', '1.00', '1.00', '4.00', '0.50', '2.00'),
(147, 'Dratini', 41, 64, 45, 50, 50, 50, 'dragon', '', 1, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(148, 'Dragonair', 61, 84, 65, 70, 70, 70, 'dragon', '', 1, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(149, 'Dragonite', 91, 134, 95, 100, 100, 80, 'dragon', 'flying', 1, 0, '0.50', '1.00', '2.00', '1.00', '2.00', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '4.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(150, 'Mewtwo', 106, 150, 70, 194, 120, 140, 'psychic', '', 1, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(151, 'Mew', 100, 100, 100, 100, 100, 100, 'psychic', '', 1, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(152, 'Chikorita', 45, 49, 65, 49, 65, 45, 'grass', '', 2, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(153, 'Bayleef', 60, 62, 80, 63, 80, 60, 'grass', '', 2, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(154, 'Meganium', 80, 82, 100, 83, 100, 80, 'grass', '', 2, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(155, 'Cyndaquil', 39, 52, 43, 60, 50, 65, 'fire', '', 2, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(156, 'Quilava', 58, 64, 58, 80, 65, 80, 'fire', '', 2, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(157, 'Typhlosion', 78, 84, 78, 109, 85, 100, 'fire', '', 2, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(158, 'Totodile', 50, 65, 64, 44, 48, 43, 'water', '', 2, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(159, 'Croconaw', 65, 80, 80, 59, 63, 58, 'water', '', 2, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(160, 'Feraligatr', 85, 105, 100, 79, 83, 78, 'water', '', 2, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(161, 'Sentret', 35, 46, 34, 35, 45, 20, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(162, 'Furret', 85, 76, 64, 45, 55, 90, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(163, 'Hoothoot', 60, 30, 30, 36, 56, 50, 'normal', 'flying', 2, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(164, 'Noctowl', 100, 50, 50, 86, 96, 70, 'normal', 'flying', 2, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(165, 'Ledyba', 40, 20, 30, 40, 80, 55, 'bug', 'flying', 2, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(166, 'Ledian', 55, 35, 50, 55, 110, 85, 'bug', 'flying', 2, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(167, 'Spinarak', 40, 60, 40, 40, 40, 30, 'bug', 'poison', 2, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(168, 'Ariados', 70, 90, 70, 60, 70, 40, 'bug', 'poison', 2, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(169, 'Crobat', 85, 90, 80, 70, 80, 130, 'poison', 'flying', 2, 0, '0.25', '1.00', '1.00', '2.00', '0.50', '0.25', '1.00', '1.00', '1.00', '0.25', '0.00', '2.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(170, 'Chinchou', 75, 38, 38, 56, 56, 67, 'water', 'electric', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.25', '0.50'),
(171, 'Lanturn', 125, 58, 58, 76, 76, 67, 'water', 'electric', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.25', '0.50'),
(172, 'Pichu', 20, 40, 15, 35, 35, 60, 'electric', '', 2, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(173, 'Cleffa', 50, 25, 28, 45, 55, 15, 'fairy', '', 2, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(174, 'Igglybuff', 90, 30, 15, 40, 20, 15, 'normal', 'fairy', 2, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(175, 'Togepi', 35, 20, 65, 40, 65, 20, 'fairy', '', 2, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(176, 'Togetic', 55, 40, 85, 80, 105, 40, 'fairy', 'flying', 2, 0, '0.25', '0.50', '0.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '0.00', '2.00', '1.00', '2.00', '1.00', '2.00', '2.00', '1.00'),
(177, 'Natu', 40, 50, 45, 70, 45, 70, 'psychic', 'flying', 2, 0, '1.00', '2.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '2.00', '0.50', '0.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00'),
(178, 'Xatu', 65, 75, 70, 95, 70, 95, 'psychic', 'flying', 2, 0, '1.00', '2.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '2.00', '0.50', '0.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00'),
(179, 'Mareep', 55, 40, 40, 65, 45, 35, 'electric', '', 2, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(180, 'Flaaffy', 70, 55, 55, 80, 60, 45, 'electric', '', 2, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(181, 'Ampharos', 90, 95, 105, 165, 110, 45, 'electric', '', 2, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(182, 'Bellossom', 75, 80, 95, 90, 100, 50, 'grass', '', 2, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(183, 'Marill', 70, 20, 50, 20, 50, 40, 'water', 'fairy', 2, 0, '0.50', '0.50', '0.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(184, 'Azumarill', 100, 50, 80, 60, 80, 50, 'water', 'fairy', 2, 0, '0.50', '0.50', '0.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(185, 'Sudowoodo', 70, 100, 115, 30, 65, 30, 'rock', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(186, 'Politoed', 90, 75, 75, 90, 100, 70, 'water', '', 2, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(187, 'Hoppip', 35, 35, 40, 35, 55, 50, 'grass', 'flying', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.25', '0.00', '4.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(188, 'Skiploom', 55, 45, 50, 45, 65, 80, 'grass', 'flying', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.25', '0.00', '4.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(189, 'Jumpluff', 75, 55, 70, 55, 95, 110, 'grass', 'flying', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.25', '0.00', '4.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(190, 'Aipom', 55, 70, 55, 40, 55, 85, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(191, 'Sunkern', 30, 30, 30, 30, 30, 30, 'grass', '', 2, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(192, 'Sunflora', 75, 75, 55, 105, 85, 30, 'grass', '', 2, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(193, 'Yanma', 65, 65, 45, 75, 45, 95, 'bug', 'flying', 2, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(194, 'Wooper', 55, 45, 45, 25, 25, 15, 'water', 'ground', 2, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00'),
(195, 'Quagsire', 95, 85, 85, 65, 65, 35, 'water', 'ground', 2, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00'),
(196, 'Espeon', 65, 65, 60, 130, 95, 110, 'psychic', '', 2, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(197, 'Umbreon', 95, 65, 110, 60, 130, 65, 'dark', '', 2, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(198, 'Murkrow', 60, 85, 42, 85, 42, 91, 'dark', 'flying', 2, 0, '1.00', '0.50', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '0.50', '0.00', '2.00', '1.00', '1.00', '0.00', '2.00', '1.00', '1.00'),
(199, 'Slowking', 95, 75, 80, 100, 110, 30, 'water', 'psychic', 2, 0, '2.00', '2.00', '1.00', '2.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50'),
(200, 'Misdreavus', 60, 60, 60, 85, 85, 85, 'ghost', '', 2, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00', '1.00', '1.00'),
(201, 'Unown', 48, 72, 48, 72, 48, 48, 'psychic', '', 2, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(202, 'Wobbuffet', 190, 33, 58, 33, 58, 33, 'psychic', '', 2, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(203, 'Girafarig', 70, 80, 65, 90, 65, 85, 'normal', 'psychic', 2, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(204, 'Pineco', 50, 65, 90, 35, 35, 15, 'bug', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(205, 'Forretress', 75, 90, 140, 60, 60, 40, 'bug', 'steel', 2, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '1.00', '4.00', '1.00', '1.00', '0.25', '1.00', '0.50', '0.50', '0.00', '0.50', '1.00', '0.50', '1.00'),
(206, 'Dunsparce', 100, 70, 70, 65, 65, 45, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(207, 'Gligar', 65, 75, 105, 35, 65, 85, 'ground', 'flying', 2, 0, '0.50', '1.00', '1.00', '0.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.00', '4.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00'),
(208, 'Steelix', 75, 125, 230, 55, 95, 30, 'steel', 'ground', 2, 0, '0.50', '1.00', '0.50', '0.00', '0.50', '2.00', '2.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '0.00', '0.50', '0.25', '0.50', '2.00'),
(209, 'Snubbull', 60, 80, 50, 40, 40, 30, 'fairy', '', 2, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(210, 'Granbull', 90, 120, 75, 60, 60, 45, 'fairy', '', 2, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(211, 'Qwilfish', 65, 95, 85, 55, 55, 85, 'water', 'poison', 2, 0, '0.50', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '0.50'),
(212, 'Scizor', 70, 150, 140, 65, 100, 75, 'bug', 'steel', 2, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '1.00', '4.00', '1.00', '1.00', '0.25', '1.00', '0.50', '0.50', '0.00', '0.50', '1.00', '0.50', '1.00'),
(213, 'Shuckle', 20, 10, 230, 10, 230, 5, 'bug', 'rock', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '2.00'),
(214, 'Heracross', 80, 185, 115, 40, 105, 75, 'bug', 'fighting', 2, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '0.50', '2.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00'),
(215, 'Sneasel', 55, 95, 55, 35, 75, 115, 'dark', 'ice', 2, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '4.00', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '1.00', '0.00', '2.00', '2.00', '1.00'),
(216, 'Teddiursa', 60, 80, 50, 50, 50, 40, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(217, 'Ursaring', 90, 130, 75, 75, 75, 55, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(218, 'Slugma', 40, 40, 40, 70, 40, 20, 'fire', '', 2, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(219, 'Magcargo', 60, 50, 120, 90, 80, 30, 'fire', 'rock', 2, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '0.25', '0.50', '1.00', '1.00', '4.00', '0.50', '0.50', '0.50', '1.00', '2.00', '1.00', '4.00'),
(220, 'Swinub', 50, 50, 40, 30, 30, 50, 'ice', 'ground', 2, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00'),
(221, 'Piloswine', 100, 100, 80, 60, 60, 50, 'ice', 'ground', 2, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00'),
(222, 'Corsola', 65, 55, 95, 65, 95, 35, 'water', 'rock', 2, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(223, 'Remoraid', 35, 65, 35, 65, 35, 65, 'water', '', 2, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(224, 'Octillery', 75, 105, 75, 105, 75, 45, 'water', '', 2, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(225, 'Delibird', 45, 55, 45, 65, 45, 75, 'ice', 'flying', 2, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.00', '1.00', '1.00', '1.00', '1.00', '4.00', '2.00', '1.00'),
(226, 'Mantine', 85, 40, 70, 80, 140, 70, 'water', 'flying', 2, 0, '0.50', '1.00', '1.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(227, 'Skarmory', 65, 80, 140, 40, 70, 70, 'steel', 'flying', 2, 0, '0.25', '1.00', '0.50', '2.00', '0.50', '1.00', '2.00', '0.50', '1.00', '0.25', '0.00', '1.00', '0.50', '0.00', '0.50', '1.00', '0.50', '1.00'),
(228, 'Houndour', 45, 60, 30, 80, 50, 65, 'dark', 'fire', 2, 0, '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50', '0.50', '2.00', '0.50', '1.00', '1.00', '0.00', '2.00', '0.50', '2.00'),
(229, 'Houndoom', 75, 90, 90, 140, 90, 115, 'dark', 'fire', 2, 0, '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50', '0.50', '2.00', '0.50', '1.00', '1.00', '0.00', '2.00', '0.50', '2.00'),
(230, 'Kingdra', 75, 95, 95, 95, 95, 85, 'water', 'dragon', 2, 0, '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.25'),
(231, 'Phanpy', 90, 60, 60, 40, 40, 40, 'ground', '', 2, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(232, 'Donphan', 90, 120, 120, 60, 60, 50, 'ground', '', 2, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(233, 'Porygon2', 85, 80, 90, 105, 95, 60, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(234, 'Stantler', 73, 95, 62, 85, 65, 85, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(235, 'Smeargle', 55, 20, 35, 20, 45, 75, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(236, 'Tyrogue', 35, 35, 35, 35, 35, 35, 'fighting', '', 2, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(237, 'Hitmontop', 50, 95, 95, 35, 110, 70, 'fighting', '', 2, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(238, 'Smoochum', 45, 30, 15, 85, 65, 65, 'ice', 'psychic', 2, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00'),
(239, 'Elekid', 45, 63, 37, 65, 55, 95, 'electric', '', 2, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00');
INSERT INTO `Pokemon` (`pokedex_number`, `name`, `hp`, `attack`, `defense`, `sp_attack`, `sp_defense`, `speed`, `type1`, `type2`, `generation`, `is_legendary`, `against_bug`, `against_dark`, `against_dragon`, `against_electric`, `against_fairy`, `against_fight`, `against_fire`, `against_flying`, `against_ghost`, `against_grass`, `against_ground`, `against_ice`, `against_normal`, `against_poison`, `against_psychic`, `against_rock`, `against_steel`, `against_water`) VALUES
(240, 'Magby', 45, 75, 37, 70, 55, 83, 'fire', '', 2, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(241, 'Miltank', 95, 80, 105, 40, 70, 100, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(242, 'Blissey', 255, 10, 10, 75, 135, 55, 'normal', '', 2, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(243, 'Raikou', 90, 85, 75, 115, 100, 115, 'electric', '', 2, 1, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(244, 'Entei', 115, 115, 85, 90, 75, 100, 'fire', '', 2, 1, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(245, 'Suicune', 100, 75, 115, 90, 115, 85, 'water', '', 2, 1, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(246, 'Larvitar', 50, 64, 50, 45, 50, 41, 'rock', 'ground', 2, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '0.50', '0.50', '1.00', '4.00', '2.00', '2.00', '0.50', '0.25', '1.00', '0.50', '2.00', '4.00'),
(247, 'Pupitar', 70, 84, 70, 65, 70, 51, 'rock', 'ground', 2, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '0.50', '0.50', '1.00', '4.00', '2.00', '2.00', '0.50', '0.25', '1.00', '0.50', '2.00', '4.00'),
(248, 'Tyranitar', 100, 164, 150, 95, 120, 71, 'rock', 'dark', 2, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '4.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '0.00', '1.00', '2.00', '2.00'),
(249, 'Lugia', 106, 90, 130, 90, 154, 110, 'psychic', 'flying', 2, 1, '1.00', '2.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '2.00', '0.50', '0.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00'),
(250, 'Ho-Oh', 106, 130, 90, 110, 154, 90, 'fire', 'flying', 2, 1, '0.25', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '1.00', '1.00', '1.00', '1.00', '4.00', '0.50', '2.00'),
(251, 'Celebi', 100, 100, 100, 100, 100, 100, 'psychic', 'grass', 2, 1, '4.00', '2.00', '1.00', '0.50', '1.00', '0.50', '2.00', '2.00', '2.00', '0.50', '0.50', '2.00', '1.00', '2.00', '0.50', '1.00', '1.00', '0.50'),
(252, 'Treecko', 40, 45, 35, 65, 55, 70, 'grass', '', 3, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(253, 'Grovyle', 50, 65, 45, 85, 65, 95, 'grass', '', 3, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(254, 'Sceptile', 70, 110, 75, 145, 85, 145, 'grass', '', 3, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(255, 'Torchic', 45, 60, 40, 70, 50, 45, 'fire', '', 3, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(256, 'Combusken', 60, 85, 60, 85, 60, 55, 'fire', 'fighting', 3, 0, '0.25', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '2.00'),
(257, 'Blaziken', 80, 160, 80, 130, 80, 100, 'fire', 'fighting', 3, 0, '0.25', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '2.00'),
(258, 'Mudkip', 50, 70, 50, 50, 50, 40, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(259, 'Marshtomp', 70, 85, 70, 60, 70, 50, 'water', 'ground', 3, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00'),
(260, 'Swampert', 100, 150, 110, 95, 110, 70, 'water', 'ground', 3, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00'),
(261, 'Poochyena', 35, 55, 35, 30, 30, 35, 'dark', '', 3, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(262, 'Mightyena', 70, 90, 70, 60, 60, 70, 'dark', '', 3, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(263, 'Zigzagoon', 38, 30, 41, 30, 41, 60, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(264, 'Linoone', 78, 70, 61, 50, 61, 100, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(265, 'Wurmple', 45, 45, 35, 20, 30, 20, 'bug', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(266, 'Silcoon', 50, 35, 55, 25, 25, 15, 'bug', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(267, 'Beautifly', 60, 70, 50, 100, 50, 65, 'bug', 'flying', 3, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(268, 'Cascoon', 50, 35, 55, 25, 25, 15, 'bug', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(269, 'Dustox', 60, 50, 70, 50, 90, 65, 'bug', 'poison', 3, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(270, 'Lotad', 40, 30, 30, 40, 50, 30, 'water', 'grass', 3, 0, '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.25'),
(271, 'Lombre', 60, 50, 50, 60, 70, 50, 'water', 'grass', 3, 0, '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.25'),
(272, 'Ludicolo', 80, 70, 70, 90, 100, 70, 'water', 'grass', 3, 0, '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.25'),
(273, 'Seedot', 40, 40, 50, 30, 30, 30, 'grass', '', 3, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(274, 'Nuzleaf', 70, 70, 40, 60, 40, 60, 'grass', 'dark', 3, 0, '4.00', '0.50', '1.00', '0.50', '2.00', '2.00', '2.00', '2.00', '0.50', '0.50', '0.50', '2.00', '1.00', '2.00', '0.00', '1.00', '1.00', '0.50'),
(275, 'Shiftry', 90, 100, 60, 90, 60, 80, 'grass', 'dark', 3, 0, '4.00', '0.50', '1.00', '0.50', '2.00', '2.00', '2.00', '2.00', '0.50', '0.50', '0.50', '2.00', '1.00', '2.00', '0.00', '1.00', '1.00', '0.50'),
(276, 'Taillow', 40, 55, 30, 30, 30, 85, 'normal', 'flying', 3, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(277, 'Swellow', 60, 85, 60, 75, 50, 125, 'normal', 'flying', 3, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(278, 'Wingull', 40, 30, 30, 55, 30, 85, 'water', 'flying', 3, 0, '0.50', '1.00', '1.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(279, 'Pelipper', 60, 50, 100, 95, 70, 65, 'water', 'flying', 3, 0, '0.50', '1.00', '1.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(280, 'Ralts', 28, 25, 25, 45, 35, 40, 'psychic', 'fairy', 3, 0, '1.00', '1.00', '0.00', '1.00', '1.00', '0.25', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '2.00', '1.00'),
(281, 'Kirlia', 38, 35, 35, 65, 55, 50, 'psychic', 'fairy', 3, 0, '1.00', '1.00', '0.00', '1.00', '1.00', '0.25', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '2.00', '1.00'),
(282, 'Gardevoir', 68, 85, 65, 165, 135, 100, 'psychic', 'fairy', 3, 0, '1.00', '1.00', '0.00', '1.00', '1.00', '0.25', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '2.00', '1.00'),
(283, 'Surskit', 40, 30, 32, 50, 52, 65, 'bug', 'water', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(284, 'Masquerain', 70, 60, 62, 100, 82, 80, 'bug', 'flying', 3, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(285, 'Shroomish', 60, 40, 60, 40, 60, 35, 'grass', '', 3, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(286, 'Breloom', 60, 130, 80, 60, 60, 70, 'grass', 'fighting', 3, 0, '1.00', '0.50', '1.00', '0.50', '2.00', '1.00', '2.00', '4.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '2.00', '0.50', '1.00', '0.50'),
(287, 'Slakoth', 60, 60, 60, 35, 35, 30, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(288, 'Vigoroth', 80, 80, 80, 55, 55, 90, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(289, 'Slaking', 150, 160, 100, 95, 65, 100, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(290, 'Nincada', 31, 45, 90, 30, 30, 40, 'bug', 'ground', 3, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00'),
(291, 'Ninjask', 61, 90, 45, 50, 50, 160, 'bug', 'flying', 3, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(292, 'Shedinja', 1, 90, 45, 30, 30, 40, 'bug', 'ghost', 3, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '2.00', '2.00', '2.00', '0.50', '0.50', '1.00', '0.00', '0.50', '1.00', '2.00', '1.00', '1.00'),
(293, 'Whismur', 64, 51, 23, 51, 23, 28, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(294, 'Loudred', 84, 71, 43, 71, 43, 48, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(295, 'Exploud', 104, 91, 63, 91, 73, 68, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(296, 'Makuhita', 72, 60, 30, 20, 30, 25, 'fighting', '', 3, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(297, 'Hariyama', 144, 120, 60, 40, 60, 50, 'fighting', '', 3, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(298, 'Azurill', 50, 20, 40, 20, 40, 20, 'normal', 'fairy', 3, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(299, 'Nosepass', 30, 45, 135, 45, 90, 30, 'rock', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(300, 'Skitty', 50, 45, 45, 35, 35, 50, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(301, 'Delcatty', 70, 65, 65, 55, 55, 90, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(302, 'Sableye', 50, 85, 125, 85, 115, 20, 'dark', 'ghost', 3, 0, '1.00', '1.00', '1.00', '1.00', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '1.00', '1.00', '1.00'),
(303, 'Mawile', 50, 105, 125, 55, 95, 50, 'steel', 'fairy', 3, 0, '0.25', '0.50', '0.00', '1.00', '0.50', '1.00', '2.00', '0.50', '1.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.50', '0.50', '1.00', '1.00'),
(304, 'Aron', 50, 70, 100, 40, 40, 30, 'steel', 'rock', 3, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '4.00', '1.00', '0.25', '1.00', '1.00', '4.00', '0.50', '0.25', '0.00', '0.50', '0.50', '1.00', '2.00'),
(305, 'Lairon', 60, 90, 140, 50, 50, 40, 'steel', 'rock', 3, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '4.00', '1.00', '0.25', '1.00', '1.00', '4.00', '0.50', '0.25', '0.00', '0.50', '0.50', '1.00', '2.00'),
(306, 'Aggron', 70, 140, 230, 60, 80, 50, 'steel', 'rock', 3, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '4.00', '1.00', '0.25', '1.00', '1.00', '4.00', '0.50', '0.25', '0.00', '0.50', '0.50', '1.00', '2.00'),
(307, 'Meditite', 30, 40, 55, 40, 55, 60, 'fighting', 'psychic', 3, 0, '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00'),
(308, 'Medicham', 60, 100, 85, 80, 85, 100, 'fighting', 'psychic', 3, 0, '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00'),
(309, 'Electrike', 40, 45, 40, 65, 40, 65, 'electric', '', 3, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(310, 'Manectric', 70, 75, 80, 135, 80, 135, 'electric', '', 3, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(311, 'Plusle', 60, 50, 40, 85, 75, 95, 'electric', '', 3, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(312, 'Minun', 60, 40, 50, 75, 85, 95, 'electric', '', 3, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(313, 'Volbeat', 65, 73, 75, 47, 85, 85, 'bug', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(314, 'Illumise', 65, 47, 75, 73, 85, 85, 'bug', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(315, 'Roselia', 50, 60, 45, 100, 80, 65, 'grass', 'poison', 3, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(316, 'Gulpin', 70, 43, 53, 43, 53, 40, 'poison', '', 3, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(317, 'Swalot', 100, 73, 83, 73, 83, 55, 'poison', '', 3, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(318, 'Carvanha', 45, 90, 20, 65, 20, 65, 'water', 'dark', 3, 0, '2.00', '0.50', '1.00', '2.00', '2.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.00', '1.00', '0.50', '0.50'),
(319, 'Sharpedo', 70, 140, 70, 110, 65, 105, 'water', 'dark', 3, 0, '2.00', '0.50', '1.00', '2.00', '2.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.00', '1.00', '0.50', '0.50'),
(320, 'Wailmer', 130, 70, 35, 70, 35, 60, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(321, 'Wailord', 170, 90, 45, 90, 45, 60, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(322, 'Numel', 60, 60, 40, 65, 45, 35, 'fire', 'ground', 3, 0, '0.50', '1.00', '1.00', '0.00', '0.50', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '0.50', '4.00'),
(323, 'Camerupt', 70, 120, 100, 145, 105, 20, 'fire', 'ground', 3, 0, '0.50', '1.00', '1.00', '0.00', '0.50', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '0.50', '4.00'),
(324, 'Torkoal', 70, 85, 140, 85, 70, 20, 'fire', '', 3, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(325, 'Spoink', 60, 25, 35, 70, 80, 60, 'psychic', '', 3, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(326, 'Grumpig', 80, 45, 65, 90, 110, 80, 'psychic', '', 3, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(327, 'Spinda', 60, 60, 60, 60, 60, 60, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(328, 'Trapinch', 45, 100, 45, 45, 45, 10, 'ground', '', 3, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(329, 'Vibrava', 50, 70, 50, 50, 50, 70, 'ground', 'dragon', 3, 0, '1.00', '1.00', '2.00', '0.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '4.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00'),
(330, 'Flygon', 80, 100, 80, 80, 80, 100, 'ground', 'dragon', 3, 0, '1.00', '1.00', '2.00', '0.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '4.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00'),
(331, 'Cacnea', 50, 85, 40, 85, 40, 35, 'grass', '', 3, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(332, 'Cacturne', 70, 115, 60, 115, 60, 55, 'grass', 'dark', 3, 0, '4.00', '0.50', '1.00', '0.50', '2.00', '2.00', '2.00', '2.00', '0.50', '0.50', '0.50', '2.00', '1.00', '2.00', '0.00', '1.00', '1.00', '0.50'),
(333, 'Swablu', 45, 40, 60, 40, 75, 50, 'normal', 'flying', 3, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(334, 'Altaria', 75, 110, 110, 110, 105, 80, 'dragon', 'flying', 3, 0, '0.50', '1.00', '2.00', '1.00', '2.00', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '4.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(335, 'Zangoose', 73, 115, 60, 60, 60, 90, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(336, 'Seviper', 73, 100, 60, 100, 60, 65, 'poison', '', 3, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(337, 'Lunatone', 90, 55, 65, 95, 85, 70, 'rock', 'psychic', 3, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '2.00', '2.00', '2.00', '1.00', '0.50', '0.50', '0.50', '1.00', '2.00', '2.00'),
(338, 'Solrock', 90, 95, 85, 55, 65, 70, 'rock', 'psychic', 3, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '2.00', '2.00', '2.00', '1.00', '0.50', '0.50', '0.50', '1.00', '2.00', '2.00'),
(339, 'Barboach', 50, 48, 43, 46, 41, 60, 'water', 'ground', 3, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00'),
(340, 'Whiscash', 110, 78, 73, 76, 71, 60, 'water', 'ground', 3, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00'),
(341, 'Corphish', 43, 80, 65, 50, 35, 35, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(342, 'Crawdaunt', 63, 120, 85, 90, 55, 55, 'water', 'dark', 3, 0, '2.00', '0.50', '1.00', '2.00', '2.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.00', '1.00', '0.50', '0.50'),
(343, 'Baltoy', 40, 40, 55, 40, 70, 55, 'ground', 'psychic', 3, 0, '2.00', '2.00', '1.00', '0.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '2.00', '1.00', '0.50', '0.50', '0.50', '1.00', '2.00'),
(344, 'Claydol', 60, 70, 105, 70, 120, 75, 'ground', 'psychic', 3, 0, '2.00', '2.00', '1.00', '0.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '2.00', '1.00', '0.50', '0.50', '0.50', '1.00', '2.00'),
(345, 'Lileep', 66, 41, 77, 61, 87, 23, 'rock', 'grass', 3, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '1.00'),
(346, 'Cradily', 86, 81, 97, 81, 107, 43, 'rock', 'grass', 3, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '1.00'),
(347, 'Anorith', 45, 95, 50, 40, 50, 75, 'rock', 'bug', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '2.00'),
(348, 'Armaldo', 75, 125, 100, 70, 80, 45, 'rock', 'bug', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '2.00'),
(349, 'Feebas', 20, 15, 20, 10, 55, 80, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(350, 'Milotic', 95, 60, 79, 100, 125, 81, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(351, 'Castform', 70, 70, 70, 70, 70, 70, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(352, 'Kecleon', 60, 90, 70, 60, 120, 40, 'normal', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(353, 'Shuppet', 44, 75, 35, 63, 33, 45, 'ghost', '', 3, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00', '1.00', '1.00'),
(354, 'Banette', 64, 165, 75, 93, 83, 75, 'ghost', '', 3, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00', '1.00', '1.00'),
(355, 'Duskull', 20, 40, 90, 30, 90, 25, 'ghost', '', 3, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00', '1.00', '1.00'),
(356, 'Dusclops', 40, 70, 130, 60, 130, 25, 'ghost', '', 3, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00', '1.00', '1.00'),
(357, 'Tropius', 99, 68, 83, 72, 87, 51, 'grass', 'flying', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.25', '0.00', '4.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(358, 'Chimecho', 75, 50, 80, 95, 90, 65, 'psychic', '', 3, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(359, 'Absol', 65, 150, 60, 115, 60, 115, 'dark', '', 3, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(360, 'Wynaut', 95, 23, 48, 23, 48, 23, 'psychic', '', 3, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(361, 'Snorunt', 50, 50, 50, 50, 50, 50, 'ice', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(362, 'Glalie', 80, 120, 80, 120, 80, 100, 'ice', '', 3, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(363, 'Spheal', 70, 40, 50, 55, 50, 25, 'ice', 'water', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(364, 'Sealeo', 90, 60, 70, 75, 70, 45, 'ice', 'water', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(365, 'Walrein', 110, 80, 90, 95, 90, 65, 'ice', 'water', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(366, 'Clamperl', 35, 64, 85, 74, 55, 32, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(367, 'Huntail', 55, 104, 105, 94, 75, 52, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(368, 'Gorebyss', 55, 84, 105, 114, 75, 52, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(369, 'Relicanth', 100, 90, 130, 45, 65, 55, 'water', 'rock', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(370, 'Luvdisc', 43, 30, 55, 40, 65, 97, 'water', '', 3, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(371, 'Bagon', 45, 75, 60, 40, 30, 50, 'dragon', '', 3, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(372, 'Shelgon', 65, 95, 100, 60, 50, 50, 'dragon', '', 3, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(373, 'Salamence', 95, 145, 130, 120, 90, 120, 'dragon', 'flying', 3, 0, '0.50', '1.00', '2.00', '1.00', '2.00', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '4.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(374, 'Beldum', 40, 55, 80, 35, 60, 30, 'steel', 'psychic', 3, 0, '1.00', '2.00', '0.50', '1.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.25', '0.50', '0.50', '1.00'),
(375, 'Metang', 60, 75, 100, 55, 80, 50, 'steel', 'psychic', 3, 0, '1.00', '2.00', '0.50', '1.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.25', '0.50', '0.50', '1.00'),
(376, 'Metagross', 80, 145, 150, 105, 110, 110, 'steel', 'psychic', 3, 0, '1.00', '2.00', '0.50', '1.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.25', '0.50', '0.50', '1.00'),
(377, 'Regirock', 80, 100, 200, 50, 100, 50, 'rock', '', 3, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(378, 'Regice', 80, 50, 100, 100, 200, 50, 'ice', '', 3, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(379, 'Registeel', 80, 75, 150, 75, 150, 50, 'steel', '', 3, 1, '0.50', '1.00', '0.50', '1.00', '0.50', '2.00', '2.00', '0.50', '1.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.50', '0.50', '0.50', '1.00'),
(380, 'Latias', 80, 100, 120, 140, 150, 110, 'dragon', 'psychic', 3, 1, '2.00', '2.00', '2.00', '0.50', '2.00', '0.50', '0.50', '1.00', '2.00', '0.50', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '0.50'),
(381, 'Latios', 80, 130, 100, 160, 120, 110, 'dragon', 'psychic', 3, 1, '2.00', '2.00', '2.00', '0.50', '2.00', '0.50', '0.50', '1.00', '2.00', '0.50', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '0.50'),
(382, 'Kyogre', 100, 150, 90, 180, 160, 90, 'water', '', 3, 1, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(383, 'Groudon', 100, 180, 160, 150, 90, 90, 'ground', '', 3, 1, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(384, 'Rayquaza', 105, 180, 100, 180, 100, 115, 'dragon', 'flying', 3, 1, '0.50', '1.00', '2.00', '1.00', '2.00', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '4.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(385, 'Jirachi', 100, 100, 100, 100, 100, 100, 'steel', 'psychic', 3, 1, '1.00', '2.00', '0.50', '1.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.25', '0.50', '0.50', '1.00'),
(386, 'Deoxys', 50, 95, 90, 95, 90, 180, 'psychic', '', 3, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(387, 'Turtwig', 55, 68, 64, 45, 55, 31, 'grass', '', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(388, 'Grotle', 75, 89, 85, 55, 65, 36, 'grass', '', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(389, 'Torterra', 95, 109, 105, 75, 85, 56, 'grass', 'ground', 4, 0, '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00'),
(390, 'Chimchar', 44, 58, 44, 58, 44, 61, 'fire', '', 4, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(391, 'Monferno', 64, 78, 52, 78, 52, 81, 'fire', 'fighting', 4, 0, '0.25', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '2.00'),
(392, 'Infernape', 76, 104, 71, 104, 71, 108, 'fire', 'fighting', 4, 0, '0.25', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '2.00'),
(393, 'Piplup', 53, 51, 53, 61, 56, 40, 'water', '', 4, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(394, 'Prinplup', 64, 66, 68, 81, 76, 50, 'water', '', 4, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(395, 'Empoleon', 84, 86, 88, 111, 101, 60, 'water', 'steel', 4, 0, '0.50', '1.00', '0.50', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '2.00', '0.25', '0.50', '0.00', '0.50', '0.50', '0.25', '0.50'),
(396, 'Starly', 40, 55, 30, 30, 30, 60, 'normal', 'flying', 4, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(397, 'Staravia', 55, 75, 50, 40, 40, 80, 'normal', 'flying', 4, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(398, 'Staraptor', 85, 120, 70, 50, 60, 100, 'normal', 'flying', 4, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(399, 'Bidoof', 59, 45, 40, 35, 40, 31, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(400, 'Bibarel', 79, 85, 60, 55, 60, 71, 'normal', 'water', 4, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.50', '1.00', '0.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(401, 'Kricketot', 37, 25, 41, 25, 41, 25, 'bug', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(402, 'Kricketune', 77, 85, 51, 55, 51, 65, 'bug', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(403, 'Shinx', 45, 65, 34, 40, 34, 45, 'electric', '', 4, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(404, 'Luxio', 60, 85, 49, 60, 49, 60, 'electric', '', 4, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(405, 'Luxray', 80, 120, 79, 95, 79, 70, 'electric', '', 4, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(406, 'Budew', 40, 30, 35, 50, 70, 55, 'grass', 'poison', 4, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(407, 'Roserade', 60, 70, 65, 125, 105, 90, 'grass', 'poison', 4, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(408, 'Cranidos', 67, 125, 40, 30, 30, 58, 'rock', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(409, 'Rampardos', 97, 165, 60, 65, 50, 58, 'rock', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(410, 'Shieldon', 30, 42, 118, 42, 88, 30, 'rock', 'steel', 4, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '4.00', '1.00', '0.25', '1.00', '1.00', '4.00', '0.50', '0.25', '0.00', '0.50', '0.50', '1.00', '2.00'),
(411, 'Bastiodon', 60, 52, 168, 47, 138, 30, 'rock', 'steel', 4, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '4.00', '1.00', '0.25', '1.00', '1.00', '4.00', '0.50', '0.25', '0.00', '0.50', '0.50', '1.00', '2.00'),
(412, 'Burmy', 40, 29, 45, 29, 45, 36, 'bug', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(413, 'Wormadam', 60, 69, 95, 69, 95, 36, 'bug', 'grass', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '0.50', '4.00', '4.00', '1.00', '0.25', '0.25', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(414, 'Mothim', 70, 94, 50, 94, 50, 66, 'bug', 'flying', 4, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(415, 'Combee', 30, 30, 42, 30, 42, 70, 'bug', 'flying', 4, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(416, 'Vespiquen', 70, 80, 102, 80, 102, 40, 'bug', 'flying', 4, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(417, 'Pachirisu', 60, 45, 70, 45, 90, 95, 'electric', '', 4, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(418, 'Buizel', 55, 65, 35, 60, 30, 85, 'water', '', 4, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(419, 'Floatzel', 85, 105, 55, 85, 50, 115, 'water', '', 4, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(420, 'Cherubi', 45, 35, 45, 62, 53, 35, 'grass', '', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(421, 'Cherrim', 70, 60, 70, 87, 78, 85, 'grass', '', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(422, 'Shellos', 76, 48, 48, 57, 62, 34, 'water', '', 4, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(423, 'Gastrodon', 111, 83, 68, 92, 82, 39, 'water', 'ground', 4, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00'),
(424, 'Ambipom', 75, 100, 66, 60, 66, 115, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(425, 'Drifloon', 90, 50, 34, 60, 44, 70, 'ghost', 'flying', 4, 0, '0.25', '2.00', '1.00', '2.00', '1.00', '0.00', '1.00', '1.00', '2.00', '0.50', '0.00', '2.00', '0.00', '0.50', '1.00', '2.00', '1.00', '1.00'),
(426, 'Drifblim', 150, 80, 44, 90, 54, 80, 'ghost', 'flying', 4, 0, '0.25', '2.00', '1.00', '2.00', '1.00', '0.00', '1.00', '1.00', '2.00', '0.50', '0.00', '2.00', '0.00', '0.50', '1.00', '2.00', '1.00', '1.00'),
(427, 'Buneary', 55, 66, 44, 44, 56, 85, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(428, 'Lopunny', 65, 136, 94, 54, 96, 135, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(429, 'Mismagius', 60, 60, 60, 105, 105, 105, 'ghost', '', 4, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00', '1.00', '1.00'),
(430, 'Honchkrow', 100, 125, 52, 105, 52, 71, 'dark', 'flying', 4, 0, '1.00', '0.50', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '0.50', '0.00', '2.00', '1.00', '1.00', '0.00', '2.00', '1.00', '1.00'),
(431, 'Glameow', 49, 55, 42, 42, 37, 85, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(432, 'Purugly', 71, 82, 64, 64, 59, 112, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(433, 'Chingling', 45, 30, 50, 65, 50, 45, 'psychic', '', 4, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(434, 'Stunky', 63, 63, 47, 41, 41, 74, 'poison', 'dark', 4, 0, '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '2.00', '1.00', '1.00', '0.50', '0.00', '1.00', '1.00', '1.00'),
(435, 'Skuntank', 103, 93, 67, 71, 61, 84, 'poison', 'dark', 4, 0, '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '2.00', '1.00', '1.00', '0.50', '0.00', '1.00', '1.00', '1.00'),
(436, 'Bronzor', 57, 24, 86, 24, 86, 23, 'steel', 'psychic', 4, 0, '1.00', '2.00', '0.50', '1.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.25', '0.50', '0.50', '1.00'),
(437, 'Bronzong', 67, 89, 116, 79, 116, 33, 'steel', 'psychic', 4, 0, '1.00', '2.00', '0.50', '1.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.25', '0.50', '0.50', '1.00'),
(438, 'Bonsly', 50, 80, 95, 10, 45, 10, 'rock', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(439, 'Mime Jr.', 20, 25, 45, 70, 90, 60, 'psychic', 'fairy', 4, 0, '1.00', '1.00', '0.00', '1.00', '1.00', '0.25', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '2.00', '1.00'),
(440, 'Happiny', 100, 5, 5, 15, 65, 30, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(441, 'Chatot', 76, 65, 45, 92, 42, 91, 'normal', 'flying', 4, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(442, 'Spiritomb', 50, 92, 108, 92, 108, 35, 'ghost', 'dark', 4, 0, '1.00', '1.00', '1.00', '1.00', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '1.00', '1.00', '1.00'),
(443, 'Gible', 58, 70, 45, 40, 45, 42, 'dragon', 'ground', 4, 0, '1.00', '1.00', '2.00', '0.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '4.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00'),
(444, 'Gabite', 68, 90, 65, 50, 55, 82, 'dragon', 'ground', 4, 0, '1.00', '1.00', '2.00', '0.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '4.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00'),
(445, 'Garchomp', 108, 170, 115, 120, 95, 92, 'dragon', 'ground', 4, 0, '1.00', '1.00', '2.00', '0.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '4.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00'),
(446, 'Munchlax', 135, 85, 40, 40, 85, 5, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(447, 'Riolu', 40, 70, 40, 35, 40, 60, 'fighting', '', 4, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(448, 'Lucario', 70, 145, 88, 140, 70, 112, 'fighting', 'steel', 4, 0, '0.25', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '2.00', '0.50', '0.50', '0.00', '1.00', '0.25', '0.50', '1.00'),
(449, 'Hippopotas', 68, 72, 78, 38, 42, 32, 'ground', '', 4, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(450, 'Hippowdon', 108, 112, 118, 68, 72, 47, 'ground', '', 4, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(451, 'Skorupi', 40, 50, 90, 30, 55, 65, 'poison', 'bug', 4, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(452, 'Drapion', 70, 90, 110, 60, 75, 95, 'poison', 'dark', 4, 0, '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '2.00', '1.00', '1.00', '0.50', '0.00', '1.00', '1.00', '1.00'),
(453, 'Croagunk', 48, 61, 40, 61, 40, 50, 'poison', 'fighting', 4, 0, '0.25', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '4.00', '0.50', '1.00', '1.00'),
(454, 'Toxicroak', 83, 106, 65, 86, 65, 85, 'poison', 'fighting', 4, 0, '0.25', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '4.00', '0.50', '1.00', '1.00'),
(455, 'Carnivine', 74, 100, 72, 90, 72, 46, 'grass', '', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(456, 'Finneon', 49, 49, 56, 49, 61, 66, 'water', '', 4, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(457, 'Lumineon', 69, 69, 76, 69, 86, 91, 'water', '', 4, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(458, 'Mantyke', 45, 20, 50, 60, 120, 50, 'water', 'flying', 4, 0, '0.50', '1.00', '1.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(459, 'Snover', 60, 62, 50, 62, 60, 40, 'grass', 'ice', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '2.00', '4.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '2.00', '2.00', '0.50'),
(460, 'Abomasnow', 90, 132, 105, 132, 105, 30, 'grass', 'ice', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '2.00', '4.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '2.00', '2.00', '0.50'),
(461, 'Weavile', 70, 120, 65, 45, 85, 125, 'dark', 'ice', 4, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '4.00', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '1.00', '0.00', '2.00', '2.00', '1.00'),
(462, 'Magnezone', 70, 70, 115, 130, 90, 60, 'electric', 'steel', 4, 0, '0.50', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '0.25', '1.00', '0.50', '4.00', '0.50', '0.50', '0.00', '0.50', '0.50', '0.25', '1.00'),
(463, 'Lickilicky', 110, 85, 95, 80, 95, 50, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(464, 'Rhyperior', 115, 140, 130, 55, 55, 40, 'ground', 'rock', 4, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '0.50', '0.50', '1.00', '4.00', '2.00', '2.00', '0.50', '0.25', '1.00', '0.50', '2.00', '4.00'),
(465, 'Tangrowth', 100, 100, 125, 110, 50, 50, 'grass', '', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(466, 'Electivire', 75, 123, 67, 95, 85, 95, 'electric', '', 4, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(467, 'Magmortar', 75, 95, 67, 125, 95, 83, 'fire', '', 4, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(468, 'Togekiss', 85, 50, 95, 120, 115, 80, 'fairy', 'flying', 4, 0, '0.25', '0.50', '0.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '0.00', '2.00', '1.00', '2.00', '1.00', '2.00', '2.00', '1.00'),
(469, 'Yanmega', 86, 76, 86, 116, 56, 95, 'bug', 'flying', 4, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(470, 'Leafeon', 65, 110, 130, 60, 65, 95, 'grass', '', 4, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(471, 'Glaceon', 65, 60, 110, 130, 95, 65, 'ice', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(472, 'Gliscor', 75, 95, 125, 45, 75, 95, 'ground', 'flying', 4, 0, '0.50', '1.00', '1.00', '0.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.00', '4.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00'),
(473, 'Mamoswine', 110, 130, 80, 70, 60, 80, 'ice', 'ground', 4, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00'),
(474, 'Porygon-Z', 85, 80, 70, 135, 75, 90, 'normal', '', 4, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(475, 'Gallade', 68, 165, 95, 65, 115, 110, 'psychic', 'fighting', 4, 0, '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00'),
(476, 'Probopass', 60, 55, 145, 75, 150, 40, 'rock', 'steel', 4, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '4.00', '1.00', '0.25', '1.00', '1.00', '4.00', '0.50', '0.25', '0.00', '0.50', '0.50', '1.00', '2.00'),
(477, 'Dusknoir', 45, 100, 135, 65, 135, 45, 'ghost', '', 4, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00', '1.00', '1.00');
INSERT INTO `Pokemon` (`pokedex_number`, `name`, `hp`, `attack`, `defense`, `sp_attack`, `sp_defense`, `speed`, `type1`, `type2`, `generation`, `is_legendary`, `against_bug`, `against_dark`, `against_dragon`, `against_electric`, `against_fairy`, `against_fight`, `against_fire`, `against_flying`, `against_ghost`, `against_grass`, `against_ground`, `against_ice`, `against_normal`, `against_poison`, `against_psychic`, `against_rock`, `against_steel`, `against_water`) VALUES
(478, 'Froslass', 70, 80, 70, 80, 70, 110, 'ice', 'ghost', 4, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '2.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.00', '0.50', '1.00', '2.00', '2.00', '1.00'),
(479, 'Rotom', 50, 65, 107, 105, 107, 86, 'electric', 'ghost', 4, 0, '0.50', '2.00', '1.00', '0.50', '1.00', '0.00', '1.00', '0.50', '2.00', '1.00', '2.00', '1.00', '0.00', '0.50', '1.00', '1.00', '0.50', '1.00'),
(480, 'Uxie', 75, 75, 130, 75, 130, 95, 'psychic', '', 4, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(481, 'Mesprit', 80, 105, 105, 105, 105, 80, 'psychic', '', 4, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(482, 'Azelf', 75, 125, 70, 125, 70, 115, 'psychic', '', 4, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(483, 'Dialga', 100, 120, 120, 150, 100, 90, 'steel', 'dragon', 4, 1, '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '0.50', '1.00', '0.25', '2.00', '1.00', '0.50', '0.00', '0.50', '0.50', '0.50', '0.50'),
(484, 'Palkia', 90, 120, 100, 150, 120, 100, 'water', 'dragon', 4, 1, '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.25'),
(485, 'Heatran', 91, 90, 106, 130, 106, 77, 'fire', 'steel', 4, 1, '0.25', '1.00', '0.50', '1.00', '0.25', '2.00', '1.00', '0.50', '1.00', '0.25', '4.00', '0.25', '0.50', '0.00', '0.50', '1.00', '0.25', '2.00'),
(486, 'Regigigas', 110, 160, 110, 80, 110, 100, 'normal', '', 4, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(487, 'Giratina', 150, 120, 100, 120, 100, 90, 'ghost', 'dragon', 4, 1, '0.50', '2.00', '2.00', '0.50', '2.00', '0.00', '0.50', '1.00', '2.00', '0.50', '1.00', '2.00', '0.00', '0.50', '1.00', '1.00', '1.00', '0.50'),
(488, 'Cresselia', 120, 70, 120, 75, 130, 85, 'psychic', '', 4, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(489, 'Phione', 80, 80, 80, 80, 80, 80, 'water', '', 4, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(490, 'Manaphy', 100, 100, 100, 100, 100, 100, 'water', '', 4, 1, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(491, 'Darkrai', 70, 90, 90, 135, 90, 125, 'dark', '', 4, 1, '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(492, 'Shaymin', 100, 103, 75, 120, 75, 127, 'grass', 'grass', 4, 1, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(493, 'Arceus', 120, 120, 120, 120, 120, 120, 'normal', '', 4, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(494, 'Victini', 100, 100, 100, 100, 100, 100, 'psychic', 'fire', 5, 1, '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '2.00'),
(495, 'Snivy', 45, 45, 55, 45, 55, 63, 'grass', '', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(496, 'Servine', 60, 60, 75, 60, 75, 83, 'grass', '', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(497, 'Serperior', 75, 75, 95, 75, 95, 113, 'grass', '', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(498, 'Tepig', 65, 63, 45, 45, 45, 45, 'fire', '', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(499, 'Pignite', 90, 93, 55, 70, 55, 55, 'fire', 'fighting', 5, 0, '0.25', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '2.00'),
(500, 'Emboar', 110, 123, 65, 100, 65, 65, 'fire', 'fighting', 5, 0, '0.25', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '2.00'),
(501, 'Oshawott', 55, 55, 45, 63, 45, 45, 'water', '', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(502, 'Dewott', 75, 75, 60, 83, 60, 60, 'water', '', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(503, 'Samurott', 95, 100, 85, 108, 70, 70, 'water', '', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(504, 'Patrat', 45, 55, 39, 35, 39, 42, 'normal', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(505, 'Watchog', 60, 85, 69, 60, 69, 77, 'normal', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(506, 'Lillipup', 45, 60, 45, 25, 45, 55, 'normal', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(507, 'Herdier', 65, 80, 65, 35, 65, 60, 'normal', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(508, 'Stoutland', 85, 110, 90, 45, 90, 80, 'normal', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(509, 'Purrloin', 41, 50, 37, 50, 37, 66, 'dark', '', 5, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(510, 'Liepard', 64, 88, 50, 88, 50, 106, 'dark', '', 5, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(511, 'Pansage', 50, 53, 48, 53, 48, 64, 'grass', '', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(512, 'Simisage', 75, 98, 63, 98, 63, 101, 'grass', '', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(513, 'Pansear', 50, 53, 48, 53, 48, 64, 'fire', '', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(514, 'Simisear', 75, 98, 63, 98, 63, 101, 'fire', '', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(515, 'Panpour', 50, 53, 48, 53, 48, 64, 'water', '', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(516, 'Simipour', 75, 98, 63, 98, 63, 101, 'water', '', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(517, 'Munna', 76, 25, 45, 67, 55, 24, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(518, 'Musharna', 116, 55, 85, 107, 95, 29, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(519, 'Pidove', 50, 55, 50, 36, 30, 43, 'normal', 'flying', 5, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(520, 'Tranquill', 62, 77, 62, 50, 42, 65, 'normal', 'flying', 5, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(521, 'Unfezant', 80, 115, 80, 65, 55, 93, 'normal', 'flying', 5, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(522, 'Blitzle', 45, 60, 32, 50, 32, 76, 'electric', '', 5, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(523, 'Zebstrika', 75, 100, 63, 80, 63, 116, 'electric', '', 5, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(524, 'Roggenrola', 55, 75, 85, 25, 25, 15, 'rock', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(525, 'Boldore', 70, 105, 105, 50, 40, 20, 'rock', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(526, 'Gigalith', 85, 135, 130, 60, 80, 25, 'rock', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(527, 'Woobat', 65, 45, 43, 55, 43, 72, 'psychic', 'flying', 5, 0, '1.00', '2.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '2.00', '0.50', '0.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00'),
(528, 'Swoobat', 67, 57, 55, 77, 55, 114, 'psychic', 'flying', 5, 0, '1.00', '2.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '2.00', '0.50', '0.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00'),
(529, 'Drilbur', 60, 85, 40, 30, 45, 68, 'ground', '', 5, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(530, 'Excadrill', 110, 135, 60, 50, 65, 88, 'ground', 'steel', 5, 0, '0.50', '1.00', '0.50', '0.00', '0.50', '2.00', '2.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '0.00', '0.50', '0.25', '0.50', '2.00'),
(531, 'Audino', 103, 60, 126, 80, 126, 50, 'normal', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(532, 'Timburr', 75, 80, 55, 25, 35, 35, 'fighting', '', 5, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(533, 'Gurdurr', 85, 105, 85, 40, 50, 40, 'fighting', '', 5, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(534, 'Conkeldurr', 105, 140, 95, 55, 65, 45, 'fighting', '', 5, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(535, 'Tympole', 50, 50, 40, 50, 40, 64, 'water', '', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(536, 'Palpitoad', 75, 65, 55, 65, 55, 69, 'water', 'ground', 5, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00'),
(537, 'Seismitoad', 105, 95, 75, 85, 75, 74, 'water', 'ground', 5, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00'),
(538, 'Throh', 120, 100, 85, 30, 85, 45, 'fighting', '', 5, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(539, 'Sawk', 75, 125, 75, 30, 75, 85, 'fighting', '', 5, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(540, 'Sewaddle', 45, 53, 70, 40, 60, 42, 'bug', 'grass', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '0.50', '4.00', '4.00', '1.00', '0.25', '0.25', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(541, 'Swadloon', 55, 63, 90, 50, 80, 42, 'bug', 'grass', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '0.50', '4.00', '4.00', '1.00', '0.25', '0.25', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(542, 'Leavanny', 75, 103, 80, 70, 80, 92, 'bug', 'grass', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '0.50', '4.00', '4.00', '1.00', '0.25', '0.25', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(543, 'Venipede', 30, 45, 59, 30, 39, 57, 'bug', 'poison', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(544, 'Whirlipede', 40, 55, 99, 40, 79, 47, 'bug', 'poison', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(545, 'Scolipede', 60, 100, 89, 55, 69, 112, 'bug', 'poison', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.25', '2.00', '2.00', '1.00', '0.25', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00'),
(546, 'Cottonee', 40, 27, 60, 37, 50, 66, 'grass', 'fairy', 5, 0, '1.00', '0.50', '0.00', '0.50', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '4.00', '1.00', '1.00', '2.00', '0.50'),
(547, 'Whimsicott', 60, 67, 85, 77, 75, 116, 'grass', 'fairy', 5, 0, '1.00', '0.50', '0.00', '0.50', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '4.00', '1.00', '1.00', '2.00', '0.50'),
(548, 'Petilil', 45, 35, 50, 70, 50, 30, 'grass', '', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(549, 'Lilligant', 70, 60, 75, 110, 75, 90, 'grass', '', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(550, 'Basculin', 70, 92, 65, 80, 55, 98, 'water', '', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(551, 'Sandile', 50, 72, 35, 35, 35, 65, 'ground', 'dark', 5, 0, '2.00', '0.50', '1.00', '0.00', '2.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '2.00', '1.00', '0.50', '0.00', '0.50', '1.00', '2.00'),
(552, 'Krokorok', 60, 82, 45, 45, 45, 74, 'ground', 'dark', 5, 0, '2.00', '0.50', '1.00', '0.00', '2.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '2.00', '1.00', '0.50', '0.00', '0.50', '1.00', '2.00'),
(553, 'Krookodile', 95, 117, 80, 65, 70, 92, 'ground', 'dark', 5, 0, '2.00', '0.50', '1.00', '0.00', '2.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '2.00', '1.00', '0.50', '0.00', '0.50', '1.00', '2.00'),
(554, 'Darumaka', 70, 90, 45, 15, 45, 50, 'fire', '', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(555, 'Darmanitan', 105, 30, 105, 140, 105, 55, 'fire', 'fire', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(556, 'Maractus', 75, 86, 67, 106, 67, 60, 'grass', '', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(557, 'Dwebble', 50, 65, 85, 35, 35, 55, 'bug', 'rock', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '2.00'),
(558, 'Crustle', 70, 105, 125, 65, 75, 45, 'bug', 'rock', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '2.00'),
(559, 'Scraggy', 50, 75, 70, 35, 70, 48, 'dark', 'fighting', 5, 0, '1.00', '0.25', '1.00', '1.00', '4.00', '2.00', '1.00', '2.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00'),
(560, 'Scrafty', 65, 90, 115, 45, 115, 58, 'dark', 'fighting', 5, 0, '1.00', '0.25', '1.00', '1.00', '4.00', '2.00', '1.00', '2.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00'),
(561, 'Sigilyph', 72, 58, 80, 103, 80, 97, 'psychic', 'flying', 5, 0, '1.00', '2.00', '1.00', '2.00', '1.00', '0.25', '1.00', '1.00', '2.00', '0.50', '0.00', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00'),
(562, 'Yamask', 38, 30, 85, 55, 65, 30, 'ghost', '', 5, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00', '1.00', '1.00'),
(563, 'Cofagrigus', 58, 50, 145, 95, 105, 30, 'ghost', '', 5, 0, '0.50', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00', '1.00', '1.00'),
(564, 'Tirtouga', 54, 78, 103, 53, 45, 22, 'water', 'rock', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(565, 'Carracosta', 74, 108, 133, 83, 65, 32, 'water', 'rock', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(566, 'Archen', 55, 112, 45, 74, 45, 70, 'rock', 'flying', 5, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '0.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '2.00'),
(567, 'Archeops', 75, 140, 65, 112, 65, 110, 'rock', 'flying', 5, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '0.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '2.00'),
(568, 'Trubbish', 50, 50, 62, 40, 62, 65, 'poison', '', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(569, 'Garbodor', 80, 95, 82, 60, 82, 75, 'poison', '', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '2.00', '1.00', '1.00', '1.00'),
(570, 'Zorua', 40, 65, 40, 80, 40, 65, 'dark', '', 5, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(571, 'Zoroark', 60, 105, 60, 120, 60, 105, 'dark', '', 5, 0, '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(572, 'Minccino', 55, 50, 40, 40, 40, 75, 'normal', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(573, 'Cinccino', 75, 95, 60, 65, 60, 115, 'normal', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(574, 'Gothita', 45, 30, 50, 55, 65, 45, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(575, 'Gothorita', 60, 45, 70, 75, 85, 55, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(576, 'Gothitelle', 70, 55, 95, 95, 110, 65, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(577, 'Solosis', 45, 30, 40, 105, 50, 20, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(578, 'Duosion', 65, 40, 50, 125, 60, 30, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(579, 'Reuniclus', 110, 65, 75, 125, 85, 30, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(580, 'Ducklett', 62, 44, 50, 44, 50, 55, 'water', 'flying', 5, 0, '0.50', '1.00', '1.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(581, 'Swanna', 75, 87, 63, 87, 63, 98, 'water', 'flying', 5, 0, '0.50', '1.00', '1.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(582, 'Vanillite', 36, 50, 50, 65, 60, 44, 'ice', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(583, 'Vanillish', 51, 65, 65, 80, 75, 59, 'ice', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(584, 'Vanilluxe', 71, 95, 85, 110, 95, 79, 'ice', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(585, 'Deerling', 60, 60, 50, 40, 50, 75, 'normal', 'grass', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '2.00', '2.00', '2.00', '0.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(586, 'Sawsbuck', 80, 100, 70, 60, 70, 95, 'normal', 'grass', 5, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '2.00', '2.00', '2.00', '0.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(587, 'Emolga', 55, 75, 60, 75, 60, 103, 'electric', 'flying', 5, 0, '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00'),
(588, 'Karrablast', 50, 75, 45, 40, 45, 60, 'bug', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(589, 'Escavalier', 70, 135, 105, 60, 105, 20, 'bug', 'steel', 5, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '1.00', '4.00', '1.00', '1.00', '0.25', '1.00', '0.50', '0.50', '0.00', '0.50', '1.00', '0.50', '1.00'),
(590, 'Foongus', 69, 55, 45, 55, 55, 15, 'grass', 'poison', 5, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(591, 'Amoonguss', 114, 85, 70, 85, 80, 30, 'grass', 'poison', 5, 0, '1.00', '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '1.00', '0.25', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50'),
(592, 'Frillish', 55, 40, 50, 65, 85, 40, 'water', 'ghost', 5, 0, '0.50', '2.00', '1.00', '2.00', '1.00', '0.00', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.00', '0.50', '1.00', '1.00', '0.50', '0.50'),
(593, 'Jellicent', 100, 60, 70, 85, 105, 60, 'water', 'ghost', 5, 0, '0.50', '2.00', '1.00', '2.00', '1.00', '0.00', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.00', '0.50', '1.00', '1.00', '0.50', '0.50'),
(594, 'Alomomola', 165, 75, 80, 40, 45, 65, 'water', '', 5, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(595, 'Joltik', 50, 47, 50, 57, 50, 65, 'bug', 'electric', 5, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00'),
(596, 'Galvantula', 70, 77, 60, 97, 60, 108, 'bug', 'electric', 5, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00'),
(597, 'Ferroseed', 44, 50, 91, 24, 86, 10, 'grass', 'steel', 5, 0, '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '4.00', '1.00', '1.00', '0.25', '1.00', '1.00', '0.50', '0.00', '0.50', '0.50', '0.50', '0.50'),
(598, 'Ferrothorn', 74, 94, 131, 54, 116, 20, 'grass', 'steel', 5, 0, '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '4.00', '1.00', '1.00', '0.25', '1.00', '1.00', '0.50', '0.00', '0.50', '0.50', '0.50', '0.50'),
(599, 'Klink', 40, 55, 70, 45, 60, 30, 'steel', '', 5, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '2.00', '2.00', '0.50', '1.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.50', '0.50', '0.50', '1.00'),
(600, 'Klang', 60, 80, 95, 70, 85, 50, 'steel', '', 5, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '2.00', '2.00', '0.50', '1.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.50', '0.50', '0.50', '1.00'),
(601, 'Klinklang', 60, 100, 115, 70, 85, 90, 'steel', '', 5, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '2.00', '2.00', '0.50', '1.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.50', '0.50', '0.50', '1.00'),
(602, 'Tynamo', 35, 55, 40, 45, 40, 60, 'electric', '', 5, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(603, 'Eelektrik', 65, 85, 70, 75, 70, 40, 'electric', '', 5, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(604, 'Eelektross', 85, 115, 80, 105, 80, 50, 'electric', '', 5, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(605, 'Elgyem', 55, 55, 55, 85, 55, 30, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(606, 'Beheeyem', 75, 75, 75, 125, 95, 40, 'psychic', '', 5, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(607, 'Litwick', 50, 30, 55, 65, 55, 20, 'ghost', 'fire', 5, 0, '0.25', '2.00', '1.00', '1.00', '0.50', '0.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '0.00', '0.50', '1.00', '2.00', '0.50', '2.00'),
(608, 'Lampent', 60, 40, 60, 95, 60, 55, 'ghost', 'fire', 5, 0, '0.25', '2.00', '1.00', '1.00', '0.50', '0.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '0.00', '0.50', '1.00', '2.00', '0.50', '2.00'),
(609, 'Chandelure', 60, 55, 90, 145, 90, 80, 'ghost', 'fire', 5, 0, '0.25', '2.00', '1.00', '1.00', '0.50', '0.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '0.00', '0.50', '1.00', '2.00', '0.50', '2.00'),
(610, 'Axew', 46, 87, 60, 30, 40, 57, 'dragon', '', 5, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(611, 'Fraxure', 66, 117, 70, 40, 50, 67, 'dragon', '', 5, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(612, 'Haxorus', 76, 147, 90, 60, 70, 97, 'dragon', '', 5, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(613, 'Cubchoo', 55, 70, 40, 60, 40, 40, 'ice', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(614, 'Beartic', 95, 130, 80, 70, 80, 50, 'ice', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(615, 'Cryogonal', 80, 50, 50, 95, 135, 105, 'ice', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(616, 'Shelmet', 50, 40, 85, 40, 65, 25, 'bug', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(617, 'Accelgor', 80, 70, 40, 100, 60, 145, 'bug', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(618, 'Stunfisk', 109, 66, 84, 81, 99, 32, 'ground', 'electric', 5, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '0.50', '1.00', '2.00', '2.00', '2.00', '1.00', '0.50', '1.00', '0.50', '0.50', '2.00'),
(619, 'Mienfoo', 45, 85, 50, 55, 50, 65, 'fighting', '', 5, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(620, 'Mienshao', 65, 125, 60, 95, 60, 105, 'fighting', '', 5, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(621, 'Druddigon', 77, 120, 90, 60, 90, 48, 'dragon', '', 5, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(622, 'Golett', 59, 74, 50, 35, 50, 35, 'ground', 'ghost', 5, 0, '0.50', '2.00', '1.00', '0.00', '1.00', '0.00', '1.00', '1.00', '2.00', '2.00', '1.00', '2.00', '0.00', '0.25', '1.00', '0.50', '1.00', '2.00'),
(623, 'Golurk', 89, 124, 80, 55, 80, 55, 'ground', 'ghost', 5, 0, '0.50', '2.00', '1.00', '0.00', '1.00', '0.00', '1.00', '1.00', '2.00', '2.00', '1.00', '2.00', '0.00', '0.25', '1.00', '0.50', '1.00', '2.00'),
(624, 'Pawniard', 45, 85, 70, 40, 40, 60, 'dark', 'steel', 5, 0, '1.00', '0.50', '0.50', '1.00', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '2.00', '0.50', '0.50', '0.00', '0.00', '0.50', '0.50', '1.00'),
(625, 'Bisharp', 65, 125, 100, 60, 70, 70, 'dark', 'steel', 5, 0, '1.00', '0.50', '0.50', '1.00', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '2.00', '0.50', '0.50', '0.00', '0.00', '0.50', '0.50', '1.00'),
(626, 'Bouffalant', 95, 110, 95, 40, 95, 55, 'normal', '', 5, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(627, 'Rufflet', 70, 83, 50, 37, 50, 60, 'normal', 'flying', 5, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(628, 'Braviary', 100, 123, 75, 57, 75, 80, 'normal', 'flying', 5, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(629, 'Vullaby', 70, 55, 75, 45, 65, 60, 'dark', 'flying', 5, 0, '1.00', '0.50', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '0.50', '0.00', '2.00', '1.00', '1.00', '0.00', '2.00', '1.00', '1.00'),
(630, 'Mandibuzz', 110, 65, 105, 55, 95, 80, 'dark', 'flying', 5, 0, '1.00', '0.50', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '0.50', '0.00', '2.00', '1.00', '1.00', '0.00', '2.00', '1.00', '1.00'),
(631, 'Heatmor', 85, 97, 66, 105, 66, 65, 'fire', '', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(632, 'Durant', 58, 109, 112, 48, 48, 109, 'bug', 'steel', 5, 0, '0.50', '1.00', '0.50', '1.00', '0.50', '1.00', '4.00', '1.00', '1.00', '0.25', '1.00', '0.50', '0.50', '0.00', '0.50', '1.00', '0.50', '1.00'),
(633, 'Deino', 52, 65, 50, 45, 50, 38, 'dark', 'dragon', 5, 0, '2.00', '0.50', '2.00', '0.50', '4.00', '2.00', '0.50', '1.00', '0.50', '0.50', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50'),
(634, 'Zweilous', 72, 85, 70, 65, 70, 58, 'dark', 'dragon', 5, 0, '2.00', '0.50', '2.00', '0.50', '4.00', '2.00', '0.50', '1.00', '0.50', '0.50', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50'),
(635, 'Hydreigon', 92, 105, 90, 125, 90, 98, 'dark', 'dragon', 5, 0, '2.00', '0.50', '2.00', '0.50', '4.00', '2.00', '0.50', '1.00', '0.50', '0.50', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50'),
(636, 'Larvesta', 55, 85, 55, 50, 55, 60, 'bug', 'fire', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '1.00', '0.25', '1.00', '0.50', '1.00', '1.00', '1.00', '4.00', '0.50', '2.00'),
(637, 'Volcarona', 85, 60, 65, 135, 105, 100, 'bug', 'fire', 5, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '1.00', '0.25', '1.00', '0.50', '1.00', '1.00', '1.00', '4.00', '0.50', '2.00'),
(638, 'Cobalion', 91, 90, 129, 90, 72, 108, 'steel', 'fighting', 5, 1, '0.25', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '0.50', '2.00', '0.50', '0.50', '0.00', '1.00', '0.25', '0.50', '1.00'),
(639, 'Terrakion', 91, 129, 90, 72, 90, 108, 'rock', 'fighting', 5, 1, '0.50', '0.50', '1.00', '1.00', '2.00', '2.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '0.50', '2.00', '2.00'),
(640, 'Virizion', 91, 90, 72, 90, 129, 108, 'grass', 'fighting', 5, 1, '1.00', '0.50', '1.00', '0.50', '2.00', '1.00', '2.00', '4.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '2.00', '0.50', '1.00', '0.50'),
(641, 'Tornadus', 79, 100, 80, 110, 90, 121, 'flying', '', 5, 1, '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(642, 'Thundurus', 79, 105, 70, 145, 80, 101, 'electric', 'flying', 5, 1, '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00'),
(643, 'Reshiram', 100, 120, 100, 150, 120, 90, 'dragon', 'fire', 5, 1, '0.50', '1.00', '2.00', '0.50', '1.00', '1.00', '0.25', '1.00', '1.00', '0.25', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00'),
(644, 'Zekrom', 100, 150, 120, 120, 100, 90, 'dragon', 'electric', 5, 1, '1.00', '1.00', '2.00', '0.25', '2.00', '1.00', '0.50', '0.50', '1.00', '0.50', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(645, 'Landorus', 89, 145, 90, 105, 80, 91, 'ground', 'flying', 5, 1, '0.50', '1.00', '1.00', '0.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.00', '4.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00'),
(646, 'Kyurem', 125, 120, 90, 170, 100, 95, 'dragon', 'ice', 5, 1, '1.00', '1.00', '2.00', '0.50', '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '0.50'),
(647, 'Keldeo', 91, 72, 90, 129, 90, 108, 'water', 'fighting', 5, 1, '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50'),
(648, 'Meloetta', 100, 128, 90, 77, 77, 128, 'normal', 'psychic', 5, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(649, 'Genesect', 71, 120, 95, 120, 95, 99, 'bug', 'steel', 5, 1, '0.50', '1.00', '0.50', '1.00', '0.50', '1.00', '4.00', '1.00', '1.00', '0.25', '1.00', '0.50', '0.50', '0.00', '0.50', '1.00', '0.50', '1.00'),
(650, 'Chespin', 56, 61, 65, 48, 45, 38, 'grass', '', 6, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(651, 'Quilladin', 61, 78, 95, 56, 58, 57, 'grass', '', 6, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(652, 'Chesnaught', 88, 107, 122, 74, 75, 64, 'grass', 'fighting', 6, 0, '1.00', '0.50', '1.00', '0.50', '2.00', '1.00', '2.00', '4.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '2.00', '0.50', '1.00', '0.50'),
(653, 'Fennekin', 40, 45, 40, 62, 60, 60, 'fire', '', 6, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(654, 'Braixen', 59, 59, 58, 90, 70, 73, 'fire', '', 6, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(655, 'Delphox', 75, 69, 72, 114, 100, 104, 'fire', 'psychic', 6, 0, '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '2.00'),
(656, 'Froakie', 41, 56, 40, 62, 44, 71, 'water', '', 6, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(657, 'Frogadier', 54, 63, 52, 83, 56, 97, 'water', '', 6, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(658, 'Greninja', 72, 145, 67, 153, 71, 132, 'water', 'dark', 6, 0, '2.00', '0.50', '1.00', '2.00', '2.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.00', '1.00', '0.50', '0.50'),
(659, 'Bunnelby', 38, 36, 38, 32, 36, 57, 'normal', '', 6, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(660, 'Diggersby', 85, 56, 77, 50, 77, 78, 'normal', 'ground', 6, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '2.00', '1.00', '1.00', '0.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(661, 'Fletchling', 45, 50, 43, 40, 38, 62, 'normal', 'flying', 6, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(662, 'Fletchinder', 62, 73, 55, 56, 52, 84, 'fire', 'flying', 6, 0, '0.25', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '1.00', '1.00', '1.00', '1.00', '4.00', '0.50', '2.00'),
(663, 'Talonflame', 78, 81, 71, 74, 69, 126, 'fire', 'flying', 6, 0, '0.25', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '1.00', '1.00', '1.00', '1.00', '4.00', '0.50', '2.00'),
(664, 'Scatterbug', 38, 35, 40, 27, 25, 35, 'bug', '', 6, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(665, 'Spewpa', 45, 22, 60, 27, 30, 29, 'bug', '', 6, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(666, 'Vivillon', 80, 52, 50, 90, 50, 89, 'bug', 'flying', 6, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.25', '0.00', '2.00', '1.00', '1.00', '1.00', '4.00', '1.00', '1.00'),
(667, 'Litleo', 62, 50, 58, 73, 54, 72, 'fire', 'normal', 6, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '0.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(668, 'Pyroar', 86, 68, 72, 109, 66, 106, 'fire', 'normal', 6, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '0.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(669, 'Flabébé', 44, 38, 39, 61, 79, 42, 'fairy', '', 6, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(670, 'Floette', 74, 65, 67, 125, 128, 92, 'fairy', '', 6, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(671, 'Florges', 78, 65, 68, 112, 154, 75, 'fairy', '', 6, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(672, 'Skiddo', 66, 65, 48, 62, 57, 52, 'grass', '', 6, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(673, 'Gogoat', 123, 100, 62, 97, 81, 68, 'grass', '', 6, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(674, 'Pancham', 67, 82, 62, 46, 48, 43, 'fighting', '', 6, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(675, 'Pangoro', 95, 124, 78, 69, 71, 58, 'fighting', 'dark', 6, 0, '1.00', '0.25', '1.00', '1.00', '4.00', '2.00', '1.00', '2.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '1.00', '1.00'),
(676, 'Furfrou', 75, 80, 60, 65, 90, 102, 'normal', '', 6, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(677, 'Espurr', 62, 48, 54, 63, 60, 68, 'psychic', '', 6, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(678, 'Meowstic', 74, 48, 76, 83, 81, 104, 'psychic', '', 6, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(679, 'Honedge', 45, 80, 100, 35, 37, 28, 'steel', 'ghost', 6, 0, '0.25', '2.00', '0.50', '1.00', '0.50', '0.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.00', '0.00', '0.50', '0.50', '0.50', '1.00'),
(680, 'Doublade', 59, 110, 150, 45, 49, 35, 'steel', 'ghost', 6, 0, '0.25', '2.00', '0.50', '1.00', '0.50', '0.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.00', '0.00', '0.50', '0.50', '0.50', '1.00'),
(681, 'Aegislash', 60, 150, 50, 150, 50, 60, 'steel', 'ghost', 6, 0, '0.25', '2.00', '0.50', '1.00', '0.50', '0.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.00', '0.00', '0.50', '0.50', '0.50', '1.00'),
(682, 'Spritzee', 78, 52, 60, 63, 65, 23, 'fairy', '', 6, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(683, 'Aromatisse', 101, 72, 72, 99, 89, 29, 'fairy', '', 6, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(684, 'Swirlix', 62, 48, 66, 59, 57, 49, 'fairy', '', 6, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(685, 'Slurpuff', 82, 80, 86, 85, 75, 72, 'fairy', '', 6, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(686, 'Inkay', 53, 54, 53, 37, 46, 45, 'dark', 'psychic', 6, 0, '4.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(687, 'Malamar', 86, 92, 88, 68, 75, 73, 'dark', 'psychic', 6, 0, '4.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00'),
(688, 'Binacle', 42, 52, 67, 39, 56, 50, 'rock', 'water', 6, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(689, 'Barbaracle', 72, 105, 115, 54, 86, 68, 'rock', 'water', 6, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '0.25', '0.50', '1.00', '4.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00'),
(690, 'Skrelp', 50, 60, 60, 60, 60, 30, 'poison', 'water', 6, 0, '0.50', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '0.50'),
(691, 'Dragalge', 65, 75, 90, 97, 123, 44, 'poison', 'dragon', 6, 0, '0.50', '1.00', '2.00', '0.50', '1.00', '0.50', '0.50', '1.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50'),
(692, 'Clauncher', 50, 53, 62, 58, 63, 44, 'water', '', 6, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(693, 'Clawitzer', 71, 73, 88, 120, 89, 59, 'water', '', 6, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(694, 'Helioptile', 44, 38, 33, 61, 43, 70, 'electric', 'normal', 6, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '0.50', '0.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(695, 'Heliolisk', 62, 55, 52, 109, 94, 109, 'electric', 'normal', 6, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '0.50', '0.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(696, 'Tyrunt', 58, 89, 77, 45, 45, 48, 'rock', 'dragon', 6, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '2.00', '0.25', '0.50', '1.00', '1.00', '2.00', '2.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00'),
(697, 'Tyrantrum', 82, 121, 119, 69, 59, 71, 'rock', 'dragon', 6, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '2.00', '0.25', '0.50', '1.00', '1.00', '2.00', '2.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00'),
(698, 'Amaura', 77, 59, 50, 67, 63, 46, 'rock', 'ice', 6, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '4.00', '1.00', '0.50', '1.00', '2.00', '2.00', '0.50', '0.50', '0.50', '1.00', '2.00', '4.00', '2.00'),
(699, 'Aurorus', 123, 77, 72, 99, 92, 58, 'rock', 'ice', 6, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '4.00', '1.00', '0.50', '1.00', '2.00', '2.00', '0.50', '0.50', '0.50', '1.00', '2.00', '4.00', '2.00'),
(700, 'Sylveon', 95, 65, 65, 110, 130, 60, 'fairy', '', 6, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(701, 'Hawlucha', 78, 92, 75, 74, 63, 118, 'fighting', 'flying', 6, 0, '0.25', '0.50', '1.00', '2.00', '2.00', '0.50', '1.00', '2.00', '1.00', '0.50', '0.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00'),
(702, 'Dedenne', 67, 58, 57, 81, 67, 101, 'electric', 'fairy', 6, 0, '0.50', '0.50', '0.00', '0.50', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00'),
(703, 'Carbink', 50, 50, 150, 50, 150, 50, 'rock', 'fairy', 6, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '4.00', '2.00'),
(704, 'Goomy', 45, 50, 35, 55, 75, 40, 'dragon', '', 6, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(705, 'Sliggoo', 68, 75, 53, 83, 113, 60, 'dragon', '', 6, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(706, 'Goodra', 90, 100, 70, 110, 150, 80, 'dragon', '', 6, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(707, 'Klefki', 57, 80, 91, 80, 87, 75, 'steel', 'fairy', 6, 0, '0.25', '0.50', '0.00', '1.00', '0.50', '1.00', '2.00', '0.50', '1.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.50', '0.50', '1.00', '1.00'),
(708, 'Phantump', 43, 70, 48, 50, 60, 38, 'ghost', 'grass', 6, 0, '1.00', '2.00', '1.00', '0.50', '1.00', '0.00', '2.00', '2.00', '2.00', '0.50', '0.50', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(709, 'Trevenant', 85, 110, 76, 65, 82, 56, 'ghost', 'grass', 6, 0, '1.00', '2.00', '1.00', '0.50', '1.00', '0.00', '2.00', '2.00', '2.00', '0.50', '0.50', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(710, 'Pumpkaboo', 59, 66, 70, 44, 55, 41, 'ghost', 'grass', 6, 0, '1.00', '2.00', '1.00', '0.50', '1.00', '0.00', '2.00', '2.00', '2.00', '0.50', '0.50', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(711, 'Gourgeist', 85, 100, 122, 58, 75, 54, 'ghost', 'grass', 6, 0, '1.00', '2.00', '1.00', '0.50', '1.00', '0.00', '2.00', '2.00', '2.00', '0.50', '0.50', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(712, 'Bergmite', 55, 69, 85, 32, 35, 28, 'ice', '', 6, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(713, 'Avalugg', 95, 117, 184, 44, 46, 28, 'ice', '', 6, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '2.00', '1.00'),
(714, 'Noibat', 40, 30, 35, 45, 40, 55, 'flying', 'dragon', 6, 0, '0.50', '1.00', '2.00', '1.00', '2.00', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '4.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50'),
(715, 'Noivern', 85, 70, 80, 97, 80, 123, 'flying', 'dragon', 6, 0, '0.50', '1.00', '2.00', '1.00', '2.00', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '4.00', '1.00', '1.00', '1.00', '2.00', '1.00', '0.50');
INSERT INTO `Pokemon` (`pokedex_number`, `name`, `hp`, `attack`, `defense`, `sp_attack`, `sp_defense`, `speed`, `type1`, `type2`, `generation`, `is_legendary`, `against_bug`, `against_dark`, `against_dragon`, `against_electric`, `against_fairy`, `against_fight`, `against_fire`, `against_flying`, `against_ghost`, `against_grass`, `against_ground`, `against_ice`, `against_normal`, `against_poison`, `against_psychic`, `against_rock`, `against_steel`, `against_water`) VALUES
(716, 'Xerneas', 126, 131, 95, 131, 98, 99, 'fairy', '', 6, 1, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(717, 'Yveltal', 126, 131, 95, 131, 98, 99, 'dark', 'flying', 6, 1, '1.00', '0.50', '1.00', '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '0.50', '0.00', '2.00', '1.00', '1.00', '0.00', '2.00', '1.00', '1.00'),
(718, 'Zygarde', 216, 100, 121, 91, 95, 85, 'dragon', 'ground', 6, 1, '1.00', '1.00', '2.00', '0.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '4.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00'),
(719, 'Diancie', 50, 160, 110, 160, 110, 110, 'rock', 'fairy', 6, 1, '0.50', '0.50', '0.00', '1.00', '1.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '4.00', '2.00'),
(720, 'Hoopa', 80, 160, 60, 170, 130, 80, 'psychic', 'ghost', 6, 1, '1.00', '4.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.50', '1.00', '1.00', '1.00'),
(721, 'Volcanion', 80, 110, 120, 130, 90, 70, 'fire', 'water', 6, 1, '0.50', '1.00', '1.00', '2.00', '0.50', '1.00', '0.25', '1.00', '1.00', '1.00', '2.00', '0.25', '1.00', '1.00', '1.00', '2.00', '0.25', '1.00'),
(722, 'Rowlet', 68, 55, 55, 50, 50, 42, 'grass', 'flying', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.25', '0.00', '4.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(723, 'Dartrix', 78, 75, 75, 70, 70, 52, 'grass', 'flying', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.25', '0.00', '4.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50'),
(724, 'Decidueye', 78, 107, 75, 100, 100, 70, 'grass', 'ghost', 7, 0, '1.00', '2.00', '1.00', '0.50', '1.00', '0.00', '2.00', '2.00', '2.00', '0.50', '0.50', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(725, 'Litten', 45, 65, 40, 60, 40, 70, 'fire', '', 7, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(726, 'Torracat', 65, 85, 50, 80, 50, 90, 'fire', '', 7, 0, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '0.50', '2.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '2.00'),
(727, 'Incineroar', 95, 115, 90, 80, 90, 60, 'fire', 'dark', 7, 0, '1.00', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50', '0.50', '2.00', '0.50', '1.00', '1.00', '0.00', '2.00', '0.50', '2.00'),
(728, 'Popplio', 50, 54, 54, 66, 56, 40, 'water', '', 7, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(729, 'Brionne', 60, 69, 69, 91, 81, 50, 'water', '', 7, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(730, 'Primarina', 80, 74, 74, 126, 116, 60, 'water', 'fairy', 7, 0, '0.50', '0.50', '0.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(731, 'Pikipek', 35, 75, 30, 30, 30, 65, 'normal', 'flying', 7, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(732, 'Trumbeak', 55, 85, 50, 40, 50, 75, 'normal', 'flying', 7, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(733, 'Toucannon', 80, 120, 75, 75, 75, 60, 'normal', 'flying', 7, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.00', '2.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(734, 'Yungoos', 48, 70, 30, 30, 30, 45, 'normal', '', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(735, 'Gumshoos', 88, 110, 60, 55, 60, 45, 'normal', '', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(736, 'Grubbin', 47, 62, 45, 55, 45, 46, 'bug', '', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00'),
(737, 'Charjabug', 57, 82, 95, 55, 75, 36, 'bug', 'electric', 7, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00'),
(738, 'Vikavolt', 77, 70, 90, 145, 75, 43, 'bug', 'electric', 7, 0, '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00'),
(739, 'Crabrawler', 47, 82, 57, 42, 47, 63, 'fighting', '', 7, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(740, 'Crabominable', 97, 132, 77, 62, 67, 43, 'fighting', 'ice', 7, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '2.00', '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00'),
(741, 'Oricorio', 75, 70, 70, 98, 70, 93, 'fire', 'flying', 7, 0, '0.25', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '0.25', '0.00', '1.00', '1.00', '1.00', '1.00', '4.00', '0.50', '2.00'),
(742, 'Cutiefly', 40, 45, 40, 55, 40, 84, 'bug', 'fairy', 7, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '2.00', '2.00', '1.00'),
(743, 'Ribombee', 60, 55, 60, 95, 70, 124, 'bug', 'fairy', 7, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.25', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '2.00', '2.00', '1.00'),
(744, 'Rockruff', 45, 65, 40, 30, 40, 60, 'rock', '', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(745, 'Lycanroc', 85, 115, 75, 55, 75, 82, 'rock', '', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '2.00'),
(746, 'Wishiwashi', 45, 140, 130, 140, 135, 30, 'water', '', 7, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(747, 'Mareanie', 50, 53, 62, 43, 52, 45, 'poison', 'water', 7, 0, '0.50', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '0.50'),
(748, 'Toxapex', 50, 63, 152, 53, 142, 35, 'poison', 'water', 7, 0, '0.50', '1.00', '1.00', '2.00', '0.50', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50', '2.00', '1.00', '0.50', '0.50'),
(749, 'Mudbray', 70, 100, 70, 45, 55, 45, 'ground', '', 7, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(750, 'Mudsdale', 100, 125, 100, 55, 85, 35, 'ground', '', 7, 0, '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '2.00', '1.00', '0.50', '1.00', '0.50', '1.00', '2.00'),
(751, 'Dewpider', 38, 40, 52, 40, 72, 27, 'water', 'bug', 7, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(752, 'Araquanid', 68, 70, 92, 50, 132, 42, 'water', 'bug', 7, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(753, 'Fomantis', 40, 55, 35, 50, 35, 35, 'grass', '', 7, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(754, 'Lurantis', 70, 105, 90, 80, 90, 45, 'grass', '', 7, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(755, 'Morelull', 40, 35, 55, 65, 75, 15, 'grass', 'fairy', 7, 0, '1.00', '0.50', '0.00', '0.50', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '4.00', '1.00', '1.00', '2.00', '0.50'),
(756, 'Shiinotic', 60, 45, 80, 90, 100, 30, 'grass', 'fairy', 7, 0, '1.00', '0.50', '0.00', '0.50', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '4.00', '1.00', '1.00', '2.00', '0.50'),
(757, 'Salandit', 48, 44, 40, 71, 40, 77, 'poison', 'fire', 7, 0, '0.25', '1.00', '1.00', '1.00', '0.25', '0.50', '0.50', '1.00', '1.00', '0.25', '4.00', '0.50', '1.00', '0.50', '2.00', '2.00', '0.50', '2.00'),
(758, 'Salazzle', 68, 64, 60, 111, 60, 117, 'poison', 'fire', 7, 0, '0.25', '1.00', '1.00', '1.00', '0.25', '0.50', '0.50', '1.00', '1.00', '0.25', '4.00', '0.50', '1.00', '0.50', '2.00', '2.00', '0.50', '2.00'),
(759, 'Stufful', 70, 75, 50, 45, 50, 50, 'normal', 'fighting', 7, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(760, 'Bewear', 120, 125, 80, 55, 60, 60, 'normal', 'fighting', 7, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(761, 'Bounsweet', 42, 30, 38, 30, 38, 32, 'grass', '', 7, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(762, 'Steenee', 52, 40, 48, 40, 48, 62, 'grass', '', 7, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(763, 'Tsareena', 72, 120, 98, 50, 98, 72, 'grass', '', 7, 0, '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(764, 'Comfey', 51, 52, 90, 82, 110, 100, 'fairy', '', 7, 0, '0.50', '0.50', '0.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00'),
(765, 'Oranguru', 90, 60, 80, 90, 110, 60, 'normal', 'psychic', 7, 0, '2.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(766, 'Passimian', 100, 120, 90, 40, 60, 80, 'fighting', '', 7, 0, '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '1.00'),
(767, 'Wimpod', 25, 35, 40, 20, 30, 80, 'bug', 'water', 7, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(768, 'Golisopod', 75, 125, 140, 60, 90, 40, 'bug', 'water', 7, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '0.50', '0.50'),
(769, 'Sandygast', 55, 55, 80, 70, 45, 15, 'ghost', 'ground', 7, 0, '0.50', '2.00', '1.00', '0.00', '1.00', '0.00', '1.00', '1.00', '2.00', '2.00', '1.00', '2.00', '0.00', '0.25', '1.00', '0.50', '1.00', '2.00'),
(770, 'Palossand', 85, 75, 110, 100, 75, 35, 'ghost', 'ground', 7, 0, '0.50', '2.00', '1.00', '0.00', '1.00', '0.00', '1.00', '1.00', '2.00', '2.00', '1.00', '2.00', '0.00', '0.25', '1.00', '0.50', '1.00', '2.00'),
(771, 'Pyukumuku', 55, 60, 130, 30, 130, 5, 'water', '', 7, 0, '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '1.00', '1.00', '1.00', '0.50', '0.50'),
(772, 'Type: Null', 95, 95, 95, 95, 95, 59, 'normal', '', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(773, 'Silvally', 95, 95, 95, 95, 95, 95, 'normal', '', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(774, 'Minior', 60, 100, 60, 100, 60, 120, 'rock', 'flying', 7, 0, '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '0.50', '0.50', '1.00', '1.00', '0.00', '2.00', '0.50', '0.50', '1.00', '2.00', '2.00', '2.00'),
(775, 'Komala', 65, 115, 65, 75, 95, 65, 'normal', '', 7, 0, '1.00', '1.00', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(776, 'Turtonator', 60, 78, 135, 91, 85, 36, 'fire', 'dragon', 7, 0, '0.50', '1.00', '2.00', '0.50', '1.00', '1.00', '0.25', '1.00', '1.00', '0.25', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00'),
(777, 'Togedemaru', 65, 98, 63, 40, 73, 96, 'electric', 'steel', 7, 0, '0.50', '1.00', '0.50', '0.50', '0.50', '2.00', '2.00', '0.25', '1.00', '0.50', '4.00', '0.50', '0.50', '0.00', '0.50', '0.50', '0.25', '1.00'),
(778, 'Mimikyu', 55, 90, 80, 50, 105, 96, 'ghost', 'fairy', 7, 0, '0.25', '1.00', '0.00', '1.00', '1.00', '0.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '1.00', '2.00', '1.00'),
(779, 'Bruxish', 68, 105, 70, 70, 70, 92, 'water', 'psychic', 7, 0, '2.00', '2.00', '1.00', '2.00', '1.00', '0.50', '0.50', '1.00', '2.00', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50'),
(780, 'Drampa', 78, 60, 85, 135, 91, 36, 'normal', 'dragon', 7, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '2.00', '0.50', '1.00', '0.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(781, 'Dhelmise', 70, 131, 100, 86, 90, 40, 'ghost', 'grass', 7, 0, '1.00', '2.00', '1.00', '0.50', '1.00', '0.00', '2.00', '2.00', '2.00', '0.50', '0.50', '2.00', '0.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(782, 'Jangmo-o', 45, 55, 65, 45, 45, 45, 'dragon', '', 7, 0, '1.00', '1.00', '2.00', '0.50', '2.00', '1.00', '0.50', '1.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50'),
(783, 'Hakamo-o', 55, 75, 90, 65, 70, 65, 'dragon', 'fighting', 7, 0, '0.50', '0.50', '2.00', '0.50', '4.00', '1.00', '0.50', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50'),
(784, 'Kommo-o', 75, 110, 125, 100, 105, 85, 'dragon', 'fighting', 7, 0, '0.50', '0.50', '2.00', '0.50', '4.00', '1.00', '0.50', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '2.00', '0.50', '1.00', '0.50'),
(785, 'Tapu Koko', 70, 115, 85, 95, 75, 130, 'electric', 'fairy', 7, 1, '0.50', '0.50', '0.00', '0.50', '1.00', '0.50', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00'),
(786, 'Tapu Lele', 70, 85, 75, 130, 115, 95, 'psychic', 'fairy', 7, 1, '1.00', '1.00', '0.00', '1.00', '1.00', '0.25', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '2.00', '0.50', '1.00', '2.00', '1.00'),
(787, 'Tapu Bulu', 70, 130, 115, 85, 95, 75, 'grass', 'fairy', 7, 1, '1.00', '0.50', '0.00', '0.50', '1.00', '0.50', '2.00', '2.00', '1.00', '0.50', '0.50', '2.00', '1.00', '4.00', '1.00', '1.00', '2.00', '0.50'),
(788, 'Tapu Fini', 70, 75, 115, 95, 130, 85, 'water', 'fairy', 7, 1, '0.50', '0.50', '0.00', '2.00', '1.00', '0.50', '0.50', '1.00', '1.00', '2.00', '1.00', '0.50', '1.00', '2.00', '1.00', '1.00', '1.00', '0.50'),
(789, 'Cosmog', 43, 29, 31, 29, 31, 37, 'psychic', '', 7, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(790, 'Cosmoem', 43, 29, 131, 29, 131, 37, 'psychic', '', 7, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(791, 'Solgaleo', 137, 137, 107, 113, 89, 97, 'psychic', 'steel', 7, 1, '1.00', '2.00', '0.50', '1.00', '0.50', '1.00', '2.00', '0.50', '2.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.25', '0.50', '0.50', '1.00'),
(792, 'Lunala', 137, 113, 89, 137, 107, 97, 'psychic', 'ghost', 7, 1, '1.00', '4.00', '1.00', '1.00', '1.00', '0.00', '1.00', '1.00', '4.00', '1.00', '1.00', '1.00', '0.00', '0.50', '0.50', '1.00', '1.00', '1.00'),
(793, 'Nihilego', 109, 53, 47, 127, 131, 103, 'rock', 'poison', 7, 1, '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '0.50', '0.50', '1.00', '1.00', '4.00', '1.00', '0.50', '0.25', '2.00', '1.00', '2.00', '2.00'),
(794, 'Buzzwole', 107, 139, 139, 53, 53, 79, 'bug', 'fighting', 7, 1, '0.50', '0.50', '1.00', '1.00', '2.00', '0.50', '2.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00'),
(795, 'Pheromosa', 71, 137, 37, 137, 37, 151, 'bug', 'fighting', 7, 1, '0.50', '0.50', '1.00', '1.00', '2.00', '0.50', '2.00', '4.00', '1.00', '0.50', '0.50', '1.00', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00'),
(796, 'Xurkitree', 83, 89, 71, 173, 71, 83, 'electric', '', 7, 1, '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00'),
(797, 'Celesteela', 97, 101, 103, 107, 101, 61, 'steel', 'flying', 7, 1, '0.25', '1.00', '0.50', '2.00', '0.50', '1.00', '2.00', '0.50', '1.00', '0.25', '0.00', '1.00', '0.50', '0.00', '0.50', '1.00', '0.50', '1.00'),
(798, 'Kartana', 59, 181, 131, 59, 31, 109, 'grass', 'steel', 7, 1, '1.00', '1.00', '0.50', '0.50', '0.50', '2.00', '4.00', '1.00', '1.00', '0.25', '1.00', '1.00', '0.50', '0.00', '0.50', '0.50', '0.50', '0.50'),
(799, 'Guzzlord', 223, 101, 53, 97, 53, 43, 'dark', 'dragon', 7, 1, '2.00', '0.50', '2.00', '0.50', '4.00', '2.00', '0.50', '1.00', '0.50', '0.50', '1.00', '2.00', '1.00', '1.00', '0.00', '1.00', '1.00', '0.50'),
(800, 'Necrozma', 97, 107, 101, 127, 89, 79, 'psychic', '', 7, 1, '2.00', '2.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '2.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0.50', '1.00', '1.00', '1.00'),
(801, 'Magearna', 80, 95, 115, 130, 115, 65, 'steel', 'fairy', 7, 1, '0.25', '0.50', '0.00', '1.00', '0.50', '1.00', '2.00', '0.50', '1.00', '0.50', '2.00', '0.50', '0.50', '0.00', '0.50', '0.50', '1.00', '1.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Pokemon`
--
ALTER TABLE `Pokemon`
  ADD PRIMARY KEY (`pokedex_number`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
