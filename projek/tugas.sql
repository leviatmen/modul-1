-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 12:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(15) NOT NULL,
  `admin_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `id_apply` int(30) NOT NULL,
  `js_id` int(30) NOT NULL,
  `date_apply` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `approve`
--

CREATE TABLE `approve` (
  `id_approve` int(15) NOT NULL,
  `admin_id` int(15) NOT NULL,
  `date_approve` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `id_role` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `admin_id` int(30) NOT NULL,
  `js_id` int(30) NOT NULL,
  `jp_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobprovider`
--

CREATE TABLE `jobprovider` (
  `jp_id` int(15) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `company_address` varchar(30) NOT NULL,
  `company_contact_num` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `js_id` int(15) NOT NULL,
  `js_name` varchar(30) NOT NULL,
  `js_address` varchar(30) NOT NULL,
  `email` int(30) NOT NULL,
  `contact_num` varchar(30) NOT NULL,
  `gender` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id_request` int(30) NOT NULL,
  `jp_id` int(30) NOT NULL,
  `date_request` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(15) NOT NULL,
  `name_role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `vacancy_id` int(30) NOT NULL,
  `id_approve` int(30) NOT NULL,
  `id_apply` int(30) NOT NULL,
  `id_request` int(30) NOT NULL,
  `vacancy_tittle` varchar(30) NOT NULL,
  `vacancy_desc` int(30) NOT NULL,
  `num_of_jobs` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id_apply`),
  ADD KEY `js_id` (`js_id`);

--
-- Indexes for table `approve`
--
ALTER TABLE `approve`
  ADD PRIMARY KEY (`id_approve`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `js_id` (`js_id`),
  ADD KEY `jp_id` (`jp_id`);

--
-- Indexes for table `jobprovider`
--
ALTER TABLE `jobprovider`
  ADD PRIMARY KEY (`jp_id`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`js_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id_request`),
  ADD KEY `jp_id` (`jp_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`vacancy_id`),
  ADD KEY `id_approve` (`id_approve`),
  ADD KEY `id_apply` (`id_apply`),
  ADD KEY `id_request` (`id_request`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `apply_ibfk_1` FOREIGN KEY (`js_id`) REFERENCES `jobseeker` (`js_id`);

--
-- Constraints for table `approve`
--
ALTER TABLE `approve`
  ADD CONSTRAINT `approve_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`js_id`) REFERENCES `jobseeker` (`js_id`),
  ADD CONSTRAINT `customer_ibfk_4` FOREIGN KEY (`jp_id`) REFERENCES `jobprovider` (`jp_id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`jp_id`) REFERENCES `jobprovider` (`jp_id`);

--
-- Constraints for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD CONSTRAINT `vacancy_ibfk_1` FOREIGN KEY (`id_approve`) REFERENCES `approve` (`id_approve`),
  ADD CONSTRAINT `vacancy_ibfk_2` FOREIGN KEY (`id_apply`) REFERENCES `apply` (`id_apply`),
  ADD CONSTRAINT `vacancy_ibfk_3` FOREIGN KEY (`id_request`) REFERENCES `request` (`id_request`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
