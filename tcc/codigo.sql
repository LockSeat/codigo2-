CREATE DATABASE  IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinema`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
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
-- Table structure for table `cadeiras_ocupadas`
--

DROP TABLE IF EXISTS `cadeiras_ocupadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadeiras_ocupadas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filme` varchar(255) DEFAULT NULL,
  `cadeira` varchar(10) DEFAULT NULL,
  `nome_cliente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filme` (`filme`,`cadeira`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadeiras_ocupadas`
--

LOCK TABLES `cadeiras_ocupadas` WRITE;
/*!40000 ALTER TABLE `cadeiras_ocupadas` DISABLE KEYS */;
INSERT INTO `cadeiras_ocupadas` VALUES (3,'Batman','A1','Anna'),(4,'Batman','A2','Anna'),(5,'Batman','A3','Clara'),(6,'Batman','A4','Clara'),(7,'Batman','A5','as'),(8,'Batman','A6','as'),(9,'O Rei Leão','A1','asd'),(10,'O Rei Leão','A2','asd'),(11,'Superman','A1','asd'),(12,'Batman','A8','kel'),(13,'Batman','A9','kel'),(14,'Vingadores','A1','kel'),(15,'Vingadores','A5','kel'),(16,'Vingadores','A4','kel'),(17,'Frozen','A1','kk'),(18,'Frozen','A2','kk'),(19,'Frozen','A3','kk'),(20,'Vingadores','A6','kk'),(21,'Vingadores','A9','kk'),(22,'Vingadores','A3','kelllll'),(23,'Vingadores','A8','kelllll');
/*!40000 ALTER TABLE `cadeiras_ocupadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigos_barra`
--

DROP TABLE IF EXISTS `codigos_barra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigos_barra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filme` varchar(255) DEFAULT NULL,
  `cadeira` varchar(10) DEFAULT NULL,
  `codigo_barra` varchar(20) DEFAULT NULL,
  `nome_cliente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filme_cadeira` (`filme`,`cadeira`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigos_barra`
--

LOCK TABLES `codigos_barra` WRITE;
/*!40000 ALTER TABLE `codigos_barra` DISABLE KEYS */;
INSERT INTO `codigos_barra` VALUES (1,'Vingadores','A3','009012560023','kelllll'),(2,'Vingadores','A8','005000390028','kelllll');
/*!40000 ALTER TABLE `codigos_barra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(255) DEFAULT NULL,
  `filme_selecionado` varchar(255) DEFAULT NULL,
  `cadeiras_selecionadas` varchar(255) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (4,'Anna','Batman','A1,A2',2),(5,'Clara','Batman','A3,A4',2),(6,'as','Batman','A5,A6',2),(7,'asd','O Rei Leão','A1,A2',2),(8,'asd','Superman','A1',1),(9,'kel','Batman','A8,A9',2),(10,'kel','Vingadores','A1,A5,A4',3),(11,'kk','Frozen','A1,A2,A3',3),(12,'kk','Vingadores','A6,A9',2),(13,'kelllll','Vingadores','A3,A8',2);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09 19:08:08
