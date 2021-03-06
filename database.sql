-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2014 at 05:51 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mycms`
--

-- --------------------------------------------------------

-- Drop all tables

DROP VIEW IF EXISTS
  `mycms_publication_video`,
  `mycms_research_video`,
  `mycms_people_image`,
  `mycms_publication_doc`,
  `mycms_publication_image`,
  `mycms_publication_people`,
  `mycms_research_image`,
  `mycms_research_people`,
  `mycms_research_publication`;

DROP TABLE IF EXISTS
  `mycms_video_publication`,
  `mycms_video_research`,
  `mycms_image_people`,
  `mycms_doc_publication`,
  `mycms_image_publication`,
  `mycms_people_publication`,
  `mycms_image_research`,
  `mycms_people_research`,
  `mycms_publication_research`,
  `mycms_settings`,
  `mycms_doc`,
  `mycms_image`,
  `mycms_video`,
  `mycms_people`,
  `mycms_publication`,
  `mycms_research`;

-- --------------------------------------------------------

--
-- Table structure for table `mycms_settings`
--

CREATE TABLE IF NOT EXISTS `mycms_settings` (
  `var` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `val` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mycms_doc`
--

CREATE TABLE IF NOT EXISTS `mycms_doc` (
  `doc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `doc_filename` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `doc_id` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mycms_image`
--

CREATE TABLE IF NOT EXISTS `mycms_image` (
  `image_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_filename` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_id` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mycms_video`
--

CREATE TABLE IF NOT EXISTS `mycms_video` (
  `video_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `video_filename` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`video_id`),
  UNIQUE KEY `video_id` (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mycms_people`
--

CREATE TABLE IF NOT EXISTS `mycms_people` (
  `people_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `people_firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `people_middlename` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `people_affiliation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_bio` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_group` enum('faculty','adjunct_faculty','researcher','graduate_student','staff','alumni','recent_visitor','undergraduate_student','other') COLLATE utf8_unicode_ci NOT NULL,
  `people_role` enum('administrator','authenticated') COLLATE utf8_unicode_ci NOT NULL,
  `people_nsid` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_start` date DEFAULT NULL,
  `people_end` date DEFAULT NULL,
  PRIMARY KEY (`people_id`),
  UNIQUE KEY `people_id` (`people_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mycms_publication`
--

CREATE TABLE IF NOT EXISTS `mycms_publication` (
  `publication_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `publication_type` enum('article','book','booklet','conference','inbook','incollection','inproceedings','manual','mastersthesis','misc','phdthesis','proceedings','techreport','unpublished') COLLATE utf8_unicode_ci NOT NULL,
  `publication_title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `publication_booktitle` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_abstract` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `publication_year` year(4) NOT NULL,
  `publication_month` enum('january','february','march','april','may','june','july','august','september','october','november','december') COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_toappear` tinyint(1) NOT NULL,
  `publication_volume` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'issuenumber',
  `publication_series` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_pages` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_doi_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_journal` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_isbn` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_edition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_chapter` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_technumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_school` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_howpublished` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_institution` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_organization` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_publisher` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`publication_id`),
  UNIQUE KEY `publication_id` (`publication_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mycms_research`
--

CREATE TABLE IF NOT EXISTS `mycms_research` (
  `research_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `research_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `research_summary` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `research_description` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `research_status` enum('active','future','onhold','past','unknown') COLLATE utf8_unicode_ci NOT NULL,
  `research_priority` int(10) DEFAULT NULL,
  PRIMARY KEY (`research_id`),
  UNIQUE KEY `research_id` (`research_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mycms_video_publication`
--

CREATE TABLE IF NOT EXISTS `mycms_video_publication` (
  `video_id` int(11) UNSIGNED NOT NULL,
  `publication_id` int(11) UNSIGNED NOT NULL,
  `video_order` int(11) DEFAULT NULL,
  `publication_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`video_id`,`publication_id`),
  KEY `publication_id` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for table `mycms_video_publication`
--
ALTER TABLE `mycms_video_publication`
  ADD CONSTRAINT `mycms_video_publication_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `mycms_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycms_video_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Structure for view `mycms_publication_video`
--
DROP TABLE IF EXISTS `mycms_publication_video`;
CREATE VIEW `mycms_publication_video` AS (select
  `mycms_video_publication`.`video_id` AS `video_id`,
  `mycms_video_publication`.`publication_id` AS `publication_id`,
  `mycms_video_publication`.`video_order` AS `video_order`,
  `mycms_video_publication`.`publication_order` AS `publication_order`
  from `mycms_video_publication`);

-- --------------------------------------------------------

--
-- Table structure for table `mycms_video_research`
--

CREATE TABLE IF NOT EXISTS `mycms_video_research` (
  `video_id` int(11) UNSIGNED NOT NULL,
  `research_id` int(11) UNSIGNED NOT NULL,
  `video_order` int(11) DEFAULT NULL,
  `research_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`video_id`,`research_id`),
  KEY `research_id` (`research_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for table `mycms_video_research`
--
ALTER TABLE `mycms_video_research`
  ADD CONSTRAINT `mycms_video_research_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `mycms_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycms_video_research_ibfk_2` FOREIGN KEY (`research_id`) REFERENCES `mycms_research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Structure for view `mycms_research_video`
--
DROP TABLE IF EXISTS `mycms_research_video`;
CREATE VIEW `mycms_research_video` AS (select
  `mycms_video_research`.`video_id` AS `video_id`,
  `mycms_video_research`.`research_id` AS `research_id`,
  `mycms_video_research`.`video_order` AS `video_order`,
  `mycms_video_research`.`research_order` AS `research_order`
  from `mycms_video_research`);

-- --------------------------------------------------------

--
-- Table structure for table `mycms_image_people`
--

CREATE TABLE IF NOT EXISTS `mycms_image_people` (
  `image_id` int(11) UNSIGNED NOT NULL,
  `people_id` int(11) UNSIGNED NOT NULL,
  `image_order` int(11) DEFAULT NULL,
  `people_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`,`people_id`),
  KEY `people_id` (`people_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for table `mycms_image_people`
--
ALTER TABLE `mycms_image_people`
  ADD CONSTRAINT `mycms_image_people_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `mycms_image` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycms_image_people_ibfk_2` FOREIGN KEY (`people_id`) REFERENCES `mycms_people` (`people_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Structure for view `mycms_people_image`
--
DROP TABLE IF EXISTS `mycms_people_image`;
CREATE VIEW `mycms_people_image` AS (select
  `mycms_image_people`.`image_id` AS `image_id`,
  `mycms_image_people`.`people_id` AS `people_id`,
  `mycms_image_people`.`image_order` AS `image_order`,
  `mycms_image_people`.`people_order` AS `people_order`
  from `mycms_image_people`);

-- --------------------------------------------------------

--
-- Table structure for table `mycms_doc_publication`
--

CREATE TABLE IF NOT EXISTS `mycms_doc_publication` (
  `doc_id` int(11) UNSIGNED NOT NULL,
  `publication_id` int(11) UNSIGNED NOT NULL,
  `doc_order` int(11) DEFAULT NULL,
  `publication_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`doc_id`,`publication_id`),
  KEY `publication_id` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for table `mycms_doc_publication`
--
ALTER TABLE `mycms_doc_publication`
  ADD CONSTRAINT `mycms_doc_publication_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `mycms_doc` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycms_doc_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Structure for view `mycms_publication_doc`
--
DROP TABLE IF EXISTS `mycms_publication_doc`;
CREATE VIEW `mycms_publication_doc` AS (select
  `mycms_doc_publication`.`doc_id` AS `doc_id`,
  `mycms_doc_publication`.`publication_id` AS `publication_id`,
  `mycms_doc_publication`.`doc_order` AS `doc_order`,
  `mycms_doc_publication`.`publication_order` AS `publication_order`
  from `mycms_doc_publication`);

-- --------------------------------------------------------

--
-- Table structure for table `mycms_image_publication`
--

CREATE TABLE IF NOT EXISTS `mycms_image_publication` (
  `image_id` int(11) UNSIGNED NOT NULL,
  `publication_id` int(11) UNSIGNED NOT NULL,
  `image_order` int(11) DEFAULT NULL,
  `publication_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`,`publication_id`),
  KEY `publication_id` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for table `mycms_image_publication`
--
ALTER TABLE `mycms_image_publication`
  ADD CONSTRAINT `mycms_image_publication_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `mycms_image` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycms_image_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Structure for view `mycms_publication_image`
--
DROP TABLE IF EXISTS `mycms_publication_image`;
CREATE VIEW `mycms_publication_image` AS (select
  `mycms_image_publication`.`image_id` AS `image_id`,
  `mycms_image_publication`.`publication_id` AS `publication_id`,
  `mycms_image_publication`.`image_order` AS `image_order`,
  `mycms_image_publication`.`publication_order` AS `publication_order`
  from `mycms_image_publication`);

-- --------------------------------------------------------

--
-- Table structure for table `mycms_people_publication`
--

CREATE TABLE IF NOT EXISTS `mycms_people_publication` (
  `people_id` int(11) UNSIGNED NOT NULL,
  `publication_id` int(11) UNSIGNED NOT NULL,
  `people_order` int(11) DEFAULT NULL,
  `publication_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`people_id`,`publication_id`),
  KEY `publication_id` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for table `mycms_people_publication`
--
ALTER TABLE `mycms_people_publication`
  ADD CONSTRAINT `mycms_people_publication_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `mycms_people` (`people_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycms_people_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Structure for view `mycms_publication_people`
--
DROP TABLE IF EXISTS `mycms_publication_people`;
CREATE VIEW `mycms_publication_people` AS (select
  `mycms_people_publication`.`people_id` AS `people_id`,
  `mycms_people_publication`.`publication_id` AS `publication_id`,
  `mycms_people_publication`.`people_order` AS `people_order`,
  `mycms_people_publication`.`publication_order` AS `publication_order`
  from `mycms_people_publication`);

-- --------------------------------------------------------

--
-- Table structure for table `mycms_image_research`
--

CREATE TABLE IF NOT EXISTS `mycms_image_research` (
  `image_id` int(11) UNSIGNED NOT NULL,
  `research_id` int(11) UNSIGNED NOT NULL,
  `image_order` int(11) DEFAULT NULL,
  `research_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`,`research_id`),
  KEY `research_id` (`research_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for table `mycms_image_research`
--
ALTER TABLE `mycms_image_research`
  ADD CONSTRAINT `mycms_image_research_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `mycms_image` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycms_image_research_ibfk_2` FOREIGN KEY (`research_id`) REFERENCES `mycms_research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Structure for view `mycms_research_image`
--
DROP TABLE IF EXISTS `mycms_research_image`;
CREATE VIEW `mycms_research_image` AS (select
  `mycms_image_research`.`image_id` AS `image_id`,
  `mycms_image_research`.`research_id` AS `research_id`,
  `mycms_image_research`.`image_order` AS `image_order`,
  `mycms_image_research`.`research_order` AS `research_order`
  from `mycms_image_research`);

-- --------------------------------------------------------

--
-- Table structure for table `mycms_people_research`
--

CREATE TABLE IF NOT EXISTS `mycms_people_research` (
  `people_id` int(11) UNSIGNED NOT NULL,
  `research_id` int(11) UNSIGNED NOT NULL,
  `people_order` int(11) DEFAULT NULL,
  `research_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`people_id`,`research_id`),
  KEY `research_id` (`research_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for table `mycms_people_research`
--
ALTER TABLE `mycms_people_research`
  ADD CONSTRAINT `mycms_people_research_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `mycms_people` (`people_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycms_people_research_ibfk_2` FOREIGN KEY (`research_id`) REFERENCES `mycms_research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Structure for view `mycms_research_people`
--
DROP TABLE IF EXISTS `mycms_research_people`;
CREATE VIEW `mycms_research_people` AS (select
  `mycms_people_research`.`people_id` AS `people_id`,
  `mycms_people_research`.`research_id` AS `research_id`,
  `mycms_people_research`.`people_order` AS `people_order`,
  `mycms_people_research`.`research_order` AS `research_order`
  from `mycms_people_research`);

-- --------------------------------------------------------

--
-- Table structure for table `mycms_publication_research`
--

CREATE TABLE IF NOT EXISTS `mycms_publication_research` (
  `publication_id` int(11) UNSIGNED NOT NULL,
  `research_id` int(11) UNSIGNED NOT NULL,
  `publication_order` int(11) DEFAULT NULL,
  `research_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`publication_id`,`research_id`),
  KEY `research_id` (`research_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for table `mycms_publication_research`
--
ALTER TABLE `mycms_publication_research`
  ADD CONSTRAINT `mycms_publication_research_ibfk_1` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mycms_publication_research_ibfk_2` FOREIGN KEY (`research_id`) REFERENCES `mycms_research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Structure for view `mycms_research_publication`
--
DROP TABLE IF EXISTS `mycms_research_publication`;
CREATE VIEW `mycms_research_publication` AS (select
  `mycms_publication_research`.`publication_id` AS `publication_id`,
  `mycms_publication_research`.`research_id` AS `research_id`,
  `mycms_publication_research`.`publication_order` AS `publication_order`,
  `mycms_publication_research`.`research_order` AS `research_order`
  from `mycms_publication_research`);

-- --------------------------------------------------------


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
