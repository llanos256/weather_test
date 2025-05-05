CREATE DATABASE  IF NOT EXISTS `weatherdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `weatherdb`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: weatherdb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(200) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `error` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
INSERT INTO `request_logs` VALUES (1,'br','2025-05-02 14:55:04','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(2,'barranquilla','2025-05-02 14:55:57','success','http://api.weatherapi.com/',NULL),(3,'Paris','2025-05-02 14:57:49','success','http://api.weatherapi.com/',NULL),(4,'Paris','2025-05-02 14:57:52','success','http://api.weatherapi.com/',NULL),(5,'davos','2025-05-02 14:58:29','success','http://api.weatherapi.com/',NULL),(6,'Davos Platz','2025-05-02 16:02:52','success','http://api.weatherapi.com/',NULL),(7,'dv','2025-05-02 16:03:29','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(8,'Davos Platz','2025-05-02 16:13:43','success','http://api.weatherapi.com/',NULL),(9,'Zurich','2025-05-02 16:14:26','success','http://api.weatherapi.com/',NULL),(10,'cassablnaca','2025-05-02 16:14:51','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(11,'cassablanca','2025-05-02 16:14:57','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(12,'Casablanca','2025-05-02 16:15:31','success','http://api.weatherapi.com/',NULL),(13,'El Cairo','2025-05-02 16:19:50','success','http://api.weatherapi.com/',NULL),(14,'Berlin','2025-05-02 16:20:10','success','http://api.weatherapi.com/',NULL),(15,'Seul','2025-05-02 16:20:19','success','http://api.weatherapi.com/',NULL),(16,'Busan','2025-05-02 16:20:26','success','http://api.weatherapi.com/',NULL),(17,'Jejuri','2025-05-02 16:20:35','success','http://api.weatherapi.com/',NULL),(18,'Daejeon','2025-05-02 16:20:56','success','http://api.weatherapi.com/',NULL),(19,'Bogota','2025-05-02 16:21:08','success','http://api.weatherapi.com/',NULL),(20,'La Paz','2025-05-02 16:21:17','success','http://api.weatherapi.com/',NULL),(21,'El Alto','2025-05-02 16:21:30','success','http://api.weatherapi.com/',NULL),(22,'Medellin','2025-05-02 16:25:29','success','http://api.weatherapi.com/',NULL),(23,'medellin','2025-05-02 16:29:07','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1002,\"message\":\"API key is invalid or not provided.\"}}'),(24,'Medellin','2025-05-02 16:32:03','success','http://api.weatherapi.com/',NULL),(25,'Medellin','2025-05-02 16:37:24','success','http://api.weatherapi.com/',NULL),(26,'Santa Marta','2025-05-02 16:37:32','success','http://api.weatherapi.com/',NULL),(27,'Leticia','2025-05-02 16:37:41','success','http://api.weatherapi.com/',NULL),(28,'Barranquilla','2025-05-02 16:37:58','success','http://api.weatherapi.com/',NULL),(29,'Barranquilla','2025-05-02 16:39:33','success','http://api.weatherapi.com/',NULL),(30,'Barranquilla','2025-05-02 17:03:30','success','http://api.weatherapi.com/',NULL),(31,'Barranquilla','2025-05-02 18:10:07','success','http://api.weatherapi.com/',NULL),(32,'Geneve','2025-05-02 18:10:13','success','http://api.weatherapi.com/',NULL),(33,'Munich','2025-05-02 18:10:43','success','http://api.weatherapi.com/',NULL),(34,'Malvinas Argentinas','2025-05-02 18:11:00','success','http://api.weatherapi.com/',NULL),(35,'San Andres Cholula','2025-05-02 18:11:41','success','http://api.weatherapi.com/',NULL),(36,'Providencia','2025-05-02 18:11:52','success','http://api.weatherapi.com/',NULL),(37,'Cancun','2025-05-02 18:12:00','success','http://api.weatherapi.com/',NULL),(38,'Barranquilla','2025-05-02 18:12:08','success','http://api.weatherapi.com/',NULL),(39,'Pasto','2025-05-02 18:12:30','success','http://api.weatherapi.com/',NULL),(40,'Manizales','2025-05-02 18:12:41','success','http://api.weatherapi.com/',NULL),(41,'Popayan','2025-05-02 18:12:53','success','http://api.weatherapi.com/',NULL),(42,'Puerto Cabello','2025-05-02 18:17:40','success','http://api.weatherapi.com/',NULL),(43,'Habana Libre','2025-05-02 18:17:50','success','http://api.weatherapi.com/',NULL),(44,'La Habana Tres','2025-05-02 18:17:58','success','http://api.weatherapi.com/',NULL),(45,'Santiago De Cuba','2025-05-02 18:18:11','success','http://api.weatherapi.com/',NULL),(46,'Georgetown','2025-05-02 18:18:31','success','http://api.weatherapi.com/',NULL),(47,'Napoli','2025-05-02 18:18:46','success','http://api.weatherapi.com/',NULL),(48,'Milan','2025-05-02 18:18:55','success','http://api.weatherapi.com/',NULL),(49,'Bucarest','2025-05-02 18:19:05','success','http://api.weatherapi.com/',NULL),(50,'Warsaw','2025-05-02 18:19:33','success','http://api.weatherapi.com/',NULL),(51,'Varsovia','2025-05-02 18:19:44','success','http://api.weatherapi.com/',NULL),(52,'Warsaw','2025-05-02 18:19:58','success','http://api.weatherapi.com/',NULL),(53,'Warsaw','2025-05-03 17:55:04','success','http://api.weatherapi.com/',NULL),(54,'w','2025-05-03 17:55:11','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(55,'w','2025-05-03 17:55:19','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(56,'w','2025-05-03 17:55:20','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(57,'w','2025-05-03 17:55:20','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(58,'w','2025-05-03 17:55:21','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(59,'w','2025-05-03 17:55:22','fail','http://api.weatherapi.com/','{\"error\":{\"code\":1006,\"message\":\"No matching location found.\"}}'),(60,'Palermo','2025-05-03 17:56:22','success','http://api.weatherapi.com/',NULL),(61,'Sapporo','2025-05-03 17:57:49','success','http://api.weatherapi.com/',NULL),(62,'Barranquilla','2025-05-05 10:50:34','success','http://api.weatherapi.com/',NULL),(63,'Davos Platz','2025-05-05 10:50:59','success','http://api.weatherapi.com/',NULL),(64,'Casablanca','2025-05-05 10:51:38','success','http://api.weatherapi.com/',NULL);
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-05 11:35:50
