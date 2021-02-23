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
-- Table structure for table `pokedex`
--

DROP TABLE IF EXISTS `pokedex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pokedex` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `TYPE1` varchar(20) NOT NULL,
  `TYPE2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `POKEMON_FK1_idx` (`TYPE1`),
  KEY `POKEMON_FK2_idx` (`TYPE2`),
  CONSTRAINT `POKEMON_FK1` FOREIGN KEY (`TYPE1`) REFERENCES `type` (`name`),
  CONSTRAINT `POKEMON_FK2` FOREIGN KEY (`TYPE2`) REFERENCES `type` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokedex`
--

LOCK TABLES `pokedex` WRITE;
/*!40000 ALTER TABLE `pokedex` DISABLE KEYS */;
INSERT INTO `pokedex` VALUES (1,'Bulbasaur','Grass','Poison'),(2,'Ivysaur','Grass','Poison'),(3,'Venusaur','Grass','Poison'),(4,'Charmander','Fire',NULL),(5,'Charmeleon','Fire',NULL),(6,'Charizard','Fire','Flying'),(7,'Squirtle','Water',NULL),(8,'Wartortle','Water',NULL),(9,'Blastoise','Water',NULL),(10,'Caterpie','Bug',NULL),(11,'Metapod','Bug',NULL),(12,'Butterfree','Bug','Flying'),(13,'Weedle','Bug','Poison'),(14,'Kakuna','Bug','Poison'),(15,'Beedrill','Bug','Poison'),(16,'Pidgey','Normal','Flying'),(17,'Pidgeotto','Normal','Flying'),(18,'Pidgeot','Normal','Flying');
/*!40000 ALTER TABLE `pokedex` ENABLE KEYS */;
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
