-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 07:48 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(255) NOT NULL,
  `Product_Description` varchar(100) DEFAULT NULL,
  `Product_Quantity` float(10,2) DEFAULT NULL,
  `Price` float(10,2) DEFAULT NULL,
  `Discount_Quantity` float(10,2) DEFAULT NULL,
  `discount_Percent` float(5,2) DEFAULT NULL,
  `Perishable_YN` varchar(1) DEFAULT NULL,
  `Purchase_Date` datetime DEFAULT NULL,
  `Perish_Discount_Per_Day` float(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `Product_Description`, `Product_Quantity`, `Price`, `Discount_Quantity`, `discount_Percent`, `Perishable_YN`, `Purchase_Date`, `Perish_Discount_Per_Day`) VALUES
('PES001', 'Apple', 35.00, 225.00, 20.00, 10.00, 'Y', '2023-04-15 00:00:00', 5.00),
('PES002', 'Orange', 54.00, 105.00, 50.00, 10.00, 'Y', '2023-04-15 00:00:00', 5.00),
('PES003', 'Mango', 15.00, 165.00, 95.00, 10.00, 'Y', '2023-04-16 00:00:00', 5.00),
('PES004', 'Grapes', 49.00, 85.00, 40.00, 10.00, 'Y', '0000-00-00 00:00:00', 5.00),
('PES005', 'Arial', 14.00, 300.00, 13.00, 10.00, 'Y', '0000-00-00 00:00:00', 5.00),
('PES006', 'Grinder', 15.00, 300.00, 13.00, 10.00, 'N', '0000-00-00 00:00:00', 5.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
