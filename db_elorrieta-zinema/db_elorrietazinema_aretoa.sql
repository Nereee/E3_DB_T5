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
-- Table structure for table `aretoa`
--

DROP TABLE IF EXISTS `aretoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aretoa` (
  `aretoa_id` smallint(5) unsigned NOT NULL,
  `zinema_id` smallint(5) unsigned NOT NULL,
  `izena` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`zinema_id`,`aretoa_id`),
  CONSTRAINT `aretoa_ibfk_1` FOREIGN KEY (`zinema_id`) REFERENCES `zinema` (`zinema_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aretoa`
--

LOCK TABLES `aretoa` WRITE;
/*!40000 ALTER TABLE `aretoa` DISABLE KEYS */;
INSERT INTO `aretoa` VALUES (1,1,'Areto1'),(2,1,'Areto2'),(3,1,'Areto3'),(4,1,'Areto4'),(5,1,'Areto5'),(6,2,'Areto1'),(7,2,'Areto2'),(8,2,'Areto3'),(9,2,'Areto4'),(10,2,'Areto5'),(11,3,'Areto1'),(12,3,'Areto2'),(13,3,'Areto3'),(14,3,'Areto4'),(15,3,'Areto5'),(16,4,'Areto1'),(17,4,'Areto2'),(18,4,'Areto3'),(19,4,'Areto4'),(20,4,'Areto5'),(21,5,'Areto1'),(22,5,'Areto2'),(23,5,'Areto3'),(24,5,'Areto4'),(25,5,'Areto5');
/*!40000 ALTER TABLE `aretoa` ENABLE KEYS */;
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
