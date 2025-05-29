-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2025 at 04:29 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectuas`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` bigint NOT NULL,
  `brand_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` bigint NOT NULL,
  `kategori_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` bigint DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `quantity` int DEFAULT NULL,
  `price` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` bigint NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `payment_amount` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` bigint NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `description` text,
  `price` bigint DEFAULT NULL,
  `stok_quantity` int DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text,
  `review_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `address`, `phone_number`) VALUES
(8, 'adel', '$2y$10$7EVLwqRJigpdnmP0XgXNl.jBc0mEZV0KGnupq1FxJZDhz50FM0MjO', 'adel@gmail.com', 'jogja', '123123'),
(9, 'adel2', '$2y$10$11Q6nN7LnKSI/3eRHJFG2e8chkMLeJc9.nEGkogOHmlMjlu/8VQXi', 'adel2@gmail.com', 'jogja', '0909090909'),
(39, 'adfs', '$2y$10$4iih7eAH5zadPZQx4.HA4.VfT6W/WgpTLjUGZYeynFeR7EEfcf28y', 'sfaf@kasdf.com', NULL, NULL),
(40, 'jjjjj', '$2y$10$yK/NytOogPqJuHsI.jBC6eEXOkfFcJH3YPs/LatUZEEuCtkP45re2', 'jjj@gmali.ck', NULL, NULL),
(41, 'jk', '$2y$10$cPdmPnwivO98dg7SJ8fu8ODioZxNXv88h7egcRpJ/uY9DHV6kO4iC', 'kljhsdf@kafd.co', NULL, NULL),
(42, 'jk', '$2y$10$8Uo7RWrhEwJJmbnqyBHlZeAkKWsEtJ7SP7ZSid2ap8/6wfsYa.2cy', 'kljhsdf@kafd.co', NULL, NULL),
(43, 'asdfa;lk', '$2y$10$4WOtQeWK4.Ssjg/c1XzczeM7aTwFuxOdbpJCXL2sd9qTMSKUyl4Hy', 'qerfj@faskd.co', NULL, NULL),
(44, 'asdf', '$2y$10$9Q95lg99Vg/.1KoxIuJ5duR3K2YZtxYgqPkoN4yyOQBUVN5aTRuGO', 'asdf@kldfkl', NULL, NULL),
(45, 'asdf', '$2y$10$SIStKPTFpklj/dVIwccZ...VVdGcJjtxv0Px6NEyspvNtf2rEt8fu', 'asdf@kldfkl', NULL, NULL),
(46, 'dd', '$2y$10$QPgj6yfDsuLKigAu1EzHiOfDKu/E6NcRUsZZfwNUQ7h3kS8WfTd3a', 'dd@gmail.com', NULL, NULL),
(47, 'dd', '$2y$10$gvEWhY/I1E8W3e.SIFguHe.PCjP.9q/6Y8Uen5w7Z7tsI80gqReFa', 'dd@gmail.com', NULL, NULL),
(48, 'zcknv', '$2y$10$/YRVjBw98g6eyxFe9iXTYew7MKYSfyXoGXr9x.O1YSecHeD7OZ.A2', 'lkjznvc@kjdf.ckm', NULL, NULL),
(49, 'zcknv', '$2y$10$79lrH8wmbAKKKSMzQ2Lip.o3J0.jQ96thHk1lytyamU333yRFk8Qm', 'lkjznvc@kjdf.ckm', NULL, NULL),
(50, 'zcknv', '$2y$10$h2Q4Pa7fR7d1Ubv//lBzx.ysGZwpk4KBCruv/SyE6JTfxM4UGFpjC', 'lkjznvc@kjdf.ckm', NULL, NULL),
(51, 'zcknv', '$2y$10$mRnP2KixX09Ws3yo6gUu0uiGWfIYi2jL9yeHrqWHHn3./.w.bEEzW', 'lkjznvc@kjdf.ckm', NULL, NULL),
(52, 'zcknv', '$2y$10$EDHLxVyvbv2PFB60C99gdu91qE8w6iCK47yR6S/n86ScelNisCti6', 'lkjznvc@kjdf.ckm', NULL, NULL),
(53, 'zcknv', '$2y$10$yn1CkPZeK.EBC/VLBj6LCOszEU.vljtjl05gYAwp1gfNc.EF4nFy.', 'lkjznvc@kjdf.ckm', NULL, NULL),
(54, 'zcknv', '$2y$10$kH.4s2132BZx59CbIEjF5uMKRrsviYM.vU51z1AHGTaU/eUNEjSpq', 'lkjznvc@kjdf.ckm', NULL, NULL),
(55, 'zcknv', '$2y$10$4FIDTOGmDfjEmNlS.97sdu7g2SXzMApBO0KIP0YpfWOPzHKevarxa', 'lkjznvc@kjdf.ckm', NULL, NULL),
(56, 'zcknv', '$2y$10$kX2Mj/AZ6OjU8RiatDU2EeNOYzB9x/OAbj765U4LkS2NhiB4kaKce', 'lkjznvc@kjdf.ckm', NULL, NULL),
(57, 'zcknv', '$2y$10$d..c9Pl81L9yOo5NjBT7nudc4JKLd2lgFpGqe/BSGi/8ZmIiRMDni', 'lkjznvc@kjdf.ckm', NULL, NULL),
(58, 'zcknv', '$2y$10$xzmbgFTMux3.c1alTky8We3ebopSVroyNVxj1qcbONug3UR8U2Hva', 'lkjznvc@kjdf.ckm', NULL, NULL),
(59, 'zcknv', '$2y$10$DJKZuh3cX8g8wHfaHkhpg.q4wjnlK8fSotIwqlq/VINDuyQg3a63u', 'lkjznvc@kjdf.ckm', NULL, NULL),
(60, 'zcknv', '$2y$10$vI2h0QD4tjamq1K6Uk2vyOOJ55BXLmmKaaaVbRjxdgs5Se/KXlqjW', 'lkjznvc@kjdf.ckm', NULL, NULL),
(61, 'zcknv', '$2y$10$Rm.N9TR1n5J/Y5eic62bRe0wBmOrtUUoY3DEBXgnrSsw92Lrakx2O', 'lkjznvc@kjdf.ckm', NULL, NULL),
(62, 'zcknv', '$2y$10$YubZSymRJkPVE8.aZNRmo.6pj82q69wYRuE6gm0/M0gVKunjM0WCe', 'lkjznvc@kjdf.ckm', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `review_ibfk_1` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `kategori` (`kategori_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
