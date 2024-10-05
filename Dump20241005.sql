-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: ebay
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int NOT NULL,
  `CategoryName` varchar(100) NOT NULL,
  `Description` text,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),(3,'Confections','Desserts, candies, and sweet breads'),(4,'Dairy Products','Cheeses'),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal'),(6,'Meat/Poultry','Prepared meats'),(7,'Produce','Dried fruit and bean curd'),(8,'Seafood','Seaweed and fish');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(255) DEFAULT NULL,
  `ContactName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `PostalCode` varchar(20) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany'),(2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','05021','Mexico'),(3,'Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','05023','Mexico'),(4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'),(5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden'),(6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany'),(7,'Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France'),(8,'Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid','28023','Spain'),(9,'Bon app\'','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France'),(10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada'),(11,'B\'s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK'),(12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina'),(13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','México D.F.','05022','Mexico'),(14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland'),(15,'Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil'),(16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK'),(17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany'),(18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France'),(19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK'),(20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria'),(21,'Familia Arquibaldo','Aria Cruz','Rua Orós, 92','São Paulo','05442-030','Brazil'),(22,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain'),(23,'Folies gourmandes','Martine Rancé','184, chaussée de Tournai','Lille','59000','France'),(24,'Folk och fä HB','Maria Larsson','Åkergatan 24','Bräcke','S-844 67','Sweden'),(25,'Frankenversand','Peter Franken','Berliner Platz 43','München','80805','Germany'),(26,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France'),(27,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy'),(28,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Jardim das rosas n. 32','Lisboa','1675','Portugal'),(29,'Galería del gastrónomo','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona','08022','Spain'),(30,'Godos Cocina Típica','José Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain'),(31,'Gourmet Lanchonetes','André Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil'),(32,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA'),(33,'GROSELLA-Restaurante','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela'),(34,'Hanari Carnes','Mario Pontes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brazil'),(35,'HILARIÓN-Abastos','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','5022','Venezuela'),(36,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA'),(37,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork','','Ireland'),(38,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK'),(39,'Königlich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany'),(40,'La corne d\'abondance','Daniel Tonini','67, avenue de l\'Europe','Versailles','78000','France'),(41,'La maison d\'Asie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France'),(42,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada'),(43,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA'),(44,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M.','60528','Germany'),(45,'Let\'s Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA'),(46,'LILA-Supermercado','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','3508','Venezuela'),(47,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela'),(48,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA'),(49,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy'),(50,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium'),(51,'Mère Paillarde','Jean Fresnière','43 rue St. Laurent','Montréal','H1J 1C3','Canada'),(52,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','04179','Germany'),(53,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK'),(54,'Océano Atlántico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina'),(55,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA'),(56,'Ottilies Käseladen','Henriette Pfalzheim','Mehrheimerstr. 369','Köln','50739','Germany'),(57,'Paris spécialités','Marie Bertrand','265, boulevard Charonne','Paris','75012','France'),(58,'Pericles Comidas clásicas','Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.','05033','Mexico'),(59,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria'),(60,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saúde n. 58','Lisboa','1756','Portugal'),(61,'Que Delícia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil'),(62,'Queen Cozinha','Lúcia Carvalho','Alameda dos Canàrios, 891','São Paulo','05487-020','Brazil'),(63,'QUICK-Stop','Horst Kloss','Taucherstraße 10','Cunewalde','01307','Germany'),(64,'Rancho grande','Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires','1010','Argentina'),(65,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA'),(66,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy'),(67,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil'),(68,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','Genève','1203','Switzerland'),(69,'Romero y tomillo','Alejandra Camino','Gran Vía, 1','Madrid','28001','Spain'),(70,'Santé Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway'),(71,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA'),(72,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK'),(73,'Simons bistro','Jytte Petersen','Vinbæltet 34','København','1734','Denmark'),(74,'Spécialités du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France'),(75,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA'),(76,'Suprêmes délices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium'),(77,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA'),(78,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA'),(79,'Toms Spezialitäten','Karin Josephs','Luisenstr. 48','Münster','44087','Germany'),(80,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','México D.F.','05033','Mexico'),(81,'Tradição Hipermercados','Anabela Domingues','Av. Inês de Castro, 414','São Paulo','05634-030','Brazil'),(82,'Trail\'s Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA'),(83,'Vaffeljernet','Palle Ibsen','Smagsløget 45','Århus','8200','Denmark'),(84,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France'),(85,'Vins et alcools Chevalier','Paul Henriot','59 rue de l\'Abbaye','Reims','51100','France'),(86,'Die Wandernde Kuh','Rita Müller','Adenauerallee 900','Stuttgart','70563','Germany'),(87,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland'),(88,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil'),(89,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA'),(90,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland'),(91,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012','Poland');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `BirthDate` date NOT NULL,
  `Photo` varchar(100) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Davolio','Nancy','1968-12-08','EmpID1.pic','Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of Toastmasters International.'),(2,'Fuller','Andrew','1952-02-19','EmpID2.pic','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),(3,'Leverling','Janet','1963-08-30','EmpID3.pic','Janet has a BS degree in chemistry from Boston College. She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),(4,'Peacock','Margaret','1958-09-19','EmpID4.pic','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),(5,'Buchanan','Steven','1955-03-04','EmpID5.pic','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses \"Successful Telemarketing\" and \"International Sales Management\". He is fluent in French.'),(6,'Suyama','Michael','1963-07-02','EmpID6.pic','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses \"Multi-Cultural Selling\" and \"Time Management for the Sales Professional\". He is fluent in Japanese and can read and write French, Portuguese, and Spanish.'),(7,'King','Robert','1960-05-29','EmpID7.pic','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled \"Selling in Europe\", he was transferred to the London office.'),(8,'Callahan','Laura','1958-01-09','EmpID8.pic','Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.'),(9,'Dodsworth','Anne','1969-07-02','EmpID9.pic','Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.'),(10,'West','Adam','1928-09-19','EmpID10.pic','An old chum.');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` int NOT NULL,
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`OrderDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,10248,11,12),(2,10248,42,10),(3,10248,72,5),(4,10249,14,9),(5,10249,51,40),(6,10250,41,10),(7,10250,51,35),(8,10250,65,15),(9,10251,22,6),(10,10251,57,15),(11,10251,65,20),(12,10252,20,40),(13,10252,33,25),(14,10252,60,40),(15,10253,31,20),(16,10253,39,42),(17,10253,49,40),(18,10254,24,15),(19,10254,55,21),(20,10254,74,21),(21,10255,2,20),(22,10255,16,35),(23,10255,36,25),(24,10255,59,30),(25,10256,53,15),(26,10256,77,12),(27,10257,27,25),(28,10257,39,6),(29,10257,77,15),(30,10258,2,50),(31,10258,5,65),(32,10258,32,6),(33,10259,21,10),(34,10259,37,1),(35,10260,41,16),(36,10260,57,50),(37,10260,62,15),(38,10260,70,21),(39,10261,21,20),(40,10261,35,20),(41,10262,5,12),(42,10262,7,15),(43,10262,56,2),(44,10263,16,60),(45,10263,24,28),(46,10263,30,60),(47,10263,74,36),(48,10264,2,35),(49,10264,41,25),(50,10265,17,30),(51,10265,70,20),(52,10266,12,12),(53,10267,40,50),(54,10267,59,70),(55,10267,76,15),(56,10268,29,10),(57,10268,72,4),(58,10269,33,60),(59,10269,72,20),(60,10270,36,30),(61,10270,43,25),(62,10271,33,24),(63,10272,20,6),(64,10272,31,40),(65,10272,72,24),(66,10273,10,24),(67,10273,31,15),(68,10273,33,20),(69,10273,40,60),(70,10273,76,33),(71,10274,71,20),(72,10274,72,7),(73,10275,24,12),(74,10275,59,6),(75,10276,10,15),(76,10276,13,10),(77,10277,28,20),(78,10277,62,12),(79,10278,44,16),(80,10278,59,15),(81,10278,63,8),(82,10278,73,25),(83,10279,17,15),(84,10280,24,12),(85,10280,55,20),(86,10280,75,30),(87,10281,19,1),(88,10281,24,6),(89,10281,35,4),(90,10282,30,6),(91,10282,57,2),(92,10283,15,20),(93,10283,19,18),(94,10283,60,35),(95,10283,72,3),(96,10284,27,15),(97,10284,44,21),(98,10284,60,20),(99,10284,67,5),(100,10285,1,45),(101,10285,40,40),(102,10285,53,36),(103,10286,35,100),(104,10286,62,40),(105,10287,16,40),(106,10287,34,20),(107,10287,46,15),(108,10288,54,10),(109,10288,68,3),(110,10289,3,30),(111,10289,64,9),(112,10290,5,20),(113,10290,29,15),(114,10290,49,15),(115,10290,77,10),(116,10291,13,20),(117,10291,44,24),(118,10291,51,2),(119,10292,20,20),(120,10293,18,12),(121,10293,24,10),(122,10293,63,5),(123,10293,75,6),(124,10294,1,18),(125,10294,17,15),(126,10294,43,15),(127,10294,60,21),(128,10294,75,6),(129,10295,56,4),(130,10296,11,12),(131,10296,16,30),(132,10296,69,15),(133,10297,39,60),(134,10297,72,20),(135,10298,2,40),(136,10298,36,40),(137,10298,59,30),(138,10298,62,15),(139,10299,19,15),(140,10299,70,20),(141,10300,66,30),(142,10300,68,20),(143,10301,40,10),(144,10301,56,20),(145,10302,17,40),(146,10302,28,28),(147,10302,43,12),(148,10303,40,40),(149,10303,65,30),(150,10303,68,15),(151,10304,49,30),(152,10304,59,10),(153,10304,71,2),(154,10305,18,25),(155,10305,29,25),(156,10305,39,30),(157,10306,30,10),(158,10306,53,10),(159,10306,54,5),(160,10307,62,10),(161,10307,68,3),(162,10308,69,1),(163,10308,70,5),(164,10309,4,20),(165,10309,5,30),(166,10309,29,35),(167,10310,16,24),(168,10310,62,40),(169,10311,42,20),(170,10311,69,9),(171,10312,28,42),(172,10312,43,20),(173,10312,77,24),(174,10313,17,8),(175,10313,30,12),(176,10313,46,45),(177,10314,4,35),(178,10314,24,18),(179,10314,77,7),(180,10315,11,50),(181,10315,16,12),(182,10315,19,7),(183,10316,2,24),(184,10316,47,10),(185,10316,76,10),(186,10317,24,21),(187,10317,34,20),(188,10317,36,35),(189,10317,60,24),(190,10318,41,6),(191,10318,55,4),(192,10318,60,30),(193,10319,17,25),(194,10319,41,6),(195,10319,76,18),(196,10320,35,60),(197,10320,46,15),(198,10321,39,8),(199,10321,58,15),(200,10322,2,50),(201,10322,42,40),(202,10323,11,15),(203,10323,50,15),(204,10324,10,16),(205,10324,52,20),(206,10324,62,35),(207,10325,19,21),(208,10325,47,40),(209,10325,53,18),(210,10326,38,30),(211,10326,46,25),(212,10327,2,50),(213,10327,68,20),(214,10328,4,28),(215,10328,36,20),(216,10328,47,30),(217,10329,14,30),(218,10329,21,40),(219,10329,71,2),(220,10330,1,15),(221,10330,51,20),(222,10330,69,20),(223,10331,10,20),(224,10331,19,25),(225,10332,17,30),(226,10332,33,8),(227,10332,40,20),(228,10333,19,15),(229,10333,34,10),(230,10333,57,6),(231,10333,71,5),(232,10334,28,15),(233,10334,39,21),(234,10334,46,10),(235,10334,53,36),(236,10335,4,18),(237,10335,60,35),(238,10336,1,10),(239,10336,18,9),(240,10336,56,5),(241,10337,9,6),(242,10337,41,10),(243,10338,35,12),(244,10338,55,20),(245,10339,16,56),(246,10339,34,40),(247,10339,62,40),(248,10340,19,21),(249,10340,47,40),(250,10340,55,35),(251,10341,39,8),(252,10341,58,15),(253,10342,28,42),(254,10342,43,20),(255,10342,61,30),(256,10342,77,24),(257,10343,4,50),(258,10343,24,20),(259,10343,77,7),(260,10344,11,10),(261,10344,19,7),(262,10344,29,6),(263,10344,60,8),(264,10345,2,24),(265,10345,47,8),(266,10345,76,30),(267,10346,32,15),(268,10346,60,40),(269,10347,24,25),(270,10347,34,20),(271,10347,36,30),(272,10348,17,4),(273,10348,28,20),(274,10348,43,15),(275,10348,75,5),(276,10349,14,12),(277,10349,21,15),(278,10349,51,20),(279,10350,52,50),(280,10350,68,30),(281,10351,19,18),(282,10351,24,36),(283,10351,35,120),(284,10352,19,28),(285,10352,38,60),(286,10352,60,55),(287,10353,1,8),(288,10353,40,30),(289,10354,17,36),(290,10354,20,20),(291,10354,31,60),(292,10355,24,25),(293,10355,34,10),(294,10355,36,10),(295,10355,52,4),(296,10356,53,3),(297,10356,69,5),(298,10357,11,15),(299,10357,18,6),(300,10357,23,40),(301,10358,7,25),(302,10358,43,9),(303,10359,28,7),(304,10359,62,10),(305,10360,55,6),(306,10360,70,10),(307,10361,14,20),(308,10361,21,30),(309,10361,71,2),(310,10362,1,50),(311,10362,40,24),(312,10362,52,18),(313,10363,18,20),(314,10363,30,15),(315,10363,54,10),(316,10363,61,20),(317,10364,41,24),(318,10364,42,20),(319,10365,17,2),(320,10365,33,20),(321,10366,13,56),(322,10366,62,16),(323,10367,1,45),(324,10367,60,20),(325,10368,11,12),(326,10368,30,30),(327,10368,49,25),(328,10369,10,20),(329,10369,28,15),(330,10369,75,12),(331,10370,21,40),(332,10370,32,25),(333,10370,61,25),(334,10371,19,20),(335,10371,54,30),(336,10371,59,35),(337,10371,64,30),(338,10372,14,18),(339,10372,19,7),(340,10372,21,8),(341,10373,35,60),(342,10373,68,20),(343,10373,71,15),(344,10374,10,20),(345,10374,28,30),(346,10374,43,24),(347,10374,77,30),(348,10375,52,20),(349,10375,53,18),(350,10375,69,24),(351,10376,19,15),(352,10376,23,15),(353,10376,40,20),(354,10377,13,8),(355,10377,50,15),(356,10378,69,30),(357,10378,71,5),(358,10379,41,10),(359,10379,52,4),(360,10379,55,30),(361,10380,17,20),(362,10380,30,15),(363,10380,66,10),(364,10380,70,25),(365,10381,54,24),(366,10381,62,20),(367,10382,13,8),(368,10382,62,35),(369,10382,70,30),(370,10383,29,10),(371,10383,30,10),(372,10383,51,30),(373,10384,1,15),(374,10384,13,10),(375,10384,56,20),(376,10385,53,12),(377,10385,60,35),(378,10385,70,20),(379,10386,19,10),(380,10386,30,8),(381,10386,38,20),(382,10387,40,28),(383,10387,47,6),(384,10388,1,45),(385,10388,58,30),(386,10388,71,35),(387,10389,18,20),(388,10389,56,12),(389,10389,68,18),(390,10390,35,20),(391,10390,62,35),(392,10390,68,15),(393,10391,21,20),(394,10391,30,30),(395,10391,55,20),(396,10392,1,15),(397,10392,13,10),(398,10392,56,20),(399,10393,31,20),(400,10393,55,12),(401,10393,69,20),(402,10393,70,15),(403,10394,21,5),(404,10394,46,20),(405,10394,52,30),(406,10395,41,24),(407,10395,51,20),(408,10396,51,2),(409,10396,65,5),(410,10396,71,4),(411,10397,31,50),(412,10397,66,12),(413,10398,35,30),(414,10398,38,20),(415,10398,68,60),(416,10399,2,40),(417,10399,59,25),(418,10399,70,50),(419,10400,17,45),(420,10400,56,20),(421,10400,30,18),(422,10401,12,12),(423,10401,16,30),(424,10401,59,16),(425,10402,55,12),(426,10402,62,35),(427,10403,65,21),(428,10403,56,12),(429,10403,63,16),(430,10403,75,30),(431,10404,6,6),(432,10404,14,9),(433,10405,31,50),(434,10405,66,10),(435,10406,25,30),(436,10406,70,20),(437,10406,77,40),(438,10407,41,20),(439,10407,63,30),(440,10408,1,25),(441,10408,31,40),(442,10408,66,12),(443,10409,9,50),(444,10409,19,20),(445,10410,6,10),(446,10410,17,70),(447,10410,35,60),(448,10411,1,20),(449,10411,13,2),(450,10411,56,20),(451,10412,55,65),(452,10412,70,40),(453,10413,30,40),(454,10413,50,25),(455,10414,19,15),(456,10414,26,30),(457,10414,30,60),(458,10415,35,40),(459,10415,43,20),(460,10416,1,25),(461,10416,62,15),(462,10416,70,20),(463,10417,55,10),(464,10417,35,5),(465,10417,70,12),(466,10418,55,40),(467,10418,70,20),(468,10418,77,30),(469,10419,31,50),(470,10419,70,15),(471,10420,1,10),(472,10420,18,30),(473,10420,21,40),(474,10421,1,12),(475,10421,35,4),(476,10422,41,10),(477,10422,46,20),(478,10423,1,15),(479,10423,30,30),(480,10424,35,25),(481,10424,56,4),(482,10424,70,30),(483,10425,31,35),(484,10425,66,60),(485,10425,52,12),(486,10426,19,30),(487,10426,59,70),(488,10426,70,20),(489,10427,13,8),(490,10427,19,20),(491,10428,54,10),(492,10428,73,15),(493,10429,62,10),(494,10429,77,30),(495,10430,4,20),(496,10430,22,10),(497,10431,11,40),(498,10431,19,10),(499,10431,77,20),(500,10432,1,60),(501,10432,69,40),(502,10433,7,4),(503,10433,17,20),(504,10434,4,35),(505,10434,8,70),(506,10434,19,30),(507,10435,13,6),(508,10435,21,25),(509,10436,21,20),(510,10436,51,15),(511,10437,19,16),(512,10437,72,12),(513,10438,70,30),(514,10438,77,14),(515,10439,19,50),(516,10439,70,60),(517,10440,31,35),(518,10440,60,50);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `ShipperID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10248,90,5,'1996-07-04',3),(10249,81,6,'1996-07-05',1),(10250,34,4,'1996-07-08',2),(10251,84,3,'1996-07-08',1),(10252,76,4,'1996-07-09',2),(10253,34,3,'1996-07-10',2),(10254,14,5,'1996-07-11',2),(10255,68,6,'1996-07-12',1),(10256,88,3,'1996-07-15',2),(10257,14,4,'1996-07-16',3),(10258,39,4,'1996-07-17',1),(10259,55,4,'1996-07-18',1),(10260,80,6,'1996-07-19',2),(10261,41,2,'1996-07-20',2),(10262,53,6,'1996-07-21',2),(10263,34,5,'1996-07-22',3),(10264,32,5,'1996-07-23',2),(10265,64,4,'1996-07-24',3),(10266,24,4,'1996-07-25',2),(10267,75,3,'1996-07-26',1),(10268,18,4,'1996-07-27',2),(10269,20,4,'1996-07-28',2),(10270,54,5,'1996-07-29',3),(10271,73,5,'1996-07-30',1),(10272,55,4,'1996-07-31',1),(10273,84,4,'1996-08-01',3),(10274,88,4,'1996-08-02',1),(10275,20,5,'1996-08-03',2),(10276,73,2,'1996-08-04',3),(10277,66,5,'1996-08-05',2),(10278,60,3,'1996-08-06',1),(10279,93,5,'1996-08-07',2),(10280,70,4,'1996-08-08',2),(10281,37,3,'1996-08-09',1),(10282,90,6,'1996-08-10',1),(10283,12,4,'1996-08-11',2),(10284,35,4,'1996-08-12',3),(10285,95,6,'1996-08-13',1),(10286,46,5,'1996-08-14',2),(10287,67,5,'1996-08-15',3),(10288,78,3,'1996-08-16',1),(10289,55,4,'1996-08-17',1),(10290,60,4,'1996-08-18',2),(10291,23,3,'1996-08-19',2),(10292,32,5,'1996-08-20',1),(10293,36,4,'1996-08-21',2),(10294,52,5,'1996-08-22',3),(10295,45,3,'1996-08-23',2),(10296,11,4,'1996-08-24',1),(10297,42,5,'1996-08-25',1),(10298,50,6,'1996-08-26',3),(10299,99,4,'1996-08-27',2),(10300,16,2,'1996-08-28',3),(10301,18,5,'1996-08-29',1),(10302,31,4,'1996-08-30',2),(10303,20,3,'1996-08-31',3),(10304,34,5,'1996-09-01',1),(10305,86,5,'1996-09-02',1),(10306,19,4,'1996-09-03',2),(10307,25,6,'1996-09-04',2),(10308,50,4,'1996-09-05',3),(10309,88,5,'1996-09-06',1),(10310,31,4,'1996-09-07',2),(10311,66,3,'1996-09-08',3),(10312,62,2,'1996-09-09',1),(10313,99,5,'1996-09-10',2),(10314,48,4,'1996-09-11',3),(10315,27,4,'1996-09-12',1),(10316,39,6,'1996-09-13',2),(10317,18,5,'1996-09-14',3),(10318,81,2,'1996-09-15',1),(10319,80,3,'1996-09-16',1),(10320,84,6,'1996-09-17',2),(10321,55,4,'1996-09-18',2),(10322,22,4,'1996-09-19',1),(10323,47,5,'1996-09-20',1),(10324,15,3,'1996-09-21',2),(10325,24,6,'1996-09-22',3),(10326,98,5,'1996-09-23',1),(10327,39,4,'1996-09-24',2),(10328,74,2,'1996-09-25',1),(10329,37,4,'1996-09-26',3),(10330,92,5,'1996-09-27',1),(10331,72,3,'1996-09-28',2),(10332,77,6,'1996-09-29',1),(10333,53,4,'1996-09-30',1),(10334,56,5,'1996-10-01',3),(10335,35,2,'1996-10-02',2),(10336,45,5,'1996-10-03',3),(10337,67,4,'1996-10-04',1),(10338,81,4,'1996-10-05',1),(10339,30,3,'1996-10-06',2),(10340,57,5,'1996-10-07',3),(10341,25,6,'1996-10-08',1),(10342,19,4,'1996-10-09',2),(10343,61,5,'1996-10-10',2),(10344,48,3,'1996-10-11',3),(10345,68,4,'1996-10-12',1),(10346,43,2,'1996-10-13',2),(10347,10,4,'1996-10-14',3),(10348,36,5,'1996-10-15',1),(10349,90,4,'1996-10-16',2),(10350,64,5,'1996-10-17',2),(10351,89,3,'1996-10-18',1),(10352,53,6,'1996-10-19',1),(10353,25,4,'1996-10-20',2),(10354,14,5,'1996-10-21',3),(10355,74,4,'1996-10-22',1),(10356,34,6,'1996-10-23',2),(10357,31,4,'1996-10-24',2),(10358,12,5,'1996-10-25',1),(10359,33,4,'1996-10-26',3),(10360,93,2,'1996-10-27',1),(10361,99,6,'1996-10-28',2),(10362,71,4,'1996-10-29',3),(10363,37,5,'1996-10-30',1),(10364,50,4,'1996-10-31',2),(10365,63,5,'1996-11-01',1),(10366,66,6,'1996-11-02',1),(10367,52,4,'1996-11-03',3),(10368,48,3,'1996-11-04',2),(10369,22,5,'1996-11-05',1),(10370,75,4,'1996-11-06',2),(10371,58,5,'1996-11-07',1),(10372,29,4,'1996-11-08',3),(10373,65,5,'1996-11-09',1),(10374,49,6,'1996-11-10',2),(10375,73,4,'1996-11-11',3),(10376,18,4,'1996-11-12',1),(10377,95,3,'1996-11-13',2),(10378,90,4,'1996-11-14',2),(10379,64,5,'1996-11-15',3),(10380,61,4,'1996-11-16',1),(10381,15,6,'1996-11-17',1),(10382,74,4,'1996-11-18',2),(10383,46,5,'1996-11-19',1),(10384,92,4,'1996-11-20',2),(10385,35,3,'1996-11-21',2),(10386,68,5,'1996-11-22',3),(10387,34,4,'1996-11-23',1),(10388,32,6,'1996-11-24',2),(10389,37,5,'1996-11-25',1),(10390,76,4,'1996-11-26',3),(10391,27,5,'1996-11-27',1),(10392,49,4,'1996-11-28',2),(10393,16,3,'1996-11-29',3),(10394,11,6,'1996-11-30',1),(10395,79,4,'1996-12-01',2),(10396,56,5,'1996-12-02',1),(10397,26,4,'1996-12-03',1),(10398,57,5,'1996-12-04',2),(10399,38,4,'1996-12-05',2),(10400,48,5,'1996-12-06',1),(10401,52,3,'1996-12-07',2),(10402,75,5,'1996-12-08',1),(10403,92,4,'1996-12-09',1),(10404,61,3,'1996-12-10',2),(10405,17,5,'1996-12-11',1),(10406,24,4,'1996-12-12',1),(10407,30,5,'1996-12-13',2),(10408,21,4,'1996-12-14',2),(10409,84,5,'1996-12-15',1),(10410,50,4,'1996-12-16',1),(10411,74,2,'1996-12-17',3),(10412,69,3,'1996-12-18',2),(10413,29,5,'1996-12-19',1),(10414,63,4,'1996-12-20',1),(10415,35,6,'1996-12-21',2),(10416,96,5,'1996-12-22',1),(10417,33,4,'1996-12-23',2),(10418,20,6,'1996-12-24',2),(10419,32,3,'1996-12-25',3),(10420,88,5,'1996-12-26',1),(10421,15,4,'1996-12-27',2),(10422,19,6,'1996-12-28',2),(10423,94,5,'1996-12-29',1),(10424,42,4,'1996-12-30',2),(10425,12,5,'1996-12-31',1),(10426,54,3,'1997-01-01',2),(10427,86,4,'1997-01-02',1),(10428,77,2,'1997-01-03',3),(10429,81,4,'1997-01-04',1),(10430,68,5,'1997-01-05',1),(10431,90,4,'1997-01-06',2),(10432,88,3,'1997-01-07',3),(10433,20,5,'1997-01-08',1),(10434,35,4,'1997-01-09',2),(10435,30,6,'1997-01-10',2),(10436,47,3,'1997-01-11',1),(10437,36,5,'1997-01-12',2),(10438,27,4,'1997-01-13',1),(10439,71,5,'1997-01-14',2),(10440,45,6,'1997-01-15',1),(10441,25,4,'1997-01-16',1),(10442,53,5,'1997-01-17',3),(10443,44,2,'1997-01-18',2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `SupplierID` (`SupplierID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Chais',1,1,'10 boxes x 20 bags',18.00),(2,'Chang',1,1,'24 - 12 oz bottles',19.00),(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10.00),(4,'Chef Anton\'s Cajun Seasoning',2,2,'48 - 6 oz jars',22.00),(5,'Chef Anton\'s Gumbo Mix',2,2,'36 boxes',21.35),(6,'Grandma\'s Boysenberry Spread',3,2,'12 - 8 oz jars',25.00),(7,'Uncle Bob\'s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30.00),(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40.00),(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97.00),(10,'Ikura',4,8,'12 - 200 ml jars',31.00),(11,'Queso Cabrales',5,4,'1 kg pkg.',21.00),(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38.00),(13,'Konbu',6,8,'2 kg box',6.00),(14,'Tofu',6,7,'40 - 100 g pkgs.',23.25),(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.50),(16,'Pavlova',7,3,'32 - 500 g boxes',17.45),(17,'Alice Mutton',7,6,'20 - 1 kg tins',39.00),(18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.50),(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.20),(20,'Sir Rodney\'s Marmalade',8,3,'30 gift boxes',81.00),(21,'Sir Rodney\'s Scones',8,3,'24 pkgs. x 4 pieces',10.00),(22,'Gustaf\'s Knäckebröd',9,5,'24 - 500 g pkgs.',21.00),(23,'Geitost',15,4,'500 g',2.50),(24,'Guaraná Fantástica',10,1,'12 - 355 ml cans',4.50),(25,'NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14.00),(26,'Gumbär Gummibärchen',11,3,'100 - 250 g bags',31.23),(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.90),(28,'Rössle Sauerkraut',12,7,'25 - 825 g cans',45.60),(29,'Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79),(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89),(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.50),(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32.00),(33,'Geitost',15,4,'500 g',2.50),(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14.00),(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18.00),(36,'Inlagd Sill',17,8,'24 - 250 g jars',19.00),(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26.00),(38,'Côte de Blaye',18,1,'12 - 75 cl bottles',263.50),(39,'Chartreuse verte',18,1,'750 cc per bottle',18.00),(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.40),(41,'Jack\'s New England Clam Chowder',19,8,'12 - 12 oz cans',9.65),(42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14.00),(43,'Ipoh Coffee',20,1,'16 - 500 g tins',46.00),(44,'Gula Malacca',20,2,'20 - 2 kg bags',19.45),(45,'Røgede sild',21,8,'1k pkg.',9.50),(46,'Spegesild',21,8,'4 - 450 g glasses',12.00),(47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.50),(48,'Chocolade',22,3,'10 pkgs.',12.75),(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20.00),(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.25),(51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53.00),(52,'Filo Mix',24,5,'16 - 2 kg boxes',7.00),(53,'Perth Pasties',24,6,'48 pieces',32.80),(54,'Tourtière',25,6,'16 pies',7.45),(55,'Pâté chinois',25,6,'24 boxes x 2 pies',24.00),(56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38.00),(57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.50),(58,'Escargots de Bourgogne',27,8,'24 pieces',13.25),(59,'Raclette Courdavault',28,4,'5 kg pkg.',55.00),(60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34.00),(61,'Sirop d\'érable',29,2,'24 - 500 ml bottles',28.50),(62,'Tarte au sucre',29,3,'48 pies',49.30),(63,'Vegie-spread',7,2,'15 - 625 g jars',43.90),(64,'Wimmers gute Semmelknödel',12,5,'20 bags x 4 pieces',33.25),(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.05),(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17.00),(67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14.00),(68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.50),(69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36.00),(70,'Outback Lager',7,1,'24 - 355 ml bottles',15.00),(71,'Fløtemysost',15,4,'10 - 500 g pkgs.',21.50),(72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.80),(73,'Röd Kaviar',17,8,'24 - 150 g jars',15.00),(74,'Longlife Tofu',4,7,'5 kg pkg.',10.00),(75,'Rhönbräu Klosterbier',12,1,'24 - 0.5 l bottles',7.75),(76,'Lakkalikööri',23,1,'500 ml',18.00),(77,'Original Frankfurter grüne Soße',12,2,'12 boxes',13.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippers` (
  `ShipperID` int NOT NULL,
  `ShipperName` varchar(255) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ShipperID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` VALUES (1,'Speedy Express','(503) 555-9831'),(2,'United Package','(503) 555-3199'),(3,'Federal Shipping','(503) 555-9931');
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` int NOT NULL,
  `SupplierName` varchar(100) DEFAULT NULL,
  `ContactName` varchar(100) DEFAULT NULL,
  `ContactTitle` varchar(50) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `PostalCode` varchar(20) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Fax` varchar(20) DEFAULT NULL,
  `HomePage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Exotic Liquids','Charlotte Cooper','Purchasing Manager','49 Gilbert St.','London',NULL,'EC1 4SD','UK','123-456-7890','123-456-7891','http://www.exoticliquids.com'),(2,'New Orleans Cajun Delights','Shelley Burke','Chef','P.O. Box 78934','New Orleans','LA','70117','USA','504-555-0132',NULL,NULL),(3,'Grandma Kelly\'s Homestead','Regina Murphy','Sales Associate','707 3rd St.','Ann Arbor','MI','48103','USA','734-555-0154',NULL,NULL),(4,'Tokyo Traders','Yoshi Tannamuri','Marketing Manager','1-2-3, Marunouchi','Tokyo',NULL,'100-0005','Japan','03-1234-5678',NULL,NULL),(5,'Cooperativa de Quesos','Antonio Moreno','Owner','Calle del Cielo, 14','Madrid',NULL,'28000','Spain','91-123-4567',NULL,NULL),(6,'Ma Maison','François','Owner','16 rue de la paix','Paris',NULL,'75002','France','01-23-45-67-89',NULL,NULL),(7,'Pavlova, Ltd.','Kathy','Sales Manager','12 Pavlova St.','Moscow',NULL,'101000','Russia','7-123-4567',NULL,NULL),(8,'Specialty Biscuits, Ltd.','Philippe','Owner','63 rue de l\'Amour','Lille',NULL,'59000','France','03-123-4567',NULL,NULL),(9,'Refrescos Americanas LTDA','João','Marketing Manager','Av. dos Estados, 1000','São Paulo',NULL,'04500-000','Brazil','11-1234-5678',NULL,NULL),(10,'Café de Brasil','Thiago','Sales Manager','Rua das Flores, 123','Rio de Janeiro',NULL,'22211-000','Brazil','21-1234-5678',NULL,NULL),(11,'Comércio de Queijos','Miguel','Owner','Avenida do Café, 789','Lisbon',NULL,'1000-000','Portugal','21-123-4567',NULL,NULL),(12,'Café Candelaria','Ana','Owner','Rua Candelaria, 56','São Paulo',NULL,'01234-000','Brazil','11-2345-6789',NULL,NULL),(13,'Antônio Mendes','Antônio','Owner','Rua do Comércio, 200','Lisbon',NULL,'1100-000','Portugal','21-567-8901',NULL,NULL),(14,'A Taste of Italy','Francesca','Owner','Via Roma, 123','Rome',NULL,'00100','Italy','06-1234-5678',NULL,NULL),(15,'Simpson Imports','Samantha','Manager','1000 Import St.','Los Angeles','CA','90001','USA','213-555-0190',NULL,NULL),(16,'Ricardo Silva','Ricardo','Owner','Avenida dos Cometas, 500','Lisbon',NULL,'1000-000','Portugal','21-234-5678',NULL,NULL),(17,'Hank\'s Liqueurs','Hank','Owner','123 Liqueurs Lane','Houston','TX','77001','USA','713-555-0190',NULL,NULL),(18,'Maja Li','Maja','Owner','12 Wine St.','Beijing',NULL,'100000','China','010-1234-5678',NULL,NULL),(19,'Bokado','Frida','Owner','Calle de las Flores, 45','Barcelona',NULL,'08000','Spain','93-123-4567',NULL,NULL),(20,'Famous Liqueurs','Anna','Sales Associate','100 Liqueurs Rd.','San Francisco','CA','94101','USA','415-555-0190',NULL,NULL),(21,'Château de France','Henri','Owner','Château St., 1','Bordeaux',NULL,'33000','France','05-57-56-32-32',NULL,NULL),(22,'Condimentos Culturales','Salvador','Sales Manager','Calle de la Cultura, 60','Valencia',NULL,'46000','Spain','96-123-4567',NULL,NULL),(23,'Salsas del Mundo','Manuel','Owner','Calle de las Salsas, 15','Madrid',NULL,'28001','Spain','91-123-4568',NULL,NULL),(24,'Naturally Fresh','William','Sales Manager','30 Fresh Lane','Denver','CO','80202','USA','303-555-0123',NULL,NULL),(25,'Northwoods Cranberries','Mary','Sales Representative','P.O. Box 100','Eugene','OR','97401','USA','541-555-1234',NULL,NULL),(26,'Tuscany Fine Foods','Giovanni','Owner','Via Firenze, 24','Florence',NULL,'50100','Italy','055-123-4567',NULL,NULL),(27,'Lobster\'s Cove','Lisa','Sales Manager','123 Lobster St.','Boston','MA','02110','USA','617-555-0180',NULL,NULL),(28,'Dr. D\'s','David','Owner','123 Health St.','Seattle','WA','98101','USA','206-555-0145',NULL,NULL),(29,'Caffe Italia','Mario','Owner','Via Roma, 20','Rome',NULL,'00100','Italy','06-1234-5678',NULL,NULL),(30,'Pasta Italia','Luigi','Owner','Via della Pasta, 45','Naples',NULL,'80100','Italy','081-123-4567',NULL,NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ebay'
--

--
-- Dumping routines for database 'ebay'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-05 20:45:21
