-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2022 at 02:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arvieds2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(60) NOT NULL,
  `member_id` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `sponsor` varchar(100) NOT NULL,
  `sponsorName` varchar(65) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `contact_number` int(15) NOT NULL,
  `date` datetime NOT NULL,
  `access` varchar(8) NOT NULL,
  `permission` varchar(8) NOT NULL,
  `referralId` varchar(16) NOT NULL,
  `homeaddress` varchar(255) NOT NULL,
  `tin_acct` varchar(255) DEFAULT NULL,
  `sss_num` varchar(255) DEFAULT NULL,
  `number_basis` int(11) NOT NULL COMMENT 'for idnumber purposes only'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `member_id`, `first_name`, `last_name`, `sponsor`, `sponsorName`, `email_address`, `pass`, `contact_number`, `date`, `access`, `permission`, `referralId`, `homeaddress`, `tin_acct`, `sss_num`, `number_basis`) VALUES
(6, 'ADS22-10-6', 'Arvie', 'Admin', 'n/a', '', 'arvieadmin@gmail.com', '$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2', 2147483647, '2022-10-17 21:36:49', 'approved', 'administ', 'asd12-12345', '3 Verder, Tanza, Cavite', 'n/a', 'n/a', 6),
(41, 'ADS2022-10-7', 'One', 'Uno', 'n/a', '', 'one@gmail.com', '$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2', 955535367, '2022-10-17 21:36:49', 'approved', 'userist', '', '3 Verder, Tanza, Cavite', 'n/a', 'n/a', 7),
(55, 'ADS2022-10-8', 'Two', 'Dos', 'ADS2022-10-7', 'One  Uno', 'two@gmail.com', '$2y$10$bEFkhXL7GdUNgAijCNMKj.gFZ0PRQ9qcPA6LeOA42Fv3h32Ee/PsK', 2147483647, '2022-10-31 13:15:10', 'approved', 'userist', 'DI10-A4in-vZ8N', 'Palangue 2, Naic, Cavite ', '34563456', '34563456', 8),
(56, 'ADS2022-10-9', 'Three', 'Tres', 'ADS2022-10-8', 'Two  Dos', 'three@gmail.com', '$2y$10$MZkaTLZsvTRYECVZIDeTyOUuWliyWrhXtkb9Z/VL5z2ifIJg6k7g2', 2147483647, '2022-10-31 13:19:51', 'approved', 'userist', 'DI10-MPux-tmbU', 'Palangue 3', '9283972', '092387287', 9),
(57, 'ADS2022-10-10', 'Four', 'Kwatro', 'ADS2022-10-9', 'Three  Tres', 'four@gmail.com', '$2y$10$extJtjR0WS.OWRqnzrxqYepHXG/eeBKYkeMWneVQOhDNbBYvfY7PS', 2147483647, '2022-10-31 13:22:05', 'approved', 'userist', 'DI10-4D2v-pEDG', 'Naic', '6789', '09876', 10),
(58, 'ADS2022-10-11', 'Five', 'Sinko', 'ADS2022-10-10', 'Four  Kwatro', 'five@gmail.com', '$2y$10$oeFzdi1DpVvm6hxgdWA/ouDiC3f2pVOE9Y2F5g8B7d4vq2O2tb.nC', 2147483647, '2022-10-31 13:24:20', 'approved', 'userist', 'DI10-fgH4-zMA6', 'Naic', '69', '098', 11),
(59, 'ADS2022-10-12', 'Six', 'Sais', 'ADS2022-10-11', 'Five  Sinko', 'six@gmail.com', '$2y$10$GEEsHsCNk5YKqagRYNotWOs5BFGGyGXdAh1xZ2zXFAoieXLpj6HaC', 2147483647, '2022-10-31 13:26:06', 'approved', 'userist', 'DI10-brFW-Dulq', 'Tanza', '67890', '09876543', 12),
(60, 'ADS2022-10-13', 'Seven', 'Syete', 'ADS2022-10-12', 'Six  Sais', 'seven@gmail.com', '$2y$10$BUbrVrsNRooQ..fuuJQwEuTxjaqQ/b7gxhOOgdUc6uDSeZTf7RV3K', 2147483647, '2022-10-31 13:28:06', 'approved', 'userist', 'DI10-Alsu-zTk9', 'Tanza', '6767', '0987', 13),
(61, 'ADS2022-10-14', 'Eight', 'Otso', 'ADS2022-10-13', 'Seven  Syete', 'eight@gmail.com', '$2y$10$Ohu.RWoHLhQv/Ud4DCF31eunF8S.16VDu7ZMwVmS8gb2mvSn/9.Sa', 987654765, '2022-10-31 13:32:27', 'approved', 'userist', 'DI10-7PID-VzBt', 'Indang', '0987654', '0987654', 14),
(62, 'ADS2022-10-15', 'Nine', 'Nuebe', 'ADS2022-10-14', 'Eight  Otso', 'nine@gmail.com', '$2y$10$kSU2eMHdndfGZ8msPrY7au4KgD7TOn3/.1RFnb5asbLgT8FL9D676', 2147483647, '2022-10-31 13:34:00', 'approved', 'userist', 'DI10-crOT-zpEU', 'Kawit', '776555678', '0966788', 15),
(63, 'ADS2022-10-16', 'Ten', 'Dyis', 'ADS2022-10-15', 'Nine  Nuebe', 'ten@gmail.com', '$2y$10$Pk8lh4FKU0LJ/P4oVgdswe.0ccQ/YGlvaOir8VXM.Jd2hz.wGrNlC', 977157288, '2022-10-31 13:37:34', 'approved', 'userist', 'DI10-wPtK-PlNk', 'Gentri', '8765', '98765', 16),
(67, 'ADS2022-10-17', 'Aaa', 'Aaa', 'ADS2022-10-7', 'One  Uno', 'aaa@gmail.com', '$2y$10$rvqXMElO/TCfbXGmq7gKvuXxxdGvJoiyUZBnnmRVBKpd/BgItOhtG', 2147483647, '2022-10-31 15:18:55', 'approved', 'userist', 'DI10-oqra-7Kib', 'Palangue A', '765', '9765', 17),
(68, 'ADS2022-10-18', 'Bbb', 'Bbb', 'ADS2022-10-8', 'Two  Dos', 'bbb@gmail.com', '$2y$10$vh.tt3ILjlWUGCuj2LAEDeek/4ILnpOXk2N0V79YlTPIpQSUI44R.', 2147483647, '2022-10-31 18:16:19', 'approved', 'userist', 'DI10-Tw47-01vQ', 'Tanza', '807978776', '986', 18),
(69, 'ADS2022-10-19', 'Ccc', 'Ccc', 'ADS2022-10-9', 'Three  Tres', 'ccc@gmail.com', '$2y$10$sZZPWkCysryA02ogqeqyQOPn6GOIlpKCuoCadoAI2jx3P5jr2AO6u', 2147483647, '2022-10-31 19:16:58', 'approved', 'userist', 'DI10-tpJX-x5ch', 'Palangue 2', '987', '987', 19),
(70, 'ADS2022-11-20', 'Cedrick James', 'Orozo', 'ADS2022-10-7', 'One  Uno', 'cedrickorozo@gmail.com', '$2y$10$VW.EiheBENh1M0oH9jQTE.ZEzyybIHoZpA9K3gZzRBKC4kwQVXt4e', 2147483647, '2022-11-04 21:16:01', 'approved', 'userist', 'DI10-UGFR-6sYP', '0233 Palangue 2 Naic Cavite', '1234123', '234341234', 20),
(71, 'ADS2022-11-21', 'Crisostomo', 'Ibarra', 'ADS2022-10-7', 'One  Uno', 'crisostomo@gmail.com', '$2y$10$dxnXGARCOz2F2xn.wHrCIemFWG3Q213ytNXFqVL2NUgHndd/5mCLK', 912881928, '2022-11-04 21:19:42', 'approved', 'userist', 'DI10-v9Hj-AyUP', 'Las Filipinas', '0293840', '2394571', 21),
(72, 'ADS2022-11-22', 'Maria', 'Clara', 'ADS2022-10-7', 'One  Uno', 'mariaclara@gmail.com', '$2y$10$mbgfu53Z2RkXVvLMWG35W.WcnEC9foi3Vce1vnYAtgBYUf02ti64S', 912881928, '2022-11-04 21:32:01', 'approved', 'userist', 'DI11-9XtG-ahd2', 'Las Filipinas', '234234', '234234', 22),
(73, 'ADS2022-11-23', 'asdas asda', 'asas', 'ADS2022-10-7', '  ', 'asd@gmail.com', '$2y$10$6iE/mb/nVp2sfpWwM99X4.USlv3j0p1VHoENgTdw1p6YDMTgG7qV.', 0, '2022-11-06 16:13:44', 'approved', 'userist', 'DI11-xDng-CgOk', 'asdasd', 'asdas', 'asd', 23),
(74, 'ADS2022-11-24', 'samp samp', 'samp', 'ADS2022-10-7', 'One  Uno', 'samp@gmail.com', '$2y$10$gFFg4HAqSA71lwYTmH7CjOt5V3Vw/.1wjETyl5BRWHrelh1SUIagq', 998765477, '2022-11-06 16:25:15', 'approved', 'userist', 'DI11-rCVc-rfhQ', 'samp', 'asd', 'asd', 24);

-- --------------------------------------------------------

--
-- Table structure for table `generated_code`
--

CREATE TABLE `generated_code` (
  `code_id` int(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `userNameOfSponsor` varchar(100) NOT NULL,
  `userIdOfSponsor` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `validity` date NOT NULL,
  `date_created` date NOT NULL,
  `userNameOfCodeOwner` varchar(100) NOT NULL,
  `userIdOfCodeOwner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE `invites` (
  `invitesID` int(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idOfInvite` int(30) NOT NULL,
  `invitee` varchar(20) NOT NULL,
  `inviteeID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invites`
--

INSERT INTO `invites` (`invitesID`, `name`, `idOfInvite`, `invitee`, `inviteeID`) VALUES
(32, 'James Orozo', 13, 'Kevin Roy marero', 11),
(41, 'Cedrick James Orozo', 12, 'James Orozo', 13),
(43, 'q e', 17, 'James Orozo', 13),
(44, 'ChrisostomoIbarra', 0, 'Kevin Roy Marero', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payout_request`
--

CREATE TABLE `payout_request` (
  `payout_request_id` int(10) NOT NULL,
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
  `receipt` varchar(100) NOT NULL,
  `date_released` varchar(15) NOT NULL,
  `time_released` varchar(15) NOT NULL,
  `transactionIdBasis` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payout_request`
--

INSERT INTO `payout_request` (`payout_request_id`, `date`, `transaction_id`, `member_id`, `member_name`, `amount`, `mode_of_payment`, `account_number`, `account_name`, `bank_branch`, `status`, `receipt`, `date_released`, `time_released`, `transactionIdBasis`) VALUES
(6, '2022-10-31', 'PR-202231101', 'ADS2022-10-7', 'One Uno', '1000', 'Gcash', '', '', '', 'released', '../images/81474d6c951d85d569edd1bea61e83cb.jpeg', '2022-10-31', '03:20 pm', 1),
(7, '2022-10-31', 'PR-202231102', 'ADS2022-10-8', 'Two Dos', '1000', 'Gcash', '', '', '', 'released', '../images/9cb210f1aca77cafec32fca1a4be0403.jpeg', '2022-10-31', '06:17 pm', 2),
(9, '2022-10-31', 'PR-202231104', 'ADS2022-10-9', 'Three Tres', '1000', 'BPI', '7342382739871', 'Cedrick James Orozo', 'BPI Naic', 'released', '../images/e6b67c0731e6953809c445004a35cdec.jpeg', '2022-10-31', '07:41 pm', 4),
(10, '2022-11-04', 'PR-202204115', 'ADS2022-10-7', 'One Uno', '1000', 'Gcash', '09555445345', 'Cedrick James Orozo', '', 'released', '../images/4fbcddc50c8588684afdb05c280a7dff.jpeg', '2022-11-04', '10:46 pm', 5);

-- --------------------------------------------------------

--
-- Table structure for table `points_report`
--

CREATE TABLE `points_report` (
  `points_report_id` int(100) NOT NULL,
  `member_id` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `points_earned` varchar(10) NOT NULL,
  `unclaimable` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `points_report`
--

INSERT INTO `points_report` (`points_report_id`, `member_id`, `date`, `time`, `month`, `year`, `points_earned`, `unclaimable`) VALUES
(16, 'ADS2022-10-7', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '90'),
(17, 'ADS2022-10-8', '2022-11-04', '12:18 pm', 'Nov', '2022', '1', '0'),
(18, 'ADS2022-10-9', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '40'),
(19, 'ADS2022-10-10', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '40'),
(20, 'ADS2022-10-11', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '50'),
(21, 'ADS2022-10-12', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '60'),
(22, 'ADS2022-10-13', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '60'),
(23, 'ADS2022-10-14', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '60'),
(24, 'ADS2022-10-15', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '60'),
(25, 'ADS2022-10-16', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '100'),
(26, 'ADS2022-10-17', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '0'),
(27, 'ADS2022-10-18', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '0'),
(28, 'ADS2022-10-19', '2022-11-04', '12:18 pm', 'Nov', '2022', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `rebatesamount`
--

CREATE TABLE `rebatesamount` (
  `id` int(10) NOT NULL,
  `rebatesA` int(10) NOT NULL,
  `rebatesB` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rebatesamount`
--

INSERT INTO `rebatesamount` (`id`, `rebatesA`, `rebatesB`) VALUES
(1, 70, 80),
(2, 30, 20),
(3, 30, 30),
(4, 30, 30),
(5, 30, 20),
(6, 30, 20),
(7, 20, 20),
(8, 20, 20),
(9, 20, 10),
(10, 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `rebates_points`
--

CREATE TABLE `rebates_points` (
  `rebates_points_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `pointsEarned` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rebates_points`
--

INSERT INTO `rebates_points` (`rebates_points_id`, `user_id`, `email_address`, `pointsEarned`) VALUES
(4, 'ADS2022-10-7', 'one@gmail.com', 1),
(10, 'ADS2022-10-8', 'two@gmail.com', 0),
(11, 'ADS2022-10-9', 'three@gmail.com', 0),
(12, 'ADS2022-10-10', 'four@gmail.com', 1),
(13, 'ADS2022-10-11', 'five@gmail.com', 0),
(14, 'ADS2022-10-12', 'six@gmail.com', 0),
(15, 'ADS2022-10-13', 'seven@gmail.com', 1),
(16, 'ADS2022-10-14', 'eight@gmail.com', 1),
(17, 'ADS2022-10-15', 'nine@gmail.com', 1),
(18, 'ADS2022-10-16', 'ten@gmail.com', 1),
(22, 'ADS2022-10-17', 'aaa@gmail.com', 0),
(23, 'ADS2022-10-18', 'bbb@gmail.com', 0),
(24, 'ADS2022-10-19', 'ccc@gmail.com', 0),
(25, 'ADS2022-11-20', 'cedrickorozo@gmail.com', 0),
(26, 'ADS2022-11-21', 'crisostomo@gmail.com', 1),
(27, 'ADS2022-11-22', 'mariaclara@gmail.com', 0),
(28, 'ADS2022-11-23', 'asd@gmail.com', 0),
(29, 'ADS2022-11-24', 'samp@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `referral_codes`
--

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
  `transaction_id` int(255) NOT NULL,
  `codetype` varchar(2) NOT NULL,
  `counter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral_codes`
--

INSERT INTO `referral_codes` (`gen_date`, `referrer`, `transfer_date`, `referee`, `userNameOfCodeOwner`, `transact_date`, `status`, `ref_code`, `generation_batch`, `transaction_id`, `codetype`, `counter`) VALUES
('2022-10-31 13:13:13', 'waiting', '2022-10-31 13:13:13', 'ADS2022-10-8', '', '2022-10-31 13:13:13', 'used', 'DI10-A4in-vZ8N', 'AT10-75zVZcIkEYM6NKhm', 112, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-9', '', '2022-10-31 13:13:14', 'used', 'DI10-MPux-tmbU', 'AT10-75zVZcIkEYM6NKhm', 113, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-10', '', '2022-10-31 13:13:14', 'used', 'DI10-4D2v-pEDG', 'AT10-75zVZcIkEYM6NKhm', 114, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-11', '', '2022-10-31 13:13:14', 'used', 'DI10-fgH4-zMA6', 'AT10-75zVZcIkEYM6NKhm', 115, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-12', '', '2022-10-31 13:13:14', 'used', 'DI10-brFW-Dulq', 'AT10-75zVZcIkEYM6NKhm', 116, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-13', '', '2022-10-31 13:13:14', 'used', 'DI10-Alsu-zTk9', 'AT10-75zVZcIkEYM6NKhm', 117, 'DI', '10'),
('2022-10-31 13:13:15', 'waiting', '2022-10-31 13:13:15', 'ADS2022-10-14', '', '2022-10-31 13:13:15', 'used', 'DI10-7PID-VzBt', 'AT10-75zVZcIkEYM6NKhm', 118, 'DI', '10'),
('2022-10-31 13:13:15', 'waiting', '2022-10-31 13:13:15', 'ADS2022-10-15', '', '2022-10-31 13:13:15', 'used', 'DI10-crOT-zpEU', 'AT10-75zVZcIkEYM6NKhm', 119, 'DI', '10'),
('2022-10-31 13:13:15', 'waiting', '2022-10-31 13:13:15', 'ADS2022-10-16', '', '2022-10-31 13:13:15', 'used', 'DI10-wPtK-PlNk', 'AT10-75zVZcIkEYM6NKhm', 120, 'DI', '10'),
('2022-10-31 13:13:15', 'waiting', '2022-10-31 13:13:15', 'ADS2022-10-17', '', '2022-10-31 13:13:15', 'used', 'DI10-Q9wj-xfs7', 'AT10-75zVZcIkEYM6NKhm', 121, 'DI', '10'),
('2022-10-31 13:42:00', 'waiting', '2022-10-31 13:42:00', 'ADS2022-10-18', '', '2022-10-31 13:42:00', 'used', 'DI10-WPdq-9Wwy', 'AT10-FOz9bIY1aVWfEprH', 122, 'DI', '2'),
('2022-10-31 13:42:00', 'waiting', '2022-10-31 13:42:00', 'ADS2022-10-19', '', '2022-10-31 13:42:00', 'used', 'DI10-kqsy-rLAb', 'AT10-FOz9bIY1aVWfEprH', 123, 'DI', '2'),
('2022-10-31 14:52:21', 'waiting', '2022-10-31 14:52:21', 'ADS2022-10-17', 'eleven@gmail.com', '2022-10-31 14:52:21', 'used', 'RA10-F1gX-8OBQ', 'AT10-8OT3e7K6du1Qv0Mz', 124, 'RA', '5'),
('2022-10-31 14:52:21', 'waiting', '2022-10-31 14:52:21', 'ADS2022-10-18', 'twelve@gmail.com', '2022-10-31 14:52:21', 'used', 'RA10-A6jy-c5zm', 'AT10-8OT3e7K6du1Qv0Mz', 125, 'RA', '5'),
('2022-10-31 14:52:21', 'waiting', '2022-10-31 14:52:21', 'ADS2022-10-8', 'two@gmail.com', '2022-10-31 14:52:21', 'used', 'RA10-bzqy-azpJ', 'AT10-8OT3e7K6du1Qv0Mz', 126, 'RA', '5'),
('2022-10-31 14:52:22', 'waiting', '2022-10-31 14:52:22', 'ADS2022-11-21', 'crisostomo@gmail.com', '2022-10-31 14:52:22', 'to_redeem', 'RA10-Tz8I-Ilk0', 'AT10-8OT3e7K6du1Qv0Mz', 127, 'RA', '5'),
('2022-10-31 14:52:22', 'waiting', '2022-10-31 14:52:22', 'ADS2022-10-7', 'one@gmail.com', '2022-10-31 14:52:22', 'used', 'RA10-ekHP-Cazq', 'AT10-8OT3e7K6du1Qv0Mz', 128, 'RA', '5'),
('2022-10-31 15:11:10', 'waiting', '2022-10-31 15:11:10', 'ADS2022-10-17', '', '2022-10-31 15:11:10', 'used', 'DI10-oqra-7Kib', 'AT10-EMBfopuTgKWOd2Yc', 129, 'DI', '5'),
('2022-10-31 15:11:10', 'waiting', '2022-10-31 15:11:10', 'ADS2022-10-18', '', '2022-10-31 15:11:10', 'used', 'DI10-Tw47-01vQ', 'AT10-EMBfopuTgKWOd2Yc', 130, 'DI', '5'),
('2022-10-31 15:11:11', 'waiting', '2022-10-31 15:11:11', 'ADS2022-10-19', '', '2022-10-31 15:11:11', 'used', 'DI10-tpJX-x5ch', 'AT10-EMBfopuTgKWOd2Yc', 131, 'DI', '5'),
('2022-10-31 15:11:11', 'waiting', '2022-10-31 15:11:11', 'ADS2022-11-20', '', '2022-10-31 15:11:11', 'used', 'DI10-UGFR-6sYP', 'AT10-EMBfopuTgKWOd2Yc', 132, 'DI', '5'),
('2022-10-31 15:11:11', 'waiting', '2022-10-31 15:11:11', 'ADS2022-11-21', '', '2022-10-31 15:11:11', 'used', 'DI10-v9Hj-AyUP', 'AT10-EMBfopuTgKWOd2Yc', 133, 'DI', '5'),
('2022-11-04 21:30:46', 'waiting', '2022-11-04 21:30:46', 'ADS2022-11-22', '', '2022-11-04 21:30:46', 'used', 'DI11-9XtG-ahd2', 'AT11-tGyKvIhUuDdWwXT0', 134, 'DI', '5'),
('2022-11-04 21:30:46', 'waiting', '2022-11-04 21:30:46', NULL, '', '2022-11-04 21:30:46', 'to_redeem', 'DI11-QS9P-GdKD', 'AT11-tGyKvIhUuDdWwXT0', 135, 'DI', '5'),
('2022-11-04 21:30:46', 'waiting', '2022-11-04 21:30:46', NULL, '', '2022-11-04 21:30:46', 'to_redeem', 'DI11-uXNs-qaAO', 'AT11-tGyKvIhUuDdWwXT0', 136, 'DI', '5'),
('2022-11-04 21:30:47', 'waiting', '2022-11-04 21:30:47', 'ADS2022-11-24', '', '2022-11-04 21:30:47', 'used', 'DI11-rCVc-rfhQ', 'AT11-tGyKvIhUuDdWwXT0', 137, 'DI', '5'),
('2022-11-04 21:30:47', 'waiting', '2022-11-04 21:30:47', 'ADS2022-11-23', '', '2022-11-04 21:30:47', 'used', 'DI11-xDng-CgOk', 'AT11-tGyKvIhUuDdWwXT0', 138, 'DI', '5'),
('2022-11-04 21:50:03', 'waiting', '2022-11-04 21:50:03', 'ADS2022-10-16', 'ten@gmail.com', '2022-11-04 21:50:03', 'used', 'RA11-ti6G-38lf', 'AT11-GxMcnOaT6DCtUlWk', 139, 'RA', '10'),
('2022-11-04 21:50:03', 'waiting', '2022-11-04 21:50:03', 'ADS2022-10-15', 'nine@gmail.com', '2022-11-04 21:50:03', 'used', 'RA11-kYt6-vzFB', 'AT11-GxMcnOaT6DCtUlWk', 140, 'RA', '10'),
('2022-11-04 21:50:03', 'waiting', '2022-11-04 21:50:03', 'ADS2022-10-14', 'eight@gmail.com', '2022-11-04 21:50:03', 'used', 'RA11-9Of1-A6JT', 'AT11-GxMcnOaT6DCtUlWk', 141, 'RA', '10'),
('2022-11-04 21:50:04', 'waiting', '2022-11-04 21:50:04', 'ADS2022-10-13', 'seven@gmail.com', '2022-11-04 21:50:04', 'used', 'RA11-bKSw-tebL', 'AT11-GxMcnOaT6DCtUlWk', 142, 'RA', '10'),
('2022-11-04 21:50:04', 'waiting', '2022-11-04 21:50:04', NULL, '', '2022-11-04 21:50:04', 'to_redeem', 'RA11-lqw6-fSY0', 'AT11-GxMcnOaT6DCtUlWk', 143, 'RA', '10'),
('2022-11-04 21:50:04', 'waiting', '2022-11-04 21:50:04', NULL, '', '2022-11-04 21:50:04', 'to_redeem', 'RA11-2bDI-xJCl', 'AT11-GxMcnOaT6DCtUlWk', 144, 'RA', '10'),
('2022-11-04 21:50:04', 'waiting', '2022-11-04 21:50:04', 'ADS2022-10-10', 'four@gmail.com', '2022-11-04 21:50:04', 'used', 'RA11-X3Uj-QTMc', 'AT11-GxMcnOaT6DCtUlWk', 145, 'RA', '10'),
('2022-11-04 21:50:04', 'waiting', '2022-11-04 21:50:04', NULL, '', '2022-11-04 21:50:04', 'to_redeem', 'RA11-BXu7-iGfN', 'AT11-GxMcnOaT6DCtUlWk', 146, 'RA', '10'),
('2022-11-04 21:50:04', 'waiting', '2022-11-04 21:50:04', NULL, '', '2022-11-04 21:50:04', 'to_redeem', 'RA11-Kn5k-kPfn', 'AT11-GxMcnOaT6DCtUlWk', 147, 'RA', '10'),
('2022-11-04 21:50:05', 'waiting', '2022-11-04 21:50:05', NULL, '', '2022-11-04 21:50:05', 'to_redeem', 'RA11-yJeP-x1KB', 'AT11-GxMcnOaT6DCtUlWk', 148, 'RA', '10');

-- --------------------------------------------------------

--
-- Table structure for table `totalbalance`
--

CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL,
  `userID` varchar(30) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL,
  `unclaimable` int(50) NOT NULL,
  `totalIncome` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `totalbalance`
--

INSERT INTO `totalbalance` (`totalBalanceId`, `userID`, `userName`, `totalBalance`, `unclaimable`, `totalIncome`) VALUES
(77, 'ADS2022-10-7', 'one@gmail.com', 1300, 0, 2000),
(86, 'ADS2022-10-8', 'two@gmail.com', 140, 130, 1000),
(87, 'ADS2022-10-9', 'three@gmail.com', 90, 180, 1000),
(88, 'ADS2022-10-10', 'four@gmail.com', 700, 0, 0),
(89, 'ADS2022-10-11', 'five@gmail.com', 570, 120, 0),
(90, 'ADS2022-10-12', 'six@gmail.com', 560, 160, 0),
(91, 'ADS2022-10-13', 'seven@gmail.com', 680, 0, 0),
(92, 'ADS2022-10-14', 'eight@gmail.com', 640, 0, 0),
(93, 'ADS2022-10-15', 'nine@gmail.com', 600, 0, 0),
(94, 'ADS2022-10-16', 'ten@gmail.com', 520, 0, 0),
(98, 'ADS2022-10-17', 'aaa@gmail.com', 0, 0, 0),
(99, 'ADS2022-10-18', 'bbb@gmail.com', 0, 0, 0),
(100, 'ADS2022-10-19', 'ccc@gmail.com', 0, 0, 0),
(101, 'ADS2022-11-20', 'cedrickorozo@gmail.com', 0, 0, 0),
(102, 'ADS2022-11-21', 'crisostomo@gmail.com', 0, 0, 0),
(103, 'ADS2022-11-22', 'mariaclara@gmail.com', 0, 0, 0),
(104, 'ADS2022-11-23', 'asd@gmail.com', 0, 0, 0),
(105, 'ADS2022-11-24', 'samp@gmail.com', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(50) NOT NULL,
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
  `transactionIdBasis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `transaction2ndId`, `Date`, `time`, `type`, `userName`, `userId`, `inviteName`, `inviteeName`, `packageType`, `codeOwner`, `codeOwnerId`, `addedAmount`, `TotalBalance`, `addedPoints`, `totalPoints`, `transactionIdBasis`) VALUES
(219, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'Two Dos', 'One Uno', '', '', '', 500, 500, 0, 0, 0),
(220, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Two Dos', 'One Uno', '', '', '', 10, 10, 0, 0, 0),
(221, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'two@gmail.com', 'ADS2022-10-8', 'Three Tres', 'Two Dos', '', '', '', 500, 500, 0, 0, 0),
(222, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Three Tres', 'Two Dos', '', '', '', 10, 510, 0, 0, 0),
(223, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Three Tres', 'Two Dos', '', '', '', 10, 10, 0, 0, 0),
(224, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'three@gmail.com', 'ADS2022-10-9', 'Four Kwatro', 'Three Tres', '', '', '', 500, 500, 0, 0, 0),
(225, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Four Kwatro', 'Three Tres', '', '', '', 10, 510, 0, 0, 0),
(226, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Four Kwatro', 'Three Tres', '', '', '', 10, 520, 0, 0, 0),
(227, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Four Kwatro', 'Three Tres', '', '', '', 10, 10, 0, 0, 0),
(228, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'four@gmail.com', 'ADS2022-10-10', 'Five Sinko', 'Four Kwatro', '', '', '', 500, 500, 0, 0, 0),
(229, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Five Sinko', 'Four Kwatro', '', '', '', 10, 510, 0, 0, 0),
(230, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Five Sinko', 'Four Kwatro', '', '', '', 10, 520, 0, 0, 0),
(231, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Five Sinko', 'Four Kwatro', '', '', '', 10, 530, 0, 0, 0),
(232, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Five Sinko', 'Four Kwatro', '', '', '', 10, 10, 0, 0, 0),
(233, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'five@gmail.com', 'ADS2022-10-11', 'Six Sais', 'Five Sinko', '', '', '', 500, 500, 0, 0, 0),
(234, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Six Sais', 'Five Sinko', '', '', '', 10, 510, 0, 0, 0),
(235, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Six Sais', 'Five Sinko', '', '', '', 10, 520, 0, 0, 0),
(236, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Six Sais', 'Five Sinko', '', '', '', 10, 530, 0, 0, 0),
(237, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Six Sais', 'Five Sinko', '', '', '', 10, 540, 0, 0, 0),
(238, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Six Sais', 'Five Sinko', '', '', '', 10, 10, 0, 0, 0),
(239, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'six@gmail.com', 'ADS2022-10-12', 'Seven Syete', 'Six Sais', '', '', '', 500, 500, 0, 0, 0),
(240, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Five  Sinko', 'ADS2022-10-11', 'Seven Syete', 'Six Sais', '', '', '', 10, 510, 0, 0, 0),
(241, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Seven Syete', 'Six Sais', '', '', '', 10, 520, 0, 0, 0),
(242, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Seven Syete', 'Six Sais', '', '', '', 10, 530, 0, 0, 0),
(243, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Seven Syete', 'Six Sais', '', '', '', 10, 540, 0, 0, 0),
(244, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Seven Syete', 'Six Sais', '', '', '', 10, 550, 0, 0, 0),
(245, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Seven Syete', 'Six Sais', '', '', '', 10, 10, 0, 0, 0),
(246, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'seven@gmail.com', 'ADS2022-10-13', 'Eight Otso', 'Seven Syete', '', '', '', 500, 500, 0, 0, 0),
(247, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Six  Sais', 'ADS2022-10-12', 'Eight Otso', 'Seven Syete', '', '', '', 10, 510, 0, 0, 0),
(248, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Five  Sinko', 'ADS2022-10-11', 'Eight Otso', 'Seven Syete', '', '', '', 10, 520, 0, 0, 0),
(249, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Eight Otso', 'Seven Syete', '', '', '', 10, 530, 0, 0, 0),
(250, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Eight Otso', 'Seven Syete', '', '', '', 10, 540, 0, 0, 0),
(251, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Eight Otso', 'Seven Syete', '', '', '', 10, 550, 0, 0, 0),
(252, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Eight Otso', 'Seven Syete', '', '', '', 10, 560, 0, 0, 0),
(253, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Eight Otso', 'Seven Syete', '', '', '', 10, 10, 0, 0, 0),
(254, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'eight@gmail.com', 'ADS2022-10-14', 'Nine Nuebe', 'Eight Otso', '', '', '', 500, 500, 0, 0, 0),
(255, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Seven  Syete', 'ADS2022-10-13', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 510, 0, 0, 0),
(256, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Six  Sais', 'ADS2022-10-12', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 520, 0, 0, 0),
(257, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Five  Sinko', 'ADS2022-10-11', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 530, 0, 0, 0),
(258, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 540, 0, 0, 0),
(259, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 550, 0, 0, 0),
(260, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 560, 0, 0, 0),
(261, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 570, 0, 0, 0),
(262, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 10, 0, 0, 0),
(263, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'nine@gmail.com', 'ADS2022-10-15', 'Ten Dyis', 'Nine Nuebe', '', '', '', 500, 500, 0, 0, 0),
(264, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Eight  Otso', 'ADS2022-10-14', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 510, 0, 0, 0),
(265, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Seven  Syete', 'ADS2022-10-13', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 520, 0, 0, 0),
(266, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Six  Sais', 'ADS2022-10-12', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 530, 0, 0, 0),
(267, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Five  Sinko', 'ADS2022-10-11', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 540, 0, 0, 0),
(268, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 550, 0, 0, 0),
(269, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 560, 0, 0, 0),
(270, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 570, 0, 0, 0),
(271, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 580, 0, 0, 0),
(272, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 10, 0, 0, 0),
(327, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Claimed Rebates', 'two@gmail.com', 'ADS2022-10-8', '', '', '', '', '', 40, 630, 0, 0, 0),
(328, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Points', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', '', '', 0, 0, 1, 1, 0),
(329, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Unclaimable Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'two@gmail.com', 'ADS2022-10-8', 70, 90, 0, 0, 0),
(330, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'two@gmail.com', 'ADS2022-10-8', 30, 30, 0, 0, 0),
(331, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'Aaa Aaa', 'One Uno', '', '', '', 500, 1090, 0, 0, 0),
(332, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Aaa Aaa', 'One Uno', '', '', '', 10, 10, 0, 0, 0),
(333, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Withdrawal', '', 'ADS2022-10-7', '', '', '', '', '', 1000, 90, 0, 0, 0),
(334, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'two@gmail.com', 'ADS2022-10-8', 'Bbb Bbb', 'Two Dos', '', '', '', 500, 1130, 0, 0, 0),
(335, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Bbb Bbb', 'Two Dos', '', '', '', 10, 100, 0, 0, 0),
(336, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Bbb Bbb', 'Two Dos', '', '', '', 10, 10, 0, 0, 0),
(337, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Withdrawal', '', 'ADS2022-10-8', '', '', '', '', '', 1000, 130, 0, 0, 0),
(338, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Direct Referral', 'three@gmail.com', 'ADS2022-10-9', 'Ccc Ccc', 'Three Tres', '', '', '', 500, 1090, 0, 0, 0),
(339, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Ccc Ccc', 'Three Tres', '', '', '', 10, 140, 0, 0, 0),
(340, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Ccc Ccc', 'Three Tres', '', '', '', 10, 110, 0, 0, 0),
(341, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Ccc Ccc', 'Three Tres', '', '', '', 10, 10, 0, 0, 0),
(342, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Withdrawal', '', 'ADS2022-10-9', '', '', '', '', '', 1000, 90, 0, 0, 70),
(343, 'TR-2022041171', '2022-11-04', '09:16 pm', 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'Cedrick James Orozo', 'One Uno', '', '', '', 500, 610, 0, 0, 0),
(344, 'TR-20220411100', '2022-11-04', '10:20 pm', 'Indirect Referral', '', 'n/a', 'Cedrick James Orozo', 'One Uno', '', '', '', 10, 10, 0, 0, 0),
(345, 'TR-2022041171', '2022-11-04', '09:19 pm', 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'Crisostomo Ibarra', 'One Uno', '', '', '', 500, 1110, 0, 0, 0),
(346, 'TR-2022041171', '2022-11-04', '09:19 pm', 'Indirect Referral', '', 'n/a', 'Crisostomo Ibarra', 'One Uno', '', '', '', 10, 10, 0, 0, 0),
(347, 'TR-2022041171', '2022-11-04', '09:32 pm', 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'Maria Clara', 'One Uno', '', '', '', 500, 1610, 0, 0, 71),
(348, 'TR-2022041172', '2022-11-04', '09:32 pm', 'Indirect Referral', '', 'n/a', 'Maria Clara', 'One Uno', '', '', '', 10, 10, 0, 0, 72),
(349, 'TR-2022041173', '2022-11-04', '09:34 pm', 'Claimed Rebates', 'crisostomo@gmail.com', 'ADS2022-11-21', '', '', '', '', '', 0, 0, 0, 0, 73),
(350, 'TR-2022041174', '2022-11-04', '09:34 pm', 'Points', 'crisostomo@gmail.com', 'ADS2022-11-21', '', '', 'RA', '', '', 0, 0, 1, 1, 74),
(351, 'TR-2022041175', '2022-11-04', '09:34 pm', 'Unclaimable Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'crisostomo@gmail.com', 'ADS2022-11-21', 70, 70, 0, 0, 75),
(352, 'TR-2022041176', '2022-11-04', '09:34 pm', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'crisostomo@gmail.com', 'ADS2022-11-21', 30, 30, 0, 0, 76),
(353, 'TR-2022041177', '2022-11-04', '09:48 pm', 'Claimed Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', '', '', '', 70, 1680, 0, 0, 77),
(354, 'TR-2022041178', '2022-11-04', '09:48 pm', 'Points', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', '', '', 0, 0, 1, 1, 78),
(355, 'TR-2022041179', '2022-11-04', '09:48 pm', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'one@gmail.com', 'ADS2022-10-7', 70, 70, 0, 0, 79),
(356, 'TR-2022041180', '2022-11-04', '09:50 pm', 'Claimed Rebates', 'ten@gmail.com', 'ADS2022-10-16', '', '', '', '', '', 0, 520, 0, 0, 80),
(357, 'TR-2022041181', '2022-11-04', '09:50 pm', 'Points', 'ten@gmail.com', 'ADS2022-10-16', '', '', 'RA', '', '', 0, 0, 1, 1, 81),
(358, 'TR-2022041182', '2022-11-04', '09:50 pm', 'Unclaimable Rebates', 'nine@gmail.com', 'ADS2022-10-15', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 70, 70, 0, 0, 82),
(359, 'TR-2022041183', '2022-11-04', '09:50 pm', 'Unclaimable Rebates', 'eight@gmail.com', 'ADS2022-10-14', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 30, 30, 0, 0, 83),
(360, 'TR-2022041184', '2022-11-04', '09:50 pm', 'Unclaimable Rebates', 'seven@gmail.com', 'ADS2022-10-13', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 30, 30, 0, 0, 84),
(361, 'TR-2022041185', '2022-11-04', '09:50 pm', 'Unclaimable Rebates', 'six@gmail.com', 'ADS2022-10-12', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 30, 30, 0, 0, 85),
(362, 'TR-2022041186', '2022-11-04', '09:50 pm', 'Unclaimable Rebates', 'five@gmail.com', 'ADS2022-10-11', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 30, 30, 0, 0, 86),
(363, 'TR-2022041187', '2022-11-04', '09:50 pm', 'Unclaimable Rebates', 'four@gmail.com', 'ADS2022-10-10', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 30, 30, 0, 0, 87),
(364, 'TR-2022041188', '2022-11-04', '09:50 pm', 'Unclaimable Rebates', 'three@gmail.com', 'ADS2022-10-9', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 20, 20, 0, 0, 88),
(365, 'TR-2022041189', '2022-11-04', '09:50 pm', 'Unclaimable Rebates', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 20, 20, 0, 0, 89),
(366, 'TR-2022041190', '2022-11-04', '09:50 pm', 'Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 20, 1700, 0, 0, 90),
(367, 'TR-2022041191', '2022-11-04', '09:50 pm', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'ten@gmail.com', 'ADS2022-10-16', 20, 20, 0, 0, 91),
(368, 'TR-2022041192', '2022-11-04', '09:51 pm', 'Claimed Rebates', 'nine@gmail.com', 'ADS2022-10-15', '', '', '', '', '', 70, 600, 0, 0, 92),
(369, 'TR-2022041193', '2022-11-04', '09:51 pm', 'Points', 'nine@gmail.com', 'ADS2022-10-15', '', '', 'RA', '', '', 0, 0, 1, 1, 93),
(370, 'TR-2022041194', '2022-11-04', '09:51 pm', 'Unclaimable Rebates', 'eight@gmail.com', 'ADS2022-10-14', '', '', 'RA', 'nine@gmail.com', 'ADS2022-10-15', 70, 100, 0, 0, 94),
(371, 'TR-2022041195', '2022-11-04', '09:51 pm', 'Unclaimable Rebates', 'seven@gmail.com', 'ADS2022-10-13', '', '', 'RA', 'nine@gmail.com', 'ADS2022-10-15', 30, 60, 0, 0, 95),
(372, 'TR-2022041196', '2022-11-04', '09:51 pm', 'Unclaimable Rebates', 'six@gmail.com', 'ADS2022-10-12', '', '', 'RA', 'nine@gmail.com', 'ADS2022-10-15', 30, 60, 0, 0, 96),
(373, 'TR-2022041197', '2022-11-04', '09:51 pm', 'Unclaimable Rebates', 'five@gmail.com', 'ADS2022-10-11', '', '', 'RA', 'nine@gmail.com', 'ADS2022-10-15', 30, 60, 0, 0, 97),
(374, 'TR-2022041198', '2022-11-04', '09:51 pm', 'Unclaimable Rebates', 'four@gmail.com', 'ADS2022-10-10', '', '', 'RA', 'nine@gmail.com', 'ADS2022-10-15', 30, 60, 0, 0, 98),
(375, 'TR-2022041199', '2022-11-04', '09:51 pm', 'Unclaimable Rebates', 'three@gmail.com', 'ADS2022-10-9', '', '', 'RA', 'nine@gmail.com', 'ADS2022-10-15', 30, 50, 0, 0, 99),
(376, 'TR-20220411100', '2022-11-04', '09:51 pm', 'Unclaimable Rebates', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', 'nine@gmail.com', 'ADS2022-10-15', 20, 40, 0, 0, 100),
(377, 'TR-20220411101', '2022-11-04', '09:51 pm', 'Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'nine@gmail.com', 'ADS2022-10-15', 20, 1720, 0, 0, 101),
(378, 'TR-20220411102', '2022-11-04', '09:51 pm', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'nine@gmail.com', 'ADS2022-10-15', 20, 20, 0, 0, 102),
(379, 'TR-20220411103', '2022-11-04', '09:54 pm', 'Claimed Rebates', 'eight@gmail.com', 'ADS2022-10-14', '', '', '', '', '', 100, 640, 0, 0, 103),
(380, 'TR-20220411104', '2022-11-04', '09:54 pm', 'Points', 'eight@gmail.com', 'ADS2022-10-14', '', '', 'RA', '', '', 0, 0, 1, 1, 104),
(381, 'TR-20220411105', '2022-11-04', '09:54 pm', 'Unclaimable Rebates', 'seven@gmail.com', 'ADS2022-10-13', '', '', 'RA', 'eight@gmail.com', 'ADS2022-10-14', 70, 130, 0, 0, 105),
(382, 'TR-20220411106', '2022-11-04', '09:54 pm', 'Unclaimable Rebates', 'six@gmail.com', 'ADS2022-10-12', '', '', 'RA', 'eight@gmail.com', 'ADS2022-10-14', 30, 90, 0, 0, 106),
(383, 'TR-20220411107', '2022-11-04', '09:54 pm', 'Unclaimable Rebates', 'five@gmail.com', 'ADS2022-10-11', '', '', 'RA', 'eight@gmail.com', 'ADS2022-10-14', 30, 90, 0, 0, 107),
(384, 'TR-20220411108', '2022-11-04', '09:54 pm', 'Unclaimable Rebates', 'four@gmail.com', 'ADS2022-10-10', '', '', 'RA', 'eight@gmail.com', 'ADS2022-10-14', 30, 90, 0, 0, 108),
(385, 'TR-20220411109', '2022-11-04', '09:54 pm', 'Unclaimable Rebates', 'three@gmail.com', 'ADS2022-10-9', '', '', 'RA', 'eight@gmail.com', 'ADS2022-10-14', 30, 80, 0, 0, 109),
(386, 'TR-20220411110', '2022-11-04', '09:54 pm', 'Unclaimable Rebates', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', 'eight@gmail.com', 'ADS2022-10-14', 30, 70, 0, 0, 110),
(387, 'TR-20220411111', '2022-11-04', '09:54 pm', 'Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'eight@gmail.com', 'ADS2022-10-14', 20, 1740, 0, 0, 111),
(388, 'TR-20220411112', '2022-11-04', '09:54 pm', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'eight@gmail.com', 'ADS2022-10-14', 20, 20, 0, 0, 112),
(389, 'TR-20220411113', '2022-11-04', '09:56 pm', 'Claimed Rebates', 'seven@gmail.com', 'ADS2022-10-13', '', '', '', '', '', 130, 680, 0, 0, 113),
(390, 'TR-20220411114', '2022-11-04', '09:56 pm', 'Points', 'seven@gmail.com', 'ADS2022-10-13', '', '', 'RA', '', '', 0, 0, 1, 1, 114),
(391, 'TR-20220411115', '2022-11-04', '09:56 pm', 'Unclaimable Rebates', 'six@gmail.com', 'ADS2022-10-12', '', '', 'RA', 'seven@gmail.com', 'ADS2022-10-13', 70, 160, 0, 0, 115),
(392, 'TR-20220411116', '2022-11-04', '09:56 pm', 'Unclaimable Rebates', 'five@gmail.com', 'ADS2022-10-11', '', '', 'RA', 'seven@gmail.com', 'ADS2022-10-13', 30, 120, 0, 0, 116),
(393, 'TR-20220411117', '2022-11-04', '09:56 pm', 'Unclaimable Rebates', 'four@gmail.com', 'ADS2022-10-10', '', '', 'RA', 'seven@gmail.com', 'ADS2022-10-13', 30, 120, 0, 0, 117),
(394, 'TR-20220411118', '2022-11-04', '09:56 pm', 'Unclaimable Rebates', 'three@gmail.com', 'ADS2022-10-9', '', '', 'RA', 'seven@gmail.com', 'ADS2022-10-13', 30, 110, 0, 0, 118),
(395, 'TR-20220411119', '2022-11-04', '09:56 pm', 'Unclaimable Rebates', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', 'seven@gmail.com', 'ADS2022-10-13', 30, 100, 0, 0, 119),
(396, 'TR-20220411120', '2022-11-04', '09:56 pm', 'Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'seven@gmail.com', 'ADS2022-10-13', 30, 1770, 0, 0, 120),
(397, 'TR-20220411121', '2022-11-04', '09:56 pm', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'seven@gmail.com', 'ADS2022-10-13', 20, 20, 0, 0, 121),
(398, 'TR-20220411122', '2022-11-04', '10:46 pm', 'Withdrawal', '', 'ADS2022-10-7', '', '', '', '', '', 1000, 770, 0, 0, 122),
(399, 'TR-20220611123', '2022-11-06', '03:17 pm', 'Claimed Rebates', 'four@gmail.com', 'ADS2022-10-10', '', '', '', '', '', 120, 700, 0, 0, 123),
(400, 'TR-20220611124', '2022-11-06', '03:17 pm', 'Points', 'four@gmail.com', 'ADS2022-10-10', '', '', 'RA', '', '', 0, 0, 1, 1, 124),
(401, 'TR-20220611125', '2022-11-06', '03:17 pm', 'Unclaimable Rebates', 'three@gmail.com', 'ADS2022-10-9', '', '', 'RA', 'Four Kwatro', 'ADS2022-10-10', 70, 180, 0, 0, 125),
(402, 'TR-20220611126', '2022-11-06', '03:17 pm', 'Unclaimable Rebates', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', 'Four Kwatro', 'ADS2022-10-10', 30, 130, 0, 0, 126),
(403, 'TR-20220611127', '2022-11-06', '03:17 pm', 'Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'Four Kwatro', 'ADS2022-10-10', 30, 800, 0, 0, 127),
(404, 'TR-20220611128', '2022-11-06', '03:17 pm', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'Four Kwatro', 'ADS2022-10-10', 30, 30, 0, 0, 128),
(405, 'TR-20220611129', '2022-11-06', '04:13 pm', 'Direct Referral', '', 'waiting', 'asdas asda asas', ' ', '', '', '', 500, 500, 0, 0, 129),
(406, 'TR-20220611130', '2022-11-06', '04:25 pm', 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'samp samp samp', 'One Uno', '', '', '', 500, 1300, 0, 0, 130),
(407, 'TR-20220611131', '2022-11-06', '04:25 pm', 'Indirect Referral', '', 'n/a', 'samp samp samp', 'One Uno', '', '', '', 10, 10, 0, 0, 131);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_code`
--
ALTER TABLE `generated_code`
  ADD PRIMARY KEY (`code_id`),
  ADD UNIQUE KEY `uniqueCode` (`code`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`invitesID`);

--
-- Indexes for table `payout_request`
--
ALTER TABLE `payout_request`
  ADD PRIMARY KEY (`payout_request_id`);

--
-- Indexes for table `points_report`
--
ALTER TABLE `points_report`
  ADD PRIMARY KEY (`points_report_id`);

--
-- Indexes for table `rebatesamount`
--
ALTER TABLE `rebatesamount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rebates_points`
--
ALTER TABLE `rebates_points`
  ADD PRIMARY KEY (`rebates_points_id`);

--
-- Indexes for table `referral_codes`
--
ALTER TABLE `referral_codes`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `totalbalance`
--
ALTER TABLE `totalbalance`
  ADD PRIMARY KEY (`totalBalanceId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `generated_code`
--
ALTER TABLE `generated_code`
  MODIFY `code_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `invitesID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payout_request`
--
ALTER TABLE `payout_request`
  MODIFY `payout_request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `points_report`
--
ALTER TABLE `points_report`
  MODIFY `points_report_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `rebatesamount`
--
ALTER TABLE `rebatesamount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rebates_points`
--
ALTER TABLE `rebates_points`
  MODIFY `rebates_points_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `referral_codes`
--
ALTER TABLE `referral_codes`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `totalbalance`
--
ALTER TABLE `totalbalance`
  MODIFY `totalBalanceId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
