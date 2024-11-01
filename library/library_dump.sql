-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `born` date DEFAULT NULL,
  `died` date DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Frank','Herbert','1920-10-08','1986-02-11'),(2,'Ray','Bradbury','1920-08-22','2012-06-05'),(3,'George','Miller','1993-09-16',NULL),(4,'Jackson','Crawford','1985-08-28',NULL),(5,'Thomas','Froncek',NULL,NULL),(6,'BDK','America',NULL,NULL),(7,'Marcus','Follin','1989-07-31',NULL),(8,'Marcus','Aurelius','0121-04-29','0180-03-17'),(9,'Julius','Evola','1898-05-19','1974-06-11'),(10,'Yukio','Mishima','1925-01-14','1970-11-25'),(11,'Liu','Cixin','1963-06-23',NULL),(12,'William','Gibson','1948-03-17',NULL),(13,'Snorri','Sturluson','1179-01-01','1241-09-28'),(14,'Swami','Prabhupada','1896-09-01','1977-11-14'),(15,'J.R.R.','Tolkein','1892-01-03','1973-09-02'),(16,'H.P.','Lovecraft','1890-08-20','1937-03-15');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_has_genre`
--

DROP TABLE IF EXISTS `book_has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_has_genre` (
  `books_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`books_id`,`genre_id`),
  KEY `fk_books_has_genres_genres1_idx` (`genre_id`),
  KEY `fk_books_has_genres_books_idx` (`books_id`),
  CONSTRAINT `fk_books_has_genres_books` FOREIGN KEY (`books_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `fk_books_has_genres_genres1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_has_genre`
--

LOCK TABLES `book_has_genre` WRITE;
/*!40000 ALTER TABLE `book_has_genre` DISABLE KEYS */;
INSERT INTO `book_has_genre` VALUES (30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(48,1),(49,1),(50,1),(51,1),(58,1),(36,2),(51,2),(37,3),(54,3),(55,3),(56,3),(57,3),(58,3),(37,4),(38,5),(53,5),(39,6),(52,6),(38,7),(40,7),(41,7),(42,7),(52,7),(53,7),(38,8),(40,8),(41,8),(42,8),(43,8),(44,8),(45,8),(46,8),(53,8),(36,9),(43,9),(45,9),(47,10),(47,11);
/*!40000 ALTER TABLE `book_has_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(70) DEFAULT NULL,
  `year_published` smallint DEFAULT NULL,
  `author_id` int NOT NULL,
  `read` enum('y','n') DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `fk_books_authors1_idx` (`author_id`),
  CONSTRAINT `fk_books_authors1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (30,'Dune',1965,1,'y'),(31,'Dune Messiah',1969,1,'y'),(32,'Children of Dune',1979,1,'y'),(33,'God Emperor of Dune',1981,1,'y'),(34,'Heretics of Dune',1984,1,'y'),(35,'Chapterhouse: Dune',1985,1,'n'),(36,'Fahrenheit 451',1953,2,'y'),(37,'Francis of the Filth',2017,3,'y'),(38,'The Poetic Edda',2015,4,'y'),(39,'The Northmen',1998,5,'y'),(40,'The Canonical Book of the Buddha\'s Lengthy Discourses Volume I',2017,6,'y'),(41,'The Canonical Book of the Buddha\'s Lengthy Discourses Volume II',2017,6,'y'),(42,'The Canonical Book of the Buddha\'s Lengthy Discourses Volume III',2017,6,'y'),(43,'Dauntless',2019,7,'y'),(44,'Meditations',170,8,'y'),(45,'Revolt Against the Modern World',1934,9,'y'),(46,'Sun and Steel',1968,10,'y'),(47,'The Temple of the Golden Pavilion',1956,10,'y'),(48,'The Three-Body Problem',2008,11,'n'),(49,'The Dark Forest',2008,11,'n'),(50,'Death\'s End',2010,11,'n'),(51,'Neuromancer',1984,12,'n'),(52,'The Prose Edda',1220,13,'n'),(53,'Bhagavad-Gita As It Is',1968,14,'n'),(54,'Lord of the Rings: The Fellowship of the Ring',1954,15,'n'),(55,'Lord of the Rings: The Two Towers',1954,15,'n'),(56,'Lord of the Rings: The Return of the King',1955,15,'n'),(57,'The Hobbit',1937,15,'n'),(58,'The Complete Fiction of H.P. Lovecraft',2014,16,'y');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Sci-fi'),(2,'Dystopian'),(3,'Fantasy'),(4,'Comedy'),(5,'Poetry'),(6,'History'),(7,'Religion'),(8,'Philosophy'),(9,'Politics'),(10,'Historical Fiction'),(11,'Realistic Fiction');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01 17:06:36
