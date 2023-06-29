CREATE DATABASE  IF NOT EXISTS `maps_of_minds` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `maps_of_minds`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: maps_of_minds
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `crossDisciplinary` varchar(50) DEFAULT NULL,
  `fieldType` varchar(10) DEFAULT NULL,
  `parentField` varchar(20) DEFAULT NULL,
  `relatedField` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `Ftype` (`fieldType`),
  KEY `parentFieldID` (`parentField`),
  KEY `field_ibfk_3` (`relatedField`),
  CONSTRAINT `field_ibfk_1` FOREIGN KEY (`fieldType`) REFERENCES `type_of_field` (`id`),
  CONSTRAINT `field_ibfk_2` FOREIGN KEY (`parentField`) REFERENCES `field` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field`
--

LOCK TABLES `field` WRITE;
/*!40000 ALTER TABLE `field` DISABLE KEYS */;
INSERT INTO `field` VALUES ('ai','Artificial Intelligence',NULL,'app',NULL,NULL),('algo','Algorithms',NULL,'theo',NULL,NULL),('anim','Animation',NULL,'sub','grap',NULL),('arch','Architecutre',NULL,'cor',NULL,'soft -- hard'),('cgi','Computer-generated Imagery',NULL,'app','grap',NULL),('clo_comp','Cloud Computing',NULL,'app',NULL,'data -- soft -- netw --int'),('codi_theo','Coding Theory',NULL,'theo',NULL,NULL),('com_geome','Computational Geometry',NULL,'theo',NULL,'grap'),('com_vis','Computer Vision',NULL,'app','grap',NULL),('computa_theo','Theory of Computation',NULL,'theo',NULL,NULL),('comta_sci','Computational Science',NULL,'app',NULL,NULL),('crypt','Cryptography',NULL,'app',NULL,NULL),('cyb','Cyber Security',NULL,'app',NULL,NULL),('dat_min','Data Mining','Statistics',NULL,'Data','ml'),('data','Data',NULL,'cor',NULL,NULL),('data_info_vix','Data & Information visualization',NULL,'app','grap',NULL),('data_str','Data Structure',NULL,'theo',NULL,NULL),('dig_foren','Digital Forensics','Forensics Science','app',NULL,NULL),('digi_art','Digital Art','Art','app','grap',NULL),('eng','Engineering in general',NULL,'app',NULL,NULL),('form_meth','Formal Method',NULL,'theo',NULL,NULL),('geom','Geometry',NULL,'sub','grap',NULL),('grap','Graphics',NULL,'cor',NULL,NULL),('hard','Hardware',NULL,'cor',NULL,NULL),('hci','Human-computer Interaction','Behavioral Science','app',NULL,'eng'),('img','Imaging',NULL,'sub','grap',NULL),('img_sou_proc','Image & Sound processing',NULL,'app',NULL,'grap'),('info_theo','Information Theory',NULL,'theo',NULL,NULL),('int','Internet',NULL,'cor',NULL,NULL),('int_secu','Internet security',NULL,NULL,'secu','int'),('kr&r','Knowledge representation & reasoning',NULL,NULL,'ai',NULL),('lang','Language',NULL,'cor',NULL,NULL),('ml','Machine Learning',NULL,'app','ai',NULL),('mobile_secu','Mobile security',NULL,NULL,'secu',NULL),('nat_lang_proc','Natural Language Processing',NULL,'app',NULL,NULL),('netw','Network',NULL,'cor',NULL,NULL),('netw_secu','Network security',NULL,NULL,'secu','netw'),('os','Operating System',NULL,NULL,'soft','hard'),('pro_lang_theo','Programming Language theory',NULL,'theo',NULL,NULL),('quan_comp','Quantum computing',NULL,'app',NULL,NULL),('rende','Rendering',NULL,'sub','grap',NULL),('robo','Robotics',NULL,'app',NULL,NULL),('secu','Security',NULL,'cor',NULL,NULL),('socia_com','Social Computing','Social Psycho','app',NULL,NULL),('soft','Software',NULL,'cor',NULL,NULL),('soft_eng','Software Engineering',NULL,'app','soft','eng'),('web_dev','Web Developing',NULL,'app','int',NULL);
/*!40000 ALTER TABLE `field` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-29 20:47:15
