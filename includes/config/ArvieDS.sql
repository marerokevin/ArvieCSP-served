-- MariaDB dump 10.19  Distrib 10.8.5-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ArvieDS
-- ------------------------------------------------------
-- Server version	10.8.5-MariaDB

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `sponsor` varchar(100) NOT NULL,
  `sponsorName` varchar(65) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `contact_number` varchar(28) NOT NULL,
  `date` datetime NOT NULL,
  `access` varchar(8) NOT NULL,
  `permission` varchar(8) NOT NULL,
  `referralId` varchar(16) NOT NULL,
  `homeaddress` varchar(255) NOT NULL,
  `tin_acct` varchar(255) DEFAULT NULL,
  `sss_num` varchar(255) DEFAULT NULL,
  `number_basis` int(11) NOT NULL COMMENT 'for idnumber purposes only',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES
(1,'ADS22-10-6','Arvie','Admin','n/a','','arvieadmin@gmail.com','$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2','2147483647','2022-10-17 21:36:49','approved','administ','asd12-12345','3 Verder, Tanza, Cavite','n/a','n/a',6),
(2,'ADS2022-10-7','Direct','Sales','n/a','','directsales@gmail.com','$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2','955535367','2022-10-17 21:36:49','approved','userist','','3 Verder, Tanza, Cavite','n/a','n/a',7),
(84,'ADS2022-11-8-eqNy-l47b','Armil','Lumogdang','ADS2022-10-7','Direct  Sales','mr.armillumogdang@yahoo.com','$2y$10$Vn10lJOt20KEfIcKk3aVEuh9DOWyfTokspQYwKrSeO/qTWfRIWyFm','9876765','2022-11-07 23:22:47','approved','userist','DI11-iXI8-AVFG','Tanza, Cavite','98798','89787',8),
(85,'ADS2022-11-9-EXdW-uUvp','IT Team','Support','ADS2022-11-8-eqNy-l47b','Armil  Lumogdang','nacks@gmail.com','$2y$10$IHhh6bQ63lqlh75ONOoVMeAg3njgPHyP3C4wywAik8E.U5eGsXzQS','912345678','2022-11-07 23:35:56','approved','userist','DI11-T2px-B2s9','Tanza','','',9),
(86,'ADS2022-11-10-ygvC-Ic6g','Kevin Roy','Marero','ADS2022-11-9-EXdW-uUvp','IT Team  Support','marero.kevin@gmail.com','$2y$10$Rq.BjvdLWHVGmdYQ01g..uc9t4NLL6O6l08UW5PiItjGoWUuspkC6','1231231','2022-11-07 23:44:44','approved','userist','DI11-7XTz-ZvR3','123, bahay kubo, na munti','123','123',10),
(87,'ADS2022-11-11-OyAi-OnMJ','Cedrick','Orozo','ADS2022-11-9-EXdW-uUvp','IT Team  Support','cedrickorozo@gmail.com','$2y$10$u3mRT49lMPAGH4UXA4dEGeXqftWrXTa9YAENXP9Q.2D8UTFyqi2Tq','99','2022-11-07 23:53:36','approved','userist','DI11-kvV5-FIP9','09555445345','987987','998798',11),
(88,'ADS2022-11-12-KeAu-Ws1n','John Arian','Malondras','','  ','johnarian@gmail.com','$2y$10$Uu9VI08Yl0PzDMSP9EUqaeDn6Tu18y.rlju46BZ0NYd92Kn3FzpCm','99','2022-11-07 23:54:39','approved','userist','DI11-eDcg-kqR5','Namek','99','99',12),
(89,'ADS2022-11-13-UQlb-FPYV','John Arian','Malondras','ADS2022-11-9-EXdW-uUvp','IT Team  Support','johnarian99@gmail.com','$2y$10$2SszW09I06oNm.S.vlJu7uZTTvZBjReaQrxk4NiVFcy0pFTGquh.S','99','2022-11-07 23:58:23','approved','userist','DI11-aH2F-CUxc','Namek','99','99',13),
(90,'ADS2022-11-14-8qKB-aTVg','James Pogi','Orozo','ADS2022-11-9-EXdW-uUvp','IT Team  Support','jamespogi@gmail.com','$2y$10$ME8p7QT6WlFJKu/amWVXTeRl6aFwvRo7ayBv0.EGGZyDbGjWLtPyK','09555445345','2022-11-08 00:04:27','approved','userist','DI11-HRd8-VSFd','Naic, Cavite','','',14);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generated_code`
--

DROP TABLE IF EXISTS `generated_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generated_code` (
  `code_id` int(100) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `userNameOfSponsor` varchar(100) NOT NULL,
  `userIdOfSponsor` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `validity` date NOT NULL,
  `date_created` date NOT NULL,
  `userNameOfCodeOwner` varchar(100) NOT NULL,
  `userIdOfCodeOwner` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `uniqueCode` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generated_code`
--

LOCK TABLES `generated_code` WRITE;
/*!40000 ALTER TABLE `generated_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `generated_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invites` (
  `invitesID` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `idOfInvite` int(30) NOT NULL,
  `invitee` varchar(20) NOT NULL,
  `inviteeID` int(30) NOT NULL,
  PRIMARY KEY (`invitesID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
INSERT INTO `invites` VALUES
(32,'James Orozo',13,'Kevin Roy marero',11),
(41,'Cedrick James Orozo',12,'James Orozo',13),
(43,'q e',17,'James Orozo',13),
(44,'ChrisostomoIbarra',0,'Kevin Roy Marero',0);
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payout_request`
--

DROP TABLE IF EXISTS `payout_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payout_request` (
  `payout_request_id` int(10) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `member_id` varchar(50) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `mode_of_payment` varchar(50) NOT NULL,
  `account_number` varchar(100) DEFAULT NULL COMMENT 'gcash number or bank account number',
  `account_name` varchar(100) DEFAULT NULL,
  `bank_branch` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `receipt` varchar(100) DEFAULT NULL,
  `date_released` varchar(15) DEFAULT NULL,
  `time_released` varchar(15) DEFAULT NULL,
  `transactionIdBasis` int(10) NOT NULL,
  PRIMARY KEY (`payout_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_request`
--

LOCK TABLES `payout_request` WRITE;
/*!40000 ALTER TABLE `payout_request` DISABLE KEYS */;
INSERT INTO `payout_request` VALUES
(6,'2022-10-31','PR-202231101','ADS2022-10-7','One Uno','1000','Gcash','','','','released','../images/81474d6c951d85d569edd1bea61e83cb.jpeg','2022-10-31','03:20 pm',1),
(7,'2022-10-31','PR-202231102','ADS2022-10-8','Two Dos','1000','Gcash','','','','released','../images/9cb210f1aca77cafec32fca1a4be0403.jpeg','2022-10-31','06:17 pm',2),
(9,'2022-10-31','PR-202231104','ADS2022-10-9','Three Tres','1000','BPI','7342382739871','Cedrick James Orozo','BPI Naic','released','../images/e6b67c0731e6953809c445004a35cdec.jpeg','2022-10-31','07:41 pm',4),
(10,'2022-11-04','PR-202204115','ADS2022-10-7','One Uno','1000','Gcash','09555445345','Cedrick James Orozo','','released','../images/4fbcddc50c8588684afdb05c280a7dff.jpeg','2022-11-04','10:46 pm',5),
(11,'2022-11-07','PR-202207116','ADS2022-10-7','One Uno','1000','Cash','','','','released','','2022-11-07','09:05 pm',6),
(12,'2022-11-07','PR-202207117','ADS2022-11-9-EXdW-uUvp','IT Team Support','1500','Cash','','','','released','','2022-11-07','11:07 pm',7);
/*!40000 ALTER TABLE `payout_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points_report`
--

DROP TABLE IF EXISTS `points_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `points_report` (
  `points_report_id` int(100) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `points_earned` varchar(10) NOT NULL,
  `unclaimable` varchar(50) NOT NULL,
  PRIMARY KEY (`points_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points_report`
--

LOCK TABLES `points_report` WRITE;
/*!40000 ALTER TABLE `points_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `points_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rebates_points`
--

DROP TABLE IF EXISTS `rebates_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rebates_points` (
  `rebates_points_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `pointsEarned` int(50) NOT NULL,
  PRIMARY KEY (`rebates_points_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rebates_points`
--

LOCK TABLES `rebates_points` WRITE;
/*!40000 ALTER TABLE `rebates_points` DISABLE KEYS */;
INSERT INTO `rebates_points` VALUES
(4,'ADS2022-10-7','directsales@gmail.com',0),
(31,'ADS2022-11-8-eqNy-l47b','mr.armillumogdang@yahoo.com',0),
(32,'ADS2022-11-9-EXdW-uUvp','nacks@gmail.com',1),
(33,'ADS2022-11-10-ygvC-Ic6g','marero.kevin@gmail.com',4),
(34,'ADS2022-11-11-OyAi-OnMJ','cedrickorozo@gmail.com',0),
(35,'ADS2022-11-12-KeAu-Ws1n','johnarian@gmail.com',0),
(36,'ADS2022-11-13-UQlb-FPYV','johnarian99@gmail.com',0),
(37,'ADS2022-11-14-8qKB-aTVg','jamespogi@gmail.com',0);
/*!40000 ALTER TABLE `rebates_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rebatesamount`
--

DROP TABLE IF EXISTS `rebatesamount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rebatesamount` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rebatesA` int(10) NOT NULL,
  `rebatesB` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rebatesamount`
--

LOCK TABLES `rebatesamount` WRITE;
/*!40000 ALTER TABLE `rebatesamount` DISABLE KEYS */;
INSERT INTO `rebatesamount` VALUES
(1,70,80),
(2,30,20),
(3,30,30),
(4,30,30),
(5,30,20),
(6,30,20),
(7,20,20),
(8,20,20),
(9,20,10),
(10,20,10);
/*!40000 ALTER TABLE `rebatesamount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_codes`
--

DROP TABLE IF EXISTS `referral_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_codes` (
  `gen_date` datetime NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `transfer_date` datetime NOT NULL,
  `referee` varchar(255) DEFAULT NULL,
  `userNameOfCodeOwner` varchar(50) DEFAULT NULL,
  `transact_date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ref_code` varchar(14) NOT NULL,
  `generation_batch` varchar(255) NOT NULL,
  `transaction_id` int(255) NOT NULL AUTO_INCREMENT,
  `codetype` varchar(2) NOT NULL,
  `counter` varchar(50) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_codes`
--

LOCK TABLES `referral_codes` WRITE;
/*!40000 ALTER TABLE `referral_codes` DISABLE KEYS */;
INSERT INTO `referral_codes` VALUES
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21',NULL,NULL,'2022-11-07 23:15:21','to_redeem','DI11-8rq4-6eVz','AT11-Sf3KM4YhI0noTr1G',1,'DI','10'),
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21','ADS2022-11-8-eqNy-l47b',NULL,'2022-11-07 23:15:21','used','DI11-iXI8-AVFG','AT11-Sf3KM4YhI0noTr1G',2,'DI','10'),
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21','ADS2022-11-9-EXdW-uUvp',NULL,'2022-11-07 23:15:21','used','DI11-T2px-B2s9','AT11-Sf3KM4YhI0noTr1G',3,'DI','10'),
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21',NULL,NULL,'2022-11-07 23:15:21','to_redeem','DI11-SrqZ-p0FS','AT11-Sf3KM4YhI0noTr1G',4,'DI','10'),
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21',NULL,NULL,'2022-11-07 23:15:21','to_redeem','DI11-WPy5-eJph','AT11-Sf3KM4YhI0noTr1G',5,'DI','10'),
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21','ADS2022-11-14-8qKB-aTVg',NULL,'2022-11-07 23:15:21','used','DI11-HRd8-VSFd','AT11-Sf3KM4YhI0noTr1G',6,'DI','10'),
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21','ADS2022-11-11-OyAi-OnMJ',NULL,'2022-11-07 23:15:21','used','DI11-kvV5-FIP9','AT11-Sf3KM4YhI0noTr1G',7,'DI','10'),
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21','ADS2022-11-10-ygvC-Ic6g',NULL,'2022-11-07 23:15:21','used','DI11-7XTz-ZvR3','AT11-Sf3KM4YhI0noTr1G',8,'DI','10'),
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21','ADS2022-11-13-UQlb-FPYV',NULL,'2022-11-07 23:15:21','used','DI11-aH2F-CUxc','AT11-Sf3KM4YhI0noTr1G',9,'DI','10'),
('2022-11-07 23:15:21','waiting','2022-11-07 23:15:21','ADS2022-11-12-KeAu-Ws1n',NULL,'2022-11-07 23:15:21','used','DI11-eDcg-kqR5','AT11-Sf3KM4YhI0noTr1G',10,'DI','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54','ADS2022-11-9-EXdW-uUvp','nacks@gmail.com','2022-11-07 23:44:54','used','RA11-hDZs-VlTp','AT11-p5kzFcBV7LHSAfP9',11,'RA','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54',NULL,NULL,'2022-11-07 23:44:54','to_redeem','RA11-LEN8-9cb2','AT11-p5kzFcBV7LHSAfP9',12,'RA','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54',NULL,NULL,'2022-11-07 23:44:54','to_redeem','RA11-YyUr-naEX','AT11-p5kzFcBV7LHSAfP9',13,'RA','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54',NULL,NULL,'2022-11-07 23:44:54','to_redeem','RA11-Bv3i-MP2G','AT11-p5kzFcBV7LHSAfP9',14,'RA','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54',NULL,NULL,'2022-11-07 23:44:54','to_redeem','RA11-Hlfa-XTQE','AT11-p5kzFcBV7LHSAfP9',15,'RA','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54','ADS2022-11-10-ygvC-Ic6g','marero.kevin@gmail.com','2022-11-07 23:44:54','used','RA11-r4pJ-g6Fz','AT11-p5kzFcBV7LHSAfP9',16,'RA','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54','ADS2022-11-10-ygvC-Ic6g','marero.kevin@gmail.com','2022-11-07 23:44:54','used','RA11-gvFX-q8MX','AT11-p5kzFcBV7LHSAfP9',17,'RA','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54','ADS2022-11-10-ygvC-Ic6g','marero.kevin@gmail.com','2022-11-07 23:44:54','used','RA11-sacO-e2rl','AT11-p5kzFcBV7LHSAfP9',18,'RA','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54','ADS2022-11-10-ygvC-Ic6g','marero.kevin@gmail.com','2022-11-07 23:44:54','used','RA11-lhoT-6Ax8','AT11-p5kzFcBV7LHSAfP9',19,'RA','10'),
('2022-11-07 23:44:54','waiting','2022-11-07 23:44:54',NULL,NULL,'2022-11-07 23:44:54','to_redeem','RA11-uHWM-Ef1J','AT11-p5kzFcBV7LHSAfP9',20,'RA','10');
/*!40000 ALTER TABLE `referral_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totalbalance`
--

DROP TABLE IF EXISTS `totalbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL AUTO_INCREMENT,
  `userID` varchar(30) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL,
  `unclaimable` int(50) NOT NULL,
  `totalIncome` int(100) NOT NULL,
  PRIMARY KEY (`totalBalanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalbalance`
--

LOCK TABLES `totalbalance` WRITE;
/*!40000 ALTER TABLE `totalbalance` DISABLE KEYS */;
INSERT INTO `totalbalance` VALUES
(77,'ADS2022-10-7','directsales@gmail.com',550,150,0),
(107,'ADS2022-11-8-eqNy-l47b','mr.armillumogdang@yahoo.com',540,190,0),
(108,'ADS2022-11-9-EXdW-uUvp','nacks@gmail.com',780,0,1500),
(109,'ADS2022-11-10-ygvC-Ic6g','marero.kevin@gmail.com',0,0,0),
(110,'ADS2022-11-11-OyAi-OnMJ','cedrickorozo@gmail.com',0,0,0),
(111,'ADS2022-11-12-KeAu-Ws1n','johnarian@gmail.com',0,0,0),
(112,'ADS2022-11-13-UQlb-FPYV','johnarian99@gmail.com',0,0,0),
(113,'ADS2022-11-14-8qKB-aTVg','jamespogi@gmail.com',0,0,0);
/*!40000 ALTER TABLE `totalbalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transactionId` int(50) NOT NULL AUTO_INCREMENT,
  `transaction2ndId` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `time` varchar(15) NOT NULL,
  `type` varchar(50) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userId` varchar(50) NOT NULL,
  `inviteName` varchar(50) DEFAULT NULL,
  `inviteeName` varchar(50) DEFAULT NULL,
  `packageType` varchar(200) DEFAULT NULL,
  `codeOwner` varchar(200) DEFAULT NULL COMMENT 'indicates the user of the code',
  `codeOwnerId` varchar(200) DEFAULT NULL COMMENT 'this indicates the id of the code user',
  `addedAmount` int(50) DEFAULT 0,
  `TotalBalance` int(50) DEFAULT 0,
  `addedPoints` int(50) DEFAULT 0,
  `totalPoints` int(50) DEFAULT 0,
  `transactionIdBasis` int(11) NOT NULL,
  PRIMARY KEY (`transactionId`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES
(1,'TR-202207111','2022-11-07','10:22 pm','Direct Referral','directsales@gmail.com','ADS2022-10-7','Armil Lumogdang','Direct Sales',NULL,NULL,NULL,500,500,0,0,1),
(2,'TR-202207112','2022-11-07','10:22 pm','Indirect Referral','','n/a','Armil Lumogdang','Direct Sales',NULL,NULL,NULL,10,10,0,0,2),
(3,'TR-202207113','2022-11-07','10:35 pm','Direct Referral','mr.armillumogdang@yahoo.com','ADS2022-11-8-eqNy-l47b','IT Team Support','Armil Lumogdang',NULL,NULL,NULL,500,500,0,0,3),
(4,'TR-202207114','2022-11-07','10:35 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','IT Team Support','Armil Lumogdang',NULL,NULL,NULL,10,510,0,0,4),
(5,'TR-202207115','2022-11-07','10:35 pm','Indirect Referral','','n/a','IT Team Support','Armil Lumogdang',NULL,NULL,NULL,10,10,0,0,5),
(6,'TR-202207116','2022-11-07','10:44 pm','Direct Referral','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp','Kevin Roy Marero','IT Team Support',NULL,NULL,NULL,500,500,0,0,6),
(7,'TR-202207117','2022-11-07','10:44 pm','Indirect Referral','Armil  Lumogdang','ADS2022-11-8-eqNy-l47b','Kevin Roy Marero','IT Team Support',NULL,NULL,NULL,10,510,0,0,7),
(8,'TR-202207118','2022-11-07','10:44 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Kevin Roy Marero','IT Team Support',NULL,NULL,NULL,10,520,0,0,8),
(9,'TR-202207119','2022-11-07','10:44 pm','Indirect Referral','','n/a','Kevin Roy Marero','IT Team Support',NULL,NULL,NULL,10,10,0,0,9),
(10,'TR-2022071110','2022-11-07','10:46 pm','Claimed Rebates','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp',NULL,NULL,NULL,NULL,NULL,0,500,0,0,10),
(11,'TR-2022071111','2022-11-07','10:46 pm','Points','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp',NULL,NULL,'RA',NULL,NULL,0,0,1,1,11),
(12,'TR-2022071112','2022-11-07','10:46 pm','Unclaimable Rebates','mr.armillumogdang@yahoo.com','ADS2022-11-8-eqNy-l47b',NULL,NULL,'RA','IT Team Support','ADS2022-11-9-EXdW-uUvp',70,70,0,0,12),
(13,'TR-2022071113','2022-11-07','10:46 pm','Unclaimable Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','IT Team Support','ADS2022-11-9-EXdW-uUvp',30,30,0,0,13),
(14,'TR-2022071114','2022-11-07','10:46 pm','Unclaimable Rebates','','n/a',NULL,NULL,'RA','IT Team Support','ADS2022-11-9-EXdW-uUvp',30,30,0,0,14),
(15,'TR-2022071115','2022-11-07','10:48 pm','Claimed Rebates','marero.kevin@gmail.com','ADS2022-11-10-ygvC-Ic6g',NULL,NULL,NULL,NULL,NULL,0,0,0,0,15),
(16,'TR-2022071116','2022-11-07','10:48 pm','Points','marero.kevin@gmail.com','ADS2022-11-10-ygvC-Ic6g',NULL,NULL,'RA',NULL,NULL,0,0,1,1,16),
(17,'TR-2022071117','2022-11-07','10:48 pm','Rebates','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',70,570,0,0,17),
(18,'TR-2022071118','2022-11-07','10:48 pm','Unclaimable Rebates','mr.armillumogdang@yahoo.com','ADS2022-11-8-eqNy-l47b',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,100,0,0,18),
(19,'TR-2022071119','2022-11-07','10:48 pm','Unclaimable Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,60,0,0,19),
(20,'TR-2022071120','2022-11-07','10:48 pm','Unclaimable Rebates','','n/a',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,30,0,0,20),
(21,'TR-2022071121','2022-11-07','10:48 pm','Claimed Rebates','marero.kevin@gmail.com','ADS2022-11-10-ygvC-Ic6g',NULL,NULL,NULL,NULL,NULL,0,0,0,0,21),
(22,'TR-2022071122','2022-11-07','10:48 pm','Points','marero.kevin@gmail.com','ADS2022-11-10-ygvC-Ic6g',NULL,NULL,'RA',NULL,NULL,0,0,1,2,22),
(23,'TR-2022071123','2022-11-07','10:48 pm','Rebates','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',70,640,0,0,23),
(24,'TR-2022071124','2022-11-07','10:48 pm','Unclaimable Rebates','mr.armillumogdang@yahoo.com','ADS2022-11-8-eqNy-l47b',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,130,0,0,24),
(25,'TR-2022071125','2022-11-07','10:48 pm','Unclaimable Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,90,0,0,25),
(26,'TR-2022071126','2022-11-07','10:48 pm','Unclaimable Rebates','','n/a',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,30,0,0,26),
(27,'TR-2022071127','2022-11-07','10:48 pm','Claimed Rebates','marero.kevin@gmail.com','ADS2022-11-10-ygvC-Ic6g',NULL,NULL,NULL,NULL,NULL,0,0,0,0,27),
(28,'TR-2022071128','2022-11-07','10:48 pm','Points','marero.kevin@gmail.com','ADS2022-11-10-ygvC-Ic6g',NULL,NULL,'RA',NULL,NULL,0,0,1,3,28),
(29,'TR-2022071129','2022-11-07','10:48 pm','Rebates','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',70,710,0,0,29),
(30,'TR-2022071130','2022-11-07','10:48 pm','Unclaimable Rebates','mr.armillumogdang@yahoo.com','ADS2022-11-8-eqNy-l47b',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,160,0,0,30),
(31,'TR-2022071131','2022-11-07','10:48 pm','Unclaimable Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,120,0,0,31),
(32,'TR-2022071132','2022-11-07','10:48 pm','Unclaimable Rebates','','n/a',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,30,0,0,32),
(33,'TR-2022071133','2022-11-07','10:48 pm','Claimed Rebates','marero.kevin@gmail.com','ADS2022-11-10-ygvC-Ic6g',NULL,NULL,NULL,NULL,NULL,0,0,0,0,33),
(34,'TR-2022071134','2022-11-07','10:48 pm','Points','marero.kevin@gmail.com','ADS2022-11-10-ygvC-Ic6g',NULL,NULL,'RA',NULL,NULL,0,0,1,4,34),
(35,'TR-2022071135','2022-11-07','10:48 pm','Rebates','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',70,780,0,0,35),
(36,'TR-2022071136','2022-11-07','10:48 pm','Unclaimable Rebates','mr.armillumogdang@yahoo.com','ADS2022-11-8-eqNy-l47b',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,190,0,0,36),
(37,'TR-2022071137','2022-11-07','10:48 pm','Unclaimable Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,150,0,0,37),
(38,'TR-2022071138','2022-11-07','10:48 pm','Unclaimable Rebates','','n/a',NULL,NULL,'RA','Kevin Roy Marero','ADS2022-11-10-ygvC-Ic6g',30,30,0,0,38),
(39,'TR-2022071139','2022-11-07','10:53 pm','Direct Referral','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp','Cedrick Orozo','IT Team Support',NULL,NULL,NULL,500,1280,0,0,39),
(40,'TR-2022071140','2022-11-07','10:53 pm','Indirect Referral','Armil  Lumogdang','ADS2022-11-8-eqNy-l47b','Cedrick Orozo','IT Team Support',NULL,NULL,NULL,10,520,0,0,40),
(41,'TR-2022071141','2022-11-07','10:53 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Cedrick Orozo','IT Team Support',NULL,NULL,NULL,10,530,0,0,41),
(42,'TR-2022071142','2022-11-07','10:53 pm','Indirect Referral','','n/a','Cedrick Orozo','IT Team Support',NULL,NULL,NULL,10,10,0,0,42),
(43,'TR-2022071143','2022-11-07','10:54 pm','Direct Referral','','','John Arian Malondras',' ',NULL,NULL,NULL,500,500,0,0,43),
(44,'TR-2022071144','2022-11-07','10:58 pm','Direct Referral','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp','John Arian Malondras','IT Team Support',NULL,NULL,NULL,500,1780,0,0,44),
(45,'TR-2022071145','2022-11-07','10:58 pm','Indirect Referral','Armil  Lumogdang','ADS2022-11-8-eqNy-l47b','John Arian Malondras','IT Team Support',NULL,NULL,NULL,10,530,0,0,45),
(46,'TR-2022071146','2022-11-07','10:58 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','John Arian Malondras','IT Team Support',NULL,NULL,NULL,10,540,0,0,46),
(47,'TR-2022071147','2022-11-07','10:58 pm','Indirect Referral','','n/a','John Arian Malondras','IT Team Support',NULL,NULL,NULL,10,10,0,0,47),
(48,'TR-2022071148','2022-11-07','11:04 pm','Direct Referral','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp','James Pogi Orozo','IT Team Support',NULL,NULL,NULL,500,2280,0,0,48),
(49,'TR-2022071149','2022-11-07','11:04 pm','Indirect Referral','Armil  Lumogdang','ADS2022-11-8-eqNy-l47b','James Pogi Orozo','IT Team Support',NULL,NULL,NULL,10,540,0,0,49),
(50,'TR-2022071150','2022-11-07','11:04 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','James Pogi Orozo','IT Team Support',NULL,NULL,NULL,10,550,0,0,50),
(51,'TR-2022071151','2022-11-07','11:04 pm','Indirect Referral','','n/a','James Pogi Orozo','IT Team Support',NULL,NULL,NULL,10,10,0,0,51),
(52,'TR-2022071152','2022-11-07','11:07 pm','Withdrawal',NULL,'ADS2022-11-9-EXdW-uUvp',NULL,NULL,NULL,NULL,NULL,1500,780,0,0,52);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-08  0:11:54
