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
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pokemon` (
  `ID` int(11) NOT NULL,
  `LVL` int(11) NOT NULL,
  `HP` int(11) NOT NULL,
  `ATTACK` int(11) NOT NULL,
  `DEFENSE` int(11) NOT NULL,
  `SPECIAL_ATTACK` int(11) NOT NULL,
  `SPECIAL_DEFENSE` int(11) NOT NULL,
  `SPEED` int(11) NOT NULL,
  `MOVE1` varchar(20) DEFAULT NULL,
  `MOVE2` varchar(20) DEFAULT NULL,
  `MOVE3` varchar(20) DEFAULT NULL,
  `MOVE4` varchar(20) DEFAULT NULL,
  KEY `POKEDEX_FK1_idx` (`ID`),
  KEY `POKEDEX_FK2_idx` (`MOVE1`),
  KEY `POKEDEX_FK3_idx` (`MOVE2`),
  KEY `POKEDEX_FK4_idx` (`MOVE3`),
  KEY `POKEDEX_FK5_idx` (`MOVE4`),
  CONSTRAINT `POKEDEX_FK1` FOREIGN KEY (`ID`) REFERENCES `pokedex` (`id`),
  CONSTRAINT `POKEDEX_FK2` FOREIGN KEY (`MOVE1`) REFERENCES `move` (`name`),
  CONSTRAINT `POKEDEX_FK3` FOREIGN KEY (`MOVE2`) REFERENCES `move` (`name`),
  CONSTRAINT `POKEDEX_FK4` FOREIGN KEY (`MOVE3`) REFERENCES `move` (`name`),
  CONSTRAINT `POKEDEX_FK5` FOREIGN KEY (`MOVE4`) REFERENCES `move` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,50,200,92,92,121,121,85,'Razor Leaf','Leech Seed','Body Slam','Growth'),(2,50,230,116,117,148,148,112,'Leech Seed','Razor Leaf','Growth','Mega Drain'),(3,50,270,152,153,184,184,148,'Growth','Leech Seed','Solarbeam','Sleep Powder'),(4,50,188,98,81,112,94,121,'Seismic Toss','Flamethrower','Dig','Body Slam'),(5,50,226,119,108,148,121,148,'Slash','Flamethrower','Dig','Submission'),(6,50,226,155,144,200,157,184,'Fire Blast','Fly','Fire Spin','Swords Dance'),(7,50,198,90,121,94,119,81,'Dig','Surf','Body Slam','Blizzard'),(8,50,228,117,148,121,148,108,'Seismic Toss','Surf','Toxic','Dig'),(9,50,268,153,184,157,193,144,'Tail Whip','Hydro Pump','Withdraw','Skull Bash'),(10,50,200,58,67,40,40,85,'String Shot','Tackle',NULL,NULL),(11,50,210,40,103,49,49,58,'String Shot','Tackle',NULL,NULL),(12,50,230,85,94,166,148,130,'Stun Spore','Psychic','Mega Drain','Swift'),(13,50,190,67,58,40,40,94,'String Shot','Poison Sting',NULL,NULL),(14,50,200,49,94,49,49,67,'String Shot','Poison Sting',NULL,NULL),(15,50,240,166,76,85,148,139,'Twineedle','Leech Life','Mega Drain','Hyper Beam'),(16,50,190,85,76,67,67,105,'Whirlwind','Fly','Sand-Attack','Mirror Move'),(17,50,236,112,103,94,94,132,'Swift','Fly','Sand-Attack','Toxic'),(18,50,276,148,139,130,130,186,'Sand-Attack','Mirror Move','Quick Attack','Fly');
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
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
