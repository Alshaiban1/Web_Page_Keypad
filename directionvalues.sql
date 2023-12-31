-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2023 at 06:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `directiondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `directionvalues`
--

CREATE TABLE `directionvalues` (
  `data_id` int(100) NOT NULL,
  `value` char(8) NOT NULL,
  `input_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directionvalues`
--

INSERT INTO `directionvalues` (`data_id`, `value`, `input_time`) VALUES
(1, 'forward', '2023-08-24 15:11:44'),
(2, 'forward', '2023-08-24 15:35:04'),
(3, 'back', '2023-08-24 16:32:39'),
(4, 'back', '2023-08-24 16:32:44'),
(5, 'left', '2023-08-24 16:33:16'),
(6, 'stop', '2023-08-24 16:45:10'),
(7, 'left', '2023-08-24 16:45:11'),
(8, 'forward', '2023-08-24 16:45:12'),
(9, 'left', '2023-08-24 16:45:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directionvalues`
--
ALTER TABLE `directionvalues`
  ADD PRIMARY KEY (`data_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directionvalues`
--
ALTER TABLE `directionvalues`
  MODIFY `data_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
