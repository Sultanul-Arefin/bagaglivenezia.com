-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 07, 2019 at 02:35 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bagagliv_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Kuddus', 'bagag@bagaglivenezia.com', 'bagag@bagaglivenezia.com');

-- --------------------------------------------------------

--
-- Table structure for table `bagagliv_payments`
--

CREATE TABLE `bagagliv_payments` (
  `id` int(255) NOT NULL,
  `dropDate` date DEFAULT '0000-00-00',
  `dropTime` time DEFAULT '00:00:00',
  `pickDate` date DEFAULT '0000-00-00',
  `pickTime` time DEFAULT '00:00:00',
  `luggage` int(11) NOT NULL,
  `location` varchar(80) NOT NULL,
  `email` varchar(44) NOT NULL,
  `total` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagagliv_payments`
--

INSERT INTO `bagagliv_payments` (`id`, `dropDate`, `dropTime`, `pickDate`, `pickTime`, `luggage`, `location`, `email`, `total`) VALUES
(25, '2019-05-22', '09:25:00', '2019-05-24', '08:00:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, ', 'mrahmansayed@gmail.com', '16.5'),
(23, '2019-05-23', '04:20:00', '2019-05-24', '07:55:00', 4, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b', 'mrahmansayed@gmail.com', '32.5'),
(24, '2019-05-23', '04:40:00', '2019-05-24', '08:00:00', 3, 'Santa Lucia (Calle de la Misericordia 366b, ', 'mrahmansayed@gmail.com', '12.5'),
(21, '2019-05-23', '08:00:00', '2019-05-25', '07:30:00', 1, 'Piazzale Roma', 'news.dhaka18@gmail.com', '12.5'),
(22, '2019-05-22', '08:50:00', '2019-05-23', '09:05:00', 1, 'Santa Lucia', 'news.dhaka18@gmail.com', '4.5'),
(26, '2019-05-22', '09:28:00', '2019-05-24', '09:28:00', 3, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'mrahmansayed@gmail.com', '36.5'),
(27, '2019-05-23', '09:05:00', '2019-05-23', '01:00:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'mrahmansayed@gmail.com', '8.5'),
(28, '2019-05-23', '08:00:00', '2019-05-23', '09:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'baggaglivenezia@gmail.com', '4.5'),
(29, '2019-05-23', '08:00:00', '2019-05-23', '09:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'baggaglivenezia@gmail.com', '1'),
(30, '2019-05-23', '08:00:00', '2019-05-23', '09:05:00', 3, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'sadiamaria03@gmail.com', '1'),
(31, '2019-05-23', '08:00:00', '2019-05-24', '09:05:00', 1, 'Choose Store', 'sadiamaria03@gmail.com', '1'),
(32, '2019-05-30', '08:40:00', '2019-05-24', '07:40:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'baggaglukuddus@gmail.com', '28.5'),
(33, '2019-05-23', '09:05:00', '2019-05-23', '07:50:00', 3, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'baggaglikuddus@gmail.com', '12.5'),
(34, '2019-05-23', '09:05:00', '2019-05-23', '09:55:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'baggaglikuddus@gmail.com', '4.5'),
(35, '2019-05-23', '03:35:00', '2019-05-24', '05:45:00', 2, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'nnilanjana255@gmail.com', '16.5'),
(36, '2019-05-23', '01:25:00', '2019-05-24', '01:25:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'baggaglikuddus@gmail.com', '8.5'),
(37, '2019-05-25', '11:10:00', '2019-05-26', '00:00:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'baggaglukuddus@gmail.com', '4.5'),
(38, '2019-05-25', '09:15:00', '2019-05-25', '07:15:00', 1, 'Choose Store', 'baggaglukuddus@gmail.com', '4.5'),
(39, '2019-05-25', '00:00:00', '2019-05-25', '07:40:00', 2, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'baggaglikuddus@gmail.com', '8.5');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`) VALUES
(25, '36', '0B247259U6119861R', 12.50, 'EUR', 'Completed'),
(26, '37', '2J131589VW248172X', 52.50, 'EUR', 'Completed'),
(27, '44', '58343968RP932510G', 8.50, 'EUR', 'Completed'),
(28, '45', '44K40891497445505', 8.50, 'EUR', 'Completed'),
(30, '59', '3B73628425437322D', 8.50, 'EUR', 'Completed'),
(36, '65', '7JV89761KK5110708', 4.50, 'EUR', 'Completed'),
(40, '71', '6BD6677240533591N', 4.50, 'EUR', 'Completed'),
(45, '76', '27W36868G3978253A', 4.50, 'EUR', 'Completed'),
(51, '92', '5M440382SU527814A', 4.50, 'EUR', 'Completed'),
(56, '106', '5GP21356UN9814302', 4.50, 'EUR', 'Completed'),
(57, '107', '4TS67751D38865340', 4.50, 'EUR', 'Completed'),
(58, '107', '0MM990298P544704M', -4.50, 'EUR', 'Refunded'),
(59, '106', '1Y921877C6830573B', -4.50, 'EUR', 'Refunded'),
(60, '92', '9C398820H7893284C', -4.50, 'EUR', 'Refunded'),
(61, '', '8AP98223D5340514S', 4.00, 'EUR', 'Completed'),
(62, '109', '037509239M797772E', 24.50, 'EUR', 'Completed'),
(63, '110', '96L49081M5537211J', 4.50, 'EUR', 'Completed'),
(64, '', '7AS76225Y7501044G', 12.00, 'EUR', 'Completed'),
(65, '117', '4A429251BH906820N', 8.50, 'EUR', 'Completed'),
(66, '118', '3L483392YE452953J', 12.50, 'EUR', 'Completed'),
(67, '', '82F12946CY675724K', 12.00, 'EUR', 'Completed'),
(68, '', '80G24395G4603664L', 8.00, 'EUR', 'Completed'),
(69, '120', '86W28247N0426425B', 40.50, 'EUR', 'Completed'),
(70, '121', '60778349UP761081J', 40.50, 'EUR', 'Completed'),
(71, '', '6KX04118JW5219634', 20.00, 'EUR', 'Completed'),
(72, '122', '98B36202CF7617124', 4.50, 'EUR', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `payment_transaction`
--

CREATE TABLE `payment_transaction` (
  `id` int(11) NOT NULL,
  `transaction_id` text NOT NULL,
  `amount` int(11) NOT NULL,
  `currency_type` text NOT NULL,
  `item_number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `piazzaleroma_payments`
--

CREATE TABLE `piazzaleroma_payments` (
  `id` int(255) NOT NULL,
  `dropDate` date NOT NULL,
  `dropTime` time NOT NULL,
  `pickDate` date NOT NULL,
  `pickTime` time NOT NULL,
  `luggage` int(11) NOT NULL,
  `location` varchar(80) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(44) NOT NULL,
  `total` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piazzaleroma_payments`
--

INSERT INTO `piazzaleroma_payments` (`id`, `dropDate`, `dropTime`, `pickDate`, `pickTime`, `luggage`, `location`, `name`, `email`, `total`) VALUES
(13, '2019-05-30', '15:05:00', '2019-05-30', '18:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 1),
(2, '2019-05-25', '03:30:00', '2019-05-26', '03:30:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '', 'fahimsultan4@gmail.com', 8),
(3, '2019-05-25', '09:05:00', '2019-05-25', '03:33:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '', 'fahimsultan4@gmail.com', 4),
(4, '2019-05-25', '04:08:00', '2019-05-25', '06:50:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '', 'fahimsultan4@gmail.com', 4),
(5, '2019-05-25', '05:09:00', '2019-05-26', '05:09:00', 6, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '', 'news.dhaka18@gmail.com', 48),
(6, '2019-05-25', '09:05:00', '2019-05-30', '01:25:00', 14, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 337),
(7, '2019-05-25', '838:59:59', '2019-05-25', '838:59:59', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 5),
(8, '2019-05-26', '13:05:25', '2019-05-27', '13:05:25', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Dhaka 18', 'news.dhaka18@gmail.com', 9),
(9, '2019-05-28', '08:05:00', '2019-05-28', '08:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'alamin', 'baggaglikuddus@gmail.com', 5),
(10, '2019-05-27', '00:01:00', '2019-05-28', '00:01:00', 7, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Salam', 'abdulkuddusgold@yahoo.com', 0),
(11, '2019-05-27', '08:05:20', '2019-05-29', '08:05:05', 6, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Salam', 'baggaglikuddus@gmail.com', 49),
(12, '2019-05-28', '16:05:40', '2019-05-28', '19:05:45', 2, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Kuddus', 'baggaglikuddus@gmail.com', 9),
(14, '2019-05-29', '13:05:00', '2019-05-30', '19:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'kus', 'baggaglivenezia@gmail.com', 9),
(15, '2019-05-29', '13:05:00', '2019-05-29', '19:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'kus', 'baggaglivenezia@gmail.com', 5),
(16, '2019-05-30', '13:05:00', '2019-05-30', '19:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'mmmmmmmmmmmmmmmmmmoooooooooooooooooiinfo', 'pdkuddus@gmail.com', 5),
(17, '2019-05-30', '18:05:00', '2019-05-31', '18:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(18, '2019-05-31', '13:05:00', '2019-06-01', '13:05:00', 7, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 1),
(19, '2019-05-31', '13:05:00', '2019-06-01', '13:05:00', 7, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 1),
(20, '2019-05-31', '13:05:00', '2019-06-01', '13:05:00', 7, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 1),
(21, '2019-05-31', '18:05:00', '2019-06-01', '17:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'bvg', 'baggaglikuddus@gmail.com', 1),
(22, '2019-05-31', '09:05:00', '2019-05-31', '07:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Kashem', 'baggaglukuddus@gmail.com', 1),
(23, '2019-05-31', '09:05:00', '2019-05-31', '19:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'sultanularefinmail@gmail.com', 5),
(24, '2019-05-31', '09:05:00', '2019-05-31', '19:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 5),
(25, '2019-05-31', '09:05:00', '2019-05-31', '19:05:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 1),
(26, '2019-05-31', '09:05:00', '2019-05-31', '19:05:00', 2, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(28, '2019-06-02', '19:06:00', '2019-06-02', '20:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Salam', 'abdulkuddusgold@yahoo.com', 5),
(29, '2019-06-02', '19:06:00', '2019-06-03', '19:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'yjhyth', 'baggaglikuddus@gmail.com', 5),
(30, '2019-07-06', '09:06:00', '2019-06-26', '16:06:00', 5, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Dan', 'weijfoll@gmail.com', -180),
(31, '2019-07-06', '09:06:00', '2019-07-06', '16:06:00', 5, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Dan', 'weijfoll@gmail.com', -180),
(32, '2019-06-07', '09:06:00', '2019-06-07', '16:06:00', 5, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sayed', 'mrahmansayed@gmail.com', 21),
(33, '2019-07-01', '12:06:00', '2019-07-01', '13:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sayeam', 'mrahmansayed@gmail.com', 5),
(34, '2019-06-05', '03:06:00', '2019-06-06', '19:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Xyyy', 'baggaglikuddus@gmail.com', 9),
(35, '2019-06-04', '19:06:00', '1970-01-01', '19:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'alamin', 'baggaglikuddus@gmail.com', 0),
(36, '2019-06-05', '09:06:00', '2019-06-05', '18:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'alamin', 'baggaglikuddus@gmail.com', 5),
(37, '2019-07-14', '09:06:00', '2019-07-14', '15:06:00', 3, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'CARINA', 'lagocarina@gmail.com', 13),
(38, '2019-06-05', '12:06:00', '2019-06-05', '19:06:00', 5, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Katherine Porto', 'katherineportop@gmail.com', 21),
(39, '2019-06-10', '10:06:00', '2019-06-10', '14:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Eward Ferrell', 'ferrelled@aol.com', 5),
(40, '2019-06-09', '08:06:00', '2019-06-10', '11:06:00', 4, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Anatoliy Rachynskyy', 'motorshell@gmail.com', 33),
(41, '2019-06-09', '08:06:00', '2019-06-10', '11:06:00', 4, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Anatoliy Rachynskyy', 'motorshell@gmail.com', 33),
(42, '2019-06-09', '08:06:00', '2019-06-10', '11:06:00', 4, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Anatoliy Rachynskyy', 'motorshell@gmail.com', 33),
(43, '2019-06-09', '08:06:00', '2019-06-10', '11:06:00', 4, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Anatoliy Rachynskyy', 'motorshell@gmail.com', 33),
(44, '2019-06-09', '08:06:00', '2019-06-10', '11:06:00', 4, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Anatoliy Rachynskyy', 'motorshell@gmail.com', 33),
(45, '2019-06-11', '18:06:00', '2019-06-14', '08:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'alamin', 'abdulkuddusgold@yahoo.com', 17),
(46, '2019-06-11', '15:06:00', '2019-06-12', '14:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Kuddus', 'pdkuddus@gmail.com', 9),
(47, '2019-06-28', '19:06:00', '2019-06-28', '08:06:00', 2, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'thurt6', 'baggaglikuddus@gmail.com', 9),
(48, '2019-06-22', '15:06:00', '2019-06-23', '14:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(49, '2019-06-15', '15:06:00', '2019-06-16', '14:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(50, '2019-06-11', '13:06:00', '2019-06-29', '19:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Kuddus', 'pdkuddus@gmail.com', 77),
(51, '2019-06-12', '09:06:00', '2019-06-13', '13:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(52, '2019-08-18', '13:06:00', '2019-08-21', '15:06:00', 7, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'bbb', 'bmmh_@hotmail.com', 0),
(53, '2019-06-13', '09:06:00', '2019-06-14', '09:06:00', 1, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(54, '2019-06-13', '19:06:00', '2019-06-13', '09:06:00', 5, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 21),
(55, '2019-06-13', '08:06:00', '2019-06-13', '19:06:00', 3, 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', 'Subhanir S Chitnis', 'chitniss@gmail.com', 13);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive',
  `dropDate` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `dropTime` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `pickDate` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `pickTime` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `luggage` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `order_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `status`, `dropDate`, `dropTime`, `pickDate`, `pickTime`, `email`, `location`, `luggage`, `order_created_at`) VALUES
(36, 'Christopher Mann', 12.50, 1, '06/20/2019', '10:30 am', '06/20/2019', '1:00 pm', 'chris@domus.org.uk', 'Piazzale Roma (Rio TerÃ  Santâ€™Andrea 468b, 30135 Venice)', '3', '2019-06-26 09:41:42'),
(37, 'Raymond Ma', 52.50, 1, '06/20/2019', '11:00 am', '06/20/2019', '7:00 pm', 'r2ymondma@gmail.com', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '13', '2019-06-26 09:41:42'),
(43, 'Thu Giang Nguyen', 8.50, 1, '06/23/2019', '8:00 am', '06/23/2019', '11:00 am', 'nguyenthugiang@seznam.cz', 'Piazzale Roma (Rio TerÃ  Santâ€™Andrea 468b, 30135 Venice)', '2', '2019-06-26 09:41:42'),
(44, 'Thu Giang Nguyen', 8.50, 1, '06/23/2019', '8:00 am', '06/23/2019', '11:05 am', 'nguyenthugiang@seznam.cz', 'Piazzale Roma (Rio TerÃ  Santâ€™Andrea 468b, 30135 Venice)', '2', '2019-06-26 09:41:42'),
(45, 'Kuddus', 8.50, 1, '06/22/2019', '7:30 pm', '06/22/2019', '8:00 am', 'pdkuddus@gmail.com', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '2', '2019-06-26 09:41:42'),
(59, 'Elisa Zhan', 8.50, 1, '06/27/2019', '9:05 am', '06/27/2019', '6:40 pm', 'elisazhan348@gmail.com', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '2', '2019-06-27 04:47:46'),
(65, 'Kuddus', 4.50, 1, '06/27/2019', '6:50 pm', '06/27/2019', '8:00 am', 'pdkuddus@gmail.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-27 12:35:15'),
(71, 'Kuddus', 4.50, 1, '06/28/2019', '7:55 pm', '06/28/2019', '8:00 am', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-28 08:10:52'),
(76, 'ghff', 4.50, 1, '06/28/2019', '3:35 pm', '06/28/2019', '8:00 am', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-28 10:31:51'),
(78, 'ghff', 4.50, 1, '06/29/2019', '12:49 pm', '06/29/2019', '6:45 pm', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-28 10:49:57'),
(92, 'Kuddus', 4.50, 1, '06/29/2019', '02:00', '06/29/2019', '06:00', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-29 11:58:01'),
(101, 'Kashem', 4.50, 1, '06/29/2019', '04:00', '06/29/2019', '07:00', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-29 14:23:49'),
(102, 'Kuddus', 4.50, 1, '06/29/2019', '04:00', '06/29/2019', '', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-29 14:30:16'),
(103, 'Kuddgff', 4.50, 1, '06/29/2019', '04:00', '06/29/2019', '08:00', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-29 14:56:01'),
(105, 'Kuddus', 4.50, 1, '06/30/2019', '01:00', '06/30/2019', '06:00', 'abdulkuddusgold@yahoo.com', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '1', '2019-06-29 15:50:34'),
(106, 'Kuddus', 4.50, 1, '06/29/2019', '06:00', '06/29/2019', '06:00', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-29 16:03:41'),
(107, 'ghff', 4.50, 1, '06/29/2019', '06:00', '06/29/2019', '08:00', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-29 16:31:30'),
(108, 'Wendy Sentgeorge', 24.50, 1, '06/30/2019', '11:00', '06/30/2019', '06:00', 'wsentgeorge@bellsouth.net', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '6', '2019-06-30 07:26:53'),
(109, 'Jodi Ormsby', 24.50, 1, '06/30/2019', '', '07/01/2019', '', 'jkormsby@gmail.com', 'Piazzale Roma (Rio TerÃ  Santâ€™Andrea 468b, 30135 Venice)', '3', '2019-06-30 08:39:04'),
(110, 'Kuddus', 4.50, 1, '06/30/2019', '01:00', '06/30/2019', '07:00', 'abdulkuddusgold@yahoo.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '1', '2019-06-30 09:22:30'),
(116, 'Ivan Arenas', 24.50, 1, '07/01/2019', '10:00', '07/01/2019', '08:00', 'miv2695@gmail.com', 'Piazzale Roma (Rio TerÃ  Santâ€™Andrea 468b, 30135 Venice)', '6', '2019-07-01 07:37:20'),
(117, 'Luigi Ianni', 8.50, 1, '07/21/2019', '10:00', '07/21/2019', '04:00', 'ianni44@gmail.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '2', '2019-07-03 08:31:18'),
(118, 'Dieter Mueller', 12.50, 1, '07/13/2019', '08:00', '07/13/2019', '04:00', 'dieter.mueller@gmail.com', 'Piazzale Roma (Rio TeraÌ€ Santâ€™Andrea 468b, 30135 Venice)', '3', '2019-07-03 21:52:31'),
(119, 'Ninette Kozelj', 8.50, 1, '07/16/2019', '08:00', '07/16/2019', '03:00', 'nina.kozelj@hotmail.com', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '2', '2019-07-04 15:41:50'),
(120, 'Seila Monti', 40.50, 1, '07/22/2019', '10:00', '07/22/2019', '20:00', 'giashe@tiscali.it', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '10', '2019-07-04 18:39:07'),
(121, 'Seila Monti', 40.50, 1, '07/27/2019', '09:00', '07/27/2019', '18:00', 'giashe@tiscali.it', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '10', '2019-07-04 18:45:53'),
(122, 'MIlena CsonkovÃ¡', 4.50, 1, '07/31/2019', '09:00', '07/31/2019', '04:00', 'milena.csonkova@gmail.com', 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '1', '2019-07-06 14:13:08'),
(123, 'Susumu Terada', 12.50, 1, '07/07/2019', '09:00', '07/07/2019', '01:00', 'susumuterada@hotmail.com', 'Piazzale Roma (Rio TerÃ  Santâ€™Andrea 468b, 30135 Venice)', '3', '2019-07-07 06:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `santalucia_payments`
--

CREATE TABLE `santalucia_payments` (
  `id` int(255) NOT NULL,
  `dropDate` date NOT NULL DEFAULT '0000-00-00',
  `dropTime` time NOT NULL DEFAULT '00:00:00',
  `pickDate` date NOT NULL DEFAULT '0000-00-00',
  `pickTime` time NOT NULL DEFAULT '00:00:00',
  `luggage` int(11) NOT NULL,
  `location` varchar(80) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(44) NOT NULL,
  `total` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `santalucia_payments`
--

INSERT INTO `santalucia_payments` (`id`, `dropDate`, `dropTime`, `pickDate`, `pickTime`, `luggage`, `location`, `name`, `email`, `total`) VALUES
(1, '2019-05-25', '02:55:00', '2019-05-26', '02:55:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'fahimsultan4@gmail.com', 8),
(2, '2019-05-25', '02:55:00', '2019-05-26', '02:55:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'fahimsultan4@gmail.com', 8),
(3, '2019-05-25', '02:58:00', '2019-05-26', '02:58:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'fahimsultan4@gmail.com', 8),
(4, '2019-05-25', '02:59:00', '2019-05-26', '12:20:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'fahimsultan4@gmail.com', 4),
(5, '2019-05-25', '03:32:00', '2019-05-25', '06:50:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'fahimsultan4@gmail.com', 4),
(6, '2019-05-25', '03:41:00', '2019-05-26', '03:41:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'fahimsultan4@gmail.com', 8),
(7, '2019-05-25', '04:40:00', '2019-05-26', '04:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'fahimsultan4@gmail.com', 4),
(8, '2019-05-25', '04:39:00', '2019-05-31', '04:39:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'fahimsultan4@gmail.com', 28),
(9, '2019-05-25', '04:39:00', '2019-05-31', '04:39:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'fahimsultan4@gmail.com', 28),
(10, '2019-05-26', '05:09:00', '2019-05-26', '05:09:00', 6, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'news.dhaka18@gmail.com', 1),
(11, '2019-05-25', '07:35:00', '2019-05-27', '07:55:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', '', 'baggaglikuddus@gmail.com', 13),
(12, '2019-05-25', '07:39:00', '2019-05-26', '07:40:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Dhaka 18', 'news.dhaka18@gmail.com', 1),
(13, '2019-05-25', '16:05:40', '2019-05-31', '18:05:50', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 57),
(14, '2019-05-26', '20:05:45', '2019-05-26', '09:05:05', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(15, '2019-05-26', '20:05:45', '2019-05-26', '09:05:05', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(16, '2019-05-25', '17:05:55', '2019-05-25', '17:05:15', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kuddus', 'baggaglukuddus@gmail.com', 5),
(17, '2019-05-25', '17:05:20', '2019-05-25', '18:05:55', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kuddus', 'baggaglikuddus@gmail.com', 5),
(18, '2019-05-26', '12:05:20', '2019-05-26', '13:05:25', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Dhaka 18', 'news.dhaka18@gmail.com', 5),
(19, '2019-05-26', '08:05:00', '2019-05-26', '19:05:55', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'lpioip', 'baggaglikuddus@gmail.com', 5),
(20, '2019-05-26', '14:05:25', '2019-05-27', '14:05:55', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kuddus', 'baggaglukuddus@gmail.com', 17),
(21, '2019-05-26', '19:05:55', '2019-05-27', '00:01:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kashem', 'abdulkuddusgold@yahoo.com', 5),
(22, '2019-05-26', '16:05:00', '2019-05-27', '18:05:45', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'alamin', 'pdkuddus@gmail.com', 9),
(23, '2019-05-28', '09:05:05', '2019-05-28', '19:05:55', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'alamin', 'pdkuddus@gmail.com', 0),
(24, '2019-05-27', '09:05:05', '2019-05-29', '19:05:55', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'alamin', 'pdkuddus@gmail.com', 1),
(25, '2019-05-27', '08:05:00', '2019-05-29', '08:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 13),
(26, '2019-05-28', '09:05:05', '2019-05-30', '14:05:50', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 25),
(27, '2019-05-29', '17:05:45', '2019-05-30', '17:05:45', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'SAYEF', 'abdulkuddusgold@yahoo.com', 1),
(28, '2019-05-28', '21:05:00', '2019-05-30', '21:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 13),
(29, '2019-05-29', '09:44:00', '2019-05-31', '09:44:00', 3, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 37),
(30, '2019-05-29', '21:05:00', '2019-05-31', '21:05:00', 3, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 37),
(31, '2019-05-29', '21:05:00', '2019-05-31', '21:05:00', 3, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 37),
(32, '2019-05-29', '08:05:00', '2019-05-30', '18:05:50', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sayed', 'mrahmansayed@gmail.com', 17),
(33, '2019-05-28', '22:05:00', '2019-05-29', '22:05:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 17),
(34, '2019-05-28', '22:05:00', '2019-05-28', '22:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 5),
(35, '2019-05-29', '22:05:00', '2019-05-29', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Dhaka 18', 'mrahmansayed@gmail.com', 5),
(36, '2019-05-29', '22:05:00', '2019-05-29', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Dhaka 18', 'mrahmansayed@gmail.com', 5),
(37, '2019-05-28', '19:05:00', '2019-05-29', '00:01:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Salam', 'abdulkuddusgold@yahoo.com', 5),
(38, '2019-05-29', '09:05:00', '2019-05-30', '09:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'nomt', 'pdkuddus@gmail.com', 9),
(39, '2019-05-29', '09:05:00', '2019-05-31', '09:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'nomt', 'pdkuddus@gmail.com', 9),
(40, '2019-05-30', '15:05:00', '2019-05-30', '18:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 5),
(41, '2019-05-30', '15:05:00', '2019-05-31', '15:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(42, '2019-05-29', '15:05:00', '2019-05-30', '08:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 5),
(43, '2019-05-29', '15:05:00', '2019-05-30', '08:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 5),
(44, '2019-05-29', '13:05:00', '2019-05-30', '13:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'SAYEF', 'pdkuddus@gmail.com', 9),
(45, '2019-05-29', '17:05:00', '2019-05-30', '17:05:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sayeem', 'nnilanjana255@gmail.com', 17),
(46, '2019-05-30', '08:05:00', '2019-05-31', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'kus', 'baggaglivenezia@gmail.com', 5),
(47, '2019-05-29', '14:05:00', '2019-05-29', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'kushed', 'abdulkuddusgold@yahoo.com', 5),
(48, '2019-05-29', '18:05:00', '2019-05-30', '18:05:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kuddus', 'mrahmansayed@gmail.com', 17),
(49, '2019-05-30', '08:05:00', '2019-05-30', '00:01:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'nomt', 'baggaglikuddus@gmail.com', 5),
(50, '2019-05-30', '13:05:00', '2019-05-31', '13:05:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 17),
(51, '2019-05-31', '14:05:00', '2019-05-31', '08:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'kus', 'pdkuddus@gmail.com', 5),
(52, '2019-05-30', '14:05:00', '2019-05-31', '00:01:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'mmmmmmmmmmmmmmmmmmoooooooooooooooooiinfo', 'abdulkuddusgold@yahoo.com', 0),
(53, '2019-05-30', '16:05:00', '2019-05-31', '08:05:00', 12, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 49),
(54, '2019-05-31', '13:05:00', '2019-06-01', '13:05:00', 7, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 57),
(55, '2019-05-31', '13:05:00', '2019-06-01', '13:05:00', 7, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 57),
(56, '2019-05-30', '21:05:00', '2019-05-30', '21:05:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 1),
(57, '2019-05-30', '18:05:00', '2019-05-31', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'bvg', 'baggaglivenezia@gmail.com', 9),
(58, '2019-05-30', '19:05:00', '2019-05-31', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'bvg', 'baggaglikuddus@gmail.com', 9),
(59, '2019-05-31', '09:05:00', '2019-05-31', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 1),
(60, '2019-05-31', '09:05:00', '2019-05-31', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 5),
(61, '2019-05-31', '09:05:00', '2019-05-31', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 5),
(62, '2019-05-31', '09:05:00', '2019-06-01', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'nomt', 'pdkuddus@gmail.com', 5),
(63, '2019-05-31', '09:05:00', '2019-05-31', '19:05:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 1),
(64, '2019-06-01', '15:06:00', '2019-06-02', '15:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Yuhh', 'pdkuddus@gmail.com', 9),
(65, '2019-06-01', '15:06:00', '2019-06-02', '15:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Yuhh', 'pdkuddus@gmail.com', 1),
(66, '2019-06-02', '13:06:00', '2019-06-02', '14:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'gtyth', 'pdkuddus@gmail.com', 5),
(67, '2019-06-03', '11:06:00', '2019-06-03', '17:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Taynor Darn', 'punkduck@gmail.com', 5),
(68, '2019-07-20', '13:06:00', '2019-07-20', '00:01:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'à¦·à¦«à¦ ', 'pdkuddus@gmail.com', 1),
(69, '2019-06-04', '19:06:00', '2019-06-04', '08:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Go', 'pdkuddus@gmail.com', 5),
(70, '2019-06-05', '19:06:00', '2019-06-06', '08:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'jhi', 'abdulkuddus@gmail.com', 17),
(71, '2019-06-05', '19:06:00', '2019-06-06', '08:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'jhi', 'abdulkuddusgold@gmail.com', 17),
(72, '2019-06-05', '09:06:00', '2019-06-05', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'cvjbgg', 'abdulkuddusgold@yahoo.com', 5),
(73, '2019-06-06', '19:06:00', '2019-06-06', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'alamin', 'pdkuddus@gmail.com', 5),
(74, '2019-07-14', '09:06:00', '1970-01-01', '16:06:00', 3, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'CARINA', 'lagocarina@gmail.com', 0),
(75, '2019-06-05', '11:06:00', '2019-06-05', '00:01:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Maria Lerario', 'maria.a.lerario@gmail.com', 1),
(76, '2019-07-02', '14:06:00', '2019-07-02', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Fuuu', 'baggaglikuddus@gmail.com', 5),
(77, '2019-06-06', '08:06:00', '2019-06-06', '16:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Iskra Esperanza PÃ©rez ZarazÃºa', 'iskrahope@gmail.com', 5),
(78, '2019-06-06', '08:06:00', '2019-06-06', '16:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Gloria Zarazua ', 'gezarazua1@gmail.com', 5),
(79, '2019-06-07', '09:06:00', '2019-06-07', '18:06:00', 5, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Ferrarese Serena', 'serena.ferrarese@gmx.at', 21),
(80, '2019-07-21', '09:06:00', '2019-07-21', '18:06:00', 4, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'vincenzo pulvirenti', 'vincepulvi@alice.it', 17),
(81, '2019-07-04', '19:06:00', '2019-07-05', '14:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Ug', 'abdulkuddusgold@yahoo.com', 9),
(82, '2019-06-10', '19:06:00', '2019-06-11', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kuddus', 'baggaglikuddus@gmail.com', 5),
(83, '2019-06-10', '15:06:00', '2019-06-11', '14:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'alamin', 'pdkuddus@gmail.com', 5),
(84, '2019-06-10', '16:06:00', '2019-06-11', '14:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'sayed', 'mrahmansayed@gmail.com', 9),
(85, '2019-06-11', '15:06:00', '2019-06-12', '14:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'ghff', 'pdkuddus@gmail.com', 9),
(86, '2019-06-11', '15:06:00', '2019-06-12', '14:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kuddus', 'pdkuddus@gmail.com', 17),
(87, '2019-06-11', '15:06:00', '2019-06-12', '14:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kuddus', 'pdkuddus@gmail.com', 17),
(88, '2019-06-10', '08:06:00', '2019-06-11', '14:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'wer', 'abdulkuddusgold@yahoo.com', 9),
(89, '2019-06-11', '09:06:00', '2019-06-12', '08:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Ã¹Ã²Ã²Ã²', 'abdulkuddusgold@yahoo.com', 9),
(90, '2019-06-11', '13:06:00', '2019-06-13', '08:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kuddus', 'pdkuddus@gmail.com', 13),
(91, '2019-07-01', '08:06:00', '2019-07-01', '16:06:00', 4, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Anibal Jorge Ascencao', 'lasvenas@gmail.com', 17),
(92, '2019-06-12', '08:06:00', '2019-04-12', '11:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sayeem', 'nnilanjana255@gmail.com', -240),
(93, '2019-06-13', '08:06:00', '2019-06-14', '00:01:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Kashem', 'baggaglikuddus@gmail.com', 5),
(94, '2019-06-13', '08:06:00', '2019-06-20', '19:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Salam', 'baggaglikuddus@gmail.com', 65),
(95, '2019-06-13', '12:06:00', '2019-06-13', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Ayden Fuller', 'aydeb.fuller@gmail.com', 5),
(96, '2019-06-15', '09:06:00', '2019-06-15', '19:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Lorenzo Fratto', 'frattolorenzo@gmail.com', 9),
(97, '2019-06-15', '09:06:00', '2019-06-15', '19:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Lorenzo Fratto', 'frattolorenzo@gmail.com', 9),
(98, '2019-06-15', '17:06:00', '2019-06-15', '18:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 5),
(99, '2019-06-15', '17:06:00', '2019-06-16', '17:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(100, '2019-06-15', '17:06:00', '2019-06-16', '17:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(101, '2019-06-15', '17:06:00', '2019-06-16', '17:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(102, '2019-06-15', '18:06:00', '2019-06-15', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'johnalbert000439@gmail.com', 1),
(103, '2019-06-15', '18:06:00', '2019-06-15', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 1),
(104, '2019-06-15', '18:06:00', '2019-06-16', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 9),
(105, '2019-06-15', '18:06:00', '2019-06-15', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 5),
(106, '2019-06-15', '18:06:00', '2019-06-15', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 5),
(107, '2019-06-15', '18:06:00', '2019-06-15', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 5),
(108, '2019-06-15', '18:06:00', '2019-06-15', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 5),
(109, '2019-06-15', '18:06:00', '2019-06-15', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 5),
(110, '2019-06-15', '19:06:00', '2019-06-15', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 5),
(111, '2019-06-15', '19:06:00', '2019-06-15', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 5),
(112, '2019-06-15', '19:06:00', '2019-06-16', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 9),
(113, '2019-06-15', '19:06:00', '2019-06-16', '19:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'fahim', 'sultanularefin15439@gmail.com', 17),
(114, '2019-06-15', '19:06:00', '2019-06-16', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(115, '2019-06-15', '19:06:00', '2019-06-16', '19:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(116, '2019-06-22', '10:06:00', '2019-06-22', '19:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'valentina di mascio', 'vdimascio@hotmail.it', 9),
(117, '2019-06-17', '09:06:00', '2019-06-17', '08:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'klklk', 'baggaglikuddus@gmail.com', 5),
(118, '2019-06-18', '12:06:00', '2019-06-19', '13:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(119, '2019-06-18', '12:06:00', '2019-06-19', '13:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(120, '2019-06-18', '12:06:00', '2019-06-19', '13:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(121, '2019-06-18', '12:06:00', '2019-06-19', '13:06:00', 1, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 9),
(122, '2019-06-20', '13:06:00', '2019-06-21', '13:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'Sultanul Arefin', 'fahimsultan4@gmail.com', 17),
(123, '2019-06-18', '11:06:00', '2019-06-19', '09:06:00', 2, 'Santa Lucia (Calle de la Misericordia 366b, 30121 Venezia)', 'jiii', 'pdkuddus@gmail.com', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bagagliv_payments`
--
ALTER TABLE `bagagliv_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_transaction`
--
ALTER TABLE `payment_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `piazzaleroma_payments`
--
ALTER TABLE `piazzaleroma_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `santalucia_payments`
--
ALTER TABLE `santalucia_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bagagliv_payments`
--
ALTER TABLE `bagagliv_payments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `payment_transaction`
--
ALTER TABLE `payment_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `piazzaleroma_payments`
--
ALTER TABLE `piazzaleroma_payments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `santalucia_payments`
--
ALTER TABLE `santalucia_payments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
