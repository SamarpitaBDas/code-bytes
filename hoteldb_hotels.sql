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
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `hotel_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `rating` float DEFAULT NULL,
  `price_range` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `amenities` text,
  `description` text,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Hotel ABC','123 Main Street','New York','USA',4.5,'$300','Luxury','Free Wi-Fi, Pool, Gym','A luxury hotel in the heart of New York City.'),(2,'Ziemann-Windler','PO Box 52277','Fry?ovice','Czech Republic',3.5,'$1976.02','luxury','restaurant','relaxing'),(3,'Jacobson and Sons','Apt 924','Chaínça','Portugal',0.5,'$340.14','hotel','pool','relaxing'),(4,'Gerhold-King','PO Box 93567','Tagbilaran City','Philippines',1.9,'$3656.05','budget','spa','stylish'),(5,'Tremblay and Sons','Apt 1064','Wi?zownica','Poland',0.5,'$4615.96','hotel','gym','relaxing'),(6,'Ryan Inc','18th Floor','Concepción','Colombia',4.2,'$6607.69','luxury','free wifi','luxurious'),(7,'Torp-Kerluke','PO Box 59101','Anping','China',0.4,'$2531.57','luxury','free wifi','cozy'),(8,'Blanda LLC','PO Box 20082','Heyu','China',0.3,'$3323.97','boutique','bar','modern'),(9,'Marquardt Inc','Suite 34','Kotatengah','Indonesia',0.9,'$577.49','boutique','room service','modern'),(10,'Bosco Group','Apt 153','Tassin-la-Demi-Lune','France',1.2,'$1539.36','boutique','gym','stylish'),(11,'Heathcote, Armstrong and Monahan','Room 838','Cibojong','Indonesia',0.4,'$9094.73','boutique','bar','sophisticated'),(12,'Greenholt, Heathcote and Shanahan','Room 1154','Pinheiros','Brazil',1.1,'$6250.73','hotel','gym','luxurious'),(13,'Heaney-Huels','2nd Floor','San Juan de Planes','Honduras',3.1,'$7193.06','luxury','room service','modern'),(14,'Kuvalis, Block and King','Suite 10','Ban Fang','Thailand',0.1,'$8123.70','budget','gym','sophisticated'),(15,'Zieme-Shields','PO Box 3770','Saint-Paul','Reunion',4.5,'$7660.83','luxury','free wifi','luxurious'),(16,'Green Inc','PO Box 49476','Machinga','Malawi',1.8,'$9532.20','luxury','bar','quaint'),(17,'Mraz-Steuber','Room 1445','Casal dos Bernardos','Portugal',3.2,'$6442.11','budget','gym','luxurious'),(18,'Jacobson and Sons','Suite 4','Olenyok','Russia',2.6,'$8083.05','motel','free wifi','modern'),(19,'Altenwerth, Bernhard and Lakin','Room 109','San Ramón','Uruguay',3.2,'$2690.69','hotel','bar','elegant'),(20,'Terry-Graham','20th Floor','Espanola','Canada',3.1,'$9328.93','hotel','gym','sophisticated'),(21,'Parker, Treutel and Jakubowski','Suite 62','Funaishikawa','Japan',3.1,'$1532.13','motel','spa','elegant'),(22,'Wintheiser-Bode','Apt 739','Bezlyudivka','Ukraine',3,'$6719.81','boutique','pool','picturesque'),(23,'Funk Inc','Suite 26','Póvoa de Santo António','Portugal',0.8,'$1948.69','budget','bar','stylish'),(24,'Stoltenberg, Prosacco and Carroll','Apt 902','Dob?ice','Czech Republic',2.3,'$7757.49','hotel','spa','cozy'),(25,'Smith-Herzog','PO Box 29336','Paratinga','Brazil',0.8,'$2774.79','luxury','gym','stylish'),(26,'Jast Group','Suite 60','Rust?avi','Georgia',4.8,'$1726.56','luxury','free wifi','luxurious'),(27,'Kulas-Hermann','Suite 7','Bestöbe','Kazakhstan',4.7,'$3384.66','luxury','restaurant','charming'),(28,'Armstrong Group','3rd Floor','Juàzeirinho','Brazil',2.8,'$2224.67','luxury','pool','elegant'),(29,'Franecki, Mraz and Lakin','Suite 34','Odzi','Zimbabwe',4.1,'$5418.11','luxury','bar','cozy'),(30,'Cormier, Reichert and Dicki','Room 440','Prioso Barat','Indonesia',2.2,'$9337.30','boutique','bar','modern'),(31,'Jakubowski, Abshire and Gusikowski','Room 95','Pervomays?ke','Ukraine',1.6,'$5468.83','budget','restaurant','charming'),(32,'Emmerich-Gibson','Apt 1431','Khan??ir','Syria',1,'$258.05','motel','pool','sophisticated'),(33,'Swift Group','Suite 37','Calape','Philippines',4.8,'$8323.50','luxury','bar','charming'),(34,'Upton-Reichert','PO Box 95831','Wulongshan','China',4.7,'$695.79','hotel','spa','quaint'),(35,'Goldner, Oberbrunner and Senger','Room 603','Kinéta','Greece',0.4,'$3705.82','budget','spa','modern'),(36,'Daniel, Welch and McKenzie','Suite 79','Apodi','Brazil',1.5,'$9555.72','luxury','free wifi','cozy'),(37,'Kulas-Legros','Room 68','Virden','Canada',3.5,'$5374.84','boutique','restaurant','modern'),(38,'Bednar, Schuppe and Dach','Room 365','Nesovice','Czech Republic',0.6,'$9285.68','hotel','gym','modern'),(39,'Zboncak, Shields and Kutch','Suite 85','Sernovodsk','Russia',4.8,'$3342.89','motel','room service','stylish'),(40,'Emard, Mohr and Marquardt','Suite 88','Ar Rumayth?yah','Kuwait',0.5,'$2989.75','budget','free wifi','quaint'),(41,'Wuckert, Fritsch and Cronin','15th Floor','Casal do Sapo','Portugal',1.7,'$2797.38','motel','restaurant','sophisticated'),(42,'Schinner, Zemlak and Torphy','Room 490','Hirara','Japan',4.4,'$597.67','motel','pool','picturesque'),(43,'Douglas LLC','Apt 294','Stuttgart Stuttgart-Mitte','Germany',4.2,'$1492.93','boutique','free wifi','luxurious'),(44,'McCullough, Considine and Dibbert','Room 578','Bandaran','Indonesia',3.4,'$1970.27','motel','free wifi','luxurious'),(45,'Kertzmann, Simonis and Treutel','11th Floor','Radostowice','Poland',2.1,'$2728.35','motel','restaurant','luxurious'),(46,'Koss-O\'Conner','PO Box 14788','Papër','Albania',4.3,'$5259.32','hotel','room service','elegant'),(47,'Bogan, Bayer and Rogahn','PO Box 8944','Kruhlaye','Belarus',3.4,'$1257.69','luxury','room service','quaint'),(48,'Hettinger, Ryan and Upton','Room 974','Manaloal','Philippines',0.8,'$9743.40','motel','spa','sophisticated'),(49,'Paucek-D\'Amore','Apt 642','Crateús','Brazil',2.2,'$6913.24','budget','pool','elegant'),(50,'Zieme Inc','Apt 555','Moravská T?ebová','Czech Republic',2.1,'$7813.73','resort','gym','quaint'),(51,'Nolan Group','Room 130','Zhantang','China',2.7,'$6286.82','motel','pool','sophisticated'),(52,'Barrows-Jerde','Apt 715','Yëlkino','Russia',0.9,'$6251.13','budget','room service','stylish'),(53,'Ullrich, Orn and Moore','Apt 357','Tocok','Philippines',0.3,'$5870.78','hotel','pool','relaxing'),(54,'Ankunding Inc','Room 398','Lajkovac','Serbia',3.6,'$3641.15','resort','restaurant','modern'),(55,'Simonis, Pollich and Hilpert','Suite 85','Bulangan','Indonesia',3.9,'$2113.43','luxury','spa','luxurious'),(56,'Emmerich-Gulgowski','Suite 60','Bualan','Philippines',4,'$5723.53','hotel','room service','luxurious'),(57,'Spinka-Lind','PO Box 77622','Rosario de Lerma','Argentina',3.3,'$301.65','motel','room service','relaxing'),(58,'MacGyver, Strosin and Christiansen','Room 1416','Tetovo','Macedonia',0.3,'$7394.14','motel','spa','luxurious'),(59,'Romaguera-Turcotte','PO Box 86715','Balung Barat','Indonesia',3,'$164.62','motel','gym','sophisticated'),(60,'Heaney LLC','PO Box 37770','Dinjo','Indonesia',2.1,'$5452.38','motel','free wifi','charming'),(61,'Macejkovic Group','Room 246','Maguilling','Philippines',4.5,'$1689.80','hotel','bar','charming'),(62,'Rowe-Mann','Room 835','Jiabeiyan','China',1.4,'$9662.69','resort','bar','sophisticated'),(63,'Mohr Group','Suite 73','Panimbang','Indonesia',1.9,'$372.26','boutique','gym','charming'),(64,'Schmitt Group','PO Box 6031','Kostanay','Kazakhstan',4.1,'$3252.82','motel','pool','quaint'),(65,'Schinner LLC','Room 534','Campoverde','Peru',3,'$5671.20','resort','free wifi','modern'),(66,'Schinner-Hyatt','PO Box 23674','Santiago','Philippines',1.1,'$5800.33','budget','pool','sophisticated'),(67,'Kertzmann, Kiehn and Kunde','Room 465','Twardawa','Poland',1.3,'$2402.27','budget','room service','elegant'),(68,'Miller-Stoltenberg','Room 329','Drawsko Pomorskie','Poland',1,'$4020.39','resort','room service','stylish'),(69,'Schultz-Effertz','Room 889','Saint-Denis','Reunion',3,'$4794.51','hotel','pool','charming'),(70,'Trantow-Kuhic','8th Floor','Bandera','Argentina',0.7,'$4798.26','boutique','pool','quaint'),(71,'Muller Group','Apt 1698','Sumbersih','Indonesia',3.3,'$8509.90','hotel','pool','cozy'),(72,'Windler, Kuhic and Wolf','Suite 42','Bukbatang','Indonesia',0.3,'$7103.51','motel','bar','relaxing'),(73,'Hettinger Group','Room 1090','Kota Ternate','Indonesia',2.6,'$594.15','resort','free wifi','quaint'),(74,'Crooks-Windler','4th Floor','Shijia','China',2.2,'$468.80','boutique','pool','relaxing'),(75,'Hudson, Trantow and Schultz','Suite 5','Banjar Tiga','Indonesia',4.2,'$7746.75','motel','bar','picturesque'),(76,'Glover Group','Room 1302','Ishëm','Albania',0.8,'$2931.06','luxury','restaurant','charming'),(77,'Wuckert-Hoeger','9th Floor','Guangshun','China',5,'$2725.58','luxury','restaurant','modern'),(78,'Tromp and Sons','Room 1511','Banzhong','China',2.7,'$4863.06','boutique','bar','luxurious'),(79,'Runolfsdottir-Pouros','Suite 47','Rojas','Argentina',2.6,'$6950.16','luxury','pool','relaxing'),(80,'Torp-Feeney','Suite 89','Zhlobin','Belarus',0.8,'$2123.96','motel','room service','luxurious'),(81,'Jacobson Group','Room 677','Krasiczyn','Poland',4.6,'$2965.73','luxury','free wifi','charming'),(82,'Shields, Dach and Beier','PO Box 64579','Shijia','China',0.5,'$5098.50','hotel','spa','quaint'),(83,'Boyle Group','PO Box 42449','B?ndarban','Bangladesh',1.8,'$4236.07','budget','restaurant','modern'),(84,'Kris, Jacobi and Dickinson','PO Box 91627','Troyits?ke','Ukraine',4.6,'$4731.22','boutique','spa','sophisticated'),(85,'Franecki, Harris and Pouros','9th Floor','Miyang','China',2.8,'$4812.26','budget','restaurant','quaint'),(86,'Herman-Tremblay','Room 917','Cabay','Philippines',1.7,'$3630.59','motel','spa','stylish'),(87,'Bayer-Renner','PO Box 67922','Motema','Sierra Leone',2.1,'$3246.37','motel','free wifi','cozy'),(88,'Borer, Zieme and Homenick','Room 727','Lovisa','Finland',3.6,'$1761.56','luxury','gym','luxurious'),(89,'Fay Inc','9th Floor','Nato','Philippines',3.3,'$9495.38','hotel','spa','stylish'),(90,'Mante, Hessel and Stracke','19th Floor','Humen','China',1.1,'$6723.26','motel','room service','relaxing'),(91,'Beahan Group','PO Box 23134','Dillenburg','Germany',4.4,'$1888.33','motel','free wifi','relaxing'),(92,'Watsica Group','PO Box 16651','Kunj?h','Pakistan',4.8,'$6811.41','hotel','gym','charming'),(93,'Hegmann, Murazik and Rodriguez','Room 470','Balingueo','Philippines',4,'$7854.13','resort','bar','elegant'),(94,'Schroeder Group','14th Floor','Guleluke','China',3.5,'$4191.16','budget','pool','picturesque'),(95,'Paucek, Parisian and Schmitt','PO Box 11943','Phan Thong','Thailand',1.4,'$515.57','motel','pool','picturesque'),(96,'Dooley, Pfeffer and Johnston','Room 1696','Nuits-Saint-Georges','France',2.5,'$2378.36','hotel','gym','cozy'),(97,'Bauch, Kozey and Robel','Room 980','Consolación del Sur','Cuba',0.2,'$5508.93','motel','restaurant','sophisticated'),(98,'Fahey LLC','Suite 60','Uummannaq','Greenland',0.8,'$8131.56','budget','gym','quaint'),(99,'Pacocha-Veum','Apt 1365','Gif-sur-Yvette','France',0.7,'$649.38','boutique','restaurant','relaxing'),(100,'Grimes, Schmitt and Kub','Suite 56','El?brus','Russia',0.8,'$6071.41','motel','spa','elegant'),(101,'Kshlerin Inc','Apt 92','Liuzu','China',0.1,'$7998.47','motel','restaurant','stylish');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
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
