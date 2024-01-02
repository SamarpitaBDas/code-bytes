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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `hotel_id` int DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `user_id` (`user_id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,4.2,'Great hotel with excellent service. Highly recommended!','2023-12-26 17:47:37'),(2,2,2,0,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(3,3,3,4.5,'Great hotel with excellent service!','2023-12-26 17:50:44'),(4,4,4,4.9,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(5,5,5,2.3,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(6,6,6,4.1,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(7,7,7,4.9,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(8,8,8,0.7,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(9,9,9,4.5,'Great hotel with excellent service!','2023-12-26 17:50:44'),(10,10,10,4.3,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(11,11,11,4.1,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(12,12,12,3.4,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(13,13,13,0.1,'Great hotel with excellent service!','2023-12-26 17:50:44'),(14,14,14,1.9,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(15,15,15,3,'The room was clean and comfortable.','2023-12-26 17:50:44'),(16,16,16,0.4,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(17,17,17,2.3,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(18,18,18,1.3,'Great hotel with excellent service!','2023-12-26 17:50:44'),(19,19,19,1.2,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(20,20,20,2.8,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(21,21,21,0.5,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(22,22,22,2,'The room was clean and comfortable.','2023-12-26 17:50:44'),(23,23,23,0.5,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(24,24,24,2.3,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(25,25,25,0.3,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(26,26,26,4.6,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(27,27,27,3.9,'The room was clean and comfortable.','2023-12-26 17:50:44'),(28,28,28,0.9,'The room was clean and comfortable.','2023-12-26 17:50:44'),(29,29,29,4.5,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(30,30,30,1.9,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(31,31,31,0.4,'Great hotel with excellent service!','2023-12-26 17:50:44'),(32,32,32,4,'Great hotel with excellent service!','2023-12-26 17:50:44'),(33,33,33,0.3,'Great hotel with excellent service!','2023-12-26 17:50:44'),(34,34,34,0.8,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(35,35,35,4.9,'The room was clean and comfortable.','2023-12-26 17:50:44'),(36,36,36,3.6,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(37,37,37,3.8,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(38,38,38,1.3,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(39,39,39,0.9,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(40,40,40,2.4,'The room was clean and comfortable.','2023-12-26 17:50:44'),(41,41,41,0.6,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(42,42,42,1.7,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(43,43,43,0.4,'Great hotel with excellent service!','2023-12-26 17:50:44'),(44,44,44,2,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(45,45,45,3,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(46,46,46,2.9,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(47,47,47,0.9,'Great hotel with excellent service!','2023-12-26 17:50:44'),(48,48,48,3.7,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(49,49,49,1,'The room was clean and comfortable.','2023-12-26 17:50:44'),(50,50,50,4.1,'Great hotel with excellent service!','2023-12-26 17:50:44'),(51,51,51,3,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(52,52,52,3.6,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(53,53,53,1.8,'Great hotel with excellent service!','2023-12-26 17:50:44'),(54,54,54,1,'Great hotel with excellent service!','2023-12-26 17:50:44'),(55,55,55,3.9,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(56,56,56,4.1,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(57,57,57,3.9,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(58,58,58,1.8,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(59,59,59,0.1,'Great hotel with excellent service!','2023-12-26 17:50:44'),(60,60,60,2.7,'Great hotel with excellent service!','2023-12-26 17:50:44'),(61,61,61,4.5,'The room was clean and comfortable.','2023-12-26 17:50:44'),(62,62,62,3,'The room was clean and comfortable.','2023-12-26 17:50:44'),(63,63,63,4.2,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(64,64,64,3.1,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(65,65,65,2.6,'The room was clean and comfortable.','2023-12-26 17:50:44'),(66,66,66,4.4,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(67,67,67,1.1,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(68,68,68,1.6,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(69,69,69,3,'Great hotel with excellent service!','2023-12-26 17:50:44'),(70,70,70,2.4,'The room was clean and comfortable.','2023-12-26 17:50:44'),(71,71,71,0.6,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(72,72,72,1.2,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(73,73,73,1.7,'Great hotel with excellent service!','2023-12-26 17:50:44'),(74,74,74,1.1,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(75,75,75,1.1,'The room was clean and comfortable.','2023-12-26 17:50:44'),(76,76,76,3.6,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(77,77,77,2.6,'The room was clean and comfortable.','2023-12-26 17:50:44'),(78,78,78,2.6,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(79,79,79,2.9,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(80,80,80,0.4,'Great hotel with excellent service!','2023-12-26 17:50:44'),(81,81,81,0.9,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(82,82,82,4,'Great hotel with excellent service!','2023-12-26 17:50:44'),(83,83,83,2.8,'The room was clean and comfortable.','2023-12-26 17:50:44'),(84,84,84,0.8,'The room was clean and comfortable.','2023-12-26 17:50:44'),(85,85,85,2.1,'Great hotel with excellent service!','2023-12-26 17:50:44'),(86,86,86,1.1,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(87,87,87,2.5,'The room was clean and comfortable.','2023-12-26 17:50:44'),(88,88,88,0.9,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(89,89,89,0.4,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(90,90,90,2.9,'Great hotel with excellent service!','2023-12-26 17:50:44'),(91,91,91,3.5,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(92,92,92,2.4,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(93,93,93,2.3,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(94,94,94,3.1,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(95,95,95,4.1,'I had a terrible experience at this hotel.','2023-12-26 17:50:44'),(96,96,96,2.9,'The room was clean and comfortable.','2023-12-26 17:50:44'),(97,97,97,1.8,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(98,98,98,2.2,'The staff was friendly and helpful.','2023-12-26 17:50:44'),(99,99,99,0.6,'The hotel had a beautiful view.','2023-12-26 17:50:44'),(100,100,100,4.1,'The room was clean and comfortable.','2023-12-26 17:50:44');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-27 16:11:36
