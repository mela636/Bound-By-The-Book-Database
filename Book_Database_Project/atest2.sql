-- MariaDB dump 10.19  Distrib 10.9.8-MariaDB, for Linux (x86_64)
--
-- Host: 10.200.208.126    Database: ctaylor3707_db_BoundByTheBook
-- ------------------------------------------------------
-- Server version	10.4.33-MariaDB

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
-- Table structure for table `AUDIOBOOK_VERS`
--

DROP TABLE IF EXISTS `AUDIOBOOK_VERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUDIOBOOK_VERS` (
  `BOOK_ID` int(11) NOT NULL,
  `NARRATOR_ID` int(11) DEFAULT NULL,
  `TIME` decimal(10,2) DEFAULT NULL,
  `AUDIO_FORMAT` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`BOOK_ID`),
  KEY `NARRATOR_ID` (`NARRATOR_ID`),
  CONSTRAINT `AUDIOBOOK_VERS_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOK` (`BOOK_ID`),
  CONSTRAINT `AUDIOBOOK_VERS_ibfk_2` FOREIGN KEY (`NARRATOR_ID`) REFERENCES `NARRATOR` (`NARRATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUDIOBOOK_VERS`
--

LOCK TABLES `AUDIOBOOK_VERS` WRITE;
/*!40000 ALTER TABLE `AUDIOBOOK_VERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AUDIOBOOK_VERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHOR`
--

DROP TABLE IF EXISTS `AUTHOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHOR` (
  `AUTHOR_ID` int(11) NOT NULL,
  `AUTHOR_FNAME` varchar(30) DEFAULT NULL,
  `AUTHOR_LNAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AUTHOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHOR`
--

LOCK TABLES `AUTHOR` WRITE;
/*!40000 ALTER TABLE `AUTHOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `AUTHOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOK`
--

DROP TABLE IF EXISTS `BOOK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOOK` (
  `BOOK_ID` int(11) NOT NULL,
  `ISBN` int(13) DEFAULT NULL,
  `PROD_ID` int(11) DEFAULT NULL,
  `LANGUAGE_ID` int(11) DEFAULT NULL,
  `PUBLISHER_ID` int(11) DEFAULT NULL,
  `BOOK_CAT_ID` int(11) DEFAULT NULL,
  `TITLE` varchar(30) DEFAULT NULL,
  `PUBLICATION_DATE` date DEFAULT NULL,
  `BOOK_TYPE` varchar(30) DEFAULT NULL,
  `PAGE_NUM` int(11) DEFAULT NULL,
  PRIMARY KEY (`BOOK_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  KEY `LANGUAGE_ID` (`LANGUAGE_ID`),
  KEY `PUBLISHER_ID` (`PUBLISHER_ID`),
  KEY `BOOK_CAT_ID` (`BOOK_CAT_ID`),
  CONSTRAINT `BOOK_ibfk_1` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`),
  CONSTRAINT `BOOK_ibfk_2` FOREIGN KEY (`LANGUAGE_ID`) REFERENCES `BOOK_LANGUAGE` (`LANGUAGE_ID`),
  CONSTRAINT `BOOK_ibfk_3` FOREIGN KEY (`PUBLISHER_ID`) REFERENCES `PUBLISHER` (`PUBLISHER_ID`),
  CONSTRAINT `BOOK_ibfk_4` FOREIGN KEY (`BOOK_CAT_ID`) REFERENCES `BOOK_CAT` (`BOOK_CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOK`
--

LOCK TABLES `BOOK` WRITE;
/*!40000 ALTER TABLE `BOOK` DISABLE KEYS */;
INSERT INTO `BOOK` VALUES
(2,5,624,616,640,709,'Id ex similique recusandae.','1973-09-18',NULL,227403),
(10,4,661,640,677,737,'In et nihil sed et.','1979-07-16',NULL,95),
(26,0,114,75,139,73,'Commodi aspernatur soluta enim','1970-12-29',NULL,52319),
(50,1,939,957,968,933,'Et corporis quis earum quam ne','2020-04-20',NULL,86003),
(56,2,580,585,597,634,'Distinctio aut aperiam volupta','2002-05-07',NULL,64694025),
(57,5,901,898,922,906,'Nam ad accusantium omnis sed.','2011-10-01',NULL,9055),
(59,4,277,243,285,280,'Quia et impedit libero autem.','2021-04-10',NULL,0),
(60,7,47,36,53,52,'Impedit alias adipisci aut quo','1988-03-26',NULL,5),
(62,1,24,32,32,30,'Quis aut dignissimos id sapien','1995-10-14',NULL,767),
(70,5,535,553,566,559,'A eos accusamus qui omnis cons','1987-09-15',NULL,88666134),
(72,1,687,688,701,745,'Cumque dicta velit autem.','2002-10-25',NULL,3),
(80,3,426,357,429,404,'Qui animi perferendis et ipsam','2020-12-05',NULL,5),
(101,0,780,770,777,826,'Aut at rerum error neque.','2003-04-21',NULL,0),
(105,9,978,988,990,981,'Enim aut dolor sunt rem.','1974-10-24',NULL,156192),
(112,4,782,771,784,828,'Dolores eos neque eveniet saep','1975-03-14',NULL,0),
(128,7,625,618,645,714,'Consequatur dolores assumenda ','1974-06-29',NULL,837),
(147,6,862,860,878,882,'In ut rem est natus.','1988-03-20',NULL,88854),
(150,8,701,698,710,747,'Id voluptates qui sit nesciunt','1997-01-01',NULL,0),
(151,9,321,277,343,350,'Non consequatur natus iste duc','2010-07-21',NULL,78416041),
(172,4,923,941,942,916,'Reiciendis nostrum expedita fa','1974-02-13',NULL,0),
(176,2,671,644,688,740,'Quo saepe ab et perspiciatis i','1970-12-31',NULL,377549),
(178,5,482,444,494,495,'Eveniet molestias repudiandae ','2021-01-15',NULL,29733),
(185,1,412,295,380,374,'Dolores et necessitatibus id v','1976-06-14',NULL,966210),
(191,7,348,292,365,373,'A esse accusantium id molestia','2019-10-10',NULL,373232012),
(198,1,511,492,535,532,'Atque vel ipsum iste consequat','1975-02-02',NULL,0),
(214,1,531,526,543,551,'Molestiae ut voluptas velit do','1983-07-19',NULL,41),
(271,1,737,737,759,770,'Et quia est ea accusantium.','2016-10-19',NULL,47134419),
(285,1,708,706,736,756,'Et saepe ut eaque ullam nihil ','1974-08-30',NULL,17503458),
(291,0,285,249,307,310,'Et repellendus impedit vero ea','2004-07-07',NULL,7149),
(292,9,297,267,324,330,'Consequatur rerum fugit at dol','1987-03-12',NULL,427),
(302,4,644,626,657,728,'Qui ea omnis error qui saepe.','1989-01-16',NULL,9),
(325,1,537,558,581,589,'Id maiores perferendis tenetur','1987-01-14',NULL,3585),
(339,2,930,953,946,918,'A cum voluptas placeat minus e','2010-08-23',NULL,884),
(355,4,203,153,229,236,'Rem voluptas ipsum veritatis q','2017-03-07',NULL,93),
(360,4,279,245,299,300,'Architecto incidunt nihil dolo','1988-04-10',NULL,95),
(366,9,581,595,598,644,'Blanditiis voluptate eligendi ','2009-05-17',NULL,760),
(375,7,515,524,540,550,'Assumenda consequatur architec','1981-11-01',NULL,36360081),
(398,8,858,850,858,864,'Unde ullam blanditiis eius.','2014-11-26',NULL,0),
(400,7,725,723,758,769,'Autem eligendi et beatae.','1971-12-11',NULL,6770706),
(402,8,503,476,500,517,'Sit est magni quia odio nam qu','2019-10-03',NULL,302280),
(415,5,150,113,182,142,'Vitae nam laudantium saepe tem','1979-10-03',NULL,424843),
(418,5,267,234,262,271,'Quas accusamus est voluptas.','2021-11-14',NULL,180446745),
(455,4,469,404,477,482,'Cupiditate omnis eaque consequ','1988-01-08',NULL,657),
(457,4,470,435,493,491,'Quam tempora eos vero autem no','2000-03-11',NULL,27207),
(462,0,440,366,471,426,'Aut minus et aliquid consequat','1979-04-07',NULL,148),
(469,1,168,136,191,151,'Architecto harum ut deleniti a','1998-02-02',NULL,16239),
(473,2,33,35,52,49,'Eum debitis omnis est voluptas','2016-04-07',NULL,2),
(503,9,430,365,460,414,'Animi dolores dignissimos dolo','2015-12-27',NULL,33),
(522,4,467,402,475,475,'Aperiam quis quis nihil dolore','2022-12-03',NULL,2),
(528,2,129,83,150,102,'Dolor aut facilis officia.','2012-05-05',NULL,81758),
(545,3,497,459,496,497,'Officia libero laudantium atqu','2016-06-06',NULL,190880),
(550,0,547,569,582,600,'Sit minima ipsam et officiis.','1991-04-21',NULL,40997),
(569,8,145,92,177,128,'Qui non aut quos saepe magnam ','1977-12-16',NULL,858),
(571,1,189,145,227,234,'Iste dolor maxime explicabo re','1990-12-30',NULL,931636311),
(574,0,85,67,112,68,'Nesciunt et natus maxime error','1971-07-31',NULL,801),
(593,0,681,686,689,741,'Ullam sed nostrum maiores quia','1972-02-16',NULL,564224),
(606,0,290,264,312,328,'Qui molestiae ut repellat et r','1980-01-03',NULL,85350790),
(614,1,959,981,985,956,'Dolore nesciunt qui eum molest','2007-03-17',NULL,0),
(624,2,341,281,360,367,'Ut quo qui libero at.','1978-10-07',NULL,0),
(629,7,768,757,776,792,'Molestiae ut omnis consequatur','2004-01-08',NULL,47694),
(632,4,739,745,769,777,'Nostrum dolorem eum architecto','2000-11-11',NULL,3),
(638,7,815,831,832,844,'Iste aspernatur rerum necessit','2013-03-04',NULL,3),
(642,0,253,200,243,267,'Quia est enim rerum minus expl','2023-03-17',NULL,9649666),
(652,7,32,34,47,43,'Et sed iusto aut ex.','2002-04-25',NULL,514),
(654,0,916,901,929,909,'Itaque dolorem totam possimus ','1999-05-14',NULL,9246),
(673,1,784,795,812,834,'Et autem expedita ipsum nisi m','2016-11-17',NULL,0),
(688,8,722,710,749,768,'Voluptates ipsam et ratione te','1979-05-04',NULL,738072956),
(692,9,238,172,232,264,'Laudantium consequatur occaeca','2007-07-12',NULL,0),
(697,4,867,875,888,885,'Aut aut qui quidem inventore n','1983-02-27',NULL,8646),
(698,2,574,577,594,631,'Saepe omnis illo sit vel rerum','1984-09-24',NULL,0),
(715,3,583,598,610,656,'Delectus distinctio omnis et v','1996-07-15',NULL,5874381),
(716,4,457,380,474,433,'Eaque odio et delectus archite','2013-04-09',NULL,48230885),
(718,8,72,61,90,59,'Eligendi facilis fugiat qui di','1974-09-08',NULL,23321343),
(743,2,935,954,958,926,'Non aut maiores temporibus ape','1987-05-17',NULL,5679176),
(759,6,17,8,11,5,'Voluptate possimus ea rerum.','2002-07-27',NULL,521),
(767,5,178,139,207,211,'Et et ex cum fugiat incidunt.','1983-10-05',NULL,80680),
(775,0,312,272,341,331,'Numquam libero officia qui.','1977-07-22',NULL,67772),
(791,6,709,708,744,763,'Minus repudiandae suscipit qui','2021-03-12',NULL,2),
(811,2,791,809,827,838,'Fugit qui sed alias non culpa.','2010-08-04',NULL,435),
(813,9,111,73,136,72,'Consequuntur aperiam iste nisi','2016-02-20',NULL,336),
(816,0,121,78,144,101,'Sit eius soluta harum magni ne','1981-12-04',NULL,99),
(823,2,136,85,174,107,'Fugiat velit fugiat dicta beat','1986-09-13',NULL,61820),
(828,8,651,632,672,735,'Ut veniam illo qui officia cor','2010-11-10',NULL,164583963),
(855,0,68,47,85,58,'Eaque quidem maiores iure qui ','2014-09-10',NULL,7404),
(895,3,893,886,917,898,'Minus sed mollitia provident q','1972-10-10',NULL,342912),
(897,4,753,750,771,790,'Eius voluptate aut impedit est','2012-01-28',NULL,485),
(903,1,609,607,629,689,'Voluptas molestiae dignissimos','1987-02-02',NULL,93),
(904,2,836,832,834,856,'Eveniet accusamus non consequu','2001-07-08',NULL,278034),
(910,8,955,980,979,954,'Deserunt sunt nulla sit volupt','2019-11-21',NULL,386658205),
(914,1,419,322,388,377,'Facilis ducimus perspiciatis i','1978-10-03',NULL,4597),
(918,9,587,603,614,665,'Libero eum vero sit quia.','1970-04-02',NULL,32723),
(944,8,421,335,408,382,'Aperiam aperiam qui impedit ve','1996-02-22',NULL,73904384),
(946,1,890,878,898,893,'Occaecati et nulla nihil volup','1988-05-07',NULL,27482649),
(958,4,843,848,838,857,'Dicta ipsam et et eius totam e','1978-03-13',NULL,829780),
(960,1,604,605,615,681,'Aut aut nemo magni ad voluptat','1981-05-16',NULL,3462),
(961,3,327,279,359,366,'Corporis esse eos aperiam et q','2012-04-20',NULL,3924),
(971,3,268,237,271,279,'Sit iusto voluptate tempora te','1980-04-06',NULL,89132089),
(979,7,620,608,630,690,'Autem maxime ullam magnam et r','2024-01-24',NULL,65154666),
(992,8,985,999,992,999,'Atque quia rerum nemo est.','1989-12-18',NULL,0),
(996,0,640,623,646,715,'Minus qui cum aut repudiandae ','2005-09-11',NULL,890504);
/*!40000 ALTER TABLE `BOOK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOK_AUTHOR`
--

DROP TABLE IF EXISTS `BOOK_AUTHOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOOK_AUTHOR` (
  `BOOK_ID` int(11) NOT NULL,
  `AUTHOR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BOOK_ID`),
  KEY `AUTHOR_ID` (`AUTHOR_ID`),
  CONSTRAINT `BOOK_AUTHOR_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOK` (`BOOK_ID`),
  CONSTRAINT `BOOK_AUTHOR_ibfk_2` FOREIGN KEY (`AUTHOR_ID`) REFERENCES `AUTHOR` (`AUTHOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOK_AUTHOR`
--

LOCK TABLES `BOOK_AUTHOR` WRITE;
/*!40000 ALTER TABLE `BOOK_AUTHOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `BOOK_AUTHOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOK_CAT`
--

DROP TABLE IF EXISTS `BOOK_CAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOOK_CAT` (
  `BOOK_CAT_ID` int(11) NOT NULL,
  `FICTION` varchar(30) DEFAULT NULL,
  `NONFICTION` varchar(30) DEFAULT NULL,
  `SPECIALTY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`BOOK_CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOK_CAT`
--

LOCK TABLES `BOOK_CAT` WRITE;
/*!40000 ALTER TABLE `BOOK_CAT` DISABLE KEYS */;
INSERT INTO `BOOK_CAT` VALUES
(5,'fuga','voluptates','nesciunt'),
(30,'repudiandae','vitae','neque'),
(43,'quaerat','quidem','quasi'),
(49,'voluptatibus','alias','repellendus'),
(52,'necessitatibus','dolorum','voluptas'),
(58,'quia','qui','enim'),
(59,'magni','ut','ut'),
(68,'voluptas','sint','fuga'),
(72,'nam','iste','cumque'),
(73,'velit','molestiae','et'),
(101,'rem','saepe','ut'),
(102,'corporis','nostrum','magnam'),
(107,'minus','quibusdam','quasi'),
(128,'temporibus','neque','vel'),
(142,'omnis','praesentium','dolor'),
(151,'molestias','tenetur','eum'),
(211,'rerum','voluptatem','ratione'),
(234,'quia','tempora','quia'),
(236,'iusto','facilis','iusto'),
(264,'fugit','eveniet','eligendi'),
(267,'ea','in','commodi'),
(271,'aperiam','aut','et'),
(279,'debitis','est','fuga'),
(280,'rerum','ducimus','et'),
(300,'consequatur','omnis','dolor'),
(310,'repellat','ad','fuga'),
(328,'dolorum','vel','ea'),
(330,'debitis','ducimus','numquam'),
(331,'autem','ea','vero'),
(350,'repellat','autem','sequi'),
(366,'neque','dolorem','laborum'),
(367,'reprehenderit','minima','unde'),
(373,'tempore','rerum','molestiae'),
(374,'placeat','et','dolorem'),
(377,'quae','illo','earum'),
(382,'voluptas','qui','eaque'),
(404,'nesciunt','eos','repudiandae'),
(414,'placeat','modi','quos'),
(426,'mollitia','minima','ullam'),
(433,'blanditiis','autem','earum'),
(475,'eos','ducimus','voluptas'),
(482,'neque','praesentium','nulla'),
(491,'dolores','quia','reprehenderit'),
(495,'porro','ducimus','odit'),
(497,'consequatur','nulla','ut'),
(517,'dolorem','velit','minima'),
(532,'laboriosam','aut','dolorem'),
(550,'delectus','sed','et'),
(551,'harum','pariatur','consectetur'),
(559,'ratione','quisquam','sed'),
(589,'dolores','ipsa','vel'),
(600,'sint','ut','harum'),
(631,'minus','commodi','officia'),
(634,'porro','odit','voluptatem'),
(644,'consequatur','sint','eius'),
(656,'sapiente','itaque','et'),
(665,'et','dolorem','minus'),
(681,'quibusdam','laborum','beatae'),
(689,'itaque','harum','sed'),
(690,'voluptatem','velit','reprehenderit'),
(709,'non','vel','deleniti'),
(714,'similique','ab','harum'),
(715,'eligendi','est','fugit'),
(728,'aut','numquam','ut'),
(735,'soluta','quibusdam','autem'),
(737,'nihil','veniam','eligendi'),
(740,'eos','ut','repellat'),
(741,'cum','non','aliquam'),
(745,'modi','consequatur','eos'),
(747,'ipsum','earum','in'),
(756,'quia','maiores','rerum'),
(763,'eaque','qui','omnis'),
(768,'quasi','assumenda','a'),
(769,'dolor','ipsa','incidunt'),
(770,'omnis','excepturi','aut'),
(777,'eum','ut','officiis'),
(790,'vitae','omnis','qui'),
(792,'repudiandae','eum','consequuntur'),
(826,'mollitia','unde','rem'),
(828,'ut','ut','veritatis'),
(834,'consequatur','sed','neque'),
(838,'in','occaecati','nam'),
(844,'totam','maiores','dolorum'),
(856,'vero','harum','ab'),
(857,'blanditiis','ea','est'),
(864,'repudiandae','aut','nemo'),
(882,'ratione','earum','hic'),
(885,'voluptatum','vitae','in'),
(893,'asperiores','voluptas','quisquam'),
(898,'nobis','nostrum','quia'),
(906,'ut','sint','fuga'),
(909,'nemo','voluptatibus','dolorum'),
(916,'corporis','qui','esse'),
(918,'facilis','numquam','illo'),
(926,'autem','est','vitae'),
(933,'ratione','quam','est'),
(954,'repellat','repudiandae','ea'),
(956,'hic','hic','sit'),
(981,'est','error','est'),
(999,'sunt','quia','unde');
/*!40000 ALTER TABLE `BOOK_CAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOK_LANGUAGE`
--

DROP TABLE IF EXISTS `BOOK_LANGUAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOOK_LANGUAGE` (
  `LANGUAGE_ID` int(11) NOT NULL,
  `LANGUAGE_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOK_LANGUAGE`
--

LOCK TABLES `BOOK_LANGUAGE` WRITE;
/*!40000 ALTER TABLE `BOOK_LANGUAGE` DISABLE KEYS */;
INSERT INTO `BOOK_LANGUAGE` VALUES
(8,'architecto'),
(32,'ea'),
(34,'asperiores'),
(35,'cum'),
(36,'blanditiis'),
(47,'repudiandae'),
(61,'esse'),
(67,'qui'),
(73,'ut'),
(75,'velit'),
(78,'eum'),
(83,'ut'),
(85,'id'),
(92,'voluptatem'),
(113,'cupiditate'),
(136,'maxime'),
(139,'dolorum'),
(145,'et'),
(153,'alias'),
(172,'qui'),
(200,'quia'),
(234,'sint'),
(237,'quis'),
(243,'delectus'),
(245,'odit'),
(249,'deleniti'),
(264,'perferendis'),
(267,'officiis'),
(272,'omnis'),
(277,'accusamus'),
(279,'nihil'),
(281,'debitis'),
(292,'eum'),
(295,'quia'),
(322,'quas'),
(335,'iure'),
(357,'non'),
(365,'neque'),
(366,'unde'),
(380,'non'),
(402,'quis'),
(404,'unde'),
(435,'saepe'),
(444,'inventore'),
(459,'mollitia'),
(476,'rerum'),
(492,'sequi'),
(524,'beatae'),
(526,'dicta'),
(553,'placeat'),
(558,'aut'),
(569,'perferendis'),
(577,'quod'),
(585,'nihil'),
(595,'qui'),
(598,'commodi'),
(603,'sit'),
(605,'laborum'),
(607,'velit'),
(608,'ut'),
(616,'delectus'),
(618,'dolorum'),
(623,'aut'),
(626,'culpa'),
(632,'excepturi'),
(640,'ut'),
(644,'ab'),
(686,'harum'),
(688,'explicabo'),
(698,'placeat'),
(706,'tenetur'),
(708,'nemo'),
(710,'fuga'),
(723,'et'),
(737,'ratione'),
(745,'illo'),
(750,'distinctio'),
(757,'eius'),
(770,'placeat'),
(771,'debitis'),
(795,'magni'),
(809,'dolor'),
(831,'deleniti'),
(832,'aut'),
(848,'officiis'),
(850,'et'),
(860,'incidunt'),
(875,'aut'),
(878,'maxime'),
(886,'mollitia'),
(898,'nemo'),
(901,'error'),
(941,'eveniet'),
(953,'vel'),
(954,'quod'),
(957,'voluptas'),
(980,'excepturi'),
(981,'odio'),
(988,'repudiandae'),
(999,'quos');
/*!40000 ALTER TABLE `BOOK_LANGUAGE` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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

--
-- Table structure for table `CUSTOMER_ORDER`
--

DROP TABLE IF EXISTS `CUSTOMER_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER_ORDER` (
  `ORDER_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `SHIPPING_METH_ID` int(11) DEFAULT NULL,
  `ORDER_DATE` date DEFAULT NULL,
  `ORDER_ADDRESS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  KEY `SHIPPING_METH_ID` (`SHIPPING_METH_ID`),
  CONSTRAINT `CUSTOMER_ORDER_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `CUSTOMER_ORDER_ibfk_2` FOREIGN KEY (`SHIPPING_METH_ID`) REFERENCES `SHIPPING_METH` (`SHIPPING_METH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER_ORDER`
--

LOCK TABLES `CUSTOMER_ORDER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER_ORDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CUSTOMER_ORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `INV_NUM` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `INV_DATE` date DEFAULT NULL,
  PRIMARY KEY (`INV_NUM`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  CONSTRAINT `INVOICE_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `CUSTOMER` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
INSERT INTO `INVOICE` VALUES
(6,444,'1981-12-23'),
(12,248,'2001-09-16'),
(32,534,'1986-04-17'),
(50,827,'2004-09-19'),
(51,688,'1975-08-23'),
(52,44,'2005-05-27'),
(59,105,'2015-08-20'),
(69,622,'2010-11-17'),
(78,75,'2003-06-03'),
(82,539,'1993-12-05'),
(91,649,'2013-09-12'),
(96,157,'1988-06-07'),
(109,173,'2023-12-23'),
(114,875,'1977-05-10'),
(147,303,'1995-04-09'),
(149,465,'1979-03-15'),
(185,459,'1971-07-01'),
(192,63,'2000-06-07'),
(220,946,'2010-09-06'),
(227,810,'1977-06-07'),
(233,692,'1984-07-09'),
(246,228,'1978-05-19'),
(328,262,'1977-03-26'),
(329,404,'2013-10-22'),
(330,422,'2017-02-21'),
(331,48,'2003-09-19'),
(334,159,'2024-01-04'),
(346,777,'2019-07-30'),
(356,417,'1982-07-12'),
(374,616,'1973-04-09'),
(377,674,'2017-05-13'),
(383,190,'2006-01-08'),
(385,744,'2014-04-09'),
(389,81,'1981-02-16'),
(395,394,'1989-01-17'),
(402,672,'1979-04-12'),
(405,995,'1990-04-24'),
(410,557,'2004-11-23'),
(413,998,'2012-01-24'),
(415,430,'2003-12-10'),
(417,249,'2016-03-05'),
(425,39,'1984-09-19'),
(434,951,'2007-10-21'),
(447,508,'2003-11-12'),
(454,670,'2002-12-16'),
(456,15,'1988-11-29'),
(459,320,'1981-03-21'),
(462,717,'1979-07-22'),
(469,41,'1974-05-05'),
(470,676,'2005-09-05'),
(472,516,'1973-11-06'),
(473,113,'2000-11-25'),
(474,199,'2004-06-01'),
(476,968,'2005-11-16'),
(486,721,'1983-12-30'),
(503,23,'2017-07-17'),
(504,679,'2016-02-06'),
(527,82,'2011-06-25'),
(578,432,'1998-08-07'),
(585,961,'2004-05-14'),
(595,535,'1999-07-17'),
(618,906,'2011-03-07'),
(621,719,'2020-05-24'),
(641,100,'2010-08-22'),
(644,572,'2009-06-27'),
(661,538,'1972-10-21'),
(666,689,'2010-12-17'),
(667,295,'1991-06-13'),
(668,307,'2011-08-22'),
(670,511,'1998-11-20'),
(688,328,'1989-08-11'),
(707,408,'1980-04-29'),
(710,449,'1997-05-20'),
(711,809,'2005-06-19'),
(714,116,'1997-09-22'),
(717,630,'1976-09-22'),
(721,412,'2018-01-06'),
(737,974,'2004-12-18'),
(740,230,'2003-05-17'),
(755,325,'1974-08-07'),
(767,881,'1993-06-24'),
(772,301,'2021-11-11'),
(788,959,'2014-06-04'),
(791,776,'1971-06-06'),
(793,469,'1979-06-01'),
(794,162,'2009-10-22'),
(804,247,'1970-05-09'),
(817,603,'1976-09-01'),
(848,634,'2014-08-24'),
(864,971,'1976-08-06'),
(871,161,'2019-02-14'),
(881,450,'2006-08-22'),
(895,633,'1994-02-07'),
(897,904,'2009-06-26'),
(910,892,'2021-12-21'),
(938,67,'1999-05-30'),
(939,170,'2023-09-14'),
(940,419,'1976-09-12'),
(943,939,'1976-05-14'),
(976,324,'1980-01-05');
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LINE`
--

DROP TABLE IF EXISTS `LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LINE` (
  `INV_NUM` int(11) NOT NULL,
  `LINE_NUM` int(11) DEFAULT NULL,
  `PROD_ID` int(11) DEFAULT NULL,
  `LINE_UNITS` varchar(20) DEFAULT NULL,
  `LINE_PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`INV_NUM`),
  CONSTRAINT `LINE_ibfk_1` FOREIGN KEY (`INV_NUM`) REFERENCES `INVOICE` (`INV_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LINE`
--

LOCK TABLES `LINE` WRITE;
/*!40000 ALTER TABLE `LINE` DISABLE KEYS */;
INSERT INTO `LINE` VALUES
(6,362,17,'aut',70.69),
(12,427,24,'quis',67.18),
(32,370,32,'id',47.09),
(50,612,33,'ut',76.41),
(51,668,47,'nulla',144.18),
(52,736,68,'ut',126.64),
(59,727,72,'earum',10.80),
(69,909,85,'optio',191.63),
(78,713,111,'illo',121.92),
(82,496,114,'in',14.61),
(91,733,121,'consequuntur',77.96),
(96,232,129,'in',163.50),
(109,819,136,'quas',40.89),
(114,935,145,'quo',132.52),
(147,54,150,'illo',183.82),
(149,733,168,'sapiente',55.32),
(185,198,178,'eligendi',36.87),
(192,417,189,'hic',194.55),
(220,431,203,'ut',17.42),
(227,756,238,'similique',178.39),
(233,348,253,'omnis',161.37),
(246,912,267,'quas',155.17),
(328,476,268,'incidunt',168.82),
(329,520,277,'quia',137.18),
(330,51,279,'similique',182.90),
(331,775,285,'deleniti',198.82),
(334,392,290,'incidunt',178.63),
(346,81,297,'laudantium',111.46),
(356,568,312,'dolore',32.45),
(374,438,321,'quisquam',61.45),
(377,299,327,'delectus',188.76),
(383,915,341,'nemo',103.40),
(385,173,348,'quos',140.57),
(389,614,412,'similique',197.18),
(395,212,419,'hic',181.02),
(402,149,421,'eum',107.24),
(405,389,426,'ea',172.32),
(410,396,430,'beatae',67.89),
(413,303,440,'deleniti',143.21),
(415,966,457,'sunt',56.47),
(417,11,467,'aliquam',51.11),
(425,147,469,'ab',174.36),
(434,914,470,'modi',168.23),
(447,79,482,'neque',65.64),
(454,324,497,'ad',148.44),
(456,820,503,'porro',154.36),
(459,751,511,'facere',180.53),
(462,20,515,'enim',35.69),
(469,391,531,'est',43.17),
(470,420,535,'quidem',191.08),
(472,718,537,'commodi',65.77),
(473,599,547,'et',47.51),
(474,571,574,'dolore',15.21),
(476,410,580,'atque',51.90),
(486,713,581,'eos',178.49),
(503,654,583,'est',7.28),
(504,154,587,'excepturi',158.83),
(527,495,604,'qui',165.31),
(578,164,609,'at',144.97),
(585,730,620,'ut',142.91),
(595,490,624,'sequi',3.34),
(618,217,625,'adipisci',41.39),
(621,9,640,'ab',21.47),
(641,225,644,'dolorem',134.40),
(644,941,651,'ipsa',88.30),
(661,376,661,'assumenda',63.28),
(666,5,671,'est',179.60),
(667,56,681,'repellat',100.84),
(668,821,687,'at',112.68),
(670,551,701,'nesciunt',57.99),
(688,175,708,'corporis',59.09),
(707,337,709,'assumenda',88.26),
(710,164,722,'maiores',59.70),
(711,256,725,'magni',162.08),
(714,372,737,'necessitatibus',36.13),
(717,172,739,'sint',96.16),
(721,785,753,'voluptatem',100.80),
(737,649,768,'corrupti',95.67),
(740,358,780,'voluptatem',79.63),
(755,37,782,'eaque',182.11),
(767,702,784,'consequatur',180.17),
(772,339,791,'autem',107.06),
(788,222,815,'accusamus',140.17),
(791,31,836,'odio',175.91),
(793,511,843,'consequatur',187.35),
(794,89,858,'magnam',27.80),
(804,831,862,'voluptates',173.65),
(817,739,867,'aut',81.07),
(848,572,890,'consectetur',130.60),
(864,638,893,'velit',146.45),
(871,214,901,'rem',80.35),
(881,275,916,'sint',58.60),
(895,119,923,'aut',124.31),
(897,851,930,'atque',31.57),
(910,732,935,'nesciunt',29.97),
(938,739,939,'sequi',14.85),
(939,440,955,'veritatis',24.76),
(940,485,959,'aut',108.23),
(943,789,978,'est',134.72),
(976,192,985,'quidem',2.44);
/*!40000 ALTER TABLE `LINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEMBERSHIP`
--

DROP TABLE IF EXISTS `MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEMBERSHIP` (
  `MEMBER_ID` int(11) NOT NULL,
  `MEMBER_YEARLY_COST` decimal(10,2) DEFAULT NULL,
  `MEMBER_DISCOUNT` decimal(10,2) DEFAULT NULL,
  `MEMBER_PHONENUM` char(12) DEFAULT NULL,
  `MEMBER_EMAIL` varchar(50) DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MEMBER_ID`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  CONSTRAINT `MEMBERSHIP_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `CUSTOMER` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEMBERSHIP`
--

LOCK TABLES `MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NARRATOR`
--

DROP TABLE IF EXISTS `NARRATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NARRATOR` (
  `NARRATOR_ID` int(11) NOT NULL,
  `NARRATOR_FNAME` varchar(30) DEFAULT NULL,
  `NARRATOR_LNAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NARRATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NARRATOR`
--

LOCK TABLES `NARRATOR` WRITE;
/*!40000 ALTER TABLE `NARRATOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `NARRATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDER_HISTORY`
--

DROP TABLE IF EXISTS `ORDER_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDER_HISTORY` (
  `HISTORY_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`HISTORY_ID`),
  KEY `ORDER_ID` (`ORDER_ID`),
  CONSTRAINT `ORDER_HISTORY_ibfk_1` FOREIGN KEY (`ORDER_ID`) REFERENCES `CUSTOMER_ORDER` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER_HISTORY`
--

LOCK TABLES `ORDER_HISTORY` WRITE;
/*!40000 ALTER TABLE `ORDER_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORDER_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `PROD_ID` int(11) NOT NULL,
  `P_QOH` int(11) DEFAULT NULL,
  `VENDOR_ID` int(11) DEFAULT NULL,
  `P_PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PROD_ID`),
  KEY `VENDOR_ID` (`VENDOR_ID`),
  CONSTRAINT `PRODUCT_ibfk_1` FOREIGN KEY (`VENDOR_ID`) REFERENCES `VENDOR` (`VENDOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES
(17,372,579,18.50),
(24,897681,796,446.35),
(32,9482341,751,0.00),
(33,47,5,2750589.78),
(47,64,268,1403.87),
(68,401,67,99999999.99),
(72,88,875,16.18),
(85,0,115,41050.07),
(111,0,43,38780988.05),
(114,9,855,9634952.42),
(121,5747,845,0.00),
(129,8,290,63.93),
(136,649,571,19822.47),
(145,39559163,406,99999999.99),
(150,55,286,13.44),
(168,5,32,2.00),
(178,1,477,0.00),
(189,74,54,9356.24),
(203,951,958,19887906.76),
(238,0,838,62.96),
(253,7384507,485,5823772.95),
(267,0,847,1128040.06),
(268,61393085,603,0.00),
(277,5720808,692,99999999.99),
(279,8,84,0.00),
(285,0,248,0.00),
(290,18162,844,0.76),
(297,0,785,99999999.99),
(312,27208,605,66182.57),
(321,40,17,398851.99),
(327,361186,109,2073.28),
(341,5,308,2.70),
(348,7944174,246,2070724.80),
(412,3,748,1052599.80),
(419,9,138,47.54),
(421,4925121,442,0.00),
(426,13,86,3478.50),
(430,35186,452,17.18),
(440,0,201,0.00),
(457,61,901,99999999.99),
(467,80950,957,633237.89),
(469,709623,889,176305.28),
(470,3676,947,4.62),
(482,6565630,221,55220854.90),
(497,240,964,3106217.13),
(503,473994287,726,7.63),
(511,29,514,27035.54),
(515,2693,451,1.88),
(531,288,632,144448.45),
(535,92372484,202,91.17),
(537,6,234,1647100.40),
(547,8511945,398,7.00),
(574,80,788,6.92),
(580,64680564,326,5016815.07),
(581,0,481,0.79),
(583,9950,130,0.00),
(587,86068045,74,87246163.00),
(604,0,7,82.67),
(609,52250,707,1.42),
(620,51,309,19343.02),
(624,54235,165,17.42),
(625,848480126,601,333.08),
(640,120,41,143.14),
(644,6,856,124.30),
(651,7699,207,25488.97),
(661,2,760,7575.00),
(671,556970,91,9075950.76),
(681,24916338,541,2.06),
(687,2,132,13993.60),
(701,581274494,842,0.00),
(708,991907,390,796468.45),
(709,155439,814,445109.26),
(722,3,157,97.31),
(725,0,864,14935558.90),
(737,2,668,9.57),
(739,3473182,393,41189.00),
(753,61,591,0.00),
(768,20920544,651,38637892.25),
(780,5374008,92,112232.48),
(782,5,131,0.80),
(784,6,228,99999999.99),
(791,1416350,868,99999999.99),
(815,9,199,8.53),
(836,446998,454,46558972.62),
(843,15994,830,99999999.99),
(858,204,515,0.00),
(862,421607,577,99999999.99),
(867,6538121,722,9065736.41),
(890,29465185,420,0.16),
(893,5,766,699405.57),
(901,99,445,0.00),
(916,28520282,831,3.27),
(923,40,480,2730.09),
(930,703498751,277,203.21),
(935,66983539,913,0.00),
(939,70135,752,9572394.90),
(955,1,249,2131.31),
(959,15962,244,22.06),
(978,26,449,673670.06),
(985,68,144,0.00);
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PUBLISHER`
--

DROP TABLE IF EXISTS `PUBLISHER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PUBLISHER` (
  `PUBLISHER_ID` int(11) NOT NULL,
  `PUBLICATION_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PUBLISHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PUBLISHER`
--

LOCK TABLES `PUBLISHER` WRITE;
/*!40000 ALTER TABLE `PUBLISHER` DISABLE KEYS */;
INSERT INTO `PUBLISHER` VALUES
(11,'quas'),
(32,'nihil'),
(47,'voluptatem'),
(52,'dolorem'),
(53,'voluptates'),
(85,'aut'),
(90,'maiores'),
(112,'quas'),
(136,'aut'),
(139,'soluta'),
(144,'amet'),
(150,'et'),
(174,'nesciunt'),
(177,'quaerat'),
(182,'similique'),
(191,'beatae'),
(207,'minima'),
(227,'dicta'),
(229,'aliquam'),
(232,'provident'),
(243,'praesentium'),
(262,'autem'),
(271,'dicta'),
(285,'sint'),
(299,'soluta'),
(307,'ab'),
(312,'non'),
(324,'cum'),
(341,'aut'),
(343,'et'),
(359,'voluptates'),
(360,'dicta'),
(365,'nihil'),
(380,'aut'),
(388,'molestias'),
(408,'ea'),
(429,'rem'),
(460,'aliquid'),
(471,'mollitia'),
(474,'in'),
(475,'nostrum'),
(477,'dicta'),
(493,'est'),
(494,'labore'),
(496,'quibusdam'),
(500,'veritatis'),
(535,'accusamus'),
(540,'est'),
(543,'dolorem'),
(566,'officia'),
(581,'voluptates'),
(582,'laboriosam'),
(594,'quasi'),
(597,'expedita'),
(598,'dolores'),
(610,'reprehenderit'),
(614,'voluptatem'),
(615,'veritatis'),
(629,'in'),
(630,'adipisci'),
(640,'quibusdam'),
(645,'veniam'),
(646,'quam'),
(657,'sint'),
(672,'fugiat'),
(677,'consequatur'),
(688,'qui'),
(689,'laudantium'),
(701,'facere'),
(710,'corrupti'),
(736,'quibusdam'),
(744,'non'),
(749,'sed'),
(758,'incidunt'),
(759,'nemo'),
(769,'dolores'),
(771,'dolor'),
(776,'excepturi'),
(777,'cum'),
(784,'non'),
(812,'dolor'),
(827,'hic'),
(832,'voluptatem'),
(834,'inventore'),
(838,'labore'),
(858,'cumque'),
(878,'aut'),
(888,'ullam'),
(898,'sunt'),
(917,'et'),
(922,'consequuntur'),
(929,'beatae'),
(942,'suscipit'),
(946,'quis'),
(958,'laborum'),
(968,'ducimus'),
(979,'ut'),
(985,'qui'),
(990,'qui'),
(992,'rem');
/*!40000 ALTER TABLE `PUBLISHER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIPPING_METH`
--

DROP TABLE IF EXISTS `SHIPPING_METH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHIPPING_METH` (
  `SHIPPING_METH_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) DEFAULT NULL,
  `SHIP_COST` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`SHIPPING_METH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIPPING_METH`
--

LOCK TABLES `SHIPPING_METH` WRITE;
/*!40000 ALTER TABLE `SHIPPING_METH` DISABLE KEYS */;
/*!40000 ALTER TABLE `SHIPPING_METH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TECHNOLOGY`
--

DROP TABLE IF EXISTS `TECHNOLOGY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TECHNOLOGY` (
  `TECH_ID` int(11) NOT NULL,
  `PROD_ID` int(11) DEFAULT NULL,
  `TECH_NAME` varchar(30) DEFAULT NULL,
  `SIZE` varchar(20) DEFAULT NULL,
  `EDITION` decimal(10,0) DEFAULT NULL,
  `YEAR_MADE` char(4) DEFAULT NULL,
  `TECH_PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`TECH_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  CONSTRAINT `TECHNOLOGY_ibfk_1` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TECHNOLOGY`
--

LOCK TABLES `TECHNOLOGY` WRITE;
/*!40000 ALTER TABLE `TECHNOLOGY` DISABLE KEYS */;
/*!40000 ALTER TABLE `TECHNOLOGY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TOY`
--

DROP TABLE IF EXISTS `TOY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TOY` (
  `TOY_ID` int(11) NOT NULL,
  `PROD_ID` int(11) DEFAULT NULL,
  `TOY_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`TOY_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  CONSTRAINT `TOY_ibfk_1` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TOY`
--

LOCK TABLES `TOY` WRITE;
/*!40000 ALTER TABLE `TOY` DISABLE KEYS */;
/*!40000 ALTER TABLE `TOY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDOR`
--

DROP TABLE IF EXISTS `VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VENDOR` (
  `VENDOR_ID` int(11) NOT NULL,
  `VENDOR_NAME` varchar(30) DEFAULT NULL,
  `VENDOR_PHONE` char(12) DEFAULT NULL,
  `VENDOR_AREACODE` char(3) DEFAULT NULL,
  `VENDOR_STATE` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`VENDOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR`
--

LOCK TABLES `VENDOR` WRITE;
/*!40000 ALTER TABLE `VENDOR` DISABLE KEYS */;
INSERT INTO `VENDOR` VALUES
(5,'Mr. Stephen Feeney','541-503-0937','298','Michigan'),
(7,'Lamont Becker','1-639-772-59','816','Massachusetts'),
(17,'Forest D\'Amore V','04452559107','774','California'),
(32,'Merl Braun','+26(1)283620','846','Virginia'),
(41,'Sydney Kuhn','317-999-6781','020','NewJersey'),
(43,'Brielle Wilderman DDS','1-314-956-18','923','Kentucky'),
(54,'Adalberto Farrell','+27(3)034279','904','Louisiana'),
(67,'Prof. Patricia Deckow','750.658.0317','887','NewYork'),
(74,'Shannon Towne','003-796-2817','385','Alabama'),
(84,'Mrs. Trisha Sawayn','1-624-410-40','404','Massachusetts'),
(86,'Nicolette Cummings','+41(8)112585','556','Ohio'),
(91,'Libby Mosciski','(046)625-604','195','Massachusetts'),
(92,'Prof. Trevor Brekke','(557)909-641','235','NewMexico'),
(109,'Lenore Skiles DVM','804.966.3485','763','Missouri'),
(115,'Dr. Gerardo Stracke','771.590.4241','532','Michigan'),
(130,'Arno Nader','+68(0)187103','616','Tennessee'),
(131,'Prof. Athena White','(375)510-025','897','NewMexico'),
(132,'Wilford Dickinson','602-770-5438','485','NewMexico'),
(138,'Prof. Orland Abshire I','963-899-0672','070','Virginia'),
(144,'Mrs. Jannie Thiel','06092982924','858','Nebraska'),
(157,'Cortney Hegmann','07311608187','711','Wisconsin'),
(165,'Veda Walsh','659.059.6663','877','Idaho'),
(199,'Enid Zulauf','1-570-905-42','044','Missouri'),
(201,'Jed DuBuque','294.109.2871','942','Minnesota'),
(202,'Baby Mertz','471-251-8577','334','Wyoming'),
(207,'Jazmyn Kautzer','042-231-5953','310','NorthCarolina'),
(221,'Kelton Hessel','(929)459-238','624','Colorado'),
(228,'Dillon O\'Kon','(927)533-423','289','Texas'),
(234,'Elmira Renner','(424)884-337','868','Minnesota'),
(244,'Danielle Swift','233-860-8127','952','Arkansas'),
(246,'Alfred Walter','876-046-5047','149','Tennessee'),
(248,'Lyric Davis IV','(167)743-120','357','Idaho'),
(249,'Alanna King Jr.','083.179.5517','747','Alaska'),
(268,'Lilyan Waelchi','00142810485','640','SouthCarolina'),
(277,'Miss Annabel Fisher V','667.956.4797','222','NewJersey'),
(286,'Guido Jenkins','714.660.9593','898','Vermont'),
(290,'Lauriane Boyle','+28(3)330725','676','Mississippi'),
(308,'Ralph Jerde','918-655-1428','145','Kansas'),
(309,'Telly Fay','03349936189','468','Virginia'),
(326,'Llewellyn Prosacco Jr.','+11(2)328865','692','Kansas'),
(390,'Jewell Mueller V','438.199.7384','826','District of Columbia'),
(393,'Mr. Uriel Shanahan MD','1-750-796-41','558','NewYork'),
(398,'Maryjane Romaguera','937.452.6898','578','Tennessee'),
(406,'Verlie Jones','08425697178','815','WestVirginia'),
(420,'Dr. Janet Hintz I','1-338-670-49','144','Tennessee'),
(442,'Mr. Jerrell Zboncak','801-016-5539','510','Washington'),
(445,'Janice Corwin DDS','822-031-4087','899','Oklahoma'),
(449,'Miss Pink Marks IV','742-415-8523','587','Arizona'),
(451,'Arnoldo Schinner','244.291.6567','649','Illinois'),
(452,'Winifred O\'Kon V','(007)118-480','330','Nevada'),
(454,'Miss Mariah Shields V','843-317-3969','955','Arkansas'),
(477,'Isabella Thompson II','1-650-577-20','615','Minnesota'),
(480,'Kamron Kshlerin','922.663.9661','667','RhodeIsland'),
(481,'Donnie Gibson DVM','667.743.8298','723','Oregon'),
(485,'Ms. Reanna Pouros','1-201-911-49','684','Massachusetts'),
(514,'Asa Conn Sr.','577-362-2438','718','Hawaii'),
(515,'Titus Swift','1-186-838-37','825','Oklahoma'),
(541,'Mustafa Kuhic','003.551.2984','073','Washington'),
(571,'Prof. Rowena Thiel DDS','+41(2)294215','170','Pennsylvania'),
(577,'Patricia Moen','1-847-892-15','034','Minnesota'),
(579,'Stan Daugherty','09967012379','380','Washington'),
(591,'Oliver Ledner','1-836-234-47','840','Alaska'),
(601,'Winona Bruen','178-116-1744','692','SouthDakota'),
(603,'Devyn Cronin','120-032-5057','489','NewYork'),
(605,'Dr. Ayana Littel II','(504)813-859','347','Delaware'),
(632,'Imani Block','01746741429','516','Iowa'),
(651,'Esmeralda Borer','136.576.2535','518','Missouri'),
(668,'Claudie Moen','+89(6)353201','765','Alaska'),
(692,'Mr. Johnnie Wintheiser II','453.447.3728','186','Louisiana'),
(707,'Miss Katarina Carroll II','+70(4)740359','114','Montana'),
(722,'Zella Barrows','1-706-142-45','504','Louisiana'),
(726,'Milford Lang','+62(0)487493','306','Mississippi'),
(748,'Prof. Thad VonRueden Sr.','1-708-006-06','750','Illinois'),
(751,'Heloise Bernhard','(040)408-515','666','NewHampshire'),
(752,'Mr. Hobart Haag Sr.','(303)318-259','793','Hawaii'),
(760,'Harold Cronin','1-927-185-47','335','NewJersey'),
(766,'Addie Mitchell III','(521)298-955','970','NewYork'),
(785,'Prof. Henderson Leuschke','608-343-9780','318','Wyoming'),
(788,'Hattie Dicki','(331)664-570','109','Idaho'),
(796,'Kenyon Stark Jr.','(237)404-341','414','Minnesota'),
(814,'Laisha Hodkiewicz','+98(9)839361','280','Hawaii'),
(830,'Erica Konopelski','279.516.0902','521','Texas'),
(831,'Dr. Gillian Cummings','(086)801-452','079','Florida'),
(838,'Reva Schiller Sr.','373-366-0781','964','Idaho'),
(842,'Cathy Lockman','974-179-9822','640','Oregon'),
(844,'Deondre Kemmer III','405-775-9795','107','Iowa'),
(845,'Mrs. Rebeka Reichel','+97(7)379058','600','Oklahoma'),
(847,'Mr. Sammie Harvey','501.721.9760','912','Arizona'),
(855,'Adelia Ziemann','03337781112','358','NorthCarolina'),
(856,'Jillian Yundt','(450)277-855','340','Delaware'),
(864,'Carroll Lindgren PhD','1-947-799-60','857','NewYork'),
(868,'Arvel Bins','221-483-2208','290','Florida'),
(875,'Waino Koch','444-827-1836','901','Oklahoma'),
(889,'Vivien Cummerata II','603-701-7467','126','Georgia'),
(901,'Liza Franecki','086-056-7947','866','Connecticut'),
(913,'Mrs. Freida Hermann I','192.984.2899','248','Colorado'),
(947,'Cory Grimes','02395547116','230','Maryland'),
(957,'Alvera Swift','+84(0)698933','124','Delaware'),
(958,'Mrs. Elenor Dare Jr.','450.457.7845','487','NorthCarolina'),
(964,'Eugenia Pouros','+98(4)312237','190','Minnesota');
/*!40000 ALTER TABLE `VENDOR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-21 23:28:12
