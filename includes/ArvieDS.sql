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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES
(1,'ADS22-10-6','Arvie','Admin','n/a','None','arvieadmin@gmail.com','$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2','2147483647','2022-10-17 21:36:49','approved','administ','asd12-12345','3 Verder, Tanza, Cavite','n/a','n/a',6),
(2,'ADS2022-10-7','Direct','Sales','n/a','None','directsales@gmail.com','$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2','955535367','2022-10-17 21:36:49','approved','userist','','3 Verder, Tanza, Cavite','n/a','n/a',7),
(85,'ADS2022-11-9-EXdW-uUvp','IT Team','Support','ADS2022-11-8-eqNy-l47b','Armil  Lumogdang','nacks@gmail.com','$2y$10$IHhh6bQ63lqlh75ONOoVMeAg3njgPHyP3C4wywAik8E.U5eGsXzQS','912345678','2022-11-07 23:35:56','approved','userist','DI11-T2px-B2s9','Tanza','','',9),
(92,'ADS2022-11-10-Q8t2-xiMD','ACSPT','BOSS','ADS2022-10-7','Direct  Sales','healinggaling2020@yahoo.com','$2y$10$B/iFIblzSnTOMvDqOqYo8eD.uXGxk2hPDS1OuzaFsvHFQyML184cm','09300215483','2022-11-08 12:09:35','approved','userist','DI11-8Xhb-Y6Vp','Tanza Cavite','','',10),
(93,'ADS2022-11-11-hHaf-i7sC','IT Tech ','Support','ADS2022-11-10-Q8t2-xiMD','ACSPT  BOSS','nacksph@gmail.com','$2y$10$qLXuRGfHrvZQb5ynAueOV.6EF.7n4.uOPfUVObLHJZOjEydmJzJg2','09088115378','2022-11-08 12:12:35','approved','userist','DI11-gbXj-sNbD','Tanza','123','123',11),
(94,'ADS2022-11-12-OZN1-A2J4','armil','Lumogdang','ADS2022-11-9-EXdW-uUvp','IT Team  Support','mr.armillumogdang@yahoo.com','$2y$10$2CmoHUh22kOc9ALFvNXkueuVRfw8rMzPr8wu6KwR9pLewW8a9mKhC','09300215483','2022-11-08 12:16:18','approved','userist','DI11-3mqQ-4VtZ','Tanza Cavite','','',12),
(95,'ADS2022-11-13-zPdl-i6SA','armil','Lumogdang','ADS2022-11-11-hHaf-i7sC','IT Tech   Support','mr.arvielumogdang@yahoo.com','$2y$10$k1HrFNgQqM6ciZucRh942O6/S.uiwRRf15U3aeGB9JV.VDuEASSvy','09300215483','2022-11-08 12:30:16','approved','userist','DI11-4CnK-dJz3','Tanza Cavite','','',13),
(96,'ADS2022-11-14-YI5d-DqRa','Patrick','Almeda','ADS2022-11-12-OZN1-A2J4','armil  Lumogdang','almedapatrick17@gmail.com','$2y$10$EnHgnC8qoPpLdsTDp.f1V.LdlF7q9wgOHH3xokM1UEiIBagku6cNm','09564496486','2022-11-08 13:03:03','approved','userist','DI11-PxfS-14a7','80 Baging Lipunan st. CAA Las Pinas City','','',14),
(97,'ADS2022-11-15-ClMJ-SzyW','Carissa','Aquino','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','carissa.aquino1@gmail.com','$2y$10$crV4rImkZZeKwH84Kw5/8eGRL91S9lA6.2hfJ2D4Pqa4QDHimf7uK','09976017221','2022-11-08 13:06:51','approved','userist','DI11-IuDR-I8a6','Blk15 lot 6 phase A woodlane malagasang1A imus cavite','','',15),
(98,'ADS2022-11-16-bEQ2-gpFq','Leny','Custodio ','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','custodioleny77@gmail.com','$2y$10$2UnzYmMZ5iFnIsuvJwV8mOFpls1DZtQp.1boA/9vEFIOGM/ojf/nC','09533474036','2022-11-08 13:07:03','approved','userist','DI11-KpER-tjpZ','Blk 5 Lot 4 Liliy St. 3Verde Rosa Subd. Bgy. Sanja Mayor Tanza Cavite','','33-2287793-4',16),
(99,'ADS2022-11-17-H7N3-vIOu','Criselda','Sales','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','megacriselda@gmail.com','$2y$10$vm9.mLErqBsB2GMwoB4HHe.ZNf1pAMxyyjAmFsA0vqeogysh9tAwy','09487073767','2022-11-08 13:08:24','approved','userist','DI11-NTFO-JfWe','Purok 2 Brgy Talic Oroquieta City Misamis Occidental','','',17),
(100,'ADS2022-11-18-hmfH-pZ7J','Gladys','Delos Reyes','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','gdelosreyes1298@gmail.com','$2y$10$5fJufn9U4n3RNZ5TAd/cb.20al1pLPvDPTZjVLzTzHslNM.aE8Q9a','9813130726','2022-11-08 13:26:02','approved','userist','DI11-kRGl-4AXF','Blk 106 L 12 Ph 7 Carissa Homes Punta I Tanza, Cavite','','',18),
(101,'ADS2022-11-19-gNG4-lBHO','Jennifer','Masangkay','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','masangkay0313@gmail.com','$2y$10$w4.vTyB1wheoxvB.EksrPOiTCBG9HrQM9Ihxue87mKWbqb5eQiZ8e','09471885343','2022-11-08 13:41:37','approved','userist','DI11-cPbL-xaCG','blk 6 lot 3 lily street 3 verde rosa subd brgy sanja mayor tanza cavite','445999352','01112828984',19),
(102,'ADS2022-11-20-MCL4-ey3T','Retchie','Josef','ADS2022-11-16-bEQ2-gpFq','Leny  Custodio ','retchie@tcdc.edu.ph','$2y$10$16ST20noDevQslfMycSB.ejiM.VYq7oxrgHmJZ4yyIMMH62S7qu2C','09264921061','2022-11-08 13:43:49','approved','userist','DI11-CVFQ-zHQB','Amaya 5, Tanza, Cavite','903-796826','33-5051816-8',20),
(103,'ADS2022-11-21-prJ2-Wh3u','Jennezelle','Ofiana','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','jennvidallon@gmail.com','$2y$10$rFITOS7PO6xmji5AiUo.JueDLx2p14ltjGHdXxiENMVFbfBaPxZ/i','0908 819 68','2022-11-08 13:44:14','approved','userist','DI11-lyeC-DXiS','146 Acacia St Santarosa Village 1 Brgy Don Jose Sta Rosa Laguna ','403038807','3429086411',21),
(104,'ADS2022-11-22-Ar74-7eV8','Rodel','Alejandro ','ADS2022-11-16-bEQ2-gpFq','Leny  Custodio ','rodel.alejandro33@gmail.com','$2y$10$jQ69jx39hXCT9P3p15vYKeHR8GKH3mi4eCgPFWqd0OHO.G6ST8Lpm','09531269003','2022-11-08 13:49:06','approved','userist','DI11-Eqiu-iAKy','B11 L4 P4 St. Joseph Village 7 Marinig Cabuyao Laguna ','726323894000','3363733-1',22),
(105,'ADS2022-11-23-EuDp-lQLo','Jessa ','Velasquez ','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','jessav610@gmail.com','$2y$10$TEZmgtHg3m4lNGBIX4qCEOxYF8a5Y.QOxIFwC7rDy8MqTeuEJw6NG','09618174204','2022-11-08 14:04:30','approved','userist','DI11-D5RE-Zjdb','777 restheaven st dalahican barangay 7 cavite city ','None','None',23),
(106,'ADS2022-11-24-it2l-Ibwp','Vergel','AraÃ±as','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','marinethreyes5@gmail.com','$2y$10$d.VaV1soQdiTpMV91UGJW.8R5roplnOHDNpJizTvmL1fEDZ/GO.vK','09519270996','2022-11-08 14:13:02','approved','userist','DI11-6h5Q-4Mue','1053 maligaya st, biwas tanza, cavite','','',24),
(107,'ADS2022-11-25-UMd3-n5NX','Tanya','Lusica','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','tanyalusica@gmail.com','$2y$10$BeIlshILMGU9Vba/G5stFO1K1iBE5bczAbBFvBuZskSFE.0Oefg2e','09466023411','2022-11-08 14:21:05','approved','userist','DI11-dhfH-BwVp','Poblacion Candijay Bohol','','',25),
(108,'ADS2022-11-26-kVhI-XvPm','Ricardo','De Leon','ADS2022-11-16-bEQ2-gpFq','Leny  Custodio ','rhozedeleongarcia@gmail.com','$2y$10$9VXOFYhCAo0CYlCAjEwM3.wT3xrWVqFQuN2oLuspThblvtugu2BMi','09652774691','2022-11-08 14:51:42','approved','userist','DI11-ZWeV-Dw2j','B12 L30 Hillsview Ph2 Timalan Balsahan Naic, Cavite','','0342503485',26),
(109,'ADS2022-11-27-twTE-wW7U','Raquel ','Osabel ','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','ypibadong@yahoo.com','$2y$10$o.xY9o40yxxEkhDWwNoCAeEhr9WErJgKQKTGO1jMJwjTFfhhRV2Su','09159822749','2022-11-08 15:06:19','approved','userist','DI11-Wy4a-Dj4Y','Blk6 Lot1, 3 Verde Rosa, sanja Mayor, tanza cavite ','910-644-976','03-9989302-5',27),
(110,'ADS2022-11-28-NQhx-pa7t','Josephine','Rafon','ADS2022-11-16-bEQ2-gpFq','Leny  Custodio ','jhorafon@gmail.com','$2y$10$mTdsa0cOEC4w1rK.CchxquAhzGOtzjEFAJm/SBUPxxAf8tarM5QmK','09318880169','2022-11-08 15:23:11','approved','userist','DI11-v3il-fAZ3','Hillsview Royale Phase 3 blk 9 lot 19 Timalan Balsahan Naic Cavite','','',28),
(111,'ADS2022-11-29-q2Oz-3iBE','Ruby Jane','Miguel','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','rubyjane.palanog@gmail.com','$2y$10$OIeJ9ObwSPCW21IpvN1BGuqFUALQNpH/EMLAqzXjsfw8/ygXSKQme','09612226500','2022-11-08 15:32:19','approved','userist','DI11-NqrE-mx1j','Brgy Nagasi,La Carlota City,Negros Occidental','285-992-370','07-2286632-8',29),
(112,'ADS2022-11-30-c9xF-Tpod','Rodalyn','Ortega','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','odaiski26@gmail.com','$2y$10$bLzMAnTYvS9pqgBHfguQz.To8Gsdd0MZdOAMI6/DJFg8V7cjx1wFe','09465844464','2022-11-08 16:52:03','approved','userist','DI11-IStC-IBab','211 d.p.jimenez st.,wawa3 rosario cavite','','33-664017-8',30),
(113,'ADS2022-11-31-zxK1-tm8Y','Ligaya O.','Vargas','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','johnrhodlaye@gmail.com','$2y$10$zrtGldiEp/iY5BiGTFiMYuT8fXEj4YSzNK72pRtPAIzYCekGYxaFq','09121287440','2022-11-08 19:32:42','approved','userist','DI11-53KE-jYyl','Blk. 3 Lot. 14-A Lakatan St. Golden Acres Subd. Talon Uno Las PiÃ±as City','502-207-569-000','0033-2662249-9',31),
(114,'ADS2022-11-32-uTWy-QuRx','Sharon','Flores','ADS2022-11-16-bEQ2-gpFq','Leny  Custodio ','sha098915@gmail.com','$2y$10$1f8IJqfJlpJbodAtCv65zOQzsRwiyfk7D/8ofBTpPg7/wK4kjMzQ.','09466437900','2022-11-08 20:07:56','approved','userist','DI11-kYT5-GYET','Block 8 Lot','372-662-687-000','04-1647572-4',32),
(115,'ADS2022-11-33-JdQN-Fwx9','Rosalinda ','Tumacder ','ADS2022-11-20-MCL4-ey3T','Retchie  Josef','rosalindatumacder@gmail.com','$2y$10$EwFyE6N4TOMuYoOgzUtDtOYP4yb2FBSd7Kci7MPNQWT80Anvrc7pa','09482787566','2022-11-08 20:09:31','approved','userist','DI11-kcYn-fcra','B5 lot 40Hausko Homes JuluganVI Tanza Cavite ','136-537-917-000','03-5905826-6',33),
(116,'ADS2022-11-34-QPru-Km6S','Michelle','Campang','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','mbucal@gmail.com','$2y$10$ZuYGfMmHIHHB6Rd8iesKjeAia.DN56jzjTI2How9pYH3Udjht3doi','09762399827','2022-11-08 20:37:44','approved','userist','DI11-aTOK-62Dy','B17 L35 Monterra Verde Subd., Sanja Mayor, Tanza, Cavite','','',34),
(117,'ADS2022-11-35-BVFY-8Xk0','Pacita','Tambong','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','pacitatambong15@gmail.com','$2y$10$Y1Y9XXBjDZzt7wulWKp9oulp3A6WhQfNgAIs3eeX2ydGkpEGGc5tm','09955958716','2022-11-08 21:24:15','approved','userist','DI11-tsOQ-sSWI','95 emerald st marikit subd concipcion uno marikina city','','33-395535-42',35),
(118,'ADS2022-11-36-sZaA-OaKi','ORLY ','BOMBUHAY ','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','orly02bomlife@gmail.com','$2y$10$lOtzGznpjBa0qyyPzBCwCeU947k7Km/mP7ViBzfHXoFCMHukRErKC','09664893750','2022-11-08 21:29:43','approved','userist','DI11-mkf0-V0fN','TANZA CAVITE ','','',36),
(119,'ADS2022-11-37-nLhu-DICv','Saldy','Gregorio','ADS2022-11-16-bEQ2-gpFq','Leny  Custodio ','saldyg3267@gmail.com','$2y$10$aCdvDE9fAy2zTB/5cjIO/.pdU1SNS8MDCxgPo2uko4STn/i0k9/aq','09472958471','2022-11-09 08:40:34','approved','userist','DI11-ER4f-svIT','BLK 11 lot 4 Homes2 SJV7 Gulod, City of Cabuyao, Laguna ','206-873-626','04-3331585-4',37),
(120,'ADS2022-11-38-oNkO-e9bi','May','Viscayno','','  ','june20@gmail.com','$2y$10$fY8bWTUC5ObHLWLhSZZaIumOehQm40JD4q7W3BNK/IDzL/5OMXYPG','09759461448','2022-11-09 13:37:35','approved','userist','DI11-Liuj-dTHt','Blk 3 Alley 74 West Bankroad Brgy. San Andres Cainta Rizal','','',38),
(121,'ADS2022-11-39-TXz6-oCkX','Jinky','Estinor','ADS2022-11-35-BVFY-8Xk0','Pacita  Tambong','jhing.barruga2171@gmail.com','$2y$10$6/EO6rjpS5JIj00shvS2zeqIQ7xVZqo0vmvf4dz2pAHg8Y.QCFkKW','09171390455','2022-11-09 17:22:05','approved','userist','DI11-XGIw-QX8Y','#7F new #5F old F. Castillo St. Concepcion Uno Marikina City 1807','186-494-576','33-1651289-4',39),
(122,'ADS2022-11-40-7KOa-rlfI','Emiliana','Domingo','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','emeebabes@yahoo.com','$2y$10$7HuYs.gtmC7IcjUVqCL06.FnNE/vB5nKVvxZO20Jne9A7C0ZE8bOO','09209380586','2022-11-09 18:07:23','approved','userist','DI11-qJw1-kul3','Noveleta Cavite','105437237','0348694123',40),
(123,'ADS2022-11-41-ibTl-Fxw0','Jesusa ','Rama','ADS2022-11-35-BVFY-8Xk0','Pacita  Tambong','ramasusie321@gmail.com','$2y$10$9UXGg8EM1F6Dpi5Qkstooeb5S2t2WceIqMPchyVgi9C/dc2vdMdWG','09174242373','2022-11-09 19:10:27','approved','userist','DI11-ziHy-UMfZ','438 Ilang-ilang St. Real subdivision Palico 1 Imus Cavite ','','34-1513138-3',41),
(124,'ADS2022-11-42-2qbj-EexR','Patrixia ','Escobar','ADS2022-11-35-BVFY-8Xk0','Pacita  Tambong','Patrixia131@yahoo.com','$2y$10$lH5jr.odYe0rvwGYgUw4He3i9YHVnJxUPIMNg71jCLXxfVIH/WIAi','09951577005','2022-11-09 21:27:46','approved','userist','DI11-5RKg-9JO6','Block 30a  lot 3 montefaro West Imus cavite ','','',42),
(125,'ADS2022-11-43-Y0By-z9Ym','Irene','Ortega','ADS2022-11-30-c9xF-Tpod','Rodalyn  Ortega','zabalortegairene3@gmail.com','$2y$10$Ih.zpKnecgFu9y2vFC84lupf6gvwRejGEEzeVqjif8aZz8bTWBTnS','09506627147','2022-11-09 22:51:31','approved','userist','DI11-HAlO-7Cz0','WAWAIII ROSARIO CAVITE ','','',43),
(126,'ADS2022-11-44-4alB-CLzE',' Melanie Manuel','Bahalla,','','  ','melaniebahalla128@gmail.com','$2y$10$kUJvwuAngHkZYOVpqIN30./j9drcRrsjsaOeCGwymnt5GI8IiQEqC','09455645460','2022-11-09 23:46:32','approved','userist','DI11-qL2k-g1p4','#8 K-1st. St.  Kamuning road Quezon City','460-597-356','33-5978687-8',44),
(127,'ADS2022-11-45-e0kG-iNat','JEREMIAH','ABAYA','ADS2022-11-16-bEQ2-gpFq','Leny  Custodio ','abayajeremiah92@gmail.com','$2y$10$9Uc1k3Y8wdeEnfHfO1v8QO2iXn54Y1TuOLF68SaRVHbHcC1G.P2aq','09050732452','2022-11-10 00:14:54','approved','userist','DI11-cEFm-Jixb','Block 13 Lot 5 Phase 1 St. Joseph Village 7, Purok 5, Brgy. Marinig, City of Cabuyao, Laguna, Philippines, 4025 ','317-168-551-000',' 34-4439515-8',45),
(128,'ADS2022-11-46-4rpM-pOUq',' Melanie Manuel','Bahalla,','ADS2022-11-41-ibTl-Fxw0','Jesusa   Rama','botanical342@gmail.com','$2y$10$Chy1v8pnxJaRJO1fUITh4uW5cPICHd4Lf/5dDfdctkSxnDBypTKXu','09455645460','2022-11-10 00:17:40','approved','userist','DI11-gkja-OvYL','#8 K-1st. St.  Kamuning road Quezon City','','33-5978687-8',46),
(129,'ADS2022-11-47-n35D-HYr6','Marlin','Mancao','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','marlinlibued06@gmail.com','$2y$10$2PhZ2oRUHm/7mGl1lvabsOwI7kNnvHzin8vkwxuvrSVmN7qOoUiZe','09154164486','2022-11-10 07:48:41','approved','userist','DI11-hu2q-w3qN','Block 126 lot 56 P7,Carissa homes,Punta 1,Tanza,Cavite','443-760-004','02-0981242-6',47),
(130,'ADS2022-11-48-GN9u-kxQE','jeffrey ','rosadia','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','jeffpeachy23@gmail.com','$2y$10$T0cB7jSQfWCPeXW2zaNmE.BQ0tBT0Zp3ByXG/6zJBfVP422O24YNy','09087865281','2022-11-10 09:04:54','approved','userist','DI11-5jbn-tCsK','julugan tanza cavite','','',48),
(131,'ADS2022-11-49-Cdkc-8tNU','Editha','Rosadia','ADS2022-11-48-GN9u-kxQE','jeffrey   rosadia','jeffpeachy@gmail.com','$2y$10$b7V8V7PZ.3BkzFewvrD2duhWManTInlbHgWU3R0jOCqBgEkIpt.VC','09362784827','2022-11-10 09:17:49','approved','userist','DI11-yeP0-UAuX','julugan tanza cavite','','',49),
(132,'ADS2022-11-50-2qoX-wIfk','Sheryl','Benitez','ADS2022-11-30-c9xF-Tpod','Rodalyn  Ortega','srbenitez1983@gmail.com','$2y$10$.jqUYOa9xRPEfdWFZ6WPo.rvY/HY.eohHR.M1IlmOuF4dl1mzpYRy','09501306933','2022-11-10 09:31:31','approved','userist','DI11-W8br-8gH5','Brgy. Luciano Phase 2 Trece Martires City ','','',50),
(133,'ADS2022-11-51-j1uh-JImU','Cristine','Flores ','ADS2022-11-41-ibTl-Fxw0','Jesusa   Rama','cristinefflores@yahoo.com','$2y$10$9bsl3DOvX9qCRmDliwj3aOueSRdN5TGv.Zfy0/CeHYWq5Z3ZS6zuS','09509999625','2022-11-10 09:52:51','approved','userist','DI11-Ds4Z-P5zW','blk 4 lot 8 Salinasville 3 Salinas 1 Bacoor City','191 905 587 000','33-8969681-5',51),
(134,'ADS2022-11-52-EvVT-WRjP','Falaviana Lea ','Andal','ADS2022-11-35-BVFY-8Xk0','Pacita  Tambong','landicholea760@gmail.com','$2y$10$x2qX9GwthUKKCRtjrf40OexmyxpUypxovV0h7NUGdlGyNVU.6URsa','09556481037','2022-11-10 10:39:29','approved','userist','DI11-ZQfG-pPdn','Poblacion Agoncillo Batangas','913-760-812','04-3258054-1',52),
(135,'ADS2022-11-53-ETzv-LNnU','Reina','Sucion','ADS2022-11-16-bEQ2-gpFq','Leny  Custodio ','reinasucion1@gmail.com','$2y$10$zCc8mWnOsnrJhKyj3Talsu/JpD2A5iA4.RK/ARGXa9BDCi3BwS6HK','09977600745','2022-11-10 11:17:10','approved','userist','DI11-TEWo-8h9s','PHASE 3 Hillsview royale subd Timalan Balsahan Naic Cavite ','513-329-297-00000','33-9856005-5',53),
(136,'ADS2022-11-54-5O3Y-B5UR','Rosemarie','Banasihan','','  ','June27@gmail.com','$2y$10$RUqjn1uE9P.bqUVwMNVPreFfqLMAbUnqFBhUGbpDqw3byQlKX22ly','09368691380','2022-11-10 12:40:25','approved','userist','DI11-VhBY-8zyX','4419 Silangan Bayog  Los Banos Laguna','','',54),
(137,'ADS2022-11-55-FEw6-cIPR','Beck','Pabillano','','  ','june25@gmail.com','$2y$10$EDVtFMKmTaW1Y3GC3hq8Mel0zIs0/12ux2OzLtZOgrKz.ue3wiENK','09919333219','2022-11-10 13:09:24','approved','userist','DI11-kpH7-1zbB','562 R.Vicencio St.Brgy Hagdang Bato Libis  Mandaluyong ,City','','',55),
(138,'ADS2022-11-56-dtpM-YD52','Marjorie ','Consolacion ','','  ','April2@gmail.com','$2y$10$rB8y2cR7l0EswbujuwQUKeAE435MPnXj6.TWh4SI977IyvYpAdBja','09995132121','2022-11-10 13:17:45','approved','userist','DI11-wxCH-QH6z','3 Juana St. Azicate Homes Gen. T. de Leon, Valenzuela City ','','',56),
(139,'ADS2022-11-57-wNoe-K27N','Sarah Jane','Denia','ADS2022-11-49-Cdkc-8tNU','Editha  Rosadia','misisdenia@gmail.com','$2y$10$neCsMBJi9WEX.KWG5MeE7O1x4C4Hs6Jqpjfxq4JcZ4CsK1B2HTGJO','09452203805','2022-11-10 18:39:40','approved','userist','DI11-2Q7O-PmlU','B1 L7, VillaMonteverde Subd., Mulawin Tanza Cavite','','',57),
(140,'ADS2022-11-58-uf49-djZp','Luzminda','Williams','ADS2022-11-16-bEQ2-gpFq','Leny  Custodio ','luzmindadelavega23@gmail.com0','$2y$10$/WEwULrIHkSJANSHUHfos.Sge5q2lCuMjyJdsF5ey3hxiMO0aadP.','09613303947','2022-11-10 20:33:02','approved','userist','DI11-P9Nj-WKAD','Block30 lot3 landmass park subdivision','','',58),
(141,'ADS2022-11-59-poH2-CvWG','Mary Jane','Marquez','ADS2022-11-20-MCL4-ey3T','Retchie  Josef','janemary080291@gmail.com','$2y$10$HlQrf2omqYUpMrWDzx/p7.Krh9vi1smGSjR1W432qFo5m8uCn7Pmq','09485187353','2022-11-10 22:12:02','approved','userist','DI11-z1m7-wIPd','San juan II, General trias cavite','','',59),
(142,'ADS2022-11-60-fcSg-gLDa','Jennelyn','Pujol','ADS2022-11-30-c9xF-Tpod','Rodalyn  Ortega','jennelynpujol@gmail.com','$2y$10$cqpe76FFsoetDmlRAmLaN.APuoby8EgJuP8YKK2Lyn5KMoV7swRQG','09552958166','2022-11-10 22:16:30','approved','userist','DI11-rAC7-C4lS','Section 10 Block 7 Lot 23 Belvedere 3 Brgy. Pasong Kawayan 2 Gen. Trias City, Cavite','486963213000','3390399826',60),
(143,'ADS2022-11-61-i8F0-5dgT','ROMULO','ARENAS','','  ','Februaty24@gmail.com','$2y$10$oLW3IBnRAvH9iL9o6Y6oPOI.lI655rPNH.b5Hyzv12RWmBCuvhpee','09359228749','2022-11-11 17:52:35','approved','userist','DI11-9XZy-RHjT','164 BRGY. LATORRE, TALAVERA, NUEVA ECIJA','','',61),
(144,'ADS2022-11-62-jEYc-Fj0Y','Myraflor ','Enrile','','  ','March9@gmail.com','$2y$10$juTie1xQT72hspho.7c4wu9gmi4va.C3bhzB8ajRlc3D80YoDmxqa','09977580262','2022-11-11 18:03:19','approved','userist','DI11-dGOA-e8wi','Purok 7 San Marcos Calumpit Bulacan','','',62),
(145,'ADS2022-11-63-3Fwq-oZk2','Ernest V.','Navarro  ','','  ','june21@gmail.com','$2y$10$5I45RyyHZqzENP7q/mqgaeRTvTvgqRSlLWa/ToQDRZZmdGQGGOhZC','09072852993','2022-11-11 18:10:01','approved','userist','DI11-yEtD-pij7','No.13 Saint Simon St. Dreamland Subd. Banaba San Mateo Rizal','','',63),
(146,'ADS2022-11-64-qgU7-X31r',' Beverly','Odvina','','  ','october8@gmail.com','$2y$10$/zvU/SWkz0QTC1HzxKsslOtIujnop5bkpHumiaW6tSxQe/KDYUE/u','09637304060','2022-11-11 18:21:53','approved','userist','DI11-ni0x-AakY','Cuevas Subdivision. Salcedo 1, Noveleta, Cavite','','',64),
(147,'ADS2022-11-65-qZjh-Yb1R','Jose','Gamer','','  ','may22@gmail.com','$2y$10$dYBRNuFY5JfEspgapL6.3.cX7kZw/AZ84OjhjlXZfBgC1T0nMTMKa','09395004889','2022-11-11 18:32:12','approved','userist','DI11-1wFs-cdSQ','91A. Aluna St. Brgy. Balongbato Sanjuan City Metro Manila','','',65),
(148,'ADS2022-11-66-wzKN-oXq0','Emelie R.','Ramos','','  ','february16@gmail.com','$2y$10$zBAhluo21edWAS0u7V5a8O4JuTbOgKqqvyvbPQ24nqKqBrUpSgYZ.','09533547354','2022-11-11 18:50:48','approved','userist','DI11-upaf-1T2v','District3 Block 23 Lot. 26 Pandacaqui Rest Mexico Pampngga 2022:#Feb 16','','',66),
(149,'ADS2022-11-67-kpNo-xlyE','Marlon','Sicat','','  ','february3@gmail.com','$2y$10$oGf3/6nAj.yMV..Zn0Iny.f1tfHuDLGAxo7RFgvFZJ2prrO.tnqzC','09171826977','2022-11-11 19:13:12','approved','userist','DI11-mczi-sYBK','Dolaoan Anda, Pangasina','','',67),
(150,'ADS2022-11-68-W3YV-NRng','Michelle Tan','Manalo','','  ','february2@gmail.com','$2y$10$AGvTZJIuTnlks5vr/X6gOOTA2GEfFRPoswVP2P0iRmqBdv7UG/rtO','09338688712','2022-11-11 19:23:39','approved','userist','DI11-vgxK-EtFV','  Lot 40 Blk 3 Thunderbird St Cristina Homes Sambat San Pascual Batangas','','',68),
(151,'ADS2022-11-69-iWj7-PjlH','Editha R.','Arquero','','  ','april12@gmail.com','$2y$10$JreEPtTjc04glARESvq0ne3kNBRqYkrn2El1iyaUwS4MxJaFmnMZi','09258382361','2022-11-11 19:31:27','approved','userist','DI11-WQ12-6Ww3','599 Rosal St Sta Romana Subd Brgy. Abar 1st San Jose City N. Ecija','','',69),
(152,'ADS2022-11-70-H5jX-Eerx','Evangeline','Nudo','','  ','february5@gmail.com','$2y$10$aGioNr8bkYDl8KOU3/CYq.wPSvB.a8I4QHQ2zWBqazLJ2q18USkh2','09434009253','2022-11-11 19:38:52','approved','userist','DI11-0oqz-viEu','Black 16 Lot 2 Manggahan Liwayway Anabu 1C Imus Cavite','','',70),
(153,'ADS2022-11-71-Zdlz-sYqb','Ramil','Canlapan','','  ','january11@gmail.com','$2y$10$zfxor/CQQGQVICLro9HEaeCH8xvAle.npLI0eSPU32eRUfsf1h6qi','09232527091','2022-11-11 20:02:15','approved','userist','DI11-cgh7-e4DY','Purok 1 Mancatian Porac Pampangga','','',71),
(154,'ADS2022-11-72-UbrC-HOoe','Glaiza G.','Salting','','  ','march29@gmail.com','$2y$10$i3.5NtpYyD.II660UHBOf.VcdUNalR3eLwq6Ab7hbbM3LPG5GUcr6','09100611356','2022-11-11 20:10:31','approved','userist','DI11-PJn9-PbNp','Sitio Tomoro Poblacion Anda Pangasinan','','',72),
(155,'ADS2022-11-73-RNyC-7NFW','Marietta','Gonzales','','  ','february19@gmail.com','$2y$10$aF4pIGUmCsa6coTc8kwt8.xauR8InorsCuXICs0N.R.WVpiUxdOwS','09382643381','2022-11-11 20:17:51','approved','userist','DI11-f1Ku-9koV','Brgy Dibacong Casiguran Aurora','','',73),
(156,'ADS2022-11-74-jwym-mH1z','Erickson','Vinturina','','  ','august8@gmail.com','$2y$10$Z90IImxPbHO6t3cVKfz1Nu4ERag4J4.luIBnYRirCaSoDycTFkdde','09271205079','2022-11-11 20:21:19','approved','userist','DI11-aA0V-yqes','Maynganay, Santa Maria, Ilocos Sur','','',74),
(157,'ADS2022-11-75-XrRc-wJKZ','Eda','Ambay','','  ','october23@gmail.com','$2y$10$26VzLGGgWqfzu44tFZh3EutZsxdgfuCfRGwNUHM1kNyqxGlrEHViu','09099310431','2022-11-11 21:32:49','approved','userist','DI11-1vky-NHn1','block 7 lot 52 LGU Montalban height San Jose Rodriguez Rizal','','',75),
(158,'ADS2022-11-76-gXcv-uzFi','Ma Theresa A.','Marcelino','','  ','december23@gmail.com','$2y$10$g2dRHwuJjyyQ.JTddd/fO.4REsz4ihQ1TMAWmc.fEXMvJSndJpPtG','09204520168','2022-11-11 21:52:30','approved','userist','DI11-tL0K-S709','4068 Kalayaan Brgy. Thejeros  Makati City','','',76),
(159,'ADS2022-11-77-njoI-iNtZ','Rhea','Gevero','ADS2022-11-11-hHaf-i7sC','IT Tech   Support','geverorhea@gmail.com','$2y$10$.1LuAPewBgb6QmXcEIelDOztGZH80FgSOd1kcexVy6G7s4RvSL6b6','09088115379','2022-11-11 23:09:08','approved','userist','DI11-gdPZ-vl7C','Springtown  Bucal Tanza Cavite','123','123',77),
(160,'ADS2022-11-78-BxCO-w4S0','Princess Noemi','Gonzales','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','princessnoemi16@gmail.com','$2y$10$Kft47smS1xswTjX3hKM6q.03pWizAu4F99pgsMFqgPBo1oVLz5arO','09776769979','2022-11-12 08:53:09','approved','userist','DI11-WNl7-IR8X','182 Anabu 1-A Imus City, Cavite','476-185-868-000','24-5279692-7',78),
(161,'ADS2022-11-79-TGUN-bakL','Rex','Dumot','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','rexdumot@yahoo.com','$2y$10$bybIOckPss4xItBHgt45AOX4S7kttdpT8z7eC5Fev0ItqYMqXEaiW','09686659749','2022-11-12 10:40:45','approved','userist','DI11-kMlc-CciD','Dagupan Aglipay Quirino','','',79),
(162,'ADS2022-11-80-MQxA-rBSQ','Jelyn','Mondejar','ADS2022-11-13-zPdl-i6SA','armil  Lumogdang','jelmondejar25@gmail.com','$2y$10$FXVn1cWnkUTXkcZTWsJiz.KSSxQlY4.w670xvToS682EOb/3Iqom.','09056253968','2022-11-12 11:06:21','approved','userist','DI11-IF4A-kCqH','Lot 13 Block 32 Phase 3 Workersville Punta 1 Tanza Cavite','426-450-641-000','34-2173602-8',80),
(163,'ADS2022-11-81-u1n8-82ET','Ronald','Espinosa','ADS2022-11-35-BVFY-8Xk0','Pacita  Tambong','ronald0824@yahoo.com','$2y$10$LEk0.3yut1CUkO0jZjQdH.emI4Y7attXWGwMY8n.Z4kB.2NbIJue2','09673864843','2022-11-13 10:37:44','approved','userist','DI11-gFQ2-Nir0','Blk 82 Lit 12 Juniper Lane Robinsons Homes East San Jose Antipolo City','','3338982225',81),
(164,'ADS2022-11-82-ZI14-LCvc','Alona','Mortel','ADS2022-11-35-BVFY-8Xk0','Pacita  Tambong','alona.mortel@yahoo.com','$2y$10$loDgCDgCuO/TEEIFRgCujeMOfI1SWncJGpvThAqwogNAz1hnhvG3u','09455312951','2022-11-13 12:12:33','approved','userist','DI11-GaAk-ZOWp','Poblacion,Agoncillo,Batangas','458 529 019 000','04 090 2142 5',82),
(165,'ADS2022-11-83-IGNg-k3AR','Rosalinda','Esguerra','ADS2022-11-30-c9xF-Tpod','Rodalyn  Ortega','Rosalindaesguerra4@gmail.com','$2y$10$iiesel0WDxsPbYqQR3VF6.E5VKuO.bpMLdC9pMq5wP14m8OJOq1nW','09352851092','2022-11-13 12:15:48','approved','userist','DI11-Z0s2-pjcD','381 habagat st wawa 1 rosario cavite','168-660-469-000','04-3021527-4',83);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_request`
--

LOCK TABLES `payout_request` WRITE;
/*!40000 ALTER TABLE `payout_request` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rebates_points`
--

LOCK TABLES `rebates_points` WRITE;
/*!40000 ALTER TABLE `rebates_points` DISABLE KEYS */;
INSERT INTO `rebates_points` VALUES
(4,'ADS2022-10-7','directsales@gmail.com',1),
(31,'ADS2022-11-8-eqNy-l47b','mr.armillumogdang@yahoo.com',0),
(39,'ADS2022-11-10-Q8t2-xiMD','healinggaling2020@yahoo.com',0),
(40,'ADS2022-11-11-hHaf-i7sC','nacksph@gmail.com',0),
(41,'ADS2022-11-12-OZN1-A2J4','mr.armillumogdang@yahoo.com',0),
(42,'ADS2022-11-13-zPdl-i6SA','mr.arvielumogdang@yahoo.com',1),
(43,'ADS2022-11-14-YI5d-DqRa','almedapatrick17@gmail.com',0),
(44,'ADS2022-11-15-ClMJ-SzyW','carissa.aquino1@gmail.com',0),
(45,'ADS2022-11-16-bEQ2-gpFq','custodioleny77@gmail.com',1),
(46,'ADS2022-11-17-H7N3-vIOu','megacriselda@gmail.com',0),
(47,'ADS2022-11-18-hmfH-pZ7J','gdelosreyes1298@gmail.com',0),
(48,'ADS2022-11-19-gNG4-lBHO','masangkay0313@gmail.com',2),
(49,'ADS2022-11-20-MCL4-ey3T','retchie@tcdc.edu.ph',0),
(50,'ADS2022-11-21-prJ2-Wh3u','jennvidallon@gmail.com',0),
(51,'ADS2022-11-22-Ar74-7eV8','rodel.alejandro33@gmail.com',0),
(52,'ADS2022-11-23-EuDp-lQLo','jessav610@gmail.com',0),
(53,'ADS2022-11-24-it2l-Ibwp','marinethreyes5@gmail.com',0),
(54,'ADS2022-11-25-UMd3-n5NX','tanyalusica@gmail.com',0),
(55,'ADS2022-11-26-kVhI-XvPm','rhozedeleongarcia@gmail.com',0),
(56,'ADS2022-11-27-twTE-wW7U','ypibadong@yahoo.com',0),
(57,'ADS2022-11-28-NQhx-pa7t','jhorafon@gmail.com',0),
(58,'ADS2022-11-29-q2Oz-3iBE','rubyjane.palanog@gmail.com',0),
(59,'ADS2022-11-30-c9xF-Tpod','odaiski26@gmail.com',0),
(60,'ADS2022-11-31-zxK1-tm8Y','johnrhodlaye@gmail.com',0),
(61,'ADS2022-11-32-uTWy-QuRx','sha098915@gmail.com',0),
(62,'ADS2022-11-33-JdQN-Fwx9','rosalindatumacder@gmail.com',0),
(63,'ADS2022-11-34-QPru-Km6S','mbucal@gmail.com',0),
(64,'ADS2022-11-35-BVFY-8Xk0','pacitatambong15@gmail.com',0),
(65,'ADS2022-11-36-sZaA-OaKi','orly02bomlife@gmail.com',0),
(66,'ADS2022-11-37-nLhu-DICv','saldyg3267@gmail.com',0),
(67,'ADS2022-11-38-oNkO-e9bi','june20@gmail.com',0),
(68,'ADS2022-11-39-TXz6-oCkX','jhing.barruga2171@gmail.com',0),
(69,'ADS2022-11-40-7KOa-rlfI','emeebabes@yahoo.com',0),
(70,'ADS2022-11-41-ibTl-Fxw0','ramasusie321@gmail.com',0),
(71,'ADS2022-11-42-2qbj-EexR','Patrixia131@yahoo.com',0),
(72,'ADS2022-11-43-Y0By-z9Ym','zabalortegairene3@gmail.com',0),
(73,'ADS2022-11-44-4alB-CLzE','melaniebahalla128@gmail.com',0),
(74,'ADS2022-11-45-e0kG-iNat','abayajeremiah92@gmail.com',0),
(75,'ADS2022-11-46-4rpM-pOUq','botanical342@gmail.com',0),
(76,'ADS2022-11-47-n35D-HYr6','marlinlibued06@gmail.com',0),
(77,'ADS2022-11-48-GN9u-kxQE','jeffpeachy23@gmail.com',1),
(78,'ADS2022-11-49-Cdkc-8tNU','jeffpeachy@gmail.com',1),
(79,'ADS2022-11-50-2qoX-wIfk','srbenitez1983@gmail.com',0),
(80,'ADS2022-11-51-j1uh-JImU','cristinefflores@yahoo.com',0),
(81,'ADS2022-11-52-EvVT-WRjP','landicholea760@gmail.com',0),
(82,'ADS2022-11-53-ETzv-LNnU','reinasucion1@gmail.com',0),
(83,'ADS2022-11-54-5O3Y-B5UR','June27@gmail.com',0),
(84,'ADS2022-11-55-FEw6-cIPR','june25@gmail.com',0),
(85,'ADS2022-11-56-dtpM-YD52','April2@gmail.com',0),
(86,'ADS2022-11-57-wNoe-K27N','misisdenia@gmail.com',0),
(87,'ADS2022-11-58-uf49-djZp','luzmindadelavega23@gmail.com0',0),
(88,'ADS2022-11-59-poH2-CvWG','janemary080291@gmail.com',0),
(89,'ADS2022-11-60-fcSg-gLDa','jennelynpujol@gmail.com',0),
(90,'ADS2022-11-61-i8F0-5dgT','Februaty24@gmail.com',0),
(91,'ADS2022-11-62-jEYc-Fj0Y','March9@gmail.com',0),
(92,'ADS2022-11-63-3Fwq-oZk2','june21@gmail.com',0),
(93,'ADS2022-11-64-qgU7-X31r','october8@gmail.com',0),
(94,'ADS2022-11-65-qZjh-Yb1R','may22@gmail.com',0),
(95,'ADS2022-11-66-wzKN-oXq0','february16@gmail.com',0),
(96,'ADS2022-11-67-kpNo-xlyE','february3@gmail.com',0),
(97,'ADS2022-11-68-W3YV-NRng','february2@gmail.com',0),
(98,'ADS2022-11-69-iWj7-PjlH','april12@gmail.com',0),
(99,'ADS2022-11-70-H5jX-Eerx','february5@gmail.com',0),
(100,'ADS2022-11-71-Zdlz-sYqb','january11@gmail.com',0),
(101,'ADS2022-11-72-UbrC-HOoe','march29@gmail.com',0),
(102,'ADS2022-11-73-RNyC-7NFW','february19@gmail.com',0),
(103,'ADS2022-11-74-jwym-mH1z','august8@gmail.com',0),
(104,'ADS2022-11-75-XrRc-wJKZ','october23@gmail.com',0),
(105,'ADS2022-11-76-gXcv-uzFi','december23@gmail.com',0),
(106,'ADS2022-11-77-njoI-iNtZ','geverorhea@gmail.com',0),
(107,'ADS2022-11-78-BxCO-w4S0','princessnoemi16@gmail.com',0),
(108,'ADS2022-11-79-TGUN-bakL','rexdumot@yahoo.com',0),
(109,'ADS2022-11-80-MQxA-rBSQ','jelmondejar25@gmail.com',0),
(110,'ADS2022-11-81-u1n8-82ET','ronald0824@yahoo.com',0),
(111,'ADS2022-11-82-ZI14-LCvc','alona.mortel@yahoo.com',0),
(112,'ADS2022-11-83-IGNg-k3AR','Rosalindaesguerra4@gmail.com',0);
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
(1,80,80),
(2,50,50),
(3,40,40),
(4,30,30),
(5,20,20),
(6,10,10),
(7,10,10),
(8,5,5),
(9,3,3),
(10,2,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_codes`
--

LOCK TABLES `referral_codes` WRITE;
/*!40000 ALTER TABLE `referral_codes` DISABLE KEYS */;
INSERT INTO `referral_codes` VALUES
('2022-11-08 11:46:34','waiting','2022-11-08 11:46:34','ADS2022-11-10-Q8t2-xiMD',NULL,'2022-11-08 11:46:34','used','DI11-8Xhb-Y6Vp','AT11-yaEIo7VSZdzhPFkq',2,'DI','10'),
('2022-11-08 11:46:34','waiting','2022-11-08 11:46:34','ADS2022-11-11-hHaf-i7sC',NULL,'2022-11-08 11:46:34','used','DI11-gbXj-sNbD','AT11-yaEIo7VSZdzhPFkq',3,'DI','10'),
('2022-11-08 11:46:34','waiting','2022-11-08 11:46:34','ADS2022-11-12-OZN1-A2J4',NULL,'2022-11-08 11:46:34','used','DI11-3mqQ-4VtZ','AT11-yaEIo7VSZdzhPFkq',4,'DI','10'),
('2022-11-08 11:46:34','waiting','2022-11-08 11:46:34','ADS2022-11-17-H7N3-vIOu',NULL,'2022-11-08 11:46:34','used','DI11-NTFO-JfWe','AT11-yaEIo7VSZdzhPFkq',5,'DI','10'),
('2022-11-08 11:46:34','waiting','2022-11-08 11:46:34','ADS2022-11-31-zxK1-tm8Y',NULL,'2022-11-08 11:46:34','used','DI11-53KE-jYyl','AT11-yaEIo7VSZdzhPFkq',6,'DI','10'),
('2022-11-08 11:46:34','waiting','2022-11-08 11:46:34','ADS2022-11-14-YI5d-DqRa',NULL,'2022-11-08 11:46:34','used','DI11-PxfS-14a7','AT11-yaEIo7VSZdzhPFkq',7,'DI','10'),
('2022-11-08 11:46:34','waiting','2022-11-08 11:46:34','ADS2022-11-30-c9xF-Tpod',NULL,'2022-11-08 11:46:34','used','DI11-IStC-IBab','AT11-yaEIo7VSZdzhPFkq',8,'DI','10'),
('2022-11-08 11:46:34','waiting','2022-11-08 11:46:34','ADS2022-11-36-sZaA-OaKi',NULL,'2022-11-08 11:46:34','used','DI11-mkf0-V0fN','AT11-yaEIo7VSZdzhPFkq',9,'DI','10'),
('2022-11-08 11:46:34','waiting','2022-11-08 11:46:34',NULL,NULL,'2022-11-08 11:46:34','to_redeem','DI11-uamw-sXVD','AT11-yaEIo7VSZdzhPFkq',10,'DI','10'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19','ADS2022-11-13-zPdl-i6SA',NULL,'2022-11-08 12:29:19','used','DI11-4CnK-dJz3','AT11-ztm6x7OloeEvLdj4',11,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19','ADS2022-11-34-QPru-Km6S',NULL,'2022-11-08 12:29:19','used','DI11-aTOK-62Dy','AT11-ztm6x7OloeEvLdj4',12,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19','ADS2022-11-35-BVFY-8Xk0',NULL,'2022-11-08 12:29:19','used','DI11-tsOQ-sSWI','AT11-ztm6x7OloeEvLdj4',13,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19',NULL,NULL,'2022-11-08 12:29:19','to_redeem','DI11-gpar-wqa5','AT11-ztm6x7OloeEvLdj4',14,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19','ADS2022-11-16-bEQ2-gpFq',NULL,'2022-11-08 12:29:19','used','DI11-KpER-tjpZ','AT11-ztm6x7OloeEvLdj4',15,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19',NULL,NULL,'2022-11-08 12:29:19','to_redeem','DI11-HmSB-8CQe','AT11-ztm6x7OloeEvLdj4',16,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19','ADS2022-11-25-UMd3-n5NX',NULL,'2022-11-08 12:29:19','used','DI11-dhfH-BwVp','AT11-ztm6x7OloeEvLdj4',17,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19','ADS2022-11-29-q2Oz-3iBE',NULL,'2022-11-08 12:29:19','used','DI11-NqrE-mx1j','AT11-ztm6x7OloeEvLdj4',18,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19',NULL,NULL,'2022-11-08 12:29:19','to_redeem','DI11-T1vW-pyT6','AT11-ztm6x7OloeEvLdj4',19,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19',NULL,NULL,'2022-11-08 12:29:19','to_redeem','DI11-QFGY-uUoL','AT11-ztm6x7OloeEvLdj4',20,'DI','11'),
('2022-11-08 12:29:19','waiting','2022-11-08 12:29:19','ADS2022-11-27-twTE-wW7U',NULL,'2022-11-08 12:29:19','used','DI11-Wy4a-Dj4Y','AT11-ztm6x7OloeEvLdj4',21,'DI','11'),
('2022-11-08 13:02:06','waiting','2022-11-08 13:02:06','ADS2022-11-19-gNG4-lBHO',NULL,'2022-11-08 13:02:06','used','DI11-cPbL-xaCG','AT11-hVczJMF4LNBUf6d1',22,'DI','10'),
('2022-11-08 13:02:06','waiting','2022-11-08 13:02:06',NULL,NULL,'2022-11-08 13:02:06','to_redeem','DI11-RNBy-b174','AT11-hVczJMF4LNBUf6d1',23,'DI','10'),
('2022-11-08 13:02:06','waiting','2022-11-08 13:02:06','ADS2022-11-20-MCL4-ey3T',NULL,'2022-11-08 13:02:06','used','DI11-CVFQ-zHQB','AT11-hVczJMF4LNBUf6d1',24,'DI','10'),
('2022-11-08 13:02:07','waiting','2022-11-08 13:02:07','ADS2022-11-22-Ar74-7eV8',NULL,'2022-11-08 13:02:07','used','DI11-Eqiu-iAKy','AT11-hVczJMF4LNBUf6d1',25,'DI','10'),
('2022-11-08 13:02:07','waiting','2022-11-08 13:02:07',NULL,NULL,'2022-11-08 13:02:07','to_redeem','DI11-7SfP-jIUr','AT11-hVczJMF4LNBUf6d1',26,'DI','10'),
('2022-11-08 13:02:07','waiting','2022-11-08 13:02:07',NULL,NULL,'2022-11-08 13:02:07','to_redeem','DI11-Nx60-anS3','AT11-hVczJMF4LNBUf6d1',27,'DI','10'),
('2022-11-08 13:02:07','waiting','2022-11-08 13:02:07','ADS2022-11-18-hmfH-pZ7J',NULL,'2022-11-08 13:02:07','used','DI11-kRGl-4AXF','AT11-hVczJMF4LNBUf6d1',28,'DI','10'),
('2022-11-08 13:02:07','waiting','2022-11-08 13:02:07',NULL,NULL,'2022-11-08 13:02:07','to_redeem','DI11-CwYr-cKoF','AT11-hVczJMF4LNBUf6d1',29,'DI','10'),
('2022-11-08 13:02:07','waiting','2022-11-08 13:02:07','ADS2022-11-21-prJ2-Wh3u',NULL,'2022-11-08 13:02:07','used','DI11-lyeC-DXiS','AT11-hVczJMF4LNBUf6d1',30,'DI','10'),
('2022-11-08 13:02:07','waiting','2022-11-08 13:02:07','ADS2022-11-15-ClMJ-SzyW',NULL,'2022-11-08 13:02:07','used','DI11-IuDR-I8a6','AT11-hVczJMF4LNBUf6d1',31,'DI','10'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-QpUL-kl5J','AT11-W7ow5CFYStNsJqjp',32,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-Eh4I-HSea','AT11-W7ow5CFYStNsJqjp',33,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-FzYW-3hJI','AT11-W7ow5CFYStNsJqjp',34,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-Nbsu-3tZI','AT11-W7ow5CFYStNsJqjp',35,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-cJwl-10YH','AT11-W7ow5CFYStNsJqjp',36,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-8K3Z-vKZa','AT11-W7ow5CFYStNsJqjp',37,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-aiMb-10no','AT11-W7ow5CFYStNsJqjp',38,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-Uk5z-2krm','AT11-W7ow5CFYStNsJqjp',39,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-dbVg-YBsA','AT11-W7ow5CFYStNsJqjp',40,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-B1K7-YUm3','AT11-W7ow5CFYStNsJqjp',41,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-nu7g-MAK0','AT11-W7ow5CFYStNsJqjp',42,'DI','12'),
('2022-11-08 13:18:10','waiting','2022-11-08 13:18:10',NULL,NULL,'2022-11-08 13:18:10','to_redeem','DI11-x8S4-Rgcb','AT11-W7ow5CFYStNsJqjp',43,'DI','12'),
('2022-11-08 13:29:50','waiting','2022-11-08 13:29:50','ADS2022-11-23-EuDp-lQLo',NULL,'2022-11-08 13:29:50','used','DI11-D5RE-Zjdb','AT11-Xva1IwYGhCkznBAS',44,'DI','10'),
('2022-11-08 13:29:51','waiting','2022-11-08 13:29:51','ADS2022-11-33-JdQN-Fwx9',NULL,'2022-11-08 13:29:51','used','DI11-kcYn-fcra','AT11-Xva1IwYGhCkznBAS',45,'DI','10'),
('2022-11-08 13:29:51','waiting','2022-11-08 13:29:51','ADS2022-11-59-poH2-CvWG',NULL,'2022-11-08 13:29:51','used','DI11-z1m7-wIPd','AT11-Xva1IwYGhCkznBAS',46,'DI','10'),
('2022-11-08 13:29:51','waiting','2022-11-08 13:29:51',NULL,NULL,'2022-11-08 13:29:51','to_redeem','DI11-8PwS-Las3','AT11-Xva1IwYGhCkznBAS',47,'DI','10'),
('2022-11-08 13:29:51','waiting','2022-11-08 13:29:51',NULL,NULL,'2022-11-08 13:29:51','to_redeem','DI11-AaX7-8r7L','AT11-Xva1IwYGhCkznBAS',48,'DI','10'),
('2022-11-08 13:29:51','waiting','2022-11-08 13:29:51','ADS2022-11-40-7KOa-rlfI',NULL,'2022-11-08 13:29:51','used','DI11-qJw1-kul3','AT11-Xva1IwYGhCkznBAS',49,'DI','10'),
('2022-11-08 13:29:51','waiting','2022-11-08 13:29:51',NULL,NULL,'2022-11-08 13:29:51','to_redeem','DI11-yoQn-T0Dc','AT11-Xva1IwYGhCkznBAS',50,'DI','10'),
('2022-11-08 13:29:51','waiting','2022-11-08 13:29:51',NULL,NULL,'2022-11-08 13:29:51','to_redeem','DI11-AboP-vz1f','AT11-Xva1IwYGhCkznBAS',51,'DI','10'),
('2022-11-08 13:29:51','waiting','2022-11-08 13:29:51',NULL,NULL,'2022-11-08 13:29:51','to_redeem','DI11-SoDu-b97w','AT11-Xva1IwYGhCkznBAS',52,'DI','10'),
('2022-11-08 13:29:51','waiting','2022-11-08 13:29:51','ADS2022-11-80-MQxA-rBSQ',NULL,'2022-11-08 13:29:51','used','DI11-IF4A-kCqH','AT11-Xva1IwYGhCkznBAS',53,'DI','10'),
('2022-11-08 13:52:58','waiting','2022-11-08 13:52:58','ADS2022-11-26-kVhI-XvPm',NULL,'2022-11-08 13:52:58','used','DI11-ZWeV-Dw2j','AT11-twVviRex6SJIXBZq',54,'DI','7'),
('2022-11-08 13:52:58','waiting','2022-11-08 13:52:58','ADS2022-11-28-NQhx-pa7t',NULL,'2022-11-08 13:52:58','used','DI11-v3il-fAZ3','AT11-twVviRex6SJIXBZq',55,'DI','7'),
('2022-11-08 13:52:58','waiting','2022-11-08 13:52:58',NULL,NULL,'2022-11-08 13:52:58','to_redeem','DI11-utrz-bgwG','AT11-twVviRex6SJIXBZq',56,'DI','7'),
('2022-11-08 13:52:58','waiting','2022-11-08 13:52:58',NULL,NULL,'2022-11-08 13:52:58','to_redeem','DI11-Cpky-OYuv','AT11-twVviRex6SJIXBZq',57,'DI','7'),
('2022-11-08 13:52:58','waiting','2022-11-08 13:52:58',NULL,NULL,'2022-11-08 13:52:58','to_redeem','DI11-Nask-pcFA','AT11-twVviRex6SJIXBZq',58,'DI','7'),
('2022-11-08 13:52:58','waiting','2022-11-08 13:52:58','ADS2022-11-53-ETzv-LNnU',NULL,'2022-11-08 13:52:58','used','DI11-TEWo-8h9s','AT11-twVviRex6SJIXBZq',59,'DI','7'),
('2022-11-08 13:52:58','waiting','2022-11-08 13:52:58','ADS2022-11-32-uTWy-QuRx',NULL,'2022-11-08 13:52:58','used','DI11-kYT5-GYET','AT11-twVviRex6SJIXBZq',60,'DI','7'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20','ADS2022-11-78-BxCO-w4S0',NULL,'2022-11-08 14:03:20','used','DI11-WNl7-IR8X','AT11-3hMo1GTbQJ8nfOKF',61,'DI','10'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20','ADS2022-11-39-TXz6-oCkX',NULL,'2022-11-08 14:03:20','used','DI11-XGIw-QX8Y','AT11-3hMo1GTbQJ8nfOKF',62,'DI','10'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20','ADS2022-11-57-wNoe-K27N',NULL,'2022-11-08 14:03:20','used','DI11-2Q7O-PmlU','AT11-3hMo1GTbQJ8nfOKF',63,'DI','10'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20','ADS2022-11-48-GN9u-kxQE',NULL,'2022-11-08 14:03:20','used','DI11-5jbn-tCsK','AT11-3hMo1GTbQJ8nfOKF',64,'DI','10'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20','ADS2022-11-41-ibTl-Fxw0',NULL,'2022-11-08 14:03:20','used','DI11-ziHy-UMfZ','AT11-3hMo1GTbQJ8nfOKF',65,'DI','10'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20',NULL,NULL,'2022-11-08 14:03:20','to_redeem','DI11-H8mS-k6B3','AT11-3hMo1GTbQJ8nfOKF',66,'DI','10'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20',NULL,NULL,'2022-11-08 14:03:20','to_redeem','DI11-uRbO-voWj','AT11-3hMo1GTbQJ8nfOKF',67,'DI','10'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20',NULL,NULL,'2022-11-08 14:03:20','to_redeem','DI11-NvIL-nM3p','AT11-3hMo1GTbQJ8nfOKF',68,'DI','10'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20','ADS2022-11-24-it2l-Ibwp',NULL,'2022-11-08 14:03:20','used','DI11-6h5Q-4Mue','AT11-3hMo1GTbQJ8nfOKF',69,'DI','10'),
('2022-11-08 14:03:20','waiting','2022-11-08 14:03:20',NULL,NULL,'2022-11-08 14:03:20','to_redeem','DI11-Nnjs-QWey','AT11-3hMo1GTbQJ8nfOKF',70,'DI','10'),
('2022-11-08 22:37:58','waiting','2022-11-08 22:37:58','ADS2022-11-37-nLhu-DICv',NULL,'2022-11-08 22:37:58','used','DI11-ER4f-svIT','AT11-ie9BlCGTkmp3uyYb',71,'DI','5'),
('2022-11-08 22:37:58','waiting','2022-11-08 22:37:58','ADS2022-11-45-e0kG-iNat',NULL,'2022-11-08 22:37:58','used','DI11-cEFm-Jixb','AT11-ie9BlCGTkmp3uyYb',72,'DI','5'),
('2022-11-08 22:37:58','waiting','2022-11-08 22:37:58',NULL,NULL,'2022-11-08 22:37:58','to_redeem','DI11-40J1-27jb','AT11-ie9BlCGTkmp3uyYb',73,'DI','5'),
('2022-11-08 22:37:58','waiting','2022-11-08 22:37:58',NULL,NULL,'2022-11-08 22:37:58','to_redeem','DI11-ozBZ-Cro9','AT11-ie9BlCGTkmp3uyYb',74,'DI','5'),
('2022-11-08 22:37:58','waiting','2022-11-08 22:37:58',NULL,NULL,'2022-11-08 22:37:58','to_redeem','DI11-GhbT-blJW','AT11-ie9BlCGTkmp3uyYb',75,'DI','5'),
('2022-11-08 22:41:17','waiting','2022-11-08 22:41:17',NULL,NULL,'2022-11-08 22:41:17','to_redeem','DI11-5plL-V3zq','AT11-GIsgE4VeN5dqaHBz',76,'DI','5'),
('2022-11-08 22:41:20','waiting','2022-11-08 22:41:20','ADS2022-11-42-2qbj-EexR',NULL,'2022-11-08 22:41:20','used','DI11-5RKg-9JO6','AT11-GIsgE4VeN5dqaHBz',77,'DI','5'),
('2022-11-08 22:41:20','waiting','2022-11-08 22:41:20',NULL,NULL,'2022-11-08 22:41:20','to_redeem','DI11-oQZB-5rFp','AT11-GIsgE4VeN5dqaHBz',78,'DI','5'),
('2022-11-08 22:41:20','waiting','2022-11-08 22:41:20',NULL,NULL,'2022-11-08 22:41:20','to_redeem','DI11-CUYR-RoBk','AT11-GIsgE4VeN5dqaHBz',79,'DI','5'),
('2022-11-08 22:41:20','waiting','2022-11-08 22:41:20',NULL,NULL,'2022-11-08 22:41:20','to_redeem','DI11-xqVn-yLuE','AT11-GIsgE4VeN5dqaHBz',80,'DI','5'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-LZuR-bc5o','AT11-65qcdKF2D7alpwxU',81,'DI','10'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-Wug9-VHKv','AT11-65qcdKF2D7alpwxU',82,'DI','10'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-rbco-RXwq','AT11-65qcdKF2D7alpwxU',83,'DI','10'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-AClu-lLFG','AT11-65qcdKF2D7alpwxU',84,'DI','10'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-r1Vu-L3Oh','AT11-65qcdKF2D7alpwxU',85,'DI','10'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-yets-idYl','AT11-65qcdKF2D7alpwxU',86,'DI','10'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-P8Wc-D7rZ','AT11-65qcdKF2D7alpwxU',87,'DI','10'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-jnba-ujZX','AT11-65qcdKF2D7alpwxU',88,'DI','10'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-fIbx-2M4Y','AT11-65qcdKF2D7alpwxU',89,'DI','10'),
('2022-11-08 22:41:56','waiting','2022-11-08 22:41:56',NULL,NULL,'2022-11-08 22:41:56','to_redeem','DI11-GVxQ-Foqd','AT11-65qcdKF2D7alpwxU',90,'DI','10'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-38-oNkO-e9bi',NULL,'2022-11-09 10:51:17','used','DI11-Liuj-dTHt','AT11-t9Qf3Av7qpBx6M0J',91,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-54-5O3Y-B5UR',NULL,'2022-11-09 10:51:17','used','DI11-VhBY-8zyX','AT11-t9Qf3Av7qpBx6M0J',92,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-55-FEw6-cIPR',NULL,'2022-11-09 10:51:17','used','DI11-kpH7-1zbB','AT11-t9Qf3Av7qpBx6M0J',93,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-56-dtpM-YD52',NULL,'2022-11-09 10:51:17','used','DI11-wxCH-QH6z','AT11-t9Qf3Av7qpBx6M0J',94,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-74-jwym-mH1z',NULL,'2022-11-09 10:51:17','used','DI11-aA0V-yqes','AT11-t9Qf3Av7qpBx6M0J',95,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-61-i8F0-5dgT',NULL,'2022-11-09 10:51:17','used','DI11-9XZy-RHjT','AT11-t9Qf3Av7qpBx6M0J',96,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-62-jEYc-Fj0Y',NULL,'2022-11-09 10:51:17','used','DI11-dGOA-e8wi','AT11-t9Qf3Av7qpBx6M0J',97,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-63-3Fwq-oZk2',NULL,'2022-11-09 10:51:17','used','DI11-yEtD-pij7','AT11-t9Qf3Av7qpBx6M0J',98,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-64-qgU7-X31r',NULL,'2022-11-09 10:51:17','used','DI11-ni0x-AakY','AT11-t9Qf3Av7qpBx6M0J',99,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-65-qZjh-Yb1R',NULL,'2022-11-09 10:51:17','used','DI11-1wFs-cdSQ','AT11-t9Qf3Av7qpBx6M0J',100,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-66-wzKN-oXq0',NULL,'2022-11-09 10:51:17','used','DI11-upaf-1T2v','AT11-t9Qf3Av7qpBx6M0J',101,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-67-kpNo-xlyE',NULL,'2022-11-09 10:51:17','used','DI11-mczi-sYBK','AT11-t9Qf3Av7qpBx6M0J',102,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-68-W3YV-NRng',NULL,'2022-11-09 10:51:17','used','DI11-vgxK-EtFV','AT11-t9Qf3Av7qpBx6M0J',103,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-69-iWj7-PjlH',NULL,'2022-11-09 10:51:17','used','DI11-WQ12-6Ww3','AT11-t9Qf3Av7qpBx6M0J',104,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-70-H5jX-Eerx',NULL,'2022-11-09 10:51:17','used','DI11-0oqz-viEu','AT11-t9Qf3Av7qpBx6M0J',105,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-71-Zdlz-sYqb',NULL,'2022-11-09 10:51:17','used','DI11-cgh7-e4DY','AT11-t9Qf3Av7qpBx6M0J',106,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-72-UbrC-HOoe',NULL,'2022-11-09 10:51:17','used','DI11-PJn9-PbNp','AT11-t9Qf3Av7qpBx6M0J',107,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-73-RNyC-7NFW',NULL,'2022-11-09 10:51:17','used','DI11-f1Ku-9koV','AT11-t9Qf3Av7qpBx6M0J',108,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-75-XrRc-wJKZ',NULL,'2022-11-09 10:51:17','used','DI11-1vky-NHn1','AT11-t9Qf3Av7qpBx6M0J',109,'DI','20'),
('2022-11-09 10:51:17','waiting','2022-11-09 10:51:17','ADS2022-11-76-gXcv-uzFi',NULL,'2022-11-09 10:51:17','used','DI11-tL0K-S709','AT11-t9Qf3Av7qpBx6M0J',110,'DI','20'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-tnoB-kRlI','AT11-up97LxQStIyc6qnB',111,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48','ADS2022-11-43-Y0By-z9Ym',NULL,'2022-11-09 22:33:48','used','DI11-HAlO-7Cz0','AT11-up97LxQStIyc6qnB',112,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48','ADS2022-11-50-2qoX-wIfk',NULL,'2022-11-09 22:33:48','used','DI11-W8br-8gH5','AT11-up97LxQStIyc6qnB',113,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-c6HE-iTv5','AT11-up97LxQStIyc6qnB',114,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48','ADS2022-11-60-fcSg-gLDa',NULL,'2022-11-09 22:33:48','used','DI11-rAC7-C4lS','AT11-up97LxQStIyc6qnB',115,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-dn3b-7uIg','AT11-up97LxQStIyc6qnB',116,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-AxJv-WVvd','AT11-up97LxQStIyc6qnB',117,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48','ADS2022-11-83-IGNg-k3AR',NULL,'2022-11-09 22:33:48','used','DI11-Z0s2-pjcD','AT11-up97LxQStIyc6qnB',118,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-zk86-6Apg','AT11-up97LxQStIyc6qnB',119,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-vrSh-PKAp','AT11-up97LxQStIyc6qnB',120,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-M39w-DIhx','AT11-up97LxQStIyc6qnB',121,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-5Hl8-u7EA','AT11-up97LxQStIyc6qnB',122,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-sJPH-A47R','AT11-up97LxQStIyc6qnB',123,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-mROE-OrkK','AT11-up97LxQStIyc6qnB',124,'DI','15'),
('2022-11-09 22:33:48','waiting','2022-11-09 22:33:48',NULL,NULL,'2022-11-09 22:33:48','to_redeem','DI11-27TI-U3HZ','AT11-up97LxQStIyc6qnB',125,'DI','15'),
('2022-11-09 22:34:28','waiting','2022-11-09 22:34:28','ADS2022-11-44-4alB-CLzE',NULL,'2022-11-09 22:34:28','used','DI11-qL2k-g1p4','AT11-hozgHiAmIZP7sK9B',126,'DI','5'),
('2022-11-09 22:34:28','waiting','2022-11-09 22:34:28','ADS2022-11-46-4rpM-pOUq',NULL,'2022-11-09 22:34:28','used','DI11-gkja-OvYL','AT11-hozgHiAmIZP7sK9B',127,'DI','5'),
('2022-11-09 22:34:28','waiting','2022-11-09 22:34:28','ADS2022-11-51-j1uh-JImU',NULL,'2022-11-09 22:34:28','used','DI11-Ds4Z-P5zW','AT11-hozgHiAmIZP7sK9B',128,'DI','5'),
('2022-11-09 22:34:28','waiting','2022-11-09 22:34:28','ADS2022-11-47-n35D-HYr6',NULL,'2022-11-09 22:34:28','used','DI11-hu2q-w3qN','AT11-hozgHiAmIZP7sK9B',129,'DI','5'),
('2022-11-09 22:34:28','waiting','2022-11-09 22:34:28',NULL,NULL,'2022-11-09 22:34:28','to_redeem','DI11-Qm63-yHJ9','AT11-hozgHiAmIZP7sK9B',130,'DI','5'),
('2022-11-10 00:13:15','waiting','2022-11-10 00:13:15','ADS2022-11-52-EvVT-WRjP',NULL,'2022-11-10 00:13:15','used','DI11-ZQfG-pPdn','AT11-NAIWUHe9Y2Vg8dXC',131,'DI','2'),
('2022-11-10 00:13:15','waiting','2022-11-10 00:13:15',NULL,NULL,'2022-11-10 00:13:15','to_redeem','DI11-IoJz-laGc','AT11-NAIWUHe9Y2Vg8dXC',132,'DI','2'),
('2022-11-10 00:13:39','waiting','2022-11-10 00:13:39','ADS2022-11-13-zPdl-i6SA','mr.arvielumogdang@yahoo.com','2022-11-10 00:13:39','used','RA11-mx5P-1cXS','AT11-8JiqoU1xGjlQIvMb',133,'RA','1'),
('2022-11-10 00:14:34','waiting','2022-11-10 00:14:34',NULL,NULL,'2022-11-10 00:14:34','to_redeem','RB11-mA0e-5Jk8','AT11-aprPQkMcxTIBniA0',134,'RB','1'),
('2022-11-10 00:27:54','waiting','2022-11-10 00:27:54','ADS2022-11-58-uf49-djZp',NULL,'2022-11-10 00:27:54','used','DI11-P9Nj-WKAD','AT11-2Eb1Hra5jCMAPVtT',135,'DI','3'),
('2022-11-10 00:27:54','waiting','2022-11-10 00:27:54',NULL,NULL,'2022-11-10 00:27:54','to_redeem','DI11-eTIg-qG8e','AT11-2Eb1Hra5jCMAPVtT',136,'DI','3'),
('2022-11-10 00:27:54','waiting','2022-11-10 00:27:54','ADS2022-11-79-TGUN-bakL',NULL,'2022-11-10 00:27:54','used','DI11-kMlc-CciD','AT11-2Eb1Hra5jCMAPVtT',137,'DI','3'),
('2022-11-10 00:29:46','waiting','2022-11-10 00:29:46','ADS2022-10-7','directsales@gmail.com','2022-11-10 00:29:46','used','RB11-yqdi-TG0Y','AT11-eRduNs2U4rOFChVg',138,'RB','1'),
('2022-11-10 00:32:33','waiting','2022-11-10 00:32:33',NULL,NULL,'2022-11-10 00:32:33','to_redeem','DI11-Xzra-eODl','AT11-naqkfzwWEtUFvGdO',139,'DI','1'),
('2022-11-10 00:33:05','waiting','2022-11-10 00:33:05','ADS2022-11-19-gNG4-lBHO','masangkay0313@gmail.com','2022-11-10 00:33:05','used','RA11-ausT-Zdvl','AT11-nmdHDP4GhNQI0RW2',140,'RA','2'),
('2022-11-10 00:33:05','waiting','2022-11-10 00:33:05','ADS2022-11-19-gNG4-lBHO','masangkay0313@gmail.com','2022-11-10 00:33:05','used','RA11-P8WO-G8b6','AT11-nmdHDP4GhNQI0RW2',141,'RA','2'),
('2022-11-10 08:05:33','waiting','2022-11-10 08:05:33','ADS2022-11-16-bEQ2-gpFq','custodioleny77@gmail.com','2022-11-10 08:05:33','used','RA11-siRp-2wS5','AT11-R5fIkbPZeGtAFolc',142,'RA','1'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39',NULL,NULL,'2022-11-10 09:13:39','to_redeem','DI11-fbDG-FZqc','AT11-1ICZHrgGc9NykMhP',143,'DI','10'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39',NULL,NULL,'2022-11-10 09:13:39','to_redeem','DI11-MUpe-E3er','AT11-1ICZHrgGc9NykMhP',144,'DI','10'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39',NULL,NULL,'2022-11-10 09:13:39','to_redeem','DI11-yUOt-lpKU','AT11-1ICZHrgGc9NykMhP',145,'DI','10'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39',NULL,NULL,'2022-11-10 09:13:39','to_redeem','DI11-JtgW-BEgx','AT11-1ICZHrgGc9NykMhP',146,'DI','10'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39',NULL,NULL,'2022-11-10 09:13:39','to_redeem','DI11-9qyX-FEpT','AT11-1ICZHrgGc9NykMhP',147,'DI','10'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39',NULL,NULL,'2022-11-10 09:13:39','to_redeem','DI11-OPq3-07PK','AT11-1ICZHrgGc9NykMhP',148,'DI','10'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39',NULL,NULL,'2022-11-10 09:13:39','to_redeem','DI11-f2rF-njP5','AT11-1ICZHrgGc9NykMhP',149,'DI','10'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39',NULL,NULL,'2022-11-10 09:13:39','to_redeem','DI11-QPaD-R61Z','AT11-1ICZHrgGc9NykMhP',150,'DI','10'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39',NULL,NULL,'2022-11-10 09:13:39','to_redeem','DI11-K056-MQjB','AT11-1ICZHrgGc9NykMhP',151,'DI','10'),
('2022-11-10 09:13:39','waiting','2022-11-10 09:13:39','ADS2022-11-49-Cdkc-8tNU',NULL,'2022-11-10 09:13:39','used','DI11-yeP0-UAuX','AT11-1ICZHrgGc9NykMhP',152,'DI','10'),
('2022-11-10 09:18:31','waiting','2022-11-10 09:18:31','ADS2022-11-49-Cdkc-8tNU','jeffpeachy@gmail.com','2022-11-10 09:18:31','used','RA11-Dg7Z-RA24','AT11-S8czw3xiV5GLohAZ',153,'RA','1'),
('2022-11-10 09:21:15','waiting','2022-11-10 09:21:15','ADS2022-11-48-GN9u-kxQE','jeffpeachy23@gmail.com','2022-11-10 09:21:15','used','RB11-kaWs-gOVJ','AT11-dDjtxicHXRqA2r1z',154,'RB','1'),
('2022-11-10 16:53:00','waiting','2022-11-10 16:53:00','ADS2022-11-82-ZI14-LCvc',NULL,'2022-11-10 16:53:00','used','DI11-GaAk-ZOWp','AT11-9P5re8fTc13NDRZl',155,'DI','3'),
('2022-11-10 16:53:00','waiting','2022-11-10 16:53:00',NULL,NULL,'2022-11-10 16:53:00','to_redeem','DI11-CIDL-JFn7','AT11-9P5re8fTc13NDRZl',156,'DI','3'),
('2022-11-10 16:53:00','waiting','2022-11-10 16:53:00','ADS2022-11-81-u1n8-82ET',NULL,'2022-11-10 16:53:00','used','DI11-gFQ2-Nir0','AT11-9P5re8fTc13NDRZl',157,'DI','3'),
('2022-11-10 16:53:20','waiting','2022-11-10 16:53:20',NULL,NULL,'2022-11-10 16:53:20','to_redeem','DI11-LrcT-kXiH','AT11-tdJ5QGU4XR1ziu3O',158,'DI','2'),
('2022-11-10 16:53:20','waiting','2022-11-10 16:53:20',NULL,NULL,'2022-11-10 16:53:20','to_redeem','DI11-pQTR-RUkx','AT11-tdJ5QGU4XR1ziu3O',159,'DI','2'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-0onq-DH4t','AT11-abgGlAQNJo0Unpew',160,'DI','10'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-5fLP-MfeT','AT11-abgGlAQNJo0Unpew',161,'DI','10'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-9pOn-BSAe','AT11-abgGlAQNJo0Unpew',162,'DI','10'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-glKV-iyU4','AT11-abgGlAQNJo0Unpew',163,'DI','10'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-iJp3-28Iq','AT11-abgGlAQNJo0Unpew',164,'DI','10'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-SfPU-RpAC','AT11-abgGlAQNJo0Unpew',165,'DI','10'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-cGvE-QA8w','AT11-abgGlAQNJo0Unpew',166,'DI','10'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-kgnc-o971','AT11-abgGlAQNJo0Unpew',167,'DI','10'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-XjU7-GSj3','AT11-abgGlAQNJo0Unpew',168,'DI','10'),
('2022-11-10 18:55:10','waiting','2022-11-10 18:55:10',NULL,NULL,'2022-11-10 18:55:10','to_redeem','DI11-twgK-M91B','AT11-abgGlAQNJo0Unpew',169,'DI','10'),
('2022-11-11 23:03:56','waiting','2022-11-11 23:03:56','ADS2022-11-77-njoI-iNtZ',NULL,'2022-11-11 23:03:56','used','DI11-gdPZ-vl7C','AT11-yGpWLlkAgPaJjCoD',170,'DI','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalbalance`
--

LOCK TABLES `totalbalance` WRITE;
/*!40000 ALTER TABLE `totalbalance` DISABLE KEYS */;
INSERT INTO `totalbalance` VALUES
(77,'ADS2022-10-7','directsales@gmail.com',1170,0,0),
(107,'ADS2022-11-8-eqNy-l47b','mr.armillumogdang@yahoo.com',20,0,0),
(115,'ADS2022-11-10-Q8t2-xiMD','healinggaling2020@yahoo.com',990,220,0),
(116,'ADS2022-11-11-hHaf-i7sC','nacksph@gmail.com',1470,310,0),
(117,'ADS2022-11-12-OZN1-A2J4','mr.armillumogdang@yahoo.com',500,0,0),
(118,'ADS2022-11-13-zPdl-i6SA','mr.arvielumogdang@yahoo.com',11620,0,0),
(119,'ADS2022-11-14-YI5d-DqRa','almedapatrick17@gmail.com',0,0,0),
(120,'ADS2022-11-15-ClMJ-SzyW','carissa.aquino1@gmail.com',0,0,0),
(121,'ADS2022-11-16-bEQ2-gpFq','custodioleny77@gmail.com',4520,0,0),
(122,'ADS2022-11-17-H7N3-vIOu','megacriselda@gmail.com',0,0,0),
(123,'ADS2022-11-18-hmfH-pZ7J','gdelosreyes1298@gmail.com',0,0,0),
(124,'ADS2022-11-19-gNG4-lBHO','masangkay0313@gmail.com',0,0,0),
(125,'ADS2022-11-20-MCL4-ey3T','retchie@tcdc.edu.ph',1000,0,0),
(126,'ADS2022-11-21-prJ2-Wh3u','jennvidallon@gmail.com',0,0,0),
(127,'ADS2022-11-22-Ar74-7eV8','rodel.alejandro33@gmail.com',0,0,0),
(128,'ADS2022-11-23-EuDp-lQLo','jessav610@gmail.com',0,0,0),
(129,'ADS2022-11-24-it2l-Ibwp','marinethreyes5@gmail.com',0,0,0),
(130,'ADS2022-11-25-UMd3-n5NX','tanyalusica@gmail.com',0,0,0),
(131,'ADS2022-11-26-kVhI-XvPm','rhozedeleongarcia@gmail.com',0,0,0),
(132,'ADS2022-11-27-twTE-wW7U','ypibadong@yahoo.com',0,0,0),
(133,'ADS2022-11-28-NQhx-pa7t','jhorafon@gmail.com',0,0,0),
(134,'ADS2022-11-29-q2Oz-3iBE','rubyjane.palanog@gmail.com',0,0,0),
(135,'ADS2022-11-30-c9xF-Tpod','odaiski26@gmail.com',2000,0,0),
(136,'ADS2022-11-31-zxK1-tm8Y','johnrhodlaye@gmail.com',0,0,0),
(137,'ADS2022-11-32-uTWy-QuRx','sha098915@gmail.com',0,0,0),
(138,'ADS2022-11-33-JdQN-Fwx9','rosalindatumacder@gmail.com',0,0,0),
(139,'ADS2022-11-34-QPru-Km6S','mbucal@gmail.com',0,0,0),
(140,'ADS2022-11-35-BVFY-8Xk0','pacitatambong15@gmail.com',3020,0,0),
(141,'ADS2022-11-36-sZaA-OaKi','orly02bomlife@gmail.com',0,0,0),
(142,'ADS2022-11-37-nLhu-DICv','saldyg3267@gmail.com',0,0,0),
(143,'ADS2022-11-38-oNkO-e9bi','june20@gmail.com',0,0,0),
(144,'ADS2022-11-39-TXz6-oCkX','jhing.barruga2171@gmail.com',0,0,0),
(145,'ADS2022-11-40-7KOa-rlfI','emeebabes@yahoo.com',0,0,0),
(146,'ADS2022-11-41-ibTl-Fxw0','ramasusie321@gmail.com',1000,0,0),
(147,'ADS2022-11-42-2qbj-EexR','Patrixia131@yahoo.com',0,0,0),
(148,'ADS2022-11-43-Y0By-z9Ym','zabalortegairene3@gmail.com',0,0,0),
(149,'ADS2022-11-44-4alB-CLzE','melaniebahalla128@gmail.com',0,0,0),
(150,'ADS2022-11-45-e0kG-iNat','abayajeremiah92@gmail.com',0,0,0),
(151,'ADS2022-11-46-4rpM-pOUq','botanical342@gmail.com',0,0,0),
(152,'ADS2022-11-47-n35D-HYr6','marlinlibued06@gmail.com',0,0,0),
(153,'ADS2022-11-48-GN9u-kxQE','jeffpeachy23@gmail.com',590,0,0),
(154,'ADS2022-11-49-Cdkc-8tNU','jeffpeachy@gmail.com',500,0,0),
(155,'ADS2022-11-50-2qoX-wIfk','srbenitez1983@gmail.com',0,0,0),
(156,'ADS2022-11-51-j1uh-JImU','cristinefflores@yahoo.com',0,0,0),
(157,'ADS2022-11-52-EvVT-WRjP','landicholea760@gmail.com',0,0,0),
(158,'ADS2022-11-53-ETzv-LNnU','reinasucion1@gmail.com',0,0,0),
(159,'ADS2022-11-54-5O3Y-B5UR','June27@gmail.com',0,0,0),
(160,'ADS2022-11-55-FEw6-cIPR','june25@gmail.com',0,0,0),
(161,'ADS2022-11-56-dtpM-YD52','April2@gmail.com',0,0,0),
(162,'ADS2022-11-57-wNoe-K27N','misisdenia@gmail.com',0,0,0),
(163,'ADS2022-11-58-uf49-djZp','luzmindadelavega23@gmail.com0',0,0,0),
(164,'ADS2022-11-59-poH2-CvWG','janemary080291@gmail.com',0,0,0),
(165,'ADS2022-11-60-fcSg-gLDa','jennelynpujol@gmail.com',0,0,0),
(166,'ADS2022-11-61-i8F0-5dgT','Februaty24@gmail.com',0,0,0),
(167,'ADS2022-11-62-jEYc-Fj0Y','March9@gmail.com',0,0,0),
(168,'ADS2022-11-63-3Fwq-oZk2','june21@gmail.com',0,0,0),
(169,'ADS2022-11-64-qgU7-X31r','october8@gmail.com',0,0,0),
(170,'ADS2022-11-65-qZjh-Yb1R','may22@gmail.com',0,0,0),
(171,'ADS2022-11-66-wzKN-oXq0','february16@gmail.com',0,0,0),
(172,'ADS2022-11-67-kpNo-xlyE','february3@gmail.com',0,0,0),
(173,'ADS2022-11-68-W3YV-NRng','february2@gmail.com',0,0,0),
(174,'ADS2022-11-69-iWj7-PjlH','april12@gmail.com',0,0,0),
(175,'ADS2022-11-70-H5jX-Eerx','february5@gmail.com',0,0,0),
(176,'ADS2022-11-71-Zdlz-sYqb','january11@gmail.com',0,0,0),
(177,'ADS2022-11-72-UbrC-HOoe','march29@gmail.com',0,0,0),
(178,'ADS2022-11-73-RNyC-7NFW','february19@gmail.com',0,0,0),
(179,'ADS2022-11-74-jwym-mH1z','august8@gmail.com',0,0,0),
(180,'ADS2022-11-75-XrRc-wJKZ','october23@gmail.com',0,0,0),
(181,'ADS2022-11-76-gXcv-uzFi','december23@gmail.com',0,0,0),
(182,'ADS2022-11-77-njoI-iNtZ','geverorhea@gmail.com',0,0,0),
(183,'ADS2022-11-78-BxCO-w4S0','princessnoemi16@gmail.com',0,0,0),
(184,'ADS2022-11-79-TGUN-bakL','rexdumot@yahoo.com',0,0,0),
(185,'ADS2022-11-80-MQxA-rBSQ','jelmondejar25@gmail.com',0,0,0),
(186,'ADS2022-11-81-u1n8-82ET','ronald0824@yahoo.com',0,0,0),
(187,'ADS2022-11-82-ZI14-LCvc','alona.mortel@yahoo.com',0,0,0),
(188,'ADS2022-11-83-IGNg-k3AR','Rosalindaesguerra4@gmail.com',0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES
(1,'TR-202208111','2022-11-08','10:50 am','Direct Referral','','ADS2022-11-8','armil Lumogdang',' ',NULL,NULL,NULL,500,500,0,0,1),
(2,'TR-202208112','2022-11-08','11:09 am','Direct Referral','directsales@gmail.com','ADS2022-10-7','ACSPT BOSS','Direct Sales',NULL,NULL,NULL,500,500,0,0,2),
(3,'TR-202208113','2022-11-08','11:09 am','Indirect Referral','','n/a','ACSPT BOSS','Direct Sales',NULL,NULL,NULL,10,10,0,0,3),
(4,'TR-202208114','2022-11-08','11:12 am','Direct Referral','healinggaling2020@yahoo.com','ADS2022-11-10-Q8t2-xiMD','IT Tech  Support','ACSPT BOSS',NULL,NULL,NULL,500,500,0,0,4),
(5,'TR-202208115','2022-11-08','11:12 am','Indirect Referral','Direct  Sales','ADS2022-10-7','IT Tech  Support','ACSPT BOSS',NULL,NULL,NULL,10,510,0,0,5),
(6,'TR-202208116','2022-11-08','11:12 am','Indirect Referral','','n/a','IT Tech  Support','ACSPT BOSS',NULL,NULL,NULL,10,10,0,0,6),
(7,'TR-202208117','2022-11-08','11:16 am','Direct Referral','nacks@gmail.com','ADS2022-11-9-EXdW-uUvp','armil Lumogdang','IT Team Support',NULL,NULL,NULL,500,500,0,0,7),
(8,'TR-202208118','2022-11-08','11:16 am','Indirect Referral','Armil  Lumogdang','ADS2022-11-8-eqNy-l47b','armil Lumogdang','IT Team Support',NULL,NULL,NULL,10,10,0,0,8),
(9,'TR-202208119','2022-11-08','11:30 am','Direct Referral','nacksph@gmail.com','ADS2022-11-11-hHaf-i7sC','armil Lumogdang','IT Tech  Support',NULL,NULL,NULL,500,500,0,0,9),
(10,'TR-2022081110','2022-11-08','11:30 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','armil Lumogdang','IT Tech  Support',NULL,NULL,NULL,10,510,0,0,10),
(11,'TR-2022081111','2022-11-08','11:30 am','Indirect Referral','Direct  Sales','ADS2022-10-7','armil Lumogdang','IT Tech  Support',NULL,NULL,NULL,10,520,0,0,11),
(12,'TR-2022081112','2022-11-08','11:30 am','Indirect Referral','','n/a','armil Lumogdang','IT Tech  Support',NULL,NULL,NULL,10,10,0,0,12),
(13,'TR-2022081113','2022-11-08','12:03 pm','Direct Referral','mr.armillumogdang@yahoo.com','ADS2022-11-12-OZN1-A2J4','Patrick Almeda','armil Lumogdang',NULL,NULL,NULL,500,500,0,0,13),
(14,'TR-2022081114','2022-11-08','12:03 pm','Indirect Referral','IT Team  Support','ADS2022-11-9-EXdW-uUvp','Patrick Almeda','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,14),
(15,'TR-2022081115','2022-11-08','12:03 pm','Indirect Referral','Armil  Lumogdang','ADS2022-11-8-eqNy-l47b','Patrick Almeda','armil Lumogdang',NULL,NULL,NULL,10,20,0,0,15),
(16,'TR-2022081116','2022-11-08','12:06 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Carissa Aquino','armil Lumogdang',NULL,NULL,NULL,500,500,0,0,16),
(17,'TR-2022081117','2022-11-08','12:06 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Carissa Aquino','armil Lumogdang',NULL,NULL,NULL,10,510,0,0,17),
(18,'TR-2022081118','2022-11-08','12:06 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Carissa Aquino','armil Lumogdang',NULL,NULL,NULL,10,520,0,0,18),
(19,'TR-2022081119','2022-11-08','12:06 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Carissa Aquino','armil Lumogdang',NULL,NULL,NULL,10,530,0,0,19),
(20,'TR-2022081120','2022-11-08','12:06 pm','Indirect Referral','','n/a','Carissa Aquino','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,20),
(21,'TR-2022081121','2022-11-08','12:07 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Leny Custodio ','armil Lumogdang',NULL,NULL,NULL,500,1000,0,0,21),
(22,'TR-2022081122','2022-11-08','12:07 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Leny Custodio ','armil Lumogdang',NULL,NULL,NULL,10,520,0,0,22),
(23,'TR-2022081123','2022-11-08','12:07 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Leny Custodio ','armil Lumogdang',NULL,NULL,NULL,10,530,0,0,23),
(24,'TR-2022081124','2022-11-08','12:07 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Leny Custodio ','armil Lumogdang',NULL,NULL,NULL,10,540,0,0,24),
(25,'TR-2022081125','2022-11-08','12:07 pm','Indirect Referral','','n/a','Leny Custodio ','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,25),
(26,'TR-2022081126','2022-11-08','12:08 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Criselda Sales','armil Lumogdang',NULL,NULL,NULL,500,1500,0,0,26),
(27,'TR-2022081127','2022-11-08','12:08 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Criselda Sales','armil Lumogdang',NULL,NULL,NULL,10,530,0,0,27),
(28,'TR-2022081128','2022-11-08','12:08 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Criselda Sales','armil Lumogdang',NULL,NULL,NULL,10,540,0,0,28),
(29,'TR-2022081129','2022-11-08','12:08 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Criselda Sales','armil Lumogdang',NULL,NULL,NULL,10,550,0,0,29),
(30,'TR-2022081130','2022-11-08','12:08 pm','Indirect Referral','','n/a','Criselda Sales','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,30),
(31,'TR-2022081131','2022-11-08','12:26 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Gladys Delos Reyes','armil Lumogdang',NULL,NULL,NULL,500,2000,0,0,31),
(32,'TR-2022081132','2022-11-08','12:26 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Gladys Delos Reyes','armil Lumogdang',NULL,NULL,NULL,10,540,0,0,32),
(33,'TR-2022081133','2022-11-08','12:26 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Gladys Delos Reyes','armil Lumogdang',NULL,NULL,NULL,10,550,0,0,33),
(34,'TR-2022081134','2022-11-08','12:26 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Gladys Delos Reyes','armil Lumogdang',NULL,NULL,NULL,10,560,0,0,34),
(35,'TR-2022081135','2022-11-08','12:26 pm','Indirect Referral','','n/a','Gladys Delos Reyes','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,35),
(36,'TR-2022081136','2022-11-08','12:41 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Jennifer Masangkay','armil Lumogdang',NULL,NULL,NULL,500,2500,0,0,36),
(37,'TR-2022081137','2022-11-08','12:41 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Jennifer Masangkay','armil Lumogdang',NULL,NULL,NULL,10,550,0,0,37),
(38,'TR-2022081138','2022-11-08','12:41 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Jennifer Masangkay','armil Lumogdang',NULL,NULL,NULL,10,560,0,0,38),
(39,'TR-2022081139','2022-11-08','12:41 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Jennifer Masangkay','armil Lumogdang',NULL,NULL,NULL,10,570,0,0,39),
(40,'TR-2022081140','2022-11-08','12:41 pm','Indirect Referral','','n/a','Jennifer Masangkay','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,40),
(41,'TR-2022081141','2022-11-08','12:43 pm','Direct Referral','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq','Retchie Josef','Leny Custodio ',NULL,NULL,NULL,500,500,0,0,41),
(42,'TR-2022081142','2022-11-08','12:43 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Retchie Josef','Leny Custodio ',NULL,NULL,NULL,10,2510,0,0,42),
(43,'TR-2022081143','2022-11-08','12:43 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Retchie Josef','Leny Custodio ',NULL,NULL,NULL,10,560,0,0,43),
(44,'TR-2022081144','2022-11-08','12:43 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Retchie Josef','Leny Custodio ',NULL,NULL,NULL,10,570,0,0,44),
(45,'TR-2022081145','2022-11-08','12:43 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Retchie Josef','Leny Custodio ',NULL,NULL,NULL,10,580,0,0,45),
(46,'TR-2022081146','2022-11-08','12:43 pm','Indirect Referral','','n/a','Retchie Josef','Leny Custodio ',NULL,NULL,NULL,10,10,0,0,46),
(47,'TR-2022081147','2022-11-08','12:44 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Jennezelle Ofiana','armil Lumogdang',NULL,NULL,NULL,500,3010,0,0,47),
(48,'TR-2022081148','2022-11-08','12:44 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Jennezelle Ofiana','armil Lumogdang',NULL,NULL,NULL,10,570,0,0,48),
(49,'TR-2022081149','2022-11-08','12:44 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Jennezelle Ofiana','armil Lumogdang',NULL,NULL,NULL,10,580,0,0,49),
(50,'TR-2022081150','2022-11-08','12:44 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Jennezelle Ofiana','armil Lumogdang',NULL,NULL,NULL,10,590,0,0,50),
(51,'TR-2022081151','2022-11-08','12:44 pm','Indirect Referral','','n/a','Jennezelle Ofiana','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,51),
(52,'TR-2022081152','2022-11-08','12:49 pm','Direct Referral','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq','Rodel Alejandro ','Leny Custodio ',NULL,NULL,NULL,500,1000,0,0,52),
(53,'TR-2022081153','2022-11-08','12:49 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Rodel Alejandro ','Leny Custodio ',NULL,NULL,NULL,10,3020,0,0,53),
(54,'TR-2022081154','2022-11-08','12:49 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Rodel Alejandro ','Leny Custodio ',NULL,NULL,NULL,10,580,0,0,54),
(55,'TR-2022081155','2022-11-08','12:49 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Rodel Alejandro ','Leny Custodio ',NULL,NULL,NULL,10,590,0,0,55),
(56,'TR-2022081156','2022-11-08','12:49 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Rodel Alejandro ','Leny Custodio ',NULL,NULL,NULL,10,600,0,0,56),
(57,'TR-2022081157','2022-11-08','12:49 pm','Indirect Referral','','n/a','Rodel Alejandro ','Leny Custodio ',NULL,NULL,NULL,10,10,0,0,57),
(58,'TR-2022081158','2022-11-08','01:04 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Jessa  Velasquez ','armil Lumogdang',NULL,NULL,NULL,500,3520,0,0,58),
(59,'TR-2022081159','2022-11-08','01:04 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Jessa  Velasquez ','armil Lumogdang',NULL,NULL,NULL,10,590,0,0,59),
(60,'TR-2022081160','2022-11-08','01:04 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Jessa  Velasquez ','armil Lumogdang',NULL,NULL,NULL,10,600,0,0,60),
(61,'TR-2022081161','2022-11-08','01:04 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Jessa  Velasquez ','armil Lumogdang',NULL,NULL,NULL,10,610,0,0,61),
(62,'TR-2022081162','2022-11-08','01:04 pm','Indirect Referral','','n/a','Jessa  Velasquez ','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,62),
(63,'TR-2022081163','2022-11-08','01:13 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Vergel AraÃ±as','armil Lumogdang',NULL,NULL,NULL,500,4020,0,0,63),
(64,'TR-2022081164','2022-11-08','01:13 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Vergel AraÃ±as','armil Lumogdang',NULL,NULL,NULL,10,600,0,0,64),
(65,'TR-2022081165','2022-11-08','01:13 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Vergel AraÃ±as','armil Lumogdang',NULL,NULL,NULL,10,610,0,0,65),
(66,'TR-2022081166','2022-11-08','01:13 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Vergel AraÃ±as','armil Lumogdang',NULL,NULL,NULL,10,620,0,0,66),
(67,'TR-2022081167','2022-11-08','01:13 pm','Indirect Referral','','n/a','Vergel AraÃ±as','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,67),
(68,'TR-2022081168','2022-11-08','01:21 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Tanya Lusica','armil Lumogdang',NULL,NULL,NULL,500,4520,0,0,68),
(69,'TR-2022081169','2022-11-08','01:21 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Tanya Lusica','armil Lumogdang',NULL,NULL,NULL,10,610,0,0,69),
(70,'TR-2022081170','2022-11-08','01:21 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Tanya Lusica','armil Lumogdang',NULL,NULL,NULL,10,620,0,0,70),
(71,'TR-2022081171','2022-11-08','01:21 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Tanya Lusica','armil Lumogdang',NULL,NULL,NULL,10,630,0,0,71),
(72,'TR-2022081172','2022-11-08','01:21 pm','Indirect Referral','','n/a','Tanya Lusica','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,72),
(73,'TR-2022081173','2022-11-08','01:51 pm','Direct Referral','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq','Ricardo De Leon','Leny Custodio ',NULL,NULL,NULL,500,1500,0,0,73),
(74,'TR-2022081174','2022-11-08','01:51 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Ricardo De Leon','Leny Custodio ',NULL,NULL,NULL,10,4530,0,0,74),
(75,'TR-2022081175','2022-11-08','01:51 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Ricardo De Leon','Leny Custodio ',NULL,NULL,NULL,10,620,0,0,75),
(76,'TR-2022081176','2022-11-08','01:51 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Ricardo De Leon','Leny Custodio ',NULL,NULL,NULL,10,630,0,0,76),
(77,'TR-2022081177','2022-11-08','01:51 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Ricardo De Leon','Leny Custodio ',NULL,NULL,NULL,10,640,0,0,77),
(78,'TR-2022081178','2022-11-08','01:51 pm','Indirect Referral','','n/a','Ricardo De Leon','Leny Custodio ',NULL,NULL,NULL,10,10,0,0,78),
(79,'TR-2022081179','2022-11-08','02:06 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Raquel  Osabel ','armil Lumogdang',NULL,NULL,NULL,500,5030,0,0,79),
(80,'TR-2022081180','2022-11-08','02:06 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Raquel  Osabel ','armil Lumogdang',NULL,NULL,NULL,10,630,0,0,80),
(81,'TR-2022081181','2022-11-08','02:06 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Raquel  Osabel ','armil Lumogdang',NULL,NULL,NULL,10,640,0,0,81),
(82,'TR-2022081182','2022-11-08','02:06 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Raquel  Osabel ','armil Lumogdang',NULL,NULL,NULL,10,650,0,0,82),
(83,'TR-2022081183','2022-11-08','02:06 pm','Indirect Referral','','n/a','Raquel  Osabel ','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,83),
(84,'TR-2022081184','2022-11-08','02:23 pm','Direct Referral','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq','Josephine Rafon','Leny Custodio ',NULL,NULL,NULL,500,2000,0,0,84),
(85,'TR-2022081185','2022-11-08','02:23 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Josephine Rafon','Leny Custodio ',NULL,NULL,NULL,10,5040,0,0,85),
(86,'TR-2022081186','2022-11-08','02:23 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Josephine Rafon','Leny Custodio ',NULL,NULL,NULL,10,640,0,0,86),
(87,'TR-2022081187','2022-11-08','02:23 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Josephine Rafon','Leny Custodio ',NULL,NULL,NULL,10,650,0,0,87),
(88,'TR-2022081188','2022-11-08','02:23 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Josephine Rafon','Leny Custodio ',NULL,NULL,NULL,10,660,0,0,88),
(89,'TR-2022081189','2022-11-08','02:23 pm','Indirect Referral','','n/a','Josephine Rafon','Leny Custodio ',NULL,NULL,NULL,10,10,0,0,89),
(90,'TR-2022081190','2022-11-08','02:32 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Ruby Jane Miguel','armil Lumogdang',NULL,NULL,NULL,500,5540,0,0,90),
(91,'TR-2022081191','2022-11-08','02:32 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Ruby Jane Miguel','armil Lumogdang',NULL,NULL,NULL,10,650,0,0,91),
(92,'TR-2022081192','2022-11-08','02:32 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Ruby Jane Miguel','armil Lumogdang',NULL,NULL,NULL,10,660,0,0,92),
(93,'TR-2022081193','2022-11-08','02:32 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Ruby Jane Miguel','armil Lumogdang',NULL,NULL,NULL,10,670,0,0,93),
(94,'TR-2022081194','2022-11-08','02:32 pm','Indirect Referral','','n/a','Ruby Jane Miguel','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,94),
(95,'TR-2022081195','2022-11-08','03:52 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Rodalyn Ortega','armil Lumogdang',NULL,NULL,NULL,500,6040,0,0,95),
(96,'TR-2022081196','2022-11-08','03:52 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Rodalyn Ortega','armil Lumogdang',NULL,NULL,NULL,10,660,0,0,96),
(97,'TR-2022081197','2022-11-08','03:52 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Rodalyn Ortega','armil Lumogdang',NULL,NULL,NULL,10,670,0,0,97),
(98,'TR-2022081198','2022-11-08','03:52 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Rodalyn Ortega','armil Lumogdang',NULL,NULL,NULL,10,680,0,0,98),
(99,'TR-2022081199','2022-11-08','03:52 pm','Indirect Referral','','n/a','Rodalyn Ortega','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,99),
(100,'TR-20220811100','2022-11-08','06:32 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Ligaya O. Vargas','armil Lumogdang',NULL,NULL,NULL,500,6540,0,0,100),
(101,'TR-20220811101','2022-11-08','06:32 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Ligaya O. Vargas','armil Lumogdang',NULL,NULL,NULL,10,670,0,0,101),
(102,'TR-20220811102','2022-11-08','06:32 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Ligaya O. Vargas','armil Lumogdang',NULL,NULL,NULL,10,680,0,0,102),
(103,'TR-20220811103','2022-11-08','06:32 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Ligaya O. Vargas','armil Lumogdang',NULL,NULL,NULL,10,690,0,0,103),
(104,'TR-20220811104','2022-11-08','06:32 pm','Indirect Referral','None','n/a','Ligaya O. Vargas','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,104),
(105,'TR-20220811105','2022-11-08','07:07 pm','Direct Referral','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq','Sharon Flores','Leny Custodio ',NULL,NULL,NULL,500,2500,0,0,105),
(106,'TR-20220811106','2022-11-08','07:07 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Sharon Flores','Leny Custodio ',NULL,NULL,NULL,10,6550,0,0,106),
(107,'TR-20220811107','2022-11-08','07:07 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Sharon Flores','Leny Custodio ',NULL,NULL,NULL,10,680,0,0,107),
(108,'TR-20220811108','2022-11-08','07:07 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Sharon Flores','Leny Custodio ',NULL,NULL,NULL,10,690,0,0,108),
(109,'TR-20220811109','2022-11-08','07:07 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Sharon Flores','Leny Custodio ',NULL,NULL,NULL,10,700,0,0,109),
(110,'TR-20220811110','2022-11-08','07:07 pm','Indirect Referral','None','n/a','Sharon Flores','Leny Custodio ',NULL,NULL,NULL,10,10,0,0,110),
(111,'TR-20220811111','2022-11-08','07:09 pm','Direct Referral','retchie@tcdc.edu.ph','ADS2022-11-20-MCL4-ey3T','Rosalinda  Tumacder ','Retchie Josef',NULL,NULL,NULL,500,500,0,0,111),
(112,'TR-20220811112','2022-11-08','07:09 pm','Indirect Referral','Leny  Custodio ','ADS2022-11-16-bEQ2-gpFq','Rosalinda  Tumacder ','Retchie Josef',NULL,NULL,NULL,10,2510,0,0,112),
(113,'TR-20220811113','2022-11-08','07:09 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Rosalinda  Tumacder ','Retchie Josef',NULL,NULL,NULL,10,6560,0,0,113),
(114,'TR-20220811114','2022-11-08','07:09 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Rosalinda  Tumacder ','Retchie Josef',NULL,NULL,NULL,10,690,0,0,114),
(115,'TR-20220811115','2022-11-08','07:09 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Rosalinda  Tumacder ','Retchie Josef',NULL,NULL,NULL,10,700,0,0,115),
(116,'TR-20220811116','2022-11-08','07:09 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Rosalinda  Tumacder ','Retchie Josef',NULL,NULL,NULL,10,710,0,0,116),
(117,'TR-20220811117','2022-11-08','07:09 pm','Indirect Referral','None','n/a','Rosalinda  Tumacder ','Retchie Josef',NULL,NULL,NULL,10,10,0,0,117),
(118,'TR-20220811118','2022-11-08','07:37 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Michelle Campang','armil Lumogdang',NULL,NULL,NULL,500,7060,0,0,118),
(119,'TR-20220811119','2022-11-08','07:37 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Michelle Campang','armil Lumogdang',NULL,NULL,NULL,10,700,0,0,119),
(120,'TR-20220811120','2022-11-08','07:37 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Michelle Campang','armil Lumogdang',NULL,NULL,NULL,10,710,0,0,120),
(121,'TR-20220811121','2022-11-08','07:37 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Michelle Campang','armil Lumogdang',NULL,NULL,NULL,10,720,0,0,121),
(122,'TR-20220811122','2022-11-08','07:37 pm','Indirect Referral','None','n/a','Michelle Campang','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,122),
(123,'TR-20220811123','2022-11-08','08:24 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Pacita Tambong','armil Lumogdang',NULL,NULL,NULL,500,7560,0,0,123),
(124,'TR-20220811124','2022-11-08','08:24 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Pacita Tambong','armil Lumogdang',NULL,NULL,NULL,10,710,0,0,124),
(125,'TR-20220811125','2022-11-08','08:24 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Pacita Tambong','armil Lumogdang',NULL,NULL,NULL,10,720,0,0,125),
(126,'TR-20220811126','2022-11-08','08:24 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Pacita Tambong','armil Lumogdang',NULL,NULL,NULL,10,730,0,0,126),
(127,'TR-20220811127','2022-11-08','08:24 pm','Indirect Referral','None','n/a','Pacita Tambong','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,127),
(128,'TR-20220811128','2022-11-08','08:29 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','ORLY  BOMBUHAY ','armil Lumogdang',NULL,NULL,NULL,500,8060,0,0,128),
(129,'TR-20220811129','2022-11-08','08:29 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','ORLY  BOMBUHAY ','armil Lumogdang',NULL,NULL,NULL,10,720,0,0,129),
(130,'TR-20220811130','2022-11-08','08:29 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','ORLY  BOMBUHAY ','armil Lumogdang',NULL,NULL,NULL,10,730,0,0,130),
(131,'TR-20220811131','2022-11-08','08:29 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','ORLY  BOMBUHAY ','armil Lumogdang',NULL,NULL,NULL,10,740,0,0,131),
(132,'TR-20220811132','2022-11-08','08:29 pm','Indirect Referral','None','n/a','ORLY  BOMBUHAY ','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,132),
(133,'TR-20220911133','2022-11-09','07:40 am','Direct Referral','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq','Saldy Gregorio','Leny Custodio ',NULL,NULL,NULL,500,3010,0,0,133),
(134,'TR-20220911134','2022-11-09','07:40 am','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Saldy Gregorio','Leny Custodio ',NULL,NULL,NULL,10,8070,0,0,134),
(135,'TR-20220911135','2022-11-09','07:40 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Saldy Gregorio','Leny Custodio ',NULL,NULL,NULL,10,730,0,0,135),
(136,'TR-20220911136','2022-11-09','07:40 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Saldy Gregorio','Leny Custodio ',NULL,NULL,NULL,10,740,0,0,136),
(137,'TR-20220911137','2022-11-09','07:40 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Saldy Gregorio','Leny Custodio ',NULL,NULL,NULL,10,750,0,0,137),
(138,'TR-20220911138','2022-11-09','07:40 am','Indirect Referral','None','n/a','Saldy Gregorio','Leny Custodio ',NULL,NULL,NULL,10,10,0,0,138),
(139,'TR-20220911139','2022-11-09','12:37 pm','Direct Referral','','','May Viscayno',' ',NULL,NULL,NULL,500,500,0,0,139),
(140,'TR-20220911140','2022-11-09','04:22 pm','Direct Referral','pacitatambong15@gmail.com','ADS2022-11-35-BVFY-8Xk0','Jinky Estinor','Pacita Tambong',NULL,NULL,NULL,500,500,0,0,140),
(141,'TR-20220911141','2022-11-09','04:22 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Jinky Estinor','Pacita Tambong',NULL,NULL,NULL,10,8080,0,0,141),
(142,'TR-20220911142','2022-11-09','04:22 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Jinky Estinor','Pacita Tambong',NULL,NULL,NULL,10,740,0,0,142),
(143,'TR-20220911143','2022-11-09','04:22 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Jinky Estinor','Pacita Tambong',NULL,NULL,NULL,10,750,0,0,143),
(144,'TR-20220911144','2022-11-09','04:22 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Jinky Estinor','Pacita Tambong',NULL,NULL,NULL,10,760,0,0,144),
(145,'TR-20220911145','2022-11-09','04:22 pm','Indirect Referral','None','n/a','Jinky Estinor','Pacita Tambong',NULL,NULL,NULL,10,10,0,0,145),
(146,'TR-20220911146','2022-11-09','05:07 pm','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Emiliana Domingo','armil Lumogdang',NULL,NULL,NULL,500,8580,0,0,146),
(147,'TR-20220911147','2022-11-09','05:07 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Emiliana Domingo','armil Lumogdang',NULL,NULL,NULL,10,750,0,0,147),
(148,'TR-20220911148','2022-11-09','05:07 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Emiliana Domingo','armil Lumogdang',NULL,NULL,NULL,10,760,0,0,148),
(149,'TR-20220911149','2022-11-09','05:07 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Emiliana Domingo','armil Lumogdang',NULL,NULL,NULL,10,770,0,0,149),
(150,'TR-20220911150','2022-11-09','05:07 pm','Indirect Referral','None','n/a','Emiliana Domingo','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,150),
(151,'TR-20220911151','2022-11-09','06:10 pm','Direct Referral','pacitatambong15@gmail.com','ADS2022-11-35-BVFY-8Xk0','Jesusa  Rama','Pacita Tambong',NULL,NULL,NULL,500,1000,0,0,151),
(152,'TR-20220911152','2022-11-09','06:10 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Jesusa  Rama','Pacita Tambong',NULL,NULL,NULL,10,8590,0,0,152),
(153,'TR-20220911153','2022-11-09','06:10 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Jesusa  Rama','Pacita Tambong',NULL,NULL,NULL,10,760,0,0,153),
(154,'TR-20220911154','2022-11-09','06:10 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Jesusa  Rama','Pacita Tambong',NULL,NULL,NULL,10,770,0,0,154),
(155,'TR-20220911155','2022-11-09','06:10 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Jesusa  Rama','Pacita Tambong',NULL,NULL,NULL,10,780,0,0,155),
(156,'TR-20220911156','2022-11-09','06:10 pm','Indirect Referral','None','n/a','Jesusa  Rama','Pacita Tambong',NULL,NULL,NULL,10,10,0,0,156),
(157,'TR-20220911157','2022-11-09','08:27 pm','Direct Referral','pacitatambong15@gmail.com','ADS2022-11-35-BVFY-8Xk0','Patrixia  Escobar','Pacita Tambong',NULL,NULL,NULL,500,1500,0,0,157),
(158,'TR-20220911158','2022-11-09','08:27 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Patrixia  Escobar','Pacita Tambong',NULL,NULL,NULL,10,8600,0,0,158),
(159,'TR-20220911159','2022-11-09','08:27 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Patrixia  Escobar','Pacita Tambong',NULL,NULL,NULL,10,770,0,0,159),
(160,'TR-20220911160','2022-11-09','08:27 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Patrixia  Escobar','Pacita Tambong',NULL,NULL,NULL,10,780,0,0,160),
(161,'TR-20220911161','2022-11-09','08:27 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Patrixia  Escobar','Pacita Tambong',NULL,NULL,NULL,10,790,0,0,161),
(162,'TR-20220911162','2022-11-09','08:27 pm','Indirect Referral','None','n/a','Patrixia  Escobar','Pacita Tambong',NULL,NULL,NULL,10,10,0,0,162),
(163,'TR-20220911163','2022-11-09','09:51 pm','Direct Referral','odaiski26@gmail.com','ADS2022-11-30-c9xF-Tpod','Irene Ortega','Rodalyn Ortega',NULL,NULL,NULL,500,500,0,0,163),
(164,'TR-20220911164','2022-11-09','09:51 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Irene Ortega','Rodalyn Ortega',NULL,NULL,NULL,10,8610,0,0,164),
(165,'TR-20220911165','2022-11-09','09:51 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Irene Ortega','Rodalyn Ortega',NULL,NULL,NULL,10,780,0,0,165),
(166,'TR-20220911166','2022-11-09','09:51 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Irene Ortega','Rodalyn Ortega',NULL,NULL,NULL,10,790,0,0,166),
(167,'TR-20220911167','2022-11-09','09:51 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Irene Ortega','Rodalyn Ortega',NULL,NULL,NULL,10,800,0,0,167),
(168,'TR-20220911168','2022-11-09','09:51 pm','Indirect Referral','None','n/a','Irene Ortega','Rodalyn Ortega',NULL,NULL,NULL,10,10,0,0,168),
(169,'TR-20220911169','2022-11-09','10:46 pm','Direct Referral','','',' Melanie Manuel Bahalla,',' ',NULL,NULL,NULL,500,500,0,0,169),
(170,'TR-20220911170','2022-11-09','11:13 pm','Claimed Rebates','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA',NULL,NULL,NULL,NULL,NULL,0,8610,0,0,170),
(171,'TR-20220911171','2022-11-09','11:13 pm','Points','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA',NULL,NULL,'RA',NULL,NULL,0,0,1,1,171),
(172,'TR-20220911172','2022-11-09','11:13 pm','Unclaimable Rebates','nacksph@gmail.com','ADS2022-11-11-hHaf-i7sC',NULL,NULL,'RA','armil Lumogdang','ADS2022-11-13-zPdl-i6SA',70,70,0,0,172),
(173,'TR-20220911173','2022-11-09','11:13 pm','Unclaimable Rebates','healinggaling2020@yahoo.com','ADS2022-11-10-Q8t2-xiMD',NULL,NULL,'RA','armil Lumogdang','ADS2022-11-13-zPdl-i6SA',30,30,0,0,173),
(174,'TR-20220911174','2022-11-09','11:13 pm','Unclaimable Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','armil Lumogdang','ADS2022-11-13-zPdl-i6SA',30,30,0,0,174),
(175,'TR-20220911175','2022-11-09','11:13 pm','Unclaimable Rebates','','n/a',NULL,NULL,'RA','armil Lumogdang','ADS2022-11-13-zPdl-i6SA',30,30,0,0,175),
(176,'TR-20220911176','2022-11-09','11:14 pm','Direct Referral','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq','JEREMIAH ABAYA','Leny Custodio ',NULL,NULL,NULL,500,3510,0,0,176),
(177,'TR-20220911177','2022-11-09','11:14 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','JEREMIAH ABAYA','Leny Custodio ',NULL,NULL,NULL,10,8620,0,0,177),
(178,'TR-20220911178','2022-11-09','11:14 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','JEREMIAH ABAYA','Leny Custodio ',NULL,NULL,NULL,10,790,0,0,178),
(179,'TR-20220911179','2022-11-09','11:14 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','JEREMIAH ABAYA','Leny Custodio ',NULL,NULL,NULL,10,800,0,0,179),
(180,'TR-20220911180','2022-11-09','11:14 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','JEREMIAH ABAYA','Leny Custodio ',NULL,NULL,NULL,10,810,0,0,180),
(181,'TR-20220911181','2022-11-09','11:14 pm','Indirect Referral','None','n/a','JEREMIAH ABAYA','Leny Custodio ',NULL,NULL,NULL,10,10,0,0,181),
(182,'TR-20220911182','2022-11-09','11:17 pm','Direct Referral','ramasusie321@gmail.com','ADS2022-11-41-ibTl-Fxw0',' Melanie Manuel Bahalla,','Jesusa  Rama',NULL,NULL,NULL,500,500,0,0,182),
(183,'TR-20220911183','2022-11-09','11:17 pm','Indirect Referral','Pacita  Tambong','ADS2022-11-35-BVFY-8Xk0',' Melanie Manuel Bahalla,','Jesusa  Rama',NULL,NULL,NULL,10,1510,0,0,183),
(184,'TR-20220911184','2022-11-09','11:17 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA',' Melanie Manuel Bahalla,','Jesusa  Rama',NULL,NULL,NULL,10,8630,0,0,184),
(185,'TR-20220911185','2022-11-09','11:17 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC',' Melanie Manuel Bahalla,','Jesusa  Rama',NULL,NULL,NULL,10,800,0,0,185),
(186,'TR-20220911186','2022-11-09','11:17 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD',' Melanie Manuel Bahalla,','Jesusa  Rama',NULL,NULL,NULL,10,810,0,0,186),
(187,'TR-20220911187','2022-11-09','11:17 pm','Indirect Referral','Direct  Sales','ADS2022-10-7',' Melanie Manuel Bahalla,','Jesusa  Rama',NULL,NULL,NULL,10,820,0,0,187),
(188,'TR-20220911188','2022-11-09','11:17 pm','Indirect Referral','None','n/a',' Melanie Manuel Bahalla,','Jesusa  Rama',NULL,NULL,NULL,10,10,0,0,188),
(189,'TR-20220911189','2022-11-09','11:30 pm','Claimed Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,NULL,NULL,NULL,30,850,0,0,189),
(190,'TR-20220911190','2022-11-09','11:30 pm','Points','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RB',NULL,NULL,0,0,1,1,190),
(191,'TR-20220911191','2022-11-09','11:30 pm','Unclaimable Rebates','','n/a',NULL,NULL,'RB','Direct Sales','ADS2022-10-7',80,80,0,0,191),
(192,'TR-20220911192','2022-11-09','11:50 pm','Claimed Rebates','masangkay0313@gmail.com','ADS2022-11-19-gNG4-lBHO',NULL,NULL,NULL,NULL,NULL,0,0,0,0,192),
(193,'TR-20220911193','2022-11-09','11:50 pm','Points','masangkay0313@gmail.com','ADS2022-11-19-gNG4-lBHO',NULL,NULL,'RA',NULL,NULL,0,0,1,1,193),
(194,'TR-20220911194','2022-11-09','11:50 pm','Rebates','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',80,8710,0,0,194),
(195,'TR-20220911195','2022-11-09','11:50 pm','Unclaimable Rebates','nacksph@gmail.com','ADS2022-11-11-hHaf-i7sC',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',50,120,0,0,195),
(196,'TR-20220911196','2022-11-09','11:50 pm','Unclaimable Rebates','healinggaling2020@yahoo.com','ADS2022-11-10-Q8t2-xiMD',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',40,70,0,0,196),
(197,'TR-20220911197','2022-11-09','11:50 pm','Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',30,880,0,0,197),
(198,'TR-20220911198','2022-11-09','11:50 pm','Unclaimable Rebates','','n/a',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',20,20,0,0,198),
(199,'TR-20220911199','2022-11-09','11:51 pm','Claimed Rebates','masangkay0313@gmail.com','ADS2022-11-19-gNG4-lBHO',NULL,NULL,NULL,NULL,NULL,0,0,0,0,199),
(200,'TR-20220911200','2022-11-09','11:51 pm','Points','masangkay0313@gmail.com','ADS2022-11-19-gNG4-lBHO',NULL,NULL,'RA',NULL,NULL,0,0,1,2,200),
(201,'TR-20220911201','2022-11-09','11:51 pm','Rebates','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',80,8790,0,0,201),
(202,'TR-20220911202','2022-11-09','11:51 pm','Unclaimable Rebates','nacksph@gmail.com','ADS2022-11-11-hHaf-i7sC',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',50,170,0,0,202),
(203,'TR-20220911203','2022-11-09','11:51 pm','Unclaimable Rebates','healinggaling2020@yahoo.com','ADS2022-11-10-Q8t2-xiMD',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',40,110,0,0,203),
(204,'TR-20220911204','2022-11-09','11:51 pm','Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',30,910,0,0,204),
(205,'TR-20220911205','2022-11-09','11:51 pm','Unclaimable Rebates','','n/a',NULL,NULL,'RA','Jennifer Masangkay','ADS2022-11-19-gNG4-lBHO',20,20,0,0,205),
(206,'TR-20221011206','2022-11-10','06:48 am','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Marlin Mancao','armil Lumogdang',NULL,NULL,NULL,500,9290,0,0,206),
(207,'TR-20221011207','2022-11-10','06:48 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Marlin Mancao','armil Lumogdang',NULL,NULL,NULL,10,810,0,0,207),
(208,'TR-20221011208','2022-11-10','06:48 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Marlin Mancao','armil Lumogdang',NULL,NULL,NULL,10,820,0,0,208),
(209,'TR-20221011209','2022-11-10','06:48 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Marlin Mancao','armil Lumogdang',NULL,NULL,NULL,10,920,0,0,209),
(210,'TR-20221011210','2022-11-10','06:48 am','Indirect Referral','None','n/a','Marlin Mancao','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,210),
(211,'TR-20221011211','2022-11-10','07:07 am','Claimed Rebates','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq',NULL,NULL,NULL,NULL,NULL,0,3510,0,0,211),
(212,'TR-20221011212','2022-11-10','07:07 am','Points','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq',NULL,NULL,'RA',NULL,NULL,0,0,1,1,212),
(213,'TR-20221011213','2022-11-10','07:07 am','Rebates','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA',NULL,NULL,'RA','Leny Custodio ','ADS2022-11-16-bEQ2-gpFq',80,9370,0,0,213),
(214,'TR-20221011214','2022-11-10','07:07 am','Unclaimable Rebates','nacksph@gmail.com','ADS2022-11-11-hHaf-i7sC',NULL,NULL,'RA','Leny Custodio ','ADS2022-11-16-bEQ2-gpFq',50,220,0,0,214),
(215,'TR-20221011215','2022-11-10','07:07 am','Unclaimable Rebates','healinggaling2020@yahoo.com','ADS2022-11-10-Q8t2-xiMD',NULL,NULL,'RA','Leny Custodio ','ADS2022-11-16-bEQ2-gpFq',40,150,0,0,215),
(216,'TR-20221011216','2022-11-10','07:07 am','Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','Leny Custodio ','ADS2022-11-16-bEQ2-gpFq',30,950,0,0,216),
(217,'TR-20221011217','2022-11-10','07:07 am','Unclaimable Rebates','','n/a',NULL,NULL,'RA','Leny Custodio ','ADS2022-11-16-bEQ2-gpFq',20,20,0,0,217),
(218,'TR-20221011218','2022-11-10','08:04 am','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','jeffrey  rosadia','armil Lumogdang',NULL,NULL,NULL,500,9870,0,0,218),
(219,'TR-20221011219','2022-11-10','08:04 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','jeffrey  rosadia','armil Lumogdang',NULL,NULL,NULL,10,820,0,0,219),
(220,'TR-20221011220','2022-11-10','08:04 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','jeffrey  rosadia','armil Lumogdang',NULL,NULL,NULL,10,830,0,0,220),
(221,'TR-20221011221','2022-11-10','08:04 am','Indirect Referral','Direct  Sales','ADS2022-10-7','jeffrey  rosadia','armil Lumogdang',NULL,NULL,NULL,10,960,0,0,221),
(222,'TR-20221011222','2022-11-10','08:04 am','Indirect Referral','None','n/a','jeffrey  rosadia','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,222),
(223,'TR-20221011223','2022-11-10','08:17 am','Direct Referral','jeffpeachy23@gmail.com','ADS2022-11-48-GN9u-kxQE','Editha Rosadia','jeffrey  rosadia',NULL,NULL,NULL,500,500,0,0,223),
(224,'TR-20221011224','2022-11-10','08:17 am','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Editha Rosadia','jeffrey  rosadia',NULL,NULL,NULL,10,9880,0,0,224),
(225,'TR-20221011225','2022-11-10','08:17 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Editha Rosadia','jeffrey  rosadia',NULL,NULL,NULL,10,830,0,0,225),
(226,'TR-20221011226','2022-11-10','08:17 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Editha Rosadia','jeffrey  rosadia',NULL,NULL,NULL,10,840,0,0,226),
(227,'TR-20221011227','2022-11-10','08:17 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Editha Rosadia','jeffrey  rosadia',NULL,NULL,NULL,10,970,0,0,227),
(228,'TR-20221011228','2022-11-10','08:17 am','Indirect Referral','None','n/a','Editha Rosadia','jeffrey  rosadia',NULL,NULL,NULL,10,10,0,0,228),
(229,'TR-20221011229','2022-11-10','08:19 am','Claimed Rebates','jeffpeachy@gmail.com','ADS2022-11-49-Cdkc-8tNU',NULL,NULL,NULL,NULL,NULL,0,0,0,0,229),
(230,'TR-20221011230','2022-11-10','08:19 am','Points','jeffpeachy@gmail.com','ADS2022-11-49-Cdkc-8tNU',NULL,NULL,'RA',NULL,NULL,0,0,1,1,230),
(231,'TR-20221011231','2022-11-10','08:19 am','Unclaimable Rebates','jeffpeachy23@gmail.com','ADS2022-11-48-GN9u-kxQE',NULL,NULL,'RA','Editha Rosadia','ADS2022-11-49-Cdkc-8tNU',80,80,0,0,231),
(232,'TR-20221011232','2022-11-10','08:19 am','Rebates','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA',NULL,NULL,'RA','Editha Rosadia','ADS2022-11-49-Cdkc-8tNU',50,9930,0,0,232),
(233,'TR-20221011233','2022-11-10','08:19 am','Unclaimable Rebates','nacksph@gmail.com','ADS2022-11-11-hHaf-i7sC',NULL,NULL,'RA','Editha Rosadia','ADS2022-11-49-Cdkc-8tNU',40,260,0,0,233),
(234,'TR-20221011234','2022-11-10','08:19 am','Unclaimable Rebates','healinggaling2020@yahoo.com','ADS2022-11-10-Q8t2-xiMD',NULL,NULL,'RA','Editha Rosadia','ADS2022-11-49-Cdkc-8tNU',30,180,0,0,234),
(235,'TR-20221011235','2022-11-10','08:19 am','Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RA','Editha Rosadia','ADS2022-11-49-Cdkc-8tNU',20,990,0,0,235),
(236,'TR-20221011236','2022-11-10','08:19 am','Unclaimable Rebates','','n/a',NULL,NULL,'RA','Editha Rosadia','ADS2022-11-49-Cdkc-8tNU',10,10,0,0,236),
(237,'TR-20221011237','2022-11-10','08:21 am','Claimed Rebates','jeffpeachy23@gmail.com','ADS2022-11-48-GN9u-kxQE',NULL,NULL,NULL,NULL,NULL,80,580,0,0,237),
(238,'TR-20221011238','2022-11-10','08:21 am','Points','jeffpeachy23@gmail.com','ADS2022-11-48-GN9u-kxQE',NULL,NULL,'RB',NULL,NULL,0,0,1,1,238),
(239,'TR-20221011239','2022-11-10','08:21 am','Rebates','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA',NULL,NULL,'RB','jeffrey  rosadia','ADS2022-11-48-GN9u-kxQE',80,10010,0,0,239),
(240,'TR-20221011240','2022-11-10','08:21 am','Unclaimable Rebates','nacksph@gmail.com','ADS2022-11-11-hHaf-i7sC',NULL,NULL,'RB','jeffrey  rosadia','ADS2022-11-48-GN9u-kxQE',50,310,0,0,240),
(241,'TR-20221011241','2022-11-10','08:21 am','Unclaimable Rebates','healinggaling2020@yahoo.com','ADS2022-11-10-Q8t2-xiMD',NULL,NULL,'RB','jeffrey  rosadia','ADS2022-11-48-GN9u-kxQE',40,220,0,0,241),
(242,'TR-20221011242','2022-11-10','08:21 am','Rebates','directsales@gmail.com','ADS2022-10-7',NULL,NULL,'RB','jeffrey  rosadia','ADS2022-11-48-GN9u-kxQE',30,1020,0,0,242),
(243,'TR-20221011243','2022-11-10','08:21 am','Unclaimable Rebates','','n/a',NULL,NULL,'RB','jeffrey  rosadia','ADS2022-11-48-GN9u-kxQE',20,20,0,0,243),
(244,'TR-20221011244','2022-11-10','08:31 am','Direct Referral','odaiski26@gmail.com','ADS2022-11-30-c9xF-Tpod','Sheryl Benitez','Rodalyn Ortega',NULL,NULL,NULL,500,1000,0,0,244),
(245,'TR-20221011245','2022-11-10','08:31 am','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Sheryl Benitez','Rodalyn Ortega',NULL,NULL,NULL,10,10020,0,0,245),
(246,'TR-20221011246','2022-11-10','08:31 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Sheryl Benitez','Rodalyn Ortega',NULL,NULL,NULL,10,840,0,0,246),
(247,'TR-20221011247','2022-11-10','08:31 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Sheryl Benitez','Rodalyn Ortega',NULL,NULL,NULL,10,850,0,0,247),
(248,'TR-20221011248','2022-11-10','08:31 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Sheryl Benitez','Rodalyn Ortega',NULL,NULL,NULL,10,1030,0,0,248),
(249,'TR-20221011249','2022-11-10','08:31 am','Indirect Referral','None','n/a','Sheryl Benitez','Rodalyn Ortega',NULL,NULL,NULL,10,10,0,0,249),
(250,'TR-20221011250','2022-11-10','08:52 am','Direct Referral','ramasusie321@gmail.com','ADS2022-11-41-ibTl-Fxw0','Cristine Flores ','Jesusa  Rama',NULL,NULL,NULL,500,1000,0,0,250),
(251,'TR-20221011251','2022-11-10','08:52 am','Indirect Referral','Pacita  Tambong','ADS2022-11-35-BVFY-8Xk0','Cristine Flores ','Jesusa  Rama',NULL,NULL,NULL,10,1520,0,0,251),
(252,'TR-20221011252','2022-11-10','08:52 am','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Cristine Flores ','Jesusa  Rama',NULL,NULL,NULL,10,10030,0,0,252),
(253,'TR-20221011253','2022-11-10','08:52 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Cristine Flores ','Jesusa  Rama',NULL,NULL,NULL,10,850,0,0,253),
(254,'TR-20221011254','2022-11-10','08:52 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Cristine Flores ','Jesusa  Rama',NULL,NULL,NULL,10,860,0,0,254),
(255,'TR-20221011255','2022-11-10','08:52 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Cristine Flores ','Jesusa  Rama',NULL,NULL,NULL,10,1040,0,0,255),
(256,'TR-20221011256','2022-11-10','08:52 am','Indirect Referral','None','n/a','Cristine Flores ','Jesusa  Rama',NULL,NULL,NULL,10,10,0,0,256),
(257,'TR-20221011257','2022-11-10','09:39 am','Direct Referral','pacitatambong15@gmail.com','ADS2022-11-35-BVFY-8Xk0','Falaviana Lea  Andal','Pacita Tambong',NULL,NULL,NULL,500,2020,0,0,257),
(258,'TR-20221011258','2022-11-10','09:39 am','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Falaviana Lea  Andal','Pacita Tambong',NULL,NULL,NULL,10,10040,0,0,258),
(259,'TR-20221011259','2022-11-10','09:39 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Falaviana Lea  Andal','Pacita Tambong',NULL,NULL,NULL,10,860,0,0,259),
(260,'TR-20221011260','2022-11-10','09:39 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Falaviana Lea  Andal','Pacita Tambong',NULL,NULL,NULL,10,870,0,0,260),
(261,'TR-20221011261','2022-11-10','09:39 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Falaviana Lea  Andal','Pacita Tambong',NULL,NULL,NULL,10,1050,0,0,261),
(262,'TR-20221011262','2022-11-10','09:39 am','Indirect Referral','None','n/a','Falaviana Lea  Andal','Pacita Tambong',NULL,NULL,NULL,10,10,0,0,262),
(263,'TR-20221011263','2022-11-10','10:17 am','Direct Referral','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq','Reina Sucion','Leny Custodio ',NULL,NULL,NULL,500,4010,0,0,263),
(264,'TR-20221011264','2022-11-10','10:17 am','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Reina Sucion','Leny Custodio ',NULL,NULL,NULL,10,10050,0,0,264),
(265,'TR-20221011265','2022-11-10','10:17 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Reina Sucion','Leny Custodio ',NULL,NULL,NULL,10,870,0,0,265),
(266,'TR-20221011266','2022-11-10','10:17 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Reina Sucion','Leny Custodio ',NULL,NULL,NULL,10,880,0,0,266),
(267,'TR-20221011267','2022-11-10','10:17 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Reina Sucion','Leny Custodio ',NULL,NULL,NULL,10,1060,0,0,267),
(268,'TR-20221011268','2022-11-10','10:17 am','Indirect Referral','None','n/a','Reina Sucion','Leny Custodio ',NULL,NULL,NULL,10,10,0,0,268),
(269,'TR-20221011269','2022-11-10','11:40 am','Direct Referral','','','Rosemarie Banasihan',' ',NULL,NULL,NULL,500,500,0,0,269),
(270,'TR-20221011270','2022-11-10','12:09 pm','Direct Referral','','','Beck Pabillano',' ',NULL,NULL,NULL,500,500,0,0,270),
(271,'TR-20221011271','2022-11-10','12:17 pm','Direct Referral','','','Marjorie  Consolacion ',' ',NULL,NULL,NULL,500,500,0,0,271),
(272,'TR-20221011272','2022-11-10','05:39 pm','Direct Referral','jeffpeachy@gmail.com','ADS2022-11-49-Cdkc-8tNU','Sarah Jane Denia','Editha Rosadia',NULL,NULL,NULL,500,500,0,0,272),
(273,'TR-20221011273','2022-11-10','05:39 pm','Indirect Referral','jeffrey   rosadia','ADS2022-11-48-GN9u-kxQE','Sarah Jane Denia','Editha Rosadia',NULL,NULL,NULL,10,590,0,0,273),
(274,'TR-20221011274','2022-11-10','05:39 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Sarah Jane Denia','Editha Rosadia',NULL,NULL,NULL,10,10060,0,0,274),
(275,'TR-20221011275','2022-11-10','05:39 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Sarah Jane Denia','Editha Rosadia',NULL,NULL,NULL,10,880,0,0,275),
(276,'TR-20221011276','2022-11-10','05:39 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Sarah Jane Denia','Editha Rosadia',NULL,NULL,NULL,10,890,0,0,276),
(277,'TR-20221011277','2022-11-10','05:39 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Sarah Jane Denia','Editha Rosadia',NULL,NULL,NULL,10,1070,0,0,277),
(278,'TR-20221011278','2022-11-10','05:39 pm','Indirect Referral','None','n/a','Sarah Jane Denia','Editha Rosadia',NULL,NULL,NULL,10,10,0,0,278),
(279,'TR-20221011279','2022-11-10','07:33 pm','Direct Referral','custodioleny77@gmail.com','ADS2022-11-16-bEQ2-gpFq','Luzminda Williams','Leny Custodio ',NULL,NULL,NULL,500,4510,0,0,279),
(280,'TR-20221011280','2022-11-10','07:33 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Luzminda Williams','Leny Custodio ',NULL,NULL,NULL,10,10070,0,0,280),
(281,'TR-20221011281','2022-11-10','07:33 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Luzminda Williams','Leny Custodio ',NULL,NULL,NULL,10,890,0,0,281),
(282,'TR-20221011282','2022-11-10','07:33 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Luzminda Williams','Leny Custodio ',NULL,NULL,NULL,10,900,0,0,282),
(283,'TR-20221011283','2022-11-10','07:33 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Luzminda Williams','Leny Custodio ',NULL,NULL,NULL,10,1080,0,0,283),
(284,'TR-20221011284','2022-11-10','07:33 pm','Indirect Referral','None','n/a','Luzminda Williams','Leny Custodio ',NULL,NULL,NULL,10,10,0,0,284),
(285,'TR-20221011285','2022-11-10','09:12 pm','Direct Referral','retchie@tcdc.edu.ph','ADS2022-11-20-MCL4-ey3T','Mary Jane Marquez','Retchie Josef',NULL,NULL,NULL,500,1000,0,0,285),
(286,'TR-20221011286','2022-11-10','09:12 pm','Indirect Referral','Leny  Custodio ','ADS2022-11-16-bEQ2-gpFq','Mary Jane Marquez','Retchie Josef',NULL,NULL,NULL,10,4520,0,0,286),
(287,'TR-20221011287','2022-11-10','09:12 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Mary Jane Marquez','Retchie Josef',NULL,NULL,NULL,10,10080,0,0,287),
(288,'TR-20221011288','2022-11-10','09:12 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Mary Jane Marquez','Retchie Josef',NULL,NULL,NULL,10,900,0,0,288),
(289,'TR-20221011289','2022-11-10','09:12 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Mary Jane Marquez','Retchie Josef',NULL,NULL,NULL,10,910,0,0,289),
(290,'TR-20221011290','2022-11-10','09:12 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Mary Jane Marquez','Retchie Josef',NULL,NULL,NULL,10,1090,0,0,290),
(291,'TR-20221011291','2022-11-10','09:12 pm','Indirect Referral','None','n/a','Mary Jane Marquez','Retchie Josef',NULL,NULL,NULL,10,10,0,0,291),
(292,'TR-20221011292','2022-11-10','09:16 pm','Direct Referral','odaiski26@gmail.com','ADS2022-11-30-c9xF-Tpod','Jennelyn Pujol','Rodalyn Ortega',NULL,NULL,NULL,500,1500,0,0,292),
(293,'TR-20221011293','2022-11-10','09:16 pm','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Jennelyn Pujol','Rodalyn Ortega',NULL,NULL,NULL,10,10090,0,0,293),
(294,'TR-20221011294','2022-11-10','09:16 pm','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Jennelyn Pujol','Rodalyn Ortega',NULL,NULL,NULL,10,910,0,0,294),
(295,'TR-20221011295','2022-11-10','09:16 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Jennelyn Pujol','Rodalyn Ortega',NULL,NULL,NULL,10,920,0,0,295),
(296,'TR-20221011296','2022-11-10','09:16 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Jennelyn Pujol','Rodalyn Ortega',NULL,NULL,NULL,10,1100,0,0,296),
(297,'TR-20221011297','2022-11-10','09:16 pm','Indirect Referral','None','n/a','Jennelyn Pujol','Rodalyn Ortega',NULL,NULL,NULL,10,10,0,0,297),
(298,'TR-20221111298','2022-11-11','04:52 pm','Direct Referral','','','ROMULO ARENAS',' ',NULL,NULL,NULL,500,500,0,0,298),
(299,'TR-20221111299','2022-11-11','05:03 pm','Direct Referral','','','Myraflor  Enrile',' ',NULL,NULL,NULL,500,500,0,0,299),
(300,'TR-20221111300','2022-11-11','05:10 pm','Direct Referral','','','Ernest V. Navarro  ',' ',NULL,NULL,NULL,500,500,0,0,300),
(301,'TR-20221111301','2022-11-11','05:21 pm','Direct Referral','','',' Beverly Odvina',' ',NULL,NULL,NULL,500,500,0,0,301),
(302,'TR-20221111302','2022-11-11','05:32 pm','Direct Referral','','','Jose Gamer',' ',NULL,NULL,NULL,500,500,0,0,302),
(303,'TR-20221111303','2022-11-11','05:50 pm','Direct Referral','','','Emelie R. Ramos',' ',NULL,NULL,NULL,500,500,0,0,303),
(304,'TR-20221111304','2022-11-11','06:13 pm','Direct Referral','','','Marlon Sicat',' ',NULL,NULL,NULL,500,500,0,0,304),
(305,'TR-20221111305','2022-11-11','06:23 pm','Direct Referral','','','Michelle Tan Manalo',' ',NULL,NULL,NULL,500,500,0,0,305),
(306,'TR-20221111306','2022-11-11','06:31 pm','Direct Referral','','','Editha R. Arquero',' ',NULL,NULL,NULL,500,500,0,0,306),
(307,'TR-20221111307','2022-11-11','06:38 pm','Direct Referral','','','Evangeline Nudo',' ',NULL,NULL,NULL,500,500,0,0,307),
(308,'TR-20221111308','2022-11-11','07:02 pm','Direct Referral','','','Ramil Canlapan',' ',NULL,NULL,NULL,500,500,0,0,308),
(309,'TR-20221111309','2022-11-11','07:10 pm','Direct Referral','','','Glaiza G. Salting',' ',NULL,NULL,NULL,500,500,0,0,309),
(310,'TR-20221111310','2022-11-11','07:17 pm','Direct Referral','','','Marietta Gonzales',' ',NULL,NULL,NULL,500,500,0,0,310),
(311,'TR-20221111311','2022-11-11','07:21 pm','Direct Referral','','','Erickson Vinturina',' ',NULL,NULL,NULL,500,500,0,0,311),
(312,'TR-20221111312','2022-11-11','08:32 pm','Direct Referral','','','Eda Ambay',' ',NULL,NULL,NULL,500,500,0,0,312),
(313,'TR-20221111313','2022-11-11','08:52 pm','Direct Referral','','','Ma Theresa A. Marcelino',' ',NULL,NULL,NULL,500,500,0,0,313),
(314,'TR-20221111314','2022-11-11','10:09 pm','Direct Referral','nacksph@gmail.com','ADS2022-11-11-hHaf-i7sC','Rhea Gevero','IT Tech  Support',NULL,NULL,NULL,500,1410,0,0,314),
(315,'TR-20221111315','2022-11-11','10:09 pm','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Rhea Gevero','IT Tech  Support',NULL,NULL,NULL,10,930,0,0,315),
(316,'TR-20221111316','2022-11-11','10:09 pm','Indirect Referral','Direct  Sales','ADS2022-10-7','Rhea Gevero','IT Tech  Support',NULL,NULL,NULL,10,1110,0,0,316),
(317,'TR-20221111317','2022-11-11','10:09 pm','Indirect Referral','None','n/a','Rhea Gevero','IT Tech  Support',NULL,NULL,NULL,10,10,0,0,317),
(318,'TR-20221211318','2022-11-12','07:53 am','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Princess Noemi Gonzales','armil Lumogdang',NULL,NULL,NULL,500,10590,0,0,318),
(319,'TR-20221211319','2022-11-12','07:53 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Princess Noemi Gonzales','armil Lumogdang',NULL,NULL,NULL,10,1420,0,0,319),
(320,'TR-20221211320','2022-11-12','07:53 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Princess Noemi Gonzales','armil Lumogdang',NULL,NULL,NULL,10,940,0,0,320),
(321,'TR-20221211321','2022-11-12','07:53 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Princess Noemi Gonzales','armil Lumogdang',NULL,NULL,NULL,10,1120,0,0,321),
(322,'TR-20221211322','2022-11-12','07:53 am','Indirect Referral','None','n/a','Princess Noemi Gonzales','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,322),
(323,'TR-20221211323','2022-11-12','09:40 am','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Rex Dumot','armil Lumogdang',NULL,NULL,NULL,500,11090,0,0,323),
(324,'TR-20221211324','2022-11-12','09:40 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Rex Dumot','armil Lumogdang',NULL,NULL,NULL,10,1430,0,0,324),
(325,'TR-20221211325','2022-11-12','09:40 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Rex Dumot','armil Lumogdang',NULL,NULL,NULL,10,950,0,0,325),
(326,'TR-20221211326','2022-11-12','09:40 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Rex Dumot','armil Lumogdang',NULL,NULL,NULL,10,1130,0,0,326),
(327,'TR-20221211327','2022-11-12','09:40 am','Indirect Referral','None','n/a','Rex Dumot','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,327),
(328,'TR-20221211328','2022-11-12','10:06 am','Direct Referral','mr.arvielumogdang@yahoo.com','ADS2022-11-13-zPdl-i6SA','Jelyn Mondejar','armil Lumogdang',NULL,NULL,NULL,500,11590,0,0,328),
(329,'TR-20221211329','2022-11-12','10:06 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Jelyn Mondejar','armil Lumogdang',NULL,NULL,NULL,10,1440,0,0,329),
(330,'TR-20221211330','2022-11-12','10:06 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Jelyn Mondejar','armil Lumogdang',NULL,NULL,NULL,10,960,0,0,330),
(331,'TR-20221211331','2022-11-12','10:06 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Jelyn Mondejar','armil Lumogdang',NULL,NULL,NULL,10,1140,0,0,331),
(332,'TR-20221211332','2022-11-12','10:06 am','Indirect Referral','None','n/a','Jelyn Mondejar','armil Lumogdang',NULL,NULL,NULL,10,10,0,0,332),
(333,'TR-20221311333','2022-11-13','09:37 am','Direct Referral','pacitatambong15@gmail.com','ADS2022-11-35-BVFY-8Xk0','Ronald Espinosa','Pacita Tambong',NULL,NULL,NULL,500,2520,0,0,333),
(334,'TR-20221311334','2022-11-13','09:37 am','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Ronald Espinosa','Pacita Tambong',NULL,NULL,NULL,10,11600,0,0,334),
(335,'TR-20221311335','2022-11-13','09:37 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Ronald Espinosa','Pacita Tambong',NULL,NULL,NULL,10,1450,0,0,335),
(336,'TR-20221311336','2022-11-13','09:37 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Ronald Espinosa','Pacita Tambong',NULL,NULL,NULL,10,970,0,0,336),
(337,'TR-20221311337','2022-11-13','09:37 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Ronald Espinosa','Pacita Tambong',NULL,NULL,NULL,10,1150,0,0,337),
(338,'TR-20221311338','2022-11-13','09:37 am','Indirect Referral','None','n/a','Ronald Espinosa','Pacita Tambong',NULL,NULL,NULL,10,10,0,0,338),
(339,'TR-20221311339','2022-11-13','11:12 am','Direct Referral','pacitatambong15@gmail.com','ADS2022-11-35-BVFY-8Xk0','Alona Mortel','Pacita Tambong',NULL,NULL,NULL,500,3020,0,0,339),
(340,'TR-20221311340','2022-11-13','11:12 am','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Alona Mortel','Pacita Tambong',NULL,NULL,NULL,10,11610,0,0,340),
(341,'TR-20221311341','2022-11-13','11:12 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Alona Mortel','Pacita Tambong',NULL,NULL,NULL,10,1460,0,0,341),
(342,'TR-20221311342','2022-11-13','11:12 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Alona Mortel','Pacita Tambong',NULL,NULL,NULL,10,980,0,0,342),
(343,'TR-20221311343','2022-11-13','11:12 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Alona Mortel','Pacita Tambong',NULL,NULL,NULL,10,1160,0,0,343),
(344,'TR-20221311344','2022-11-13','11:12 am','Indirect Referral','None','n/a','Alona Mortel','Pacita Tambong',NULL,NULL,NULL,10,10,0,0,344),
(345,'TR-20221311345','2022-11-13','11:15 am','Direct Referral','odaiski26@gmail.com','ADS2022-11-30-c9xF-Tpod','Rosalinda Esguerra','Rodalyn Ortega',NULL,NULL,NULL,500,2000,0,0,345),
(346,'TR-20221311346','2022-11-13','11:15 am','Indirect Referral','armil  Lumogdang','ADS2022-11-13-zPdl-i6SA','Rosalinda Esguerra','Rodalyn Ortega',NULL,NULL,NULL,10,11620,0,0,346),
(347,'TR-20221311347','2022-11-13','11:15 am','Indirect Referral','IT Tech   Support','ADS2022-11-11-hHaf-i7sC','Rosalinda Esguerra','Rodalyn Ortega',NULL,NULL,NULL,10,1470,0,0,347),
(348,'TR-20221311348','2022-11-13','11:15 am','Indirect Referral','ACSPT  BOSS','ADS2022-11-10-Q8t2-xiMD','Rosalinda Esguerra','Rodalyn Ortega',NULL,NULL,NULL,10,990,0,0,348),
(349,'TR-20221311349','2022-11-13','11:15 am','Indirect Referral','Direct  Sales','ADS2022-10-7','Rosalinda Esguerra','Rodalyn Ortega',NULL,NULL,NULL,10,1170,0,0,349),
(350,'TR-20221311350','2022-11-13','11:15 am','Indirect Referral','None','n/a','Rosalinda Esguerra','Rodalyn Ortega',NULL,NULL,NULL,10,10,0,0,350);
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

-- Dump completed on 2022-11-13 15:49:27
