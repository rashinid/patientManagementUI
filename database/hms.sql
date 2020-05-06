-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 09:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `refunded` tinyint(1) DEFAULT NULL,
  `refunded_date` date DEFAULT NULL,
  `refund_amount` double DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `exp_year` int(11) DEFAULT NULL,
  `exp_month` int(11) DEFAULT NULL,
  `security_code` int(11) DEFAULT NULL,
  `card_holders_name` varchar(100) DEFAULT NULL,
  `online_payment_refarance` varchar(250) DEFAULT NULL,
  `paypal_payment_refarance` varchar(250) DEFAULT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payments`
--

INSERT INTO `tbl_payments` (`id`, `appointment_id`, `amount`, `payment_date`, `refunded`, `refunded_date`, `refund_amount`, `card_number`, `exp_year`, `exp_month`, `security_code`, `card_holders_name`, `online_payment_refarance`, `paypal_payment_refarance`, `type`) VALUES
(46, 51, 2550, '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PayPal'),
(6, 5, 100, '2020-04-12', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OnlineBanking'),
(40, 19, 1200, '2020-04-21', NULL, NULL, NULL, '345112525', 2022, 12, 984, 'Shire', NULL, NULL, 'CreditCard'),
(8, 9, 1200, '2020-04-15', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PayPal'),
(57, 32, 1560, '2020-04-22', 0, NULL, 0, '123548525', 2022, 12, 184, 'test', NULL, NULL, 'CreditCard'),
(56, 32, 1560, '2020-04-22', 0, NULL, 0, '123548525', 2022, 12, 184, 'test', NULL, NULL, 'CreditCard'),
(55, 31, 1760, '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OnlineBanking'),
(54, 30, 3550, '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PayPal'),
(37, 11, 1550, '2020-04-21', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PayPal'),
(38, 50, 2550, '2020-04-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PayPal'),
(39, 14, 2560, '2020-04-21', 1, '2020-04-21', 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OnlineBanking'),
(53, 22, 1560, '2020-04-22', 0, NULL, 0, '123548525', 2022, 12, 184, 'test', NULL, NULL, 'CreditCard'),
(52, 21, 1760, '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OnlineBanking'),
(47, 60, 3550, '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PayPal'),
(45, 52, 2500, '2020-04-22', NULL, NULL, NULL, '345112525', 2022, 12, 984, 'Johnh', NULL, NULL, 'CreditCard'),
(51, 20, 3550, '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PayPal'),
(50, 15, 1560, '2020-04-22', NULL, NULL, NULL, '123548525', 2022, 12, 184, 'test', NULL, NULL, 'CreditCard'),
(49, 65, 1760, '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OnlineBanking'),
(48, 61, 1760, '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OnlineBanking'),
(42, 19, 1500, '2020-04-22', NULL, NULL, NULL, '345112525', 2022, 12, 984, 'Teh', NULL, NULL, 'CreditCard'),
(44, 55, 2760, '2020-04-22', 1, '2020-04-22', 1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OnlineBanking'),
(43, 51, 2550, '2020-04-22', 1, '2020-04-22', 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PayPal'),
(41, 15, 2560, '2020-04-22', 1, '2020-04-22', 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OnlineBanking'),
(61, 32, 1560, '2020-05-02', NULL, NULL, NULL, '123548525', 2022, 12, 184, 'test', NULL, NULL, 'CreditCard'),
(62, 32, 1560, '2020-05-02', NULL, NULL, NULL, '123548525', 2022, 12, 184, 'test', NULL, NULL, 'CreditCard'),
(63, 32, 1560, '2020-05-02', NULL, NULL, NULL, '123548525', 2022, 12, 184, 'test', NULL, NULL, 'CreditCard'),
(64, 32, 1560, '2020-05-02', NULL, NULL, NULL, '123548525', 2022, 12, 184, 'test', NULL, NULL, 'CreditCard'),
(65, 32, 150, '2020-05-02', NULL, NULL, NULL, '123548525', 2022, 12, 184, 'test', NULL, NULL, 'CreditCard');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roll` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `roll`) VALUES
(1, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
