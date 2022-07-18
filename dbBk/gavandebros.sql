-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 07:13 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gavandebros`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

CREATE TABLE `accounting` (
  `accId` int(11) NOT NULL,
  `shortDesc` text NOT NULL,
  `amount` bigint(20) NOT NULL,
  `detailDesc` text NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounting`
--

INSERT INTO `accounting` (`accId`, `shortDesc`, `amount`, `detailDesc`, `date`, `status`) VALUES
(1, 'iuguyg', 165, 'lunch', '2021-12-04', 2),
(2, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(3, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(4, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(5, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(6, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(7, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(8, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(9, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(10, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(11, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(12, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(13, 'iuguyg', 1, 'fggfhgfh', '2022-02-15', 1),
(14, 'iuguyg', 2, 'fggfhgfh', '2022-02-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `billId` int(11) NOT NULL,
  `billNo` bigint(20) NOT NULL,
  `customerId` int(250) NOT NULL,
  `date` datetime NOT NULL,
  `gstStatus` tinyint(4) NOT NULL COMMENT '0:without GST, 1:With GST',
  `gstAmount` int(11) NOT NULL,
  `amount` int(250) NOT NULL,
  `amountReceived` int(11) NOT NULL,
  `amountPending` int(11) NOT NULL,
  `engineersName` text NOT NULL,
  `siteName` text NOT NULL,
  `location` text NOT NULL,
  `itemCount` int(20) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0:Pending, 1:Paid ,2 : Partial Paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`billId`, `billNo`, `customerId`, `date`, `gstStatus`, `gstAmount`, `amount`, `amountReceived`, `amountPending`, `engineersName`, `siteName`, `location`, `itemCount`, `status`) VALUES
(1, 2147483647, 22, '2021-01-25 00:00:00', 1, 18, 117, 50, 67, '', '', '', 1, 2),
(2, 2147483647, 23, '2021-01-26 00:00:00', 1, 1440, 9440, 0, 9440, '', '', '', 1, 0),
(3, 2147483647, 24, '2021-01-26 00:00:00', 1, 1440, 9440, 0, 9440, '', '', '', 1, 0),
(4, 2147483647, 24, '2021-01-26 00:00:00', 1, 1530, 10030, 1000, 9030, '', '', '', 1, 0),
(5, 2147483647, 23, '2021-01-29 00:00:00', 1, 1530, 10030, 0, 10030, '', '', '', 1, 0),
(6, 2147483647, 23, '2021-01-29 00:00:00', 1, 1530, 10030, 0, 10030, '', '', '', 1, 0),
(7, 2147483647, 23, '2021-02-01 00:00:00', 1, 1530, 10030, 0, 10030, '', '', '', 1, 0),
(8, 2147483647, 4, '2021-02-03 00:00:00', 1, 32, 208, 0, 208, '', '', '', 1, 0),
(9, 16123537449, 4, '2021-02-03 00:00:00', 1, 59, 389, 23, 366, '', '', '', 1, 0),
(10, 161251150110, 25, '2021-02-05 00:00:00', 1, 589, 3863, 200, 3663, '', '', '', 5, 2),
(11, 161305462911, 23, '2021-02-11 00:00:00', 1, 5719, 37493, 200, 37293, '', '', '', 2, 2),
(12, 161492987712, 15, '2021-03-05 00:00:00', 0, 0, 56000, 0, 56000, '', '', '', 1, 0),
(13, 161537396513, 15, '2021-03-10 00:00:00', 0, 0, 72000, 0, 72000, '', '', '', 1, 0),
(14, 161561878514, 26, '2021-03-13 00:00:00', 0, 0, 4560, 0, 4560, '', '', '', 1, 0),
(15, 161561975715, 27, '2021-03-13 00:00:00', 1, 7241, 47466, 0, 47466, '', '', '', 2, 0),
(16, 161563035916, 28, '2021-03-13 00:00:00', 1, 810, 5310, 0, 5310, '', '', '', 1, 0),
(17, 161622175717, 29, '2021-03-20 00:00:00', 1, 8100, 53100, 53100, 0, '', '', '', 3, 0),
(18, 161907220718, 30, '2021-04-22 00:00:00', 0, 0, 72000, 0, 72000, '', '', '', 1, 0),
(19, 161945980319, 31, '2021-04-26 00:00:00', 0, 0, 6900, 0, 6900, '', '', '', 1, 0),
(20, 161946036920, 15, '2021-04-26 00:00:00', 0, 0, 72000, 0, 72000, '', '', '', 1, 0),
(21, 161946043221, 15, '2021-04-26 00:00:00', 0, 0, 72000, 0, 72000, '', '', '', 1, 0),
(22, 161946088522, 15, '2021-04-26 00:00:00', 0, 0, 56000, 0, 56000, '', '', '', 7, 0),
(23, 161946113423, 17, '2021-04-26 00:00:00', 0, 0, 26000, 0, 26000, '', '', '', 2, 0),
(24, 162184255724, 32, '2021-05-24 00:00:00', 0, 0, 4500, 0, 4500, '', '', '', 1, 0),
(25, 162434215625, 33, '2021-06-22 00:00:00', 0, 0, 52500, 0, 52500, '', '', '', 1, 0),
(26, 162529656326, 31, '2021-07-03 00:00:00', 0, 0, 6000, 0, 6000, '', '', '', 1, 0),
(27, 162529669327, 31, '2021-07-03 00:00:00', 0, 0, 13000, 0, 13000, '', '', '', 1, 0),
(28, 162529677628, 34, '2021-07-03 00:00:00', 0, 0, 5000, 0, 5000, '', '', '', 1, 0),
(29, 162532172729, 9, '2021-07-03 00:00:00', 0, 0, 4000, 0, 4000, '', '', '', 2, 0),
(30, 162532248230, 14, '2021-07-03 00:00:00', 0, 0, 7000, 0, 7000, '', '', '', 2, 0),
(31, 162589910231, 9, '2021-07-10 00:00:00', 0, 0, 2000, 0, 2000, '', '', '', 1, 0),
(32, 162589916632, 9, '2021-07-10 00:00:00', 0, 0, 2000, 0, 2000, '', '', '', 1, 0),
(33, 162634182033, 35, '2021-07-15 00:00:00', 1, 7200, 47200, 0, 47200, '', '', '', 1, 0),
(34, 162662433234, 36, '2021-07-18 00:00:00', 1, 630, 4130, 0, 4130, '', '', '', 1, 0),
(35, 162662445835, 36, '2021-07-18 00:00:00', 1, 900, 5900, 0, 5900, '', '', '', 1, 0),
(36, 162675002136, 37, '2021-07-20 00:00:00', 1, 1440, 9440, 0, 9440, '', '', '', 1, 0),
(37, 162675046637, 38, '2021-07-20 00:00:00', 1, 1368, 8968, 0, 8968, '', '', '', 1, 0),
(38, 162731245238, 39, '2021-07-26 00:00:00', 0, 0, 14356, 0, 14356, '', '', '', 6, 0),
(39, 162982189039, 40, '2021-08-24 00:00:00', 0, 0, 6160, 0, 6160, '', '', '', 1, 0),
(40, 163034409840, 31, '2021-08-30 00:00:00', 1, 0, 33000, 0, 33000, '', '', '', 5, 0),
(41, 163094156541, 31, '2021-09-06 00:00:00', 0, 0, 8000, 0, 8000, '', '', '', 1, 0),
(42, 163094171642, 31, '2021-09-06 00:00:00', 0, 0, 2500, 0, 2500, '', '', '', 1, 0),
(43, 163094199143, 31, '2021-09-06 00:00:00', 0, 0, 7000, 0, 7000, '', '', '', 1, 0),
(44, 163094214244, 31, '2021-09-06 00:00:00', 1, 360, 2360, 0, 2360, '', '', '', 1, 0),
(45, 163094228345, 31, '2021-09-06 00:00:00', 0, 0, 2000, 0, 2000, '', '', '', 1, 0),
(46, 163094237646, 31, '2021-09-06 00:00:00', 0, 0, 13500, 0, 13500, '', '', '', 1, 0),
(47, 163104721547, 31, '2021-09-08 00:00:00', 0, 0, 6000, 0, 6000, '', '', '', 1, 0),
(48, 163104739948, 41, '2021-09-08 00:00:00', 0, 0, 7000, 0, 7000, '', '', '', 1, 0),
(49, 163234115349, 29, '2021-09-23 00:00:00', 1, 27040, 177260, 0, 177260, '', '', '', 5, 0),
(50, 163234329450, 42, '2021-09-23 00:00:00', 1, 25649, 168143, 0, 168143, '', '', '', 14, 0),
(51, 163234360551, 43, '2021-09-23 00:00:00', 1, 2246, 14726, 0, 14726, '', '', '', 2, 0),
(52, 163234434052, 44, '2021-09-23 00:00:00', 1, 17824, 116844, 0, 116844, '', '', '', 9, 0),
(53, 163398477753, 45, '2021-10-12 00:00:00', 1, 810, 5310, 0, 5310, '', '', '', 1, 0),
(54, 163509211254, 49, '2021-10-24 00:00:00', 1, 720, 4720, 0, 4720, '', '', '', 1, 0),
(55, 163509307155, 26, '2021-10-24 00:00:00', 0, 0, 12480, 0, 12480, '', '', '', 2, 0),
(56, 163509346556, 50, '2021-10-24 00:00:00', 0, 0, 20000, 0, 20000, '', '', '', 1, 0),
(57, 163517102857, 51, '2021-10-25 00:00:00', 0, 0, 10000, 0, 10000, '', '', '', 4, 0),
(58, 163517147358, 52, '2021-10-25 00:00:00', 0, 0, 4000, 0, 4000, '', '', '', 1, 0),
(59, 163517157159, 17, '2021-10-25 00:00:00', 0, 0, 4000, 0, 4000, '', '', '', 1, 0),
(60, 163560702960, 53, '2021-10-30 00:00:00', 0, 0, 13000, 0, 13000, 'Nalkar Partik', '', '', 4, 0),
(61, 163560913861, 9, '2021-10-30 00:00:00', 0, 0, 13400, 0, 13400, '', '', '', 2, 0),
(62, 163561071262, 9, '2021-10-30 00:00:00', 0, 0, 10200, 0, 10200, '', '', '', 1, 0),
(63, 163561079963, 9, '2021-10-30 00:00:00', 0, 0, 1500, 0, 1500, '', '', '', 1, 0),
(64, 163648268764, 54, '2021-11-10 00:00:00', 0, 0, 3500, 0, 3500, '', '', '', 1, 0),
(65, 163708686365, 55, '2021-11-16 00:00:00', 1, 0, 3500, 0, 3500, '', '', '', 1, 0),
(66, 163818604066, 56, '2021-11-29 00:00:00', 0, 0, 4000, 0, 4000, '', '', '', 1, 0),
(67, 163818642467, 57, '2021-11-29 00:00:00', 1, 1800, 11800, 0, 11800, '', '', '', 2, 0),
(68, 163818649668, 17, '2021-11-29 00:00:00', 0, 0, 4000, 0, 4000, '', '', '', 1, 0),
(69, 163851142969, 58, '2021-12-03 00:00:00', 1, 5760, 37760, 0, 37760, '', '', '', 3, 0),
(70, 163860738970, 36, '2021-12-04 00:00:00', 0, 0, 498, 0, 498, '', '', '', 1, 0),
(71, 163860883371, 36, '2021-12-04 00:00:00', 0, 0, 2253, 0, 2253, '', '', '', 1, 0),
(72, 163861347572, 36, '2021-12-04 00:00:00', 1, 1135, 7439, 0, 7439, '', '', '', 1, 0),
(73, 163861509673, 36, '2021-12-04 00:00:00', 1, 5365347, 35172831, 0, 35172831, '', '', '', 1, 0),
(74, 163863873974, 1, '2021-12-04 00:00:00', 0, 0, 16, 0, 16, '', '', '', 1, 0),
(75, 163863995675, 1, '2021-12-04 00:00:00', 1, 348, 2284, 0, 2284, '', '', '', 1, 2),
(76, 163864044276, 1, '2021-12-04 00:00:00', 1, 128, 837, 0, 837, '', '', '', 4, 0),
(77, 163867783477, 59, '2021-12-05 00:00:00', 1, 4814, 31559, 0, 31559, '', '', '', 4, 0),
(78, 163870325778, 36, '2021-12-05 00:00:00', 1, 348, 2284, 0, 2284, '', '', '', 1, 0),
(79, 163870336879, 36, '2021-12-05 00:00:00', 1, 36, 234, 0, 234, '', '', '', 4, 0),
(80, 163872005880, 36, '2021-12-05 00:00:00', 1, 1620, 10620, 0, 10620, '', '', '', 3, 0),
(81, 163872012681, 36, '2021-12-05 00:00:00', 1, 1662, 10893, 0, 10893, '', '', '', 7, 0),
(82, 163877140982, 59, '2021-12-06 00:00:00', 1, 8117, 53212, 0, 53212, '', '', '', 3, 0),
(83, 163877285283, 60, '2021-12-06 00:00:00', 0, 0, 25775, 0, 25775, '', '', '', 2, 0),
(84, 163888563984, 61, '2021-12-07 00:00:00', 1, 17348, 113728, 0, 113728, '', '', '', 8, 0),
(85, 163964903685, 31, '2021-12-16 00:00:00', 0, 0, 3000, 0, 3000, '', '', '', 1, 0),
(86, 163964917486, 62, '2021-12-16 00:00:00', 0, 0, 3000, 0, 3000, '', '', '', 1, 0),
(87, 164043351987, 63, '2021-12-25 00:00:00', 0, 0, 8000, 0, 8000, '', '', '', 1, 0),
(88, 164066890088, 61, '2021-12-28 00:00:00', 1, 15599, 102258, 0, 102258, '', '', '', 7, 0),
(89, 164131616589, 36, '2022-01-04 00:00:00', 1, 0, 30525, 0, 30525, '', '', '', 1, 0),
(90, 164131644090, 36, '2022-01-04 00:00:00', 0, 0, 4000, 0, 4000, '', '', '', 1, 0),
(91, 164144722991, 64, '2022-01-06 00:00:00', 1, 3194, 20939, 0, 20939, '', '', '', 1, 0),
(92, 164144764992, 64, '2022-01-06 00:00:00', 1, 1305, 8555, 0, 8555, '', '', '', 1, 0),
(93, 164144787893, 64, '2022-01-06 00:00:00', 1, 3618, 23718, 0, 23718, '', '', '', 1, 0),
(94, 164223011494, 62, '2022-01-15 00:00:00', 0, 0, 10000, 0, 10000, '', '', '', 2, 0),
(95, 164223118595, 65, '2022-01-15 00:00:00', 1, 810, 5310, 0, 5310, 'Akshay Birajdar', 'Bavi Railway Station (92+000)', 'Kapse (92+000)', 1, 0),
(96, 164257259496, 66, '2022-01-19 00:00:00', 0, 0, 3000, 0, 3000, '', '', '', 1, 0),
(97, 164257397897, 39, '2022-01-19 00:00:00', 0, 0, 7480, 0, 7480, '', '', '', 3, 0),
(98, 164344848598, 62, '2022-01-29 00:00:00', 0, 0, 10000, 0, 10000, '', '', '', 1, 0),
(99, 164345219799, 67, '2022-01-29 00:00:00', 0, 0, 3000, 0, 3000, '', '', '', 1, 0),
(100, 1643544426100, 36, '2022-01-30 00:00:00', 1, 545, 3570, 0, 3570, '', '', '', 1, 0),
(101, 1643544479101, 68, '2022-01-30 00:00:00', 1, 18, 117, 0, 117, '', '', '', 1, 0),
(102, 1643544543102, 68, '2022-01-30 00:00:00', 1, 3, 19, 0, 19, '', '', '', 1, 0),
(103, 1643544635103, 69, '2022-01-30 00:00:00', 1, 71, 467, 0, 467, '', '', '', 1, 0),
(104, 1643545286104, 70, '2022-01-30 00:00:00', 1, 0, 1, 0, 1, '', '', '', 1, 0),
(105, 1643638287105, 71, '2022-01-31 00:00:00', 0, 0, 5160, 0, 5160, 'mohasin shaikh', '', 'Hasanapur', 1, 0),
(106, 1643784435106, 62, '2022-02-02 00:00:00', 0, 0, 10500, 0, 10500, 'Harshad Dabhade', '', 'Akole Naka', 2, 0),
(107, 1643785097107, 72, '2022-02-02 00:00:00', 1, 900, 5900, 0, 5900, '', '', '', 1, 0),
(108, 1643801176108, 42, '2022-02-02 00:00:00', 1, 20006, 131148, 0, 131148, '', '', '', 10, 0),
(109, 1643802680109, 9, '2022-02-02 00:00:00', 0, 0, 7200, 0, 7200, 'Mulay Kaustabh', '', 'Sangamner', 2, 0),
(110, 1643802732110, 9, '2022-02-02 00:00:00', 0, 0, 2000, 0, 2000, 'Mulay Kaustabh', '', 'Kasara Dumala', 1, 0),
(111, 1643802784111, 9, '2022-02-02 00:00:00', 0, 0, 2000, 0, 2000, 'Mulay Kaustabh', '', 'Sangamner', 1, 0),
(112, 1643802899112, 9, '2022-02-02 00:00:00', 0, 0, 2000, 0, 2000, 'Mulay Kaustabh', '', 'Chandrashekhar Chowk', 1, 0),
(113, 1644165501113, 36, '2022-02-06 00:00:00', 1, 2, 11, 0, 11, '', '', '', 1, 0),
(114, 1644168454114, 36, '2022-02-06 00:00:00', 1, 6, 39, 0, 39, '', '', '', 1, 0),
(115, 1644169900115, 36, '2022-02-06 00:00:00', 1, 5, 30, 0, 30, '', '', '', 1, 0),
(116, 1644680991116, 36, '2022-02-12 00:00:00', 1, 3, 18, 0, 18, '', '', '', 1, 0),
(117, 1644686221117, 36, '2022-02-12 00:00:00', 1, 8, 52, 0, 52, 'testb enffrr', '', 'loc', 1, 0),
(118, 1644688677118, 36, '2022-02-12 00:00:00', 1, 2724, 17860, 0, 17860, 'aaa', 'aa', 'bbb', 1, 0),
(119, 1644689548119, 73, '2022-02-12 00:00:00', 1, 360, 2360, 0, 2360, 'mohasin shaikh', '', 'Hasanapur', 1, 0),
(120, 1645267415120, 74, '2022-02-19 00:00:00', 1, 5882, 38562, 0, 38562, 'Mithun', '', 'Devthan Akole Road', 4, 0),
(121, 1645689647121, 75, '2022-02-24 00:00:00', 1, 1620, 10620, 0, 10620, 'Ajabe Nitin', '', 'Amalner (Ch 93+175)', 1, 0),
(122, 1646206004122, 62, '2022-03-02 00:00:00', 0, 0, 3500, 0, 3500, 'Harshad Dabhade', '', 'Akole Naka', 1, 0),
(123, 1646206264123, 62, '2022-03-02 00:00:00', 0, 0, 7500, 0, 7500, 'Harshad Dabhade', '', 'Near S.R.Thorat Dairy', 2, 0),
(124, 1646206497124, 62, '2022-03-02 00:00:00', 0, 0, 3500, 0, 3500, 'Deshamukh Mahesh', '', 'Manglapur', 1, 0),
(125, 1646206824125, 62, '2022-03-02 00:00:00', 0, 0, 2000, 0, 2000, 'Harshad Dabhade', '', 'Pune-Nashik Bypass', 1, 0),
(126, 1646315953126, 76, '2022-03-03 00:00:00', 0, 0, 12000, 0, 12000, 'Londhe Saheb', '', 'Miri,Pathardi', 2, 0),
(127, 1646316878127, 67, '2022-03-03 00:00:00', 0, 0, 3000, 0, 3000, 'Rokade Raosaheb', '', 'Nibhale Nursery', 1, 0),
(128, 1646320693128, 77, '2022-03-03 00:00:00', 0, 0, 8000, 0, 8000, '', '', '', 3, 0),
(129, 1646373719129, 78, '2022-03-04 00:00:00', 0, 0, 14000, 0, 14000, 'Dr.Rohan Autay', '', 'Dapoli', 1, 0),
(130, 1646995386130, 64, '2022-03-11 00:00:00', 1, 3240, 21240, 0, 21240, 'Amit Jondhale', '', '', 2, 0),
(131, 1648444847131, 60, '2022-03-28 00:00:00', 0, 0, 32500, 0, 32500, '', '', '', 3, 0),
(132, 1648445377132, 57, '2022-03-28 00:00:00', 1, 9450, 61950, 0, 61950, 'Hadole Sandip', '', 'Ashti & Bavi ', 1, 0),
(133, 1648445475133, 57, '2022-03-28 00:00:00', 1, 0, 0, 0, 0, 'Hadole Sandip', '', 'Ashti & Bavi ', 0, 0),
(134, 1648484366134, 57, '2022-03-28 00:00:00', 1, 9450, 61950, 0, 61950, 'Hadole Sandip', '', 'Ashti & Bavi ', 1, 0),
(135, 1648484624135, 79, '2022-03-28 00:00:00', 1, 208, 1364, 0, 1364, '', '', '', 1, 0),
(136, 1648484749136, 57, '2022-03-28 00:00:00', 1, 9450, 61950, 0, 61950, 'Hadole Sandip', '', 'Ashti & Bavi ', 1, 0),
(137, 1648484825137, 57, '2022-03-28 00:00:00', 1, 9450, 61950, 0, 61950, 'Hadole Sandip', '', 'Ashti & Bavi ', 1, 0),
(138, 1648703873138, 57, '2022-03-31 00:00:00', 1, 9450, 61950, 0, 61950, 'Hadole Sandip', '', 'Ashti & Bavi ', 1, 0),
(139, 1649227234139, 74, '2022-04-06 00:00:00', 0, 0, 1500, 0, 1500, 'Mithun', 'Kotul Nachanthav Road', '', 1, 0),
(140, 1650366445140, 58, '2022-04-19 00:00:00', 1, 1440, 9440, 9440, 0, '', '', '', 2, 1),
(141, 1650519758141, 29, '2022-04-21 00:00:00', 1, 7056, 46256, 0, 46256, '', '', '', 8, 0),
(142, 1651589196142, 80, '2022-05-03 00:00:00', 0, 0, 8000, 0, 8000, 'Pansare Akshay ', 'Dumbarwadi', 'Junnar', 2, 0),
(143, 1651664209143, 81, '2022-05-04 00:00:00', 1, 3240, 21240, 0, 21240, 'Mahesh Dongare', 'Barav', 'Barav', 5, 0),
(144, 1651669389144, 82, '2022-05-04 00:00:00', 1, 7430, 48710, 0, 48710, '', '', '', 1, 0),
(145, 1651669597145, 83, '2022-05-04 00:00:00', 1, 32, 208, 0, 208, '', '', '', 1, 0),
(146, 1651669672146, 84, '2022-05-04 00:00:00', 1, 5, 30, 0, 30, '', '', '', 1, 0),
(147, 1651669727147, 85, '2022-05-04 00:00:00', 1, 5, 30, 0, 30, '', '', '', 1, 0),
(148, 1651920318148, 86, '2022-05-07 00:00:00', 1, 3096, 20296, 0, 20296, 'Mahesh Dongare ', 'Barav', 'Barav', 5, 0),
(149, 1652872902149, 62, '2022-05-18 00:00:00', 0, 0, 14800, 0, 14800, 'Harshad Dabhade', '', 'Shrigonda', 4, 0),
(150, 1652873442150, 62, '2022-05-18 00:00:00', 0, 0, 11500, 0, 11500, 'Harshad Dabhade & Akshay Pansare', '', 'Khanapur', 3, 0),
(151, 1652873769151, 62, '2022-05-18 00:00:00', 0, 0, 4000, 0, 4000, 'Harshad Dabhade', '', 'Near Strawberry School,Gunjalwadi', 2, 0),
(152, 1652874340152, 62, '2022-05-18 00:00:00', 0, 0, 3000, 0, 3000, 'Deshmane Navnath ', '', 'Dhandarphal', 1, 0),
(153, 1652874630153, 62, '2022-05-18 00:00:00', 0, 0, 2500, 0, 2500, 'Kute Bhausaheb', '', 'Argade Mala', 1, 0),
(154, 1652874842154, 62, '2022-05-18 00:00:00', 0, 0, 5000, 0, 5000, 'Harshad Dabhade', '', 'Batwal Mala', 1, 0),
(155, 1652878682155, 62, '2022-05-18 00:00:00', 0, 0, 3000, 0, 3000, 'Deshmane Navnath ', '', 'Dhandarphal', 1, 0),
(156, 1652879043156, 77, '2022-05-18 00:00:00', 0, 0, 6000, 0, 6000, 'Konarc Architect', '', 'Ghulewadi', 2, 0),
(157, 1652936162157, 77, '2022-05-19 00:00:00', 0, 0, 2000, 0, 2000, 'Konarc Architect', '', 'Gandhi Chowk', 1, 0),
(158, 1652967907158, 87, '2022-05-19 00:00:00', 0, 0, 12000, 0, 12000, 'Kadu Tushar', '', 'Chikhalgaon', 3, 0),
(159, 1653127520159, 88, '2022-05-21 00:00:00', 1, 2340, 15340, 0, 15340, 'kadu Tushar ', '', 'Chikhalgaon', 4, 0),
(160, 1653653442160, 53, '2022-05-27 00:00:00', 1, 2340, 15340, 0, 15340, '', '', '', 4, 0),
(161, 1653710709161, 89, '2022-05-28 00:00:00', 1, 1800, 11800, 0, 11800, 'Gunjal Sanjay', '', 'Gunjalwadi', 3, 0),
(162, 1654758768162, 90, '2022-06-09 00:00:00', 1, 4694, 30769, 0, 30769, 'Todmal Shyam', 'Aurangabad', 'Aurangabad', 5, 0),
(163, 1656752856163, 53, '2022-07-02 00:00:00', 1, 9761, 63986, 0, 63986, 'Gunjal ', '', '', 3, 0),
(164, 1657287819164, 91, '2022-07-08 00:00:00', 0, 0, 58000, 0, 58000, 'TILR Officers', 'Surat -Hyd Highway', 'Surat -Hyd Highway', 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bill_items`
--

CREATE TABLE `bill_items` (
  `itemId` int(11) NOT NULL,
  `billId` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `rate` text NOT NULL,
  `unit` text NOT NULL,
  `amount` int(11) NOT NULL,
  `date` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_items`
--

INSERT INTO `bill_items` (`itemId`, `billId`, `name`, `rate`, `unit`, `amount`, `date`, `status`) VALUES
(1, 1, 'test 1111', '33', '3', 99, NULL, 0),
(2, 2, 'Runway Level', '', '', 8000, NULL, 0),
(3, 3, 'Runway Level', '', '', 8000, NULL, 0),
(4, 4, 'Runway Level', '8500', '1', 8500, NULL, 0),
(5, 5, 'Runway Level', '', '', 8500, NULL, 0),
(6, 6, 'Runway Level', '', '', 8500, NULL, 0),
(7, 7, 'Runway Level', '', '', 8500, NULL, 0),
(8, 8, 'fgdfg', '44', '4', 176, NULL, 0),
(9, 9, 'ghjgf', '55', '6.000', 330, '', 0),
(10, 10, 'dfgfdg', '343', '3', 1029, NULL, 0),
(11, 10, 'fdvgdg fd', '23', '3', 69, NULL, 0),
(12, 10, '35fddfg', '444', '4', 1776, NULL, 0),
(13, 10, 'gffg', '100', '1', 100, NULL, 0),
(15, 10, 'aaa', '300', '1', 300, NULL, 0),
(16, 11, 'fsfs', '333', '2', 666, NULL, 0),
(17, 11, 'rertet', '7777', '4', 31108, NULL, 0),
(18, 12, 'Check Survey for PKG-15(7KM)', '7000', '8', 56000, NULL, 0),
(19, 13, 'Check Survey for PKG-15', '9000', '8', 72000, NULL, 0),
(20, 14, 'Kolhar Rajuri Road KM 00-400 To 1-000 & 4-000 to  5-300 ', '2400', '1.9', 4560, NULL, 0),
(21, 15, 'Shindodi  Mandwa Sakur To NH 60  km 94/400 To  98/500 & 113/900 To 122/800', '2000', '9', 18000, NULL, 0),
(22, 15, 'Kotul Bramhanwada Road km 257/530 To 263/880(BM C/S  & qty statement)', '3500', '6.35', 22225, NULL, 0),
(23, 16, 'yguy', '4500', '1', 4500, NULL, 0),
(24, 17, 'Earthwork C/5 & Qty Statement Km 0/00 to 11/00', '2000', '11', 22000, NULL, 0),
(25, 17, 'Mahuli to Sakur Rd. Box cutting GSB GR1 GrII Km 5/00 to 11/00', '3500', '6', 21000, NULL, 0),
(26, 17, 'Sangamner Loni Rd BM QTY Statement(Km 5/300)', '2000', '1', 2000, NULL, 0),
(27, 18, '8/11/2020(Sanwatsar)', '8000', '1', 8000, NULL, 0),
(28, 19, 'Plot Survey (Sukewadi) (13.80 Acre) ', '500', '', 6900, NULL, 0),
(29, 20, 'Check Survey for PKG-15', '9000', '8', 72000, NULL, 0),
(30, 21, 'Check Survey for PKG-15', '9000', '8', 72000, NULL, 0),
(31, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(32, 18, '', '', '', 0, NULL, 0),
(33, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(34, 18, '', '', '', 0, NULL, 0),
(35, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(36, 18, '', '', '', 0, NULL, 0),
(37, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(38, 18, '', '', '', 0, NULL, 0),
(39, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(40, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(41, 18, '', '', '', 0, NULL, 0),
(42, 18, '', '', '', 0, NULL, 0),
(43, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(44, 18, '', '', '', 0, NULL, 0),
(45, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(46, 18, '', '', '', 0, NULL, 0),
(47, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(48, 18, '', '', '', 0, NULL, 0),
(49, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(50, 18, '', '', '', 0, NULL, 0),
(51, 18, '20/12/2020(Kokamthan)', '8000', '1', 8000, NULL, 0),
(52, 18, '', '', '', 0, NULL, 0),
(53, 22, '8/11/2020(Sanwatsar) ', '8000', '1', 8000, NULL, 0),
(54, 22, '16/11/2020(Sanwatsar) ', '8000', '1', 8000, NULL, 0),
(55, 22, '26/11/2020(Sanwatsar) ', '8000', '1', 8000, NULL, 0),
(56, 22, '5/12/2020(Sanwatsar) ', '8000', '1', 8000, NULL, 0),
(57, 22, '12/12/2020(Kokamthan) ', '8000', '1', 8000, NULL, 0),
(58, 22, '13/12/2020(Kokamthan) ', '8000', '1', 8000, NULL, 0),
(59, 22, '20/12/2020(Kokamthan) ', '8000', '1', 8000, NULL, 0),
(60, 23, 'Topo Survey', '3000', '4', 12000, NULL, 0),
(61, 23, 'Center Line Marking ', '3500', '4', 14000, NULL, 0),
(62, 24, 'Lineout', '4500', '1', 4500, NULL, 0),
(63, 25, 'Levels & check survey(15 days)', '3500', '15', 52500, NULL, 0),
(64, 26, 'Plot Survey  (Sukewadi)', '6000', '', 6000, NULL, 0),
(65, 27, 'Plot Survey & line out(palaskhede)', '13000', '', 13000, NULL, 0),
(66, 28, 'Plot Survey  (ashtavinaykpark)', '5000', '', 5000, NULL, 0),
(67, 29, 'Chandrashekhar Chowk ', '2000', '1', 2000, NULL, 0),
(68, 29, 'Akole Bypass ', '2000', '1', 2000, NULL, 0),
(69, 30, 'TBM  Traversing Gogalgaon', '3500', '1', 3500, NULL, 0),
(70, 30, 'Bridge Lineout & Contour Survey ', '3500', '1', 3500, NULL, 0),
(71, 31, 'Chandrashekhar Chowk ', '2000', '1', 2000, NULL, 0),
(72, 32, 'Akole Bypass ', '2000', '1', 2000, NULL, 0),
(73, 33, 'Loni Nandur Road 16+000 to 32+000', '2500', '16', 40000, NULL, 0),
(74, 34, 'Soma abc', '3500', '1', 3500, NULL, 0),
(75, 35, 'Abc', '1', '5000', 5000, NULL, 0),
(76, 36, 'iiiiii', '4000', '2', 8000, NULL, 0),
(77, 37, 'sdf', '4000', '1.9', 7600, NULL, 0),
(78, 38, 'Chitralaya Chowk To P.V.P college Left Side 221 M', '4000', '0.221', 884, NULL, 0),
(79, 38, 'Chitralaya Chowk To P.V.P college Right Side 228 M', '4000', '0.228', 912, NULL, 0),
(80, 38, 'Prince Corner To Kanya Shala 440 M', '4000', '0.44', 1760, NULL, 0),
(81, 38, 'Mothe Baba Temple To Tisgaon Road KM 9+600 To 10+300', '4000', '0.7', 2800, NULL, 0),
(82, 38, 'Tisgaon Road To Kolhar Rajuri Road Gr-I , Gr-II, GSB 1092M', '6000', '1', 6000, NULL, 0),
(83, 38, 'S.T.B.T. To Sangamner Ashwi Dadh Kolhar Road KM 41+000 To 41+700 ', '2000', '1', 2000, NULL, 0),
(84, 39, 'Maze Ghar to Thakar wasti Pipeline Survey', '2000', '3.08', 6160, NULL, 0),
(85, 40, 'Palaskhede Plot ', '8000', '1', 8000, NULL, 0),
(86, 40, 'Gandhi Plot ', '2500', '1', 2500, NULL, 0),
(87, 40, 'Ves Plot ', '7000', '1', 7000, NULL, 0),
(88, 40, 'Om Jaju Plot', '2000', '1', 2000, NULL, 0),
(89, 40, 'Velhale Plot ', '13500', '1', 13500, NULL, 0),
(90, 41, 'Palaskhede Plot  Mesurement & Lineout ', '8000', '1', 8000, NULL, 0),
(91, 42, 'Gandhi Plot Survey ', '2500', '1', 2500, NULL, 0),
(92, 43, 'Ves Plot Measurement & Plot Lineout', '7000', '1', 7000, NULL, 0),
(93, 44, 'Jaju Plot Measurment & Survey', '2000', '', 0, NULL, 0),
(94, 44, 'Jaju Plot Measurment & Survey', '2000', '', 0, NULL, 0),
(95, 44, 'Jaju Plot Measurment & Survey', '2000', '', 0, NULL, 0),
(96, 44, 'Jaju Plot Measurment & Survey', '2000', '1', 2000, NULL, 0),
(97, 45, 'Jaju Plot Measurment Survey', '2000', '1', 2000, NULL, 0),
(98, 46, 'Velhale  Plot Measurement Survey', '13500', '1', 13500, NULL, 0),
(99, 47, 'Plot Measurment Survey  (Sukewadi)', '6000', '1', 6000, NULL, 0),
(100, 48, 'Plot Measurment Survey & Lineout', '3500', '2', 7000, NULL, 0),
(101, 49, 'kharshinde Phata To Mandave Phata KM (40/000 To 53/780) Earthwork, Cross section and Quantity Statement', '4000', '13.78', 55120, NULL, 0),
(102, 49, 'Sakur To Jambhulwadi Phata KM (107/800 To 112/442) Earthwork, Cross section and Quantity Statement', '4000', '3.9', 15600, NULL, 0),
(103, 49, 'Shedgaon To Umbari Balapur Bridge Survey and Lineout', '3500', '3', 10500, NULL, 0),
(104, 49, 'Nandur Loni Road DBM,BC,HM, C/S and Quantity Statement KM (00/000 To 16/000)', '3000', '16', 48000, NULL, 0),
(105, 49, 'Zagade Phata To Puntamba Phata KM (00/000 To 07/000) DBM,BC,C/S and Quantity Statement', '3000', '7', 21000, NULL, 0),
(106, 50, 'Velhale Road (Mahadev Mandir) To Gunjalwadi Road KM (00/000 To 01/774) Earthwork, C/S and Quantity Statement ', '4000', '1.774', 7096, NULL, 0),
(107, 50, 'Talegaon Dighe To Ranmala Sayale Road KM (00/000 To 02/100) Earthwork, C/S and Quantity Statement ', '4000', '2.1', 8400, NULL, 0),
(108, 50, 'Chandanapuri To Shirapur Road KM (00/000 To 02/610)  Earthwork, C/S and Quantity Statement ', '4000', '2.61', 10440, NULL, 0),
(109, 50, 'Kothe Khurd To Savargaon Ghule Road KM (01/500 To 08/835)  Earthwork, C/S and Quantity Statement ', '4000', '5.975', 23900, NULL, 0),
(110, 50, 'Lohare To Sutar mala Adgaon Road KM (00/000 To 01/500)  Earthwork, C/S and Quantity Statement ', '4000', '1.5', 6000, NULL, 0),
(111, 50, 'Pimparne Phata To Kanoli Road KM (06/000 To 08/775)  Earthwork, C/S and Quantity Statement ', '4000', '2.775', 11100, NULL, 0),
(112, 50, 'Talegaon Dighe Petrol Pump Bridge To Sambhaji Chowk  Km (00/637) Gr.1, Gr.2 , C/S and Quantity Statement ', '4000', '0.637', 2548, NULL, 0),
(113, 50, 'Sharankhel To Pimpalgaon Nakvinda Road (1329 M) BM, C/S and Quantity Statement', '5000', '1.329', 6645, NULL, 0),
(114, 50, 'Sharankhel To Pagirwadi Road (1625 M) BM, C/S and Quantity Statement', '5000', '1.625', 8125, NULL, 0),
(115, 50, 'Nandurkhi To Nimgaon Korhale Road KM (3840 M)  Earthwork, C/S and Quantity Statement ', '4000', '3.84', 15360, NULL, 0),
(116, 50, 'Adbangnath To Bhokar KM (00/000 04/485)  Earthwork, C/S and Quantity Statement ', '4000', '4.485', 17940, NULL, 0),
(117, 50, 'Bhokar Phata To Ghumandev Road KM (00/000 To 00/657)', '4000', '0.657', 2628, NULL, 0),
(118, 50, 'Shrirampur Puntamba Road To Dighi KM (00/000 To 03/000)  Earthwork, C/S and Quantity Statement ', '4000', '3', 12000, NULL, 0),
(119, 50, 'Sakur To Darewadi Road KM (00/000 To 02/578)  Earthwork, C/S and Quantity Statement ', '4000', '2.578', 10312, NULL, 0),
(120, 51, 'Sangamner Jorve Dadh Kolhar Road KM (45/800 To 47/360)  Earthwork, C/S and Quantity Statement ', '4000', '1.56', 6240, NULL, 0),
(121, 51, 'Sangamner Jorve Dadh Kolhar Road KM (45/800 To 47/360) GSB, Gr.I, Gr.II and Quantity Statement', '4000', '1.56', 6240, NULL, 0),
(122, 52, 'Sankrapur To Landewadi Road KM (00/000 To 02/302) Earthwork, C/S and Quantity Statement', '4000', '2', 8000, NULL, 0),
(123, 52, 'Lakh To Trimbakpur Road KM (00/000 To 02/445) Earthwork, C/S and Quantity Statement', '4000', '2.445', 9780, NULL, 0),
(124, 52, 'Bhabulgaon-Kombadwadi To Khadakwadi Road KM (00/000 To 04/400)  Earthwork, C/S and Quantity Statement', '4000', '4.4', 17600, NULL, 0),
(125, 52, 'Umbare To Shilegaon Road KM (00/000 To 03/700)  Earthwork, C/S and Quantity Statement', '4000', '3.7', 14800, NULL, 0),
(126, 52, 'Rahuri To Manjari Road KM (25/000 To 27/000)  Earthwork, C/S and Quantity Statement', '4000', '2', 8000, NULL, 0),
(127, 52, 'Manori To Ganpatwadi Road KM (00/000 To 02/000)  Earthwork, C/S and Quantity Statement', '4000', '2', 8000, NULL, 0),
(128, 52, 'Undirgaon To Naur Road KM (07/500 To 14/200)  Earthwork, C/S and Quantity Statement', '4000', '6.7', 26800, NULL, 0),
(129, 52, 'Sakori To Nagar Manmad Road (660M)  Earthwork, C/S and Quantity Statement', '4000', '0.66', 2640, NULL, 0),
(130, 52, 'Rui To Pimpalwadi Road  (850M)  Earthwork, C/S and Quantity Statement', '4000', '0.85', 3400, NULL, 0),
(131, 53, 'Pit measurment  and level survey', '4500', '1', 4500, NULL, 0),
(132, 54, 'Check survey And Levelling Survey (15 days)', '4000', '', 0, NULL, 0),
(133, 54, 'Check survey And Levelling Survey (15 days)', '4000', '', 0, NULL, 0),
(134, 54, 'Check survey And Levelling Survey (15 days)', '4000', '', 0, NULL, 0),
(135, 54, 'Check survey And Levelling Survey (15 days)', '4000', '1', 4000, NULL, 0),
(136, 55, 'Sangamner Jorve Dadh Kolhar Road KM (45/800 To 47/360)  Earthwork, C/S and Quantity Statement ', '4000', '1.56', 6240, NULL, 0),
(137, 55, 'Sangamner Jorve Dadh Kolhar Road KM (45/800 To 47/360) GSB, Gr.I, Gr.II and Quantity Statement', '4000', '1.56', 6240, NULL, 0),
(138, 56, 'Sakur To Taskarwadi Km-00/000 To 05/000 Cross section & Qty Statement', '4000', '5', 20000, NULL, 0),
(139, 57, 'Ghulewadi Kanifnath Tempal  Plot measurement Survey & Layout Drawing ', '4000', '1.000', 4000, NULL, 0),
(140, 57, 'Sangamner Bypass Plot measurement Survey ', '2000', '1.000', 2000, NULL, 0),
(141, 57, 'Ghulewadi Plot measurement Survey ', '2000', '1.000', 2000, NULL, 0),
(142, 58, 'Center Line marking (12/8/21)', '4000', '1', 4000, NULL, 0),
(143, 59, 'Center Line marking (8/10/21)', '4000', '1', 4000, NULL, 0),
(144, 60, 'Dhulwad Road Survey', '4000', '1.000', 4000, '2021-06-02', 0),
(145, 60, 'Dhulwad  Contour', '3000', '1.000', 3000, '2021-06-02', 0),
(146, 60, 'Jai jawan Chowk Indiranagar ', '4000', '0.500', 2000, '2022-04-22', 0),
(147, 61, 'Deshpande Site (7Visit)', '1700', '7', 11900, NULL, 0),
(148, 61, 'Chandrashekhar Chowk', '1500', '1', 1500, NULL, 0),
(149, 62, 'Deshpande Site (6Visit)', '1700', '6', 10200, NULL, 0),
(150, 63, 'Chandrashekhar Chowk', '1500', '1', 1500, NULL, 0),
(151, 64, ' Awadgaon Nirmal Dham Ashram land survey work by using Total station ', '3500', '1', 3500, NULL, 0),
(152, 65, 'Aradgaon Nirmal Dham Ashram Land Survey Work By Using Total Station Machine', '3500', '1', 3500, NULL, 0),
(153, 66, 'Canal Topo Survey & Center Line Marking', '4000', '1', 4000, NULL, 0),
(154, 67, 'Ashti Center Line marking (12/08/21)', '4000', '1.000', 4000, NULL, 0),
(155, 67, 'Ashti Center Line marking (03/11/21)', '6000', '1.000', 6000, NULL, 0),
(156, 68, 'Center Line marking (08/10/21)', '4000', '1', 4000, NULL, 0),
(157, 69, 'Plot Measurment Survey(Ganesh nagar)', '6000', '1', 6000, NULL, 0),
(158, 69, 'Plot Measurment & Countour Survey (Barav ,Junnar)', '20000', '1', 20000, NULL, 0),
(159, 69, 'Building Lineout Survey(Barav ,Junnar)', '6000', '1', 6000, NULL, 0),
(160, 70, 'eeee', '40', '12.45', 498, NULL, 0),
(161, 71, 'gfhf', '5', '450.550', 2253, NULL, 0),
(162, 72, 'HGHG', '4000', '1.576', 6304, NULL, 0),
(163, 73, 'hfghfhgf', '6531', '4564.000', 29807484, NULL, 0),
(164, 74, 'test', '4', '4.000', 16, NULL, 0),
(165, 75, 'ff', '44', '44.000', 1936, '', 0),
(166, 76, 'dfsd', '3', '3.000', 9, '', 0),
(167, 77, 'Lavhate wasti -Chinchpur Dadh Road Km 00/000 To 5/915 Earthwork C/S & Qty Statement', '3000', '5.915', 17745, NULL, 0),
(168, 78, 'xdfdfg', '44', '44.000', 1936, NULL, 0),
(169, 79, 'hvh', '7', '7.000', 49, NULL, 0),
(170, 79, 'jj', '8', '8.000', 64, NULL, 0),
(171, 79, 'mj', '9', '9.000', 81, NULL, 0),
(172, 79, 'jkbkj', '2', '2.000', 4, NULL, 0),
(173, 80, 'kjdf', '3000', '0.000', 0, NULL, 0),
(174, 80, 'kjdf', '3000', '0.000', 0, NULL, 0),
(175, 80, 'kjdf', '3000', '1.000', 3000, NULL, 0),
(176, 80, 'fksfj', '3000', '1.000', 3000, NULL, 0),
(177, 80, 'skjfh', '3000', '1.000', 3000, NULL, 0),
(178, 81, 'dfvvfv', '3000', '1.000', 3000, NULL, 0),
(179, 81, 'fsfzz', '3000', '1.000', 3000, NULL, 0),
(180, 81, 'fgvbnm', '3000', '1.000', 3000, NULL, 0),
(181, 81, 'bn bn', '11', '11.000', 121, NULL, 0),
(182, 81, 'hgjhgh', '6', '6.000', 36, NULL, 0),
(183, 81, 'jhj', '7', '7.000', 49, NULL, 0),
(184, 81, '5', '5', '5.000', 25, NULL, 0),
(185, 77, 'gbkjm', '3000', '1.000', 3000, NULL, 0),
(186, 77, 'kml', '3000', '1.000', 3000, NULL, 0),
(187, 77, 'ghb', '3000', '1.000', 3000, NULL, 0),
(188, 82, 'Lavhate wasti -Chinchpur Dadh Road Km 00/000 To 5/915 Earthwork C/S & Qty Statement', '3000', '5.915', 17745, NULL, 0),
(189, 82, 'Sangamner Jorve Dadh Kolhar Road KM (23/350 To 24/800) B.M.,C/S & Quantity Statement', '5000', '1.450', 7250, NULL, 0),
(190, 82, 'Sangamner Shiblapur Road km 06/000 To 11/000 & MPM 1700 m B.M., C/S & Qty Statement', '3000', '6.700', 20100, NULL, 0),
(191, 83, 'Kolhar Belapur Road Km (62/400 to 72/500) B.M. C/S & Qty Statement', '5000', '2.215', 11075, NULL, 0),
(192, 83, 'Puntamba Shrirampur Road Km (29/300 To 34/600) B.M., C/S & Qty Statement', '3000', '4.900', 14700, NULL, 0),
(193, 84, 'Sankrapur To Landewadi Road KM (00/000 To 02/302) Earthwork, C/S and Quantity Statement', '4000', '2.000', 8000, NULL, 0),
(194, 84, 'Lakh To Trimbakpur Road KM (00/000 To 02/445) Earthwork, C/S and Quantity Statement', '4000', '2.445', 9780, NULL, 0),
(195, 84, 'Bhabulgaon-Kombadwadi To Khadakwadi Road KM (00/000 To 04/400)  Earthwork, C/S and Quantity Statement', '4000', '4.400', 17600, NULL, 0),
(196, 84, 'Umbare To Shilegaon Road KM (00/000 To 03/700)  Earthwork, C/S and Quantity Statement', '4000', '3.700', 14800, NULL, 0),
(197, 84, 'Rahuri To Manjari Road KM (25/000 To 27/000)  Earthwork, C/S and Quantity Statement', '4000', '2.000', 8000, NULL, 0),
(198, 84, 'Manori To Ganpatwadi Road KM (00/000 To 02/000)  Earthwork, C/S and Quantity Statement', '4000', '2.000', 8000, NULL, 0),
(199, 84, 'Undirgaon To Naur Road KM (07/500 To 14/200)  Earthwork, C/S and Quantity Statement', '4000', '6.700', 26800, NULL, 0),
(200, 84, 'Rui To Pimpalwadi Road (850m)  Earthwork, C/S and Quantity Statement', '4000', '0.850', 3400, NULL, 0),
(201, 85, 'Gandhi Plot Measurment Survey ', '3000', '1.000', 3000, NULL, 0),
(202, 86, 'Gandhi Plot Measurment Survey ', '3000', '1.000', 3000, NULL, 0),
(203, 87, 'Sinnar Contour Survey & Quantity Survey', '4000', '2.000', 8000, NULL, 0),
(204, 88, 'Rahuri Manjari Road KM 27/000 to 30/000', '4000', '3.000', 12000, NULL, 0),
(205, 88, 'S.R. To  SH 50 Haregaon,Undirgaon Road (SH51) KM 00/000 TO 07/500 B.M. C/S & Qty Statement', '3000', '7.500', 22500, NULL, 0),
(206, 88, 'Rui Pimpalwadi Road KM 20/800 to 21/674 GSB, GRI,GRII,C/S & Qty Statement', '3500', '0.874', 3059, NULL, 0),
(207, 88, 'Rahuri Manjari Road KM 25/000 To 27/000 GSB, GRI,GRII,C/S & Qty Statement', '3500', '2.000', 7000, NULL, 0),
(208, 88, 'Sangamner Loni Road KM 90/300 To 93/100', '6000', '2.800', 16800, NULL, 0),
(209, 88, 'Haregaon Undirgao Naur Road KM 08/400 To 13/000 GSB, GRI,GRII,C/S & Qty Statement', '3500', '4.600', 16100, NULL, 0),
(210, 88, 'Dhanore To Shinde Wasti KM 00/000 To 02/300 Earthwork,C/S & Qty Statement', '4000', '2.300', 9200, NULL, 0),
(211, 89, 'ygfghf', '55', '555.000', 30525, NULL, 0),
(212, 90, 'dd', '4000', '1.000', 4000, NULL, 0),
(213, 91, 'Lavhate wasti -Chinchpur Dadh Road Km 00/000 To 5/915 Earthwork C/S & Qty Statement', '3000', '5.915', 17745, NULL, 0),
(214, 92, 'Sangamner Jorve Dadh Kolhar Road KM (23/350 To 24/800) B.M., C/S and Quantity Statement ', '5000', '1.450', 7250, NULL, 0),
(215, 93, 'Sangamner Shiblapur  Road KM (06/000 To 11/000) & MPM 1700m B.M. C/S & Qty  Statement', '3000', '6.700', 20100, NULL, 0),
(216, 94, 'Mutkhel Plot Survey (10-01-22)', '5000', '1.000', 5000, NULL, 0),
(217, 94, 'Mutkhel Plot Demarcation (11-01-22)', '5000', '1.000', 5000, NULL, 0),
(218, 95, 'Center Line marking & Level Survey', '4500', '1.000', 4500, NULL, 0),
(219, 96, 'Plot Measurment Survey ', '3000', '1.000', 3000, NULL, 0),
(220, 97, 'Pathare,Pravaranagar,Tisgaon,Mandve Road Km 09/620 To 10/290 GSB,G1,G2 Cross Section & Qty Statement', '4000', '0.670', 2680, NULL, 0),
(221, 97, 'Pathare,Pravaranagar,Tisgaon,Mandve Road Km 09/700 To 10/200 Eartwork  Cross Section & Qty Statement', '4000', '0.500', 2000, NULL, 0),
(222, 97, 'Pathare,Pravaranagar,Tisgaon,Mandve Road Km 10/700 To 11/400 Eartwork Cross Section & Qty Statement', '4000', '0.700', 2800, NULL, 0),
(223, 57, 'Ghulewadi Kanifnath Tempal  Plot measurement Survey', '2000', '1.000', 2000, NULL, 0),
(224, 98, 'Murshet  Plot Survey', '5000', '2.000', 10000, NULL, 0),
(225, 99, 'Detail Survey Of P.W.D.Sangamner', '3000', '1.000', 3000, NULL, 0),
(226, 100, 'fdfsdfsdf', '55', '55.000', 3025, NULL, 0),
(227, 101, 'Check survey And Levelling Survey (15 days)', '33', '3.000', 99, NULL, 0),
(228, 102, 'Check survey And Levelling Survey (15 days)', '4', '4.000', 16, NULL, 0),
(229, 103, 'fdvgdfg', '66', '6.000', 396, NULL, 0),
(230, 104, 'abcd', '1', '1.000', 1, NULL, 0),
(231, 105, 'Plot Measurment Survey ', '5160', '1.000', 5160, NULL, 0),
(232, 106, 'Plot Measurment Survey ', '6500', '1.000', 6500, '', 0),
(233, 107, 'Countour Survey ', '5000', '1.000', 5000, NULL, 0),
(234, 108, 'Malegaon To Thakarwasti Km (00/000 To 04/070) Earthwork ,C/S & Qty statement', '4000', '4.070', 16280, NULL, 0),
(235, 108, 'Digambar To Kokanewadi Road (Km 00/000 To 04/300)  Earthwork ,C/S & Qty statement', '4000', '4.300', 17200, NULL, 0),
(236, 108, 'ODR-24 To Katalpur Road  (Km 00/000 To 02/550)  Earthwork ,C/S & Qty statement', '4000', '2.550', 10200, NULL, 0),
(237, 108, 'Panodi To Mandve Road  (Km 36/000 To 37/100)  Earthwork ,C/S & Qty statement', '4000', '1.100', 4400, NULL, 0),
(238, 108, 'MDR-26 To Waghapur,Shedgaon,Ashwi kh. Road (Km 09/000 To 10/450)  Earthwork ,C/S & Qty statement', '2500', '1.450', 3625, NULL, 0),
(239, 108, 'MDR-26 To Waghapur,Shedgaon,Ashwi kh. Road GR1 Km 09/300 To 10/000,GR2 09/000 To 10/450', '2500', '1.450', 3625, NULL, 0),
(240, 108, 'Astgaon Rajuri Road (Km 04/000 To 05/000 & 05/000 To 10/245) Earthwork ,C/S & Qty statement', '4000', '6.245', 24980, NULL, 0),
(241, 108, 'Mamdapur Nandur Road (Km 00/950 To 04/500 ) Earthwork ,C/S & Qty statement', '4000', '3.550', 14200, NULL, 0),
(242, 108, 'Kanoli To Wabale Wasti Road  (Km 00/000 To01/158 ) Earthwork ,C/S & Qty statement', '4000', '1.158', 4632, NULL, 0),
(243, 108, 'Janewadi To kumshet Road (Km 00/000 To 03/000 ) Earthwork ,C/S & Qty statement', '4000', '3.000', 12000, NULL, 0),
(244, 109, 'Deshpande Site Center line Marking (3Visit)', '2000', '3.000', 6000, '', 0),
(245, 109, 'Previous Bill (6 Visit)', '200', '6.000', 1200, '', 0),
(246, 110, 'Kalantri Plot Measurment Survey ', '2000', '1.000', 2000, '', 0),
(247, 111, 'Kale Plot Measurment Survey ', '2000', '1.000', 2000, '', 0),
(248, 112, 'Chandrashekhar Chowk Center Line marking', '2000', '1.000', 2000, '', 0),
(249, 113, 'qqq', '3', '3.000', 9, NULL, 0),
(250, 114, 'aaa', '11', '3.000', 33, NULL, 0),
(251, 115, 'e', '5', '5.000', 25, NULL, 0),
(252, 116, 'erewrwr', '3', '5.000', 15, NULL, 0),
(253, 117, 'ddd', '44', '1.000', 44, NULL, 0),
(254, 118, 'ssf', '344', '44.000', 15136, NULL, 0),
(255, 119, 'Plot Measurment Survey ', '2000', '1.000', 2000, NULL, 0),
(256, 120, 'Devthan to Akole Road (km 25/700 To 29/975 ) Eartwork ,C/S & Qty Statement', '3000', '4.200', 12600, NULL, 0),
(257, 120, 'Devthan to Akole Road (km 25/700 To 29/975 )BM,C/S & Qty Statement', '4000', '4.275', 17100, NULL, 0),
(258, 120, 'Kotul Bramhanwada Road (km 248/400 To 249/200) BM,C/S & Qty Statement', '4000', '0.570', 2280, NULL, 0),
(259, 120, 'Devthan Concrete Road (59 m)', '700', '1.000', 700, NULL, 0),
(260, 121, 'Railway Bridge Stakeout (Ch 93+175)', '4500', '2.000', 9000, NULL, 0),
(261, 122, 'Plot Demarcation S-no 54,57', '3500', '1.000', 3500, NULL, 0),
(262, 123, 'Layout  Demarcation  ', '2000', '2.000', 4000, NULL, 0),
(263, 123, 'Plot Measurment  Survey', '3500', '1.000', 3500, NULL, 0),
(264, 124, 'Plot Measurment Survey ', '3500', '1.000', 3500, NULL, 0),
(265, 125, 'Tangadkar Plot Measurment Survey ', '2000', '1.000', 2000, NULL, 0),
(266, 126, 'Bridge Alignment Survey ', '4000', '1.000', 4000, NULL, 0),
(267, 126, 'Bridge Lineout ', '4000', '2.000', 8000, NULL, 0),
(268, 127, 'Plot Measurment Survey ', '3000', '1.000', 3000, NULL, 0),
(269, 128, 'Plot Measurment & Countour Survey (Ghulewadi)', '2000', '1.000', 2000, NULL, 0),
(270, 128, 'Plot & Building Demarcation (Ghulewadi)', '4000', '1.000', 4000, NULL, 0),
(271, 128, 'Plot Measurment & Countour Survey (Gandhi Chowk)', '2000', '1.000', 2000, NULL, 0),
(272, 129, 'Plot Measurment & Countour Survey ', '1000', '14.000', 14000, NULL, 0),
(273, 130, 'Babhaleshwar To Shrirampur Road Km 149/000 To 158/000 Earthwork ,C/S & Qty Statement', '1000', '9.000', 9000, NULL, 0),
(274, 130, 'Babhaleshwar To Shrirampur Road Km 149/000 To 158/000 Box Cutting & Area Statement ', '1000', '9.000', 9000, NULL, 0),
(275, 131, 'Khokar To karegaon Road Km 00/000 To 04/000 Earthwork ,C/S & Qty Statement', '4000', '4.000', 16000, NULL, 0),
(276, 131, 'Khokar To karegaon Road Km 00/000 To 01/000 & 02/000 To 04/000 GSB,GR1,GR2 & BBM C/S & Qty Statement', '3500', '3.000', 10500, NULL, 0),
(277, 131, 'Khokar To karegaon Road Km 00/000 To 01/000 & 02/000 To 04/000 Box Cutting C/S & Qty Statement', '2000', '3.000', 6000, NULL, 0),
(278, 135, 'efsdf', '34', '34.000', 1156, NULL, 0),
(279, 136, 'Levels & check survey(15 days)', '3500', '15.000', 52500, NULL, 0),
(280, 138, 'Level & Check Survey (15 Days)', '3500', '15.000', 52500, NULL, 0),
(281, 139, 'Kotul Nachanthav Road 500 m Cutting C/s & Qty  Statement', '1500', '1.000', 1500, NULL, 0),
(282, 106, 'Plot Demarcation ', '2000', '2.000', 4000, '', 0),
(283, 140, 'Otur Plot Measurment Survey & Lineout', '4000', '1.000', 4000, NULL, 0),
(284, 140, 'Ghodegaon Police Station Survey ', '4000', '1.000', 4000, NULL, 0),
(285, 141, 'Nilwande Canal Survey (CH 00+000 To 00+440)', '4000', '1.000', 4000, '2021-10-23', 0),
(286, 141, 'Nilwande Canal Survey (CH 00+440 To 01+160)', '4000', '1.000', 4000, '2021-12-11', 0),
(287, 141, 'Nilwande Canal Survey (CH 04+320 To 05+840)', '4000', '1.000', 4000, '2022-02-18', 0),
(288, 141, 'Sakuri Rahata Concrete Road Initial, WBM Levels', '4000', '0.830', 3320, '2021-12-20', 0),
(289, 141, 'Sakuri Rahata Concrete Road Initial Concrete C/S & Qty Statement', '4000', '0.830', 3320, '2021-12-20', 0),
(290, 141, 'Umbari Balapur Bridge Road At Site  Umbari Gaon C/S & Qty Statement Km 06/400 To 07/090', '4000', '0.690', 2760, '2022-01-05', 0),
(291, 141, 'Jeur kumbhari ,Pimpalgaon Depa Road Earthwork C/S & Qty Statement Km 109/100 To 112/500', '2000', '3.400', 6800, '2022-03-22', 0),
(292, 142, 'Plot Measurment Survey ', '4000', '1.000', 4000, NULL, 0),
(293, 142, 'Line Out Survey ', '4000', '1.000', 4000, NULL, 0),
(294, 143, 'Plot Measurment Survey (Mohasin Shaikh)', '4000', '1.000', 4000, NULL, 0),
(295, 143, 'Contour Survey (18 Oct)', '4000', '1.000', 4000, NULL, 0),
(296, 143, 'Line Out Survey (22 Oct)', '4000', '1.000', 4000, NULL, 0),
(297, 143, 'Line Out Survey (21 Dec)', '4000', '1.000', 4000, NULL, 0),
(298, 143, 'Sangamner Daji Plot Lineout (3 jane)', '2000', '1.000', 2000, NULL, 0),
(299, 144, 'ddfgdf', '645', '64.000', 41280, NULL, 0),
(300, 145, 'dsfd', '44', '4.000', 2022, NULL, 0),
(301, 146, 'fdgfdgf', '5', '5.000', 2022, NULL, 0),
(302, 147, 'gh', '5', '5.000', 25, '2022-05-12', 0),
(303, 148, 'Plot Measurment Survey (Mohasin Shaikh)', '3800', '1.000', 3800, '2021-09-30', 0),
(304, 148, 'Contour Survey ', '3800', '1.000', 3800, '2021-10-18', 0),
(305, 148, 'Line Out Survey ', '3800', '1.000', 3800, '2021-10-22', 0),
(306, 148, 'Line Out Survey ', '3800', '1.000', 3800, '2021-12-21', 0),
(307, 148, 'Sangamner Daji Plot Lineout ', '2000', '1.000', 2000, '2022-01-03', 0),
(308, 149, 'Plot Measurment Survey ', '3700', '1.000', 3700, '2022-03-27', 0),
(309, 149, 'Plot Measurment Survey & Demarcation ', '3700', '1.000', 3700, '2022-04-04', 0),
(310, 149, 'Plot Measurment Survey & Demarcation ', '3700', '1.000', 3700, '2022-04-30', 0),
(311, 149, 'Plot Measurment Survey & Demarcation ', '3700', '1.000', 3700, '2022-05-15', 0),
(312, 150, 'Plot Measurment Survey ', '4500', '1.000', 4500, '2022-04-01', 0),
(313, 150, 'Plot Measurment Survey ', '4500', '1.000', 4500, '2022-04-20', 0),
(314, 151, 'Plot Measurment Survey ', '2000', '1.000', 2000, '2022-02-13', 0),
(315, 151, 'Line Out Survey ', '2000', '1.000', 2000, '2022-05-07', 0),
(316, 152, 'Plot Measurment Survey (Company Plot)', '3000', '1.000', 3000, '2022-05-27', 0),
(317, 153, 'Plot Measurment Survey ', '2500', '1.000', 2500, '2022-03-28', 0),
(318, 154, 'Plot Measurment Survey ', '5000', '1.000', 5000, '2022-05-18', 0),
(319, 155, 'Plot Measurment Survey ', '3000', '1.000', 3000, '2022-03-14', 0),
(320, 156, 'Plot Measurment & Countour Survey ', '2000', '1.000', 2000, '2021-12-31', 0),
(321, 156, 'Building Demarcation ', '4000', '1.000', 4000, '2022-03-07', 0),
(322, 157, 'Plot Measurment & Countour Survey ', '2000', '1.000', 2000, '2022-03-02', 0),
(323, 158, 'Plot Measurment & Countour Survey ', '4000', '1.000', 4000, '2021-10-14', 0),
(324, 158, 'Building Demarcation ', '4000', '1.000', 4000, '2021-11-02', 0),
(325, 158, 'Countour Survey', '4000', '1.000', 4000, '2021-11-19', 0),
(326, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(327, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(328, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(329, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(330, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(331, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(332, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(333, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(334, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(335, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(336, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(337, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(338, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(339, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(340, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(341, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(342, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(343, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(344, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(345, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(346, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(347, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(348, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(349, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(350, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(351, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(352, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(353, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(354, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(355, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(356, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(357, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(358, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(359, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(360, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(361, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(362, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(363, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(364, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(365, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(366, 60, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '', 0),
(367, 159, 'Plot Measurment & Countour Survey ', '4000', '1.000', 4000, '2021-10-14', 0),
(368, 159, 'Building Demarcation ', '4000', '1.000', 4000, '2021-11-02', 0),
(369, 159, 'Countour Survey', '4000', '1.000', 4000, '2021-11-19', 0),
(370, 159, 'Quantity Adjustment', '1000', '1.000', 1000, '2022-04-21', 0),
(371, 160, 'Dhulwad Road Survey', '4000', '1.000', 4000, '2021-06-02', 0),
(372, 160, 'Dhulwad  Contour', '3000', '1.000', 3000, '2021-06-02', 0),
(373, 160, 'Jai jawan Chowk Indiranagar ', '4000', '0.500', 2000, '2021-04-22', 0),
(374, 160, 'Bhokar Bridge Survey', '4000', '1.000', 4000, '2022-05-14', 0),
(375, 161, 'Plot Measurment Survey (Gunjalwadi S.No.124)', '6000', '1.000', 6000, '2022-04-08', 0),
(376, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(377, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(378, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(379, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(380, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(381, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(382, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(383, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(384, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(385, 150, 'Plot Demarcation ', '2500', '1.000', 2500, '', 0),
(386, 162, 'Aurangabad  62', '5000', '0.950', 4750, '2022-04-24', 0),
(387, 162, 'Aurangabad  91', '5000', '0.530', 2650, '2022-04-24', 0),
(388, 162, 'Aurangabad  45 MIT College To Khandoba Temple', '5000', '0.760', 3800, '2022-04-24', 0),
(389, 162, 'Pratap Nagar ', '5000', '0.560', 2800, '2022-04-25', 0),
(390, 162, 'In Front Of MIT College', '5000', '2.415', 12075, '2022-04-25', 0),
(391, 163, 'Karhe Nimon Road Km 00/800 To 05/000 GSB GR1,GR2 C/S & Qty Statement', '3500', '4.200', 14700, '2022-06-11', 0),
(392, 163, 'Sawarchol To Nimgaon Bk. Km 39/730 To 45/000 GSB GR1,GR2 C/S & Qty Statement', '3500', '5.270', 18445, '2022-07-22', 0),
(393, 163, 'Sawarchol To Nimgaon Bk. Km 39/730 To 45/000 Eartwork  C/S & Qty Statement', '4000', '5.270', 21080, '2022-06-23', 0),
(394, 141, 'Kopargaon Padhegaon  Road km 00/000 To 04/400 BM C/S & Qty Statement', '2500', '4.400', 11000, '', 0),
(395, 141, 'Kopargaon Padhegaon  Road km 00/000 To 04/400 BM C/S & Qty Statement', '2500', '4.400', 11000, '', 0),
(396, 141, 'Kopargaon Padhegaon  Road km 00/000 To 04/400 BM C/S & Qty Statement', '2500', '4.400', 11000, '', 0),
(397, 141, 'Kopargaon Padhegaon  Road km 00/000 To 04/400 BM C/S & Qty Statement', '2500', '4.400', 11000, '', 0),
(398, 141, 'Kopargaon Padhegaon  Road km 00/000 To 04/400 BM C/S & Qty Statement', '2500', '4.400', 11000, '', 0),
(399, 141, 'Kopargaon Padhegaon  Road km 00/000 To 04/400 BM C/S & Qty Statement', '2500', '4.400', 11000, '', 0),
(400, 164, 'Arampur ', '3000', '1.000', 3000, '2022-05-24', 0),
(401, 164, 'Chincholi  Gurav', '5000', '1.000', 5000, '2022-05-25', 0),
(402, 164, 'kasare', '5000', '2.000', 10000, '2022-06-17', 0),
(403, 164, 'Chichpur ', '5000', '1.000', 5000, '2022-06-27', 0),
(404, 164, 'Mirpur', '5000', '1.000', 5000, '2022-06-29', 0),
(405, 164, 'Mirpur', '5000', '1.000', 5000, '2022-06-30', 0),
(406, 164, 'Sadatpur', '5000', '1.000', 5000, '2022-07-01', 0),
(407, 164, 'Chichpur ', '5000', '1.000', 5000, '2022-07-04', 0),
(408, 164, 'Chichpur ', '5000', '1.000', 5000, '2022-07-05', 0),
(409, 164, 'Wadzari Bk', '5000', '1.000', 5000, '2022-07-06', 0),
(410, 164, 'Wadzari Kh', '5000', '1.000', 5000, '2022-06-20', 0),
(411, 161, ',kghhk', '2000', '1.000', 2000, '', 0),
(412, 161, ';gh,', '2000', '1.000', 2000, '', 0),
(413, 161, ',kghhk', '2000', '1.000', 2000, '', 0),
(414, 161, ';gh,', '2000', '1.000', 2000, '', 0),
(415, 161, ',kghhk', '2000', '1.000', 2000, '', 0),
(416, 161, ';gh,', '2000', '1.000', 2000, '', 0),
(417, 76, 'cbvb', '200', '2.000', 400, '2022-07-18', 0),
(418, 76, 'bmm', '100', '2.000', 200, '2022-07-18', 0),
(419, 76, 'gv', '100', '1.000', 100, '2022-07-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `gst_no` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerId`, `name`, `mobile`, `gst_no`, `email`, `address`, `status`) VALUES
(1, 'KALE SHANTARAM RAVBA', '7517910509', '124Test', 'test1', 'POKHARI BALESHWAR', 0),
(4, 'Soma', '67676776766', '', 'soma@gf.fg', 'kgjg', 0),
(7, 'Kapalya', '', '', '', '', 0),
(8, 'Ashtamurti Developers & contruction  Pvt ltd', '', '', '', '', 0),
(9, 'Nirman construction', '', '', '', 'Sangamner', 0),
(10, 'Mutkule Namdeo', '', '', '', '', 0),
(11, 'fsfsdfsdfs', '', '', '', '', 0),
(12, 'fdbgdfgdfgsdgsdg', '', '', '', '', 0),
(13, 'rgfdgds', '', '', '', '', 0),
(14, 'MS. K.K. THORAT', '', '', '', '', 0),
(15, 'M/s. Prakash Electrical Engineer Corporation.', '', '', '', '', 0),
(16, 'aviansh', '', '', '', '', 0),
(17, 'Tirupati Construcorp Pvt. Ltd', '', '', 'tirupaticcpl@gmail.com', '', 0),
(19, 'trht', '', '', '', '', 0),
(20, 'ddfgdfg', '', '', '', '', 0),
(21, 'new customer 1', '', '', '', '', 0),
(22, 'cust 11111', '', '', '', '', 0),
(23, 'M.A.D.C. LTD.', '', '', '', '', 0),
(24, 'M.A.D.C. LTD <br> Shirdi Airport', '', '', '', '', 0),
(25, 'ANCD 111', '', '', '', '', 0),
(26, 'Sai Siddhi Enterprises', '', '', '', '', 0),
(27, 'N.K.Gade Sangamner', '', '', '', '', 0),
(28, 'hgff', '', '', '', '', 0),
(29, 'Nirmiti Construction,Sangamner', '', '27AARPT1724B1ZO', '', 'Sangamner', 0),
(30, 'M/S. Prakash Electricals Engineer Corp.', '', '', '', '', 0),
(31, 'SWADESH PROPRERTIES', '', '', '', 'Samnapur ', 0),
(32, 'Ashtavinayak Park', '', '', '', '', 0),
(33, 'A.C. Shaikh', '', '', '', '', 0),
(34, 'Shree sai Devlopers ', '', '', '', '', 0),
(35, 'N K Gade', '', '', '', '', 0),
(36, 'Test', '11111', '124Test', 'test1', 'ppp', 0),
(37, 'ganesh gavande', '', '', '', '', 0),
(38, 'dsdsfdsg', '', '', '', '', 0),
(39, 'Mr. DIPAK DHAVNE', '', '', '', 'Loni', 0),
(40, 'Grampanchayat Ghulewadi,Sangamner', '', '', '', '', 0),
(41, 'Pansare Ganesh ', '', '', '', '', 0),
(42, 'M/S. S.K.Yewale & Co. Sangamner', '', '27AAMFS8133N1ZH', '', 'Sangamner', 0),
(43, 'Mr. Sampat Kandekar', '', '', '', '', 0),
(44, 'Jagtap Infraventures India Pvt. Ltd.  Kolhar kd.', '', '', '', '', 0),
(45, 'Dhavane Sanjay ', '', '', '', '', 0),
(46, 'hhhhhh', '', '', '', '', 0),
(47, 'hhhhhh', '', '', '', '', 0),
(48, 'hhhh', '', '', '', '', 0),
(49, 'hhhh', '', '', '', '', 0),
(50, 'B.N.Khemnar', '', '', '', '', 0),
(51, 'Ghuge Sanjay ', '', '', '', '', 0),
(52, 'M/S. A.C.SHAIKH ', '', '', '', '', 0),
(53, 'S.L.Sangale ', '', '', '', 'Sangamner', 0),
(54, 'The Eternal Trust,Nirmal Dham Ashram, Awadgaon Tal- Rahuri Dist -Ahmednagar', '', '', '', '', 0),
(55, 'The Life Eternal Trust,Nirmal Dham Ashram,Aradgaon Tal-Rahuri Dist-Ahmednagar', '', '', '', '', 0),
(56, 'M.K. Construction', '', '', '', '', 0),
(57, 'M/S. A.C.Shaikh Contractor ', '', '27AANFA2734J1ZB', '', 'Ahmednagar', 0),
(58, 'S.V.Katore', '', '27AIXPK9040M1ZE', '', 'Sangamner', 0),
(59, 'N.K.Gade ', '', '27AACFN9277G1ZW', '', 'Sangamner', 0),
(60, 'Chandragupt Construction', '', '', '', 'Rahata', 0),
(61, 'Jagtap Infraventures India Pvt. Ltd.  ', '', '27AADCJ6828P1ZV', '', 'Kolhar Kh.', 0),
(62, 'SWADESH PROPERTIES', '', '', '', 'Sangamner', 0),
(63, 'Gholap Sagar', '', '', '', 'Kolhar Kh.', 0),
(64, 'M/S. N.K.Gade', '', '27AACFN9277G1ZW', '', 'Sangamner', 0),
(65, 'M/s. Jai Siddhesh Construction JV', '', '27AAEAJ0593J1ZG', '', 'Ahmednagar', 0),
(66, 'Kahandal Pritam', '', '', '', '', 0),
(67, 'Executive Engineer', '', '', '', 'P.W.D.Sangamner', 0),
(68, 'qawe', '111', 'qqq', 'test1', 'qqq', 0),
(69, 'qqq', '', '', '', '', 0),
(70, 'abcd', '11223366', 'abcd', 'abcd', 'abcdcity', 0),
(71, 'Bhor Ishwar Bhausaheb', '', '', '', 'Ambi khalsa', 0),
(72, 'S.R.Thorat Milk Products Pvt.Ltd.', '', '27AAECS8818F1Z4', '', 'Sangamner', 0),
(73, 'Shaikh Mohasin', '', '27AABNUPG2300P1Z', '', 'Sangamner', 0),
(74, 'M/S. Sai Construction', '', '27ABSFS7967H1Z6', '', 'Sangamner', 0),
(75, 'M/s. Velocity Infraprojects', '', '27AASFV5828R1ZW', '', 'Kothrud,Pune', 0),
(76, 'Londhe Dipak', '', '', '', 'Loni', 0),
(77, 'Konarc Architect', '', '', '', 'Sangamner', 0),
(78, 'Supreme Empire Pvt.Ltd.', '918010608436', '', '', 'Dapoli', 0),
(79, 'aaa', '', '', '', '', 0),
(80, 'Pansare Akshay ', '', '', '', 'Sangamner', 0),
(81, 'Katore Kishor ', '', '27AYPPK0188G2Z3', '', 'Sangamner', 0),
(82, 'fdgdfgdf', '', '', '', '', 0),
(83, 'dgfdg', '', '', '', '', 0),
(84, 'gfgfgdf', '', '', '', '', 0),
(85, 'cbgv', '', '', '', '', 0),
(86, 'K K Construction', '', '27AYPPK0188G2Z3', '', 'Sangamner', 0),
(87, 'More V.B.', '', '', '', 'Sangamner', 0),
(88, 'B.B.More Engineers & Contractors', '', '27CUCPM5347L1Z7', '', 'Sangamner', 0),
(89, 'Gunjawadi Grampanchayat', '', '', '', 'Gunjalwadi', 0),
(90, 'Civil Techno Designers & Consultants', '', '', '', 'Aurangabad ', 0),
(91, 'Adhatrao Vikrant', '9511298070', '', '', 'Ahmednagar', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginId` int(11) NOT NULL,
  `firstName` varchar(250) NOT NULL,
  `lastName` varchar(250) NOT NULL,
  `emailId` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `approveStatus` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginId`, `firstName`, `lastName`, `emailId`, `password`, `approveStatus`) VALUES
(1, 'Kapalya', 'yz', 'kapalya@gmail.com', 'kapalya', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting`
--
ALTER TABLE `accounting`
  ADD PRIMARY KEY (`accId`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`billId`);

--
-- Indexes for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting`
--
ALTER TABLE `accounting`
  MODIFY `accId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `billId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `bill_items`
--
ALTER TABLE `bill_items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
