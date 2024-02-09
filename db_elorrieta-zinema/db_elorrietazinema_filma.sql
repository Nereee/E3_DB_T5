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
-- Table structure for table `filma`
--

DROP TABLE IF EXISTS `filma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filma` (
  `filma_id` smallint(5) unsigned NOT NULL,
  `generoa` varchar(30) DEFAULT NULL,
  `prezioa` decimal(10,2) DEFAULT NULL,
  `izena` varchar(25) DEFAULT NULL,
  `Iraupena` int(11) DEFAULT NULL,
  `Egilea` varchar(20) DEFAULT NULL,
  `Estrenaldi_urtea` int(11) DEFAULT NULL,
  PRIMARY KEY (`filma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filma`
--

LOCK TABLES `filma` WRITE;
/*!40000 ALTER TABLE `filma` DISABLE KEYS */;
INSERT INTO `filma` VALUES (1,'Drama',9.50,'Handia',116,'Jon Garaño',2017),(2,'Drama',9.50,'La Lista de Schidler',195,'Steven Spielberg',1994),(3,'Drama',9.50,'Cadena Perpetua',142,'Frank Darabont',1995),(4,'Drama',9.50,'Million Dollar Baby',132,'Clint Eastwood',2005),(5,'Beldurra',9.50,'Psicosis',109,'Alfred hitchcock',1961),(6,'Beldurra',9.50,'El Resplandor',116,'Stanley Kubrick',1980),(7,'Beldurra',9.50,'Dracula',155,'Francis Ford Coppola',1993),(8,'Beldurra',9.50,'Cisne Negro',110,'Darren Aronofsky',2011),(9,'Sci-Fi',9.50,'Odisea 2001',142,'Arthur C. Clarke',1968),(10,'Sci-Fi',9.50,'Alien',117,'Dan o´bannon',1979),(11,'Sci-Fi',9.50,'El Planeta de los Simios',115,'Pierre Boulle',1968),(12,'Sci-Fi',9.50,'Novia de Frankie',75,'Mary Shelley',1935),(13,'Komedia',9.50,'Scary Movie',88,'keenen Ivory Wayans',2000),(14,'Komedia',9.50,'El Gran Lebowsky',117,'Ethan Jesse',1998),(15,'Komedia',9.50,'La vida de Brian',94,'Terry Jones',1980),(16,'komedia',9.50,'Aterriza como puedas',88,'Jim Abrahams',1980);
/*!40000 ALTER TABLE `filma` ENABLE KEYS */;
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
