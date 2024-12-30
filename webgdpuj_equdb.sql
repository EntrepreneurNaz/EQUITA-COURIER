-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2022 at 05:34 PM
-- Server version: 10.3.36-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webgdpuj_equdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tracking_admin`
--

CREATE TABLE `tracking_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracking_admin`
--

INSERT INTO `tracking_admin` (`id`, `email`, `password`) VALUES
(1, 'admin@mail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tracking_details`
--

CREATE TABLE `tracking_details` (
  `id` int(11) NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `cubic` varchar(50) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `parcel_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `delivery_required_by` varchar(255) NOT NULL,
  `estimated_delivery` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracking_details`
--

INSERT INTO `tracking_details` (`id`, `tracking_number`, `origin`, `destination`, `weight`, `cubic`, `sender_name`, `receiver_name`, `receiver_number`, `email`, `parcel_name`, `status`, `size`, `message`, `delivery_required_by`, `estimated_delivery`, `image`) VALUES
(4, 'E4WdyHJi3m', 'Abuja', 'Nigeria', '45', '55', 'Ade', 'Ben', '9909877777', 'ayou@gmail.com', 'Biro and paper', 'Pending', '55', 'Please deliver as at when due', '2022-12-12 11:11', '2022-12-12 01:10', ''),
(7, '1234567890', 'lagos', 'china', '45', '324', 'Bright', 'david', '2311513455412', 'brytedree@gmail.com', 'bag', 'Pending', '34', 'big big bag', '2022-08-30 02:35', '2022-08-03 06:45', 'mcLsN7IEms.png'),
(8, 'Rpf22kWk07', 'lagos', 'china', '45', '324', 'Bright', 'david', '2311513455412', 'brytedree@gmail.com', 'bag', 'Pending', '34', 'h', '2022-08-29 05:32', '2022-08-23 15:42', 'Rpf22kWk07.png');

-- --------------------------------------------------------

--
-- Table structure for table `tracking_update`
--

CREATE TABLE `tracking_update` (
  `id` int(11) NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracking_update`
--

INSERT INTO `tracking_update` (`id`, `tracking_number`, `message`, `status`, `created_at`) VALUES
(6, 'E4WdyHJi3m', 'Please deliver as at when due', 'Pending', '2022-12-12 00:12:00'),
(7, '1234567890', 'Your shipment has been picked up by the receiver ', 'Picked up', '2022-07-12 03:57:00'),
(8, '1234567890', 'fgdggdgddg', 'Pending', '2022-07-13 16:09:00'),
(9, '1234567890', 'sdsddds', 'In Transit', '2022-07-13 16:14:00'),
(10, 'CoSgcSQ9yh', '', 'Picked up', '0000-00-00 00:00:00'),
(11, 'mcLsN7IEms', 'big big bag', 'Pending', '2022-08-18 00:33:00'),
(12, 'Rpf22kWk07', 'h', 'Pending', '2022-08-25 01:45:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tracking_admin`
--
ALTER TABLE `tracking_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking_details`
--
ALTER TABLE `tracking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking_update`
--
ALTER TABLE `tracking_update`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tracking_admin`
--
ALTER TABLE `tracking_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tracking_details`
--
ALTER TABLE `tracking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tracking_update`
--
ALTER TABLE `tracking_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
