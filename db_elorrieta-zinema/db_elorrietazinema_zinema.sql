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
-- Table structure for table `zinema`
--

DROP TABLE IF EXISTS `zinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zinema` (
  `zinema_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `izena` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefonoa` varchar(9) DEFAULT NULL,
  `herria` varchar(20) DEFAULT NULL,
  `Kalea` varchar(20) DEFAULT NULL,
  `zenbakia` smallint(6) DEFAULT NULL,
  `youtube` varchar(30) DEFAULT NULL,
  `twitter` varchar(30) DEFAULT NULL,
  `instagram` varchar(30) DEFAULT NULL,
  `facebook` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`zinema_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zinema`
--

LOCK TABLES `zinema` WRITE;
/*!40000 ALTER TABLE `zinema` DISABLE KEYS */;
INSERT INTO `zinema` VALUES (1,'Elorrieta-errekamari zinema','zinema@gmail.com','123456789','Bilbao','Lehendakari Agirre',4,'ElorrietaYt','ElorrietaTw','ElorrietaInsta','ElorrietaFace'),(2,'Basauri zinema','zinema@gmail.com','123456789','Basauri','Pozokoetxe',6,'BasaurizinemaYt','BasaurizinemaTw','BasaurizinemaInsta','BasaurizinemaFace'),(3,'Ideal zinema','zinema@gmail.com','123456789','Bilbao','Juan Ajuriaguerra',7,'IdealYt','IdealTw','IdealInsta','IdealFace'),(4,'Portugalete zinema','zinema@gmail.com','123456789','Portugalete','Buenavista',2,'PortuzinemaYt','PortuzinemaTw','PortuzinemaInsta','PortuzinemaFace'),(5,'Gazteiz zinema','zinema@gmail.com','123456789','Gazteiz','La Musica Ibilbidea',10,'GazteizZinemaYt','GazteizZinemaTw','GazteizZinemaInsta','GazteizZinemaFace');
/*!40000 ALTER TABLE `zinema` ENABLE KEYS */;
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
