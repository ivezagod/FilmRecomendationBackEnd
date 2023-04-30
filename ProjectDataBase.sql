-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: dbtasks
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dbtasks`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dbtasks` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `dbtasks`;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Horor'),(2,'Comedy'),(3,'Action'),(4,'Anime'),(5,'Crime');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `runtime` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `Url` varchar(5000) NOT NULL,
  `genre_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Pirates of dunav','2h','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/pirates.jpg',3),(2,'Batman','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/batmanPicture.jpg',3),(3,'Superman v batman','2h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/batman-v-superman-logo-994.jpg',3),(4,'Spiderman','1h 45min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/SpiderMan.jpg',3),(5,'Deadpool','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/deadpool-logo-980.jpg',3),(6,'Fast and furios','2h','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/fastAndFurios.jpg',3),(7,'StormTroopers','3h 20min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/stormTruppers.jpg',3),(8,'Star wars','2h 20min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/starWars.jpg',3),(9,'Indiana Jones','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/indianaJones.jpg',3),(10,'Anabell','2h 20min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/anabell.jpg',1),(11,'Friday The 13','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/jason.jpg',1),(12,'It','3h 20min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/itClown.jpg',1),(13,'The conjuring','2h','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/horor.jpg',1),(14,'The Last Halloween','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/theLastHalloween.jpg',1),(15,'Death Eagle','1h 45min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/horrorEagle.jpg',1),(16,'Jigsaw','2h','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/jigsaw.jpg',1),(17,'The nun','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/theNun.jpg',1),(18,'The Undead doll','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/horrorDoll.jpg',1),(19,'Naruto Shippuden','2h','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/NarutoShippuden.jpg',4),(20,'Dragon Ball','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/Dragonball.jpg',4),(21,'Sasuke\'s Revenge','1h 45min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/Sasuke.jpg',4),(23,'One Piece','2h 20min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/onePiece.jpg',4),(24,'Sword Art Online','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/swordArtOnline.jpg',4),(25,'Bleach','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/bleach.jpg',4),(28,'Kakashi\'s story','2h 20min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/kakashi.jpg',4),(29,'Hangover','2h 20min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/hangover.jpg',2),(30,'Red Notice','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/Red_notice.jpg',2),(31,'Baywatch','1h 45min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/Baywatch.jpg',2),(32,'Mister Bean','2h','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/MisterBin.jpg',2),(33,'Jumanji','2h 20min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/jumanji.jpg',2),(34,'Dumb and Dumber','2h','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/DumbAndDumber.jpg',2),(35,'Kevin hart: Irresponsible','2h','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/KevinHart.jpg',2),(36,'Jumanji 2','2h 20min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/jumanji2.jpg',2),(37,'Alvin and the chipmunks','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/Alvin.jpg',2),(38,'Berserk','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/Berserk.jpg',4),(39,'Full metal Alchemist','1h 30min','   Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur magni quibusdam minima excepturi nostrum, earum dignissimos nemo sunt enim, voluptates necessitatibus ratione maiores ad libero ab.','/images/fullmetal.jpg',4);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varbinary(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_pk` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'admin','admin@admin.com',_binary '40279ad914751e833e55c9f2432c8cd0d3f6aa30705d508ff411e341f95fa716');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
