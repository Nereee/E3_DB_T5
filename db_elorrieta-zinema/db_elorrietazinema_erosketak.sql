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
-- Table structure for table `erosketak`
--

DROP TABLE IF EXISTS `erosketak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erosketak` (
  `erosketak_id` smallint(5) unsigned NOT NULL,
  `dirutotala` decimal(10,2) DEFAULT NULL,
  `jatorria` enum('online','fisikoa') DEFAULT NULL,
  `Bezero_id` smallint(5) unsigned DEFAULT NULL,
  `Deskontua` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`erosketak_id`),
  KEY `Bezero_id` (`Bezero_id`),
  CONSTRAINT `erosketak_ibfk_1` FOREIGN KEY (`Bezero_id`) REFERENCES `bezeroa` (`Bezero_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erosketak`
--

LOCK TABLES `erosketak` WRITE;
/*!40000 ALTER TABLE `erosketak` DISABLE KEYS */;
INSERT INTO `erosketak` VALUES (1,38.00,'online',1,30.00),(2,57.00,'fisikoa',2,30.00),(3,76.00,'fisikoa',3,30.00),(4,28.50,'online',4,30.00),(5,9.50,'online',5,NULL),(6,19.00,'fisikoa',6,20.00),(7,47.60,'online',7,30.00),(8,19.00,'fisikoa',8,20.00),(9,9.50,'online',9,NULL),(10,66.50,'fisikoa',10,30.00);
/*!40000 ALTER TABLE `erosketak` ENABLE KEYS */;
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
