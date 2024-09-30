-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.11.7-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `CUSTOMER_FNAME` varchar(30) DEFAULT NULL,
  `CUSTOMER_LNAME` varchar(30) DEFAULT NULL,
  `MEMBERSHIP_STATUS` varchar(30) DEFAULT NULL,
  `STREET_NUMBER` char(10) DEFAULT NULL,
  `STREET_NAME` varchar(30) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  `ZIPCODE` char(10) DEFAULT NULL,
  `STATE` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES
(15,'Hanna','Grimes','','4804','Malvina Mill','Romaview','20984-4684','Delaware'),
(23,'Garrick','Heller','','8985','Wilmer Estate','Ephraimland','80569','Idaho'),
(39,'Shane','Hagenes','','8015','Alphonso Park','Uptonburgh','47516','Connecticut'),
(41,'Alyson','Schaden','1','6932','Boyer Well','Manteberg','20601-0569','Wisconsin'),
(44,'Jenifer','King','','1771','Luis Lakes','Kirahaven','34328-7319','Kentucky'),
(48,'Jordi','Mitchell','1','1203','Mattie Shoal','South Jamey','92618','Louisiana'),
(63,'Kenyon','Spinka','1','8316','Turcotte Loop','Rudolphton','48819-3780','District of Columbia'),
(67,'Alvah','Balistreri','','919','Branson Parkway','Port Elyssafort','58073-8559','Nevada'),
(75,'Leonardo','Jakubowski','1','5088','Donnelly Lake','West Cecil','12929-4937','Missouri'),
(81,'Randi','Smitham','1','4777','Rippin Cove','New Hadleystad','46592','California'),
(82,'Pearl','Rogahn','1','2281','Conroy Dale','Funktown','86860','Pennsylvania'),
(100,'Mara','Renner','1','9541','Mayra Loop','East Reynoldshire','98588-8824','Massachusetts'),
(105,'Johnson','Runte','1','5517','Hailee Cliff','Lake Wilbertborough','14335','Arizona'),
(113,'Darrin','Ankunding','1','3058','Sibyl Prairie','Schuppeshire','02291','Alaska'),
(116,'Tatum','Blick','1','809','Breanna Points','North Timmothy','48244','Texas'),
(157,'Brenden','Crist','','5372','Aufderhar Coves','Riceland','62628-7803','California'),
(159,'Arnold','Rutherford','1','5035','Predovic Circle','Myriamborough','58959-2742','Minnesota'),
(161,'Gust','Cronin','1','8120','Lawrence Drive','West Jedidiahtown','71087-8273','NorthDakota'),
(162,'Donna','Brakus','','5239','Tobin Square','Windlerview','84062-3665','Arizona'),
(170,'Eldridge','Beier','1','9284','Raina Drive','Kemmerstad','17950-4908','NorthDakota'),
(173,'Jennifer','O\'Conner','1','1568','Taya Course','Bobbychester','25050-7174','WestVirginia'),
(190,'Johnnie','Braun','1','7811','Geovanni Plaza','Leonardoton','37055','SouthCarolina'),
(199,'Colleen','Rohan','','2419','Mollie Glens','Mannside','56555-9561','SouthDakota'),
(228,'Madilyn','Langosh','','6341','Cruickshank Square','Hilpertstad','48049-3308','Indiana'),
(230,'Carmela','Erdman','','8392','Barrows Throughway','Hollyville','48244-7867','NewMexico'),
(247,'Everette','Bednar','','7712','Opal Falls','Fernandobury','44611','Alabama'),
(248,'Leif','Kohler','1','8550','Roob Ford','Lake Amiya','65711','Florida'),
(249,'Estrella','Feil','','2422','Hassan Coves','North Eleanoraport','68069-9644','Idaho'),
(262,'Paige','Goldner','1','9371','Dameon Forge','Port Zoiestad','21794','Minnesota'),
(295,'Harmon','Ortiz','','7944','D\'Amore Circle','North Leslymouth','66824','SouthCarolina'),
(301,'Reina','Bernhard','1','7979','Kuhn Garden','West Elnora','73114','Oklahoma'),
(303,'Lisandro','Eichmann','1','633','Magali Estate','Koeppberg','84047-2742','NorthCarolina'),
(307,'Willis','Mertz','','7053','Stokes Meadows','South Leopoldoland','14015-1480','RhodeIsland'),
(320,'Pietro','Reilly','1','6451','Jazmin Expressway','Gradystad','85755','Minnesota'),
(324,'Carolina','Beatty','','2667','Kunde Turnpike','West Reynaborough','30351-7558','Montana'),
(325,'Avis','Jacobi','','5239','Conn Dale','New Israel','07917','Arkansas'),
(328,'Ardith','Robel','1','1496','Kylee Unions','South Leland','09416','Louisiana'),
(394,'Monte','Gutkowski','1','8068','Kertzmann Centers','Dollyton','84569','SouthDakota'),
(404,'Parker','Rau','1','9282','Kathlyn Greens','Millerborough','32614','Nebraska'),
(408,'Agnes','King','1','6217','Keebler Cape','South Elodyfurt','65051','Utah'),
(412,'Mozelle','Hauck','','5594','Constantin Lock','West Benedict','56579','Alaska'),
(417,'Destin','Wyman','1','995','Vladimir Vista','Genesisfort','67021-3570','Virginia'),
(419,'Betsy','Kub','','990','Sanford Passage','Ferryburgh','03084-7810','Florida'),
(422,'Emilia','Littel','','4177','Windler Point','Ernaville','62287','NorthDakota'),
(430,'Heather','Greenholt','','7771','Vita Station','Mrazberg','30126','Oregon'),
(432,'Pat','Kuhic','','5450','Edwardo Vista','Port Reynaville','94147-5874','NewJersey'),
(444,'Royal','Barrows','','8130','Hoppe Pike','South Fredrick','52818','District of Columbia'),
(449,'Thurman','Adams','1','5959','Nash Trace','South Tomasland','33148','Hawaii'),
(450,'Naomie','Williamson','1','2224','Dakota Fields','Keithmouth','51695-0152','Connecticut'),
(459,'Vergie','Bartell','1','2252','Shanahan Roads','Lorastad','01400-7409','Kansas'),
(465,'Deshawn','Weimann','1','9455','Bayer Square','Halleview','62123-0606','District of Columbia'),
(469,'Sherman','Corkery','','1615','King Corners','Kunzestad','44156','Mississippi'),
(508,'Cletus','Jacobs','1','8936','Alysha Pine','Raphaelleport','97996-1463','Minnesota'),
(511,'Alivia','Daniel','1','8568','Abshire Mountain','Corwinside','82135','Kentucky'),
(516,'Kayden','Casper','1','5851','Daugherty Club','North Jazmin','51429-7836','Delaware'),
(534,'Karina','Hagenes','','7567','Lockman Burg','Boganview','65539-2124','Louisiana'),
(535,'Jermaine','Kulas','','2972','Micheal Lakes','New Kenyattastad','90666','SouthCarolina'),
(538,'Magnus','Reinger','','3970','Jayda Plain','East Seamus','69702-8606','Vermont'),
(539,'Manuel','Cole','1','3833','Jennyfer Radial','South Elenora','39880','Massachusetts'),
(557,'Jody','Strosin','','5181','Ritchie Pine','North Loren','00662','Maine'),
(572,'Chandler','Ruecker','1','2020','Rath Falls','Harveyhaven','94627','Alabama'),
(603,'Meta','Prohaska','','1371','Liam Meadows','Lindmouth','77706','RhodeIsland'),
(616,'Carole','Howe','1','250','Bauch Manors','Ritchieview','74348','Missouri'),
(622,'Loyce','Beahan','1','3179','Wilderman Ranch','East Jerrellside','45567-2436','Florida'),
(630,'Lorenz','Schaden','1','9843','Bradly Shoal','Mayertfurt','11983','Hawaii'),
(633,'Daphnee','Wolf','1','8901','Gusikowski Lock','Alexshire','49460','Connecticut'),
(634,'Clinton','Murazik','','9473','Larkin Falls','Port Emileside','63358','Nevada'),
(649,'Leonard','Parker','1','4265','Gerry Track','Lake Elseton','84876','Kansas'),
(670,'Joan','Hickle','','5413','Betsy Glen','Parisianberg','87461','Alabama'),
(672,'Hulda','Miller','1','8107','Bernita Lake','Aufderharstad','36878-4836','NewYork'),
(674,'Vada','Koelpin','','493','McCullough Island','Chynabury','03106-6850','NewMexico'),
(676,'Lennie','Pacocha','','3023','Dante Drive','Lake Alessandroview','09461','Louisiana'),
(679,'Deven','Nitzsche','','9119','Bailey Points','Port Carriebury','68490','SouthDakota'),
(688,'Dillan','Zulauf','','9232','Oberbrunner Trace','Osinskiburgh','84973','SouthCarolina'),
(689,'Jerel','Jenkins','1','5369','Warren Port','New Lolitaburgh','15858','Michigan'),
(692,'Jesse','Beatty','1','928','Diamond Green','South Emie','23687-4983','NorthDakota'),
(717,'Lilla','Rolfson','1','8274','Monty Centers','Dareville','78257','Indiana'),
(719,'Vita','Considine','','3765','Mosciski Gateway','Nameborough','59446','NorthCarolina'),
(721,'Karelle','Yundt','','4490','Arielle Shores','Schulistfort','73700','Kansas'),
(744,'Eve','Lehner','1','8519','Witting Extensions','North Jaida','00718','Arkansas'),
(776,'Timmothy','Bahringer','','6459','Smith Cape','South Ryannfurt','02390-6843','RhodeIsland'),
(777,'Gianni','Auer','','3911','Nolan Place','West Derrickhaven','39167','Vermont'),
(809,'Garett','D\'Amore','1','9620','Turcotte Trail','New Ardellastad','06930-1912','District of Columbia'),
(810,'Berneice','DuBuque','','5116','Edna Unions','Schultzside','15296-1116','RhodeIsland'),
(827,'Allie','Marvin','','3984','West Flat','North Ashatown','92434-1743','Mississippi'),
(875,'Ford','Cormier','','5085','Marjorie Garden','Lake Reynold','25273','Pennsylvania'),
(881,'Kamren','Pagac','1','5206','Theresa Camp','East Theresiaberg','28608','Oregon'),
(892,'Hal','Carter','1','7463','Lorena Meadows','Abbottborough','10053','Alabama'),
(904,'Celestine','Carter','1','810','Cordell Prairie','Hassiestad','57381','Maryland'),
(906,'Bennett','Braun','','6109','Destinee Mills','East Jillianburgh','37979-0380','Louisiana'),
(939,'Dannie','Jenkins','1','5110','Huel View','Kingstad','13634-7093','NewYork'),
(946,'Jasen','Wunsch','1','698','Pouros Forks','South Nyasiabury','28020-7252','Tennessee'),
(951,'Nash','Lebsack','1','9802','Wisozk Path','Godfreymouth','78733-9766','Washington'),
(959,'Kade','Rippin','1','3697','Wisozk Views','Jayceeport','61529','Texas'),
(961,'Dante','Beer','','8681','Beulah Lane','Port Edmondside','21812','Massachusetts'),
(968,'Virginia','Schimmel','','2919','Wisozk Village','Port Lilianmouth','31732','Virginia'),
(971,'Hailey','Purdy','1','6305','Jeanette Plaza','North Drewmouth','25728','Kentucky'),
(974,'Zachary','Moen','1','1851','Volkman Corner','Hudsonburgh','73569-9622','NorthCarolina'),
(995,'Sage','Koch','1','8348','Lesch Springs','West Roderick','75431','Minnesota'),
(998,'Celestine','Considine','1','4564','Laron Lake','Elinorshire','14232-2204','Virginia');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22  2:29:48
