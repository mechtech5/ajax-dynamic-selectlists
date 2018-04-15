# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.2.7-MariaDB)
# Database: pl_select1
# Generation Time: 2018-04-15 15:26:29 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table gs_hierarchy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gs_hierarchy`;

CREATE TABLE `gs_hierarchy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `username` varchar(191) DEFAULT NULL,
  `alias` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `gs_hierarchy` WRITE;
/*!40000 ALTER TABLE `gs_hierarchy` DISABLE KEYS */;

INSERT INTO `gs_hierarchy` (`id`, `parent_id`, `user_id`, `username`, `alias`)
VALUES
	(1,0,0,'srden/s','SR DEN/S'),
	(2,0,NULL,'den/c','DEN/C'),
	(3,0,NULL,'srden/n','SR DEN/N'),
	(4,0,NULL,'den/e','DEN/E'),
	(5,1,NULL,'aden/sgz','ADEN/SGZ NAD-GOH'),
	(6,1,NULL,'aden/rma','ADEN/RMA GOH-KTT'),
	(7,2,NULL,'aden/c','ADEN/C KTT-ARE & KTT-COR'),
	(8,2,NULL,'aden/rma','ADEN/RMA ARE-MLZ'),
	(9,3,NULL,NULL,'ADEN/GCC MLZ-BXN'),
	(10,3,NULL,NULL,'ADEN/BTE BXN-MTZ'),
	(11,4,NULL,NULL,'ADEN/BAZ KTT-RTA'),
	(12,5,NULL,'mep','SSE/MEP'),
	(13,5,NULL,NULL,'SSE/VMA'),
	(14,5,NULL,NULL,'SSE/SGZ'),
	(15,6,NULL,NULL,'SSE/BWM'),
	(16,6,NULL,NULL,'SSE/RMA'),
	(17,6,NULL,NULL,'SSE/KTTS'),
	(18,7,NULL,NULL,'SSE/KTTN'),
	(19,7,NULL,NULL,'SSE/BUDI'),
	(20,7,NULL,NULL,'SSE/MLGH'),
	(21,8,NULL,NULL,'SSE/LKE'),
	(22,8,NULL,NULL,'SSE/IDG'),
	(23,8,NULL,NULL,'SSE/SWM'),
	(24,9,NULL,NULL,'SSE/GGCS'),
	(25,9,NULL,NULL,'SSE/GGCN'),
	(26,9,NULL,NULL,'SSE/HAN'),
	(27,10,NULL,NULL,'SSE/BXN'),
	(28,10,NULL,NULL,'SSE/BTE'),
	(29,11,NULL,NULL,'SSE/BAZ'),
	(30,11,NULL,NULL,'SSE/CAG');

/*!40000 ALTER TABLE `gs_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `username` varchar(191) DEFAULT NULL,
  `alias` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `parent_id`, `username`, `alias`)
VALUES
	(1,0,'SRDEN_A',NULL),
	(2,0,'SRDEN_B',NULL),
	(3,0,'SRDEN_C',NULL),
	(4,0,'SRDEN_D',NULL),
	(5,1,'AD_A_1',NULL),
	(6,1,'AD_A_2',NULL),
	(7,5,'user1',NULL),
	(8,5,'user2',NULL),
	(9,6,'user3',NULL),
	(10,6,'user4',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
