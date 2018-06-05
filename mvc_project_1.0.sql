-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2018 at 04:25 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `book_category_id` int(11) NOT NULL,
  `book_category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_order`
--

CREATE TABLE `book_order` (
  `book_order_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `book_order_total` float NOT NULL,
  `book_order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_order_detail`
--

CREATE TABLE `book_order_detail` (
  `book_order_detail_id` int(11) NOT NULL,
  `book_order_id` int(11) NOT NULL,
  `book_product_id` int(11) NOT NULL,
  `book_order_detail_price` float NOT NULL,
  `book_order_detail_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_product`
--

CREATE TABLE `book_product` (
  `book_product_id` int(11) NOT NULL,
  `book_type_id` int(11) NOT NULL,
  `book_category_id` int(11) NOT NULL,
  `book_product_name` varchar(100) NOT NULL,
  `book_product_price` float NOT NULL,
  `book_product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_type`
--

CREATE TABLE `book_type` (
  `book_type_id` int(11) NOT NULL,
  `book_type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_age` int(11) NOT NULL,
  `cus_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_category_id`);

--
-- Indexes for table `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`book_order_id`);

--
-- Indexes for table `book_order_detail`
--
ALTER TABLE `book_order_detail`
  ADD PRIMARY KEY (`book_order_detail_id`);

--
-- Indexes for table `book_product`
--
ALTER TABLE `book_product`
  ADD PRIMARY KEY (`book_product_id`);

--
-- Indexes for table `book_type`
--
ALTER TABLE `book_type`
  ADD PRIMARY KEY (`book_type_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `book_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_order`
--
ALTER TABLE `book_order`
  MODIFY `book_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_order_detail`
--
ALTER TABLE `book_order_detail`
  MODIFY `book_order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_product`
--
ALTER TABLE `book_product`
  MODIFY `book_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_type`
--
ALTER TABLE `book_type`
  MODIFY `book_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
