-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: probabilidade_estatistica
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `abril`
--

DROP TABLE IF EXISTS `abril`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abril` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abril`
--

LOCK TABLES `abril` WRITE;
/*!40000 ALTER TABLE `abril` DISABLE KEYS */;
INSERT INTO `abril` VALUES (1,94,54,40,64,30,2,2,85);
/*!40000 ALTER TABLE `abril` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agosto`
--

DROP TABLE IF EXISTS `agosto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agosto` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agosto`
--

LOCK TABLES `agosto` WRITE;
/*!40000 ALTER TABLE `agosto` DISABLE KEYS */;
INSERT INTO `agosto` VALUES (1,110,59,51,82,28,0,0,104);
/*!40000 ALTER TABLE `agosto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dezembro`
--

DROP TABLE IF EXISTS `dezembro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dezembro` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dezembro`
--

LOCK TABLES `dezembro` WRITE;
/*!40000 ALTER TABLE `dezembro` DISABLE KEYS */;
INSERT INTO `dezembro` VALUES (1,104,52,52,75,29,4,0,92);
/*!40000 ALTER TABLE `dezembro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fevereiro`
--

DROP TABLE IF EXISTS `fevereiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fevereiro` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fevereiro`
--

LOCK TABLES `fevereiro` WRITE;
/*!40000 ALTER TABLE `fevereiro` DISABLE KEYS */;
INSERT INTO `fevereiro` VALUES (1,110,53,57,68,42,1,6,99);
/*!40000 ALTER TABLE `fevereiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `janeiro`
--

DROP TABLE IF EXISTS `janeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `janeiro` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `janeiro`
--

LOCK TABLES `janeiro` WRITE;
/*!40000 ALTER TABLE `janeiro` DISABLE KEYS */;
INSERT INTO `janeiro` VALUES (1,98,42,56,63,35,0,0,92);
/*!40000 ALTER TABLE `janeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `julho`
--

DROP TABLE IF EXISTS `julho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `julho` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `julho`
--

LOCK TABLES `julho` WRITE;
/*!40000 ALTER TABLE `julho` DISABLE KEYS */;
INSERT INTO `julho` VALUES (1,92,44,48,65,27,4,0,84);
/*!40000 ALTER TABLE `julho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `junho`
--

DROP TABLE IF EXISTS `junho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `junho` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `junho`
--

LOCK TABLES `junho` WRITE;
/*!40000 ALTER TABLE `junho` DISABLE KEYS */;
INSERT INTO `junho` VALUES (1,110,61,49,78,32,6,1,102);
/*!40000 ALTER TABLE `junho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maio`
--

DROP TABLE IF EXISTS `maio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maio` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maio`
--

LOCK TABLES `maio` WRITE;
/*!40000 ALTER TABLE `maio` DISABLE KEYS */;
INSERT INTO `maio` VALUES (1,94,48,46,51,43,0,0,88);
/*!40000 ALTER TABLE `maio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marco`
--

DROP TABLE IF EXISTS `marco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marco` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marco`
--

LOCK TABLES `marco` WRITE;
/*!40000 ALTER TABLE `marco` DISABLE KEYS */;
INSERT INTO `marco` VALUES (1,111,57,54,80,31,2,2,100);
/*!40000 ALTER TABLE `marco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novembro`
--

DROP TABLE IF EXISTS `novembro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novembro` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novembro`
--

LOCK TABLES `novembro` WRITE;
/*!40000 ALTER TABLE `novembro` DISABLE KEYS */;
INSERT INTO `novembro` VALUES (1,95,58,37,69,26,2,1,84);
/*!40000 ALTER TABLE `novembro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outubro`
--

DROP TABLE IF EXISTS `outubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outubro` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outubro`
--

LOCK TABLES `outubro` WRITE;
/*!40000 ALTER TABLE `outubro` DISABLE KEYS */;
INSERT INTO `outubro` VALUES (1,95,58,37,69,26,2,1,84);
/*!40000 ALTER TABLE `outubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setembro`
--

DROP TABLE IF EXISTS `setembro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setembro` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nascidosVivos` tinyint DEFAULT NULL,
  `masculinos` tinyint DEFAULT NULL,
  `femininos` tinyint DEFAULT NULL,
  `cesario` tinyint DEFAULT NULL,
  `vaginal` tinyint DEFAULT NULL,
  `gemeos` tinyint DEFAULT NULL,
  `rn_baixopeso` tinyint DEFAULT NULL,
  `rn_pesoadequado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setembro`
--

LOCK TABLES `setembro` WRITE;
/*!40000 ALTER TABLE `setembro` DISABLE KEYS */;
INSERT INTO `setembro` VALUES (1,91,39,52,57,34,2,2,85);
/*!40000 ALTER TABLE `setembro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 11:28:23
