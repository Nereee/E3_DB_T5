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
-- Table structure for table `bezeroa`
--

DROP TABLE IF EXISTS `bezeroa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bezeroa` (
  `Bezero_id` smallint(5) unsigned NOT NULL,
  `NAN` varchar(9) NOT NULL,
  `izena` varchar(30) NOT NULL,
  `abizena` varchar(30) NOT NULL,
  `Generoa` varchar(10) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `telefonoa` varchar(11) DEFAULT NULL,
  `pasahitza` varchar(12) NOT NULL,
  `jaio_data` date DEFAULT NULL CHECK (`jaio_data` < '2010-01-01'),
  PRIMARY KEY (`Bezero_id`),
  UNIQUE KEY `NAN` (`NAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bezeroa`
--

LOCK TABLES `bezeroa` WRITE;
/*!40000 ALTER TABLE `bezeroa` DISABLE KEYS */;
INSERT INTO `bezeroa` VALUES (1,'12345678A','Juan','Pérez','Gizona','juan@gmail.com','123456789','pasahitza1','1990-05-15'),(2,'87654321B','Ana','López','Emakumea','ana@gmail.com','987654321','pasahitza2','1988-08-25'),(3,'23456789C','Pedro','García','Gizona','pedro@gmail.com','654321987','pasahitza3','1995-03-10'),(4,'98765432D','María','Martínez','Emakumea','maria@gmail.com','321987654','pasahitza4','1992-12-20'),(5,'34567890E','Javier','Fernández','Gizona','javier@gmail.com','987123456','pasahitza5','1987-06-30'),(6,'09876543F','Laura','Gómez','Emakumea','laura@gmail.com','456789012','pasahitza6','1993-09-05'),(7,'45678901G','Carlos','Rodríguez','Gizona','carlos@gmail.com','654987321','pasahitza7','1991-02-17'),(8,'76543210H','Sara','López','Emakumea','sara@gmail.com','789456123','pasahitza8','1994-11-12'),(9,'56789012I','Miguel','Hernández','Gizona','miguel@gmail.com','234567890','pasahitza9','1989-07-22'),(10,'67890123J','Elena','Díaz','Emakumea','elena@gmail.com','890123456','pasahitza10','1996-04-03');
/*!40000 ALTER TABLE `bezeroa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-09 10:14:19
