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
-- Table structure for table `move`
--

DROP TABLE IF EXISTS `move`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `move` (
  `NAME` varchar(20) NOT NULL,
  `KIND` varchar(20) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `POWER` int(11) DEFAULT NULL,
  `ACCURACY` int(11) DEFAULT NULL,
  `PP` int(11) NOT NULL,
  `RANGE` varchar(45) NOT NULL,
  PRIMARY KEY (`NAME`),
  KEY `MOVE_FK1_idx` (`TYPE`),
  CONSTRAINT `MOVE_FK1` FOREIGN KEY (`TYPE`) REFERENCES `type` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move`
--

LOCK TABLES `move` WRITE;
/*!40000 ALTER TABLE `move` DISABLE KEYS */;
INSERT INTO `move` VALUES ('Blizzard','Special','Ice',120,70,5,'Many Others'),('Body Slam','Physical','Normal',85,100,15,'Normal'),('Dig','Physical','Ground',80,100,10,'Normal'),('Fire Blast','Special','Fire',120,85,5,'Normal'),('Fire Spin','Special','Fire',35,85,15,'Normal'),('Flamethrower','Special','Fire',95,100,15,'Normal'),('Fly','Physical','Flying',90,95,15,'Normal'),('Growth','Status','Normal',NULL,NULL,40,'Self'),('Hydro Pump','Special','Water',120,80,5,'Normal'),('Hyper Beam','Special','Normal',150,90,5,'Normal'),('Leech Life','Physical','Bug',20,100,15,'Normal'),('Leech Seed','Status','Grass',NULL,90,10,'Normal'),('Mega Drain','Special','Grass',40,100,15,'Normal'),('Mirror Move','Status','Flying',NULL,NULL,20,'Normal'),('Poison Sting','Physical','Poison',15,100,35,'Normal'),('Psychic','Special','Psychic',90,100,10,'Normal'),('Quick Attack','Physical','Normal',40,100,30,'Normal'),('Razor Leaf','Physical','Grass',55,95,25,'Normal'),('Sand-Attack','Status','Ground',NULL,100,15,'Normal'),('Seismic Toss','Physical','Fighting',85,100,20,'Normal'),('Skull Bash','Physical','Normal',100,100,15,'Normal'),('Slash','Physical','Normal',70,100,20,'Normal'),('Sleep Powder','Status','Poison',NULL,75,35,'Normal'),('Solarbeam','Special','Grass',120,100,10,'Normal'),('String Shot','Status','Bug',NULL,95,40,'Normal'),('Stun Spore','Status','Grass',NULL,75,30,'Normal'),('Submission','Physical','Fighting',80,80,25,'Normal'),('Surf','Special','Water',95,100,15,'Adjacent'),('Swift','Special','Normal',60,NULL,20,'Many Others'),('Swords Dance','Status','Normal',NULL,NULL,40,'Self'),('Tackle','Physical','Normal',50,100,40,'Normal'),('Tail Whip','Status','Water',NULL,100,30,'Normal'),('Toxic','Status','Poison',NULL,100,10,'Normal'),('Twineedle','Physical','Bug',25,100,20,'Normal'),('Whirlwind','Status','Normal',NULL,100,20,'Normal'),('Withdraw','Status','Water',NULL,NULL,40,'Self');
/*!40000 ALTER TABLE `move` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-15  2:32:24
