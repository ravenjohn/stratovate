-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: youphoric
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.13.04.1

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_requests`
--

DROP TABLE IF EXISTS `feature_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `establishment_id` int(11) NOT NULL,
  `feature` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_requests`
--

LOCK TABLES `feature_requests` WRITE;
/*!40000 ALTER TABLE `feature_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `access_token` varchar(40) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `authorized` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-20 22:47:45',NULL),(2,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-20 22:47:45',NULL),(3,'clients/1','get',NULL,'0','','127.0.0.1',0,'2013-09-20 23:48:15',NULL),(4,'clients/1','get',NULL,'0','','127.0.0.1',0,'2013-09-20 23:48:15',NULL),(5,'users/login','post','{\"username\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:48:44',NULL),(6,'users/login','post','{\"username\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:49:02',NULL),(7,'users/login','post','{\"username\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:49:40',NULL),(8,'users/login','post','{\"username\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:49:57',NULL),(9,'users/login','post','{\"username\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:49:58',NULL),(10,'users/login','post','{\"username\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:50:27',NULL),(11,'users/login','post','{\"name\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:50:53',NULL),(12,'users/login','post','{\"name\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:51:07',NULL),(13,'users/login','post','{\"name\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:51:19',NULL),(14,'users/login','post','{\"name\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:51:39',NULL),(15,'users/login','post','{\"name\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-20 23:51:45',NULL),(16,'clients/1','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-20 23:51:55',NULL),(17,'clients/1','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-20 23:52:17',NULL),(18,'clients/1','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-20 23:52:17',NULL),(19,'users/create_establishment','post','{\"name\":\"ravenjohn\",\"password\":\"ravenjohn\",\"contact_number\":\"09351282145\"}','0','','127.0.0.1',0,'2013-09-20 23:54:48',NULL),(20,'users/create_establishment','post','{\"name\":\"ravenjohn\",\"password\":\"ravenjohn\",\"contact_number\":\"09351282145\"}','0','','127.0.0.1',0,'2013-09-20 23:54:59',NULL),(21,'users/create_establishment','post','{\"name\":\"ravenjohn\",\"password\":\"ravenjohn\",\"contact_number\":\"09351282145\"}','0','','127.0.0.1',0,'2013-09-20 23:55:18',NULL),(22,'users/create_establishment','post','{\"name\":\"adins laundry shop\",\"password\":\"ravenjohn\",\"contact_number\":\"09351232145\"}','0','','127.0.0.1',0,'2013-09-20 23:55:31',NULL),(23,'users/create_establishment','post','{\"name\":\"ninz\' carwashing\",\"password\":\"ravenjohn\",\"contact_number\":\"09351232345\"}','0','','127.0.0.1',0,'2013-09-20 23:56:01',NULL),(24,'services/create','post','{\"establishment_id\":\"1\",\"service_name\":\"laundry\"}','0','','127.0.0.1',0,'2013-09-21 00:08:10',NULL),(25,'services/create','post','{\"establishment_id\":\"1\",\"service_name\":\"laundry\",\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-21 00:08:29',NULL),(26,'services/create','post','{\"establishment_id\":\"1\",\"service_name\":\"laundry\",\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-21 00:09:18',NULL),(27,'features','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:16:24',NULL),(28,'features','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:16:24',NULL),(29,'features','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-21 00:16:39',NULL),(30,'features','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-21 00:16:46',NULL),(31,'features','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-21 00:17:12',NULL),(32,'features','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-21 00:17:40',NULL),(33,'features','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-21 00:17:40',NULL),(34,'features','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-21 00:20:31',NULL),(35,'features','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','e59fa6b8121c312e3dff01ef257a116e','10','127.0.0.1',1,'2013-09-21 00:20:31',NULL),(36,'users/establishments','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','0','','127.0.0.1',0,'2013-09-21 00:20:48',NULL),(37,'users/establishments','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','0','','127.0.0.1',0,'2013-09-21 00:20:49',NULL),(38,'users/users','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','0','','127.0.0.1',0,'2013-09-21 00:23:33',NULL),(39,'users/users','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','0','','127.0.0.1',0,'2013-09-21 00:23:33',NULL),(40,'users/list','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','0','','127.0.0.1',0,'2013-09-21 00:23:41',NULL),(41,'users/list','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','0','','127.0.0.1',0,'2013-09-21 00:23:47',NULL),(42,'users/list','get','{\"access_token\":\"e59fa6b8121c312e3dff01ef257a116e\"}','0','','127.0.0.1',0,'2013-09-21 00:23:47',NULL),(43,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:55:40',NULL),(44,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:56:06',NULL),(45,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:56:07',NULL),(46,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:56:55',NULL),(47,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:57:05',NULL),(48,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:57:05',NULL),(49,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:57:06',NULL),(50,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:57:07',NULL),(51,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 00:57:53',NULL),(52,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:00:52',NULL),(53,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:01:21',NULL),(54,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:01:46',NULL),(55,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:01:56',NULL),(56,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:04:37',NULL),(57,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:05:04',NULL),(58,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:24:03',NULL),(59,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:24:42',NULL),(60,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:25:50',NULL),(61,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:25:57',NULL),(62,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:26:10',NULL),(63,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:26:12',NULL),(64,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:26:33',NULL),(65,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:26:44',NULL),(66,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:26:45',NULL),(67,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:26:52',NULL),(68,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:27:22',NULL),(69,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:37:09',NULL),(70,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:37:19',NULL),(71,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:44:56',NULL),(72,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:49:05',NULL),(73,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:51:34',NULL),(74,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:51:52',NULL),(75,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:52:49',NULL),(76,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:53:01',NULL),(77,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 01:53:09',NULL),(78,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 02:00:18',NULL),(79,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 02:03:26',NULL),(80,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 02:03:35',NULL),(81,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 02:03:45',NULL),(82,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 02:06:21',NULL),(83,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 02:07:22',NULL),(84,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 02:07:27',NULL),(85,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 02:08:21',NULL),(86,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 02:08:33',NULL),(87,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:00:22',NULL),(88,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:05:41',NULL),(89,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:06:53',NULL),(90,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:07:09',NULL),(91,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:08:02',NULL),(92,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:08:56',NULL),(93,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:09:08',NULL),(94,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:09:57',NULL),(95,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:10:18',NULL),(96,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:11:31',NULL),(97,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:12:04',NULL),(98,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:12:39',NULL),(99,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:22:34',NULL),(100,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:22:51',NULL),(101,'admin','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:48:14',NULL),(102,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:49:13',NULL),(103,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:49:13',NULL),(104,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 03:49:16',NULL),(105,'','get','{\"uname\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-21 03:49:22',NULL),(106,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:54:38',NULL),(107,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:46',NULL),(108,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:47',NULL),(109,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:47',NULL),(110,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:47',NULL),(111,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:48',NULL),(112,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:48',NULL),(113,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:48',NULL),(114,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:48',NULL),(115,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:48',NULL),(116,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:48',NULL),(117,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:49',NULL),(118,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:49',NULL),(119,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:49',NULL),(120,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:49',NULL),(121,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:50',NULL),(122,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:50',NULL),(123,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:50',NULL),(124,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:50',NULL),(125,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:51',NULL),(126,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:51',NULL),(127,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:51',NULL),(128,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:51',NULL),(129,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:51',NULL),(130,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:52',NULL),(131,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:52',NULL),(132,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:52',NULL),(133,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:52',NULL),(134,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:52',NULL),(135,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:53',NULL),(136,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:53',NULL),(137,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:53',NULL),(138,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:53',NULL),(139,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:53',NULL),(140,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:53',NULL),(141,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:54',NULL),(142,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:54',NULL),(143,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:54',NULL),(144,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:54',NULL),(145,'rest','get',NULL,'0','','127.0.0.1',0,'2013-09-21 10:56:54',NULL),(146,'admin','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:45:20',NULL),(147,'admin','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:45:20',NULL),(148,'admin','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:45:21',NULL),(149,'admin','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:45:34',NULL),(150,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:46:45',NULL),(151,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:46:51',NULL),(152,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:47:04',NULL),(153,'users/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:47:06',NULL),(154,'users/login','post','{\"name\":\"ravenjohn\",\"password\":\"ravenjohn\"}','0','','127.0.0.1',0,'2013-09-21 11:47:40',NULL),(155,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:49:50',NULL),(156,'users/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:49:52',NULL),(157,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:50:04',NULL),(158,'users/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:50:05',NULL),(159,'services/create','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:54:40',NULL),(160,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:59:02',NULL),(161,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:59:05',NULL),(162,'services/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:59:17',NULL),(163,'services/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 11:59:21',NULL),(164,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:01:38',NULL),(165,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:01:39',NULL),(166,'users/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:01:55',NULL),(167,'services/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:02:00',NULL),(168,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:03:03',NULL),(169,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:03:04',NULL),(170,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:03:04',NULL),(171,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:03:04',NULL),(172,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:03:04',NULL),(173,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:03:04',NULL),(174,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:03:05',NULL),(175,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:03:13',NULL),(176,'services/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:03:15',NULL),(177,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:04:05',NULL),(178,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:04:05',NULL),(179,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:04:05',NULL),(180,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:04:08',NULL),(181,'services/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:04:10',NULL),(182,'services/create','post','{\"establishment_id\":\"10\",\"service_name\":\"ravens spa\",\"description\":\"masahe ni raven\",\"code\":\"SPA\"}','0','','127.0.0.1',0,'2013-09-21 12:13:00',NULL),(183,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:13:22',NULL),(184,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:13:23',NULL),(185,'services/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:13:40',NULL),(186,'services/create','post','{\"access_token\":\"ddc7107a801b84a2572c3d6fdd98175a\",\"establishment_id\":\"10\",\"service_name\":\"ravens massage\",\"description\":\"masahe ni raven\",\"code\":\"SPA\"}','ddc7107a801b84a2572c3d6fdd98175a','10','127.0.0.1',1,'2013-09-21 12:13:51',NULL),(187,'','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:14:41',NULL),(188,'services/establishments','get',NULL,'0','','127.0.0.1',0,'2013-09-21 12:14:43',NULL),(189,'services/create','post','{\"access_token\":\"ddc7107a801b84a2572c3d6fdd98175a\",\"establishment_id\":\"10\",\"service_name\":\"raven massage\",\"description\":\"masahe ni raven\",\"code\":\"SPA\"}','ddc7107a801b84a2572c3d6fdd98175a','10','127.0.0.1',1,'2013-09-21 12:14:55',NULL);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `establishment_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `data` text,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `establishment_id` int(11) NOT NULL,
  `service_name` varchar(256) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  `code` varchar(256) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,1,'laundry','2013-09-21 00:09:18',NULL,'',NULL),(2,10,'raven massage','2013-09-21 12:14:55',NULL,'SPA','masahe ni raven');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(40) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `type` enum('admin','establishment','client') NOT NULL DEFAULT 'client',
  `contact_number` varchar(128) NOT NULL,
  `data` text,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'raven',NULL,'client','9351282147',NULL,'2013-09-21 05:51:36',NULL),(2,NULL,'john',NULL,'client','9351282148',NULL,'2013-09-21 05:51:36',NULL),(3,NULL,'martin',NULL,'client','9351282149',NULL,'2013-09-21 05:51:36',NULL),(4,NULL,'nez',NULL,'client','9351282146',NULL,'2013-09-21 05:51:36',NULL),(5,NULL,'lag',NULL,'client','9351282145',NULL,'2013-09-21 05:51:36',NULL),(6,NULL,'rim',NULL,'client','9351282144',NULL,'2013-09-21 05:51:36',NULL),(7,NULL,'mas',NULL,'client','9351282143',NULL,'2013-09-21 05:51:36',NULL),(8,NULL,'lagrimas',NULL,'client','9351282142',NULL,'2013-09-21 05:51:36',NULL),(9,NULL,'martinez',NULL,'client','9351282141',NULL,'2013-09-21 05:51:36',NULL),(10,'ddc7107a801b84a2572c3d6fdd98175a','ravenjohn','2b6004858e1941ff384fc418116d87c8','admin','',NULL,'2013-09-21 05:51:36','2013-09-21 11:47:40'),(11,NULL,'ravens',NULL,'establishment','',NULL,'2013-09-21 05:51:37',NULL),(12,NULL,'ravenjohn','ravenjohn','establishment','09351282145',NULL,'2013-09-20 23:55:18',NULL),(13,NULL,'adins laundry shop','ravenjohn','establishment','09351232145',NULL,'2013-09-20 23:55:31',NULL),(14,NULL,'ninz\' carwashing','ravenjohn','establishment','09351232345',NULL,'2013-09-20 23:56:01',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-21 20:15:27
