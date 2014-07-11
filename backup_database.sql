-- MySQL dump 10.13  Distrib 5.6.19, for osx10.9 (x86_64)
--
-- Host: localhost    Database: mycms
-- ------------------------------------------------------
-- Server version	5.6.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mycms_doc`
--

DROP TABLE IF EXISTS `mycms_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_doc` (
  `doc_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `doc_filename` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `doc_id` (`doc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_doc`
--

LOCK TABLES `mycms_doc` WRITE;
/*!40000 ALTER TABLE `mycms_doc` DISABLE KEYS */;
INSERT INTO `mycms_doc` VALUES (10,'10.pdf'),(11,'11.pdf'),(12,'12.pdf'),(13,'13.pdf'),(14,'14.pdf'),(15,'15.pdf'),(16,'16.pdf'),(17,'17.pdf'),(18,'18.pdf'),(19,'19.pdf'),(20,'20.pdf'),(21,'21.pdf'),(22,'22.pdf'),(23,'23.pdf'),(24,'24.pdf'),(25,'25.pdf'),(26,'26.pdf'),(27,'27.pdf'),(28,'28.pdf'),(29,'29.pdf'),(30,'30.doc'),(31,'31.pdf'),(32,'32.pdf'),(33,'33.pdf'),(34,'34.pdf'),(35,'35.pdf');
/*!40000 ALTER TABLE `mycms_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_doc_publication`
--

DROP TABLE IF EXISTS `mycms_doc_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_doc_publication` (
  `doc_id` int(11) unsigned NOT NULL,
  `publication_id` int(11) unsigned NOT NULL,
  `doc_order` int(11) DEFAULT NULL,
  `publication_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`doc_id`,`publication_id`),
  KEY `publication_id` (`publication_id`),
  CONSTRAINT `mycms_doc_publication_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `mycms_doc` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mycms_doc_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_doc_publication`
--

LOCK TABLES `mycms_doc_publication` WRITE;
/*!40000 ALTER TABLE `mycms_doc_publication` DISABLE KEYS */;
INSERT INTO `mycms_doc_publication` VALUES (10,11,NULL,NULL),(11,12,NULL,NULL),(12,13,NULL,NULL),(13,14,NULL,NULL),(14,15,NULL,NULL),(15,16,NULL,NULL),(16,17,NULL,NULL),(17,18,NULL,NULL),(18,19,NULL,NULL),(19,20,NULL,NULL),(20,21,NULL,NULL),(21,22,NULL,NULL),(22,23,NULL,NULL),(23,24,NULL,NULL),(24,25,NULL,NULL),(25,27,NULL,NULL),(26,28,NULL,NULL),(27,32,NULL,NULL),(28,33,NULL,NULL),(29,34,NULL,NULL),(30,35,NULL,NULL),(31,36,NULL,NULL),(32,39,NULL,NULL),(35,40,NULL,NULL);
/*!40000 ALTER TABLE `mycms_doc_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_image`
--

DROP TABLE IF EXISTS `mycms_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_image` (
  `image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_filename` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_id` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_image`
--

LOCK TABLES `mycms_image` WRITE;
/*!40000 ALTER TABLE `mycms_image` DISABLE KEYS */;
INSERT INTO `mycms_image` VALUES (2,'2.jpg'),(5,'5.jpg'),(11,'11.jpg'),(12,'12.jpg'),(13,'13.jpg'),(14,'14.jpg'),(15,'15.jpg'),(16,'16.jpg'),(17,'17.jpg'),(18,'18.jpg'),(19,'19.jpg'),(20,'20.jpg'),(21,'21.jpg'),(22,'22.jpg'),(23,'23.jpg'),(24,'24.jpg'),(25,'25.png'),(26,'26.png'),(28,'28.png'),(29,'29.png'),(30,'30.jpg'),(31,'31.jpg'),(32,'32.png');
/*!40000 ALTER TABLE `mycms_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_image_people`
--

DROP TABLE IF EXISTS `mycms_image_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_image_people` (
  `image_id` int(11) unsigned NOT NULL,
  `people_id` int(11) unsigned NOT NULL,
  `image_order` int(11) DEFAULT NULL,
  `people_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`,`people_id`),
  KEY `people_id` (`people_id`),
  CONSTRAINT `mycms_image_people_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `mycms_image` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mycms_image_people_ibfk_2` FOREIGN KEY (`people_id`) REFERENCES `mycms_people` (`people_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_image_people`
--

LOCK TABLES `mycms_image_people` WRITE;
/*!40000 ALTER TABLE `mycms_image_people` DISABLE KEYS */;
INSERT INTO `mycms_image_people` VALUES (2,270,NULL,NULL),(5,271,NULL,NULL),(11,274,NULL,NULL),(12,277,NULL,NULL),(13,278,NULL,NULL),(14,281,NULL,NULL),(15,282,NULL,NULL),(17,286,NULL,NULL),(18,287,NULL,NULL),(19,288,NULL,NULL),(20,289,NULL,NULL),(21,290,NULL,NULL),(22,291,NULL,NULL),(23,292,NULL,NULL);
/*!40000 ALTER TABLE `mycms_image_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_image_publication`
--

DROP TABLE IF EXISTS `mycms_image_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_image_publication` (
  `image_id` int(11) unsigned NOT NULL,
  `publication_id` int(11) unsigned NOT NULL,
  `image_order` int(11) DEFAULT NULL,
  `publication_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`,`publication_id`),
  KEY `publication_id` (`publication_id`),
  CONSTRAINT `mycms_image_publication_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `mycms_image` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mycms_image_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_image_publication`
--

LOCK TABLES `mycms_image_publication` WRITE;
/*!40000 ALTER TABLE `mycms_image_publication` DISABLE KEYS */;
INSERT INTO `mycms_image_publication` VALUES (24,27,NULL,NULL),(25,28,NULL,NULL),(26,29,NULL,NULL),(28,30,NULL,NULL),(29,31,NULL,NULL),(30,32,NULL,NULL),(31,33,NULL,NULL),(32,34,NULL,NULL);
/*!40000 ALTER TABLE `mycms_image_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_image_research`
--

DROP TABLE IF EXISTS `mycms_image_research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_image_research` (
  `image_id` int(11) unsigned NOT NULL,
  `research_id` int(11) unsigned NOT NULL,
  `image_order` int(11) DEFAULT NULL,
  `research_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`,`research_id`),
  KEY `research_id` (`research_id`),
  CONSTRAINT `mycms_image_research_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `mycms_image` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mycms_image_research_ibfk_2` FOREIGN KEY (`research_id`) REFERENCES `mycms_research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_image_research`
--

LOCK TABLES `mycms_image_research` WRITE;
/*!40000 ALTER TABLE `mycms_image_research` DISABLE KEYS */;
INSERT INTO `mycms_image_research` VALUES (16,1,NULL,NULL);
/*!40000 ALTER TABLE `mycms_image_research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_people`
--

DROP TABLE IF EXISTS `mycms_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_people` (
  `people_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `people_firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `people_middlename` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `people_affiliation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_bio` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_group` enum('faculty','adjunct_faculty','researcher','graduate_student','staff','alumni','recent_visitor','undergraduate_student','other') COLLATE utf8_unicode_ci NOT NULL,
  `people_role` enum('administrator','authenticated') COLLATE utf8_unicode_ci NOT NULL,
  `people_nsid` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_start` date DEFAULT NULL,
  `people_end` date DEFAULT NULL,
  PRIMARY KEY (`people_id`),
  UNIQUE KEY `people_id` (`people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_people`
--

LOCK TABLES `mycms_people` WRITE;
/*!40000 ALTER TABLE `mycms_people` DISABLE KEYS */;
INSERT INTO `mycms_people` VALUES (270,'Scott','','Bateman','University of Prince Edward Island','sbateman@upei.ca','Dr. Scott Bateman joined the faculty of CSIT in late 2012, and is an alumnus of UPEI.\r\n\r\nScott is an assistant professor at the University of Prince Edward Island. He completed a PhD in August 2012 under the supervision of Carl Gutwin and Gordon McCalla.\r\n\r\nFor a complete list of publications please see scottbateman.ca. \r\nInterests\r\n\r\nInteraction History\r\nSocial/Group Awareness\r\nWeb Browsing Behaviour\r\nInformation Visualization','faculty','administrator','ssb001','','2014-06-24','2016-05-28'),(271,'Ye','','Xia','University of Prince Edward Island','harvey1991cn@gmail.com','test','adjunct_faculty','administrator','yex001','e10adc3949ba59abbe56e057f20f883e','2019-05-13','2019-06-21'),(274,'Yixin','','Wang','University of Prince Edward Island','yxinw@upei.ca','test','faculty','administrator','yxw001',NULL,'2014-06-03','2014-12-26'),(275,'Jaime','','Teevan','','','','other','authenticated','','','1969-12-31','1969-12-31'),(276,'Ryen','','White','','','','other','authenticated','','','1969-12-31','1969-12-31'),(277,'Miguel','','Nacenta','University of St Andrews, University of Saskatchewan, University of Calgary','','','other','authenticated','','','1969-12-31','1969-12-31'),(278,'Carl','','Gutwin','University of Saskatchewan','','Dr. Carl Gutwin is a professor in the Department of Computer Science and the director of the HCI lab. His main research areas are computer-supported cooperative work, interaction techniques, and surface computing.\r\n\r\nContact\r\nCarl Gutwin, Professor\r\nDepartment of Computer Science\r\nUniversity of Saskatchewan\r\n110 Science Place, Saskatoon, SK, S7N 5C9\r\nTel: +1 306 966 8646\r\nFax: +1 306 966 4884','other','authenticated','','','1969-12-31','1969-12-31'),(279,'Michael','J','Muller','','','','other','authenticated','','','1969-12-31','1969-12-31'),(280,'Jill','','Freyne','','','','other','authenticated','','','1969-12-31','1969-12-31'),(281,'Regan','','Mandryk','','','Dr. Regan Mandryk is an Associate Professor in the Interaction Lab in the Department of Computer Science at the University of Saskatchewan. Her main research areas are games for health and wellness, game evaluation, and affective computing.\r\n\r\nFor publications prior to arriving at the UofS (before 2007), please check out reganmandryk.com.\r\nContact\r\nRegan Mandryk, Associate Professor\r\nDepartment of Computer Science\r\nUniversity of Saskatchewan\r\n110 Science Place, Saskatoon, SK, S7N 5C9\r\nTel: +1 306 966 4888\r\nFax: +1 306 966 4884','other','authenticated','','','2069-12-31','2069-12-31'),(282,'Robert','','Xiao','University of Waterloo','','','other','authenticated','','','1969-12-31','1969-12-31'),(283,'Gordon','','McCalla','University of Saskatchewan','','','other','authenticated','','','1969-12-31','1969-12-31'),(284,'Nate','','Osgood','University of Saskatchewan','','','other','authenticated','','','1969-12-31','1969-12-31'),(285,'David','','McDine','','','','other','authenticated','','','1969-12-31','1969-12-31'),(286,'Christopher','','Brooks','University of Saskatchewan','','','other','authenticated','','','1969-12-31','1969-12-31'),(287,'Aaron','','Genest','University of Saskatchewan','','','other','authenticated','','','2069-12-31','2069-12-31'),(288,'Tad','','Stach','Queen\'s University','','','other','authenticated','','','1969-12-31','1969-12-31'),(289,'Andy','','Cockburn','University of Canterbury','','','other','authenticated','','','1969-12-31','1969-12-31'),(290,'Andre','','Doucette','University of Saskatchewan','','','other','authenticated','','','1969-12-31','1969-12-31'),(291,'Lennart','','Nacke','University of Ontario Institute of Technology, University of Saskatchewan','','','other','authenticated','','','1969-12-31','1969-12-31'),(292,'David','','Flatla','University of Dundee','','','other','authenticated','','','1969-12-31','1969-12-31'),(293,'Stacey','','Scott','','','','other','authenticated','','','1969-12-31','1969-12-31'),(294,'Anthony','','Tang','','','','other','authenticated','','','1969-12-31','1969-12-31'),(295,'Rodrigo','Vicencio','Moreira','','','','other','authenticated','','','1969-12-31','1969-12-31'),(296,'Graham','','Erickson','','','','other','authenticated','','','1969-12-31','1969-12-31'),(297,'Stephanie','','Frost','','','','other','authenticated','','','1969-12-31','1969-12-31'),(298,'Carlo','','Torniai','','','','other','authenticated','','','1969-12-31','1969-12-31'),(299,'Jelena','','Jovanovic','','','','other','authenticated','','','1969-12-31','1969-12-31'),(300,'Dragan','','Gasevic','','','','other','authenticated','','','1969-12-31','1969-12-31'),(301,'Marek','','Hatala','','','','other','authenticated','','','1969-12-31','1969-12-31'),(302,'Rosta','','Farzan','','','','other','authenticated','','','1969-12-31','1969-12-31'),(303,'Peter','','Brusilovsky','','','','other','authenticated','','','1969-12-31','1969-12-31'),(304,'Wengang','','Liu','','','','other','authenticated','','','1969-12-31','1969-12-31'),(305,'Jim','','Greer','','','','other','authenticated','','','1969-12-31','1969-12-31'),(306,'Timmy','','Eap','','','','other','authenticated','','','1969-12-31','1969-12-31'),(307,'Griff','','Richards','','','','other','authenticated','','','1969-12-31','1969-12-31'),(308,'Khaled','','Hammouda','','','','other','authenticated','','','1969-12-31','1969-12-31'),(309,'Shadi','','Shehata','','','','other','authenticated','','','1969-12-31','1969-12-31'),(310,'Mohammad','','Kamel','','','','other','authenticated','','','1969-12-31','1969-12-31'),(311,'F','','Karray','','','','other','authenticated','','','1969-12-31','1969-12-31');
/*!40000 ALTER TABLE `mycms_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mycms_people_image`
--

DROP TABLE IF EXISTS `mycms_people_image`;
/*!50001 DROP VIEW IF EXISTS `mycms_people_image`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mycms_people_image` AS SELECT 
 1 AS `image_id`,
 1 AS `people_id`,
 1 AS `image_order`,
 1 AS `people_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mycms_people_publication`
--

DROP TABLE IF EXISTS `mycms_people_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_people_publication` (
  `people_id` int(11) unsigned NOT NULL,
  `publication_id` int(11) unsigned NOT NULL,
  `people_order` int(11) DEFAULT NULL,
  `publication_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`people_id`,`publication_id`),
  KEY `publication_id` (`publication_id`),
  CONSTRAINT `mycms_people_publication_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `mycms_people` (`people_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mycms_people_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_people_publication`
--

LOCK TABLES `mycms_people_publication` WRITE;
/*!40000 ALTER TABLE `mycms_people_publication` DISABLE KEYS */;
INSERT INTO `mycms_people_publication` VALUES (270,11,NULL,NULL),(270,12,0,NULL),(270,13,NULL,NULL),(270,14,0,NULL),(270,15,0,NULL),(270,16,0,NULL),(270,17,0,NULL),(270,18,0,NULL),(270,19,0,NULL),(270,20,0,NULL),(270,21,3,NULL),(270,22,1,NULL),(270,23,0,NULL),(270,24,NULL,NULL),(270,25,0,NULL),(270,26,0,NULL),(270,27,NULL,NULL),(270,28,2,NULL),(270,29,3,NULL),(270,30,3,NULL),(270,31,3,NULL),(270,32,0,NULL),(270,33,1,NULL),(270,34,1,NULL),(270,35,1,NULL),(270,36,3,NULL),(270,37,0,NULL),(270,38,0,NULL),(270,39,0,NULL),(270,40,0,NULL),(275,23,1,NULL),(276,20,3,NULL),(276,23,2,NULL),(276,37,3,NULL),(277,12,2,NULL),(278,12,1,NULL),(278,15,2,NULL),(278,16,1,NULL),(278,17,2,NULL),(278,18,3,NULL),(278,19,3,NULL),(278,20,1,NULL),(278,21,1,NULL),(278,22,4,NULL),(278,25,1,NULL),(278,26,2,NULL),(278,27,NULL,NULL),(279,14,1,NULL),(280,14,2,NULL),(281,15,1,NULL),(281,17,1,NULL),(281,18,1,NULL),(281,19,4,NULL),(281,21,4,NULL),(281,26,1,NULL),(281,27,NULL,NULL),(282,15,3,NULL),(282,19,2,NULL),(282,26,3,NULL),(283,16,3,NULL),(283,20,2,NULL),(283,25,2,NULL),(283,28,3,NULL),(283,32,3,NULL),(283,33,3,NULL),(283,34,2,NULL),(283,35,3,NULL),(283,37,2,NULL),(283,39,2,NULL),(283,40,2,NULL),(284,16,2,NULL),(285,17,4,NULL),(286,17,5,NULL),(286,33,0,NULL),(286,34,0,NULL),(286,35,0,NULL),(286,37,1,NULL),(286,39,1,NULL),(286,40,1,NULL),(287,17,3,NULL),(287,22,0,NULL),(288,18,2,NULL),(289,19,5,NULL),(290,19,1,NULL),(291,21,2,NULL),(292,21,0,NULL),(293,22,3,NULL),(294,22,2,NULL),(295,27,NULL,NULL),(296,28,0,NULL),(297,28,1,NULL),(298,29,0,NULL),(298,30,0,NULL),(298,31,1,NULL),(298,36,2,NULL),(298,38,2,NULL),(299,29,1,NULL),(299,30,1,NULL),(299,31,0,NULL),(299,33,12,NULL),(299,36,0,NULL),(299,38,1,NULL),(300,29,2,NULL),(300,30,2,NULL),(300,31,2,NULL),(300,33,5,NULL),(300,36,1,NULL),(300,38,3,NULL),(301,29,4,NULL),(301,30,4,NULL),(301,31,4,NULL),(301,36,4,NULL),(301,38,4,NULL),(302,32,1,NULL),(303,32,2,NULL),(303,39,3,NULL),(304,33,2,NULL),(305,33,4,NULL),(305,34,3,NULL),(305,35,2,NULL),(306,33,6,NULL),(307,33,7,NULL),(308,33,8,NULL),(309,33,9,NULL),(310,33,10,NULL),(311,33,11,NULL);
/*!40000 ALTER TABLE `mycms_people_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_people_research`
--

DROP TABLE IF EXISTS `mycms_people_research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_people_research` (
  `people_id` int(11) unsigned NOT NULL,
  `research_id` int(11) unsigned NOT NULL,
  `people_order` int(11) DEFAULT NULL,
  `research_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`people_id`,`research_id`),
  KEY `research_id` (`research_id`),
  CONSTRAINT `mycms_people_research_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `mycms_people` (`people_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mycms_people_research_ibfk_2` FOREIGN KEY (`research_id`) REFERENCES `mycms_research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_people_research`
--

LOCK TABLES `mycms_people_research` WRITE;
/*!40000 ALTER TABLE `mycms_people_research` DISABLE KEYS */;
INSERT INTO `mycms_people_research` VALUES (270,1,0,NULL),(278,1,2,NULL),(281,1,1,NULL);
/*!40000 ALTER TABLE `mycms_people_research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_publication`
--

DROP TABLE IF EXISTS `mycms_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_publication` (
  `publication_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `publication_type` enum('article','book','booklet','conference','inbook','incollection','inproceedings','inworkshopproceedings','manual','mastersthesis','misc','phdthesis','proceedings','techreport','unpublished') COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `publication_booktitle` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication_abstract` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `publication_year` year(4) NOT NULL,
  `publication_month` enum('january','february','march','april','may','june','july','august','september','october','november','december','') COLLATE utf8_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_publication`
--

LOCK TABLES `mycms_publication` WRITE;
/*!40000 ALTER TABLE `mycms_publication` DISABLE KEYS */;
INSERT INTO `mycms_publication` VALUES (11,'mastersthesis','Collaborative tagging : folksonomy, metadata, visualization, e-learning, thesis','','Collaborative tagging is a simple and effective method for organizing and sharing web resources using human created metadata. It has arisen out of the need for an efficient method of personal organization, as the number of digital resources in everyday lives increases. While tagging has become a proven organization scheme through its popularity and widespread use on the Web, little is known about its implications and how it may effectively be applied in different situations. This is due to the fact that tagging has evolved through several iterations of use on social software websites, rather than through a scientific or an engineering design process. The research presented in this thesis, through investigations in the domain of e-learning, seeks to understand more about the scientific nature of collaborative tagging through a number of human subject studies. While broad in scope, touching on issues in human computer interaction, knowledge representation, Web system architecture, e-learning, metadata, and information visualization, this thesis focuses on how collaborative tagging can supplement the growing metadata requirements of e-learning. I conclude by looking at how the findings may be used in future research, through using information based in the emergent social networks of social software, to automatically adapt to the needs of individual users.',2007,'',0,'','','','Saskatoon, SK','','','','','','','','','University of Saskatchewan','','','','','http://ecommons.usask.ca/handle/10388/etd-12112007-221606'),(12,'conference','Seeing Things in the Clouds: The Effect of Visual Features on Tag Cloud Selections','Proceedings of the ACM Conference on Hypertext and Hypermedia (Hypertext \'08)','Tag clouds are a popular method for visualizing and linking socially-organized information on websites. Tag clouds represent variables of interest (such as popularity) in the visual appearance of the keywords themselves – using text properties such as font size, weight, or colour. Although tag clouds are becoming common, there is still little information about which visual features of tags draw the attention of viewers. As tag clouds attempt to represent a wider range of variables with a wider range of visual properties, it becomes difficult to predict what will appear visually important to a viewer. To investigate this issue, we carried out an exploratory study that asked users to select tags from clouds that manipulated nine visual properties. Our results show that font size and font weight have stronger effects than intensity, number of characters, or tag area; but when several visual properties are manipulated at once, there is no one property that stands out above the others. This study adds to the understanding of how visual properties of text capture the attention of users, indicates general guidelines for designers of tag clouds, and provides a study paradigm and starting points for future studies. In addition, our findings may be applied more generally to the visual presentation of textual hyperlinks as a way to provide more information to web navigators.',2008,'',0,'','','','Pittsburgh, US','193-202','10.1145/1379092.1379130','','','','','','','','','','','',''),(13,'article','Using Group Interaction History in the Wild','The Doctoral Colloquium of the Conference on Computer Supported Cooperative Work','Inspired by theories of how professionals enter into a reflective conversation with their work materials, the research area of interaction history seeks to make use of the accumulated actions of many people in working with digital objects. Despite compelling system designs and empirical results in laboratory settings, group interaction histories have not been widely employed. I outline a series of research questions, plans and tools that will be among the first to investigate and evaluate the use of shared interaction history in the day-to-day work of individuals and groups.',2009,'',0,'',NULL,'','Savannah, GA','523-524','','','','','','','','','','','','',''),(14,'conference','Personalized Retrieval in Social Bookmarking','Group 2009','Users of social bookmarking systems take advantage of pivot browsing, an interaction technique allowing them to easily refine lists of bookmarks through the selection of filter terms. However, social bookmarking systems use one-size-fits-all ranking metrics to order refined lists. These generic rankings ignore past user interactions that may be useful in determining the relevance of bookmarks. In this work we describe a personalized ordering algorithm that leverages the fact that refinding, rather than discovery (finding a bookmark for the first time), makes up the majority of bookmark accesses. The algorithm examines user-access histories and promotes bookmarks that a user has previously visited. We investigate the potential of our algorithm using interaction logs from an enterprise social bookmarking system, the results show that our personalized algorithm would lead to improved bookmark rankings.',2009,'',0,'','','','Sanibel Island, Florida','91-94','','','','','','','','','','','','','http://dx.doi.org.cyber.usask.ca/10.1145/1531674.1531688'),(15,'techreport','Investigation of Targeting-Assistance Techniques for Distant Pointing with Relative Ray Casting','Technical Report 3-2009','Pointing at displays from a distance is becoming a common scenario for controlling computers and entertainment systems. Several devices use direct-pointing methods, where the user points a hand-held device at targets on a screen, but these often suffer from accuracy problems. Many techniques have been explored for improving mouse-based pointing, but little is known about targeting assistance for distant pointing. We carried out experiments to test targeting assistance with a relative form of ray casting, common with devices such as the Nintendo Wiimote. We tested two motor-space techniques (sticky targets and target gravity), and three types of sensory-based acquisition feedback (visual, tactile, and aural). We found that the motor-space techniques were significantly more effective than control and that the sensory-based acquisition feedback. Overall, our studies provide initial results on the applicability of several previously uninvestigated targeting assists for distant pointing. Further, it shows the strong potential of motor space assists for improving target selection performance.',2009,'',0,'','','','','','','8 pages. Published December 14, 2009. Available at http://hci.usask.ca/publications/view.php?id=167','','','','','','Department of Computer Science, University of Saskatchewan','','','','',''),(16,'conference','Interactive Usability Instrumentation','Proceedings of the ACM SIGCHI Symposium on Engineering Interactive Computer Systems Systems (EICS 2009)','Usage data logged from user interactions can be extremely valuable for evaluating software usability. However, instrumenting software to collect usage data is a time-intensive task that often requires technical expertise as well as an understanding of the usability issues to be explored. We have developed a new technique for software instrumentation that removes the need for programming. Interactive Usability Instrumentation (IUI) allows usability evaluators to work directly with a system\'s interface to specify what components and what events should be logged. Evaluators are able to create higher-level abstractions on the events they log and are provided with real-time feedback on how events are logged. As a proof of the IUI concept, we have created the UMARA system, an instrumentation system that is enabled by recent advances in aspect-oriented programming. UMARA allows users to instrument software without the need for additional coding, and provides tools for specification, data collection, and data analysis. We report on the use of UMARA in the instrumentation of two large open-source projects; our experiences show that IUI can substantially simplify the process of log-based usability evaluation.',2009,'',0,'','','','Pittsburgh, PA','','10.1145/1570433.1570443','','','','','','','','','','','',''),(17,'conference','Useful Junk? The Effects of Visual Embellishment on Comprehension and Memorability of Charts','ACM Conference on Human Factors in Computing Systems (CHI 2010)','Guidelines for designing information charts often state that the presentation should reduce ‗chart junk\' - visual embellishments that are not essential to understanding the data. In contrast, some popular chart designers wrap the presented data in detailed and elaborate imagery, raising the questions of whether this imagery is really as detrimental to understanding as has been proposed, and whether the visual embellishment may have other benefits. To investigate these issues, we conducted an experiment that compared embellished charts with plain ones, and measured both interpretation accuracy and long-term recall. We found that people\'s accuracy in describing the embellished charts was no worse than for plain charts, and that their recall after a two-to-three-week gap was significantly better. Although we are cautious about recommending that all charts be produced in this style, our results question some of the premises of the minimalist approach to chart design.',2010,'',0,'','','','Atlanta, GA, USA','2573-2582','10.1145/1753326.1753716','Best paper award','','','','','','','','','','',''),(18,'conference','Target Assistance for Subtly Balancing Competitive Play','Proceedings of the 2011 annual conference on Human factors in computing systems (CHI \'11)','In games where skills such as targeting are critical to winning, it is difficult for players with different skill levels to have a competitive and engaging experience. Although several mechanisms for accommodating different skill levels have been proposed, traditional approaches can be too obvious and can change the nature of the game. For games involving aiming, we propose the use of target assistance techniques (such as area cursors, target gravity, and sticky targets) to accommodate skill imbalances. We compared three techniques in a study, and found that area cursors and target gravity significantly reduced score differential in a shooting-gallery game. Further, less skilled players reported having more fun when the techniques helped them be more competitive, and even after they learned assistance was given, felt that this form of balancing was good for group gameplay. Our results show that target assistance techniques can make target-based games more competitive for shared play.',2011,'',0,'','','','Vancouver, Canada','2355-2364','10.1145/1978942.1979287','Honorable Mention Award','','','','','','','','','','',''),(19,'conference','Effects of View, Input Device, and Track Width on Video Game Driving','Graphics Interface 2011','Steering and driving tasks - where the user controls a vehicle or other object along a path - are common in many simulations and games. Racing video games have provided users with different views of the visual environment - e.g., overhead, first-person, and third-person views. Although research has been done in understanding how people perform using a first-person view in virtual reality and driving simulators, little empirical work has been done to understand the factors that affect performance in video games. To establish a foundation for thinking about view in the design of driving games and simulations, we carried out three studies that explored the effects of different view types on driving performance. We also considered how view interacts with difficulty and input device. We found that although there were significant effects of view on performance, these were not in line with conventional wisdom about view. Our explorations provide designers with new empirical knowledge about view and performance, but also raise a number of new research questions about the principles underlying view differences.',2011,'',0,'','','','St. John\'s, Canada','207-214','','','','','','','','','','','','',''),(20,'inworkshopproceedings','Collective Information Seeking: Supporting Search with Low-Cost Activity Sharing and Collaboration','The Workshop on Human-Computer Interaction in Information Retrieval (HCIR 2011)','When searching for information, people often seek help from others. However, while people can benefit from communicating with others, they can usually satisfy their information needs, to some degree, without help. Because establishing explicit collaborations is often seen as onerous, there are many missed opportunities where shared experiences could save time and effort. In this work, we propose Collective Information Seeking, which integrates theory of group work with previous research in Social Navigation and Collaborative Information Seeking. We propose that by sharing and visualizing activities within groups of information seekers a low-cost form of collaboration is made possible. Shared activities provide both a form of implicit communication that can provide guidance, and provide cues and context facilitating entry into direct collaboration at a later time.',2011,'',0,'','','','Mountain View, CA','4 pages','','','','','','','','','','','','',''),(21,'conference','Calibration Games: Making Calibration Tasks Enjoyable by Adding Motivating Game Elements','UIST \'11: Proceedings of the 24th annual ACM symposium on User interface software and technology','Interactive systems often require calibration to ensure that input and output are optimally configured. Without calibration, user performance can degrade (e.g., if an input device is not adjusted for the user\'s abilities), errors can increase (e.g., if color spaces are not matched), and some interactions may not be possible (e.g., use of an eye tracker). The value of calibration is often lost, however, because many calibration processes are tedious and unenjoyable, and many users avoid them altogether. To address this problem, we propose calibration games that gather calibration data in an engaging and entertaining manner. To facilitate the creation of calibration games, we present design guidelines that map common types of calibration to core tasks, and then to well-known game mechanics. To evaluate the approach, we developed three calibration games and com- pared them to standard procedures. Users found the game versions significantly more enjoyable than regular calibration procedures, without compromising the quality of the data. Calibration games are a novel way to motivate users to carry out calibrations, thereby improving the performance and accuracy of many human-computer systems.',2011,'',0,'','','','Santa Barbara, California, USA','403-412','10.1145/2047196.2047248','','','','','','','','','','','',''),(22,'inworkshopproceedings','Why Expressiveness Matters in Command & Control Visualizations','ACM CSCW Workshop on Crisis Informatics','Crisis command centres often gather data from disparate locations and collect it for visualization on a large, shared screen. However, the resulting visualization often lacks expressiveness: it fails to express nuanced mediating characteristics about the information, such as specificity, urgency, awareness, or reliability. We suggest that our previous work on creating expressive realtime embodiments can inform the design of crisis management embodiments on large displays, improving communication and decision-making. We make several recommendations for future research directions.',2012,'',0,'','','','','','','Workshop organized by Volkmar Pipek, Jonas Landgren, and Leysia Palen.','','','','','','','','','','',''),(23,'conference','The Search Dashboard: How Reflection and Comparison Impact Search Behavior','The Proceedings of the Conference on Human Factors in Computing Systems (CHI \'12)','Most searchers do not know how to use Web search engines as effectively as possible. This is due, in part, to search engines not providing feedback about how search behavior can be improved. Because feedback is an essential part of learning, we created the Search Dashboard, which provides an interface for reflection on personal search behavior. The Dashboard aggregates and presents an individual\'s search history and provides comparisons with that of archetypal expert profiles. Via a five-week study of 90 Search Dashboard users, we find that users are able to change aspects of their behavior to be more in line with that of the presented expert searchers. We also find that reflection can be beneficial, even without comparison, by changing participants\' views about their own search skills, what is possible with search, and what aspects of their behavior may influence search success. Our findings demonstrate a new way for search engines to help users modify their search behavior for positive outcomes.',2012,'',0,'','','','Austin, Texas','1785-1794','10.1145/2207676.2208311','','','','','','','','','','','',''),(24,'phdthesis','Social Feedback: Social Learning from Interaction History to Support Information Seeking on the Web','','Information seeking on the Web has become a central part of many daily activities. Even though information seeking is extremely common, there are many times when these tasks are unsuccessful, because the information found is less than ideal or the task could have been completed more efficiently. In unsuccessful information-seeking tasks, there are often other people who have knowledge or experience that could help improve task success. However, information seekers do not typically look for help from others, because tasks can often be completed alone (even if inefficiently). One of the problems is that web tools provide people with few opportunities to learn from one another\'s experiences in ways that would allow them to improve their success. This dissertation presents the idea of social feedback. Social feedback is based on the theory of social learning, which describes how people learn from observing others. In social feedback, observational learning is enabled through the mechanism of interaction history - the traces of activity people create as they interact with the Web. Social feedback systems collect and display interaction history to allow information seekers to learn how to complete their tasks more successfully by observing how other people have behaved in similar situations. The dissertation outlines the design of two social-feedback systems, and describes two studies that demonstrate the real world applicability and feasibility of the idea. The first system supports global learning, by allowing people to learn new search skills and techniques that improve information seeking success in many different tasks. The second system supports local learning, in which people learn how to accomplish specific tasks more effectively and more efficiently. Two further studies are conducted to explore potential real-world challenges to the successful deployment of social feedback systems, such as the privacy concerns associated with the collection and sharing of interaction history. These studies show that social feedback systems can be deployed successfully for supporting real world information seeking tasks. Overall, this research shows that social feedback is a valuable new idea for the social use of information systems, an idea that allows people to learn from one another\'s experiences and improve their success in many common real-world tasks.',2012,'',0,'','','','Saskatoon, SK','','','','','','','','','University of Saskatchewan','','','','','http://hdl.handle.net/10388/ETD-2012-08-583'),(25,'conference','Social Navigation for Loosely-Coupled Information Seeking in Tightly-Knit Groups using WebWear','ACM Conference on Computer Supported Cooperative Work and Social Computing (CSCW 2013)','Many web-based information-seeking tasks are set in a social context where other people\'s knowledge and advice improves success in finding information. However, when tightly-knit contacts (friends, family, colleagues) are not available, information seeking becomes more difficult. Inspired by previous work in social navigation, we developed WebWear, a system that collects and displays traces of activity for tightly-knit groups. WebWear allows people to use contextual knowledge of contacts\' interests and activities to interpret the meaning of the traces, improving their usefulness. In a comparative study, we found that WebWear helped people complete information- seeking tasks more accurately, without requiring additional effort. A one-week field trial found that WebWear was both usable and useful, and that privacy concerns were reduced in the small-group context. WebWear shows that small- scale social navigation systems are feasible, and that they can improve the effectiveness of information seeking on the World-Wide Web.',2013,'',0,'','','','San Antonio, TX','955-966','10.1145/2441776.2441885','','','','','','','','','','','',''),(26,'article','Analysis and Comparison of Target Assistance Techniques for Relative Ray-Cast Pointing','International Journal of Human-Computer Studies (IJHCS)','Pointing at displays from a distance is becoming a common method of interacting with computer applications and entertainment systems, using devices such as the Wii Remote, the PlayStation Move controller, or the Microsoft Kinect. These systems often implement relative forms of ray-cast pointing, in which the user simply points a hand-held input device towards targets on the screen. Ray-casting interaction is easy for novices to learn and understand, but this technique often suffers from accuracy problems: for example, hand jitter, arm fatigue, calibration drift, or lack of skill can all reduce people\'s ability to acquire and select on-screen targets. In this paper, we analyse and evaluate the idea of target assistance as a way to address the accuracy problems of ray-cast pointing. Although several assistance schemes have been proposed for mouse-based pointing, these ideas have not been tested in distant-pointing settings, and there is little knowledge available to guide design in this increasingly common interaction scenario. To establish this basic design knowledge, we carried out four studies of relative ray-casting using three different target assistance techniques - two motor-space techniques (sticky targets and a novel form of target gravity), and one acquisition-feedback technique that combined visual, tactile, and auditory feedback. Our first three studies tested each assistance technique separately, to explore how different parameters for each method affected performance and perceptibility. Our fourth study carried out a direct comparison of the best versions of each technique, and also examined the effects of distractor objects placed in the path to the target. Our studies found that the two motor-space techniques were extremely effective in improving selection accuracy without being highly obvious to users, and that the new gravity-based technique (which attracts the cursor even when it is not over the target) performed best of all. There was no observed effect on performance when the combined acquisition-feedback technique was used. Our studies are the first to comprehensively explore the optimization, performance, and perceptibility of target assistance techniques for relative ray-casting - our results provide designers with clear guidelines about what methods to use, how to configure the techniques, and what effects can be expected from their use.',2013,'',0,'71','','','','511-532','10.1016/j.ijhcs.2012.12.006','','','','','','','','','','','',''),(27,'conference','The Effectiveness (or Lack Thereof) of Aim-Assist Techniques in First-Person Shooter Games','CHI\'14: Proceedings of the 2014 CHI international conference on Human factors in computing systems','Aim-assistance techniques have been shown to work for player balancing in 2D environments, but little information exists about how well these techniques will work in a 3D FPS game. We carried out three studies of the performance of five different aim assists in an Unreal-based game world. The assists worked well in a target-range scenario (study 1), but their performance was reduced when game elements were introduced in a walkthrough map (study 2). We systematically examined the relationships between realistic game elements and assist performance (study 3). These studies show that two techniques - bullet magnetism and area cursor - worked well in a wide variety of situations. Other techniques that worked well were too perceptible, and some previously-successful techniques did not work well in any game-like scenario. Our studies are the first to provide empirical evidence of the performance of aim assist techniques in 3D environments, and the first to identify the complexities in using these techniques in real FPS games.',2014,'',0,'','','','Toronto, Canada','937-946','','','','','','','','','','','','',''),(28,'conference','Using the Ecological Approach to Create Simulations of Learning Environments','','Simulated pedagogical agents have a long history in AIED research. We are interested in simulation from another, less well explored perspective: simulating the entire learning environment (including learn- ers) to inform the system design process. An AIED system designer can carry out experiments in the simulation environment that would other- wise be too costly (or time consuming) with real learners using a real system. We suggest that an architecture called the “ecological approach (EA)”[1] can form the basis for creating such simulations. To demon- strate, we describe how to develop a proof-of-concept simulated ITS pro- totype, modelled in the EA architecture. We also show how to factor in data from two human subject studies (done for other purposes) to gain a degree of cognitive fidelity. An experiment is carried out with the pro- totype. The approach is general and can apply to learning systems with a wide variety of “pedagogical styles” (not just ITSs) at various stages of their life cycle. We conclude that simulation is a critically needed methodology in AIED.',2013,'',0,'','','','','','10.1007/978-3-642-39112-5_42','In the Proceedings of International Conference on Artificial Intelligence in Education','','','','','','','','','','',''),(29,'conference','Leveraging Folksonomies for Ontology Evolution in E-learning Environments','','One of the main obstacles for wider adoption of semantic rich e-learning systems is the difficulty in creating and maintaining domain ontologies describing courses. Annotations, such as those resulting from collaborative tagging, provide a new source of information which can be used to ease the process of author-ing and updating domain ontologies. This paper presents an extension to the LOCO-Analyst tool, which leverages student folksonomies to support instructors when revising and updating course domain ontologies. The support is based on a computation of relatedness between ontology concepts and students tags which takes into account the \"context\" defined by the domain ontology. The computed scores are visualized in a tag cloud along with tag popularity scores, to allow instructors to easily comprehend the emergent feedback of their students. This approach allows for a simple and intuitive method for instructors to associate tags with concepts in their domain ontology.',2008,'august',0,'','','','Santa Clara, CA','206 - 213','10.1109/ICSC.2008.15','In the Proceedings of Second IEEE International Conference on Semantic Computing (ICSC 2008)','','978-0-7695-3279-0','','','','','','','','IEEE',''),(30,'conference','E-Learning Meets the Social Semantic Web','','The social semantic Web has recently emerged as a paradigm in which ontologies (aimed at defining, structuring and sharing information) and collaborative software (used for creating and sharing knowledge) have been merged together. Ontologies provide an effective means of capturing and integrating knowledge for feedback provisioning, while using collaborative activities can support pedagogical theories, such as social constructivism. Both technologies have developed separately in the e-learning domain; representing respectively a teacher-centered and a learner-centered approach for learning environments. In this paper we bridge the gap between these two approaches by leveraging the social semantic Web paradigm, and propose a collaborative semantic-rich learning environment in which folksonomies created from studentspsila collaborative tags contribute to ontology maintenance, and teacher-directed feedback.',2008,'',0,'','','','Santander, Cantabria','389 - 393','10.1109/ICALT.2008.20','In the Proceedings of The 8th IEEE International Conference on Advanced Learning Technologies (ICALT 2008)','','978-0-7695-3167-0','','','','','','','','IEEE',''),(31,'conference','Leveraging the Social Semantic Web in Intelligent Tutoring Systems','','Today’s technology enhanced learning practices cater to students and teachers who use many different learning tools and environments and are used to a paradigm of interaction derived from open, ubiquitous, and socially-oriented services. In this context, a crucial issue for education systems in general, and for ITSs in particular, is related to the ability of leveraging these new paradigms for creating, maintaining and sharing the knowledge that these systems embed. This will enable learning environments to benefit from shared information from disparate systems, which is related to learning content and student activities, so that the overall complexity of system development and maintenance would be reduced while at the same time improving the capability of personalization, context-awareness, collaboration, and feedback provisioning. In this paper, we investigate how the Social Semantic Web can be leveraged for enabling and easing this process. This paper analyzes each ITS module, showing how it can benefit from the Social Semantic Web paradigm.',2008,'',0,'','','','','','10.1007/978-3-540-69132-7_59','In the proceedings of the Conference on Intelligent Tutoring Systems (ITS 2008)','','','','','','','','','','',''),(32,'conference','OATS: The Open Annotation and Tagging System','','OATS: The Open Annotation and Tagging System',2006,'',0,'','','','','','','In the Proceedings of the International Scientific Conference of the Learning Object Repository Research Network (LORNET 2006)','','','','','','','','','','',''),(33,'conference','Issues and Directions with Educational Metadata','','The creation of learning resource metadata by instructors \r\nis a time consuming and error prone process. This paper \r\noutlines a broad research agenda to mitigate these issues.. \r\nThe first part of this approach is to collect prescriptive \r\nmetadata from various actors involved using a light \r\nweight collaborative tagging approach. This is then \r\naugmented with content analysis done directly on learning \r\nobjects to create concept and summarization metadata. \r\nFinally, interaction metadata observed from the \r\nenvironment in which the learning objects are deployed is \r\ninterrogate for specific pedagogical purposes, resulting in \r\ncustomized metadata profile for a specific context and \r\ngoal.',2006,'',0,'','','','','','','','','','','','','','','','','',''),(34,'conference','Applying the Agent Metaphor to Learning Content Management Systems and Learning Object Repositories','','This paper presents a systems approach to facilitate effective learning \r\nobject acquisition through the use of communications, modeling, and the agent \r\nmetaphor. By changing the emphasis that is usually placed on metadata creation \r\nand interpretation (which can be problematic) we instead focus on the \r\npragmatics of end use data facilitated through agent negotiation.',2006,'',0,'','','','','','10.1007/11774303_107','In the Proceedings of the 8th International Conference on Intelligent Tutoring Systems (ITS2006)','','','','','','','','','','',''),(35,'article','Lessons Learned using Social and Semantic Web Technologies for E-Learning','Semantic Web Technologies for e-Learning','This paper describes work we have done over the past five years in developing e-learning applications and tools using Semantic Web and Web 2.0 technologies.  It does not provide a comprehensive description of these tools; instead, we focus on the pitfalls we have encountered and attempt to share experiences in the form of design patterns for developers and researchers looking to use these technologies.',2009,'',0,'4','','','','260-278','10.3233/978-1-60750-062-9-260','','','','','14','','','','','','',''),(36,'article','The Social Semantic Web in Intelligent Learning Environments - State of the Art and Future Challenges','Interactive Learning Environments','Today\'s technology-enhanced learning practices cater to students and teachers who use many different learning tools \r\nand environments and are used to a paradigm of interaction derived from open, ubiquitous, and socially-oriented services. In this \r\ncontext, a crucial issue for education systems in general, and for Intelligent Learning Environments (ILEs) in particular, is related \r\nto the ability of leveraging these new paradigms for creating, maintaining and sharing the knowledge that these systems embed. \r\nThis will enable ILEs to benefit from shared information from disparate systems, which is related to learning content and student \r\nactivities, so that the overall complexity of system development and maintenance would be reduced while at the same time \r\nimproving the capability of personalization, context-awareness, and interaction. In this paper, we investigate how the Social \r\nSemantic Web can be leveraged for enabling and easing this process. We first analyze each module of a typical ILE, showing \r\nhow it can benefit from the Social Semantic Web paradigm and then proceed to investigate how this new paradigm can be \r\nleveraged for increasing interactivity level of ILEs.',2009,'december',0,'17(4)','','','','273-309','10.1080/10494820903195140','','','','','','','','','','','',''),(37,'inworkshopproceedings','Learning Object Metadata: From the locally prescribed to the socially derived','','N/A',2008,'',0,'','','','','','','In the Workshop for Semantic-Web Resource Repository Design, Search, and Management in Conjunction with Ninth International Conference on Intelligent Tutoring Systems (ITS 2008)','','','','','','','','','','',''),(38,'inworkshopproceedings','Combined Usage of Ontologies and Folksonomies in E-learning Environments','','N/A',2008,'',0,'','','','','','','In the Proceedings of the Semantic Web User Interaction Workshop at CHI 2008','','','','','','','','','','',''),(39,'inworkshopproceedings','Applying Collaborative Tagging to E-Learning','','This paper outlines our experiences with applying collaborative tagging in e-learning systems to supplement more traditional metadata gathering approaches. Over the last 10 years, the learning object paradigm has emerged in e-learning and has caused standards bodies to focus on creating metadata repositories based upon strict domain-free taxonomies. We argue that the social collection phenomena and flexible metadata standards are key in collecting the kinds of metadata required for adaptable online learning. This paper takes a broad look at tagging within e- learning. It first looks at the implications for tagging within the domain through an analysis of tags students provided when classifying learning objects. Next, it looks at two case studies based on novel interfaces for applying tagging. These two systems emphasize tags being applied within learning content through the use of a highlighting metaphor.',2007,'',0,'','','','','','','In the Proceedings of the Workshop on Tagging and Metadata for Social Information Organization, held in conjuction with the 16th International World Wide Web Conference','','','','','','','','','','',''),(40,'inworkshopproceedings','Collaborative Tagging Approaches for Ontological Metadata in Adaptive E-Learning Systems','','One of the main approaches for creating metadata for learn- ing resources in adaptive e-learning systems has been through the use of semantic web ontologies. This approach is limiting because it doesn’t usu- ally address a requirement for the support of annotators or the require- ment for significant effort by annotators in learning ontological metadata domains and technologies. This paper proposes a method of addressing these shortfalls, by incorporating techniques used on the hugely popular collaborative tagging websites, such as del.icio.us1. By extending on a natural language ontology, we aim to achieve simplicity in metadata au- thoring while maintaining the expressiveness of a lightweight ontology. The goal of the approach is to facilitate metadata creation such that new metadata creators (such as students) may become involved with creating machine consumable metadata about learning objects, for use in adaptive e-learning systems.',2006,'',0,'','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `mycms_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mycms_publication_doc`
--

DROP TABLE IF EXISTS `mycms_publication_doc`;
/*!50001 DROP VIEW IF EXISTS `mycms_publication_doc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mycms_publication_doc` AS SELECT 
 1 AS `doc_id`,
 1 AS `publication_id`,
 1 AS `doc_order`,
 1 AS `publication_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mycms_publication_image`
--

DROP TABLE IF EXISTS `mycms_publication_image`;
/*!50001 DROP VIEW IF EXISTS `mycms_publication_image`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mycms_publication_image` AS SELECT 
 1 AS `image_id`,
 1 AS `publication_id`,
 1 AS `image_order`,
 1 AS `publication_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mycms_publication_people`
--

DROP TABLE IF EXISTS `mycms_publication_people`;
/*!50001 DROP VIEW IF EXISTS `mycms_publication_people`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mycms_publication_people` AS SELECT 
 1 AS `people_id`,
 1 AS `publication_id`,
 1 AS `people_order`,
 1 AS `publication_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mycms_publication_research`
--

DROP TABLE IF EXISTS `mycms_publication_research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_publication_research` (
  `publication_id` int(11) unsigned NOT NULL,
  `research_id` int(11) unsigned NOT NULL,
  `publication_order` int(11) DEFAULT NULL,
  `research_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`publication_id`,`research_id`),
  KEY `research_id` (`research_id`),
  CONSTRAINT `mycms_publication_research_ibfk_1` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mycms_publication_research_ibfk_2` FOREIGN KEY (`research_id`) REFERENCES `mycms_research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_publication_research`
--

LOCK TABLES `mycms_publication_research` WRITE;
/*!40000 ALTER TABLE `mycms_publication_research` DISABLE KEYS */;
INSERT INTO `mycms_publication_research` VALUES (15,1,NULL,NULL),(18,1,NULL,NULL);
/*!40000 ALTER TABLE `mycms_publication_research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mycms_publication_video`
--

DROP TABLE IF EXISTS `mycms_publication_video`;
/*!50001 DROP VIEW IF EXISTS `mycms_publication_video`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mycms_publication_video` AS SELECT 
 1 AS `video_id`,
 1 AS `publication_id`,
 1 AS `video_order`,
 1 AS `publication_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mycms_research`
--

DROP TABLE IF EXISTS `mycms_research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_research` (
  `research_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `research_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `research_summary` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `research_description` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `research_status` enum('active','future','onhold','past','unknown') COLLATE utf8_unicode_ci NOT NULL,
  `research_priority` int(10) DEFAULT NULL,
  PRIMARY KEY (`research_id`),
  UNIQUE KEY `research_id` (`research_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_research`
--

LOCK TABLES `mycms_research` WRITE;
/*!40000 ALTER TABLE `mycms_research` DISABLE KEYS */;
INSERT INTO `mycms_research` VALUES (1,'Targeting Assistance for Distant Pointing at Interactive Surfaces','Pointing at displays from a distance is becoming a common scenario for controlling computers, entertainment systems, and video games.','Pointing at displays from a distance is becoming a common scenario for controlling computers, entertainment systems, and video games. Several devices use direct-pointing methods, where the user points a hand-held device at targets on a screen, but these often suffer from accuracy problems. Many techniques have been explored for improving mouse-based pointing, and some research has recognized the potential of targeting assists in for remote pointing; however, this new type of interaction is still not well understood. Our research in this area seeks to provide basic understanding of targeting assists in these scenarios and how they might be applied in real-world applications.','active',NULL);
/*!40000 ALTER TABLE `mycms_research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mycms_research_image`
--

DROP TABLE IF EXISTS `mycms_research_image`;
/*!50001 DROP VIEW IF EXISTS `mycms_research_image`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mycms_research_image` AS SELECT 
 1 AS `image_id`,
 1 AS `research_id`,
 1 AS `image_order`,
 1 AS `research_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mycms_research_people`
--

DROP TABLE IF EXISTS `mycms_research_people`;
/*!50001 DROP VIEW IF EXISTS `mycms_research_people`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mycms_research_people` AS SELECT 
 1 AS `people_id`,
 1 AS `research_id`,
 1 AS `people_order`,
 1 AS `research_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mycms_research_publication`
--

DROP TABLE IF EXISTS `mycms_research_publication`;
/*!50001 DROP VIEW IF EXISTS `mycms_research_publication`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mycms_research_publication` AS SELECT 
 1 AS `publication_id`,
 1 AS `research_id`,
 1 AS `publication_order`,
 1 AS `research_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mycms_research_video`
--

DROP TABLE IF EXISTS `mycms_research_video`;
/*!50001 DROP VIEW IF EXISTS `mycms_research_video`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mycms_research_video` AS SELECT 
 1 AS `video_id`,
 1 AS `research_id`,
 1 AS `video_order`,
 1 AS `research_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mycms_settings`
--

DROP TABLE IF EXISTS `mycms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_settings` (
  `var` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `val` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_settings`
--

LOCK TABLES `mycms_settings` WRITE;
/*!40000 ALTER TABLE `mycms_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mycms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_video`
--

DROP TABLE IF EXISTS `mycms_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_video` (
  `video_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `video_filename` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`video_id`),
  UNIQUE KEY `video_id` (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_video`
--

LOCK TABLES `mycms_video` WRITE;
/*!40000 ALTER TABLE `mycms_video` DISABLE KEYS */;
INSERT INTO `mycms_video` VALUES (3,'3.mp4'),(4,'4.mp4'),(5,'5.mp4'),(6,'6.mp4'),(7,'7.mov');
/*!40000 ALTER TABLE `mycms_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_video_publication`
--

DROP TABLE IF EXISTS `mycms_video_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_video_publication` (
  `video_id` int(11) unsigned NOT NULL,
  `publication_id` int(11) unsigned NOT NULL,
  `video_order` int(11) DEFAULT NULL,
  `publication_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`video_id`,`publication_id`),
  KEY `publication_id` (`publication_id`),
  CONSTRAINT `mycms_video_publication_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `mycms_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mycms_video_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `mycms_publication` (`publication_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_video_publication`
--

LOCK TABLES `mycms_video_publication` WRITE;
/*!40000 ALTER TABLE `mycms_video_publication` DISABLE KEYS */;
INSERT INTO `mycms_video_publication` VALUES (3,16,NULL,NULL),(4,18,NULL,NULL),(5,21,NULL,NULL),(6,23,NULL,NULL),(7,25,NULL,NULL);
/*!40000 ALTER TABLE `mycms_video_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mycms_video_research`
--

DROP TABLE IF EXISTS `mycms_video_research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mycms_video_research` (
  `video_id` int(11) unsigned NOT NULL,
  `research_id` int(11) unsigned NOT NULL,
  `video_order` int(11) DEFAULT NULL,
  `research_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`video_id`,`research_id`),
  KEY `research_id` (`research_id`),
  CONSTRAINT `mycms_video_research_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `mycms_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mycms_video_research_ibfk_2` FOREIGN KEY (`research_id`) REFERENCES `mycms_research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mycms_video_research`
--

LOCK TABLES `mycms_video_research` WRITE;
/*!40000 ALTER TABLE `mycms_video_research` DISABLE KEYS */;
/*!40000 ALTER TABLE `mycms_video_research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `mycms_people_image`
--

/*!50001 DROP VIEW IF EXISTS `mycms_people_image`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mycms_hci`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mycms_people_image` AS (select `mycms_image_people`.`image_id` AS `image_id`,`mycms_image_people`.`people_id` AS `people_id`,`mycms_image_people`.`image_order` AS `image_order`,`mycms_image_people`.`people_order` AS `people_order` from `mycms_image_people`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mycms_publication_doc`
--

/*!50001 DROP VIEW IF EXISTS `mycms_publication_doc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mycms_hci`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mycms_publication_doc` AS (select `mycms_doc_publication`.`doc_id` AS `doc_id`,`mycms_doc_publication`.`publication_id` AS `publication_id`,`mycms_doc_publication`.`doc_order` AS `doc_order`,`mycms_doc_publication`.`publication_order` AS `publication_order` from `mycms_doc_publication`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mycms_publication_image`
--

/*!50001 DROP VIEW IF EXISTS `mycms_publication_image`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mycms_hci`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mycms_publication_image` AS (select `mycms_image_publication`.`image_id` AS `image_id`,`mycms_image_publication`.`publication_id` AS `publication_id`,`mycms_image_publication`.`image_order` AS `image_order`,`mycms_image_publication`.`publication_order` AS `publication_order` from `mycms_image_publication`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mycms_publication_people`
--

/*!50001 DROP VIEW IF EXISTS `mycms_publication_people`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mycms_hci`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mycms_publication_people` AS (select `mycms_people_publication`.`people_id` AS `people_id`,`mycms_people_publication`.`publication_id` AS `publication_id`,`mycms_people_publication`.`people_order` AS `people_order`,`mycms_people_publication`.`publication_order` AS `publication_order` from `mycms_people_publication`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mycms_publication_video`
--

/*!50001 DROP VIEW IF EXISTS `mycms_publication_video`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mycms_hci`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mycms_publication_video` AS (select `mycms_video_publication`.`video_id` AS `video_id`,`mycms_video_publication`.`publication_id` AS `publication_id`,`mycms_video_publication`.`video_order` AS `video_order`,`mycms_video_publication`.`publication_order` AS `publication_order` from `mycms_video_publication`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mycms_research_image`
--

/*!50001 DROP VIEW IF EXISTS `mycms_research_image`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mycms_hci`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mycms_research_image` AS (select `mycms_image_research`.`image_id` AS `image_id`,`mycms_image_research`.`research_id` AS `research_id`,`mycms_image_research`.`image_order` AS `image_order`,`mycms_image_research`.`research_order` AS `research_order` from `mycms_image_research`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mycms_research_people`
--

/*!50001 DROP VIEW IF EXISTS `mycms_research_people`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mycms_hci`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mycms_research_people` AS (select `mycms_people_research`.`people_id` AS `people_id`,`mycms_people_research`.`research_id` AS `research_id`,`mycms_people_research`.`people_order` AS `people_order`,`mycms_people_research`.`research_order` AS `research_order` from `mycms_people_research`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mycms_research_publication`
--

/*!50001 DROP VIEW IF EXISTS `mycms_research_publication`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mycms_hci`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mycms_research_publication` AS (select `mycms_publication_research`.`publication_id` AS `publication_id`,`mycms_publication_research`.`research_id` AS `research_id`,`mycms_publication_research`.`publication_order` AS `publication_order`,`mycms_publication_research`.`research_order` AS `research_order` from `mycms_publication_research`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mycms_research_video`
--

/*!50001 DROP VIEW IF EXISTS `mycms_research_video`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mycms_hci`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mycms_research_video` AS (select `mycms_video_research`.`video_id` AS `video_id`,`mycms_video_research`.`research_id` AS `research_id`,`mycms_video_research`.`video_order` AS `video_order`,`mycms_video_research`.`research_order` AS `research_order` from `mycms_video_research`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-11 12:32:29
