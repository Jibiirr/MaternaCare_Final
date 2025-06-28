-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: maternadb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `pregnancy_history`
--

DROP TABLE IF EXISTS `pregnancy_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregnancy_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `maternal_record_id` int NOT NULL,
  `pregnancy_number` int NOT NULL,
  `delivery_type` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `place_of_delivery` varchar(255) DEFAULT NULL,
  `year_delivered` int DEFAULT NULL,
  `attended_by` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `tt_injection` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_pregnancy` (`maternal_record_id`,`pregnancy_number`),
  CONSTRAINT `pregnancy_history_ibfk_1` FOREIGN KEY (`maternal_record_id`) REFERENCES `maternal_records` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregnancy_history`
--

LOCK TABLES `pregnancy_history` WRITE;
/*!40000 ALTER TABLE `pregnancy_history` DISABLE KEYS */;
INSERT INTO `pregnancy_history` VALUES (41,10,1,'Normal','Female','Brgy. Tagapo, Santa Rosa, Laguna',2005,'Michelle Dee','Alive','2025-06-16','2','2025-06-28 10:20:24');
/*!40000 ALTER TABLE `pregnancy_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-28 19:44:12
