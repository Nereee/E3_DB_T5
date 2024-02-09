-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_elorrietazinema
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `sarrera`
--

DROP TABLE IF EXISTS `sarrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sarrera` (
  `sarrera_id` int(10) unsigned NOT NULL,
  `erosketak_id` smallint(5) unsigned NOT NULL,
  `saioa_id` smallint(5) unsigned DEFAULT NULL,
  `kant_sr` smallint(6) NOT NULL,
  PRIMARY KEY (`sarrera_id`,`erosketak_id`),
  KEY `erosketak_id` (`erosketak_id`),
  KEY `saioa_id` (`saioa_id`),
  CONSTRAINT `sarrera_ibfk_1` FOREIGN KEY (`erosketak_id`) REFERENCES `erosketak` (`erosketak_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sarrera_ibfk_2` FOREIGN KEY (`saioa_id`) REFERENCES `saioa` (`saioa_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sarrera`
--

LOCK TABLES `sarrera` WRITE;
/*!40000 ALTER TABLE `sarrera` DISABLE KEYS */;
INSERT INTO `sarrera` VALUES (1,1,1,3),(2,2,7,8),(3,3,13,9),(4,4,19,1),(5,5,25,4),(6,6,26,2),(7,7,32,3),(8,8,50,4),(9,9,63,5),(10,10,100,2);
/*!40000 ALTER TABLE `sarrera` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-09 10:14:20
