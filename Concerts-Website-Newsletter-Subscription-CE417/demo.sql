-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `concerts`
--

DROP TABLE IF EXISTS `concerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concerts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `artist` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `date` varchar(10) NOT NULL,
  `tickets` integer NOT NULL,
  `info` text(1000) NOT NULL,
  `img1` varchar(50) NOT NULL,
  `img2` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concerts`
--

LOCK TABLES `concerts` WRITE;
/*!40000 ALTER TABLE `concerts` DISABLE KEYS */;
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Alabama Shakes','Blues-Jazz','Madison Square Garden','08/07/2021','100','nothing','al-shakes.png','al-shakes.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Black Pumas','Blues-Jazz','Stadium Arcadium','27/05/2021','100','nothing','black_pumas.png','black_pumas.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Binker and Moses','Blues-Jazz','Stadium Arcadium','22/06/2021','100','nothing','binkerandmoses.png','binkerandmoses.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Jazzmeia Horn','Blues-Jazz','Red Rocks Amphitheater','09/06/2021','100','nothing','jazzmeiahorn.png','jazzmeiahorn.png');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Beyonce','Pop','Stadium Arcadium','01/07/2021','100','nothing','beyonce.png','beyonce.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Lady Gaga','Pop','Hollywood Bowl','11/07/2021','100','nothing','lady_gaga.png','lady_gaga.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Ed Sheeran','Pop','Madison Square Garden','08/08/2021','100','nothing','ed_sheeran.png','ed_sheeran.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Justin Bieber','Pop','Hollywood Bowl','30/07/2021','100','nothing','justin_bieber.png','justin_bieber.png');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Deep Purple','Rock','Red Rocks Amphitheater','08/08/2021','100','nothing','deep_purple.png','deep_purple.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Bon Jovi','Rock','Madison Square Garden','10/08/2021','100','nothing','bonjovi.png','bonjovi.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Guns n Roses','Rock','Red Rocks Amphitheater','09/08/2021','100','nothing','gunsnroses.png','gunsnroses.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Bryan Adams','Rock','Madison Square Garden','20/08/2021','100','nothing','bryan_adams.png','bryan_adams.png');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('David Guetta','Electronic','Coachela Stage','12/07/2021','100','nothing','davidguetta.png','davidguetta.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Deadmau5','Electronic','Brick by Brick','18/07/2021','100','nothing','deadmau5.png','deadmau5.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Steve Aoki','Electronic','Wayfarer','08/07/2021','100','nothing','steveaoki.png','steveaoki.png');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Eminem','Hip Hop','Greek Theater','30/05/2021','100','nothing','eminem.png','eminem.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('YG','Hip Hop','Stadium Arcadium','28/05/2021','100','nothing','yg.jpeg','yg.jpeg');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('12pithikos','Hip Hop','Lab Art','22/06/2021','100','nothing','12pithikos.png','12pithikos.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Bloody Hawk','Hip Hop','Lab Art','30/08/2021','100','nothing','bloodyhawk.png','bloodyhawk.png');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Red Hot Chilly Peppers','Alternative Rock','Stadium Arcadium','08/05/2021','100','nothing','rhcp.png','rhcp.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('MUSE','Alternative Rock','Stade de France','24/05/2021','100','nothing','muse.png','muse.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Arctic Monkeys','Alternative Rock','Stadium Arcadium','14/08/2021','100','nothing','arcticmonkeys.png','arcticmonkeys.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Killers','Alternative Rock','Greek Theater','05/08/2021','100','nothing','killers.png','killers.png');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('J Balvin','Latin','Stade de France','01/08/2021','100','nothing','jbalvin.png','jbalvin.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Enrique Iglesias','Latin','Stadium Arcadium','02/07/2021','100','nothing','enriqueiglesias.png','enriqueiglesias.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Aventura','Latin','Stadium Arcadium','11/07/2021','100','nothing','aventura.png','aventura.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Maluma','Latin','Greek Theater','07/08/2021','100','nothing','maluma.png','maluma.png');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Metallica','Metal','Stade de France','19/05/2021','100','nothing','metallica.png','metallica.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Slayer','Metal','Greek Theater','26/06/2021','100','nothing','slayer.png','slayer.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Slipknot','Metal','Brick by Brick','26/05/2021','100','nothing','slipknot.png','slipknot.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Iron Maiden','Metal','Stadium Arcadium','18/07/2021','100','nothing','ironmaiden.png','ironmaiden.png');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('BTS','K-Pop','Greek Theater','08/06/2021','100','nothing','bts.png','bts.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('BlackPink','K-Pop','Hollywood Bowl','25/06/2021','100','nothing','blackpink.png','blackpink.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('EXO','K-Pop','Stadium Arcadium','20/08/2021','100','nothing','exo.png','exo.png');

INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Zouganelh','Entexno','Melina Merkouri','12/05/2021','100','nothing','zouganeli.png','zouganeli.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Mpofiliou','Entexno','Plateia Nerou','06/06/2021','100','nothing','bofiliou.png','bofiliou.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Maravegias','Entexno','Plateia Nerou','21/06/2021','100','nothing','maravegias.png','maravegias.png');
INSERT INTO `concerts` (artist, type, location, date, tickets, info, img1, img2) VALUES ('Giannis Xaroulis','Entexno','Texnopolis','08/05/2021','100','nothing','haroulis.png','haroulis.png');

/*!40000 ALTER TABLE `concerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `user_id` varchar(20) NOT NULL,
  `concert_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`concert_id`),
  KEY `concert_id` (`concert_id`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `user_id` varchar(20) NOT NULL,
  `concert_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`concert_id`),
  KEY `concert_id` (`concert_id`),
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `history_ibfk_2` FOREIGN KEY (`concert_id`) REFERENCES `concerts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email`    varchar(100) NOT NULL,
  `phone`    varchar(20)  NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin','admin@gmail.com','1234567890');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 21:29:59
