-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2026 at 08:09 AM
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
-- Database: `datamymarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproducts`
--

CREATE TABLE `addproducts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `owner_uid` varchar(128) NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `category` varchar(150) NOT NULL,
  `price` int(50) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(50) NOT NULL,
  `condition` varchar(150) NOT NULL,
  `contact` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(150) NOT NULL,
  `student-id` varchar(50) NOT NULL,
  `phone` text NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `student-id`, `phone`, `faculty`, `year`) VALUES
('folk zaza', '016940664051-9', '0982710421', 'วิทยาศาสตร์และเทคโนโลยี', ''),
('folk zaza', '016940664051-9', '0982710421', 'วิทยาศาสตร์และเทคโนโลยี', 'ปี 3 (เทียบโอน)'),
('folk zaza', '016940664051-9', '0982710421', 'วิทยาศาสตร์และเทคโนโลยี', 'ปี 3 (เทียบโอน)'),
('folk zazarr', '016940664051-9', '0982710421', 'วิทยาศาสตร์และเทคโนโลยี', 'ปี 3 (เทียบโอน)'),
('folk zazarr', '016940664051-9', '0982710421', 'วิทยาศาสตร์และเทคโนโลยี', 'ปี 3 (เทียบโอน)'),
('folk zazarr', '016940664051-9', '0982710421', 'วิทยาศาสตร์และเทคโนโลยี', 'ปี 3 (เทียบโอน)'),
('folk zazarr2', '016940664051-9', '0982710421', 'วิทยาศาสตร์และเทคโนโลยี', 'ปี 3 (เทียบโอน)'),
('folk zaza', '016940664051-9', '0982710421', 'วิทยาศาสตร์และเทคโนโลยี', 'ปี 3 (เทียบโอน)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addproducts`
--
ALTER TABLE `addproducts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_addproducts_owner_uid` (`owner_uid`),
  ADD KEY `idx_addproducts_owner_email` (`owner_email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
