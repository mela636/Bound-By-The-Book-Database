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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22  2:59:08
