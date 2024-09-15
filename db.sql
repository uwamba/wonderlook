-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2024 at 04:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 53, 2, 1),
(39, 85, 27, 1),
(53, 52, 201, 1),
(54, 52, 70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL,
  `image` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`, `image`) VALUES
(1, 'CAMERAS', 'CAMERAS', 'cameras.jpeg'),
(2, 'LIGHT', 'LIGHT', 'light.jpeg'),
(3, 'LENS', 'LENS', 'lens.jpeg'),
(4, 'STORAGE', 'STORAGE', 'storage.jpeg'),
(5, 'Accessories', 'Accessories', 'accessories.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `date` date NOT NULL,
  `requested_date` date NOT NULL,
  `expected_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `telephone` varchar(200) NOT NULL,
  `product` varchar(300) NOT NULL,
  `account_name` varchar(60) NOT NULL,
  `account_number` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`id`, `company_name`, `user_id`, `date`, `requested_date`, `expected_date`, `amount`, `address`, `status`, `telephone`, `product`, `account_name`, `account_number`) VALUES
(32, 'Kigali', 61, '2022-04-29', '2022-04-29', '2022-05-14', 32000, '', 'Pending For Payment', '0786138376', '106', '', ''),
(39, 'Kigali', 61, '2022-05-04', '2022-05-04', '2022-05-19', 15000, '', 'Pending For Payment', '0786138376', '115', '', ''),
(38, 'Kigali', 61, '2022-05-04', '2022-05-04', '2022-05-19', 16000, '', 'Pending For Payment', '0786138376', '114', '', ''),
(23, 'Kigali', 61, '2022-04-18', '2022-04-18', '2022-05-03', 22000, '', 'Pending For Payment', '0786138376', '93', '', ''),
(24, 'Kigali', 61, '2022-04-22', '2022-04-22', '2022-05-07', 60000, '', 'Pending For Payment', '0786138376', '96', '', ''),
(25, 'Kigali', 61, '2022-04-22', '2022-04-22', '2022-05-07', 60000, '', 'Pending For Payment', '0786138376', '97', '', ''),
(26, 'Kigali', 61, '2022-04-22', '2022-04-22', '2022-05-07', 0, '', 'Pending For Payment', '0786138376', '98', '', ''),
(27, 'Kigali', 61, '2022-04-27', '2022-04-27', '2022-05-12', 6000, '', 'Pending For Payment', '0786138376', '100', '', ''),
(28, 'Kigali', 61, '2022-04-28', '2022-04-28', '2022-05-13', 12000, '', 'Pending For Payment', '0786138376', '101', '', ''),
(29, 'Kigali', 61, '2022-04-29', '2022-04-29', '0000-00-00', 700000, '', 'Pending For Payment', '0786138377', '103', '', ''),
(30, 'Kigali', 61, '2022-04-29', '2022-04-29', '2022-05-14', 25000, '', 'Pending For Payment', '0786138376', '104', '', ''),
(31, 'Kigali', 61, '2022-04-29', '2022-04-29', '2022-05-14', 1615000, '', 'Pending For Payment', '0786138376', '105', '', ''),
(36, 'Kigali', 61, '2022-05-03', '2022-05-03', '2022-05-18', 24000, '', 'Pending For Payment', '0786138376', '110', '', ''),
(35, 'Kigali', 61, '2022-05-03', '2022-05-03', '2022-05-18', 64000, '', 'Pending For Payment', '0786138376', '109', '', ''),
(34, 'Kigali', 61, '2022-04-30', '2022-04-30', '2022-05-15', 85000, '', 'Pending For Payment', '0786138376', '108', '', ''),
(33, 'Kigali', 61, '2022-04-29', '2022-04-29', '2022-05-14', 49000, '', 'Pending For Payment', '0786138376', '107', '', ''),
(40, 'Kigali', 61, '2022-05-05', '2022-05-05', '2022-05-20', 85000, '', 'Pending For Payment', '0786138376', '116', '', ''),
(41, 'Kigali', 61, '2022-05-06', '2022-05-06', '2022-05-21', 1350000, '', 'Pending For Payment', '0786138376', '119', '', ''),
(42, 'Kigali', 61, '2022-05-09', '2022-05-09', '2022-05-24', 3400000, '', 'Pending For Payment', '0786138376', '122', '', ''),
(43, 'Kigali', 61, '2022-05-10', '2022-05-10', '2022-05-25', 6000, '', 'Pending For Payment', '0786138376', '123', '', ''),
(44, 'Kigali', 61, '2022-05-10', '2022-05-10', '2022-05-25', 6000, '', 'Pending For Payment', '0786138376', '124', '', ''),
(45, 'Kigali', 61, '2022-05-10', '2022-05-10', '2022-05-25', 6000, '', 'Pending For Payment', '0786138376', '125', '', ''),
(46, 'Kigali', 61, '2022-05-10', '2022-05-10', '2022-05-25', 6000, '', 'Pending For Payment', '0786138376', '126', '', ''),
(47, 'Kigali', 61, '2022-05-13', '2022-05-13', '2022-05-28', 17000, '', 'Pending For Payment', '0786138376', '127', '', ''),
(48, 'Kigali', 61, '2022-05-16', '2022-05-16', '2022-05-31', 0, '', 'Pending For Payment', '0786138376', '131', '', ''),
(49, 'Kigali', 61, '2022-05-16', '2022-05-16', '2022-05-31', 700000, '', 'Pending For Payment', '0786138376', '132', '', ''),
(50, 'Kigali', 61, '2022-05-16', '2022-05-16', '2022-05-31', 0, '', 'Pending For Payment', '0786138376', '133', '', ''),
(51, 'Kigali', 61, '2022-05-16', '2022-05-16', '2022-05-31', 700000, '', 'Pending For Payment', '0786138376', '134', '', ''),
(52, 'Kigali', 61, '2022-05-20', '2022-05-20', '2022-06-04', 600000, '', 'Pending For Payment', '0786138376', '139', '', ''),
(53, 'Kigali', 61, '2022-06-06', '2022-06-06', '2022-06-21', 2915000, '', 'Pending For Payment', '0786138376', '157', '', ''),
(54, 'Kigali', 61, '2022-06-06', '2022-06-06', '2022-06-21', 2915000, '', 'Pending For Payment', '0786138376', '158', '', ''),
(55, 'Kigali', 61, '2022-06-06', '2022-06-06', '2022-06-21', 1590000, '', 'Pending For Payment', '0786138376', '159', '', ''),
(56, 'EDUCATE RWANDA', 87, '2022-06-07', '2022-06-07', '2022-06-07', 3, 'EMAIL ADDRESS: celestin@experienceeducate.org', 'Pending For Payment', '0788331645', '1.HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 256GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver(5CD117HZPJ)', 'GT BANK', 'RWF 211/218396/1/5118/0   & USD 211/218396'),
(57, 'EDUCATE ', 87, '2022-06-07', '2022-06-07', '2022-06-10', 3965000, 'EMAIL ADDRESS: celestin@experienceeducate.org', 'Pending For Payment', '0788331645', '1.HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 256GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver(5CD117HZPJ),D LINK MOBILR ROUTER', 'GT BANK', 'RWF 211/218396/1/5118/0 & USD 211/218396/2/5118/0'),
(59, 'Kigali', 61, '2022-06-10', '2022-06-10', '2022-06-25', 3965000, '', 'Pending For Payment', '0786138376', '165', '', ''),
(60, 'Kigali', 61, '2022-06-16', '2022-06-16', '2022-07-01', 1350000, '', 'Pending For Payment', '0786138376', '174', '', ''),
(61, 'Kigali', 61, '2022-06-18', '2022-06-18', '2022-07-03', 0, '', 'Pending For Payment', '0786138376', '177', '', ''),
(62, 'Kigali', 61, '2022-06-18', '2022-06-18', '2022-07-03', 85000, '', 'Pending For Payment', '0786138376', '178', '', ''),
(63, 'Kigali', 61, '2022-06-20', '2022-06-20', '2022-07-05', 600000, '', 'Pending For Payment', '0786138376', '179', '', ''),
(64, 'Kigali', 61, '2022-06-24', '2022-06-24', '2022-07-09', 25000, '', 'Pending For Payment', '0786138376', '185', '', ''),
(65, 'GT BANK', 87, '2022-06-27', '2022-06-05', '2022-06-20', 130000, 'KIGALI/RWANDA', 'Pending For Payment', '0788355818', 'Active USB Extension Cable promate fast charging  Micro-USB Premium cable 1.2m & Active USB Extension  Promate USB  Type-C cableUSB to USBC cABLES1.2m', 'Reading Technology Ltd', 'RWF 211/218396/1/5118/0 & USD 211/218396/2/5118/0'),
(66, 'ARNORD IGABE', 87, '2022-06-27', '2022-05-16', '2022-06-30', 410000, 'KIGALI/RWANDA', 'Pending For Payment', '0782714741', 'MacBook Air (13inches 2014) Processor:1.4GHZ intel corei5 Memory:8GB 1600 MHz LDDR3 Graphics: intel HD Graphics 5000 1536MB', 'Reading Technology Ltd', 'RWF 211/218396/1/5118/0 & USD 211/218396/2/5118/0'),
(67, 'EQUIP RWANDA', 87, '2022-06-28', '2022-06-06', '2022-07-05', 3000000, 'KIGALI/RWANDA', 'Pending For Payment', '0788657363', 'Promate Bolt-20 20000mAh power bank with Dual USB output and Dual USB input Ports  &  BIPLUG-UK', 'Reading Technology Ltd', 'RWF 211/218396/1/5118/0 & USD 211/218396/2/5118/0'),
(68, 'Lt Col BUKURU Jhon', 87, '2022-06-28', '2022-06-07', '2022-10-01', 1972740, 'KIGALI/RWANDA', 'Pending For Payment', '0788754769', 'IPhone  13 Pro Max (FPNX6YKK4V)', 'Reading Technology Ltd', 'RWF 211/218396/1/5118/0 & USD 211/218396/2/5118/0'),
(69, 'SDDY KHALES', 87, '2022-06-28', '2022-06-03', '2022-07-10', 600000, 'KIGALI/RWANDA', 'Pending For Payment', '0789615901', 'MACBOOK AIR (13inch Early 2014) Intel Core i5 RAM 8GB/256GB Serial No:C02NV07HG5RN', 'Reading Technology Ltd', 'RWF 211/218396/1/5118/0 & USD 211/218396/2/5118/0'),
(70, 'Prime Spot Media Ltd', 87, '2022-06-29', '2022-06-23', '2022-07-08', 1800000, 'KIGALI/RWANDA', 'Pending For Payment', '0781520255', 'Apple iMac 27\" 5K Display Early 2019 Intel Core i7 32GB of DDR4 RAM | 512GB SSD 27\" 5120 x 2880 IPS Retina 5K Display AMD Radeon Pro GPU (4GB) Magic Keyboard & Magic Mouse 2 Include', 'Reading Technology Ltd', 'RWF 211/218396/1/5118/0 & USD 211/218396/2/5118/0'),
(71, 'GASTON NYIRIGIRA', 87, '2022-06-29', '2022-06-25', '2022-08-27', 1485000, 'KIGALI/RWANDA', 'Pending For Payment', '0788424972', 'Iphone 13â€ pro 256GB (J91YOV602C)', 'Reading Technology Ltd', 'RWF 211/218396/1/5118/0 & USD 211/218396/2/5118/0'),
(72, 'LASER TECH', 87, '2022-06-29', '2022-06-16', '2022-07-16', 660000, 'KIGALI/RWANDA', 'Pending For Payment', '0788254668', 'HP LAPTOP i5', 'Reading Technology Ltd', 'RWF 211/218396/1/5118/0 & USD 211/218396/2/5118/0');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_note`
--

CREATE TABLE `delivery_note` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(200) NOT NULL,
  `user` int(11) NOT NULL,
  `note` varchar(300) NOT NULL,
  `owner` varchar(110) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `delivery_note`
--

INSERT INTO `delivery_note` (`id`, `date`, `name`, `user`, `note`, `owner`, `status`) VALUES
(1, '2021-07-01 16:10:49', 'Reading Technology', 50, 'this is a bulk entries for 500 computer ', '60', 1),
(3, '2022-02-14 17:10:49', 'fondazione marcegaglia', 50, '', '49', 1),
(4, '2022-02-14 17:10:49', 'Gage Clint Penrod ', 50, '', '49', 1),
(5, '2022-02-14 17:10:49', 'KALISA Axel', 50, 'THANK FOR SHOPPING WITH US.', '49', 1),
(6, '2022-02-14 17:10:49', '', 50, '', '', 1),
(7, '2022-02-14 17:10:49', 'IMAGE DESIGNING CENTER', 50, 'Thank you for shopping with us.', '49', 1),
(8, '2022-02-14 17:10:49', 'Client XX', 50, 'thank you for shopping with us', '49', 1),
(9, '2022-02-14 17:10:49', 'joseph havugimana', 50, 'Thank you for shopping with us.', '49', 1),
(10, '2022-02-14 17:10:49', 'Vincent', 50, 'Thank you for shopping with us', '49', 1),
(11, '2022-02-14 17:10:49', 'wi', 50, 'ok', '49', 1),
(12, '2022-02-14 17:10:49', 'Test order1', 50, 'test delivery note', '52', 1),
(13, '2021-11-25 17:10:49', 'Dalberg', 50, 'Thank you for shopping with us.', '49', 1),
(14, '2021-11-25 17:10:49', 'Client x', 50, '', '49', 1),
(15, '2022-02-14 17:10:49', 'Jean Regis NDUWIMANA', 50, '', '49', 1),
(16, '2021-12-02 17:10:49', 'UNIVERSAL GENERAL Merchants ', 50, '', '49', 1),
(17, '2022-02-14 17:10:49', 'Client M Mouse', 50, '', '49', 1),
(29, '2022-02-14 17:10:49', 'KIGALI Branch', 81, '', '82', 1),
(21, '2021-12-23 17:10:49', 'Nzasi', 50, '', '57', 1),
(22, '2022-02-14 17:10:49', '', 50, 'kl', '', 1),
(23, '2022-01-28 17:10:49', 'Kigali branch', 50, '', '18', 1),
(24, '2022-01-28 17:10:49', 'Kigali branch', 50, '', '18', 1),
(25, '2022-01-28 17:10:49', 'Kigali branch', 50, '', '18', 1),
(26, '2022-01-28 17:10:49', 'Kigali branch', 50, '', '18', 1),
(27, '2022-01-28 17:10:49', 'Kigali branch', 50, '', '18', 1),
(28, '2022-01-29 17:10:49', 'Kigali branch', 50, 'Thank you', '18', 1),
(30, '2022-02-14 17:10:49', 'KIGALI Branch', 81, '', '82', 1),
(31, '2022-02-14 17:10:49', 'KIGALI Branch', 81, '', '82', 1),
(32, '2022-02-14 17:10:49', '', 81, '', '', 1),
(33, '2022-02-14 17:10:49', '', 81, '', '', 1),
(44, '2022-02-14 17:10:49', '', 50, '', '', 1),
(43, '2022-02-14 17:10:49', '', 50, '', '77', 1),
(42, '2022-02-12 17:10:49', 'KIGALI Branch', 81, '', '82', 1),
(62, '2022-02-21 14:59:34', 'KIGALI BRANCH  19.02.22', 81, 'additional ', NULL, 1),
(60, '2022-02-17 13:02:47', 'Adra rwanda', 81, '', NULL, 1),
(59, '2022-02-17 12:59:04', 'sabin ', 81, '', NULL, 1),
(61, '2022-02-18 10:39:29', 'Adra rwanda 18.02.22', 81, 'done', NULL, 1),
(58, '2022-02-15 08:04:03', 'khalifa-sabin', 81, 'Thankfully ', NULL, 1),
(57, '2022-02-14 21:38:30', 'Nzasi', 50, 'close delivery', NULL, 1),
(63, '2022-03-01 12:26:47', 'Sabin 1/03/2022', 81, 'Replaced', NULL, 1),
(64, '2022-03-28 10:54:19', 'khalifa -uwimana  25.03.2022', 81, '', '77', 1),
(65, '2022-03-28 10:59:47', 'khalifa -uwimana  25.03.2022', 81, '', '77', 1),
(66, '2022-04-14 19:36:17', 'khalifa -uwimana  25.03.2022', 81, 'DONE!', '77', 2),
(67, '2022-04-14 19:35:15', 'khalifa -uwimana  25.03.2022', 50, 'test count', '77', 2),
(68, '2022-04-25 12:38:37', 'khalifa -uwimana  25.03.2022', 50, '', '77', 1),
(69, '2022-04-25 11:12:44', 'sabin 22.04.2022', 81, '', '82', 1),
(70, '2022-04-28 10:49:13', 'sabin 26/04/2022', 81, '', '82', 1),
(71, '2022-04-28 11:57:25', 'sabin 27/04/2022', 81, '', '82', 1),
(72, '2022-05-20 12:05:40', 'dfirst genius tech ltd', 50, 'dfirst genius tech ltd', '18', 1),
(73, '2022-05-20 13:03:08', 'dfirst genius tech ltd', 87, '', '18', 0),
(74, '2022-05-20 13:23:37', ' ABEL TONY NIYINDAGIY', 87, '3 MONTH WARRANTY', '18', 1),
(75, '2022-06-16 11:53:11', 'LIPALATER', 87, '', '18', 0),
(76, '2022-06-27 12:13:50', 'RCS GLOBAL RWANDA LTD', 87, 'DONE', '18', 1),
(77, '2022-07-02 08:00:26', 'Akademiya2063', 87, '', '18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_note_items`
--

CREATE TABLE `delivery_note_items` (
  `id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `item_code` varchar(60) NOT NULL,
  `name` varchar(200) NOT NULL,
  `shop_price` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IN_OUT` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `delivery_note_items`
--

INSERT INTO `delivery_note_items` (`id`, `delivery_id`, `item_code`, `name`, `shop_price`, `date`, `IN_OUT`) VALUES
(1, 1, 'PC07X43Q', 'Lenovo think-pad X250', 0, '2022-04-15 16:18:35', 'Yes'),
(2, 1, 'PC07SDJF', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(3, 1, 'PC0FRXR', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(4, 1, 'PC0B87CP', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(5, 1, 'PC0BDBHB', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(6, 1, 'PC07RGRE', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(7, 1, 'PC0ECGXS', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(8, 1, 'PC0B87EC', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(9, 1, 'PC07RGVF', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(10, 1, 'PC090HZT', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(11, 1, 'PC07RGSR', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(12, 1, 'PC07RGTP', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(13, 1, 'PC07X43H', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(14, 1, 'PC090HZX', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(15, 1, 'PC0ANL9V', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(16, 1, 'PC090HZQ', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(17, 1, 'PC0BV9MN', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(18, 1, 'PC090HZU', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(19, 1, 'PC07X43F', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(20, 1, 'PC06RDMY', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(21, 1, 'PC07SDDK', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(22, 1, 'PC0C4L93', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(23, 1, 'PC07SC5J', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(24, 1, 'PC07SDH7', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(25, 1, 'PC07P29M', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(26, 1, 'PC075SCOW', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(27, 1, 'PC09FG6Y', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(28, 1, 'PC05ZVBA', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(29, 1, 'PC06RDMM', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(30, 1, 'PC0B87CM', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(31, 1, 'PC0BD7GP', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(32, 1, 'PC07SC5N', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(33, 1, 'PC07SDEW', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(34, 1, 'PC07SC3W', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(35, 1, 'PC07Z3M', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(36, 1, 'PC07SC2V', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(37, 1, 'PC07SC2P', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(38, 1, 'PC07RGTE', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(39, 1, 'PC0B87EW', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(40, 1, 'PC06RDN1', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(41, 1, 'PC06RDMK', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(42, 1, 'PC07SDEP', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(43, 1, 'PC07SDJ7', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(44, 1, 'PC07SC25', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(45, 1, 'PC07SDDQ', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(46, 1, 'PC07SC10', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(47, 1, 'PC07SC57', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(48, 1, 'PC07SC1Y', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(49, 1, 'PC07SDDX', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(50, 1, 'PC07SDJ0', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(51, 1, 'PC07KOUG', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(52, 1, 'PC07SC4B', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(53, 1, 'PC07NE54', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(54, 1, 'PC0B87E8', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(55, 1, 'PC09N19S', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(56, 1, 'PC05ZVBB', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(57, 1, 'PC09P4NY', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(58, 1, 'PC06RDMR', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(59, 1, 'PC09KH2', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(60, 1, 'PC0B87CU', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(61, 1, 'PC0AAUCR', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(62, 1, 'PC06RDMX', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(63, 1, 'PC09MX4G', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(64, 1, 'PC09FRYE', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(65, 1, 'PC0C4L36', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(66, 1, 'PC06RDMT', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(67, 1, 'PC07SDFA', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(68, 1, 'PC09ZZVT', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(69, 1, 'PC05ZVB9', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(70, 1, 'PC0BMGC1', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(71, 1, 'PC09N19X', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(72, 1, 'PC05T1YT', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(73, 1, 'PC09W6GP', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(74, 1, 'PC07SC21', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(75, 1, 'PC0BMGC3', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(76, 1, 'PC0B4H7H', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(77, 1, 'PC0DCR82', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(78, 1, 'PC0DLECP', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(79, 1, 'PC0APWZE', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(80, 1, 'PC07SC38', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(81, 1, 'PC07NE4V', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(82, 1, 'PC0B4H7B', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(83, 1, 'PC07SDH0', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(84, 1, 'PC0545BS', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(85, 1, 'PC07SC4Z', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(86, 1, 'PC07SC59', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(87, 1, 'PC07RGVE', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(88, 1, 'PC038ZCF', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(89, 1, 'PC07SC29', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(90, 1, 'PC07SC5R', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(91, 1, 'PC07RGU1', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(92, 1, 'PC07K0VY', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(93, 1, 'PC0B87DW', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(94, 1, 'PC09W7ZN', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(95, 1, 'PC0B87E4', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(96, 1, 'PC0BD957', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(97, 1, 'PC0B87DP', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(98, 1, 'PC07SDG4', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(99, 1, 'PC09KGVN', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(100, 1, 'PC0621JA', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(101, 1, 'PC07SDGN', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(102, 1, 'PC07SC2G', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(103, 1, 'PC07SDHZ', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(104, 1, 'PC07SC1M', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(105, 1, 'PC09KFAP', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(106, 1, 'PC07RGS5', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(107, 1, 'PC0DOM5M', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(108, 1, 'PC07SC3N', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(109, 1, 'PC07RGV7', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(110, 1, 'PC0B87DK', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(111, 1, 'PC07SC2U', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(112, 1, 'PC07RGR6', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(113, 1, 'PC0B4H6W', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(114, 1, 'PC0B4H7R', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(115, 1, 'PC0B4H6E', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(116, 1, 'PC09KF9V', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(117, 1, 'PC07SC5H', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(118, 1, 'PC095LL9', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(119, 1, 'PC07RGTS', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(120, 1, 'PC09FG6Z', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(121, 1, 'PC0DLE7V', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(122, 1, 'PC07SC2D', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(123, 1, 'PC0DR89', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(124, 1, 'PC0DLER2', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(125, 1, 'PC0B4H8L', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(126, 1, 'PC095LBM', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(127, 1, 'PC0BQDGE', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(128, 1, 'PC0BMGC2', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(129, 1, 'PC07SC28', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(130, 1, 'PC09ZEHW', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(131, 1, 'PC0B87CE', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(132, 1, 'PC0DLD0S', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(133, 1, 'PC07SDGE', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(134, 1, 'PC09KGDS', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(135, 1, 'PC07RGU3', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(136, 1, 'PC0BMGC9', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(137, 1, 'PC09W6H0', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(138, 1, 'PC07NE4U', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(139, 1, 'PC07RGTQ', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(140, 1, 'PC07SDJX', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(141, 1, 'PCO7SC18', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(142, 1, 'PC05SGWG', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(143, 1, 'PC0B86PR', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(144, 1, 'PC07SDG2', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(145, 1, 'PC07RGT9', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(146, 1, 'PC0DLD0C', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(147, 1, 'PC0DLFRG', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(148, 1, 'PC095ZTZ', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(149, 1, 'PC07SC1A', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(150, 1, 'PC07SC32', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(151, 1, 'PC07SDEV', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(152, 1, 'PC07SDDR', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(153, 1, 'PC0BMGC7', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(154, 1, 'PC07SDEZ', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(155, 1, 'PC07SC1J', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(156, 1, 'PC05SGHK', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(157, 1, 'PCO9FRX5', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(158, 1, 'PC07RGSB', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(159, 1, 'PC07X43S', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(160, 1, 'PC09FFHH', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(161, 1, 'PC9FF61', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(162, 1, 'PC0DLDJ3', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(163, 1, 'PC09ZEJ1', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(164, 1, 'PC095JE6', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(165, 1, 'PC09YWE1', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(166, 1, 'PC09YWDU', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(167, 1, 'PC0E2F6Y', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(168, 1, 'PC07SC4C', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(169, 1, 'PC0BQDLH', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(170, 1, 'PC0BMGBZ', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(171, 1, 'PC07SDEO', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(172, 1, 'PC045ESU', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(173, 1, 'PC07K0LT', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(174, 1, 'PC09W6HF', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(175, 1, 'PC09FG2Z', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(176, 1, 'PC09FF15', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(177, 1, 'PC07MHYE', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(178, 1, 'PC0BD94U', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(179, 1, 'PC0BQEJR', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(180, 1, 'PC048W3', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(181, 1, 'PC07NE47', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(182, 1, 'PC07NE4C', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(183, 1, 'PC090HZS', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(184, 1, 'PC0BD7H0', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(185, 1, 'PC0BQA00', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(186, 1, 'PC09W6GW', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(187, 1, 'PC07ME4B', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(188, 1, 'PC07L4QW', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(189, 1, 'PC05T1YG', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(190, 1, 'PC07NE5E', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(191, 1, 'PC0DFF2A', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(192, 1, 'PC0BMGC5', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(193, 1, 'PC0BQESN', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(194, 1, 'PC05SGV6', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(195, 1, 'PC04N2RJ', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(196, 1, 'PC09FF0X', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(197, 1, 'PC0AAV7N', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(198, 1, 'PC0BMGCC', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(199, 1, 'PC09W7ZU', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(200, 1, 'PC09FFAZ', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(201, 1, 'PC09SZNS', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(202, 1, 'PC0BMGC4', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(203, 1, 'PC0B87DM', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(204, 1, 'PC06RDMZ', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(205, 1, 'PC07L4RG', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(206, 1, 'PC05SFHN', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(207, 1, 'PC0BQA4B', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(208, 1, 'PC0BMGC6', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(209, 1, 'PC09FFF2', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(210, 1, 'PC0DLEC3', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(211, 1, 'PC0BMGCA', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(212, 1, 'PC0FD2JU', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(213, 1, 'PC07SDF9', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(214, 1, 'PC0B4HAF', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(215, 1, 'PC057ECM', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(216, 1, 'PC0B87EM', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(217, 1, 'PC07SDF0', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(218, 1, 'PC09KHA3', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(219, 1, 'PC05T1YE', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(220, 1, 'PC0B87D9', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(221, 1, 'PC0B87EK', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(222, 1, 'PC07RGTV', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(223, 1, 'PC0B4H6J', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(224, 1, 'PC0BMGCB', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(225, 1, 'PC0BMGC8', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(226, 1, 'PC07SC11', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(227, 1, 'PC09YWDZ', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(228, 1, 'PC07K0WF', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(229, 1, 'PC0B87CS', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(230, 1, 'PC0C3R4B', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(231, 1, 'PC0B87EG', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(232, 1, 'PC09KGE5', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(233, 1, 'PC0A1V87', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(234, 1, 'PC0DLDFT', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(235, 1, 'PC07NE4X', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(236, 1, 'PC07SCOT', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(237, 1, 'PC06RDMS', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(238, 1, 'PC07RGSZ', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(239, 1, 'PC0A5JGD', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(240, 1, 'PC09KGG4', 'Lenovo think-pad X250', 0, '2021-07-31 22:00:00', 'Yes'),
(241, 1, 'PC0B7JXN', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(242, 1, 'PC0FWW0Z', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(243, 1, 'PC09MX93', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(244, 1, 'PC0FYR1U', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(245, 1, 'PC07K0T5', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(246, 1, 'PC0FXWYN', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(247, 1, 'PC0FWXEC', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(248, 1, 'PC0FWXCQ', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(249, 1, 'PC0FWXEH', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(250, 1, 'PC0FS6LG', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(251, 1, 'PC0FXWZ1', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(252, 1, 'PC05SGLY', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(253, 1, 'PC0E2F62', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(254, 1, 'PC09MX6X', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(255, 1, 'PC0E2F5B', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(256, 1, 'PC0BDBHA', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(257, 1, 'PC0FWXD3', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(258, 1, 'PC0FWWRY', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(259, 1, 'PC0DDDNQ', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(260, 1, 'PC0FYR0V', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(261, 1, 'PC0DDE9Q', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(262, 1, 'PC0FYR0R', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(263, 1, 'PC0FWXGY', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(264, 1, 'PC06Q7TT', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(265, 1, 'PC0FWVY5', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(266, 1, 'PC048917', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(267, 1, 'PC0FWVZW', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(268, 1, 'PC0FXWXA', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(269, 1, 'PC0DDFSB', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(270, 1, 'PC0FWUKZ', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(271, 1, 'PC0DDFUE', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(272, 1, 'PC0DLFPW', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(273, 1, 'PC07K0V6', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(274, 1, 'PC05SFL9', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(275, 1, 'PC0FXWVV', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(276, 1, 'PC0FWVW3', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(277, 1, 'PC0DDEA7', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(278, 1, 'PC043JB1', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(279, 1, 'PC0FWXB8', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(280, 1, 'PC0FWWNU', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(281, 1, 'PC0A2ZND', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(282, 1, 'PC0A2ZN7', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(283, 1, 'PC0FYR0L', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(284, 1, 'PC0FXXB2', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(285, 1, 'PC0FWXDH', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(286, 1, 'PC0A1VVQ', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(287, 1, 'PC043JBE', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(288, 1, 'PCOE2F6P', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(289, 1, 'PC0A2ZN9', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(290, 1, 'PC0E2F5T', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(291, 1, 'PC0FWW17', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(292, 1, 'PC09MX83', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(293, 1, 'PC090J1W', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(294, 1, 'PC0BDBHL', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(295, 1, 'PC0DS3MD', 'Lenovo think-pad X250', 0, '2021-03-02 22:00:00', 'Yes'),
(296, 1, 'PC05CB8M', 'Lenovo think-pad X250', 0, '2021-03-03 22:00:00', 'Yes'),
(297, 1, 'PC05SGKG', 'Lenovo think-pad X250', 0, '2021-03-04 22:00:00', 'Yes'),
(298, 1, 'PC09MYJG', 'Lenovo think-pad X250', 0, '2021-03-06 22:00:00', 'Yes'),
(299, 1, 'PC06Q6M0', 'Lenovo think-pad X250', 0, '2021-03-07 22:00:00', 'Yes'),
(300, 1, 'PC0DDEBQ', 'Lenovo think-pad X250', 0, '2021-03-08 22:00:00', 'Yes'),
(301, 1, 'PC09MX7A', 'Lenovo think-pad X250', 0, '2021-03-09 22:00:00', 'Yes'),
(302, 1, 'PC0ARM39', 'Lenovo think-pad X250', 0, '2021-03-10 22:00:00', 'Yes'),
(303, 1, 'PC0FHBFH', 'Lenovo think-pad X250', 0, '2021-03-11 22:00:00', 'Yes'),
(304, 1, 'PC089C7E', 'Lenovo think-pad X250', 0, '2021-03-12 22:00:00', 'Yes'),
(305, 1, 'PC0DDFU7', 'Lenovo think-pad X250', 0, '2021-03-20 22:00:00', 'Yes'),
(306, 1, 'PC0FHDPE', 'Lenovo think-pad X250', 0, '2021-03-21 22:00:00', 'Yes'),
(307, 1, 'PC0FMQX4', 'Lenovo think-pad X250', 0, '2021-03-22 22:00:00', 'Yes'),
(308, 1, 'PC0FWWRV', 'Lenovo think-pad X250', 0, '2021-03-23 22:00:00', 'Yes'),
(309, 1, 'PC07P0NC', 'Lenovo think-pad X250', 0, '2021-03-24 22:00:00', 'Yes'),
(310, 1, 'PC0FWWP4', 'Lenovo think-pad X250', 0, '2021-03-25 22:00:00', 'Yes'),
(311, 1, 'PC0FWWSK', 'Lenovo think-pad X250', 0, '2021-03-26 22:00:00', 'Yes'),
(312, 1, 'PC0FWWRT', 'Lenovo think-pad X250', 0, '2021-03-27 22:00:00', 'Yes'),
(313, 1, 'PC0DDFVH', 'Lenovo think-pad X250', 0, '2021-03-28 22:00:00', 'Yes'),
(314, 1, 'PC0A1VVM', 'Lenovo think-pad X250', 0, '2021-03-29 22:00:00', 'Yes'),
(315, 1, 'PC0FYR11', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(316, 1, 'PC0DDDPM', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(317, 1, 'PC0FWXCC', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(318, 1, 'PC0FHBFB', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(319, 1, 'PC0FWWRH', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(320, 1, 'PC0FHBF3', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(321, 1, 'PC09MYHM', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(322, 1, 'PCOE2F7T', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(323, 1, 'PC0B7LW8', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(324, 1, 'PC0FHBFT', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(325, 1, 'PC0E2F6U', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(326, 1, 'PC0FYR03', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(327, 1, 'PC0FXX0V', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(328, 1, 'PC0FXX91', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(329, 1, 'PC0DDFSG', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(330, 1, 'PC0E2F89', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(331, 1, 'PC0E2F53', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(332, 1, 'PC0DDE9A', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(333, 1, 'PC0E2F85', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(334, 1, 'PC0FXWWW', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(335, 1, 'PC0FXX0G', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(336, 1, 'PC0A1VVJ', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(337, 1, 'PC0FWXCS', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(338, 1, 'PC08W4HD', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(339, 1, 'PC0DLDJD', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(340, 1, 'PC0DDE7X', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(341, 1, 'PC0FHDDE', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(342, 1, 'PC0DDFSK', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(343, 1, 'PC0DDDN9', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(344, 1, 'PC05R81M', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(345, 1, 'PC09T3EB', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(346, 1, 'PC07E9PM', 'Lenovo think-pad X250', 0, '2021-02-28 22:00:00', 'Yes'),
(347, 1, 'PC07K11C', 'Lenovo think-pad X250', 0, '2021-03-01 22:00:00', 'Yes'),
(348, 1, 'PC0BDBH9', 'Lenovo think-pad X250', 0, '2021-03-05 22:00:00', 'Yes'),
(349, 1, 'PC0B87DY', 'Lenovo think-pad X250', 4, '2022-04-29 06:25:52', 'Yes'),
(350, 1, 'PC0DDDN4', 'Lenovo think-pad X250', 0, '2021-03-14 22:00:00', 'Yes'),
(351, 1, 'PC0FHBF8', 'Lenovo think-pad X250', 0, '2021-03-15 22:00:00', 'Yes'),
(352, 1, 'PC0FXX22D', 'Lenovo think-pad X250', 0, '2021-03-16 22:00:00', 'Yes'),
(353, 1, 'PC07K0UH', 'Lenovo think-pad X250', 0, '2021-03-17 22:00:00', 'Yes'),
(354, 1, 'PC0FWWNB', 'Lenovo think-pad X250', 0, '2021-03-18 22:00:00', 'Yes'),
(355, 1, 'PC045W1Y', 'Lenovo think-pad X250', 0, '2021-03-19 22:00:00', 'Yes'),
(356, 1, 'PC05SFKM', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(357, 1, 'PC0FXWWU', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(358, 1, 'PC0DDFS1', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(359, 1, 'PC0FXX4H', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(360, 1, 'PC0FWWTE', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(361, 1, 'PC0FWXG9', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(362, 1, 'PC08EGDS', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(363, 1, 'PC095HTC', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(364, 1, 'PC0DLEP7', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(365, 1, 'PC0DLD1W', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(366, 1, 'PC043JAM', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(367, 1, 'PC09MX7G', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(368, 1, 'PC09FF61', 'Lenovo think-pad X250', 0, '2021-03-30 22:00:00', 'Yes'),
(370, 3, '61893b3f075c7', 'Apple 45W MagSafe2 Power Adapter ', 51000, '2022-04-15 16:18:35', 'Yes'),
(371, 3, '61924da4942df', '20W USB-C POWER ADAPTER ', 51000, '2022-04-15 16:18:35', 'Yes'),
(372, 4, '6192639503cdc.', 'wificard', 0, '2022-04-15 16:18:35', 'Yes'),
(373, 5, '', 'PHILIPS MONITOR 4K', 0, '2022-06-20 18:37:38', 'No'),
(374, 5, '', 'PHILIPS MONITOR 4K', 0, '2022-06-29 15:20:45', 'No'),
(375, 6, '', '', 0, '2022-04-15 16:18:35', 'Yes'),
(376, 7, '', 'MacBook Pro 2019/16\"/ i7 / 16GB RAM / 512GB SSD', 0, '2022-04-15 16:18:35', 'Yes'),
(377, 8, '618911b96af7f', 'Apple 85W MagSafe2 Power Adapter', 0, '2022-04-15 16:18:35', 'Yes'),
(378, 9, '', 'MacBook Pro 2019/16\"/ i7 / 16GB RAM / 512GB SSD', 0, '2022-04-15 16:18:35', 'Yes'),
(379, 10, '', 'LENOVO THINKPAD i5 / 8GB / 512GB SSD', 0, '2022-04-15 16:18:35', 'Yes'),
(553, 42, '6959144051864', 'ELEVATE.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(381, 12, '618947e20d26c', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 0, '2022-04-15 16:18:35', 'Yes'),
(382, 13, 'SL1019196', 'Lenovo Thinkpad E15 i5/16GB/512GB', 0, '2022-04-15 16:18:35', 'Yes'),
(383, 13, 'MFP M179FNW', 'Hp color laserjet MFP M179FNW', 0, '2022-04-15 16:18:35', 'Yes'),
(384, 14, '', 'Dell Latitude 7370 FHD Business Laptop', 0, '2022-04-15 16:18:35', 'Yes'),
(385, 15, '888462664783', 'MAGIC MOUSE', 0, '2022-04-15 16:18:35', 'Yes'),
(386, 16, '', 'MacBook air 2019/i5 8GB RAM/128GB', 0, '2022-04-15 16:18:35', 'Yes'),
(387, 16, '', 'COMPUTER BAG', 0, '2022-04-15 16:18:35', 'Yes'),
(388, 17, '', 'MAGIC MOUSE', 0, '2022-04-15 16:18:35', 'Yes'),
(399, 21, '61891501cecda', 'Apple 45W MagSafe2 Power Adapter ', 0, '2022-04-15 16:18:35', 'Yes'),
(533, 33, '6959144053325', 'CHARISMA-2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(534, 34, '6188fccb86965', 'Apple 45W MagSafe2 Power Adapter ', 0, '2022-04-15 16:18:35', 'Yes'),
(531, 31, '6959144044361', 'CENTERHUB.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(532, 32, '6959144037813', '', 0, '2022-04-15 16:18:35', 'Yes'),
(529, 29, '6959144050256', 'BLUESBAR-60', 0, '2022-04-15 16:18:35', 'Yes'),
(530, 30, '6959144044361', 'CENTERHUB.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(400, 21, '61891501cecda', 'Apple 45W MagSafe2 Power Adapter ', 0, '2022-04-15 16:18:35', 'Yes'),
(401, 1, 'PC09361', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(402, 1, 'PC0AGBAQ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(403, 1, 'PC07G510', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(404, 1, 'PC09363N', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(405, 1, 'PC06SHJE', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(406, 1, 'PC06SHHL', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(407, 1, 'PC093643', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(408, 1, 'PC06SHHT', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(409, 1, 'PC07G507', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(410, 1, 'PC06SHJ1', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(411, 1, 'PC07GLGG', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(412, 1, 'PC083G7N', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(413, 1, 'PC08EGDP', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(414, 1, 'PC083G7L', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(415, 1, 'PC08EGDB', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(416, 1, 'PC09363P', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(417, 1, 'PC09F4VZ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(418, 1, 'PC07GLDX', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(419, 1, 'PC06YSDE', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(420, 1, 'PC07GLGF', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(421, 1, 'PC06SHJP', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(422, 1, 'PC07G50Z', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(423, 1, 'PC07GLEZ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(424, 1, 'PC06YSDL', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(425, 1, 'PC0B87DY', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(426, 1, 'PC07E9P7', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(427, 1, 'PC0AGBAM', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(428, 1, 'PC06EKGG', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(429, 1, 'PC07G50S', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(430, 1, 'PC082CTE', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(431, 1, 'PC07GLF2', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(432, 1, 'PC083G7E', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(433, 1, 'PC0AGBAR', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(434, 1, 'PC09363U', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(435, 1, 'PC0AGBAL', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(436, 1, 'PC07GLEY', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(437, 1, 'PC01YK5V', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(438, 1, 'PC07GLF9', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(439, 1, 'PC06SHHG', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(440, 1, 'PC07G50L', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(441, 1, 'PC0AGBB6', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(442, 1, 'PC08EGDG', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(443, 1, 'PC07GLDT', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(444, 1, 'PC05EP37', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(445, 1, 'STOLEN', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(446, 1, 'PC04DNPU', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(447, 1, 'PC07G50B', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(448, 1, 'PC06SHJF', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(449, 1, 'PC07GLGA', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(450, 1, 'PC080FJU', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(451, 1, 'PC080FKE', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(452, 1, 'PC04DNPW', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(453, 1, 'PC0CJLAP', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(454, 1, 'PC06SHHC', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(455, 1, 'PC09F4VH', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(456, 1, 'PC08EGD9', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(457, 1, 'PC080FJV', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(458, 1, 'PC09F4WS', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(459, 1, 'PC080FJS', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(460, 1, 'PC07GLFH', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(461, 1, 'PC05EP34', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(462, 1, 'PC09F4WD', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(463, 1, 'PC07RGRQ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(464, 1, 'PC0AGBAT', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(465, 1, 'PC06YSDU', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(466, 1, 'PC07G50J', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(467, 1, 'PC09363G', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(468, 1, 'PC0AGBAU', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(469, 1, 'PC048GAW', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(470, 1, 'PC0AGBAH', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(471, 1, 'PC083G7P', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(472, 1, 'PC07GLDW', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(473, 1, 'PC09F4WL', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(474, 1, 'PC07GLDQ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(475, 1, 'PC06YSDJ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(476, 1, 'PC06YSD9', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(477, 1, 'PC080FJY', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(478, 1, 'PC07GLEQ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(479, 1, 'PC080FKD', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(480, 1, 'PC07GLF4', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(481, 1, 'PC080FJZ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(482, 1, 'PC07E9PT', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(483, 1, 'PC0CJLAN', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(484, 1, 'PC09F4WX', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(485, 1, 'PC07E9PL', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(486, 1, 'PC09F4WW', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(487, 1, 'PC0ABAG', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(488, 1, 'PC08EGDX', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(489, 1, 'PC04DNQ2', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(490, 1, 'PC083G7D', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(491, 1, 'PC09F4WU', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(492, 1, 'PC06YSDB', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(493, 1, 'PC07GLEF', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(494, 1, 'PC09F4W4', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(495, 1, 'PC093642', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(496, 1, 'PC06SHH5', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(497, 1, 'PC09363W', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(498, 1, 'PC07G503', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(499, 1, 'PC04DNPX', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(500, 1, 'PC09F4VR', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(501, 1, 'PC083G7F', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(502, 1, 'PC0AGBAV', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(503, 1, 'PC09F4WF', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(504, 1, 'PC04DNPY', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(505, 1, 'PC06YSDR', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(506, 1, 'PC09363R', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(507, 1, 'PC06EKGE', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(508, 1, 'PC080FK6', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(509, 1, 'PC093644', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(510, 1, 'PC09F4VV', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(511, 1, 'PC0FYR1B', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(512, 1, 'PC07G50E', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(513, 1, 'PC09F4VN', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(514, 1, 'PC093645', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(515, 1, 'PC09F4VK', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(516, 1, 'PC06G3BJ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(517, 1, 'PC07K0SZ', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(518, 1, 'PC06EKGA', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(519, 1, 'PC0AGBB1', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(520, 1, 'PC0B87CN', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(521, 1, 'PC0DL1DC', 'Lenovo think-pad X250', 0, '2020-06-30 22:00:00', 'Yes'),
(522, 22, '6959144037110', 'RANGER-1', 0, '2022-04-15 16:18:35', 'Yes'),
(523, 23, '6959144044378', 'CENTERHUB.MAROON', 0, '2022-04-29 14:07:40', 'No'),
(524, 24, '6959144046709', 'SMARTUNE-2+', 0, '2022-05-13 08:47:43', 'No'),
(525, 25, '6959144020082', '', 0, '2022-04-15 16:18:35', 'Yes'),
(526, 26, '6959144045399', '', 0, '2022-05-10 15:00:56', 'No'),
(527, 27, '6959144045399', 'BIPLUG.UK-WT', 0, '2022-05-10 15:02:06', 'No'),
(528, 28, '6959144045399', 'BIPLUG.UK-WT', 0, '2022-05-10 15:04:28', 'No'),
(554, 42, '6959144051864', 'ELEVATE.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(548, 42, '6959144050256', 'BLUESBAR-60', 0, '2022-04-15 16:18:35', 'Yes'),
(549, 42, '6959144051581', 'INVADER.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(550, 42, '6959144051864', 'ELEVATE.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(551, 42, '6959144051864', 'ELEVATE.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(552, 42, '6959144051864', 'ELEVATE.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(555, 42, '6959144051864', 'ELEVATE.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(556, 42, '6959144051864', 'ELEVATE.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(557, 42, '6959144051888', 'ELEVATE.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(558, 42, '6959144051888', 'ELEVATE.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(559, 42, '6959144051888', 'ELEVATE.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(560, 42, '6959144051888', 'ELEVATE.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(561, 42, '6959144051888', 'ELEVATE.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(562, 42, '6959144052502', 'DESKMATE-5.SILVER', 0, '2022-04-15 16:18:35', 'Yes'),
(563, 42, '6959144052502', 'DESKMATE-5.SILVER', 0, '2022-04-15 16:18:35', 'Yes'),
(564, 42, '6959144052502', 'DESKMATE-5.SILVER', 0, '2022-04-15 16:18:35', 'Yes'),
(565, 42, '6959144052502', 'DESKMATE-5.SILVER', 0, '2022-04-15 16:18:35', 'Yes'),
(566, 42, '6959144052502', 'DESKMATE-5.SILVER', 0, '2022-04-15 16:18:35', 'Yes'),
(567, 42, '6959144052502', 'DESKMATE-5.SILVER', 0, '2022-04-15 16:18:35', 'Yes'),
(568, 42, '6959144052496', 'DESKMATE-5.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(569, 42, '6959144052502', 'DESKMATE-5.SILVER', 0, '2022-04-15 16:18:35', 'Yes'),
(570, 42, '6959144052441', 'PADHUB-PRO.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(571, 42, '6959144052441', 'PADHUB-PRO.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(572, 42, '6959144052441', 'PADHUB-PRO.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(573, 42, '6959144051116', 'SURFACEHUB-7.BLACK', 0, '2022-04-29 14:04:36', 'No'),
(574, 42, '6959144051123', 'SURFACEHUB-7.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(575, 42, '6959144051123', 'SURFACEHUB-7.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(576, 42, '6959144051123', 'SURFACEHUB-7.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(577, 42, '6959144051116', 'SURFACEHUB-7.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(578, 42, '6959144051123', 'SURFACEHUB-7.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(579, 42, '6959144051116', 'SURFACEHUB-7.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(580, 42, '6959144051116', 'SURFACEHUB-7.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(581, 42, '6959144051116', 'SURFACEHUB-7.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(582, 42, '6959144045368', 'EZHUB-7', 0, '2022-05-03 14:37:09', 'No'),
(583, 42, '6959144045368', 'EZHUB-7', 0, '2022-04-15 16:18:35', 'Yes'),
(584, 42, '6959144045368', 'EZHUB-7', 0, '2022-04-15 16:18:35', 'Yes'),
(585, 42, '6959144045368', 'EZHUB-7', 0, '2022-04-15 16:18:35', 'Yes'),
(586, 42, '6959144045368', 'EZHUB-7', 0, '2022-04-15 16:18:35', 'Yes'),
(587, 42, '6959144045368', 'EZHUB-7', 0, '2022-04-15 16:18:35', 'Yes'),
(588, 42, '6959144044378', 'CENTERHUB.MAROON', 0, '2022-04-15 16:18:35', 'Yes'),
(589, 42, '6959144044378', 'CENTERHUB.MAROON', 0, '2022-04-15 16:18:35', 'Yes'),
(590, 42, '6959144044361', 'CENTERHUB.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(591, 42, '6959144044361', 'CENTERHUB.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(592, 42, '6959144044361', 'CENTERHUB.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(593, 42, '6959144044361', 'CENTERHUB.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(594, 42, '6959144044361', 'CENTERHUB.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(595, 42, '888462664783', 'Magic Mouse ', 0, '2022-04-15 16:18:35', 'Yes'),
(596, 42, '888462664783', 'Magic Mouse ', 0, '2022-04-15 16:18:35', 'Yes'),
(597, 42, '888462650366', 'MAGIC KEYBOARD', 0, '2022-04-15 16:18:35', 'Yes'),
(598, 42, '888462650366', 'MAGIC KEYBOARD', 0, '2022-04-15 16:18:35', 'Yes'),
(599, 42, '4549995012873', 'USB-C 30W Power Adapter', 0, '2022-05-05 12:34:54', 'No'),
(600, 42, '4549995012873', 'USB-C 30W Power Adapter', 0, '2022-04-15 16:18:35', 'Yes'),
(601, 42, '4549995012873', 'USB-C 30W Power Adapter', 0, '2022-04-15 16:18:35', 'Yes'),
(602, 42, '190198099099', 'USB-C 87W Power Adapter', 0, '2022-04-30 12:56:01', 'No'),
(603, 42, '190198099099', 'USB-C 87W Power Adapter', 0, '2022-04-15 16:18:35', 'Yes'),
(604, 42, '190198099099', 'USB-C 87W Power Adapter', 0, '2022-04-15 16:18:35', 'Yes'),
(605, 42, '190198099099', 'USB-C 87W Power Adapter', 0, '2022-04-15 16:18:35', 'Yes'),
(606, 42, '190199351301', 'USB-C 96W Power Adapter', 0, '2022-04-15 16:18:35', 'Yes'),
(607, 42, '190199351301', 'USB-C 96W Power Adapter', 0, '2022-04-15 16:18:35', 'Yes'),
(608, 42, '6959144053325', 'CHARISMA-2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(609, 42, '6959144053325', 'CHARISMA-2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(610, 42, '6959144053325', 'CHARISMA-2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(611, 42, '6959144053325', 'CHARISMA-2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(612, 42, '6959144053325', 'CHARISMA-2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(613, 42, '190198531704', 'USB-C tO Lightning Cable (1m)', 0, '2022-06-24 12:06:03', 'No'),
(614, 42, '6959144052779', 'ICORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(615, 42, '6959144052779', 'ICORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(616, 42, '6959144052779', 'ICORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(617, 42, '6959144052779', 'ICORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(618, 42, '6959144042923', 'NERVELINK-I.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(619, 42, '6959144045092', 'POWERBEAM-CC2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(620, 42, '6959144045047', 'POWERBEAM-CC.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(621, 42, '6959144045092', 'POWERBEAM-CC2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(622, 42, '6959144045092', 'POWERBEAM-CC2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(623, 42, '6959144045092', 'POWERBEAM-CC2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(624, 42, '6959144052786', 'CCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(625, 42, '6959144052786', 'CCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(626, 42, '6959144052786', 'CCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(627, 42, '6959144052786', 'CCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(628, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(629, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(630, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(631, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(632, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(633, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(634, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(635, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(636, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(637, 42, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(638, 42, '6959144037813', 'CLIX-8.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(639, 42, '6959144037813', 'CLIX-8.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(640, 42, '6959144037813', 'CLIX-8.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(641, 42, '6959144044187', 'POWERCORD.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(642, 42, '6959144044187', 'POWERCORD.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(643, 42, '6959144044187', 'POWERCORD.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(644, 42, '6959144042923', 'NERVELINK-I.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(645, 42, '6959144042923', 'NERVELINK-I.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(646, 42, '6959144042923', 'NERVELINK-I.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(647, 42, '6959144042923', 'NERVELINK-I.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(648, 42, '6959144039213', 'IHINGE-LT.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(649, 42, '6959144039213', 'IHINGE-LT.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(650, 42, '6959144039213', 'IHINGE-LT.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(651, 42, '6959144039213', 'IHINGE-LT.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(652, 42, '6959144039213', 'IHINGE-LT.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(653, 42, '6959144039213', 'IHINGE-LT.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(654, 42, '6959144039213', 'IHINGE-LT.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(655, 42, '6959144039213', 'IHINGE-LT.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(656, 42, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(657, 42, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(658, 42, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(659, 42, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(660, 42, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(661, 42, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(662, 42, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(663, 42, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(664, 42, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes');
INSERT INTO `delivery_note_items` (`id`, `delivery_id`, `item_code`, `name`, `shop_price`, `date`, `IN_OUT`) VALUES
(665, 42, '6959144026442', 'UNILINK-TRIO.GOLD', 0, '2022-04-15 16:18:35', 'Yes'),
(666, 42, '6959144026442', 'UNILINK-TRIO.GOLD', 0, '2022-04-15 16:18:35', 'Yes'),
(667, 42, '6959144026442', 'UNILINK-TRIO.GOLD', 0, '2022-04-15 16:18:35', 'Yes'),
(668, 42, '6959144026442', 'UNILINK-TRIO.GOLD', 0, '2022-04-15 16:18:35', 'Yes'),
(669, 42, '6959144026442', 'UNILINK-TRIO.GOLD', 0, '2022-04-15 16:18:35', 'Yes'),
(670, 42, '6959144046464', 'NERVELINK-C.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(671, 42, '6959144046464', 'NERVELINK-C.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(672, 42, '6959144046464', 'NERVELINK-C.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(673, 42, '6959144046464', 'NERVELINK-C.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(674, 42, '6959144020181', 'AUXKIT.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(675, 42, '6959144020181', 'AUXKIT.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(676, 42, '6959144020181', 'AUXKIT.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(677, 42, '6959144020181', 'AUXKIT.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(678, 42, '6959144020181', 'AUXKIT.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(679, 42, '6959144020181', 'AUXKIT.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(680, 42, '6959144020181', 'AUXKIT.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(681, 42, '6959144046914', 'AUXLINK-I.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(682, 42, '6959144046914', 'AUXLINK-I.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(683, 42, '6959144046914', 'AUXLINK-I.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(684, 42, '6959144046914', 'AUXLINK-I.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(685, 42, '6959144046914', 'AUXLINK-I.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(686, 42, '6959144046914', 'AUXLINK-I.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(687, 42, '6959144046914', 'AUXLINK-I.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(688, 42, '6959144045047', 'POWERBEAM-CC.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(689, 42, '6959144045047', 'POWERBEAM-CC.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(690, 42, '6959144045047', 'POWERBEAM-CC.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(691, 42, '6959144045047', 'POWERBEAM-CC.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(692, 42, '6959144045047', 'POWERBEAM-CC.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(693, 42, '6959144045047', 'POWERBEAM-CC.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(694, 42, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(695, 42, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(696, 42, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(697, 42, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(698, 42, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(699, 42, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(700, 42, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(701, 42, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(702, 42, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(703, 42, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(704, 42, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(705, 42, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(706, 42, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(707, 42, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(708, 42, '6959144051253', 'HARMONI.WHITE', 0, '2022-04-22 12:37:57', 'No'),
(709, 42, '6959144051253', 'HARMONI.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(710, 42, '6959144051253', 'HARMONI.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(711, 42, '6959144051253', 'HARMONI.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(712, 42, '6959144051253', 'HARMONI.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(713, 42, '6959144039572', 'ENGAGE', 0, '2022-05-25 14:43:49', 'No'),
(714, 42, '6959144039572', 'ENGAGE', 0, '2022-04-15 16:18:35', 'Yes'),
(715, 42, '6959144039572', 'ENGAGE', 0, '2022-04-15 16:18:35', 'Yes'),
(716, 42, '6959144039572', 'ENGAGE', 0, '2022-04-15 16:18:35', 'Yes'),
(717, 42, '6959144045351', 'Silox-Pro / 30W High Definition TWS Speaker with LED Light Show', 0, '2022-04-22 11:58:17', 'No'),
(718, 42, '6959144045351', 'Silox-Pro / 30W High Definition TWS Speaker with LED Light Show', 0, '2022-04-15 16:18:35', 'Yes'),
(719, 42, '6959144045337', 'Silox-Pro / 30W High Definition TWS Speaker with LED Light Show', 0, '2022-04-15 16:18:35', 'Yes'),
(720, 42, '6959144045337', 'Silox-Pro / 30W High Definition TWS Speaker with LED Light Show', 0, '2022-04-15 16:18:35', 'Yes'),
(721, 42, '6959144045399', 'BIPLUG.UK-WT', 0, '2022-05-10 15:04:46', 'No'),
(722, 42, '6959144045399', 'BIPLUG.UK-WT', 0, '2022-04-15 16:18:35', 'Yes'),
(723, 42, '6959144045399', 'BIPLUG.UK-WT', 0, '2022-04-15 16:18:35', 'Yes'),
(724, 42, '6959144045399', 'BIPLUG.UK-WT', 0, '2022-04-15 16:18:35', 'Yes'),
(725, 42, '6959144045405', 'BIPLUG.UK-BK', 0, '2022-04-27 07:49:10', 'No'),
(726, 42, '6959144045405', 'BIPLUG.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(727, 42, '6959144045405', 'BIPLUG.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(728, 42, '6959144045405', 'BIPLUG.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(729, 42, '6959144046785', 'POWERCUBE-2.UK-WT', 0, '2022-04-15 16:18:35', 'Yes'),
(730, 42, '6959144046785', 'POWERCUBE-2.UK-WT', 0, '2022-04-15 16:18:35', 'Yes'),
(731, 42, '6959144046761', 'POWERCUBE-2.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(732, 42, '6959144046761', 'POWERCUBE-2.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(733, 42, '6959144046761', 'POWERCUBE-2.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(734, 42, '6959144046761', 'POWERCUBE-2.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(735, 42, '6959144046761', 'POWERCUBE-2.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(736, 42, '6959144046556', 'VOLTRIP-DUO.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(737, 42, '6959144046556', 'VOLTRIP-DUO.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(738, 42, '6959144046556', 'VOLTRIP-DUO.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(739, 42, '6959144046556', 'VOLTRIP-DUO.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(740, 42, '6959144052328', 'DRIVEGEAR-33W', 0, '2022-04-18 07:47:01', 'No'),
(741, 42, '6959144052328', 'DRIVEGEAR-33W', 0, '2022-04-15 16:18:35', 'Yes'),
(742, 42, '6959144052328', 'DRIVEGEAR-33W', 0, '2022-04-15 16:18:35', 'Yes'),
(743, 42, '6959144052328', 'DRIVEGEAR-33W', 0, '2022-04-15 16:18:35', 'Yes'),
(744, 42, '6959144052328', 'DRIVEGEAR-33W', 0, '2022-04-15 16:18:35', 'Yes'),
(745, 42, '6959144052328', 'DRIVEGEAR-33W', 0, '2022-04-15 16:18:35', 'Yes'),
(746, 42, '6959144051734', 'GANPORT-90PD.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(747, 42, '6959144051734', 'GANPORT-90PD.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(748, 42, '6959144051734', 'GANPORT-90PD.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(749, 42, '6959144046549', 'VOLTRIP-DUO.BLACK', 0, '2022-04-15 16:48:44', 'No'),
(750, 42, '6959144046549', 'VOLTRIP-DUO.BLACK', 0, '2022-04-15 16:48:44', 'No'),
(751, 42, '6959144046549', 'VOLTRIP-DUO.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(752, 42, '6959144037110', 'RANGER-1', 0, '2022-04-15 16:18:35', 'Yes'),
(753, 42, '6959144037110', 'RANGER-1', 0, '2022-04-15 16:18:35', 'Yes'),
(754, 42, '6959144037110', 'RANGER-1', 0, '2022-04-15 16:18:35', 'Yes'),
(755, 42, '6959144031989', 'AIRBASE-1.BLACK', 0, '2022-04-15 16:38:54', 'No'),
(756, 42, '6959144031989', 'AIRBASE-1.BLACK', 0, '2022-04-18 15:38:30', 'No'),
(757, 42, '6959144031729', 'PROLINK4K2-300', 0, '2022-04-15 16:18:35', 'Yes'),
(758, 42, '6959144031729', 'PROLINK4K2-300', 0, '2022-04-15 16:18:35', 'Yes'),
(759, 42, '6959144031729', 'PROLINK4K2-300', 0, '2022-04-15 16:18:35', 'Yes'),
(760, 42, '6959144031729', 'PROLINK4K2-300', 0, '2022-04-15 16:18:35', 'Yes'),
(761, 42, '6959144031712', 'PROLINK4K2-150', 0, '2022-04-15 16:18:35', 'Yes'),
(762, 42, '6959144031712', 'PROLINK4K2-150', 0, '2022-04-15 16:18:35', 'Yes'),
(763, 42, '6959144031712', 'PROLINK4K2-150', 0, '2022-04-15 16:18:35', 'Yes'),
(764, 42, '6959144031712', 'PROLINK4K2-150', 0, '2022-04-15 16:18:35', 'Yes'),
(765, 42, '6959144046709', 'SMARTUNE-2+', 0, '2022-04-15 16:18:35', 'Yes'),
(766, 42, '6959144046709', 'SMARTUNE-2+', 0, '2022-04-15 16:18:35', 'Yes'),
(767, 42, '6959144046709', 'SMARTUNE-2+', 0, '2022-04-15 16:18:35', 'Yes'),
(768, 42, '6959144046709', 'SMARTUNE-2+', 0, '2022-04-15 16:18:35', 'Yes'),
(769, 42, '6959144046709', 'SMARTUNE-2+', 0, '2022-04-15 16:18:35', 'Yes'),
(770, 42, '6959144031736', 'PROLINK4K2-500', 0, '2022-04-15 16:18:35', 'Yes'),
(771, 42, '6959144031736', 'PROLINK4K2-500', 0, '2022-04-15 16:18:35', 'Yes'),
(772, 42, '6959144031736', 'PROLINK4K2-500', 0, '2022-04-15 16:18:35', 'Yes'),
(773, 42, '6959144031736', 'PROLINK4K2-500', 0, '2022-04-15 16:18:35', 'Yes'),
(774, 42, '6959144031736', 'PROLINK4K2-500', 0, '2022-04-15 16:18:35', 'Yes'),
(775, 42, '6959144052854', 'PROLINK4K2-10M', 0, '2022-04-15 16:18:35', 'Yes'),
(776, 42, '6959144052854', 'PROLINK4K2-10M', 0, '2022-04-15 16:18:35', 'Yes'),
(777, 42, '6959144052854', 'PROLINK4K2-10M', 0, '2022-04-15 16:18:35', 'Yes'),
(778, 42, '6959144052854', 'PROLINK4K2-10M', 0, '2022-04-15 16:18:35', 'Yes'),
(779, 42, '6959144052854', 'PROLINK4K2-10M', 0, '2022-04-15 16:18:35', 'Yes'),
(780, 42, '6959144046617', 'BOLT-20.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(781, 42, '6959144046617', 'BOLT-20.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(782, 42, '6959144051437', 'THUNDERLINK-C20+', 0, '2022-04-18 07:44:03', 'No'),
(783, 42, '6959144051437', 'THUNDERLINK-C20+', 0, '2022-04-29 13:31:45', 'No'),
(784, 42, '6959144051437', 'THUNDERLINK-C20+', 0, '2022-04-15 16:18:35', 'Yes'),
(785, 42, '6959144051437', 'THUNDERLINK-C20+', 0, '2022-04-15 16:18:35', 'Yes'),
(786, 42, '6959144051437', 'THUNDERLINK-C20+', 0, '2022-04-15 16:18:35', 'Yes'),
(787, 42, '6959144046600', 'BOLT-20.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(788, 42, '6959144046600', 'BOLT-20.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(789, 42, '6959144046600', 'BOLT-20.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(790, 42, '6959144046600', 'BOLT-20.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(791, 42, '6959144046600', 'BOLT-20.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(792, 42, '6959144046952', 'BOLT-20.MNG', 0, '2022-04-15 16:18:35', 'Yes'),
(793, 42, '6959144046952', 'BOLT-20.MNG', 0, '2022-04-15 16:18:35', 'Yes'),
(794, 42, '6959144046952', 'BOLT-20.MNG', 0, '2022-04-15 16:18:35', 'Yes'),
(795, 42, '6959144046952', 'BOLT-20.MNG', 0, '2022-04-15 16:18:35', 'Yes'),
(796, 42, '6959144046952', 'BOLT-20.MNG', 0, '2022-04-15 16:18:35', 'Yes'),
(797, 42, '6959144046624', 'BOLT-20.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(798, 42, '6959144046624', 'BOLT-20.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(799, 42, '6959144046624', 'BOLT-20.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(800, 42, '6959144046624', 'BOLT-20.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(801, 42, '6959144046624', 'BOLT-20.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(802, 42, '6959144046624', 'BOLT-20.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(803, 42, '6959144046624', 'BOLT-20.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(804, 42, '6959144047072', 'SUAVE-2.BLACK', 0, '2022-04-18 07:47:01', 'No'),
(805, 42, '6959144047072', 'SUAVE-2.BLACK', 0, '2022-04-28 07:28:44', 'No'),
(806, 42, '6959144047072', 'SUAVE-2.BLACK', 0, '2022-05-04 15:31:48', 'No'),
(807, 42, '6959144047072', 'SUAVE-2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(808, 42, '6959144047072', 'SUAVE-2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(809, 42, '6959144047072', 'SUAVE-2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(810, 42, '6959144047072', 'SUAVE-2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(811, 42, '6959144047690', 'KEYPAD-1.BK/EN', 0, '2022-04-15 16:18:35', 'Yes'),
(812, 42, '6959144047690', 'KEYPAD-1.BK/EN', 0, '2022-04-15 16:18:35', 'Yes'),
(813, 42, '6959144047690', 'KEYPAD-1.BK/EN', 0, '2022-04-15 16:18:35', 'Yes'),
(814, 42, '6959144050768', 'PROCOMBO-11.BK/EN', 0, '2022-04-15 16:18:35', 'Yes'),
(815, 42, '8715946680224', 'EB-E01 EPSON', 0, '2022-04-15 16:18:35', 'Yes'),
(816, 42, '6959144027081', 'CARSHADE', 0, '2022-04-15 16:18:35', 'Yes'),
(817, 42, '6194e01796ad1', 'PHIlIPS MONITOR 4K', 0, '2022-04-15 16:18:35', 'Yes'),
(927, 62, '194252551042', 'MacBook Pro 2021 M1 chip / 14\"/ 16GB RAM / 512 GB SSD', 0, '2022-04-15 16:18:35', 'Yes'),
(928, 62, '194252696569', 'iphone 13 pro', 0, '2022-04-15 16:18:35', 'Yes'),
(929, 62, '194252048955', 'macbook air 13-inch 8GB/256GB with  m1 chip grey color', 0, '2022-04-15 16:18:35', 'Yes'),
(930, 62, '195908164685', 'Hp 14Laptop core i3 / 4GB RAM / 256GB SSD ', 0, '2022-04-15 16:18:35', 'Yes'),
(931, 62, '195235887677', 'lenovo thinkbook 14G2 ITL 8GB/', 0, '2022-04-15 16:18:35', 'Yes'),
(932, 62, '195348096157', 'LENOVO   4GB', 0, '2022-04-15 16:18:35', 'Yes'),
(933, 63, 'FVHFVNK3Q6L4', 'MacBook Air 2020 with M1 / 8GB RAM / 256GB SSD Gray Color', 0, '2022-04-15 16:18:35', 'Yes'),
(926, 62, '194252048955', 'macbook air 13-inch 8GB/256GB with  m1 chip grey color', 0, '2022-04-15 16:18:35', 'Yes'),
(925, 62, '194252048955', 'macbook air 13-inch 8GB/256GB with  m1 chip grey color', 0, '2022-04-15 16:18:35', 'Yes'),
(882, 57, '618ce7f88680c', 'Lion Premium Laser Toner Cartridge 26A / HP LI M402 / M426', 0, '2022-04-15 16:18:35', 'Yes'),
(883, 57, '618ce7f88680c', 'Lion Premium Laser Toner Cartridge 26A / HP LI M402 / M426', 0, '2022-04-15 16:18:35', 'Yes'),
(884, 57, '6959144044187', 'POWERCORD.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(885, 57, '6959144044187', 'POWERCORD.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(886, 58, '6959144047690', 'KEYPAD-1.BK/EN', 0, '2022-04-15 16:18:35', 'Yes'),
(887, 58, '6959144045337', 'Silox-Pro / 30W High Definition TWS Speaker with LED Light Show', 0, '2022-04-15 16:18:35', 'Yes'),
(888, 58, '6959144029900', 'GEARPOD-IS2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(889, 58, '6959144046617', 'BOLT-20.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(890, 58, '6959144051123', 'SURFACEHUB-7.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(891, 58, '6959144026442', 'UNILINK-TRIO.GOLD', 0, '2022-04-15 16:18:35', 'Yes'),
(892, 58, '6959144051734', 'GANPORT-90PD.UK-BK', 0, '2022-04-15 16:18:35', 'Yes'),
(893, 58, '6959144045047', 'POWERBEAM-CC.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(894, 58, '6959144052441', 'PADHUB-PRO.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(895, 58, '6959144046556', 'VOLTRIP-DUO.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(896, 58, '6959144044521', 'MICROCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(897, 58, '6959144046914', 'AUXLINK-I.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(898, 58, '6959144042923', 'NERVELINK-I.BLUE', 0, '2022-04-15 16:18:35', 'Yes'),
(899, 58, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(900, 58, '6959144052786', 'CCORD-1.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(901, 58, '6959144044361', 'CENTERHUB.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(902, 58, '6959144046709', 'SMARTUNE-2+', 0, '2022-04-15 16:18:35', 'Yes'),
(903, 58, '6959144039572', 'ENGAGE', 0, '2022-04-15 16:18:35', 'Yes'),
(904, 58, '6959144045399', 'BIPLUG.UK-WT', 0, '2022-04-15 16:18:35', 'Yes'),
(905, 58, '6959144045368', 'EZHUB-7', 0, '2022-04-15 16:18:35', 'Yes'),
(906, 58, '6959144031729', 'PROLINK4K2-300', 0, '2022-04-15 16:18:35', 'Yes'),
(907, 58, '6959144046785', 'POWERCUBE-2.UK-WT', 0, '2022-04-15 16:18:35', 'Yes'),
(908, 58, '6959144047072', 'SUAVE-2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(909, 58, '6959144053325', 'CHARISMA-2.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(910, 58, '6959144051253', 'HARMONI.WHITE', 0, '2022-04-15 16:18:35', 'Yes'),
(911, 58, '6959144051888', 'ELEVATE.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(912, 58, '6959144020181', 'AUXKIT.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(913, 58, '6959144037110', 'RANGER-1', 0, '2022-04-15 16:18:35', 'Yes'),
(914, 58, '6959144052496', 'DESKMATE-5.GREY', 0, '2022-04-15 16:18:35', 'Yes'),
(915, 58, '6959144027081', 'CARSHADE', 0, '2022-04-15 16:18:35', 'Yes'),
(916, 59, '6959144044378', 'CENTERHUB.MAROON', 0, '2022-04-15 16:18:35', 'Yes'),
(917, 59, '6959144044378', 'CENTERHUB.MAROON', 0, '2022-04-15 16:18:35', 'Yes'),
(918, 59, '6959144044378', 'CENTERHUB.MAROON', 0, '2022-04-15 16:18:35', 'Yes'),
(919, 59, '6959144044378', 'CENTERHUB.MAROON', 0, '2022-04-15 16:18:35', 'Yes'),
(920, 60, '6959144044378', 'CENTERHUB.MAROON', 0, '2022-04-15 16:18:35', 'Yes'),
(921, 60, '6959144031712', 'PROLINK4K2-150', 0, '2022-04-15 16:18:35', 'Yes'),
(922, 61, '6959144044378', 'CENTERHUB.MAROON', 0, '2022-04-15 16:18:35', 'Yes'),
(923, 61, '6959144031712', 'PROLINK4K2-150', 0, '2022-04-15 16:18:35', 'Yes'),
(948, 64, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(949, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(950, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(951, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(952, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(953, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(954, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(955, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(956, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(957, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(958, 65, '6959144029924', 'GEARPOD-IS2.BLACK', 0, '2022-04-15 16:18:35', 'Yes'),
(959, 66, 'FVHWMM598J1WK', 'Macbook air 2017 ,13\" i5/8GB/256GB', 0, '2022-04-15 16:18:35', 'Yes'),
(960, 67, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(961, 68, '618ce7f88680c', 'Lion Premium Laser Toner Cartridge 26A / HP LI M402 / M426', 0, '2022-04-15 16:18:35', 'Yes'),
(962, 68, '618ce7f88680c', 'Lion Premium Laser Toner Cartridge 26A / HP LI M402 / M426', 0, '2022-04-15 16:18:35', 'Yes'),
(963, 68, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(964, 68, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(965, 68, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(966, 68, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(967, 68, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(968, 68, '6959144044712', 'AUXLINK-C', 0, '2022-04-15 16:18:35', 'Yes'),
(990, 72, 'cnd20900s2', 'HP ENVY X360', 0, '2022-05-20 12:04:57', ''),
(993, 75, 'FVFHM4NQ6L4', 'MACBOOK AIR 2020 13\" RAM 8GB/256GB SSD', 0, '2022-06-16 11:53:11', ''),
(969, 69, 'CO2CM12PPV4N', 'MACBOOK AIR(RETINA ,13-INCH,2020 8GB/256GB', 0, '2022-04-25 10:11:52', ''),
(970, 69, 'A1369/A1466', 'AIR 13\" Hardshell case A1369/A1466 TRANSPARENT', 0, '2022-04-25 10:49:41', ''),
(971, 69, 'A1987/A2108', 'New pro 13\" hardshell case', 0, '2022-04-25 10:50:24', ''),
(972, 69, 'A1425/A1502', 'Retina 13\" hardshell case', 0, '2022-04-25 10:51:00', ''),
(973, 69, 'A1398', 'Retina 15\" hardshell case', 0, '2022-04-25 10:51:31', ''),
(974, 69, 'CO2W609CG8WN', 'MacBook Pro(retina)15_inch 2015 / i7 / 16GB RAM / 256GB SSD', 0, '2022-04-25 10:52:03', ''),
(975, 69, '194252721247', 'Airpods pro', 0, '2022-04-25 10:59:23', ''),
(976, 69, '194252721247', 'Airpods pro', 0, '2022-04-25 10:59:24', ''),
(977, 69, 'C02R3PRVFVH5', 'MacBook Pro 2015,13-inch / i5 / 8GB RAM / 256GB SSD', 0, '2022-04-25 11:00:59', ''),
(978, 69, 'CO2TP20WFVH4', 'Macbook pro retina,13\"i5 2015/16GB/256GB SSD', 0, '2022-04-25 11:03:43', ''),
(979, 69, 'CO2N71A4G5RN', 'Macbook air 13-inch  2014 /i5 /8GB/256GD SSD', 0, '2022-04-25 11:05:45', ''),
(980, 70, '4547597987520', 'Magic keyboard with numeric kepad', 0, '2022-04-28 10:39:59', ''),
(981, 70, '888462664783', 'Magic Mouse ', 0, '2022-04-28 10:40:59', ''),
(982, 70, '888462664783', 'Magic Mouse ', 0, '2022-04-28 10:41:20', ''),
(983, 70, '888462664783', 'Magic Mouse ', 0, '2022-04-28 10:41:34', ''),
(984, 70, '6959144052441', 'PADHUB-PRO.GREY (USB-C Multimedia Hub)', 0, '2022-04-28 10:43:16', ''),
(985, 70, '6959144052441', 'PADHUB-PRO.GREY (USB-C Multimedia Hub)', 0, '2022-04-28 10:43:40', ''),
(986, 70, '6959144052496', 'DESKMATE-5.GREY', 0, '2022-04-28 10:47:12', ''),
(987, 70, '6959144052496', 'DESKMATE-5.GREY', 0, '2022-04-28 10:47:25', ''),
(988, 71, 'C02RP1J5GTHX', 'Macbook (Retina, 12-inch ,2016, core m3,8GB/256GB)', 0, '2022-04-28 11:39:35', ''),
(989, 71, 'C02X2OKPG8WL', 'macbook pro (retina,15\"2015/i7/16GB/1TBB', 0, '2022-04-28 11:46:25', ''),
(991, 73, 'CND20900S2', 'HP ENVY X360', 0, '2022-05-20 13:03:08', ''),
(992, 74, 'C02RP1J5GTHX', 'Macbook (Retina, 12-inch ,2016, core m3,8GB/256GB)', 0, '2022-05-20 13:23:18', ''),
(994, 76, '050751000376', 'Keyboard and Mouse', 0, '2022-06-27 11:58:45', ''),
(995, 76, '050751000371', 'Keyboard and Mouse', 0, '2022-06-27 12:00:04', ''),
(996, 76, '050751000372', 'Keyboard and Mouse', 0, '2022-06-27 12:00:55', ''),
(997, 76, '050751000377', 'Keyboard and Mouse', 0, '2022-06-27 12:01:37', ''),
(998, 76, '050751000380', 'Keyboard and Mouse', 0, '2022-06-27 12:02:19', ''),
(999, 76, '050751000361', 'Keyboard and Mouse', 0, '2022-06-27 12:02:59', ''),
(1000, 76, 'UK02203016658', 'PHILIPS MONITORS 4K', 0, '2022-06-27 12:04:42', ''),
(1001, 76, 'UK02203016660', 'PHILIPS MONITORS 4K', 0, '2022-06-27 12:05:52', ''),
(1002, 76, 'UK02203016642', 'PHILIPS MONITORS 4K', 0, '2022-06-27 12:06:35', ''),
(1003, 76, 'UK02203016651', 'PHILIPS MONITORS 4K', 0, '2022-06-27 12:07:13', ''),
(1004, 76, 'UK02203016697', 'PHILIPS MONITORS 4K', 0, '2022-06-27 12:07:53', ''),
(1005, 76, 'UK02203016661', 'PHILIPS MONITORS 4K', 0, '2022-06-27 12:09:23', ''),
(1006, 76, '000001', 'NOTEBOOK COMPUTERLOCK', 0, '2022-06-27 12:10:52', ''),
(1007, 76, '000002', 'NOTEBOOK COMPUTERLOCK', 0, '2022-06-27 12:11:36', ''),
(1008, 76, '000003', 'NOTEBOOK COMPUTERLOCK', 0, '2022-06-27 12:12:08', ''),
(1009, 76, '000004', 'NOTEBOOK COMPUTERLOCK', 0, '2022-06-27 12:12:41', ''),
(1010, 76, '000005', 'NOTEBOOK COMPUTERLOCK', 0, '2022-06-27 12:12:59', ''),
(1011, 76, '000006', 'NOTEBOOK COMPUTERLOCK', 0, '2022-06-27 12:13:23', ''),
(1012, 77, 'FVFHM1ZC0KPF', 'MACBOOK PRO 2020 M1 13 inch 16GB 1TB', 0, '2022-07-01 16:41:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(1, 1, 34, 2),
(2, 1, 35, 1),
(3, 2, 45, 3),
(4, 2, 43, 2),
(5, 2, 45, 3),
(6, 2, 43, 2);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `price`) VALUES
(4, 'kicukiro', 1000),
(5, 'gasabo', 1000),
(6, 'nyarugenge', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('pending','confirmed','cancelled') DEFAULT 'pending',
  `payment` decimal(10,2) DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `start_datetime`, `end_datetime`, `user_id`, `status`, `payment`, `description`, `created_at`) VALUES
(4, 'Conference', '2024-09-05 10:00:00', '2024-09-05 16:00:00', 18, 'confirmed', 150.00, 'Annual tech conference', '2024-09-09 06:27:18'),
(5, 'Workshop', '2024-09-15 09:00:00', '2024-09-15 12:00:00', 18, '', 50.00, 'Hands-on coding workshop', '2024-09-09 06:27:18'),
(6, 'Meetup', '2024-09-25 18:00:00', '2024-09-25 20:00:00', 18, 'confirmed', 0.00, 'Developer community meetup', '2024-09-09 06:27:18'),
(8, 'new test event', '2024-09-17 00:00:00', '2024-09-23 00:00:00', 18, 'cancelled', 0.00, 'wedding', '2024-09-15 12:29:19'),
(9, 'new test event2', '2024-09-29 00:00:00', '2024-10-01 00:00:00', 18, 'confirmed', 0.00, 'okk', '2024-09-15 12:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `general_expenses`
--

CREATE TABLE `general_expenses` (
  `id` int(11) NOT NULL,
  `expense` text NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `general_expenses`
--

INSERT INTO `general_expenses` (`id`, `expense`, `date`, `amount`, `user_id`, `status`) VALUES
(23, 'Office Internet Exp', '2022-05-10', 48500, 87, 'Requested'),
(24, '3 Office File', '2022-06-17', 4500, 87, 'Requested'),
(25, 'Tissue', '2022-06-17', 700, 87, 'Requested'),
(19, 'Printing', '2022-05-04', 40950, 87, 'Approved'),
(20, 'Printing & stationary(office paper)', '2022-05-04', 5500, 87, 'Approved'),
(15, 'Salary', '2022-04-09', 4500000, 79, 'Requested'),
(16, 'cleaning march', '2022-04-09', 4500000, 79, 'Requested'),
(17, 'salary-march', '2022-04-22', 351000, 86, 'Requested'),
(18, 'salary-march&APRIL FOR CLEANER', '2022-04-25', 20000, 86, 'Requested'),
(21, 'water for office', '2022-05-06', 2300, 87, 'Approved'),
(22, 'stationary exp (files)', '2022-05-06', 4500, 87, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order`
--

CREATE TABLE `invoice_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_receiver_name` varchar(250) DEFAULT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_before_tax` decimal(10,2) NOT NULL,
  `order_total_tax` decimal(10,2) NOT NULL,
  `order_tax_per` varchar(250) NOT NULL,
  `order_total_after_tax` double(10,2) NOT NULL,
  `order_amount_paid` decimal(10,2) NOT NULL,
  `order_total_amount_due` decimal(10,2) NOT NULL,
  `note` text NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `vat` int(10) DEFAULT NULL,
  `account` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_order`
--

INSERT INTO `invoice_order` (`order_id`, `user_id`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax`, `order_tax_per`, `order_total_after_tax`, `order_amount_paid`, `order_total_amount_due`, `note`, `type`, `vat`, `account`) VALUES
(11, 61, '2021-12-15 08:37:24', 'CHRISTOPHE KWIZERA', 'KIGALI', 1200000.00, 0.00, '', 0.00, 0.00, 0.00, 'THANK YOU', '0', 0, NULL),
(12, 61, '2021-12-15 08:43:27', 'CHRISTOPHE KWIZERA', 'KIGALI', 1200000.00, 0.00, '', 1200000.00, 0.00, 0.00, '', '1', 0, NULL),
(13, 61, '2022-01-04 13:28:30', 'NGEYEN VICTORY', 'KIGALI', 930000.00, 0.00, '', 930000.00, 0.00, 0.00, '', '1', 0, NULL),
(21, 61, '2022-02-16 08:11:57', 'UNDP', 'Kigali- Nyarugenge', 7800000.00, 1404000.00, '', 9204000.00, 0.00, 0.00, '', '0', NULL, NULL),
(24, 61, '2022-02-16 09:24:50', 'ADRA Rwanda', 'KACYIRU', 93000.00, 0.00, '', 93000.00, 0.00, 0.00, 'same day delivery', '0', 0, NULL),
(25, 61, '2022-02-16 09:31:32', 'ADRA Rwanda', 'kacyiru', 93000.00, 0.00, '', 93000.00, 0.00, 0.00, 'Bank account \r\nEquity:4002200429885', '1', 0, NULL),
(32, 61, '2022-02-17 09:41:32', 'aux', 'KIGALI', 15000.00, 0.00, '', 15000.00, 0.00, 0.00, 'THANK YOU', '1', 0, NULL),
(33, 61, '2022-02-18 10:48:13', 'ADRA Rwanda1', 'KIGALI-KACYIRU', 93000.00, 0.00, '', 93000.00, 0.00, 0.00, '', '1', 0, NULL),
(34, 61, '2022-02-21 09:42:08', 'TUBURA', 'KIGALI', 2561000.00, 0.00, '', 2561000.00, 0.00, 0.00, 'N.B  This price will be valid within 15 days only.\r\n\r\nTHANKS   for shopping with us', '0', 0, NULL),
(35, 61, '2022-02-21 10:07:26', 'TUBURA', 'KIGALI', 2561000.00, 0.00, '', 2561000.00, 0.00, 0.00, 'N: B This price  will be valid within 15days\r\n\r\nthanks\r\n\r\n', '0', 0, NULL),
(36, 61, '2022-02-22 16:17:30', 'UNDP', 'KIGALI', 83000.00, 0.00, '', 83000.00, 0.00, 0.00, 'THANKS FOR SHOPPING WITH US.', '1', 0, NULL),
(39, 61, '2022-02-23 10:23:27', 'JABU LOGISTICS', 'NAMIBIA', 2498083.20, 0.00, '', 2498083.20, 0.00, 0.00, 'THIS PRICE IS EQUAL TO 2400 USD', '1', 0, NULL),
(40, 61, '2022-02-23 10:28:32', 'JABU LOGISTICS', 'NAMIBIA', 2487000.00, 0.00, '', 2487000.00, 0.00, 0.00, '', '0', 0, NULL),
(42, 61, '2022-02-23 14:58:05', 'Rwanda pediatric ASSOCIATION', '  KICUKIRO', 889500.00, 0.00, '', 889500.00, 0.00, 0.00, '', '0', 0, NULL),
(43, 61, '2022-02-24 06:25:19', 'Rwanda pediatric ASSOCIATION', 'KICUKIRO', 2550000.00, 0.00, '', 2550000.00, 0.00, 0.00, '', '0', 0, NULL),
(44, 49, '2022-02-24 07:31:29', 'RWACOF', 'KK 625 St, Kanserege-Gikondo, Kigali, Rwanda	\r\n', 2152000.00, 0.00, '', 0.00, 0.00, 0.00, 'Done at Kigali on 23 February 2022', '0', 0, NULL),
(45, 61, '2022-02-28 15:26:27', 'Ananias', 'KIGALI-NYARUGENGE', 8000.00, 0.00, '', 8000.00, 0.00, 0.00, 'RECEIVED', '1', 0, NULL),
(46, 61, '2022-02-28 15:34:29', 'GIRLS', 'MARRIOT HOTEL', 17500.00, 0.00, '', 17500.00, 0.00, 0.00, 'THANKS', '1', 0, NULL),
(47, 61, '2022-02-28 15:43:53', 'DAVID', 'KIGALI', 110000.00, 0.00, '', 110000.00, 0.00, 0.00, 'WELL RECEIVED', '1', 0, NULL),
(48, 61, '2022-03-03 16:55:09', 'EBERE', 'kigali', 25000.00, 0.00, '', 25000.00, 0.00, 0.00, '', '1', 0, NULL),
(50, 61, '2022-03-31 13:51:16', 'GT BANK', 'KIGALI', 5900000.00, 0.00, '', 5900000.00, 0.00, 0.00, 'THANKS FOR SHOPPING WITH US', '0', 0, NULL),
(51, 61, '2022-03-31 14:45:20', 'HEIFER INTERNATIONAL RWANDA', 'KIGALI', 6200000.00, 0.00, '', 6200000.00, 0.00, 0.00, '', '0', 0, NULL),
(52, 61, '2022-04-01 11:40:24', 'Ananias', 'KIGALI', 8500.00, 0.00, '', 8500.00, 0.00, 0.00, '', '1', 0, NULL),
(53, 61, '2022-04-01 12:35:52', 'NEVER AGAIN RWANDA', 'RWANDA', 0.00, 0.00, '', 0.00, 0.00, 0.00, '', '0', 0, NULL),
(54, 61, '2022-04-01 13:18:22', 'NEVER AGAIN RWANDA', 'RWANDA', 38317500.00, 0.00, '', 38317500.00, 0.00, 0.00, '', '0', 0, NULL),
(55, 61, '2022-04-01 13:39:39', 'GT BANK', 'KIGALI-NYARUGENGE', 4808000.00, 0.00, '', 4808000.00, 0.00, 0.00, '', '0', 0, NULL),
(56, 61, '2022-04-01 14:51:27', 'CYUSA', 'KIGALI', 1300000.00, 0.00, '', 1300000.00, 0.00, 0.00, 'THANKS', '1', 0, NULL),
(57, 61, '2022-04-02 09:14:15', 'RSC Global', 'kigali', 2200000.00, 0.00, '', 2200000.00, 0.00, 0.00, '', '0', 0, NULL),
(58, 61, '2022-04-02 09:17:44', 'RSC Global', 'kigali', 2100000.00, 0.00, '', 2100000.00, 0.00, 0.00, '', '0', 0, NULL),
(59, 61, '2022-04-02 09:30:09', 'RSC Global', 'Kigali', 4090000.00, 0.00, '', 4090000.00, 0.00, 0.00, '', '0', 0, NULL),
(60, 61, '2022-04-02 12:01:58', 'NADIA KAREMERA', 'KIGALI', 1150000.00, 0.00, '', 1150000.00, 0.00, 0.00, '', '1', 0, NULL),
(61, 61, '2022-04-04 13:48:07', 'Lipalater', 'kigali', 1460000.00, 0.00, '', 1460000.00, 0.00, 0.00, 'thanks!', '0', 0, NULL),
(62, 61, '2022-04-04 14:40:30', 'AMBI VISION CAPITAL', 'KIGALI', 850000.00, 0.00, '', 850000.00, 0.00, 0.00, 'THANKS', '0', 0, NULL),
(63, 61, '2022-04-04 14:51:29', 'AMBI VISION CAPITAL', 'KIGALI', 800000.00, 0.00, '', 800000.00, 0.00, 0.00, 'THANKS', '0', 0, NULL),
(64, 61, '2022-04-04 14:52:23', 'AMBI VISION CAPITAL', 'KIGALI', 800000.00, 0.00, '', 800000.00, 0.00, 0.00, 'THANKS', '0', 0, NULL),
(65, 61, '2022-04-05 08:51:38', 'Threestones', 'KIGALI', 1320000.00, 0.00, '', 1320000.00, 0.00, 0.00, 'THANKS!', '0', 0, NULL),
(66, 61, '2022-04-05 09:39:13', 'Equip Rwanda', 'Kigali', 2542000.00, 0.00, '', 2542000.00, 0.00, 0.00, 'thanka', '0', 0, NULL),
(67, 61, '2022-04-05 10:10:10', 'ADRA Rwanda', 'Kigali', 115000.00, 0.00, '', 115000.00, 0.00, 0.00, 'THANKS!', '0', 0, NULL),
(68, 61, '2022-04-05 13:22:04', 'ARNOLD RWIMA MAHI', 'KIGALI', 950000.00, 0.00, '', 950000.00, 0.00, 0.00, 'THANKS!', '1', 0, NULL),
(69, 61, '2022-04-05 14:54:24', 'Lipalater', 'KIGALI', 4820000.00, 0.00, '', 4820000.00, 0.00, 0.00, 'THANKS', '0', 0, NULL),
(70, 61, '2022-04-05 15:48:11', 'ISAAC', 'KIGALI', 7000.00, 0.00, '', 7000.00, 0.00, 0.00, 'THANKS!', '1', 0, NULL),
(71, 61, '2022-04-05 15:50:39', 'STRATTON', 'KIGALI', 8000.00, 0.00, '', 8000.00, 0.00, 0.00, 'THANKS!', '1', 0, NULL),
(73, 79, '2022-04-07 08:13:52', 'SGR', 'Nyamirambo', 88000.00, 0.00, '', 0.00, 0.00, 0.00, 'test today', '0', -88000, NULL),
(75, 61, '2022-04-08 14:21:32', 'YAYRA', 'KIGALI', 650000.00, 0.00, '', 650000.00, 0.00, 0.00, '1-year warranty. Thanks for shopping with us!!', '1', 0, NULL),
(76, 61, '2022-04-11 07:19:36', 'GT BANK', 'KIGALI', 155000.00, 0.00, '', 155000.00, 0.00, 0.00, 'THANKS!', '0', 0, NULL),
(77, 61, '2022-04-11 13:52:46', 'axcel', 'KIGALI', 43000.00, 0.00, '', 43000.00, 0.00, 0.00, 'THANKS', '1', 0, NULL),
(78, 61, '2022-04-11 19:28:36', 'test2', 'y', 11000.00, 0.00, '', 12039.86, 0.00, 0.00, 'ok', '1', 1040, NULL),
(79, 61, '2022-04-13 16:28:20', 'RSC Global', 'KIGALI', 7274500.00, 0.00, '', 7274500.00, 0.00, 0.00, '', '0', 0, NULL),
(80, 61, '2022-04-14 09:37:24', 'Vanessa MUTESI', 'Rwanda-Kigali', 25000.00, 0.00, '', 25000.00, 0.00, 0.00, '', '1', 0, NULL),
(93, 61, '2022-04-18 15:38:30', 'Remy', 'Kigali', 22000.00, 0.00, '', 22000.00, 0.00, 0.00, '', '1', 0, NULL),
(94, 61, '2022-04-21 09:18:37', 'Threestones', 'KIGALI', 1350000.00, 0.00, '', 1350000.00, 0.00, 0.00, '', '0', 0, NULL),
(95, 61, '2022-04-21 10:32:34', 'Threestones', 'Kigali', 1533000.00, 0.00, '', 1533000.00, 0.00, 0.00, '', '0', 0, NULL),
(96, 61, '2022-04-22 11:53:19', 'placide', 'Kigali', 60000.00, 0.00, '', 60000.00, 0.00, 0.00, 'Thanks', '1', 0, NULL),
(97, 61, '2022-04-22 11:58:17', 'placide', 'Kigali', 60000.00, 0.00, '', 60000.00, 0.00, 0.00, '', '1', 0, NULL),
(99, 61, '2022-04-26 08:43:23', 'davis college', 'Kigali', 434700.00, 0.00, '', 434700.00, 0.00, 0.00, 'thank you for working with us!!!', '0', 0, NULL),
(100, 61, '2022-04-27 07:49:10', 'jolly', 'Kigali', 6000.00, 0.00, '', 6000.00, 0.00, 0.00, '', '1', 0, NULL),
(101, 61, '2022-04-28 07:28:44', 'KAZUNGU', 'Kigali', 12000.00, 0.00, '', 12000.00, 0.00, 0.00, 'thank you!!!', '1', 0, NULL),
(102, 61, '2022-04-29 08:56:25', 'ATL', 'Kigali', 100000.00, 0.00, '', 100000.00, 0.00, 0.00, '', '0', 0, NULL),
(103, 61, '2022-04-29 09:39:01', 'HATIBOU MOHAMED', 'Kigali', 700000.00, 0.00, '', 700000.00, 0.00, 0.00, '', '1', 0, NULL),
(104, 61, '2022-04-29 13:31:45', 'thunderbolt', 'Kigali', 25000.00, 0.00, '', 25000.00, 0.00, 0.00, '', '1', 0, NULL),
(105, 61, '2022-04-29 13:39:25', 'KAYIGIRE dominique', 'Kigali', 1615000.00, 0.00, '', 1615000.00, 0.00, 0.00, '', '1', 0, NULL),
(108, 61, '2022-04-30 12:56:01', 'Gad', 'Kigali- nyargenge \r\n0788837341', 85000.00, 0.00, '', 85000.00, 0.00, 0.00, '', '1', 0, NULL),
(109, 61, '2022-05-03 14:31:25', 'Wali printing ', 'Kigali', 60000.00, 0.00, '', 60000.00, 0.00, 0.00, '', '1', 0, NULL),
(110, 61, '2022-05-03 14:37:09', 'Wali printing ', 'Kigali', 24000.00, 0.00, '', 24000.00, 0.00, 0.00, '', '1', 0, NULL),
(111, 61, '2022-05-04 08:51:42', 'altech', 'KN 78st,Nyarugenge,kigali', 3500000.00, 0.00, '', 3500000.00, 0.00, 0.00, '', '0', 0, NULL),
(112, 61, '2022-05-04 11:47:17', 'GT BANK', 'Kigali', 9696000.00, 0.00, '', 9696000.00, 0.00, 0.00, 'Done', '0', 0, NULL),
(113, 61, '2022-05-04 11:59:07', 'GT BANK', 'Kigali', 46246000.00, 0.00, '', 46246000.00, 0.00, 0.00, '', '0', 0, NULL),
(114, 61, '2022-05-04 14:54:08', 'Ananias', 'Kigali', 16000.00, 0.00, '', 16000.00, 0.00, 0.00, '', '1', 0, NULL),
(115, 61, '2022-05-04 15:31:48', 'RUTAMBI', 'KIGALI', 15000.00, 0.00, '', 15000.00, 0.00, 0.00, 'DONE', '1', 0, NULL),
(116, 61, '2022-05-05 12:34:54', 'ALICE BAYINGANA', 'KK354 HOUSE NUMBER 23', 85000.00, 0.00, '', 85000.00, 0.00, 0.00, 'DONE', '1', 0, NULL),
(119, 61, '2022-05-06 15:06:21', 'NADEGE GAJU', 'KIGALI', 1350000.00, 0.00, '', 1350000.00, 0.00, 0.00, 'DONE', '1', 0, NULL),
(120, 61, '2022-05-06 15:12:37', 'RWANDA EQUIP EDUCATION QUALITY IMPROVEMENT PROGRAM', 'KIGALI', 2563000.00, 0.00, '', 2563000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(121, 61, '2022-05-06 15:36:45', 'RWANDA EQUIP EDUCATION QUALITY IMPROVEMENT PROGRAM', 'KIGALI', 5157000.00, 0.00, '', 5157000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(123, 61, '2022-05-10 15:00:56', 'ANANIAS', '0786688349', 6000.00, 0.00, '', 6000.00, 0.00, 0.00, '', '1', 0, NULL),
(124, 61, '2022-05-10 15:02:06', 'NAHAYO GILBERT', '0788313739', 6000.00, 0.00, '', 6000.00, 0.00, 0.00, '', '1', 0, NULL),
(125, 61, '2022-05-10 15:04:28', 'NAHAYO GILBERT', '0788313739', 6000.00, 0.00, '', 6000.00, 0.00, 0.00, '', '1', 0, NULL),
(126, 61, '2022-05-10 15:04:46', 'NAHAYO GILBERT', '0788313739', 6000.00, 0.00, '', 6000.00, 0.00, 0.00, '', '1', 0, NULL),
(127, 61, '2022-05-13 08:47:43', 'TONY ODUNDO', '0785472830', 17000.00, 0.00, '', 17000.00, 0.00, 0.00, 'DONE', '1', 0, NULL),
(128, 61, '2022-05-13 09:47:59', 'Rwanda Equip', 'KIGALI,0788657363', 30000.00, 0.00, '', 30000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(129, 61, '2022-05-14 09:12:28', 'TONY ODUNDO', '0785472830', 2382800.00, 0.00, '', 2382800.00, 0.00, 0.00, 'done', '0', 0, NULL),
(130, 61, '2022-05-14 09:15:56', 'TONY ODUNDO', '0785472830', 4082800.00, 0.00, '', 4082800.00, 0.00, 0.00, 'done', '0', 0, NULL),
(131, 61, '2022-05-16 18:38:28', 'arnaud GATERA MUGISHA', '0788679142', 0.00, 0.00, '', 0.00, 0.00, 0.00, '', '1', 0, NULL),
(132, 61, '2022-05-16 18:39:40', 'arnaud GATERA MUGISHA', '0788679142', 700000.00, 0.00, '', 700000.00, 0.00, 0.00, '', '1', 0, NULL),
(133, 61, '2022-05-16 19:07:53', 'arnaud GATERA MUGISHA', '0788679142', 0.00, 0.00, '', 0.00, 0.00, 0.00, '', '1', 0, NULL),
(134, 61, '2022-05-16 19:09:42', 'arnaud GATERA MUGISHA', '0788679142', 700000.00, 0.00, '', 700000.00, 0.00, 0.00, '', '1', 0, NULL),
(135, 61, '2022-05-18 09:48:19', '', '', 0.00, 0.00, '', 0.00, 0.00, 0.00, '', '0', 0, NULL),
(136, 61, '2022-05-18 09:50:29', 'Compassion international Rwanda', '0788 300 884', 26000.00, 0.00, '', 26000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(137, 61, '2022-05-19 07:49:50', 'Educate', 'kigali', 7282000.00, 0.00, '', 7282000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(138, 61, '2022-05-20 11:07:46', 'Explorer solution Ltd', '0785597132', 10445988.00, 0.00, '', 10445988.00, 0.00, 0.00, 'done', '0', 0, NULL),
(139, 61, '2022-05-20 12:40:22', 'ABEL TONY NIYINDAGIYE', '0783332000', 600000.00, 0.00, '', 600000.00, 0.00, 0.00, '3 MONTH WARRANTY', '1', 0, NULL),
(140, 61, '2022-05-24 14:04:19', 'JUMELAGE', '0788585138', 61000.00, 0.00, '', 61000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(141, 61, '2022-05-24 14:10:41', 'JUMELAGE', '0788585138', 1250000.00, 0.00, '', 1250000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(142, 61, '2022-05-25 07:29:28', 'SIMPLY BLACK ', 'KIGALI', 1950000.00, 0.00, '', 1950000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(143, 61, '2022-05-25 07:34:21', 'SIMPLY BLACK ', '14th Floor ,KN 2 ST\r\n Nyarugenge ,\r\nPlot No.6418\r\n+250789175415', 1950000.00, 0.00, '', 1950000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(144, 61, '2022-05-25 07:39:35', 'SIMPLY BLACK ', '14th Floor,KN 2ST\r\nNyarugenge\r\nPlot No.6418\r\nKigali\r\n+250789175415', 3900000.00, 0.00, '', 3900000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(145, 87, '2022-05-25 14:43:49', 'VEREIN PARTNERS JUM', '100602914', 1311000.00, 0.00, '', 1311000.00, 0.00, 0.00, 'WARRANTY OF  1 YEAR PH ENVY  X 360 \r\nWARRANTY OF 2 YEARS  MONO EARPHONE (ENGAGE)', '1', 0, NULL),
(146, 61, '2022-05-26 13:45:47', 'Liquid Intelligent Technologies', 'Kiyovu-Nyarugenge', 130000.00, 0.00, '', 130000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(147, 61, '2022-05-27 12:44:26', 'Educate', 'Kigali', 3765000.00, 0.00, '', 3765000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(148, 87, '2022-06-01 08:46:09', 'SEMANZI', '0788641793', 0.00, 0.00, '', 0.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(149, 87, '2022-06-01 08:52:17', 'SEMANZI   BRUCE', '0788641793', 750000.00, 0.00, '', 750000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(150, 87, '2022-06-01 09:43:11', 'EDUCATE', 'KIGALI', 4815000.00, 0.00, '', 4815000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(151, 87, '2022-06-01 10:09:00', 'EDUCATE', 'KIGALI', 3965000.00, 0.00, '', 3965000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(152, 87, '2022-06-01 11:17:15', 'UNFPA', 'Kigali', 5990000.00, 0.00, '', 5990000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(153, 87, '2022-06-01 11:20:15', 'TECHNICO TRADING', 'Kigali,0788641793', 1500000.00, 0.00, '', 1500000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(154, 87, '2022-06-01 11:53:37', 'UNFPA', 'Kigali', 6091000.00, 0.00, '', 6091000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(155, 87, '2022-06-01 15:28:59', 'RICHARD KAREMERA', '0782264560', 0.00, 0.00, '', 0.00, 0.00, 0.00, '', '1', 0, NULL),
(156, 61, '2022-06-03 15:49:55', 'Equip Rwanda', 'Kigali Rwanda/0788657363', 3000000.00, 0.00, '', 3000000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(157, 61, '2022-06-06 10:53:04', 'EDUCATE', 'EMAIL ADDRESS: celestin@experienceeducate.org/0788331645', 2915000.00, 0.00, '', 2915000.00, 0.00, 0.00, 'done', '1', 0, NULL),
(158, 61, '2022-06-06 11:17:40', 'EDUCATE RWANDA', 'EMAIL ADDRESS: celestin@experienceeducate.org/:0788331645', 2915000.00, 0.00, '', 2915000.00, 0.00, 0.00, 'done', '1', 0, NULL),
(159, 61, '2022-06-06 13:17:46', 'Equip Rwanda', 'Kigali Rwanda/0788657363', 1590000.00, 0.00, '', 1590000.00, 0.00, 0.00, 'done', '1', 0, NULL),
(160, 61, '2022-06-07 10:24:51', 'UGHE', '0783829257', 55000.00, 0.00, '', 55000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(161, 61, '2022-06-07 11:27:27', 'UGHE', '0783829257', 35000.00, 0.00, '', 35000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(162, 61, '2022-06-07 12:15:38', 'UGHE', '0783829257', 35000.00, 0.00, '', 41300.00, 0.00, 0.00, 'done', '0', 6300, NULL),
(163, 61, '2022-06-07 16:08:42', 'NABU GLOBAL INC ', '0788749418', 2084000.00, 0.00, '', 2084000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(164, 61, '2022-06-07 16:26:04', 'EDUCATE RWANDA', 'EMAIL ADDRESS: celestin@experienceeducate.org/0788331645', 2915000.00, 0.00, '', 2915000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(165, 61, '2022-06-10 09:59:16', 'EDUCATE RWANDA', 'EMAIL ADDRESS: celestin@experienceeducate.org/0788331645', 3965000.00, 0.00, '', 3965000.00, 0.00, 0.00, 'ONE  YEAR  WARRANTY (1YEAR)', '1', 0, NULL),
(166, 61, '2022-06-10 13:46:00', 'Eric Mugirangaba', 'Kigali Rwanda', 1660800.00, 0.00, '', 1660800.00, 0.00, 0.00, 'done', '0', 0, NULL),
(167, 61, '2022-06-10 15:05:08', 'Market force technologies Ltd', 'Kigali, Rwanda', 1600000.00, 0.00, '', 1600000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(168, 61, '2022-06-10 15:08:39', 'Market force technologies Ltd', 'Kigali, Rwanda', 1600000.00, 0.00, '', 1600000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(169, 61, '2022-06-13 07:56:33', 'UGHE', 'Kigali/ Rwanda  0783829257', 105000.00, 0.00, '', 123900.00, 0.00, 0.00, 'Done', '0', 18900, NULL),
(170, 61, '2022-06-13 09:10:14', 'BENEMUHWE ', 'Kigali /Rwanda  0788410830', 35000.00, 0.00, '', 35000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(171, 61, '2022-06-13 09:13:45', 'UGHE', 'Kigali/ Rwanda 0783829257', 70000.00, 0.00, '', 82600.00, 0.00, 0.00, 'done', '0', 12600, NULL),
(172, 87, '2022-06-13 20:11:56', 'test', 'test', 60000.00, 0.00, '', 60000.00, 0.00, 0.00, 'tets', '0', 0, 'acount 08998877477555bk'),
(173, 87, '2022-06-16 11:56:50', 'Lipalater', 'KIGALI/RWANDA  0788941241', 1350000.00, 0.00, '', 1350000.00, 0.00, 0.00, 'ONE YEAR WARRANTY', '1', 0, NULL),
(174, 61, '2022-06-16 12:01:11', 'Lipalater', 'Kigali/Rwanda  0788941241', 1350000.00, 0.00, '', 1350000.00, 0.00, 0.00, 'One year  Warranty', '1', 0, NULL),
(175, 87, '2022-06-16 13:48:15', 'JUMELAGE', 'Kigali/Rwanda', 0.00, 0.00, '', 0.00, 0.00, 0.00, '', '1', 0, NULL),
(176, 87, '2022-06-16 13:51:52', 'JUMELAGE', 'Kigali/Rwanda', 6000.00, 0.00, '', 6000.00, 0.00, 0.00, 'DONE', '1', 0, NULL),
(177, 61, '2022-06-18 09:18:38', 'AIMABLE', 'Kigali/Rwanda  0788293596', 0.00, 0.00, '', 0.00, 0.00, 0.00, '', '1', 0, NULL),
(178, 61, '2022-06-18 09:20:19', 'AIMABLE', 'Kigali/Rwanda  0788293596', 85000.00, 0.00, '', 85000.00, 0.00, 0.00, 'DONE', '1', 0, NULL),
(179, 61, '2022-06-20 18:37:38', 'xxx', 'xxx', 600000.00, 0.00, '', 600000.00, 0.00, 0.00, '', '1', 0, NULL),
(180, 61, '2022-06-21 15:25:52', 'Akademiya2063', 'Kigali, Rwanda', 2600000.00, 0.00, '', 2600000.00, 0.00, 0.00, 'DONE.', '0', 0, NULL),
(181, 61, '2022-06-23 14:29:12', 'Prime Spot Media Ltd', 'KK 1 Av. Kimihurura\r\nKigali Rwanda\r\n0781520255', 2600000.00, 0.00, '', 2600000.00, 0.00, 0.00, 'Bank Name:GT bank\r\n Acc Name:Reading technology Ltd\r\n Acc No: FRW:211/218396/1/5118/0\r\n                  USD:211/218396/2/5118/0\r\n', '0', 0, NULL),
(182, 61, '2022-06-24 09:26:28', 'MARKETFORCE TECHNOLOGIES', 'Kigali/Rwanda\r\nPhone No:0788437', 850000.00, 0.00, '', 850000.00, 0.00, 0.00, 'Bank Details: GT bank\r\nBank Name: Reading technology Ltd:\r\nBank Acc:   FRW:211/218396/1/5118/0\r\n                       USD:211/218396/2/5118/0\r\n', '0', 0, NULL),
(183, 87, '2022-06-24 11:40:41', 'Shanton', 'Kigali Rwanda:+250788318981', 25000.00, 0.00, '', 25000.00, 0.00, 0.00, 'Bank Name: GT bank\r\nBank Acc Name: Reading technology Ltd:\r\nBank Account: FRW 211/218396/1/5118/0\r\n                                USD 211/218396/2/5118/0\r\nMomo  phone: 0782860021\r\n', '1', 0, NULL),
(184, 87, '2022-06-24 12:02:16', 'Shanton', 'Kigali/Rwanda \r\n0788318781', 25000.00, 0.00, '', 25000.00, 0.00, 0.00, 'Done ', '1', 0, NULL),
(185, 61, '2022-06-24 12:06:03', 'Shanton', 'Kigali/Rwanda\r\n0788318981', 25000.00, 0.00, '', 25000.00, 0.00, 0.00, '\r\nBank Name: GT bank\r\nAcc Name: Reading technology Ltd\r\nAcc  No: FRW:211/218396/1/5118/0\r\n                 USD:211/218396/2/5118/0\r\n\r\n', '1', 0, NULL),
(186, 61, '2022-06-27 14:17:31', 'ARNORD IGABE', 'kigali/Rwanda\r\n0782714741', 690000.00, 0.00, '', 690000.00, 0.00, 0.00, 'Done', '0', 0, NULL),
(187, 87, '2022-06-27 16:37:19', '', '', 0.00, 0.00, '', 0.00, 0.00, 0.00, '', '0', 0, ''),
(188, 87, '2022-06-27 16:39:07', 'KAREGEYA RICHARD', 'Kigali/Rwanda\r\n0782264560', 550000.00, 0.00, '', 550000.00, 0.00, 0.00, 'done', '0', 0, ''),
(189, 87, '2022-06-28 12:46:24', 'KAREGEYA RICHARD', 'Kigali/Rwanda\r\n0782264560', 550000.00, 0.00, '', 550000.00, 0.00, 0.00, 'Done', '0', 0, ''),
(190, 87, '2022-06-28 14:03:38', 'Lt Col BUKURU Jhon', 'Kigali/Rwanda\r\n0788754769', 1972740.00, 0.00, '', 1972740.00, 0.00, 0.00, 'done', '0', 0, ''),
(191, 87, '2022-06-28 14:34:21', 'SDDY KHALES', 'Kigali/Rwanda\r\n0789615901', 600000.00, 0.00, '', 600000.00, 0.00, 0.00, 'Done', '0', 0, ''),
(192, 87, '2022-06-29 14:39:09', 'Prime Spot Media Ltd', 'Kigali/Rwanda\r\n0781520255', 2600000.00, 0.00, '', 2600000.00, 0.00, 0.00, 'done', '0', 0, ''),
(193, 87, '2022-06-29 14:51:51', 'GASTON NYIRIGIRA', 'Kigali/Rwanda\r\n0788424972', 1485000.00, 0.00, '', 1485000.00, 0.00, 0.00, 'done', '0', 0, ''),
(194, 87, '2022-06-29 15:07:41', 'LASER TECH', 'Kigali/Rwanda', 1100000.00, 0.00, '', 1100000.00, 0.00, 0.00, 'DONE', '0', 0, ''),
(195, 87, '2022-06-29 15:20:45', 'eq', 'Kigali/Rwanda', 0.00, 0.00, '', 0.00, 0.00, 0.00, '', '1', 0, NULL),
(196, 87, '2022-06-29 15:22:50', 'Equip Rwanda', 'Kigali/Rwanda\r\n0788657363', 85000.00, 0.00, '', 85000.00, 0.00, 0.00, 'Done', '0', 0, ''),
(197, 87, '2022-06-29 15:29:24', 'Equip Rwanda', 'Kigali/Rwanda\r\n 0788657363', 85000.00, 0.00, '', 85000.00, 0.00, 0.00, 'Done', '0', 0, ''),
(198, 87, '2022-07-01 16:36:57', 'AKADEMIYA2063', '- Kicukiro/Niboye KK 341 Plot 22 - Kigali, Rwanda', 2600000.00, 0.00, '', 2600000.00, 0.00, 0.00, 'Bank Details: GT bank\r\nAcc Name: Reading technology Ltd\r\nAcc No: FRW:211/218396/1/5118/0\r\n                  USD:211/218396/2/5118/', '1', 0, NULL),
(199, 87, '2022-07-05 20:10:24', 'ANDRE NTEZIRYAYO', '', 29000000.00, 0.00, '', 29000000.00, 0.00, 0.00, '', '0', 0, ''),
(200, 87, '2022-07-05 20:25:32', ' ANDRE NTEZIRYAYO', '', 29000000.00, 0.00, '', 29000000.00, 0.00, 0.00, '', '0', 0, 'GT Bank:<br/>\r\nAccount Name: Reading Technology Ltd\r\nAcc number: 211/218396/1/5118/0 (RWF)\r\n 211/218396/2/5118/0 (USD)<br/>\r\n\r\nEquity Bank:<br/>\r\nAccount Name: Reading Technology Ltd\r\nAcc number:4002200429886 USD 400220042885 RWF'),
(201, 87, '2022-07-05 20:33:32', 'ALPHONSE NSENGIYUMVA', '', 29000000.00, 0.00, '', 29000000.00, 0.00, 0.00, '', '0', 0, 'GT Bank:<br/>\r\nAccount Name: Reading Technology Ltd\r\nAcc number: 211/218396/1/5118/0 (RWF)\r\n 211/218396/2/5118/0 (USD)<br/>\r\n\r\nEquity Bank:<br/>\r\nAccount Name: Reading Technology Ltd\r\nAcc number:4002200429886 USD 400220042885 RWF'),
(202, 61, '2022-07-12 09:37:13', 'Rwanda Equip', 'KIGALI, RWANDA', 14930000.00, 0.00, '', 14930000.00, 0.00, 0.00, 'DONE.', '0', 0, NULL),
(203, 61, '2022-07-12 09:52:01', 'RDF ENGENEER BRIGADE ', 'KIGALI, RWANDA', 1500000.00, 0.00, '', 1500000.00, 0.00, 0.00, 'done', '0', 0, NULL),
(204, 61, '2022-07-12 10:02:09', 'RWANDA EQUIP ', 'Kigali, Rwanda', 14660000.00, 0.00, '', 14660000.00, 0.00, 0.00, 'DONE', '0', 0, NULL),
(205, 61, '2022-07-12 10:11:21', 'RDF ENGENEER BRIGADE ', 'Kigali,Rwanda', 1500000.00, 0.00, '', 1500000.00, 0.00, 0.00, 'DONE.', '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order_item`
--

CREATE TABLE `invoice_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_code` varchar(250) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,2) NOT NULL,
  `order_item_price` decimal(10,2) NOT NULL,
  `order_item_final_amount` decimal(10,2) NOT NULL,
  `sub_total_vat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice_order_item`
--

INSERT INTO `invoice_order_item` (`order_item_id`, `order_id`, `item_code`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_final_amount`, `sub_total_vat`) VALUES
(2, 2, '1', 'Lenovo think-pad X250 I5, 8GB RAM, 320GB HDD', 2.00, 50000.00, 100000.00, 0),
(3, 2, '2', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 4.00, 500000.00, 2000000.00, 0),
(4, 2, '3', 'Surface Pro  4 charger 12v 3.6A', 5.00, 20000.00, 100000.00, 0),
(5, 9, '618f7572cc020', 'MacBook Air 2019 / i5 / 8GB RAM / 128GB SSD Gold Color', 1.00, 886000.00, 886000.00, 0),
(6, 9, '618f7572cc020', 'MacBook Air 2019 / i5 / 8GB RAM / 128GB SSD Gold Color', 1.00, 886000.00, 886000.00, 0),
(7, 9, '618f7572cc020', 'MacBook Air 2019 / i5 / 8GB RAM / 128GB SSD Gold Color', 1.00, 886000.00, 886000.00, 0),
(12, 11, '1', 'MacBook Pro 2019/13\"/ i5 / 16GB RAM / 512GB SSD ', 1.00, 1200000.00, 1200000.00, 0),
(13, 12, 'C02YV0X2LVDN', 'MACBOOK PRO 2019 -i516GB /512 GB', 1.00, 1200000.00, 1200000.00, 0),
(14, 13, 'C02WFB2CHV29', 'MacBook Pro 2017 / i5 / 8GB RAM / 256GB SSD Gray Color', 1.00, 930000.00, 930000.00, 0),
(17, 15, '244433', 'mac', 1.00, 99999999.99, 99999999.99, 0),
(18, 16, '1', 'Apple 45W MagSafe2 Power Adapter ', 1.00, 590000.00, 590000.00, 0),
(19, 16, '2', 'Apple 45W MagSafe2 Power Adapter ', 2.00, 5788888.00, 11577776.00, 0),
(20, 16, '3', 'Apple 60W MagSafe2 Power Adapter ', 2.00, 600000.00, 1200000.00, 0),
(21, 16, '4', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 4.00, 788.00, 3152.00, 0),
(22, 16, '5', 'Apple 60W MagSafe2 Power Adapter ', 6.00, 5688.00, 34128.00, 0),
(23, 16, '6', 'Apple 85W MagSafe2 Power Adapter  ', 1.00, 5000000.00, 5000000.00, 0),
(24, 16, '7', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 1.00, 5000000.00, 5000000.00, 0),
(25, 16, '8', 'MacBook Pro 2016 / i5 / 8GB RAM / 256GB SSD Gray Color', 1.00, 5000000.00, 5000000.00, 0),
(26, 16, '9', 'MacBook Pro 2016 / i5 / 8GB RAM / 256GB SSD Gray Color', 1.00, 5000000.00, 5000000.00, 0),
(27, 16, '10', 'MacBook Air 2019 / i5 / 8GB RAM / 128GB SSD Gold Color', 1.00, 5000000.00, 5000000.00, 0),
(28, 16, '11', 'MacBook Air 2019 / i5 / 8GB RAM / 128GB SSD Gold Color', 2.00, 5000001.00, 10000002.00, 0),
(29, 16, '12', 'MacBook Air 2019 / i5 / 8GB RAM / 128GB SSD Gold Color', 2.00, 5000000.00, 10000000.00, 0),
(30, 16, '13', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 2.00, 5000000.00, 10000000.00, 0),
(31, 16, '14', 'MacBook Air 2019 / i5 / 8GB RAM / 128GB SSD Gold Color', 2.00, 5000000.00, 10000000.00, 0),
(32, 16, '15', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 2.00, 5000000.00, 10000000.00, 0),
(33, 16, '16', 'MacBook Air 2019 / i5 / 8GB RAM / 128GB SSD Gold Color', 3.00, 5000000.00, 15000000.00, 0),
(34, 16, '17', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 5.00, 5000000.00, 25000000.00, 0),
(35, 16, '18', 'Apple 60W MagSafe2 Power Adapter ', 6.00, 5000000.00, 30000000.00, 0),
(36, 16, '19', 'Apple 60W MagSafe2 Power Adapter ', 2.00, 5000000.00, 10000000.00, 0),
(37, 16, '20', 'Apple 60W MagSafe2 Power Adapter ', 1.00, 5000000.00, 5000000.00, 0),
(38, 16, '21', 'MacBook Pro 2016 / i5 / 8GB RAM / 256GB SSD Gray Color', 2.00, 5000000.00, 10000000.00, 0),
(39, 16, '22', 'Apple 85W MagSafe2 Power Adapter  ', 3.00, 5000000.00, 15000000.00, 0),
(40, 16, '23', 'Apple 60W MagSafe2 Power Adapter ', 4.00, 5000000.00, 20000000.00, 0),
(41, 16, '24', 'Apple 60W MagSafe2 Power Adapter ', 2.00, 5000000.00, 10000000.00, 0),
(42, 16, '25', 'Apple 60W MagSafe2 Power Adapter ', 1.00, 5000000.00, 5000000.00, 0),
(43, 16, '26', 'Apple 45W MagSafe2 Power Adapter ', 4.00, 5000000.00, 20000000.00, 0),
(44, 16, '27', 'Apple 45W MagSafe2 Power Adapter ', 4.00, 5000000.00, 20000000.00, 0),
(45, 16, '28', 'Apple 85W MagSafe2 Power Adapter  ', 5.00, 5000000.00, 25000000.00, 0),
(46, 16, '29', 'Apple 85W MagSafe2 Power Adapter  ', 2.00, 5000000.00, 10000000.00, 0),
(47, 16, '30', 'Apple 85W MagSafe2 Power Adapter  ', 4.00, 5000000.00, 20000000.00, 0),
(48, 16, '31', 'Apple 85W MagSafe2 Power Adapter  ', 4.00, 5000000.00, 20000000.00, 0),
(49, 16, '32', 'Apple 85W MagSafe2 Power Adapter  ', 5.00, 5000000.00, 25000000.00, 0),
(50, 17, '1', 'Dell Latitude 7370 FHD Business Laptop', 2.00, 55000.00, 110000.00, 0),
(51, 17, '2', 'MacBook Pro 2020 with M1 / 8GB RAM / 256GB SSD', 1.00, 100000.00, 100000.00, 0),
(52, 17, '3', 'LENOVO THINKPAD E15 GEN 2', 2.00, 500000.00, 1000000.00, 0),
(53, 18, '1', 'Dell Latitude 7370 FHD Business Laptop', 4.00, 600000.00, 2400000.00, 0),
(54, 18, '2', 'MacBook Pro 2020 / i5 / 8GB RAM / 256GB SSD', 3.00, 60000.00, 180000.00, 0),
(55, 18, '3', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 3.00, 100000.00, 300000.00, 0),
(56, 19, '1', 'Lion Premium Laser Toner Cartridge 05A / HP LI 2035 / 2055', 1.00, 1000.00, 1000.00, 0),
(57, 19, '2', 'Lion Premium Laser Toner Cartridge 05A / HP LI 2035 / 2055', 2.00, 1000.00, 2000.00, 0),
(58, 20, '1', 'Apple 60W MagSafe2 Power Adapter ', 1.00, 1000.00, 1000.00, 0),
(59, 20, '2', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 2.00, 1000.00, 2000.00, 0),
(60, 21, '1', 'CANON EOS5 Mark iv digital camera body only', 1.00, 2800000.00, 2800000.00, 0),
(61, 21, '2', 'Camera bag  ', 1.00, 58000.00, 58000.00, 0),
(62, 21, '3', 'Lexar XQD card 64GB 2933X Professional (2000x)', 1.00, 135000.00, 135000.00, 0),
(63, 21, '4', 'Canon EF 24-105mm 4.0 L IS II USM optic lens', 1.00, 2000000.00, 2000000.00, 0),
(64, 21, '5', 'Canon extra battery LP-E6nh', 1.00, 175000.00, 175000.00, 0),
(65, 21, '6', 'Canon LC-E6E battery charger (CHINESE)', 1.00, 168000.00, 168000.00, 0),
(66, 21, '7', 'Lavalier tie microphone', 1.00, 51000.00, 51000.00, 0),
(67, 21, '8', 'Boyar', 1.00, 648000.00, 648000.00, 0),
(68, 21, '9', 'Boya micro clavate', 1.00, 174000.00, 174000.00, 0),
(69, 21, '10', 'Ur interest', 1.00, 1591000.00, 1591000.00, 0),
(70, 22, '1', 'Lenovo think-pad X250 I5, 8GB RAM, 320GB HDD', 10.00, 5000.00, 50000.00, 0),
(71, 22, '2', 'Panasonic  Core i5 / 128GB SSD / 4GB RAM', 10.00, 5000.00, 50000.00, 0),
(72, 23, '1', 'PROLINK4K2-150', 1.00, 60000.00, 60000.00, 0),
(73, 23, '2', 'CENTERHUB.MAROON', 1.00, 85000.00, 85000.00, 0),
(74, 24, '1', 'PROLINK4K2-150', 1.00, 8000.00, 8000.00, 0),
(75, 24, '2', 'CENTERHUB.MAROON', 1.00, 85000.00, 85000.00, 0),
(76, 25, '6959144031712', 'PROLINK4K2-150', 1.00, 8000.00, 8000.00, 0),
(77, 25, '6959144044361', 'CENTERHUB.BLACK', 1.00, 85000.00, 85000.00, 0),
(78, 26, '6959144029924', 'GEARPOD-IS2.BLACK', 1.00, 7000.00, 7000.00, 0),
(79, 27, '1', 'Apple 45W MagSafe2 Power Adapter ', 1.00, 1000.00, 1000.00, 180),
(80, 27, '2', 'Apple 60W MagSafe2 Power Adapter ', 2.00, 1000.00, 2000.00, 360),
(81, 28, '1', 'CHARISMA-2.WHITE', 5.00, 80000.00, 400000.00, 72000),
(82, 28, '2', 'GEARPOD-IS2.BLACK', 3.00, 230000.00, 690000.00, 0),
(83, 29, 'asdf', 'asdf', 1.00, 40000.00, 40000.00, 0),
(84, 30, '195235887677', 'lenovo thinkbook 14G2 ITL 8GB', 1.00, 885000.00, 885000.00, 0),
(85, 30, '195235887677', 'lenovo thinkbook 14G2 ITL 8GB', 1.00, 885000.00, 885000.00, 0),
(86, 30, '195235887677', 'lenovo thinkbook 14G2 ITL 8GB', 1.00, 885000.00, 885000.00, 0),
(87, 30, '195235887677', 'lenovo thinkbook 14G2 ITL 8GB', 1.00, 885000.00, 885000.00, 159300),
(88, 31, '1', 'MacBook pro 2020  13inches M1/8GB/256GB SSD', 2.00, 1000.00, 2000.00, 18),
(89, 31, '2', 'MacBook pro 2020  13inches M1/8GB/256GB SSD', 2.00, 1000.00, 2000.00, 0),
(90, 32, '6959144046921', 'auxlink-i.black', 1.00, 15000.00, 15000.00, 0),
(91, 33, '6959144044378', 'CENTERHUB.MAROON', 1.00, 85000.00, 85000.00, 0),
(92, 33, '6959144031712', 'PROLINK4K2-150', 1.00, 8000.00, 8000.00, 0),
(93, 34, '1', 'tablets', 1.00, 240000.00, 240000.00, 0),
(94, 34, '2', 'DELL LATITUDE E3520', 1.00, 1265000.00, 1265000.00, 0),
(95, 34, '3', 'DELL LATITUDE E3420  i5', 1.00, 1056000.00, 1056000.00, 0),
(96, 35, '1', 'TAblet(sumsung i7 lite-size 8.7/storage 32GB ,3GB RAM,NTW;4GB', 1.00, 240000.00, 240000.00, 0),
(97, 35, '2', 'DELL LATITUDE E3520 11TH gen intel core i7-1165g7 @2.80ghz 8GB RAM 256GB nvme  intel  tiger lake-up3 WINDOWS 10 PRO ', 1.00, 1265000.00, 1265000.00, 0),
(98, 35, '3', 'DELL LATITUDES E3420 11TH GEN ,INTEL CORE i5-1135g7@2.40ghz ,16GB RAM 256GB ,NVME Intel Tiger lake-GT2 ,WINDOWS 10 PRO', 1.00, 1056000.00, 1056000.00, 0),
(99, 36, '190198099099', 'USB-C 87W Power Adapter', 1.00, 83000.00, 83000.00, 0),
(100, 37, 'F02F4B0BE797', '', 1.00, 0.00, 0.00, 0),
(101, 38, 'F02F4B0BE797', '', 1.00, 0.00, 0.00, 0),
(102, 39, '194252551042', 'MacBook Pro 2021 M1 chip / 14\"/ 16GB RAM / 512 GB SSD', 1.00, 2498083.20, 2498083.20, 0),
(103, 40, '1', 'MACBOOK PRO 2021 14\"MI 16GB/512GB', 1.00, 2487000.00, 2487000.00, 0),
(104, 41, '1', 'lenovo thinkbook 14G2 ITL 8GB/', 1.00, 0.00, 0.00, 0),
(105, 42, '1', 'lenovo thinkbook 14G2 ITL 8GB/', 1.00, 889500.00, 889500.00, 0),
(106, 43, '1', 'lenovo thinkbook 14G2 ITL 8GB/', 3.00, 850000.00, 2550000.00, 0),
(107, 44, '1', 'Dell inspiron 5310, 11TH GEN INTEL CORE i5-11320H @ 3.20GHz, 8GB RAM, 256 GB, FHD+ Intel Tiger Lake-UP3, win 10 ', 1.00, 932000.00, 932000.00, 0),
(108, 44, '2', 'Dell inspiron 5310, 11TH GEN INTEL CORE I7-11390h @ 3.40GHZ, 16GB RAM, 512 GB, FHD+ Intel Tiger Lake-UP3, win 10', 1.00, 1220000.00, 1220000.00, 0),
(109, 45, '6959144045047', 'POWERBEAM-CC.BLACK', 1.00, 8000.00, 8000.00, 0),
(110, 46, '6959144029900', 'GEARPOD-IS2.WHITE', 1.00, 6500.00, 6500.00, 0),
(111, 46, '6959144046914', 'AUXLINK-I.BLACK', 1.00, 11000.00, 11000.00, 0),
(112, 47, '888462664783', 'Magic Mouse ', 1.00, 110000.00, 110000.00, 0),
(113, 48, '6959144051437', 'THUNDERLINK-C20+', 1.00, 25000.00, 25000.00, 0),
(114, 49, '	194252696569', '', 1.00, 0.00, 0.00, 0),
(115, 50, '1', 'Macbook pro -space gray apple m1 max chip with 10-core CPU , 32-core GPU ,and 16-core neural engine  32 gb unified memory 1 TB SSD storege 16-inch liquid retina XDR display 3 thurnderbolt 4 ports , HDMI port,  SDXC card slot , magsafe 3 ports 140w US', 1.00, 5900000.00, 5900000.00, 0),
(116, 51, '1', 'Macbook pro  2020 M1 i5, 13inch 128GB', 1.00, 1850000.00, 1850000.00, 0),
(117, 51, '2', 'MacBook Pro 2021 M1 chip / 14\"/ 16GB RAM / 512 GB SSD512BG', 1.00, 2850000.00, 2850000.00, 0),
(118, 51, '3', 'Macbook Air 2020 M1, 13inch 8GB ,256GB', 1.00, 1500000.00, 1500000.00, 0),
(119, 52, '6959144045092', 'POWERBEAM-CC2.BLACK', 1.00, 8500.00, 8500.00, 0),
(120, 53, '1', 'MacBook Pro apple m1 chip with 8-core cpu,8-core GPU,and 16-core neural engine ', 0.00, 0.00, 0.00, 0),
(121, 54, '1', 'MacBook Pro apple m1 chip with 8-core cpu,8-core GPU,and 16-core neural engine 8GB unified memory/256GB SSD  storage 13-inch retina display with true tone ,baclklit magic keyboard -US english ,touch bar and touch ID ,two thunderbolb/USB 4 ports ', 1.00, 1700000.00, 1700000.00, 0),
(122, 54, '2', 'iMac with M1 Chip * Apple M1 chip with 8-core CPU with 4 performance cores and 4 efficiency cores, 8-core GPU, and 16-core Neural Engine  * 8GB unified memory  * 512GB SSD storage  * Two Thunderbolt / USB 4 ports  * Two USB 3 ports  * Gigabit Etherne', 2.00, 3500000.00, 7000000.00, 0),
(123, 54, '3', ' Canon EOS R6 Mirrorless Camera ', 2.00, 4400000.00, 8800000.00, 0),
(124, 54, '4', ' Canon RF 24-70mm f/2.8L IS USM Lens', 2.00, 4265000.00, 8530000.00, 0),
(125, 54, '5', 'Canon LP-E6NH Lithium-Ion Battery (7.2V, 2130mAh) ', 4.00, 195000.00, 780000.00, 0),
(126, 54, '6', 'SanDisk 128GB extreme pro Uhs-II SDXC memory card', 8.00, 36500.00, 292000.00, 0),
(127, 54, '7', 'Velbon videomate 638 tripod', 2.00, 560000.00, 1120000.00, 0),
(128, 54, '8', '.rode wireless GO II', 2.00, 568000.00, 1136000.00, 0),
(129, 54, '9', 'DJI Ronin-sc Gimbal stabilizer ', 2.00, 660000.00, 1320000.00, 0),
(130, 54, '10', 'GODox V1 flash', 2.00, 503000.00, 1006000.00, 0),
(131, 54, '11', ' Watson BP-U30 battery pack (DMK Power BP-U90 Higher Capacity)', 1.00, 310000.00, 310000.00, 0),
(132, 54, '12', 'watson Duo LCD charger', 1.00, 198500.00, 198500.00, 0),
(133, 54, '13', 'Tamron 35-150mm f2-2.8 DI II lens for Sony E ', 1.00, 4022000.00, 4022000.00, 0),
(134, 54, '14', 'Thunderbolt 3(USB-C) to Thunderbolt 2 Adapter', 4.00, 117000.00, 468000.00, 0),
(135, 54, '15', 'Anti-Virus Kaspersky (Internet Security 3 Users + 1 Free)', 20.00, 25000.00, 500000.00, 0),
(136, 54, '16', ' Windows 10', 20.00, 55000.00, 1100000.00, 0),
(137, 54, '17', ' HDMI cable 30m (no warranty)', 1.00, 35000.00, 35000.00, 0),
(138, 55, '1', 'Seagate ST2000NX0273 2.5-Inch 2 TB Internal Hard Drive - Black', 8.00, 601000.00, 4808000.00, 0),
(139, 56, 'FVFDXGPXQ6L4', 'macbook air 13-inch 8GB/256GB with  m1 chip grey color', 1.00, 1300000.00, 1300000.00, 0),
(140, 57, '1', 'Logitech MeetUp and Expansion Mic HD Video and Audio Conferencing System kit for Small Meeting Rooms Black', 1.00, 2200000.00, 2200000.00, 0),
(141, 58, '1', 'Meeting Owl Pro - 360-Degree, 1080p HD Smart Video Conference System kit', 1.00, 2100000.00, 2100000.00, 0),
(142, 59, '1', 'magic keyboard', 4.00, 135000.00, 540000.00, 0),
(143, 59, '2', 'Magic keyboard with numeric', 4.00, 200000.00, 800000.00, 0),
(144, 59, '3', 'Magic Mouse', 4.00, 125000.00, 500000.00, 0),
(145, 59, '4', 'Hp 27f monitor ', 5.00, 400000.00, 2000000.00, 0),
(146, 59, '5', 'Padhub pro', 5.00, 50000.00, 250000.00, 0),
(148, 60, 'FVHFVQ67Q6L4', 'Macbook air  with M1 chip', 1.00, 1150000.00, 1150000.00, 0),
(149, 61, '1', 'HP 250 G8 intel Core i5 - 1135, 4 GB RAM DDR4, 1TB HDD, 15.6\" HD Display, intel UHD Graphics', 2.00, 730000.00, 1460000.00, 0),
(150, 62, '1', 'HP PAVILLION 14 INTEL Ci5 11TH GEN  ,8GB/ 256 SSD SCREEN 14\" WIN 10', 1.00, 850000.00, 850000.00, 0),
(151, 63, '1', 'HP PAVILLION 14 INTEL Ci5 11TH GEN ,8GB/ 256 SSD SCREEN 14\" WIN 10', 1.00, 800000.00, 800000.00, 0),
(152, 64, '1', 'HP PAVILLION 14 INTEL Ci5 11TH GEN ,8GB/ 256 SSD SCREEN 14\" WIN 10', 1.00, 800000.00, 800000.00, 0),
(153, 65, '1', 'microsoft office pro plus 2019', 8.00, 165000.00, 1320000.00, 0),
(154, 66, '1', 'Velbon videomate 638 Aluminum Tripod', 1.00, 660000.00, 660000.00, 0),
(155, 66, '2', 'SanDisk ImageMate PRO Multi-Card Reader/Writer - SDDR-489-G47 ', 1.00, 78000.00, 78000.00, 0),
(156, 66, '3', 'SanDisk 64GB Extreme PRO SDXC UHS-I Card - C10, U3, V30, 4K UHD, SD Card - SDSDXXY-064G-GN4IN ', 1.00, 70000.00, 70000.00, 0),
(157, 66, '4', 'SanDisk Extreme Pro 4TB Portable NVMe SSD, USB C, up to 2000MB/s, Ruggedised and Water Resistant SDSSDE81 4T00 G25, Blue, Extreme Pro, 4 TB ', 1.00, 960000.00, 960000.00, 0),
(158, 66, '5', 'Canon Speedlite 430EX III-RT Flash, 0585C011AA, Black', 1.00, 774000.00, 774000.00, 0),
(159, 67, '1', 'RAM and software upgrades', 1.00, 115000.00, 115000.00, 0),
(160, 68, 'C02YVOX2LVDP', 'Macbook pro 13\" 2019, 8GB/256GB', 1.00, 950000.00, 950000.00, 0),
(161, 69, '1', 'HP 250 G8 intel Core i5 - 1135, 4 GB RAM DDR4, 1TB HDD, 15.6\" HD Display, intel UHD Graphics', 3.00, 690000.00, 2070000.00, 0),
(162, 69, '2', 'HP  intel Core i3 - 1115G4, 8 GB RAM DDR4, 256B SSD, 1, intel UHD Graphics', 5.00, 550000.00, 2750000.00, 0),
(163, 70, '6959144029924', 'GEARPOD-IS2.BLACK', 1.00, 7000.00, 7000.00, 0),
(164, 71, '6959144031729', 'PROLINK4K2-300', 1.00, 8000.00, 8000.00, 0),
(165, 72, '5467gfgff5', 'Lion', 1.00, 44000.00, 44000.00, 1),
(166, 73, '1', 'Lion', 2.00, 44000.00, 88000.00, 0),
(167, 74, '1', 'Lion', 0.00, 0.00, 0.00, 0),
(168, 75, 'FVHWMM598J1WK', 'Macbook air 2017 ,13\" i5/8GB/256GB', 1.00, 650000.00, 650000.00, 0),
(169, 76, '1', 'Active USB Extension Cable (Long 16.4 FT), USB 3.0 Extender Male to Female Cord with Signal Booster 5 meters + Promate Fast Charging Micro-USB Premium Cable 1.2m. ', 1.00, 65000.00, 65000.00, 0),
(170, 76, '2', ' Active USB Extension Cable (Long 16.4 FT), USB 3.0 Extender Male to Female Cord with Signal Booster 5 meters + Promate USB Type-C Cable, Fast Charging 2A Sync Charge Cable USB to USB-C Cable 1.2M. ', 1.00, 65000.00, 65000.00, 0),
(171, 76, '3', ' Promate 4K HDMI Cable 10M, Ultra HD High-Speed 4K 60Hz HDMI Cable with Ethernet, 3D Video Support and 24K Gold Plated Connector. ', 1.00, 25000.00, 25000.00, 0),
(172, 77, '6959144031712', 'PROLINK4K2-150', 1.00, 8000.00, 8000.00, 0),
(173, 77, '6959144052441', 'PADHUB-PRO.GREY', 1.00, 35000.00, 35000.00, 0),
(174, 78, '0', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 1.00, 5000.00, 5000.00, 1040),
(175, 78, '0', 'Lenovo think-pad X250 I5, 8GB RAM, 500GB HDD', 1.00, 6000.00, 6000.00, 0),
(176, 79, '1', ' Meeting Owl Pro - 360-Degree, 1080p HD Smart Video Conference System kit. ', 1.00, 2100000.00, 2100000.00, 0),
(177, 79, '2', 'Macbook pro 2020 13inches M1 8GB/256GB ', 1.00, 1759500.00, 1759500.00, 0),
(178, 79, '3', ' magic keyboard ', 4.00, 135000.00, 540000.00, 0),
(179, 79, '4', ' Magic Mouse', 4.00, 125000.00, 500000.00, 0),
(180, 79, '5', ' Hp 27f monitor', 5.00, 400000.00, 2000000.00, 0),
(181, 79, '6', 'Padhub pro (USB dongle)', 5.00, 50000.00, 250000.00, 0),
(182, 79, '7', 'laptop locks', 5.00, 25000.00, 125000.00, 0),
(183, 80, '6959144051437', 'THUNDERLINK-C20+', 1.00, 25000.00, 25000.00, 0),
(184, 81, '61924da4942df', '20W USB-C POWER ADAPTER ', 1.00, 30000.00, 30000.00, 5400),
(185, 82, '6959144044521', 'MICROCORD-1.BLACK', 1.00, 2500.00, 2500.00, 0),
(186, 83, '6959144044521', 'MICROCORD-1.BLACK', 1.00, 2500.00, 2500.00, 0),
(187, 84, '6959144031989', '', 1.00, 0.00, 0.00, 0),
(188, 85, '6959144031989', 'AIRBASE-1.BLACK', 1.00, 22000.00, 22000.00, 0),
(189, 86, '6959144046549', 'VOLTRIP-DUO.BLACK', 1.00, 5000.00, 5000.00, 0),
(190, 87, '6959144020181', 'AUXKIT.BLACK', 1.00, 8000.00, 8000.00, 0),
(191, 87, '6959144020181', 'AUXKIT.BLACK', 1.00, 8000.00, 8000.00, 0),
(192, 88, '6959144031989', 'AIRBASE-1.BLACK', 1.00, 22000.00, 22000.00, 0),
(193, 89, '6959144046549', 'VOLTRIP-DUO.BLACK', 1.00, 5000.00, 5000.00, 900),
(194, 90, '6959144046549', 'VOLTRIP-DUO.BLACK', 1.00, 5000.00, 5000.00, 900),
(195, 90, '6959144046549', 'VOLTRIP-DUO.BLACK', 1.00, 5000.00, 5000.00, 900),
(196, 91, '6959144051437', '', 1.00, 0.00, 0.00, 0),
(197, 92, '6959144047072', 'SUAVE-2.BLACK', 1.00, 0.00, 0.00, 0),
(198, 92, '6959144052328', 'DRIVEGEAR-33W', 1.00, 0.00, 0.00, 0),
(199, 93, '6959144031989', 'AIRBASE-1.BLACK', 1.00, 22000.00, 22000.00, 0),
(200, 94, '1', 'Lenovo Newest 2022 ThinkPad E15 Gen 2 Business Laptop, 15.6\" Full HD Display, Intel Core i5-1135G7 Processor, 16GB RAM, 512GB SSD, Backlit Keyboard, Fingerprint Reader, Wi-Fi 6, Windows 11 Pro ', 1.00, 1350000.00, 1350000.00, 0),
(201, 95, '1', 'Lenovo Newest 2022 ThinkPad E15 Gen 2 Business Laptop, 15.6\" Full HD Display, Intel Core i5-1135G7 Processor, 16GB RAM, 512GB SSD, Backlit Keyboard, Fingerprint Reader, Wi-Fi 6, Windows 11 Pro', 1.00, 1350000.00, 1350000.00, 0),
(202, 95, '2', 'escan total security', 1.00, 18000.00, 18000.00, 0),
(203, 95, '3', 'office 2019', 1.00, 165000.00, 165000.00, 0),
(204, 96, '6939144045351', 'Silox-pro ', 1.00, 60000.00, 60000.00, 0),
(205, 97, '6959144045351', 'Silox-Pro / 30W High Definition TWS Speaker with LED Light Show', 1.00, 60000.00, 60000.00, 0),
(206, 98, '6959144051253', '', 1.00, 0.00, 0.00, 0),
(207, 99, '1', 'HP ENVY X360 15M-DR 15-DR 15M-DR1011DX 15M-DR1012DX screen assembly plus  touch screen and full hinge up', 1.00, 434700.00, 434700.00, 0),
(208, 100, '6959144045405', 'BIPLUG.UK-BK', 1.00, 6000.00, 6000.00, 0),
(209, 101, '6959144047072', 'SUAVE-2.BLACK (Mouse)', 1.00, 12000.00, 12000.00, 0),
(210, 102, '1', 'Installation switch 24 partcisco,Reboring switch cisco;cleaning Rocks,cmfiguration switch cisco', 1.00, 100000.00, 100000.00, 0),
(211, 103, 'C02R3PRVFVH5', 'Matchbook Pro retina 13\" 2015/i5/8Gb/256GB SSD', 1.00, 700000.00, 700000.00, 0),
(212, 104, '6959144051437', 'THUNDERLINK-C20+', 1.00, 25000.00, 25000.00, 0),
(213, 105, '194252165959', 'MacBook Pro 2020 with M1 / 8GB RAM / 256GB SSD', 1.00, 1615000.00, 1615000.00, 0),
(214, 106, '6959144051116', 'SURFACEHUB-7.BLACK', 1.00, 32000.00, 32000.00, 0),
(215, 107, '6959144044378', 'CENTERHUB.MAROON', 1.00, 49000.00, 49000.00, 0),
(216, 108, '190198099099', 'USB-C 87W Power Adapter', 1.00, 85000.00, 85000.00, 0),
(217, 109, '695914404045351', 'Silox-pro red', 1.00, 64000.00, 64000.00, 0),
(218, 110, '6959144045368', 'Ezhub-pro', 1.00, 24000.00, 24000.00, 0),
(219, 111, '1', 'macbook pro 16\"2021/1 TB SSD/16 Gb RAM', 1.00, 3500000.00, 3500000.00, 0),
(220, 112, '1', '1. HP 290 G4 Personal Computer with i5-10500 and 8 GB DDR4-SDRAM, 1TB, DOS with 18.5in LED Monitor ', 1.00, 800000.00, 800000.00, 0),
(221, 112, '2', '2.HP EliteDesk 800 G5 tower - 9th Gen Intel Core i9-10900T , 32GB DDR4 Memory, 1TB+256GB NVMe Solid State Drive, WiFi-6 with Bluetooth 5.0, Intel UHD Graphics 630, promate wireless keyboard and mouse + 27inches monitor ', 1.00, 2500000.00, 2500000.00, 0),
(222, 112, '3', '3.HP Pavilion Laptop 14-dv000, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 512 GB SSD, IntelÂ® IrisÂ® Xáµ‰ Graphics, Windows 10 ', 1.00, 850000.00, 850000.00, 0),
(223, 112, '4', '4.Lenovo ThinkPad X1 Carbon 9th Gen 9 Intel Core i7-1185G7, FHD Non-Touch Screen,16GB RAM, 1TB NVMe SSD, Backlit KYB Fingerprint Reader, Win10 Pro ', 1.00, 3896000.00, 3896000.00, 0),
(224, 112, '5', '5. 021 Latest Lenovo ThinkPad E14 Gen 2 Laptop 14\" FHD Anti Glare Display Core I7-1165G7 Upto 4.7GHz 8GB 512GB SSD Intel Iris Xe Graphics ', 1.00, 1650000.00, 1650000.00, 0),
(225, 113, '1', '1. HP 290 G4 Personal Computer with i5-10500 and 8 GB DDR4-SDRAM, 1TB, DOS with 18.5in LED Monitor ', 30.00, 800000.00, 24000000.00, 0),
(226, 113, '2', '2.HP EliteDesk 800 G5 tower - 9th Gen Intel Core i9-10900T , 32GB DDR4 Memory, 1TB+256GB NVMe Solid State Drive, WiFi-6 with Bluetooth 5.0, Intel UHD Graphics 630, promate wireless keyboard and mouse + 27inches monitor @2,500,000', 5.00, 2500000.00, 12500000.00, 0),
(227, 113, '3', '3.HP Pavilion Laptop 14-dv000, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 512 GB SSD, IntelÂ® IrisÂ® Xáµ‰ Graphics, Windows 10 ', 3.00, 850000.00, 2550000.00, 0),
(228, 113, '4', '4.Lenovo ThinkPad X1 Carbon 9th Gen 9 Intel Core i7-1185G7, FHD Non-Touch Screen,16GB RAM, 1TB NVMe SSD, Backlit KYB Fingerprint Reader, Win10 Pro ', 1.00, 3896000.00, 3896000.00, 0),
(229, 113, '5', '5. 021 Latest Lenovo ThinkPad E14 Gen 2 Laptop 14\" FHD Anti Glare Display Core I7-1165G7 Upto 4.7GHz 8GB 512GB SSD Intel Iris Xe Graphics ', 2.00, 1650000.00, 3300000.00, 0),
(232, 114, '6959144046778', 'Power cube-2.UK-Black', 1.00, 16000.00, 16000.00, 0),
(233, 115, '6959144047072', 'SUAVE-2.BLACK (Mouse)', 1.00, 15000.00, 15000.00, 0),
(234, 116, '4549995012873', 'USB-C 30W Power Adapter', 1.00, 85000.00, 85000.00, 0),
(237, 119, '194252055946', 'MacBook Air 2020 with M1 / 13-inch/8GB RAM / 256GB SSD Gray Color', 1.00, 1350000.00, 1350000.00, 0),
(238, 120, '1', 'HP ProBook 450 G8 15.6\" Notebook - Full HD - 1920 x 1080 - Intel Core i7 11th Gen i7-1165G7 Quad-core (4 Core) - 16 GB RAM - 512 GB SSD - Pike Silver Aluminum ', 1.00, 1266000.00, 1266000.00, 0),
(239, 120, '2', 'HP ProBook 440 G8 Notebook PC, 14\" FHD, IntelÂ®ï¸ Coreâ„¢ï¸ i7 processor, 16GB RAM, 512GB SSD, IntelÂ®ï¸ IrisÂ®ï¸ Xáµ‰ Graphics', 1.00, 1297000.00, 1297000.00, 0),
(240, 121, '1', 'HP ProBook 450 G8 15.6\" Notebook - Full HD - 1920 x 1080 - Intel Core i7 11th Gen i7-1165G7 Quad-core (4 Core) - 16 GB RAM - 512 GB SSD - Pike Silver Aluminum ', 1.00, 1266000.00, 1266000.00, 0),
(241, 121, '2', 'HP ProBook 440 G8 Notebook PC, 14\" FHD, IntelÂ®ï¸ Coreâ„¢ï¸ i7 processor, 16GB RAM, 512GB SSD, IntelÂ®ï¸ IrisÂ®ï¸ Xáµ‰ Graphics ', 3.00, 1297000.00, 3891000.00, 0),
(246, 123, '6959144045399', 'BIPLUG.UK-WT', 1.00, 6000.00, 6000.00, 0),
(247, 124, '6959144045399', 'BIPLUG.UK-WT', 1.00, 6000.00, 6000.00, 0),
(248, 125, '6959144045399', 'BIPLUG.UK-WT', 1.00, 6000.00, 6000.00, 0),
(249, 126, '6959144045399', 'BIPLUG.UK-WT', 1.00, 6000.00, 6000.00, 0),
(250, 127, '6959144046709', 'SMARTUNE-2+', 1.00, 17000.00, 17000.00, 0),
(251, 128, '1', 'Promate Bolt-20   20,000mAh power bank , dual USB output ports and dual USB Input ports.', 1.00, 30000.00, 30000.00, 0),
(252, 129, '1', 'Apple MacBook Pro 16\" with Touch Bar, 9th-Gen 8-Core Intel i9 2.3GHz, 16GB RAM, 1TB SSD, AMD Radeon Pro 5500M 4GB, Space Gray, Late 2019 ', 1.00, 2382800.00, 2382800.00, 0),
(253, 130, '1', 'Apple MacBook Pro 16\" with Touch Bar, 9th-Gen 8-Core Intel i9 2.3GHz, 16GB RAM, 1TB SSD, AMD Radeon Pro 5500M 4GB, Space Gray, Late 2019 ', 1.00, 2382800.00, 2382800.00, 0),
(254, 130, '2', '2020 Apple MacBook Pro with Apple M1 Chip 13-inch  256GB SSD StorageÂ¹ Apple M1 chip with 8-core CPU, 8-core GPU, and 16-core Neural Engine 8GB unified memory 256GB SSD storage 13-inch Retina display with True Tone Magic Keyboard Touch Bar and Touch ', 1.00, 1700000.00, 1700000.00, 0),
(255, 131, 'C02RP290FVH6', 'MACBOOK PRO RETINA 2015 I5/16GB/256GB', 1.00, 0.00, 0.00, 0),
(256, 132, 'C02RP290FVH6', 'MACBOOK PRO RETINA 2015 I5/16GB/256GB  C02RP290FVH6', 1.00, 700000.00, 700000.00, 0),
(257, 133, 'C02S33K9FVH6', '', 1.00, 0.00, 0.00, 0),
(258, 134, 'C02S33K9FVH6', 'MACBOOK PRO 13INCHES  2015 I5/16GB/256GB', 1.00, 700000.00, 700000.00, 0),
(259, 135, '1', 'PROCOMBO', 0.00, 0.00, 0.00, 0),
(260, 136, '1', 'PROCOMBO-11.BK/EN (Keyboard & Mouse)', 1.00, 26000.00, 26000.00, 0),
(261, 137, '1', 'HP Laptop Intel Celeron Processor 4GB RAM,500GB HDD 15.6 or 14 Inches', 1.00, 356000.00, 356000.00, 0),
(262, 137, '2', 'HP Laptop Intel Core i3 Processor 4GB RAM,1000GB HDD 15.6Inches', 1.00, 485000.00, 485000.00, 0),
(263, 137, '3', 'HP Laptop Intel Core i5 Processor 4GB RAM,1000GB HDD or 8GB RAM 1000GB HDD or SSD Storage(256 or 512GB) 15.6Inches,14Inches or 13.3Inches', 1.00, 650000.00, 650000.00, 0),
(264, 137, '4', 'HP Laptop Intel Core i7 Processor 4GB RAM,1000GB HDD or 8GB RAM 1000GB HDD or SSD Storage(256 or 512GB) 15.6Inches,14Inches or 13.3Inches', 1.00, 850000.00, 850000.00, 0),
(265, 137, '5', 'HP 15 dy i7 11th Gen/ Silver/ 12GB/ 256GB SSD/ Win 10/ Touch Screen', 1.00, 950000.00, 950000.00, 0),
(266, 137, '6', 'HP 250 G7 notebook Pc Intel Celebron dual core, 10GB Ram, 500GB Hard drive, 15.6 inch. Windows 10 pro.', 1.00, 356000.00, 356000.00, 0),
(267, 137, '7', 'HP PAVILION 14-inch. Intel core i5-1135 Processor. 8GB RAM. 256GB SSD. Windows 10 Home.', 1.00, 850000.00, 850000.00, 0),
(268, 137, '8', 'HHP PAVILION 14-inch. Intel core i5-1135 Processor. 8GB RAM. 512GB SSD. Windows 10 Home.', 1.00, 900000.00, 900000.00, 0),
(269, 137, '9', 'HP Envy X360 13M-BD1033DX 2 in 1 (4P5Y0UA#ABA) Core i7-1195G7, 8GB DDR4, 512GB SSD, Intel Iris Xe Graphics, 13.3\" FHD OLED Touch Screen, FPR, Windows 11, Silver, ENG KBD', 1.00, 1250000.00, 1250000.00, 0),
(270, 137, '10', 'Hp Notebook 14s  Ci3 11th gen 8gb ram 256gb ssd   Win10  ', 1.00, 550000.00, 550000.00, 0),
(271, 137, '11', '4G D-link', 1.00, 85000.00, 85000.00, 0),
(272, 138, '1', 'Canon EOS 5D Mark IV 24-105mm F/4L IS II USM Lens - 30.4MP, DSLR Camera, Black ', 1.00, 4040400.00, 4040400.00, 0),
(273, 138, '2', 'CADeN Camera Backpack Professional DSLR Bag @100$', 1.00, 103600.00, 103600.00, 0),
(274, 138, '3', 'Canon Speedlite 430EX III-RT Flash, Black  ', 1.00, 386428.00, 386428.00, 0),
(275, 138, '4', 'Canon EF 24-105mm f/4L IS II USM SLR Lens', 1.00, 1875160.00, 1875160.00, 0),
(276, 138, '5', 'Canon  EF 28-300mm f/3.5-5-6 L IS USM lens ', 1.00, 3108000.00, 3108000.00, 0),
(277, 138, '6', 'Saramonic Ultracompact 2.4GHz Dual-Channel Wireless Microphone Kit Blink 500 2 ', 1.00, 279720.00, 279720.00, 0),
(278, 138, '7', 'Manfrotto Compact Light Aluminum 4 Section Tripod Kit with Ball Head ', 1.00, 259000.00, 259000.00, 0),
(279, 138, '8', 'SanDisk SD  ', 1.00, 82880.00, 82880.00, 0),
(280, 138, '9', 'Andoer 2 Packs LED Video Light and 78.7\" Stand Lighting Kit Dimmable 660 LED Bulbs Bi-Color Light Panel 3200-5600K CRI 85+ with U Bracket & Barndoor for Studio Photography Video Shooting ', 1.00, 310800.00, 310800.00, 0),
(281, 139, 'C02RP1J5GTHX', 'Macbook (Retina, 12-inch ,2016, core m3,8GB/256GB)', 1.00, 600000.00, 600000.00, 0),
(282, 140, '1', 'Mono Earphone  (ENGAGE)', 1.00, 61000.00, 61000.00, 0),
(283, 141, '1', 'HP ENVY X360', 1.00, 1250000.00, 1250000.00, 0),
(284, 142, '1', '2020 Apple MacBook Pro (13-inch, Apple M1 chip with 8â€‘core CPU and 8â€‘core GPU, 8GB RAM, 512GB SSD) - Space Grey ', 1.00, 1950000.00, 1950000.00, 0),
(285, 143, '1', '2020 Apple MacBook Pro (13-inch, Apple M1 chip with 8â€‘core CPU and 8â€‘core GPU, 8GB RAM, 512GB SSD) - Space Grey ', 1.00, 1950000.00, 1950000.00, 0),
(286, 144, '1', '2020 Apple MacBook Pro (13-inch, Apple M1 chip with 8â€‘core CPU and 8â€‘core GPU, 8GB RAM, 512GB SSD) - Space Grey', 2.00, 1950000.00, 3900000.00, 0),
(287, 145, 'cnd20900s2 ', 'HP ENVY  X360', 1.00, 1250000.00, 1250000.00, 0),
(288, 145, '6959144039572', 'MONO EARPHONE (ENGAGE)', 1.00, 61000.00, 61000.00, 0),
(289, 146, '1', 'Apple 87W USB-C Power Adapter and USB-C Charge Cable For 15-inch MacBook Pro models introduced in 2016 or later', 1.00, 130000.00, 130000.00, 0),
(290, 147, '1', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 256GB SSD, IntelÂ® IrisÂ® Xáµ‰ Graphics, Windows 11, ENG KB, Silver ', 2.00, 850000.00, 1700000.00, 0),
(291, 147, '2', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® Xáµ‰ Graphics, Windows 11, ENG KB, Silver ', 2.00, 950000.00, 1900000.00, 0),
(292, 147, '3', 'D link mobile router ', 3.00, 55000.00, 165000.00, 0),
(293, 148, '1', 'MACBOOK PRO RETINA 13\"/i5/2015/16GB/256GB', 1.00, 0.00, 0.00, 0),
(294, 149, '1', 'Macbook pro retina,13\"i5 2015/16GB/256GB SSD', 1.00, 750000.00, 750000.00, 0),
(295, 150, '1', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 256GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver', 2.00, 850000.00, 1700000.00, 0),
(296, 150, '2', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver', 2.00, 950000.00, 1900000.00, 0),
(297, 150, '3', 'D link mobile router', 3.00, 55000.00, 165000.00, 0),
(298, 150, '4', 'HP Pavilion X360 Convertible  14\"Touchscreen 2 in 1 Laptop,11th Generation Intel Core i5-1135G7 Processor,16GBRAM,512GB PCle SSD,Intel Iris Xe Graphics,Windows 11Home', 1.00, 1050000.00, 1050000.00, 0),
(299, 151, '1', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 256GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver', 1.00, 850000.00, 850000.00, 0),
(300, 151, '2', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver', 2.00, 950000.00, 1900000.00, 0),
(301, 151, '3', 'D link mobile router', 3.00, 55000.00, 165000.00, 0),
(302, 151, '4', 'HP Pavilion X360 Convertible 14\"Touchscreen 2 in 1 Laptop,11th Generation Intel Core i5-1135G7 Processor,16GBRAM,512GB PCle SSD,Intel Iris Xe Graphics,Windows 11Home', 1.00, 1050000.00, 1050000.00, 0),
(303, 152, '1', ' LATITUDE 7320  12th GEN INTEL CORE i7-1185G7 @3.0GHz 32GB RAM 512 FHD Intel (R) Iris (R) Xe Graphics WIN 10 PRO,6-BGWP:Palmrest,Fingerprint Reader,Contacted/Contactless SmartCard Reader/NFC,Carbon Fiber ,Thunderbolt4 Brand New with Dell Onsite 3 yea', 2.00, 2320000.00, 4640000.00, 0),
(304, 152, '2', 'Dell TB 16 Thunderbolt 3 Dock with 130W Adapter,Black ', 2.00, 320000.00, 640000.00, 0),
(305, 152, '3', 'Polk Audio Polk Audio RC60i 2-way Premium In-Ceiling 6.5\"Round Speakers Set of 2', 1.00, 609000.00, 609000.00, 0),
(306, 152, '4', 'Promate Premium Keyboard combo with 2years warranty', 1.00, 26000.00, 26000.00, 0),
(307, 152, '5', 'Promate Wireless Bluetooth Headset,Professional Unified Communication Over the Head headphone with Noise Cancelling Mic,HD Voice and Built-In Control', 1.00, 75000.00, 75000.00, 0),
(308, 153, '1', 'Macbook pro retina,13\"i5 2015/16GB/256GB SSD', 2.00, 750000.00, 1500000.00, 0),
(309, 154, '1', 'LATITUDE 7320  12th GEN INTEL CORE i7-1185G7 @3.0GHz 32GB RAM 512 FHD Intel (R) Iris (R) Xe Graphics WIN 10 PRO,6-BGWP:Palmrest,Fingerprint Reader,Contacted/Contactless SmartCard Reader/NFC,Carbon Fiber ,Thunderbolt4 Brand New with Dell Onsite 3 year', 2.00, 2320000.00, 4640000.00, 0),
(310, 154, '2', 'Dell TB 16 Thunderbolt 3 Dock with 130W Adapter,Black ', 2.00, 320000.00, 640000.00, 0),
(311, 154, '3', 'Polk Audio Polk Audio RC60i 2-way Premium In-Ceiling 6.5\"Round Speakers Set of 2', 1.00, 609000.00, 609000.00, 0),
(312, 154, '4', 'Promate Premium Keyboard combo with 2years warranty', 2.00, 26000.00, 52000.00, 0),
(313, 154, '5', 'Promate Wireless Bluetooth Headset,Professional Unified Communication Over the Head headphone with Noise Cancelling Mic,HD Voice and Built-In Control', 2.00, 75000.00, 150000.00, 0),
(314, 155, 'C1MRF279G940', 'MACKBOOK AIR (13\" EARY 2015)', 1.00, 0.00, 0.00, 0),
(315, 156, '1', 'Promate Bolt-20  20000mAh power bank with Dual USB output and Dual USB input Ports.', 96.00, 30000.00, 2880000.00, 0),
(316, 156, '2', 'BIPLUG-UK', 20.00, 6000.00, 120000.00, 0),
(317, 157, '5CD117HZPJ', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 256GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver', 1.00, 850000.00, 850000.00, 0),
(318, 157, '5CD119B477', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver', 1.00, 950000.00, 950000.00, 0),
(319, 157, '5CD12292NG', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver', 1.00, 950000.00, 950000.00, 0),
(320, 157, 'JX1DBL6001276', 'D link mobile router', 1.00, 55000.00, 55000.00, 0),
(321, 157, 'JX1DBL6001270', 'D link mobile router', 1.00, 55000.00, 55000.00, 0),
(322, 157, 'JX1DBL6001295', 'D link mobile router', 1.00, 55000.00, 55000.00, 0),
(323, 158, '5CD117HZPJ', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 256GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver(5CD117HZPJ)', 1.00, 850000.00, 850000.00, 0),
(324, 158, '5CD12292NG', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver(5CD12292NG)', 1.00, 950000.00, 950000.00, 0),
(325, 158, '5CD119B477', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver(5CD119B477)', 1.00, 950000.00, 950000.00, 0),
(326, 158, 'JX1DBL6001295', 'D link mobile router(JX1DBL6001295', 1.00, 55000.00, 55000.00, 0),
(327, 158, 'JX1DBL6001270', 'D link mobile router(JX1DBL6001270)', 1.00, 55000.00, 55000.00, 0),
(328, 158, 'JX1DBL6001276', 'D link mobile router(JX1DBL6001276)', 1.00, 55000.00, 55000.00, 0),
(329, 159, '046600024329', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024329', 1.00, 30000.00, 30000.00, 0),
(330, 159, '046600024467', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024467', 1.00, 30000.00, 30000.00, 0),
(331, 159, '046600024311', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024311', 1.00, 30000.00, 30000.00, 0),
(332, 159, '046600024459', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024459', 1.00, 30000.00, 30000.00, 0),
(333, 159, '046600024450', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024450', 1.00, 30000.00, 30000.00, 0),
(334, 159, '046600024302', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024302', 1.00, 30000.00, 30000.00, 0),
(335, 159, '046600024446', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024446', 1.00, 30000.00, 30000.00, 0),
(336, 159, '046600024442', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024442', 1.00, 30000.00, 30000.00, 0),
(337, 159, '046600024328', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024328', 1.00, 30000.00, 30000.00, 0),
(338, 159, '046600024347', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024347', 1.00, 30000.00, 30000.00, 0),
(339, 159, '046600024306', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024306', 1.00, 30000.00, 30000.00, 0),
(340, 159, '046600024428', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024428', 1.00, 30000.00, 30000.00, 0),
(341, 159, '046600024336', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024336', 1.00, 30000.00, 30000.00, 0),
(342, 159, '046600024315', 'BOLT-20.BLUE(portable and powerful backup battery options)046600024315', 1.00, 30000.00, 30000.00, 0),
(343, 159, '046600024468', ' BOLT-20.BLUE(portable and powerful backup battery options)046600024468', 1.00, 30000.00, 30000.00, 0),
(344, 159, '046600013606', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013606', 1.00, 30000.00, 30000.00, 0),
(345, 159, '046600013480', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013480', 1.00, 30000.00, 30000.00, 0),
(346, 159, '046600013733', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013733', 1.00, 30000.00, 30000.00, 0),
(347, 159, '046600013460', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013460', 1.00, 30000.00, 30000.00, 0),
(348, 159, '046600013633', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013633', 1.00, 30000.00, 30000.00, 0),
(349, 159, '046600013488', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013488', 1.00, 30000.00, 30000.00, 0),
(350, 159, '046600013492', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013492', 1.00, 30000.00, 30000.00, 0),
(351, 159, '046600013609', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013609', 1.00, 30000.00, 30000.00, 0),
(352, 159, '046600013484', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013484', 1.00, 30000.00, 30000.00, 0),
(353, 159, '046600013444', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013444', 1.00, 30000.00, 30000.00, 0),
(354, 159, '046600013629', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013629', 1.00, 30000.00, 30000.00, 0),
(355, 159, '046600013745', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013745', 1.00, 30000.00, 30000.00, 0),
(356, 159, '046600013476', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013476', 1.00, 30000.00, 30000.00, 0),
(357, 159, '046600013757', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013757', 1.00, 30000.00, 30000.00, 0),
(358, 159, '046600013649', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013649', 1.00, 30000.00, 30000.00, 0),
(359, 159, '046600013645', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013645', 1.00, 30000.00, 30000.00, 0),
(360, 159, '046600013729', 'BOLT-20.WHITE(portable and powerful backup battery options)046600013729', 1.00, 30000.00, 30000.00, 0),
(361, 159, '046600028185', 'BOLT-20.MNG (portable and powerful backup battery options)046600028185', 1.00, 30000.00, 30000.00, 0),
(362, 159, '046600028234', 'BOLT-20.MNG (portable and powerful backup battery options)046600028234', 1.00, 30000.00, 30000.00, 0),
(363, 159, '046600028065', 'BOLT-20.MNG (portable and powerful backup battery options)046600028065', 1.00, 30000.00, 30000.00, 0),
(364, 159, '046600028189', 'BOLT-20.MNG (portable and powerful backup battery options)046600028189', 1.00, 30000.00, 30000.00, 0),
(365, 159, '046600028253', 'BOLT-20.MNG (portable and powerful backup battery options)046600028253', 1.00, 30000.00, 30000.00, 0),
(366, 159, '046600028013', 'BOLT-20.MNG (portable and powerful backup battery options)046600028013', 1.00, 30000.00, 30000.00, 0),
(367, 159, '046600028113', 'BOLT-20.MNG (portable and powerful backup battery options)046600028113', 1.00, 30000.00, 30000.00, 0),
(368, 159, '046600028181', 'BOLT-20.MNG (portable and powerful backup battery options)046600028181', 1.00, 30000.00, 30000.00, 0),
(369, 159, '046600021421', 'BOLT-20.BLACK (portable and powerful backup battery options)046600021421', 1.00, 30000.00, 30000.00, 0),
(370, 159, '046600021461', 'BOLT-20.BLACK (portable and powerful backup battery options)046600021461', 1.00, 30000.00, 30000.00, 0),
(371, 159, '0466000133660', 'BOLT-20.MNG (portable and powerful backup battery options)0466000133660', 1.00, 30000.00, 30000.00, 0),
(372, 159, '046600028229', 'BOLT-20.MNG (portable and powerful backup battery options)046600028229', 1.00, 30000.00, 30000.00, 0),
(373, 159, '046600028266', 'BOLT-20.MNG (portable and powerful backup battery options)046600028266', 1.00, 30000.00, 30000.00, 0),
(374, 159, '046600028257', 'BOLT-20.MNG (portable and powerful backup battery options)046600028257', 1.00, 30000.00, 30000.00, 0),
(375, 159, '046600028233', 'BOLT-20.MNG (portable and powerful backup battery options)046600028233', 1.00, 30000.00, 30000.00, 0),
(376, 159, '046600028270', 'BOLT-20.MNG (portable and powerful backup battery options)046600028270', 1.00, 30000.00, 30000.00, 0),
(377, 159, '046600028162', 'BOLT-20.MNG (portable and powerful backup battery options)046600028162', 1.00, 30000.00, 30000.00, 0),
(378, 159, '045399066420', 'BIPLUG.UK-WT(045399066420)', 1.00, 6000.00, 6000.00, 0),
(379, 159, '045399066408', 'BIPLUG.UK-WT(045399066408', 1.00, 6000.00, 6000.00, 0),
(380, 159, '045399066419', 'BIPLUG.UK-WT(045399066419)', 1.00, 6000.00, 6000.00, 0),
(381, 159, '045399066430', 'BIPLUG.UK-WT(045399066430)', 1.00, 6000.00, 6000.00, 0),
(382, 159, '045399066409', 'BIPLUG.UK-WT(045399066409)', 1.00, 6000.00, 6000.00, 0),
(383, 159, '045399066415', 'BIPLUG.UK-WT(045399066415)', 1.00, 6000.00, 6000.00, 0),
(384, 159, '045399066413', 'BIPLUG.UK-WT(045399066413)', 1.00, 6000.00, 6000.00, 0),
(385, 159, '045399066417', 'BIPLUG.UK-WT(045399066417)', 1.00, 6000.00, 6000.00, 0),
(386, 159, '045399066429', 'BIPLUG.UK-WT(045399066429)', 1.00, 6000.00, 6000.00, 0),
(387, 159, '045399066418', 'BIPLUG.UK-WT(045399066418)', 1.00, 6000.00, 6000.00, 0),
(388, 159, '045399066404', 'BIPLUG.UK-WT(045399066404)', 1.00, 6000.00, 6000.00, 0),
(389, 159, '045399066412', 'BIPLUG.UK-WT(045399066412)', 1.00, 6000.00, 6000.00, 0),
(390, 159, '045399066402', 'BIPLUG.UK-WT(045399066402)', 1.00, 6000.00, 6000.00, 0),
(391, 159, '045399066407', 'BIPLUG.UK-WT(045399066407)', 1.00, 6000.00, 6000.00, 0),
(392, 159, '045399066401', 'BIPLUG.UK-WT(045399066401)', 1.00, 6000.00, 6000.00, 0),
(393, 159, '045399066416', 'BIPLUG.UK-WT(045399066416)', 1.00, 6000.00, 6000.00, 0),
(394, 159, '045399066411', 'BIPLUG.UK-WT(045399066411)', 1.00, 6000.00, 6000.00, 0),
(395, 159, '045399066414', 'BIPLUG.UK-WT(045399066414)', 1.00, 6000.00, 6000.00, 0),
(396, 159, '045399065993', 'BIPLUG.UK-WT(045399065993)', 1.00, 6000.00, 6000.00, 0),
(397, 159, '045399066403', 'BIPLUG.UK-WT(045399066403)', 1.00, 6000.00, 6000.00, 0),
(398, 160, '1', 'IPAD PRO 12.9  (RENT)', 1.00, 55000.00, 55000.00, 0),
(399, 161, '1', 'IPAD PRO  9.7 Inches (RENT)', 1.00, 35000.00, 35000.00, 0),
(400, 162, '1', 'IPAD PRO 9.7Inches (RENT)', 1.00, 35000.00, 35000.00, 6300),
(401, 163, '1', 'Samsung Galaxy Tab A7 Lite 8.7\" (2021, WiFi + Cellular) 32GB 4G LTE Tablet & Phone (Makes Calls) GSM Unlocked, International Model w/US Charging Cube - -T225 (Grey, LTE+WiFi)', 7.00, 182000.00, 1274000.00, 0),
(402, 163, '2', 'Samsung Galaxy Tab A8 Android Tablet, 10.5â€ LCD Screen, 32GB Storage, Long-Lasting Battery, Kids Content, Smart Switch, Expandable Memory, Dark Gray', 3.00, 270000.00, 810000.00, 0),
(403, 164, '1', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 256GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver(5CD117HZPJ)', 1.00, 850000.00, 850000.00, 0),
(404, 164, '2', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver', 2.00, 950000.00, 1900000.00, 0),
(405, 164, '3', 'D link mobile router(JX1DBL6001276)', 3.00, 55000.00, 165000.00, 0),
(406, 165, '5CD117HZPJ', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 8GB RAM, 256GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver(5CD117HZPJ)', 1.00, 850000.00, 850000.00, 0),
(407, 165, '5CD119B477', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver(5CD119B477)', 1.00, 950000.00, 950000.00, 0),
(408, 165, '5CD12292NG', 'HP Pavilion Laptop 14, 14\" FHD, 11th gen IntelÂ® Coreâ„¢ i5, 16GB RAM, 512GB SSD, IntelÂ® IrisÂ® X? Graphics, Windows 11, ENG KB, Silver(5CD12292NG)', 1.00, 950000.00, 950000.00, 0),
(409, 165, '11111111111T', 'HP Pavilion X360 Convertible 14\"Touchscreen 2 in 1 Laptop,11th Generation Intel Core i5-1135G7 Processor,16GBRAM,512GB PCle SSD,Intel Iris Xe Graphics,Windows 11Home', 1.00, 1050000.00, 1050000.00, 0),
(410, 165, 'JX1DBL6001270', 'D link mobile router(JX1DBL6001270)', 1.00, 55000.00, 55000.00, 0),
(411, 165, 'JX1DBL6001276', 'D link mobile router(JX1DBL6001276)', 1.00, 55000.00, 55000.00, 0),
(412, 165, 'JX1DBL6001295', 'D link mobile router(JX1DBL6001295)', 1.00, 55000.00, 55000.00, 0),
(413, 166, '1', 'MacBook Pro 2015 15inches core i7/16GB RAM /256GB SSD ', 2.00, 830400.00, 1660800.00, 0),
(414, 167, '1', 'MacBook pro  2015 15 inches core i7/16GB RAM/ 256GB SSD', 2.00, 800000.00, 1600000.00, 0),
(415, 168, '1', 'MacBook pro 2015 15 inches core i7 16GB RAM/256gb SSD', 2.00, 800000.00, 1600000.00, 0),
(416, 169, '1', 'IPAD PRO 9.7Inches (RENT)', 3.00, 35000.00, 105000.00, 18900),
(417, 170, '1', 'LAPTOP  BAG', 1.00, 35000.00, 35000.00, 0),
(418, 171, '1', 'PAD PRO 9.7Inches (RENT) ', 2.00, 35000.00, 70000.00, 12600),
(419, 172, '1', 'Lenovo think-pad X250 I5, 8GB RAM, 320GB HDD', 3.00, 20000.00, 60000.00, 0),
(420, 173, 'FVFHMH4NQ6L4', 'MACBOOK AIR 2020 13\" RAM 8GB/256GB SSD', 1.00, 1350000.00, 1350000.00, 0),
(421, 174, 'FVFHM4NQ6L4', 'MACBOOK AIR 2020,i5  13\" RAM 8GB/256GB SSD', 1.00, 1350000.00, 1350000.00, 0),
(422, 175, '044514054428', '', 1.00, 0.00, 0.00, 0),
(423, 176, '044514054428', 'MICROCORD-1', 1.00, 3000.00, 3000.00, 0),
(424, 176, '044514054458', 'MICROCORD-1', 1.00, 3000.00, 3000.00, 0),
(425, 177, 'SC06023401UXH1RTA7', '', 1.00, 0.00, 0.00, 0),
(426, 178, 'SC06023401UXH1RTA7', 'Apple 85W MagSafe2 Power Adapter', 1.00, 85000.00, 85000.00, 0),
(427, 179, '', 'Apple 45W MagSafe2 Power Adapter ', 1.00, 600000.00, 600000.00, 0),
(428, 180, '1', '2020 Apple MacBook Pro 13-inch, Apple M1 Chip with 8-core CPU and 8-core GPU, 16GB RAM ,1TB SSD.', 1.00, 2600000.00, 2600000.00, 0),
(429, 181, '1', 'Apple iMac 27\" 5K Display Early 2019 Intel Core i7  32GB of DDR4 RAM | 512GB SSD 27\" 5120 x 2880 IPS Retina 5K Display AMD Radeon Pro GPU (4GB) Magic Keyboard & Magic Mouse 2 Included', 1.00, 2600000.00, 2600000.00, 0),
(430, 182, '1', 'HP Pavilion Intel core i5 8GB RAM  and 256GB  Serial number:5CD047F2NG', 1.00, 850000.00, 850000.00, 0),
(431, 183, 'DN190198531704', 'USB-C TO LIGHT', 1.00, 25000.00, 25000.00, 0),
(432, 184, 'A18564R81050ZB', 'USB-C TO LIGHT', 1.00, 25000.00, 25000.00, 0),
(433, 185, '190198531704', 'USB-C tO Lightning Cable (1m)', 1.00, 25000.00, 25000.00, 0),
(434, 186, '1', 'MacBook Air (13inches 2014) Processor:1.4GHZ intel corei5 Memory:8GB 1600 MHz LDDR3 Graphics: intel HD Graphics 5000 1536MB Serial Number: C02N71A8G5RN   INSTALLATION FEES', 1.00, 690000.00, 690000.00, 0),
(435, 187, '1', 'MACBOOK Air 2015  (13Inch,EARY 2015),Processor  Core i5,Memory4 Serial  Number C1MRF279G940', 0.00, 0.00, 0.00, 0),
(436, 188, '1', 'MACBOOK Air 2015  (13Inch,EARY 2015),Processor  Core i5,Memory4 Serial  Number C1MRF279G940', 1.00, 550000.00, 550000.00, 0),
(437, 189, '1', 'MACBOOK Air 2015  (13Inch,EARY 2015),Processor  Core i5,Memory4 Serial  Number C1MRF279G940', 1.00, 550000.00, 550000.00, 0),
(438, 190, '1', 'IPhone  13 Pro Max (FPNX6YKK4V)', 1.00, 1972740.00, 1972740.00, 0),
(439, 191, '1', 'MACBOOK AIR (13inch Early 2014) Intel Core i5 RAM 8GB/256GB  Serial No:C02NV07HG5RN', 1.00, 600000.00, 600000.00, 0),
(440, 192, '1', 'Apple iMac 27\" 5K Display Early  2019 Intel Core i7 32GB of DDR4  RAM | 512GB SSD 27\" 5120 x  2880 IPS Retina 5K Display  AMD Radeon Pro GPU (4GB)  Magic Keyboard & Magic Mouse 2 Include', 1.00, 2600000.00, 2600000.00, 0),
(441, 193, '1', 'Iphone 13â€ pro 256GB', 1.00, 1485000.00, 1485000.00, 0),
(442, 194, '1', 'HP LAPTOP i5', 2.00, 550000.00, 1100000.00, 0),
(443, 195, ' ', ' ', 1.00, 0.00, 0.00, 0),
(444, 196, '1', 'TV WALL', 1.00, 85000.00, 85000.00, 0),
(445, 197, '1', 'TV WALL MOUNT', 1.00, 85000.00, 85000.00, 0),
(446, 198, 'FVFHM1ZC0KPF', '2020 Apple MacBook Pro-13- inch, Apple M1chip with 8core CPU,8 core CPU ,16GB RAM ,1TB SSD.', 1.00, 2600000.00, 2600000.00, 0),
(447, 199, '1', 'Toyota RAV 4, 4X4  Year: 2019 Transmission: Automatic Fuel:Petrol(gasoline)', 1.00, 29000000.00, 29000000.00, 0),
(448, 200, '1', 'Toyota RAV 4, 4X4  Year: 2019 Transmission: Automatic Fuel:Petrol(gasoline)', 1.00, 29000000.00, 29000000.00, 0),
(449, 201, '1', 'Toyota RAV 4, 4X4  Year: 2019 Transmission: Automatic Fuel:Petrol(gasoline)', 1.00, 29000000.00, 29000000.00, 0),
(450, 202, '1', ' HP 250 G7 15.6in HD Intel core i3 1005G1 4GB RAM 128GB SSD', 24.00, 450000.00, 10800000.00, 0),
(451, 202, '2', 'PROJECTOR', 5.00, 654000.00, 3270000.00, 0),
(452, 202, '3', 'Silox-Pro / 30W High Definition TWS Speaker with LED Light Show', 10.00, 86000.00, 860000.00, 0),
(453, 203, '1', 'HP  DESKTOP ,Inter core i5 16GB RAM 1TB  HDD, 27 inch screen', 1.00, 1300000.00, 1300000.00, 0),
(454, 203, '2', 'Huawei E 5573-320 Router , speed 150 Mps, Upload sppeed up to 50 Mbps ', 1.00, 125000.00, 125000.00, 0),
(455, 203, '3', 'Huawei mobile router ', 1.00, 75000.00, 75000.00, 0),
(456, 204, '1', 'HP 250 G7 (15.6in  HD Intel core i3 1005G1 4GB RAM ,128GB SSD)  ', 24.00, 450000.00, 10800000.00, 0),
(457, 204, '2', 'EPSON PROJECTOR EB-E01', 5.00, 600000.00, 3000000.00, 0),
(458, 204, '3', 'SILOX-PRO ', 10.00, 86000.00, 860000.00, 0),
(459, 205, '1', 'HP DESKTOP Intel core i5 16GB RAM , 1TB HDD, 27 inch screen', 1.00, 1300000.00, 1300000.00, 0),
(460, 205, '2', 'D-LINK ROUTER , SPEED 150 Mps, Upload speed up tp 50 Mbps.', 1.00, 125000.00, 125000.00, 0),
(461, 205, '3', 'Mobile Router  Wi-Fi router cpe,4 G LTE', 1.00, 75000.00, 75000.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_user`
--

CREATE TABLE `invoice_user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issuing`
--

CREATE TABLE `issuing` (
  `id` int(200) NOT NULL,
  `item_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `user` text NOT NULL,
  `company` text NOT NULL,
  `purpose` text NOT NULL,
  `approval` int(11) NOT NULL,
  `warranty` int(10) NOT NULL,
  `approval_date` date DEFAULT NULL,
  `approved_time` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(200) NOT NULL,
  `serial_number` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `brand` text NOT NULL,
  `description` text DEFAULT NULL,
  `barcode` varchar(30) NOT NULL,
  `purchase_date` date NOT NULL,
  `supplier` text NOT NULL,
  `price` int(11) NOT NULL,
  `whole_sales_price` float NOT NULL,
  `transport` int(11) NOT NULL,
  `custom` int(11) NOT NULL,
  `profit_1` double NOT NULL,
  `profit_2` double NOT NULL,
  `sales_price` int(11) NOT NULL,
  `weight` float NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `instore` varchar(20) NOT NULL DEFAULT 'Yes',
  `type` text NOT NULL,
  `warranty_type` varchar(30) NOT NULL,
  `warranty` int(11) NOT NULL,
  `out_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item` varchar(60) NOT NULL,
  `price` int(40) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `item`, `price`, `quantity`, `total`) VALUES
(4, 3, '20W USB- Power Adapter', 25000, 1, 25000),
(3, 3, 'Apple 60W MagSafe Power Adapter', 55000, 1, 55000),
(5, 4, '', 0, 0, 0),
(6, 5, 'wificard', 15000, 1, 15000),
(7, 6, 'PHILIPS MONITOR 4K', 600000, 2, 1200000),
(8, 7, 'MacBook Pro 2019/16\"/ i7 / 16GB RAM / 512GB SSD ', 2050000, 1, 2050000),
(9, 8, 'Apple 85W MagSafe2 Power Adapter', 60000, 1, 60000),
(10, 9, 'LENOVO THINKPAD i5 / 8GB / 512GB SSD', 850000, 1, 850000),
(11, 10, 'MacBook Pro 2019/13\"/ i7 / 16GB RAM / 512GB SSD ', 1200000, 1, 1200000),
(12, 11, 'MacBook Pro 2019/16\"/ i7 / 16GB RAM / 512GB SSD ', 750000, 1, 750000),
(316, 64, 'MacBook Pro 2021 M1 chip / 14\"/ 16GB RAM / 512 GB SSD', 2430500, 1, 2430500),
(315, 63, 'PROLINK4K2-150', 5000, 1, 5000),
(314, 63, 'CENTERHUB.MAROON', 45000, 1, 45000),
(313, 62, 'CENTERHUB.MAROON', 45000, 4, 180000),
(17, 13, 'MAC', 1200000, 1, 1200000),
(18, 14, 'Dell Latitude 7370 FHD Business Laptop', 400000, 1, 400000),
(19, 15, 'Lenovo Thinkpad E15 i5/16GB/512GB', 777000, 0, 777000),
(20, 15, 'Hp color laserjet MFP M179FNW', 640000, 0, 640000),
(21, 16, 'Magic Mouse ', 125000, 1, 125000),
(22, 17, 'MacBook Air 2019 / i5 / 8GB RAM / 128GB SSD Gold Color', 900000, 1, 900000),
(23, 17, 'Bag', 35000, 1, 35000),
(24, 18, 'Magic Mouse ', 130000, 1, 130000),
(25, 19, 'MacBook Pro 2021 M1 chip / 14\"/ 16GB RAM / 512 GB SSD', 2300000, 1, 2300000),
(26, 20, 'MacBook Pro 2019/13\"/ i5 / 16GB RAM / 512GB SSD ', 1200000, 1, 1200000),
(390, 76, 'DESKMATE-5.GREY', 29000, 2, 58000),
(391, 76, 'AIRBASE-1.BLACK', 20500, 2, 41000),
(28, 22, 'Silox-Pro / 30W High Definition TWS Speaker with LED Light S', 130000, 1, 130000),
(29, 23, 'MacBook Pro 2017 / i5 / 8GB RAM / 256GB SSD Gray Color', 930000, 1, 930000),
(30, 24, 'JBL FLIP5', 130000, 1, 130000),
(31, 25, 'Silox-Pro / 30W High Definition TWS Speaker with LED Light S', 90000, 0, 90000),
(32, 25, 'Silox-Pro / 30W High Definition TWS Speaker with LED Light S', 90000, 0, 90000),
(33, 25, 'BOLT-20.MNG', 50000, 0, 50000),
(34, 26, 'CHARISMA-2.WHITE', 32756, 0, 32756),
(35, 26, 'HARMONI.WHITE', 36436, 0, 36436),
(36, 26, 'ENGAGE', 46663, 0, 46663),
(37, 26, 'GEARPOD-IS2.WHITE', 5895, 0, 5895),
(38, 26, 'PADHUB-PRO.GREY', 31772, 0, 31772),
(39, 26, 'SURFACEHUB-7.BLACK', 28822, 0, 28822),
(40, 26, 'EZHUB-7', 21079, 0, 21079),
(41, 26, 'GANPORT-90PD.UK-BK', 52139, 0, 52139),
(42, 26, 'POWERCUBE-2.UK-WT', 10679, 0, 10679),
(43, 26, 'VOLTRIP-DUO.WHITE', 4354, 0, 4354),
(44, 26, 'NERVELINK-I.BLUE', 13934, 0, 0),
(45, 26, 'CCORD-1.BLACK', 3207, 0, 0),
(46, 26, 'POWERBEAM-CC.BLACK', 68078, 0, 0),
(47, 26, 'MICROCORD-1.BLACK', 2323, 0, 0),
(48, 26, 'UNILINK-TRIO.GOLD', 11656, 0, 0),
(49, 26, 'AUXLINK-I.BLACK', 13735, 0, 0),
(50, 26, 'AUXLINK-C', 9599, 0, 0),
(51, 26, 'AUXKIT.BLACK', 7166, 0, 0),
(52, 26, 'PROLINK4K2-300', 0, 0, 0),
(53, 26, 'BOLT-20.MNG', 26031, 0, 0),
(54, 26, 'SUAVE-2.BLACK', 10107, 0, 0),
(55, 26, 'KEYPAD-1.BK/EN', 35030, 0, 0),
(56, 26, 'ELEVATE.GREY', 26187, 0, 0),
(57, 26, 'DESKMATE-5.GREY', 28500, 0, 0),
(58, 26, 'SMARTUNE-2+', 0, 0, 0),
(59, 26, 'CARSHADE', 208350, 0, 0),
(60, 26, 'RANGER-1', 45826, 0, 0),
(270, 56, 'USB-C 96W Power Adapter', 83000, 2, 166000),
(269, 56, 'USB-C 87W Power Adapter', 75000, 4, 300000),
(267, 56, 'MAGIC KEYBOARD', 140000, 2, 280000),
(268, 56, 'Silox-Pro / 30W High Definition TWS Speaker with LED Light S', 56000, 4, 224000),
(266, 56, 'Magic Mouse ', 106000, 2, 212000),
(265, 56, 'RANGER-1', 46000, 3, 138000),
(264, 56, 'CARSHADE', 208500, 1, 208500),
(263, 56, 'SMARTUNE-2+', 16000, 5, 80000),
(262, 56, 'AIRBASE-1.BLACK', 20500, 2, 41000),
(261, 56, 'DESKMATE-5.SILVER', 29000, 7, 203000),
(247, 56, 'PROLINK4K2-500', 9500, 5, 47500),
(248, 56, 'PROLINK4K2-300', 7000, 4, 28000),
(260, 56, 'DESKMATE-5.GREY', 29000, 1, 29000),
(259, 56, 'ELEVATE.GREY', 26500, 5, 132500),
(257, 56, 'PROCOMBO-11.BK/EN', 23000, 1, 23000),
(258, 56, 'ELEVATE.BLACK', 26500, 7, 185500),
(256, 56, 'KEYPAD-1.BK/EN', 35500, 3, 106500),
(255, 56, 'CLIX-8.BLACK', 4000, 3, 12000),
(254, 56, 'SUAVE-2.BLACK', 10500, 7, 73500),
(253, 56, 'BOLT-20.MNG', 26000, 5, 130000),
(252, 56, 'BOLT-20.BLUE', 26500, 8, 212000),
(251, 56, 'BOLT-20.WHITE', 26500, 5, 132500),
(250, 56, 'BOLT-20.BLACK', 26500, 2, 53000),
(249, 56, 'PROLINK4K2-150', 5000, 4, 20000),
(246, 56, 'PROLINK4K2-10M', 17500, 5, 87500),
(245, 56, 'AUXKIT.BLACK', 7500, 7, 52500),
(244, 56, 'IHINGE-LT.GREY', 4000, 8, 32000),
(243, 56, 'AUXLINK-C', 10000, 5, 50000),
(242, 56, 'AUXLINK-I.BLACK', 14000, 7, 98000),
(241, 56, 'UNILINK-TRIO.GOLD', 12000, 5, 60000),
(240, 56, 'MICROCORD-1.BLACK', 2500, 10, 25000),
(239, 56, 'POWERBEAM-CC.BLACK', 68500, 7, 479500),
(238, 56, 'POWERBEAM-CC2.BLACK', 8000, 5, 40000),
(237, 56, 'THUNDERLINK-C20+', 20000, 5, 100000),
(236, 56, 'CCORD-1.BLACK', 3500, 4, 14000),
(235, 56, 'NERVELINK-C.BLACK', 6500, 6, 39000),
(234, 56, 'ICORD-1.BLACK', 4000, 5, 20000),
(233, 56, 'NERVELINK-I.BLUE', 14000, 5, 70000),
(232, 56, 'POWERCORD.GREY', 13500, 3, 40500),
(231, 56, 'VOLTRIP-DUO.WHITE', 4500, 4, 18000),
(230, 56, 'VOLTRIP-DUO.BLACK', 4500, 3, 13500),
(229, 56, 'DRIVEGEAR-33W', 18000, 6, 108000),
(228, 56, 'BIPLUG.UK-WT', 5500, 4, 22000),
(219, 56, 'CENTERHUB.MAROON', 45000, 2, 90000),
(218, 56, 'CENTERHUB.BLACK', 44000, 5, 220000),
(217, 56, 'GEARPOD-IS2.WHITE', 6000, 9, 54000),
(216, 56, 'GEARPOD-IS2.BLACK', 6000, 9, 54000),
(215, 56, 'ENGAGE', 47000, 4, 188000),
(212, 56, 'INVADER.GREY', 103000, 1, 103000),
(213, 56, 'CHARISMA-2.WHITE', 33000, 5, 165000),
(214, 56, 'HARMONI.WHITE', 36500, 5, 182500),
(211, 56, 'BLUESBAR-60', 124000, 1, 124000),
(185, 51, 'GANPORT-90PD.UK-BK', 52139, 0, 0),
(186, 52, 'SMARTUNE-2+', 16000, 0, 0),
(414, 77, 'Magic Mouse ', 108000, 3, 324000),
(227, 56, 'BIPLUG.UK-BK', 5500, 4, 22000),
(226, 56, 'POWERCUBE-2.UK-WT', 11000, 2, 22000),
(225, 56, 'POWERCUBE-2.UK-BK', 14500, 6, 87000),
(224, 56, 'GANPORT-90PD.UK-BK', 52500, 3, 157500),
(223, 56, 'EZHUB-7', 21500, 7, 150500),
(222, 56, 'SURFACEHUB-7.GREY', 29500, 4, 118000),
(221, 56, 'SURFACEHUB-7.BLACK', 29000, 5, 145000),
(220, 56, 'PADHUB-PRO.GREY', 32000, 3, 96000),
(271, 56, 'USB-C 30W Power Adapter', 72000, 3, 216000),
(272, 56, 'USB-C tO Lightning Cable (1m)', 18000, 1, 18000),
(273, 56, 'EB-E01 EPSON', 614500, 1, 614500),
(274, 56, 'PHILIPS MONITOR 4K', 537000, 1, 537000),
(278, 58, 'SUAVE-2.BLACK', 10500, 1, 10500),
(277, 58, 'HARMONI.WHITE', 36500, 1, 36500),
(279, 58, 'POWERCUBE-2.UK-WT', 11000, 1, 0),
(280, 59, 'SUAVE-2.BLACK', 10500, 1, 10500),
(281, 59, 'CHARISMA-2.WHITE', 33000, 1, 33000),
(282, 59, 'HARMONI.WHITE', 36500, 1, 36500),
(283, 59, 'AUXKIT.BLACK', 7500, 1, 7500),
(284, 59, 'RANGER-1', 46000, 1, 46000),
(285, 59, 'ELEVATE.GREY', 26500, 1, 26500),
(286, 59, 'EZHUB-7', 21500, 1, 21500),
(287, 59, 'DESKMATE-5.GREY', 29000, 1, 29000),
(288, 59, 'Silox-Pro / 30W High Definition TWS Speaker with LED Light S', 56000, 1, 56000),
(289, 59, 'BIPLUG.UK-WT', 5500, 1, 5500),
(290, 59, 'PROLINK4K2-300', 7000, 1, 7000),
(291, 59, 'POWERCUBE-2.UK-WT', 11000, 1, 11000),
(292, 59, 'CENTERHUB.BLACK', 44000, 1, 44000),
(293, 59, 'ENGAGE', 47000, 1, 47000),
(294, 59, 'SMARTUNE-2+', 16000, 1, 16000),
(295, 59, 'AUXLINK-C', 10000, 1, 10000),
(296, 59, 'NERVELINK-I.BLUE', 14000, 1, 14000),
(297, 59, 'VOLTRIP-DUO.BLACK', 4500, 1, 4500),
(298, 59, 'MICROCORD-1.BLACK', 2500, 1, 2500),
(299, 59, 'AUXLINK-I.BLACK', 14000, 1, 14000),
(300, 59, 'KEYPAD-1.BK/EN', 35500, 1, 35500),
(301, 59, 'GEARPOD-IS2.WHITE', 6000, 1, 6000),
(302, 59, 'BOLT-20.BLACK', 26500, 1, 26500),
(303, 59, 'SURFACEHUB-7.GREY', 29500, 1, 29500),
(304, 59, 'UNILINK-TRIO.GOLD', 12000, 1, 12000),
(305, 59, 'GANPORT-90PD.UK-BK', 52500, 1, 52500),
(306, 59, 'POWERBEAM-CC2.BLACK', 8000, 1, 8000),
(307, 59, 'PADHUB-PRO.GREY', 32000, 1, 32000),
(308, 59, 'CARSHADE', 208500, 1, 208500),
(309, 59, 'CCORD-1.BLACK', 3500, 1, 3500),
(310, 60, 'PROLINK4K2-150', 5000, 1, 5000),
(311, 60, 'CENTERHUB.BLACK', 44000, 1, 44000),
(317, 64, 'macbook air 13-inch 8GB/256GB with  m1 chip grey color', 1071000, 3, 3213000),
(318, 64, 'macbook air 13-inch 8GB/256GB with apple m1 chip', 1071000, 1, 1071000),
(319, 64, 'MacBook Pro 2017 / i5 / 8GB RAM / 256GB SSD Gray Color', 81000, 1, 81000),
(320, 64, 'LENOVO   4GB', 385000, 1, 385000),
(321, 64, 'lenovo thinkbook 14G2 ITL 8GB/', 841500, 1, 841500),
(322, 64, 'iphone 13 pro', 1465000, 1, 1465000),
(323, 65, 'iphone 13 pro', 1465000, 1, 1465000),
(324, 65, 'Incase 13 Hardshell Case for MacBook Air ', 27500, 5, 137500),
(325, 65, 'LENOVO   4GB', 385000, 1, 385000),
(326, 65, 'lenovo thinkbook 14G2 ITL 8GB/', 841500, 1, 841500),
(327, 65, 'macbook air 13-inch 8GB/256GB with  m1 chip grey color', 1071000, 2, 2142000),
(328, 65, 'macbook air 13-inch 8GB/256GB with apple m1 chip', 1071000, 1, 1071000),
(329, 65, 'MacBook Pro 2021 M1 chip / 14\"/ 16GB RAM / 512 GB SSD', 2430500, 2, 4861000),
(330, 65, 'Hp 14Laptop core i3 / 4GB RAM / 256GB SSD ', 535000, 1, 535000),
(331, 66, 'MacBook Air 2020 with M1 / 8GB RAM / 256GB SSD Gray Color', 1400000, 1, 1400000),
(393, 76, 'New pro 13\" hardshell case', 20500, 1, 20500),
(392, 76, 'PADHUB-PRO.GREY', 32000, 2, 64000),
(339, 69, 'GEARPOD-IS2.BLACK', 6000, 10, 60000),
(340, 70, 'Macbook air 2017 ,13\" i5/8GB/256GB', 650000, 1, 650000),
(341, 71, 'Airpods pro', 247000, 1, 247000),
(342, 71, 'Macbook Air 13\"2015/i5/4GB/128GB ', 464500, 1, 464500),
(343, 71, 'Macbook pro retina,13\"i5 2015/16GB/256GB SSD', 603500, 1, 603500),
(344, 71, 'MacBook Pro(retina)15_inch 2015 / i7 / 16GB RAM / 256GB SSD', 749500, 1, 749500),
(345, 71, 'Macbook (Retina, 12-inch ,2016, core m3,8GB/256GB)', 527500, 1, 527500),
(346, 71, 'Magic Mouse ', 108000, 3, 324000),
(347, 71, 'LENOVO   4GB /14.0\"', 850000, 1, 850000),
(381, 75, 'macbook pro 2019/16-inch/i9/16GB/2666MHZ DDR4 Memory', 2100000, 1, 2100000),
(380, 75, 'MacBook Pro(retina)15_inch 2015 / i7 / 16GB RAM / 256GB SSD', 749500, 1, 749500),
(379, 75, 'Macbook pro retina,13\"i5 2015/16GB/256GB SSD', 603500, 1, 603500),
(378, 75, 'Macbook Air 13\"2015/i5/4GB/128GB ', 464500, 1, 464500),
(377, 75, 'MACBOOK AIR(RETINA ,13-INCH,2020 8GB/256GB', 1000000, 1, 1000000),
(376, 75, 'MACBOOK AIR 2014 ,13\"i5/8GB/256GB SSD', 456000, 1, 456000),
(375, 75, 'MacBook Pro 2015,13-inch / i5 / 8GB RAM / 256GB SSD', 700000, 1, 700000),
(372, 74, 'Lenovo Thinkpad E15 i5/16GB/512GB', 10000, 1, 10000),
(373, 75, 'Macbook (Retina, 12-inch ,2016, core m3,8GB/256GB)', 527500, 1, 527500),
(374, 75, 'macbook pro (retina,15\"2015/i7/16GB/1TBB', 835000, 1, 835000),
(388, 75, 'Airpods pro', 247000, 1, 247000),
(387, 75, 'PADHUB-PRO.GREY', 32000, 3, 96000),
(386, 75, 'Magic keyboard with numeric kepad', 181000, 1, 181000),
(385, 75, 'DESKMATE-5.GREY', 29000, 3, 87000),
(384, 75, 'LENOVO   4GB /14.0\"', 343500, 1, 343500),
(383, 75, 'MacBook Air 2020 with M1 / 13-inch/8GB RAM / 256GB SSD Gray ', 990500, 1, 990500),
(382, 75, 'MacBook Pro 2020 with M1 / 8GB RAM / 256GB SSD', 1350000, 1, 1350000),
(389, 75, 'Magic Mouse ', 108000, 3, 324000),
(394, 76, 'Airpods pro', 247000, 1, 247000),
(395, 76, 'Retina 15\" hardshell case', 22000, 1, 22000),
(396, 76, 'Retina 13\" hardshell case', 27500, 1, 27500),
(397, 76, 'AIR 13\" Hardshell case A1369/A1466 TRANSPARENT', 21000, 1, 21000),
(398, 76, 'lenovo v14 -IGL N4020 4G IT DOS', 343500, 1, 343500),
(399, 76, 'macbook pro 2019/16-inch/i9/16GB/2666MHZ DDR4 Memory', 645000, 1, 645000),
(400, 76, 'MACBOOK AIR(RETINA ,13-INCH,2020 8GB/256GB', 565000, 1, 565000),
(401, 76, 'MacBook Air 2020 with M1 / 13-inch/8GB RAM / 256GB SSD Gray ', 990500, 1, 990500),
(402, 76, 'Macbook air 13\"2015/i5/4GB/128GB', 456000, 1, 456000),
(403, 76, 'Macbook pro retina,13\"i5 2015/16GB/256GB SSD', 603500, 1, 603500),
(404, 76, 'macbook pro (retina,15\"2015/i7/16GB/1TBB', 835000, 1, 835000),
(405, 76, 'MACBOOK AIR(RETINA ,13-INCH,2020 8GB/256GB', 603000, 1, 603000),
(406, 76, 'Macbook air 13-inch  2014 /i5 /8GB/256GD SSD', 456000, 1, 456000),
(407, 76, 'MacBook Pro 2020 with M1 / 8GB RAM / 256GB SSD', 1600000, 1, 1600000),
(408, 76, 'Macbook (Retina, 12-inch ,2016, core m3,8GB/256GB)', 527500, 1, 527500),
(409, 76, 'MacBook Pro 2015,13-inch / i5 / 8GB RAM / 256GB SSD', 605000, 1, 605000),
(410, 76, 'thinkpad E15  gen 2', 1120000, 0, 1120000),
(411, 76, 'MacBook Pro(retina)15_inch 2015 / i7 / 16GB RAM / 256GB SSD', 749500, 1, 749500),
(412, 76, 'Magic keyboard with numeric kepad', 181000, 1, 181000),
(413, 76, 'Magic Mouse ', 108000, 1, 108000),
(415, 77, 'PADHUB-PRO.GREY', 32000, 2, 64000),
(416, 77, 'DESKMATE-5.GREY', 29000, 2, 58000),
(417, 77, 'Magic keyboard with numeric kepad', 181000, 1, 181000),
(440, 81, 'MacBook Pro(retina)15_inch 2015 / i7 / 16GB RAM / 256GB SSD', 808000, 1, 808000),
(439, 80, 'AIRBASE-1.BLACK', 20500, 2, 41000),
(438, 80, 'Lenovo Thinkpad E15 i5/16GB/512GB GEN 2', 1086000, 1, 1086000),
(437, 80, 'lenovo v14 -IGL N4020 4G IT DOS', 343500, 1, 343500),
(436, 80, 'macbook pro 2019/16-inch/i9/16GB/2666MHZ DDR4 Memory', 1760000, 1, 1760000),
(435, 80, 'MacBook Pro 2020 with M1 / 8GB RAM / 256GB SSD', 1552500, 1, 1552500),
(434, 80, 'MacBook Air 2020 with M1 / 13-inch/8GB RAM / 256GB SSD Gray ', 1279500, 1, 1279500),
(426, 79, 'lenovo v14 -IGL N4020 4G IT DOS', 343500, 1, 343500),
(427, 79, 'Lenovo Thinkpad E15 i5/16GB/512GB GEN 2', 1086000, 1, 1086000),
(428, 79, 'MacBook Air 2020 with M1 / 13-inch/8GB RAM / 256GB SSD Gray ', 1279500, 1, 1279500),
(429, 79, 'MacBook Pro 2020 with M1 / 8GB RAM / 256GB SSD', 1552500, 1, 1552500),
(430, 79, 'macbook pro 2019/16-inch/i9/16GB/2666MHZ DDR4 Memory', 1760000, 1, 1760000),
(431, 79, 'Macbook Air 13\"2015/i5/4GB/128GB ', 464500, 1, 464500),
(432, 79, 'macbook pro (retina,15\"2015/i7/16GB/1TBB', 835000, 1, 835000),
(433, 79, 'Macbook (Retina, 12-inch ,2016, core m3,8GB/256GB)', 527500, 1, 527500),
(441, 82, 'Macbook (Retina, 12-inch ,2016, core m3,8GB/256GB)', 600000, 1, 600000),
(442, 83, 'MacBook Air 2020 / i5 / 8GB RAM / 256GB SSD', 1350000, 1, 1350000),
(443, 84, 'PHILIPS MONITOR 4K', 400000, 6, 2400000),
(444, 84, 'computerlock', 25000, 6, 150000),
(445, 84, 'PROCOMBO-11.BK/EN (Keyboard & Mouse)', 35000, 6, 210000),
(446, 85, 'Macbook pro 2020 M1 13 inch 16GB 1TB', 2600000, 1, 2600000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `photo1` varchar(200) NOT NULL,
  `photo2` varchar(200) NOT NULL,
  `photo3` varchar(200) NOT NULL,
  `date_view` varchar(60) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `brand` text NOT NULL,
  `Quantity` int(200) NOT NULL,
  `shop` varchar(30) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `display` int(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `photo1`, `photo2`, `photo3`, `date_view`, `counter`, `brand`, `Quantity`, `shop`, `id_user`, `display`, `date`) VALUES
(1, 1, 'NikoN D4', '<p>The D5 is Nikon&#39;s flagship full-frame DSLRs, and boasts a myriad of powerful new imaging innovations, including a 20.8-megapixel CMOS sensor, an all-new 153-point AF system, 4K UHD video capture and an unprecedented native ISO range, from 100 to 102,400. For extreme low-light shooting, ISO is expandable from 50 (Lo-1) to a staggering ISO 3,280,000.</p>\r\n\r\n<p>The Multi-CAM 20K AF sensor module offers superior AF performance with 153 AF points, including 99 cross-type sensors - triple the AF points from Nikon&rsquo;s previous flagship, the D4S. This all-new AF system is coupled with a new 180K pixel RGB metering system and Advanced Scene Recognition System, helping to achieve optimally balanced exposures and accurate white balance in even the most challenging light. To appeal to a wide variety of photographers, the D5 will be available in two versions; with either dual XQD card slots or with dual CF card capability.</p>\r\n', 'nikon-d4', 600000, 'nikon-d41.jpeg', 'nikon-d42.jpeg', 'nikon-d43.jpeg', 'nikon-d44.jpeg', NULL, NULL, 'NIKON', 2, 'Kigali', 18, 0, '2024-09-14 13:38:36'),
(2, 1, 'CONON AOS', '<p>The D5 is Nikon&#39;s flagship full-frame DSLRs, and boasts a myriad of powerful new imaging innovations, including a 20.8-megapixel CMOS sensor, an all-new 153-point AF system, 4K UHD video capture and an unprecedented native ISO range, from 100 to 102,400. For extreme low-light shooting, ISO is expandable from 50 (Lo-1) to a staggering ISO 3,280,000.</p>\r\n\r\n<p>The Multi-CAM 20K AF sensor module offers superior AF performance with 153 AF points, including 99 cross-type sensors - triple the AF points from Nikon&rsquo;s previous flagship, the D4S. This all-new AF system is coupled with a new 180K pixel RGB metering system and Advanced Scene Recognition System, helping to achieve optimally balanced exposures and accurate white balance in even the most challenging light. To appeal to a wide variety of photographers, the D5 will be available in two versions; with either dual XQD card slots or with dual CF card capability.</p>\r\n', 'conon-aos', 1200000, 'conon-aos1.jpeg', 'conon-aos2.jpeg', 'conon-aos3.jpeg', 'conon-aos4.jpeg', NULL, NULL, 'CANON', 12, 'Kigali', 18, 0, '2024-09-14 13:38:34'),
(3, 1, 'CANON RF', '<p>The D5 is Nikon&#39;s flagship full-frame DSLRs, and boasts a myriad of powerful new imaging innovations, including a 20.8-megapixel CMOS sensor, an all-new 153-point AF system, 4K UHD video capture and an unprecedented native ISO range, from 100 to 102,400. For extreme low-light shooting, ISO is expandable from 50 (Lo-1) to a staggering ISO 3,280,000.</p>\r\n\r\n<p>The Multi-CAM 20K AF sensor module offers superior AF performance with 153 AF points, including 99 cross-type sensors - triple the AF points from Nikon&rsquo;s previous flagship, the D4S. This all-new AF system is coupled with a new 180K pixel RGB metering system and Advanced Scene Recognition System, helping to achieve optimally balanced exposures and accurate white balance in even the most challenging light. To appeal to a wide variety of photographers, the D5 will be available in two versions; with either dual XQD card slots or with dual CF card capability.</p>\r\n', 'canon-rf', 3000000, 'canon-rf1.jpeg', 'canon-rf2.jpeg', 'canon-rf3.jpeg', 'canon-rf4.jpeg', NULL, NULL, 'CANON', 12, 'Kigali', 18, 0, '2024-09-14 13:38:29'),
(4, 2, 'CANON SPEED LIGHT', '<p>The D5 is Nikon&#39;s flagship full-frame DSLRs, and boasts a myriad of powerful new imaging innovations, including a 20.8-megapixel CMOS sensor, an all-new 153-point AF system, 4K UHD video capture and an unprecedented native ISO range, from 100 to 102,400. For extreme low-light shooting, ISO is expandable from 50 (Lo-1) to a staggering ISO 3,280,000.</p>\r\n\r\n<p>The Multi-CAM 20K AF sensor module offers superior AF performance with 153 AF points, including 99 cross-type sensors - triple the AF points from Nikon&rsquo;s previous flagship, the D4S. This all-new AF system is coupled with a new 180K pixel RGB metering system and Advanced Scene Recognition System, helping to achieve optimally balanced exposures and accurate white balance in even the most challenging light. To appeal to a wide variety of photographers, the D5 will be available in two versions; with either dual XQD card slots or with dual CF card capability.</p>\r\n', 'canon-speed-light', 3000, 'canon-speed-light1.jpeg', 'canon-speed-light2.jpeg', 'canon-speed-light3.jpeg', 'canon-speed-light4.jpeg', '2024-09-14', 1, 'CANON', 34, 'Kigali', 18, 0, '2024-09-14 13:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  `shipping_id` varchar(50) DEFAULT NULL,
  `shipping_price` int(10) DEFAULT NULL,
  `paid` int(11) NOT NULL,
  `not_paid` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`, `shipping_id`, `shipping_price`, `paid`, `not_paid`, `total`) VALUES
(1, 52, 'd83b67ce-75b1-48d4-9ecd-d04fc6dd8e4f', '2021-12-14', '61b8cd61b68af', 0, 1000, 0, 1000),
(2, 52, 'd83b67ce-75b1-48d4-9ecd-d04fc6dd8e4f', '2021-12-14', '61b8cd61b68af', 0, 1000, 0, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` varchar(300) NOT NULL,
  `status` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `approver` varchar(60) NOT NULL,
  `vat` text NOT NULL,
  `totalv` int(200) NOT NULL,
  `companyName` text NOT NULL,
  `address` text NOT NULL,
  `total2` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`id`, `user_id`, `name`, `date`, `note`, `status`, `total`, `approver`, `vat`, `totalv`, `companyName`, `address`, `total2`) VALUES
(4, 49, 'wi', '2022-02-14 19:34:27', '', 1, 0, '50', '', 0, '', '', 0),
(5, 49, 'Gage Clint Penrod ', '2021-11-15 13:49:38', '', 1, 15000, '50', 'no', 0, 'Gage Clint Penrod', 'Kigali', 15000),
(3, 49, 'fondazione marcegaglia', '2021-11-15 12:27:38', '', 1, 80000, '50', 'no', 0, 'fondazione marcegaglia', 'kigali', 80000),
(6, 49, 'KALISA Axel', '2021-11-17 11:03:56', 'Thanks to deal with US', 1, 1200000, '50', 'no', 0, 'KALISA Alex', 'Kigali', 1200000),
(7, 49, 'IMAGE DESIGNING CENTER', '2021-11-19 08:33:38', 'Thank you to shopping with us', 1, 2050000, '50', 'no', 0, 'IMAGE DESIGNING CENTER', 'Kigali', 2050000),
(8, 49, 'Client XX', '2021-11-19 08:41:03', 'Thank you to shopping with us', 1, 60000, '50', 'no', 0, 'Client xx', 'kigali', 60000),
(9, 49, 'Vincent', '2021-11-22 09:17:44', 'Thank for shopping with us', 1, 850000, '50', 'no', 0, 'vincent', 'Kigali', 850000),
(10, 49, 'joseph havugimana', '2021-11-22 09:20:37', 'Thank for shopping with us', 1, 1200000, '50', 'no', 0, 'joseph havugimana', 'Kigali', 1200000),
(11, 57, 'Nzasi', '2022-02-14 21:36:49', 'fgbb', 1, 78000, '50', '', 0, '', '', 0),
(63, 82, 'Adra rwanda 18.02.22', '2022-02-18 10:38:46', 'done', 1, 50000, '81', '', 0, '', '', 0),
(13, 18, 'Nzasi', '2021-12-02 18:31:55', '3006400GFFDD', 0, 1200000, '50', '', 0, '', '', 0),
(14, 49, 'Client x', '2021-11-24 11:15:20', 'Thank you for shopping with us', 1, 400000, '50', '', 0, '', '', 0),
(15, 49, 'Dalberg', '2021-11-24 10:31:22', 'Thank you for shopping with us ', 1, 1417000, '50', '', 0, '', '', 0),
(16, 49, 'Jean Regis NDUWIMANA', '2021-11-25 10:05:18', 'Thank you for shopping with us', 1, 125000, '50', '', 0, '', '', 0),
(17, 49, 'UNIVERSAL GENERAL Merchants ', '2021-12-02 07:35:37', 'Thank you for shopping with us ', 1, 935000, '50', '', 0, '', '', 0),
(18, 49, 'Client M Mouse', '2021-12-02 14:38:15', 'Thank you for shopping with us', 1, 130000, '50', '', 0, '', '', 0),
(19, 49, 'Esuka Olivier', '2021-12-06 13:53:19', 'Thank you for shopping with us ', 0, 2300000, '', '', 0, '', '', 0),
(20, 49, 'KWIZERA Christophe ', '2021-12-15 09:06:50', 'Thank you for shopping with us', 0, 1200000, '', '', 0, '', '', 0),
(76, 82, 'sabin 22.04.2022', '2022-04-25 10:11:52', 'new order', 1, 10889500, '81', '', 0, '', '', 0),
(22, 49, 'SEMUKA DIDDY', '2021-12-31 14:49:37', 'tHANK YOU FOR SHOPPING WITH US', 0, 130000, '', '', 0, '', '', 0),
(23, 49, 'NGEYEN VICTORY', '2022-01-04 13:23:23', 'Thank you for Shopping with us', 0, 930000, '', '', 0, '', '', 0),
(24, 49, 'Ananias', '2022-01-24 10:36:40', 'Thank you', 0, 130000, '', '', 0, '', '', 0),
(25, 49, 'Elyser', '2022-01-24 11:41:07', 'Thank you', 0, 230000, '', '', 0, '', '', 0),
(26, 77, '', '2022-02-14 14:01:02', '', 1, 270594, '50', '', 0, '', '', 0),
(64, 82, 'KIGALI BRANCH 01 18.02.22', '2022-02-18 15:45:53', 'done', 0, 9487000, '', '', 0, '', '', 0),
(59, 77, 'khalifa-sabin', '2022-02-15 07:21:22', '', 1, 856000, '81', '', 0, '', '', 0),
(60, 82, 'Adra rwanda', '2022-02-17 13:01:40', 'for corporate', 1, 50000, '81', '', 0, '', '', 0),
(62, 82, 'sabin ', '2022-02-17 12:57:22', '', 1, 180000, '81', '', 0, '', '', 0),
(65, 82, 'KIGALI BRANCH  19.02.22', '2022-02-21 13:47:58', 'thanks', 1, 11438000, '81', '', 0, '', '', 0),
(58, 77, 'Emahali', '2022-02-14 13:02:03', '', 0, 47000, '', '', 0, '', '', 0),
(56, 82, 'KIGALI Branch', '2022-02-12 13:55:39', '', 1, 7771000, '81', '', 0, '', '', 0),
(77, 82, 'sabin 26/04/2022', '2022-04-28 10:39:59', 'accessories order', 1, 627000, '81', '', 0, '', '', 0),
(52, 77, '', '2022-02-04 11:48:29', '', 0, 0, '', '', 0, '', '', 0),
(51, 77, 'Khalifa', '2022-02-03 14:36:46', '', 0, 0, '', '', 0, '', '', 0),
(66, 82, 'Sabin 1/03/2022', '2022-03-01 12:26:35', 'replacing', 1, 1400000, '81', '', 0, '', '', 0),
(67, 77, 'test order7', '2022-03-25 16:15:51', 'test ok', 0, 53000, '', '', 0, '', '', 0),
(69, 77, 'khalifa -uwimana  25.03.2022', '2022-04-25 10:49:41', 'thanks', 1, 60000, '81', '', 0, '', '', 0),
(70, 18, 'YAYRA', '2022-04-08 14:42:04', 'DONE', 0, 650000, '', '', 0, '', '', 0),
(71, 82, 'sabin 13.04.2022', '2022-04-13 13:30:09', 'LET DO IT', 0, 3766000, '', '', 0, '', '', 0),
(74, 18, 'test if count is working', '2022-04-14 19:24:53', 'test if count is working', 0, 10000, '', '', 0, '', '', 0),
(75, 82, 'sabin 15/04/2022', '2022-04-15 08:13:45', 'THANKS', 0, 11055000, '', '', 0, '', '', 0),
(79, 82, 'sabin 27/04/2022', '2022-04-28 11:39:35', 'COMPUTER\'S ORDER', 1, 7848500, '81', '', 0, '', '', 0),
(80, 82, 'sabin 28/04/2022', '2022-04-28 15:01:02', 'computer\'s order', 0, 6062500, '', '', 0, '', '', 0),
(81, 18, 'dfirst genius tech ltd', '2022-05-20 13:03:08', 'dfirst genius tech ltd', 1, 808000, '', '', 0, '', '', 0),
(82, 18, ' ABEL TONY NIYINDAGIY', '2022-05-20 13:23:18', 'DONE', 1, 600000, '', '', 0, '', '', 0),
(83, 18, 'LIPALATER', '2022-06-16 11:53:11', 'done', 1, 1350000, '', '', 0, '', '', 0),
(84, 18, 'RCS GLOBAL RWANDA LTD', '2022-06-27 11:58:45', 'DONE', 1, 2760000, '', '', 0, '', '', 0),
(85, 18, '', '2022-07-01 16:41:00', 'DONE', 1, 2600000, '', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `location` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `street` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `user_id`, `location`, `phone`, `street`, `date`, `status`, `reference`, `price`) VALUES
(10, '62', 'Test', '07854555555', 'ker34', '2021-11-25', 'pending for payment', '61b8cd61b68af', 500),
(58, '52', '1', '+250786138376', 'RUSIZI, RUSIZI', '2022-04-23', 'pending for payment', '6263ebf7d000f', 10000),
(59, '52', '2', '+250786138376', 'RUSIZI, RUSIZI', '2022-05-10', 'pending for payment', '627a6b954d94f', 10000),
(60, '62', 'Test', '', '', '2022-05-25', 'pending for payment', '628e0d88070b1', 500),
(61, '62', 'Test', '', '', '2022-05-25', 'pending for payment', '628e0e0724562', 500),
(62, '62', 'Test', '', '', '2022-05-25', 'pending for payment', '628e103b4b63c', 500),
(63, '52', '5', '', '', '2022-05-25', 'pending for payment', '628e12a683d65', 1000),
(64, '52', '6', '07527288282', 'gsgshs', '2022-05-25', 'pending for payment', '628e17a9f01f6', 1000),
(65, '52', '6', '0786138376', '', '2022-05-28', 'pending for payment', '6291debf135f1', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `simcard`
--

CREATE TABLE `simcard` (
  `id` int(200) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `current_phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `passport` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `requested_date` date NOT NULL,
  `end_date` date NOT NULL,
  `address` varchar(200) NOT NULL,
  `country` text NOT NULL,
  `house` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `simcard`
--

INSERT INTO `simcard` (`id`, `first_name`, `last_name`, `current_phone`, `email`, `passport`, `requested_date`, `end_date`, `address`, `country`, `house`, `street`) VALUES
(13, 'dodossss', 'ddodododdd', '', '', 'dodossss.', '2022-05-12', '2022-05-12', '', '', '', ''),
(20, 'AAAAASS   SLLWLWLWL', 'WERDDDDDDDDDDDDDDDDDDDDD', '', '', 'aaaaass-sllwlwlwl.PNG', '2022-05-13', '2022-05-30', '', '', '', ''),
(19, 'KIM UN JUN', 'SJHHHHHHHHHHHHHHHHHHHH', '', '', 'kim-un-jun.PNG', '2022-05-13', '2022-05-26', '', '', '', ''),
(17, 'pdf test', 'ok', '', '', 'pdf-test.pdf', '2022-05-12', '2022-05-12', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `name`, `address`) VALUES
(1, 'Kigali', 'Kigali'),
(2, 'Rusizi', 'Cyangugu'),
(4, 'Emahali', 'Grand Penssion Plaza');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(11) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `api_token` text DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `created_at` date NOT NULL,
  `modified_at` date NOT NULL,
  `api_key` int(11) DEFAULT NULL,
  `api_secret` text DEFAULT NULL,
  `token_id` text DEFAULT NULL,
  `token_secret` text DEFAULT NULL,
  `license_key` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `item_id` varchar(20) NOT NULL,
  `reported_date` date NOT NULL,
  `type` varchar(20) DEFAULT 'blank',
  `issue` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `photo` varchar(30) DEFAULT NULL,
  `action` varchar(30) DEFAULT 'No',
  `approval` int(2) NOT NULL,
  `solution` varchar(300) DEFAULT 'No',
  `support_type` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `user_id`, `item_id`, `reported_date`, `type`, `issue`, `description`, `photo`, `action`, `approval`, `solution`, `support_type`) VALUES
(1, '54', '71', '2021-10-11', 'blank', 'Screen blinking', 'After using it for some time, the screen blinks and stops working. ', NULL, 'No', 0, 'No', NULL),
(2, '54', '177', '2021-10-11', 'blank', 'Camera', 'The camera is not working', NULL, 'No', 1, ' ', 'repair'),
(3, '54', '197', '2021-10-11', 'blank', 'Windows Failure', 'Windows Failure', NULL, 'No', 0, 'No', NULL),
(4, '54', '74', '2021-10-11', 'blank', 'can not go on', 'Can not turn on', NULL, 'No', 1, ' ', 'repair'),
(5, '54', '333', '2021-10-11', 'blank', 'charging issue', 'Charging system issue', NULL, 'No', 1, ' ', 'repair'),
(6, '54', '88', '2021-10-11', 'blank', 'Frame is broken', 'Frame is not holding well', NULL, 'No', 1, ' ', 'repair'),
(7, '54', '241', '2021-10-11', 'blank', 'Microphone issue', 'Microphone not working', NULL, 'No', 1, ' ', 'repair'),
(8, '54', '153', '2021-10-11', 'blank', 'Microphone issue', 'Microphone not working ', NULL, 'No', 1, ' ', 'repair'),
(9, '54', '344', '2021-10-11', 'blank', 'Projector drivers', 'The laptop is missing projector drivers. We tried to install what we could get but it didn\'t work.', NULL, 'No', 0, 'No', NULL),
(10, '54', '198', '2021-10-11', 'blank', 'MANY ISSUES', 'It looks too old, HDD faulty, it\'s too slow and sometimes windows doesn\'t load', NULL, 'No', 1, ' ', 'repair'),
(11, '52', '3', '2021-10-11', 'blank', 'test', 'test', NULL, 'No', 0, 'No', NULL),
(12, '54', '10', '2021-10-18', 'blank', 'CAMERA ISSUE', 'Dear support, \r\n\r\nKindly help us and install another camera in this laptop. It doesn\'t work! \r\n\r\nThanks!', NULL, 'No', 1, ' ', 'repair'),
(13, '54', '215', '2021-10-18', 'blank', 'NO DISPLAY', 'The laptop goes on but it doesn\'t display anything. Kindly support', NULL, 'No', 1, ' ', 'repair'),
(14, '54', '206', '2021-10-26', 'blank', 'Hard Disk Failure', 'The hard disk is very slow, it is taking a long time to open and applications are not opening. We formated it but still, the issue is still there. The hard disk has failed', NULL, 'No', 4, ' ', 'repair'),
(15, '54', '206', '2021-10-26', 'blank', 'Hard Disk Failure', 'The hard disk is very slow, it is taking a long time to open and applications are not opening. We formated it but still, the issue is still there. The hard disk has failed', NULL, 'No', 1, ' ', 'repair'),
(16, '54', '10', '2021-10-26', 'blank', 'Broken battery', 'The battery is working but it\'s broken. Kindly change it', NULL, 'No', 1, ' the battery to be replaced', 'repair'),
(17, '58', '3', '2021-12-20', 'blank', 'Testing issue', 'Testing issue', NULL, 'No', 0, 'No', NULL),
(18, '54', '1279', '2021-12-20', 'blank', 'Hard disk failure', 'Hello, \r\n\r\nKindly replace the hard disk of this laptop. It has Failed completely   (It\'s size is 500GB)', NULL, 'No', 1, ' ', 'repair'),
(19, '54', '1285', '2021-12-20', 'blank', 'Hard disk failure', 'Hello, \r\n\r\nKindly change this Hard disk. It\'s faulty (Size: 500GB).\r\n\r\nThank you!', NULL, 'No', 1, ' ', 'repair'),
(20, '54', '182', '2021-12-20', 'blank', 'Processor problem. (It doesn\'t load from from Wind', 'Hello, \r\n\r\nPlease fix this laptop for us. It seems  it has a processor problem!\r\n\r\nThank you', NULL, 'No', 1, ' ', 'repair'),
(21, '54', '1181', '2021-12-20', 'blank', 'POWER FAILURE', 'This computer can not be turned on. Kindly support! (HDD size:500GB)', NULL, 'No', 1, ' ', 'repair'),
(22, '54', '1275', '2021-12-20', 'blank', 'Hard disk failure', 'Hi,\r\n\r\nKindly change this Hard disk, it\'s faulty. (size: 500GB)', NULL, 'No', 4, ' ', 'repair'),
(23, '54', '1240', '2022-01-06', 'blank', 'NOISE', 'This laptop has a very bad continous strange noise', NULL, 'No', 4, ' ', 'replacement'),
(24, '54', '56', '2022-01-06', 'blank', 'POWER FAILURE', 'This laptop can\'t be turned on', NULL, 'No', 2, ' ', 'repair'),
(25, '54', '6', '2022-01-06', 'blank', 'DISPLAY ISSUE', 'The laptop doesn\'t display', NULL, 'No', 4, ' ', 'repair'),
(26, '54', '161', '2022-02-15', 'blank', 'HDD ISSUE', 'This laptop\'s HDD has failed. Kindly change it. Thanks', NULL, 'No', 2, ' ', 'replacement'),
(27, '54', '182', '2022-02-15', 'blank', 'Hard disk failure', 'The HDD has failed', NULL, 'No', 2, ' ', 'replacement'),
(28, '54', '44', '2022-02-15', 'blank', 'NO DISPLAY', 'The laptop can not display', NULL, 'No', 2, ' ', 'repair'),
(29, '54', '1275', '2022-02-15', 'blank', 'Hard disk failure', 'The hard disk is dead', NULL, 'No', 2, ' ', 'replacement'),
(30, '54', '51', '2022-02-15', 'blank', 'Touchpad', 'Keyboard letters erases and touchpad failure', NULL, 'No', 2, ' ', 'replacement'),
(31, '54', '1279', '2022-02-15', 'blank', 'Hard disk failure', 'The hard disk is not working. Please replace it', NULL, 'No', 2, ' ', 'replacement'),
(32, '54', '1247', '2022-02-15', 'blank', 'MANY ISSUES', 'When you double click to open a program or any other icon for a file, it changes to the right click properties window!', NULL, 'No', 2, ' ', 'repair'),
(33, '54', '44', '2022-02-15', 'blank', 'SOUND', 'The sound system doesn\'t work', NULL, 'No', 2, ' ', 'repair'),
(34, '54', '53', '2022-03-03', 'blank', 'NO DISPLAY', 'Hello, \r\n\r\nThis laptop has a display failure. Kindly fix it!\r\n\r\nThanks', NULL, 'No', 0, 'No', NULL),
(35, '54', '65', '2022-03-28', 'blank', 'MICROPHONE', 'THE MICROPHONE DOESN\'T WORK', NULL, 'No', 0, 'No', NULL),
(36, '54', '123', '2022-03-28', 'blank', 'HDD FAILURE', 'THE HARDDISK IS DEAD. KINDLY REPLACE', NULL, 'No', 0, 'No', NULL),
(37, '54', '234', '2022-03-28', 'blank', 'HDD FAILURE', 'The Hard disk is dead', NULL, 'No', 0, 'No', NULL),
(38, '54', '54', '2022-03-28', 'blank', 'TOUCHPAD FAILURE', 'Please replace the touchpad', NULL, 'No', 0, 'No', NULL),
(39, '54', '1177', '2022-03-28', 'blank', 'HDD & BATTERY', 'THE HARD DISK AND BATTERY NEED TO BE REPLACED', NULL, 'No', 0, 'No', NULL),
(40, '54', '1223', '2022-03-28', 'blank', 'HDD & BATTERY', 'The hard disk and battery need to be replaced', NULL, 'No', 0, 'No', NULL),
(41, '54', '260', '2022-03-28', 'blank', 'HDD FAILURE', 'Kindly replace the HDD', NULL, 'No', 0, 'No', NULL),
(42, '54', '1174', '2022-03-28', 'blank', 'BATTERY', 'The battery spends few minutes. Please replace', NULL, 'No', 0, 'No', NULL),
(43, '54', '44', '2022-03-28', 'blank', 'BATTERY', 'The battery works for only 20 minutes. Need a replacement', NULL, 'No', 0, 'No', NULL),
(44, '54', '1231', '2022-03-28', 'blank', 'BATTERY', 'The battery works for 15 minutes  only. Please replace', NULL, 'No', 0, 'No', NULL),
(45, '54', '1221', '2022-03-28', 'blank', 'BATTERY', 'The battery spends only 30 minutes. Needs a replacement', NULL, 'No', 0, 'No', NULL),
(46, '54', '190', '2022-03-31', 'blank', 'Hard disk failure', 'Kimdly replace the HDD. It\'s dead', NULL, 'No', 0, 'No', NULL),
(47, '54', '109', '2022-04-14', 'blank', 'Hard disk failure', 'This hard disk is dead. Kindly replace!', NULL, 'No', 0, 'No', NULL),
(48, '54', '79', '2022-05-06', 'blank', 'NO DISPLAY', 'The laptop can not display', NULL, 'No', 0, 'No', NULL),
(49, '54', '350', '2022-05-06', 'blank', 'SLOW', 'Takes too long to switch on and sometimes it doesn\'t display at all.', NULL, 'No', 0, 'No', NULL),
(50, '54', '1252', '2022-05-06', 'blank', 'NO DISPLAY', 'It shows a very deem display', NULL, 'No', 0, 'No', NULL),
(51, '54', '64', '2022-05-06', 'blank', 'HDD ISSUE', 'The hard disk is dead. Needs a replacement', NULL, 'No', 0, 'No', NULL),
(52, '54', '1227', '2022-05-06', 'blank', 'POWER FAILURE', 'Doesn\'t charge', NULL, 'No', 0, 'No', NULL),
(53, '54', '56', '2022-05-06', 'blank', 'POWER FAILURE', 'Doesn\'t charge', NULL, 'No', 0, 'No', NULL),
(54, '54', '320', '2022-05-06', 'blank', '2 ISSUES', 'Produces a weird sound at start and has a touchPad failure', NULL, 'No', 0, 'No', NULL),
(55, '54', '106', '2022-05-23', 'blank', 'POWER FAILURE', 'This laptop doesn\'t switch on!', NULL, 'No', 0, 'No', NULL),
(56, '54', '300', '2022-05-23', 'blank', 'HDD FAILURE', 'PLEASE REPLACE THE HDD', NULL, 'No', 0, 'No', NULL),
(57, '54', '190', '2022-05-23', 'blank', 'POWER FAILURE', 'DOESN\'T SWITCH ON', NULL, 'No', 0, 'No', NULL),
(58, '54', '68', '2022-05-23', 'blank', 'POWER FAILURE', 'DOESN\'T GO ON', NULL, 'No', 0, 'No', NULL),
(59, '54', '1191', '2022-05-23', 'blank', 'TOUCHPAD + BATTERY', 'THE TOUCHPAD AND THE BATTERY DO NOT WORK. KINDLY FIX', NULL, 'No', 0, 'No', NULL),
(60, '54', '297', '2022-05-23', 'blank', 'POWER FAILURE', 'DOESN\'T TURN ON', NULL, 'No', 0, 'No', NULL),
(61, '54', '180', '2022-05-23', 'blank', 'POWER FAILURE', 'Doesn\'t go on!', NULL, 'No', 0, 'No', NULL),
(62, '54', '1286', '2022-06-07', 'blank', 'POWER FAILURE', 'The laptop can\'t switch on', NULL, 'No', 0, 'No', NULL),
(63, '54', '154', '2022-06-07', 'blank', 'HDD FAILURE', 'Kindly replace this hard disk', NULL, 'No', 0, 'No', NULL),
(64, '54', '154', '2022-06-07', 'blank', 'HDD FAILURE', 'Kindly replace this hard disk', NULL, 'No', 0, 'No', NULL),
(65, '54', '311', '2022-06-07', 'blank', 'DISPLAY FAILURE', 'This laptop can not display anything', NULL, 'No', 0, 'No', NULL),
(66, '34', '33', '2022-06-12', 'blank', 'issue', 'desc', NULL, 'No', 0, 'No', NULL),
(67, 'id', '19', '2022-06-12', 'blank', 'bhhhhghhhh', 'yuhjjjjttggg. ghhhjhhjkj gghhjjj', NULL, 'No', 0, 'No', NULL),
(68, '52', '19', '2022-06-12', 'blank', 'ghjjjjhj', 'fhhjjjj', NULL, 'No', 0, 'No', NULL),
(69, '52', '19', '2022-06-12', 'blank', 'ghjjjjhj', 'fhhjjjj\n', NULL, 'No', 0, 'No', NULL),
(70, '52', '19', '2022-06-12', 'blank', 'ghjjjjhj', 'fhhjjjj\n', NULL, 'No', 0, 'No', NULL),
(71, '52', '71', '2022-06-12', 'blank', 'hi', 'h hi iii', NULL, 'No', 0, 'No', NULL),
(72, '52', '79', '2022-06-13', 'blank', 'test issue', 'issue', NULL, 'No', 0, 'No', NULL),
(73, '52', '79', '2022-06-13', 'blank', 'test issue', 'issue', NULL, 'No', 0, 'No', NULL),
(74, '52', '79', '2022-06-13', 'blank', 'test issue', 'issue', NULL, 'No', 0, 'No', NULL),
(75, '52', '79', '2022-06-13', 'blank', 'test issue', 'issue descrip', NULL, 'No', 0, 'No', NULL),
(76, '54', '16', '2022-06-20', 'blank', 'POWER FAILURE', 'Kindly fix this power problem. Thank you!', NULL, 'No', 0, 'No', NULL),
(77, '54', '46', '2022-06-20', 'blank', 'POWER FAILURE', 'The laptop doesn\'t switch on.', NULL, 'No', 0, 'No', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL,
  `company` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`, `company`) VALUES
(18, 'admin@readinstore.com', '$2y$10$6nYcMjFV.peNknKV2AUmyOXzorLkxp0.w9PPbqvKr69oVQ00NIhCS', 1, 'NGABONZIZA', 'Théogène', '', '', '', 1, 'z34AHduI7bOf', '8IveE29nZuFqoHj', '2021-07-24', 'Kigali'),
(44, 'super@readinstore.com', '$2y$10$TIjrbg/Rm12waQX30NMCn.gtiAelT0PvqekaiuTm2clfn9vKVbiJC', 10, 'Dieudonne', 'UWAMBAJIMANA', 'RUSIZI\r\nRUSIZI', '0786138376', '', 1, '', 'WI2LUa4YqSbHljF', '2021-09-06', 'Kigali'),
(52, 'uwambadodo@gmail.com', 'admin', 0, 'Dieudonnee', 'UWAMBAJIMANA', '', '', '', 1, 'gUIEe67tXPmO', 'dnMH2GQK1RXDCIO', '2021-10-07', 'Kigali'),
(53, 'gapetitheos@gmail.com', '$2y$10$td7j5uYGiNwx9alMuKcrW.JuSccfLOZ8wK4eE92s/DMW.AE8GEgKm', 0, 'NGABONZIZA', 'Theogene', 'oginalo', '0771402194', '', 1, 'ADcYVXHK7hQE', '', '2021-10-07', 'kigali'),
(54, 'supporttech@daviscollege.com', '$2y$10$ifcgRD2HS5elNOLT2S4LveX2.3QnL27ZwKTYBoLUKupoDr2EbNO.q', 11, 'Davis ', 'Collegege', '', '', '', 1, 'aLcTze8vprAk', '', '2021-10-11', ''),
(57, 'seller@gmail.com', '$2y$10$wGH1pfw3N00bat.SCff/6er8AQVsotmdDuBGGCxrqCda0LtmzKK7i', 3, 'gaso', 'ngo', 'kigali', '0785421315', '', 1, '', '', '2021-10-18', 'Kigali'),
(58, 'special@readinstore.com', '$2y$10$QjAyvajIsvLqtTdCmgEdjO6jdtBe8VYqG.LUkaSt0YE2DHQINgKb2', 11, 'Dieudonne', 'UWAMBAJIMNA', 'RUSIZI\r\nRUSIZI', '0786138376', '', 1, '', '', '2021-11-01', 'Kigali'),
(60, 'yeg1@gmail.com', '$2y$10$5OplJMXtMr7u1oNu93BUheo88sB3MwkZqXkDxP5kifolAQfyIrgh2', 2, 'kagey', 'kagab', 'mu', '0785156674', '', 1, '', '', '2021-11-03', 'Rusizi'),
(61, 'cashier@readinstore.com', '$2y$10$RsajRzqgPhiKuabQmdOU7O27i2fVfe0z5rzqvvh/xLbeGb0EXE.Lu', 4, 'cashier', 'cashier', 'RUSIZI', '0786138376', '', 1, '', '', '2021-11-22', 'Kigali'),
(62, 'uwambadodos@gmail.com', '$2y$10$NqPjcYh3icsu6dCYm69UReGApIRM1qqznK0TQ9tIG/scn7SOiL6Eu', 3, 'Dieudonne', 'UWAMBAJIMNA', '', '', '', 0, 'HVZJixXzQC43', '', '2021-11-24', 'Kigali'),
(77, 'emahaligroup@gmail.com', '$2y$10$cE/si15HHj92vCRXHSf54OQm8XOP09jTyjPnGAkBQvVOgNeDtPare', 1, 'Khalifa', 'UWIMANA', 'Grand Pension Plaza', '+250788351919', '', 1, '', '', '2022-01-26', 'Emahali'),
(78, 'gsmsolution1@yahoo.com', '$2y$10$E4AmJ5e1qyhZtzsT5jAz6.o7exzvjcTCyOCl.uqQLXtSnD2ef3vve', 4, 'Khalifa', 'UWIMANA', 'Grand Pension Plaza', '+250788351919', '', 1, '', '', '2022-01-28', 'Emahali'),
(80, 'umuhuzapatrick@gmail.com', '$2y$10$27dTLUHy.bkZJjctczJkfuc5XLBxe2RRPCn51/840R4Vaxix0GRzy', 0, 'UMUHUZA M', 'Patrick', '', '', '', 1, 'Mt4V7nacG6Fm', '', '2022-02-08', ''),
(82, 'manzi@readinstore.com', '$2y$10$3qmjEynEDZ59lQWEZdj5QuJZL8VsQdjTDWEppYYL1Igz4vHjtERMq', 1, 'sabin', 'Manzi', 'Kigali Kabeza', '+250786583451', '', 1, '', '', '2022-02-11', 'Kigali'),
(83, 'esther@readinstore.com', '$2y$10$w5DfsgvpeM9CUmF5T/5Xf.LP/znfUv6ZL.shRXWEgT1KQdwzxfyki', 4, 'Jolly Esther', 'IRADUKUNDA', 'KIGALI', '+250788695298', '', 1, '', '', '2022-02-14', 'Kigali'),
(84, 'emahalistore@readinstore.com', '$2y$10$7Ez7zrWVrjaDwKIrkK4p6uexhyX/wPz.9iq3b.1lVNUv4aTlz2806', 2, 'emahali', 'emahali', 'Kigali-pension plaza', '+25078280021', '', 1, '', '', '2022-02-14', 'Emahali'),
(85, 'paternepath8@gmail.com', '$2y$10$IKCsmf4qjSe0J3dby7K3k.ofyP74qK6BWzLg/wifYQ0mFYq3Ev.Iu', 0, 'Angelo', 'Paterne', '', '', '', 1, 'CYZB1Py46UTa', '', '2022-02-25', ''),
(87, 'Umugisou@gmail.com', '$2y$10$HABRDsiBhWm/rcd32sdSTuC1aHh8t5XF8rgbZb/flFO8SJeGOYZoO', 5, 'Umugwaneza', 'Giselle', 'Kigali', '', '', 1, '', '', '2022-05-03', 'Kigali'),
(88, 'johnmugabe3@gmail.com', '$2y$10$W7Ynb4g8tkuUgKnI/l308epU.2lq9ZydTmWu2OVcQjta/Wr.62uKe', 0, 'John', 'MUGABE', '', '', '', 0, 'uRSIQsdn8j5p', '', '2022-05-10', ''),
(89, 'nadiahmumar@gmail.com', '$2y$10$Z/zDxtTRWu81Ij.WsSTnP.KKNR9HRp.EFyKb9l8nq6.on7rcSLPN2', 0, 'Nadia', 'Umumararungu', '', '', '', 0, '8ctI2UZuW47D', '', '2022-05-12', ''),
(90, 'sunrene02@gmail.com', '$2y$10$/mg6TGIRCs85xzdP7ni69eMk.EQa3v8wa2yjOZf9OEVwjMRaE3nUW', 0, 'Ndagijimana', 'Sun Rene', '', '', '', 0, 'dOKvfYe1CTm5', '', '2022-05-13', ''),
(91, 'mwesigyedani@gmail.com', '$2y$10$tDC7WQcOVWjjwEjjwbdptujgb8yGqktKrAjIKGOoyInPWMyztnSKC', 0, 'Daniel', 'Mwesigye', '', '', '', 0, 'Opo7R6jcSHIB', '', '2022-05-13', ''),
(92, 'jeanlucuwimbabazi@gmail.com', '$2y$10$3kyqTtCUmEGZoRnpZPk99.sdjmSliT3k5lYxa1TzSR71LnaE9hkE6', 0, 'Jean luc', 'Uwimbabazi', '', '', '', 0, '5DPHqYVZh6c7', '', '2022-05-14', ''),
(93, 'brucenkusi00@gmail.com', '$2y$10$sVaz761XQQl1La7Sstc/n.VcFvMX56BgaZOi9vXyus8ltU1ptOkOC', 0, 'Nkusi', 'Bruce', '', '', '', 0, 'YwFBoI8ej4Jt', '', '2022-05-16', ''),
(94, 'tuyisengesyncdata@gmail.com', '$2y$10$XOzX1RknzqsLMNzGP3yefe2t5Ja6PHlWch8mfL167r8KJxDJfBgiu', 0, 'TUYISENGE', 'DAMASCENE', '', '', '', 0, 'KxPcnZ5VM8hf', '', '2022-05-16', ''),
(95, 'romancenzabona@gmail.com', '$2y$10$s744IB/bfcJSg77bYSkZYu9r58MHoVFasAIMMSawBN.UPRZadR2Lq', 0, 'Rome', 'Nzabona', '', '', '', 0, 'GHCXdLYWuaFw', '', '2022-05-19', ''),
(96, 'lucnyoni@gmail.com', '$2y$10$9tmXtng9pK/R.U5.vEyECe1U46H7wPYMjMbEMTXamKnFks1PRHgFa', 0, 'Jean Luc ', 'Nyoni ', '', '', '', 0, 'CgUvwHqIic3T', '', '2022-05-20', ''),
(97, 'damacene@elmax.rw', '$2y$10$UiqGKjx6LadEkEidtWeiCuffymiPlbw7UyRBwldWK/DjVlGv8EIda', 2, 'Damacene', 'NTAKIRUTIMANA', 'KIGALI-NYARUGNE â€­0788422361â€¬', '0788422361', '', 1, '', '', '2022-05-27', 'Kigali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_note`
--
ALTER TABLE `delivery_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_note_items`
--
ALTER TABLE `delivery_note_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `general_expenses`
--
ALTER TABLE `general_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_order`
--
ALTER TABLE `invoice_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `invoice_order_item`
--
ALTER TABLE `invoice_order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `invoice_user`
--
ALTER TABLE `invoice_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuing`
--
ALTER TABLE `issuing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simcard`
--
ALTER TABLE `simcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `credit`
--
ALTER TABLE `credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `delivery_note`
--
ALTER TABLE `delivery_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `delivery_note_items`
--
ALTER TABLE `delivery_note_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general_expenses`
--
ALTER TABLE `general_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `invoice_order`
--
ALTER TABLE `invoice_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `invoice_order_item`
--
ALTER TABLE `invoice_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `invoice_user`
--
ALTER TABLE `invoice_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issuing`
--
ALTER TABLE `issuing`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `simcard`
--
ALTER TABLE `simcard`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
