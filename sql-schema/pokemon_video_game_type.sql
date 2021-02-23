-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: pokemon_video_game
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `type` (
  `NAME` varchar(20) NOT NULL,
  `SUPER_EFFECTIVE` varchar(75) DEFAULT NULL,
  `NOT_VERY_EFFECTIVE` varchar(75) DEFAULT NULL,
  `NO_EFFECT` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES ('???',NULL,NULL,NULL),('Bug','Dark,Grass,Psychic','Fairy,Fighting,Fire,Flying,Ghost,Poison,Steel',NULL),('Dark','Ghost,Psychic','Dark,Fairy,Fighting',NULL),('Dragon','Dragon','Steel','Fairy'),('Electric','Flying,Water','Dragon,Electric,Grass','Ground'),('Fairy','Dark,Dragon,Fighting','Fire,Poison,Steel',NULL),('Fighting','Dark,Ice,Normal,Rock,Steel','Bug,Fairy,Flying,Poison,Psychic','Ghost'),('Fire','Bug,Grass,Ice,Steel','Dragon,Fire,Rock,Water',NULL),('Flying','Bug,Fighting,Grass','Electric,Rock,Steel',NULL),('Ghost','Ghost,Psychic','Dark','Normal'),('Grass','Ground,Rock,Water','Bug,Dragon,Fire,Flying,Grass,Poison,Steel',NULL),('Ground','Electric,Fire,Poison,Rock,Steel','Bug,Grass','Flying'),('Ice','Dragon,Flying,Grass,Ground','Fire,Ice,Steel,Water',NULL),('Normal',NULL,'Rock,Steel','Ghost'),('Poison','Grass,Fairy','Poison,Ground,Rock,Ghost','Steel'),('Psychic','Fighting,Poison','Psychic,Steel','Dark'),('Rock','Bug,Fire,Flying,Ice','Fighting,Ground,Steel',NULL),('Steel','Fairy,Ice,Rock','Electric,Fire,Steel,Water',NULL),('Water','Fire,Ground,Rock','Dragon,Grass,Water',NULL);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-15  2:32:25
