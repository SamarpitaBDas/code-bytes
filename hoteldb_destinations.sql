-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hoteldb
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `destinations`
--

DROP TABLE IF EXISTS `destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinations` (
  `destination_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`destination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinations`
--

LOCK TABLES `destinations` WRITE;
/*!40000 ALTER TABLE `destinations` DISABLE KEYS */;
INSERT INTO `destinations` VALUES (1,'Paris','France','Paris','The city of love and lights.'),(2,'Selydove','Ukraine','new york','Paradise on Earth'),(3,'Tongyu','China','new york','The Venice of the North'),(4,'Uptar','Russia','new york','City of Lights'),(5,'Ystad','Sweden','Skåne','The Venice of the North'),(6,'Chishui','China','new york','The Pearl of the Orient'),(7,'Fulnek','Czech Republic','new york','City of Lights'),(8,'Calumpang','Philippines','new york','The Venice of the North'),(9,'Tadmur','Syria','new york','City of Lights'),(10,'Santa Rita Aplaya','Philippines','new york','Paradise on Earth'),(11,'Yuntan','China','new york','The Venice of the North'),(12,'Ivanec','Croatia','new york','The Venice of the North'),(13,'Wodzis?aw ?l?ski','Poland','new york','The Land of Eternal Spring'),(14,'Sancha','China','new york','The Venice of the North'),(15,'Gosen','Japan','new york','The Land of Eternal Spring'),(16,'Hoxtolgay','China','new york','The Pearl of the Orient'),(17,'Moravský Písek','Czech Republic','new york','The Jewel of the Mediterranean'),(18,'Vardenik','Armenia','new york','The Venice of the North'),(19,'Tomorlog','China','new york','The Land of Eternal Spring'),(20,'La Broquerie','Canada','Manitoba','The Pearl of the Orient'),(21,'Wengyang','China','new york','The Pearl of the Orient'),(22,'Laval','France','Pays de la Loire','The Pearl of the Orient'),(23,'Tetyushi','Russia','new york','Paradise on Earth'),(24,'Agiásos','Greece','new york','The Venice of the North'),(25,'Maoya','China','new york','The Land of Eternal Spring'),(26,'Mvuma','Zimbabwe','new york','The Land of Eternal Spring'),(27,'Toulon','France','Provence-Alpes-Côte d\'Azur','City of Lights'),(28,'Sinjhoro','Pakistan','new york','City of Lights'),(29,'Shanhe','China','new york','Paradise on Earth'),(30,'Independencia','Mexico','Nayarit','Paradise on Earth'),(31,'Pananaw','Philippines','new york','City of Lights'),(32,'Cidadap','Indonesia','new york','The Jewel of the Mediterranean'),(33,'Nandayure','Costa Rica','new york','The Venice of the North'),(34,'Gonbad-e K?v?s','Iran','new york','City of Lights'),(35,'Huangshanguan','China','new york','The Pearl of the Orient'),(36,'Akita','Japan','new york','The Pearl of the Orient'),(37,'Cafayate','Argentina','new york','The Pearl of the Orient'),(38,'San Casimiro','Philippines','new york','The Pearl of the Orient'),(39,'Karara','Indonesia','new york','Paradise on Earth'),(40,'Jiancheng','China','new york','City of Lights'),(41,'North Perth','Canada','Ontario','The Jewel of the Mediterranean'),(42,'Taikang','China','new york','The Land of Eternal Spring'),(43,'Chengnan','China','new york','Paradise on Earth'),(44,'Mogzon','Russia','new york','The Pearl of the Orient'),(45,'Tambulig','Philippines','new york','The Venice of the North'),(46,'El Limon','Mexico','Veracruz Llave','The Venice of the North'),(47,'Kuala Lumpur','Malaysia','Kuala Lumpur','City of Lights'),(48,'Itambacuri','Brazil','new york','The Pearl of the Orient'),(49,'Zve?an','Kosovo','new york','The Pearl of the Orient'),(50,'Wangliao','China','new york','The Pearl of the Orient'),(51,'Nangkaruka','Indonesia','new york','The Pearl of the Orient'),(52,'Nanhe','China','new york','City of Lights'),(53,'Doetinchem','Netherlands','Provincie Gelderland','The Pearl of the Orient'),(54,'Doblas','Argentina','new york','Paradise on Earth'),(55,'Gotputuk','Indonesia','new york','The Pearl of the Orient'),(56,'El Congo','El Salvador','new york','City of Lights'),(57,'Borgustanskaya','Russia','new york','Paradise on Earth'),(58,'Nong Hin','Thailand','new york','The Pearl of the Orient'),(59,'Chaplygin','Russia','new york','The Jewel of the Mediterranean'),(60,'Sheki','Azerbaijan','new york','City of Lights'),(61,'Xinfeng','China','new york','The Venice of the North'),(62,'Kauhava','Finland','new york','City of Lights'),(63,'Xiyang','China','new york','City of Lights'),(64,'Pajo','Philippines','new york','City of Lights'),(65,'Myadzyel','Belarus','new york','The Land of Eternal Spring'),(66,'Guangli','China','new york','The Jewel of the Mediterranean'),(67,'Eslöv','Sweden','Skåne','Paradise on Earth'),(68,'Maranganí','Peru','new york','The Jewel of the Mediterranean'),(69,'Cruz Alta','Argentina','new york','The Pearl of the Orient'),(70,'Gantang','China','new york','Paradise on Earth'),(71,'Levoberezhnaya','Russia','new york','Paradise on Earth'),(72,'Sabana Grande de Boyá','Dominican Republic','new york','The Jewel of the Mediterranean'),(73,'Titao','Burkina Faso','new york','The Pearl of the Orient'),(74,'Pondokdalem','Indonesia','new york','The Jewel of the Mediterranean'),(75,'Jorochito','Bolivia','new york','Paradise on Earth'),(76,'Solna','Sweden','Stockholm','City of Lights'),(77,'Tandil','Argentina','new york','City of Lights'),(78,'Czerwie?sk','Poland','new york','The Jewel of the Mediterranean'),(79,'Ústí nad Labem','Czech Republic','new york','The Pearl of the Orient'),(80,'Radomir','Bulgaria','new york','City of Lights'),(81,'Dembéni','Comoros','new york','The Jewel of the Mediterranean'),(82,'Butahai','China','new york','The Venice of the North'),(83,'Nawal','Nepal','new york','The Jewel of the Mediterranean'),(84,'Shihuiqiao','China','new york','The Jewel of the Mediterranean'),(85,'Spu?','Montenegro','new york','The Jewel of the Mediterranean'),(86,'Ko?min Wielkopolski','Poland','new york','The Jewel of the Mediterranean'),(87,'G?uchów','Poland','new york','Paradise on Earth'),(88,'Sipocot','Philippines','new york','The Jewel of the Mediterranean'),(89,'Fulnek','Czech Republic','new york','The Jewel of the Mediterranean'),(90,'Guifões','Portugal','Porto','City of Lights'),(91,'Plalar','Indonesia','new york','The Pearl of the Orient'),(92,'Changting','China','new york','The Pearl of the Orient'),(93,'Azul','Argentina','new york','The Venice of the North'),(94,'Shunde','China','new york','Paradise on Earth'),(95,'Zhangxi','China','new york','Paradise on Earth'),(96,'Xingguo','China','new york','The Jewel of the Mediterranean'),(97,'Sofádes','Greece','new york','The Land of Eternal Spring'),(98,'Luoshan','China','new york','City of Lights'),(99,'Tal?','Egypt','new york','The Venice of the North'),(100,'Suresnes','France','Île-de-France','Paradise on Earth'),(101,'Mercedes','Argentina','new york','The Venice of the North'),(102,'R S','India','Gujarat','City of Lights'),(103,'Sadar Bazar','India','Uttar Pradesh','The Land of Eternal Spring'),(104,'Agraharam','India','Andhra Pradesh','Paradise on Earth');
/*!40000 ALTER TABLE `destinations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-27 16:11:35
