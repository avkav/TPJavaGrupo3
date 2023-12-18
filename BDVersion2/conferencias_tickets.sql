-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: conferencias
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `cantidad` varchar(30) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `fechacreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reserva` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (13,'Ryan','Reynolds','r@hotmail.com','3','Junior','2023-12-17 04:03:12',1),(14,'Lili','Allen','lallen@yahoo.com.ar','5','Trainee','2023-12-17 12:36:23',1),(15,'John','Lennon','john4ever@hotmail.com','1','Sin Categoria','2023-12-17 13:57:01',1),(16,'John','Lennon','john4ever@hotmail.com','1','Sin Categoria','2023-12-17 13:59:54',1),(17,'John','Lennon','john4ever@hotmail.com','1','Sin Categoria','2023-12-17 14:00:17',1),(18,'Liam','Neeson','Neeson@hotmail.com','4','Trainee','2023-12-17 14:00:17',1),(19,'Liam','Neeson','Neeson@hotmail.com','4','Trainee','2023-12-17 15:34:41',1),(20,'Liam','Neeson','Neeson@hotmail.com','4','Trainee','2023-12-17 15:36:47',1),(21,'Robert','Redford','rd@hotmail.com','3','Trainee','2023-12-17 15:38:45',1),(22,'Tina','Turner','t@yahoo.com','1','Junior','2023-12-17 15:41:15',1),(23,'Lorelei','Gil','lg@gmail.com','3','Junior','2023-12-17 16:30:33',1),(24,'Lila','Casen','lilacasen@gmail.com','3','Trainee','2023-12-18 00:03:15',1),(25,'Jenna','Rink','jrink@gmail.com','6','Trainee','2023-12-18 00:17:58',1),(26,'Raimond','Reddington','Raimond@gmail.com','3','Estudiante','2023-12-18 00:24:12',1),(27,'Raimond','Reddington','Raimond@gmail.com','3','Estudiante','2023-12-18 00:42:29',1),(28,'Raimond','Reddington','Raimond@gmail.com','6','Estudiante','2023-12-18 00:49:44',1),(29,'Lisa','Minelli','lisa@gmail.com','1','Trainee','2023-12-18 00:50:58',1),(30,'Lisa','Minelli','lisa@gmail.com','1','Trainee','2023-12-18 00:54:02',1),(31,'Alan','Parson','project@hotmail.com','3','Estudiante','2023-12-18 00:54:32',1),(32,'Santiago','Alonso','salonso@set.com','4','Estudiante','2023-12-18 01:00:08',1),(33,'Luis','Santos','ls@yahoo.com','3','Junior','2023-12-18 01:28:53',1),(34,'Luis','Santos','ls@yahoo.com','3','Junior','2023-12-18 01:29:48',1),(35,'Robert','Plant','robplant@yahoo.com.ar','4','Junior','2023-12-18 01:39:42',0),(36,'Juan Carlos','Rodriguez','jcr@gmail.com','2','Junior','2023-12-18 01:51:26',0);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18  3:15:36
