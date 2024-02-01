-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 11:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shadow_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproduct_test_table`
--

CREATE TABLE `addproduct_test_table` (
  `uuid` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_status` tinyint(1) NOT NULL DEFAULT 0,
  `product_game` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `addproduct_test_table`
--

INSERT INTO `addproduct_test_table` (`uuid`, `product_id`, `product_name`, `product_status`, `product_game`) VALUES
('f330de44-ace6-4525-816f-81d473a74a3a', 'watering-can-6B052640-6C14-4B43-AA4A-35A383DA4886', 'บัวรดน้ำ', 0, 'Shadow Garden');

-- --------------------------------------------------------

--
-- Table structure for table `topup_test_table`
--

CREATE TABLE `topup_test_table` (
  `uuid` varchar(255) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `topup_test_table`
--

INSERT INTO `topup_test_table` (`uuid`, `amount`, `update`) VALUES
('1da14b96-975e-4d00-bfef-34d1e187dd23', 10, '2024-02-01 19:28:47'),
('8eea9208-232f-421a-80c8-3ab1ce1c9657', 10, '2024-02-01 19:34:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addproduct_test_table`
--
ALTER TABLE `addproduct_test_table`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `topup_test_table`
--
ALTER TABLE `topup_test_table`
  ADD PRIMARY KEY (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
