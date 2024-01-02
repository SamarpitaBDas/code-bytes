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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Doe','johndoe@example.com','1234567890','2023-12-26 16:05:59'),(2,'Kyle Daborn','kdaborn0@chron.com','950-236-8191','2023-12-26 16:20:00'),(3,'Reagen Wace','rwace1@typepad.com','563-864-5369','2023-12-26 16:20:00'),(4,'Belvia MacMenamy','bmacmenamy2@addthis.com','838-427-7458','2023-12-26 16:20:00'),(5,'Westleigh Moggle','wmoggle3@newyorker.com','789-854-1158','2023-12-26 16:20:00'),(6,'Cirstoforo Lambourne','clambourne4@washington.edu','223-855-8899','2023-12-26 16:20:00'),(7,'Peri Belt','pbelt5@wiley.com','422-310-3745','2023-12-26 16:20:00'),(8,'Tabb Donativo','tdonativo6@ow.ly','489-460-0828','2023-12-26 16:20:00'),(9,'Daune Lumber','dlumber7@baidu.com','591-536-9233','2023-12-26 16:20:00'),(10,'Rozina Smythin','rsmythin8@ibm.com','948-149-4885','2023-12-26 16:20:00'),(11,'Allin Bogges','abogges9@gravatar.com','466-960-9296','2023-12-26 16:20:00'),(12,'Tamara Jewsbury','tjewsburya@dailymail.co.uk','405-909-6331','2023-12-26 16:20:00'),(13,'Ariana Hiscocks','ahiscocksb@tuttocitta.it','917-537-2240','2023-12-26 16:20:00'),(14,'Devland Tice','dticec@hubpages.com','908-330-2056','2023-12-26 16:20:00'),(15,'Farr Viccars','fviccarsd@sitemeter.com','408-553-6064','2023-12-26 16:20:00'),(16,'Noel Flint','nflinte@meetup.com','780-469-2416','2023-12-26 16:20:00'),(17,'Katrinka Catterson','kcattersonf@jalbum.net','393-633-3532','2023-12-26 16:20:00'),(18,'Mireille Lembcke','mlembckeg@chron.com','110-813-9535','2023-12-26 16:20:00'),(19,'Ilse Garlic','igarlich@gravatar.com','275-665-7866','2023-12-26 16:20:00'),(20,'Ellie Lynagh','elynaghi@usa.gov','561-897-4356','2023-12-26 16:20:00'),(21,'Constancia Ruilton','cruiltonj@t.co','231-301-8641','2023-12-26 16:20:00'),(22,'Jobyna Elkington','jelkingtonk@washingtonpost.com','552-219-7451','2023-12-26 16:20:00'),(23,'Catharine Gladstone','cgladstonel@photobucket.com','546-459-8074','2023-12-26 16:20:00'),(24,'Emilio MacKnocker','emacknockerm@artisteer.com','400-839-3649','2023-12-26 16:20:00'),(25,'Etti Valek','evalekn@dagondesign.com','306-609-9828','2023-12-26 16:20:00'),(26,'Delinda Keepin','dkeepino@webnode.com','763-600-9913','2023-12-26 16:20:00'),(27,'Amara McGinny','amcginnyp@yahoo.co.jp','916-556-0058','2023-12-26 16:20:00'),(28,'Selma Brisbane','sbrisbaneq@fotki.com','696-195-8135','2023-12-26 16:20:00'),(29,'Junie Drever','jdreverr@ibm.com','428-188-7580','2023-12-26 16:20:00'),(30,'Micheline Credland','mcredlands@blogspot.com','674-375-1903','2023-12-26 16:20:00'),(31,'Emmott Grimsell','egrimsellt@mail.ru','800-357-9153','2023-12-26 16:20:00'),(32,'Stephi Vallentin','svallentinu@w3.org','556-406-7647','2023-12-26 16:20:00'),(33,'Gweneth Pinchon','gpinchonv@twitter.com','472-595-9918','2023-12-26 16:20:00'),(34,'Uriel Scaife','uscaifew@hud.gov','913-777-8723','2023-12-26 16:20:00'),(35,'Vlad Samms','vsammsx@aol.com','306-538-5304','2023-12-26 16:20:00'),(36,'Erena Tanton','etantony@tinyurl.com','606-544-8906','2023-12-26 16:20:00'),(37,'Marlyn Dyett','mdyettz@whitehouse.gov','507-392-1472','2023-12-26 16:20:00'),(38,'Jean Petti','jpetti10@sakura.ne.jp','500-720-8197','2023-12-26 16:20:00'),(39,'Yovonnda Morman','ymorman11@accuweather.com','571-662-8562','2023-12-26 16:20:00'),(40,'Henderson Spaxman','hspaxman12@google.com.au','238-878-0049','2023-12-26 16:20:00'),(41,'Yetty Want','ywant13@e-recht24.de','665-295-6688','2023-12-26 16:20:00'),(42,'Berny Girone','bgirone14@newyorker.com','226-508-8319','2023-12-26 16:20:00'),(43,'Malvina Dowsing','mdowsing15@bbb.org','858-333-6188','2023-12-26 16:20:00'),(44,'Raddy Ardley','rardley16@addtoany.com','730-297-6122','2023-12-26 16:20:00'),(45,'Fritz Shurey','fshurey17@google.nl','599-627-5426','2023-12-26 16:20:00'),(46,'Blaine Hedon','bhedon18@patch.com','474-883-1882','2023-12-26 16:20:00'),(47,'Toiboid Whitby','twhitby19@imgur.com','576-558-1722','2023-12-26 16:20:00'),(48,'Eben Kitching','ekitching1a@hubpages.com','147-136-2885','2023-12-26 16:20:00'),(49,'Grete Heiden','gheiden1b@pagesperso-orange.fr','114-188-5620','2023-12-26 16:20:00'),(50,'Elsie Beaman','ebeaman1c@storify.com','588-420-3512','2023-12-26 16:20:00'),(51,'Melina Duiged','mduiged1d@youtu.be','935-722-4096','2023-12-26 16:20:00'),(52,'Alaster Sandbach','asandbach1e@apple.com','492-577-9937','2023-12-26 16:20:00'),(53,'Nate Blackman','nblackman1f@hubpages.com','135-224-9025','2023-12-26 16:20:00'),(54,'Bliss Luther','bluther1g@odnoklassniki.ru','626-796-0981','2023-12-26 16:20:00'),(55,'Dalt Triplett','dtriplett1h@hubpages.com','771-193-2686','2023-12-26 16:20:00'),(56,'Brandy Treffrey','btreffrey1i@apple.com','914-648-7282','2023-12-26 16:20:00'),(57,'Hermon Labbe','hlabbe1j@paypal.com','819-964-0710','2023-12-26 16:20:00'),(58,'Eadith Jerrold','ejerrold1k@mozilla.org','696-561-1285','2023-12-26 16:20:00'),(59,'Deva Darrigrand','ddarrigrand1l@github.com','407-735-2231','2023-12-26 16:20:00'),(60,'Celinda Tolfrey','ctolfrey1m@disqus.com','750-700-0299','2023-12-26 16:20:00'),(61,'Eward McGillivray','emcgillivray1n@reuters.com','855-402-1999','2023-12-26 16:20:00'),(62,'Shea Clac','sclac1o@spiegel.de','772-533-5705','2023-12-26 16:20:00'),(63,'Cortie Wales','cwales1p@ox.ac.uk','828-791-2656','2023-12-26 16:20:00'),(64,'Miof mela Cogdell','mmela1q@360.cn','283-225-1909','2023-12-26 16:20:00'),(65,'Chanda Yakunchikov','cyakunchikov1r@time.com','150-824-1615','2023-12-26 16:20:00'),(66,'Bobine Sille','bsille1s@yahoo.co.jp','151-616-2623','2023-12-26 16:20:00'),(67,'Patricio Teggart','pteggart1t@last.fm','626-660-7623','2023-12-26 16:20:00'),(68,'Stevana Dumsday','sdumsday1u@about.me','426-184-9269','2023-12-26 16:20:00'),(69,'Marlo Turpie','mturpie1v@census.gov','664-354-9960','2023-12-26 16:20:00'),(70,'Aile Scotford','ascotford1w@bloomberg.com','839-560-1982','2023-12-26 16:20:00'),(71,'Rudy Seignior','rseignior1x@prweb.com','955-212-5759','2023-12-26 16:20:00'),(72,'Isabeau Heenan','iheenan1y@upenn.edu','867-792-1207','2023-12-26 16:20:00'),(73,'Charlene Plaistowe','cplaistowe1z@meetup.com','993-869-0298','2023-12-26 16:20:00'),(74,'Monty Ortells','mortells20@mysql.com','451-838-5872','2023-12-26 16:20:00'),(75,'Earle Boatwright','eboatwright21@flickr.com','237-489-0062','2023-12-26 16:20:00'),(76,'Mae Sinnie','msinnie22@redcross.org','174-710-5278','2023-12-26 16:20:00'),(77,'Seward Bariball','sbariball23@pbs.org','931-508-4222','2023-12-26 16:20:00'),(78,'Dael Pischof','dpischof24@cdc.gov','299-895-7902','2023-12-26 16:20:00'),(79,'Giacopo Bruhnsen','gbruhnsen25@cloudflare.com','834-563-2226','2023-12-26 16:20:00'),(80,'Tally Hasel','thasel26@usatoday.com','145-205-0333','2023-12-26 16:20:00'),(81,'Kassi Neads','kneads27@zimbio.com','198-822-2033','2023-12-26 16:20:00'),(82,'Karlotta Deppen','kdeppen28@japanpost.jp','734-385-3288','2023-12-26 16:20:00'),(83,'Elna Hastin','ehastin29@geocities.com','220-157-5292','2023-12-26 16:20:00'),(84,'Gabby Gladdolph','ggladdolph2a@so-net.ne.jp','724-522-8109','2023-12-26 16:20:00'),(85,'Beatriz Stainbridge','bstainbridge2b@mysql.com','600-414-8812','2023-12-26 16:20:00'),(86,'Carina Melburg','cmelburg2c@networkadvertising.org','511-563-1141','2023-12-26 16:20:00'),(87,'Yorker Thorne','ythorne2d@fda.gov','386-644-1310','2023-12-26 16:20:00'),(88,'Ernestine Tunney','etunney2e@webs.com','894-731-8838','2023-12-26 16:20:00'),(89,'Halsey Byrcher','hbyrcher2f@state.tx.us','121-504-1390','2023-12-26 16:20:00'),(90,'Kristina Eite','keite2g@csmonitor.com','496-719-5260','2023-12-26 16:20:00'),(91,'Chickie Reasce','creasce2h@stumbleupon.com','415-722-2938','2023-12-26 16:20:00'),(92,'Jayme Swainsbury','jswainsbury2i@army.mil','254-874-1387','2023-12-26 16:20:00'),(93,'Diane Ledes','dledes2j@nydailynews.com','749-650-2327','2023-12-26 16:20:00'),(94,'Terrye Palatino','tpalatino2k@buzzfeed.com','460-862-3095','2023-12-26 16:20:00'),(95,'Garth Lowdeane','glowdeane2l@diigo.com','655-107-5010','2023-12-26 16:20:00'),(96,'Mirabella Lefort','mlefort2m@answers.com','948-878-4464','2023-12-26 16:20:00'),(97,'Sallyanne Scone','sscone2n@epa.gov','957-336-0744','2023-12-26 16:20:00'),(98,'Blanca Harraway','bharraway2o@clickbank.net','485-809-2986','2023-12-26 16:20:00'),(99,'Brande Enevoldsen','benevoldsen2p@google.nl','298-395-6296','2023-12-26 16:20:00'),(100,'Llewellyn Zaple','lzaple2q@hubpages.com','473-953-9877','2023-12-26 16:20:00'),(101,'Ferdy Buessen','fbuessen2r@gmpg.org','246-272-3550','2023-12-26 16:20:00');
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

-- Dump completed on 2023-12-27 16:11:36
