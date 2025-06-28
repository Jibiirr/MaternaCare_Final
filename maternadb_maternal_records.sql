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
-- Table structure for table `maternal_records`
--

DROP TABLE IF EXISTS `maternal_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maternal_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(50) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `husband_name` varchar(255) DEFAULT NULL,
  `remarks` text,
  `form_timestamp` datetime DEFAULT NULL,
  `address` text,
  `purok` varchar(100) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `blood_pressure` varchar(50) DEFAULT NULL,
  `chief_complaint` text,
  `pulse_rate` varchar(20) DEFAULT NULL,
  `respiratory_rate` varchar(20) DEFAULT NULL,
  `last_menstrual_period` date DEFAULT NULL,
  `expected_delivery_date` date DEFAULT NULL,
  `para` varchar(50) DEFAULT NULL,
  `abortion` varchar(50) DEFAULT NULL,
  `living_children` varchar(50) DEFAULT NULL,
  `age_of_gestation` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `fetal_heart_tone` int DEFAULT NULL,
  `presentation` varchar(100) DEFAULT NULL,
  `fundal_height` double DEFAULT NULL,
  `next_appointment` date DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `preterm` varchar(50) DEFAULT NULL,
  `high_risk` tinyint(1) DEFAULT '0',
  `barangay_residency_number` varchar(100) DEFAULT NULL,
  `manual_gravida` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_patient_id` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maternal_records`
--

LOCK TABLES `maternal_records` WRITE;
/*!40000 ALTER TABLE `maternal_records` DISABLE KEYS */;
INSERT INTO `maternal_records` VALUES (10,'P002','Diongco, Angelo L.','2004-06-24','Asawa ni Sohayra','balik ka iho ha','2025-06-28 09:21:57','Brgy. Tagapo, Santa Rosa, Laguna','Purok 4','0965415452','angelodiongo@gmail.com','120/80','N/A','15','15','2025-06-27','2026-04-03','1','0','1',1,56,156,15,'Oblique',15,'2025-07-03','1','1',1,'T-2023-00298','1','2025-06-28 09:21:57','2025-06-28 10:20:24');
/*!40000 ALTER TABLE `maternal_records` ENABLE KEYS */;
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
