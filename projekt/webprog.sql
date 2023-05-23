-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 07:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

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
  `id` int(10) UNSIGNED NOT NULL,
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
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- Database: `webprog`
--
CREATE DATABASE IF NOT EXISTS `webprog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webprog`;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `picture` varchar(255) NOT NULL,
  `archive` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `picture`, `archive`) VALUES
(9, 'Nissan GTR R-32', 'After discontinuing the Skyline GT-R in 1973, Nissan revived the GT-R nameplate again in 1989. At the time Nissan was competing in Group A Racing with the Skyline GTS-R. Nissan wanted to retire the GTS-R in favor of a more competitive vehicle. The new generation of the GT-R, E-BNR32 chassis (commonly shortened to R32), was designed to dominate Group A class racing.\r\n\r\n\r\nNissan Kohki (Nissan&#039;s power train engineering and manufacturing facility) originally tested a twin turbocharged 2,4 L (2.350 cc) bored and stroked version of the RB20 engine. This set up resulted in a power output of 233 kW (317 PS; 312 hp) and used a rear wheel drive drivetrain. Under Group A regulations, a turbocharged engine must multiply its engine displacement by 1.7, putting the new Skyline in the 4.000 cc class, and requiring the use of 10-inch-wide tyres. Knowing that they would be required to use 10-inch-wide tyres, Nissan decided to make the car all wheel drive. Nissan developed a special motorsport-oriented AWD system for this purpose called the ATTESA E-TS. Although this assisted with traction, it made the car 100 kg heavier; the added weight put the GT-R at a disadvantage to other cars in the 4.000 cc class. Nissan then made the decision to increase the displacement to 2.600 cc, and put the car in the 4.500 cc class, with the car&#039;s weight near-equal to competing cars. The 4.500 cc class also allowed for 11-inch-wide tyres. New engine block and heads were then developed to better match the increased displacement. The result was a car that had a power output of 447 kW (608 PS; 599 hp).Later REINIK (Racing &amp; Rally Engineering Division Incorporated Nissan Kohi) produced Group A racing engines rated between 373–485 kW (507–659 PS; 500–650 hp) depending on track conditions.\r\n\r\nThis new 2.568 cc (2,6 L) RB26DETT-powered all wheel drive concept was put into production as the R32 Nissan Skyline GT-R. The R32 developed 206 kW (280 PS; 276 hp) at 6.800 rpm and 260 lb ft (353 Nm) of torque at 4.400 rpm,it had a curb weight of 1.430 kg (3.150 lb). Nissan officially started its production run 21 August 1989, and began its Group A campaign in 1990.\r\n\r\n\r\nThe Skyline GT-R Nismo, identified by the model code suffix &quot;RA&quot;, was introduced on 22 February 1990 and attracted a lot of people. It existed to homologate a number of changes related to performance, aerodynamics, weight-saving and reliability for Group A racing. Those rules required a production run of 500 units, under the &quot;Evolution&quot; special regulations, but an additional 60 were produced and held by Nissan to turn into race cars, rising the production total to 560 units. Aerodynamic changes include: two additional ducts in the front bumper and removal of the protective honeycomb mesh to improve airflow to the intercooler, a bonnet lip spoiler to direct more air into the engine bay, deeper rear spats, and an additional boot lip spoiler to provide more downforce. The Nismo specification deletes ABS, which is not legal in Group A, and the rear wiper to save weight. The bonnet and front panels are aluminium in all GT-R models rather than the standard steel in non GT-R models, again to save weight. Overall the GT-R Nismo weighs 1.400 kg (3.086 lb) compared to 1.430 kg (3.153 lb) for the standard GT-R. Tyres are Bridgestone RE71 in 225/55R16 fitted to 16-inch alloy wheels. Mechanically, the GT-R Nismo uses the RB26 engine of the &#039;standard&#039; GT-R but replaces the standard Garrett T03 turbo chargers with larger T04B models, sacrificing the faster spool up of the ceramic turbo wheels for the enhanced reliability of steel wheels. The GT-R Nismo was only available in colour code KH2 &quot;Gun Grey Metallic&quot;. Other minor, but noticeable, changes include a circular &quot;Nismo&quot; logo on the right-rear of the boot lip, lack of radio tuning controls on the dashboard console (since a radio was optional), and cross-drilled brake rotors. Nismo-branded options available included a 260 km/h (162 mph) speedometer, 3-inch cat-back exhaust system, front suspension tower brace, sports shock absorbers, 17-inch alloy wheels, and a rear spoiler with a built-in third brake light.\r\n\r\n\r\nThe Skyline GT-R &#039;N1&#039; model (identified by the model code suffix &quot;ZN&quot;), was introduced on 19 July 1991, and designed for home-market N1 racing with a total of 245 units eventually produced (118 of these are &#039;N1&#039;, 64 are &#039;V·Spec N1&#039;, and 63 are &#039;V·Spec II N1&#039; - see below explanation of &#039;V.spec&#039;). The most notable change was in the engine, which was upgraded to the R32-N1 specification. Building on the &#039;Nismo&#039; car&#039;s specification, it was also lightened by the removal of the ABS, and rear wiper, but for &#039;N1&#039; the air conditioning, sound system, and boot carpet were also deleted, and distinctive light-weight headlights were fitted. &#039;N1&#039; cars also had reinforcing for the brake master cylinder and additional brake cooling ducts under the car. All &#039;N1&#039; cars were delivered with a thin layer of colour code 326 &quot;Crystal White&quot; paint.', '2021-12-30 17:02:36', '9-28.jpg', 'N'),
(10, 'Nissan GTR R-33', 'The E-BCNR33 (R33) was developed even as the non GT-R R33 models went on sale in August 1993 (with a prototype being shown at the 1993 Tokyo Motor Show) for release in 1995 as a successor to the R32 model. The engine in the R33 was nearly identical to the R32. It used the same turbochargers and the same specification for the manual gearbox, although the syncros were stronger. The engine corrected the R32&#039;s weak oil pump drive collar, which tended to fail in higher power applications, by using a wider collar (also fixed in spec 2 R32&#039;s prior to R33 release). The base model of the R33 GT-R weighs 1.540 kg (3.395 lb).\r\n\r\n\r\nThe R33 GT-R went on sale on 6 January 1995 with the base model GT-R and the V Spec model. The V Spec model weighed in 10 kg heavier, and had sportier suspension resulting in lower ground clearance. The V Spec also featured the newer ATTESA E-TS Pro all wheel drive system, which included an Active Limited Slip differential. At the same time as the introduction of the R33 GT-R and GT-R V Spec, Nissan introduced the R33 GT-R V Spec N1 model. Changes made to the R33 N1 are similar to those in the R32 N1. The car was made lighter by removing the ABS, air conditioning, sound system, rear wiper, and boot carpet. The R33 GT-R V·Spec N1 received the slightly revised R33 N1 engine\r\n\r\n\r\nThe R33 ended production on 9 November 1998. The last R33 GT-R produced was a V-Spec in GV1 finished in Black Pearl colour.In 1995, Best Motoring conducted a test of the GT-R R33 at the Nürburgring Nordscheleife. Driven by Motoharu Kurosawa, the car did a 8:01.72 minutes lap time around the track. At the time, it was the fastest road-legal series production car and second fastest road-legal production car around the track. In 1996, the record was broken by Dirk Schoysman in a GT-R R33 V-Spec for Best Motoring with a lap time of 7:59 minutes. In 1999, the record was broken by a GT-R R34.\r\n\r\n\r\nNissan mostly competed in Group C racing with purpose built prototype race cars after the R32 GT-R was ousted from the Group A racing but rule changes for Group C forced Nissan to abandon Group C racing. Nissan then set out to develop one of its existing cars to enter the GT1 class racing in the BPR racing series. The company decided to base the new GT1 car on the R33 LM race car. The weight of the car was reduced to 1.150 kg and the all-wheel-drive system was removed. The car was also considerably widened and lowered with a new bodykit in order to increase downforce. The car was equipped with the N1 specification engine which had a power output of 298 kW (405 PS; 400 hp). The engine was mated to a 6-speed sequential manual transmission manufactured by Xtrac.\r\n\r\n\r\nThe homologation rules for GT1 class in 1995 required one road going equivalent to be made. Thus a single road going LM car was developed and stored at Nissan&#039;s Zuma facility. The road version of the car was detuned to 224 kW (305 PS; 300 hp) and was equipped by the same 50 mm wider bodykit as the racing version. The interior remained the same as the standard R33 GT-R albeit with an Alcantara rimmed steering wheel and racing bucket seats. Two race cars were built having numbers 22 and 23. They were entered in the 1995 season of LeMans but faced tough competition from more powerful race cars such as the Ferrari F40 LM and the McLaren F1 GTR. The number 22 car driven by H. Fukuyama and S. Kasuya qualified in the 34th season and finished 5th in its class with an overall position of 10th while the number 23 retired after 157 laps due to gearbox damage. Due to the entry of purpose built race cars by using loopholes in the regulations such as the Porsche 911 GT1, Nissan decided to withdraw for the 1996 season.', '2021-12-30 16:57:57', '10-67.jpg', 'N'),
(11, 'Nissan GTR R-34', 'The GF-BNR34 (R34) Skyline GT-R, GT-R V-Spec and GT-R V-Spec N1 models were introduced in January 1999. The R34 GT-R was shorter (from front to rear), and the front overhang was reduced as compared to its predecessor. The valve covers were painted glossy red (colour code Cherry Red Effect Z24 or X1020)as opposed to black in previous models\r\n\r\n\r\nA new feature on the R34 GT-R is a 5.8&quot; LCD multifunction display on the center of the dashboard, which shows seven different live readings of engine and vehicle statistics such as turbocharger pressure (1.2 bar max), oil and water temperature, among others. The GT-R V-Spec model added two extra features to the display: intake and exhaust gas temperatures. Nismo Multi-function Displays (MFD) could be bought at an extra cost, they included a lap timer, G-Force meter and an increase in boost pressure measurement to 2 bar. The R34 GT-R was made shorter in response to customer concerns who thought the R33 was too bulky\r\n\r\n\r\nLike the R33, the new R34 GT-R V-Spec (Victory Specification) models come equipped with the ATTESA E-TS Pro system and an Active LSD at the rear, while standard GT-R models come with the non-Pro system and a conventional mechanical differential. The V-Spec model also had firmer suspension and lower ground clearance, thanks to front and side splitters, as well as a rear carbon fibre air diffuser, designed to keep air flowing smoothly under the car.\r\n\r\n\r\nAt the time of the R34&#039;s introduction, like the R32 and R33, Nissan introduced an R34 V-Spec N1 model. The R34 V-Spec N1 was equipped similar to the R32 and R33 N1 models – a homologation special. It was sold without air conditioning, audio equipment, rear wiper, or boot lining, but ABS remained. The new R34 N1 was also given the new R34 N1 engine. Only 38 known R34 V-Spec N1 models were produced from the factory, 12 of which Nismo used for Super Taikyu racing. The rest were sold to various customers, mostly racing teams and tuning garages\r\n\r\n\r\nThe V-Spec version was also imported into the UK with a number of modifications carried out on these 80 cars.These included 3 additional oil coolers, revised ECU map, full Connolly leather interior, underbody diffusers, stiffer suspension, active rear limited slip differential, extra display feature on the in car display. In additional to the UK, 10 were sold to Hong Kong and Singapore, and 5 to New Zealand although with different changes for their respective markets. In October 2000, Nissan introduced the V-Spec II, replacing the V-Spec. The V-Spec II has increased stiffness in the suspension (even stiffer than the original V-Spec) and had larger rear brake rotors. It also comes equipped with a carbon fibre bonnet equipped with a NACA duct, which is lighter than the aluminium that all other GT-R bonnets are made from. Also different on the V-Spec II was an iridium center console and aluminium pedals. The seats were upholstered with black cloth rather than the gray cloth used on previous R34 GT-R models, and the amber turn lenses were replaced with white versions. With the exception of the carbon fibre bonnet, the standard trim level GT-R also received these updates. A total of 18 V-Spec II N1 were built. A total of 1855 V-Spec II were built for Japan, with an additional 2 being sold for the New Zealand market. The V-Spec N1 was replaced with the V-Spec II N1. The same changes applied to the V-Spec N1 were applied to the V-Spec II N1, with the exception of the V-Spec II carbon bonnet which was now unpainted.\r\n\r\n\r\nIn May 2001, the M-Spec was introduced. It was based on the V-Spec II, but had special &quot;Ripple control&quot; dampers, revised suspension set up, stiffer rear sway bar and a leather interior with heated front seats. The &#039;M&#039; on the M-Spec stood for Mizuno who is the chief engineer of Nissan. The only other change was the removal of the carbon fibre bonnet which was replaced with the standard aluminium bonnet. In February 2002, Nissan launched a final production model of the R34 GT-R called the Skyline GT-R V-Spec II Nür and the Skyline GT-R M-Spec Nür . The Nür was named after the famous German Nürburgring racetrack , where the Skyline was developed. In total 1,003 units R34 GT-R Nür(s) were produced, 718 were V-Spec II Nürs and 285 were M-Spec Nürs. The Nür model featured an improved RB26DETT based on the N1 racing engine. The standard turbochargers were upgraded to larger versions with a slight increase in boost and the ceramic blades were replaced with steel versions. This has increased lag, but the turbo&#039;s durability was improved while being able to handle a bigger boost increase. The V-Spec II Nür is based on the regular V-Spec II model, and the M-Spec Nür was based on the regular M-Spec model. Other than the addition of the Nür engine, the Nür models also included a different colour of stitching on the interior trim, as well as a speedometer reading up to 300 km/h , gold valve covers instead of red and a gold VIN plate instead of silver. Due to Japanese car industry norms at the time, the car was advertised as having 206 kW ( 280 PS; 276 hp ) but it actually had over 246 kW ( 334 PS; 330 hp ) when it left the factory.', '2021-12-30 16:58:32', '11-96.jpg', 'N'),
(12, 'Nissan GT-R R35', 'The production version of the GT-R debuted at the 2007 Tokyo Motor Show as the 2009 model year, with a lap time of 7:38 minutes at the Nürburgring Nordschleife beating the all-time sports classic Porsche 911 Turbo as Nissan stated before launching the car. The GT-R launched in the Japanese market on December 6, 2007 . The U.S. official launch was seven months later on July 7, 2008. Universal Nissan in Los Angeles provided a customer with the delivery of a new GT-R, fresh from the production line, on July 7, 2008. The Canadian launch was also in July 2008. Europe became the third consumer market, where it launched in March 2009 . The large disparity in initial marketing between these regional releases is due to Nissan having to build GT-R performance centers where the car is serviced. The engines are hand built by only four specially trained mechanics called &quot;Takumi Craftsmens&quot; on a special line at Nissan&#039;s Yokohama plant and their names are badged on every GT-R engine. The cars are built at their Tochigi plant on a shared production line.\r\n\r\nNissan chief creative officer, Shir? Nakamura , has likened the new GT-R to the giant robots of the Gundam series. Nakamura stated: &quot;The GT-R is unique because it is not simply a copy of a European-designed Sports car ; it had to really reflect Japanese culture.&quot;Nissan&#039;s American designers sculpted the rear three-quarters of the vehicle, while their European designers sculpted the roofline. Polyphony Digital, creators of the Gran Turismo series of motor racing video games, were themselves involved in the development of the GT-R, having been contracted to design the GT-R&#039;s multifunction display\r\n\r\n\r\nAs of 2014 the GT-R was the only model built on Nissan&#039;s Premium Midship (PM) platform, an evolution of the Front Midship (FM) architecture introduced on the 2001 (V35) Skyline. It is a hybrid unibody assembled on ultra-low-tolerance jigs similar to those used in race car construction. Alcoa aluminum is used for the hood, trunk lid, and outer door skins, with die-cast aluminum front shock towers and inner door structures. Outer body panels are stamped using a multiple-strike coining process for added rigidity and precision. The chassis is stiffened with a carbon-composite front cross member/radiator support.\r\n\r\n\r\nNissan developed a 6-stage paint process with a double clear coat and chip-resistant paint for use in critical areas of the GT-R chassis. An optional liquid-effect finish employs a hand-polished 8-stage process with product-specific Super Silver metallic paint and three layers of clearcoat.\r\n\r\nThe Nissan GT-R is powered by the VR38DETT V6 engine , a 3.799 cc ( 3,8 L ) DOHC V6 with plasma transferred wire arc sprayed cylinder bores. Two parallel Ishikawajima-Harima (IHI) turbochargers provide forced induction. Models manufactured between 2007 and 2009 are rated at a manufacturer-claimed engine output of 358 kW ( 487 PS; 480 hp ) at 6.400 rpm and 583 Nm ( 430 lb ft ) at 3.200–5.200 rpm . The engine also meets California Air Resources Board Ultra Low Emission Vehicle (ULEV) standards. The standard GT-R and the NISMO GT-R has a drag coefficient of Cd=0.27 .\r\n\r\nA curb weight of 1.724 kg ( 3.800 lb ) with side curtain airbags is achieved using a jig welded steel chassis with aluminium used for the hood, trunk, and doors. A rear mounted six-speed BorgWarner designed dual-clutch automatic transmission built by Aichi Machine Industry shifting gears in just 0.2 seconds is used in conjunction with the ATTESA E-TS system[28] to provide power to all four wheels , along with Nissan&#039;s Vehicle Dynamics Control (VDC-R) to aid in stability. Three shift modes can also be selected for various conditions. The Nissan GT-R features four-wheel , floating disc Brembo brakes with monoblock calipers ( six-piston on the front; four-piston on the rear)', '2021-12-30 17:01:32', '12-69.jpg', 'N'),
(13, 'Nissan GT-R R50', 'The Nissan GT-R50 by Italdesign starts with our latest GT-R NISMO and reinterprets it with a European-style sensibility, combining Japanese performance and Italian craftsmanship. After a strong global tour with the GT-R50 prototype making appearances at Goodwood, Spa-Francorchamps, Nissan Crossing and more, a customer version inspired by the prototype will be produced, with each car tailored for each customer. Italdesign will build no more than 50 vehicles.\r\n\r\nWhile Italdesign developed, engineered and constructed the car, the distinctive, crisp exterior and interior designs originated from Nissan’s design centers in London and San Diego. Key design features include a pronounced power bulge on the hood, stretched LED headlights, lowered roofline and prominent “samurai blade” cooling outlets behind the front wheels. A large, adjustable rear wing, mounted with two uprights, completes the overall look. The exterior is finished in a “Liquid Kinetic Gray” with distinctive, Energetic Sigma Gold accents.\r\n\r\nReflecting its modern high performance pedigree, the interior to the GT-R50 features extensive use of two different carbon fiber finishes across the center console, instrument panel and door linings, along with black Alcantara and fine black Italian leather on the seats. Gold accents echo the exterior treatment throughout the cockpit. The GT-R50 steering wheel is bespoke, made of carbon fiber and trimmed with Alcantara.\r\n\r\n\r\nNissan developed a 6-stage paint process with a double clear coat and chip-resistant paint for use in critical areas of the GT-R chassis. An optional liquid-effect finish employs a hand-polished 8-stage process with product-specific Super Silver metallic paint and three layers of clearcoat.\r\n\r\nDrawing on Nissan’s extensive GT3 racing experience, the NISMO organization enhanced the hand-assembled 3.8-liter V6 VR38DETT engine to produce an estimated 720PS and 780Nm of torque. A revised suspension via Bilstein and upgraded Brembo braking system help handle the extra power.', '2021-12-30 17:00:31', '13-82.jpg', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` char(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `archive` enum('Y','N') NOT NULL DEFAULT 'N',
  `role` int(1) DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `name`, `comment`, `comment_time`) VALUES
(8, 'Adones', 'Hello World\r\n', '2021-03-11 08:07:25'),
(9, 'Mark Jason', 'Hi Adones', '2021-03-11 10:09:14'),
(10, 'Angel', 'Hello everyone', '2021-03-11 08:11:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
