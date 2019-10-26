-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2019 at 09:18 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportsworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '11-10-2019 09:47:58 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, ' Sports Shoes', 'Shoes', '2019-10-11 11:14:56', NULL),
(8, 'FITNESS', 'Gym', '2019-10-11 11:24:37', NULL),
(9, 'Indoor ', 'Indoor games', '2019-10-11 11:26:55', NULL),
(10, 'Outdoor', 'Outdoor games', '2019-10-11 11:27:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productimg`
--

CREATE TABLE `productimg` (
  `id` int(11) NOT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productimg`
--

INSERT INTO `productimg` (`id`, `productImage1`, `productImage2`, `productImage3`) VALUES
(65, 'r2.2.png', 'wl2.3.png', 'wl2.3.png'),
(66, 'g2.1.png', 's1.3.png', 'r2.1.png'),
(67, 'wl2.3.png', 'g2.3.png', 'g2.2.png'),
(68, 'b1.3.png', 'b1.2.png', 'b1.1.png');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(65, 7, 13, 'sdkkjdk', 'ddd', 210, 1402, 'sddd<br>', 25, 'In Stock', '2019-10-25 14:08:35', NULL),
(66, 7, 13, 'fjdfkjkdf', 'sfdjdj', 251, 1452, 'dfdsgfd<br>', 2541, 'In Stock', '2019-10-25 14:10:48', NULL),
(67, 8, 18, 'WEIGHT GAIN TOOLS', 'LI NING', 1999, 2500, 'Gym Equipments<br>', 50, 'In Stock', '2019-10-25 14:49:34', NULL),
(68, 10, 24, 'CORK BALL', 'SPARTAN', 499, 500, 'Cricket Ball<br>', 520, 'In Stock', '2019-10-25 14:51:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipbill`
--

CREATE TABLE `shipbill` (
  `id` int(11) NOT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipbill`
--

INSERT INTO `shipbill` (`id`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`) VALUES
(6, 'bfggggn', 'bhj', 'jbh', 585425, 'b b              h', '441', '414', 585426);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Studs', '2019-10-11 11:15:27', NULL),
(14, 7, 'Button Shoes', '2019-10-11 11:15:53', NULL),
(15, 7, 'Running shoes', '2019-10-11 11:17:19', NULL),
(16, 7, 'Hiking Shoes', '2019-10-11 11:19:46', NULL),
(17, 7, 'Court Shoes', '2019-10-11 11:20:20', NULL),
(18, 8, 'Weight-gain', '2019-10-11 11:25:14', '11-10-2019 04:55:38 PM'),
(19, 8, 'Weight-loss', '2019-10-11 11:25:26', NULL),
(20, 9, 'Chess', '2019-10-11 11:27:49', NULL),
(21, 9, 'Carrom', '2019-10-11 11:27:59', NULL),
(22, 9, 'ping-pong', '2019-10-11 11:28:14', NULL),
(23, 9, 'LUDO', '2019-10-12 07:09:03', NULL),
(24, 10, 'CRICKET', '2019-10-12 07:20:29', NULL),
(25, 10, 'FOOTBALL ', '2019-10-12 07:20:39', NULL),
(26, 10, 'BASKET BALL', '2019-10-12 07:20:50', NULL),
(27, 10, 'HOCKEY', '2019-10-12 07:21:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'nchethan14@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-11 03:11:03', '11-10-2019 08:42:22 AM', 1),
(25, 'nchethan14@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-11 14:54:20', '11-10-2019 08:24:31 PM', 1),
(26, 'nchethan14@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-11 15:01:53', '11-10-2019 08:32:43 PM', 1),
(27, 'nchethan14@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-11 15:03:07', '11-10-2019 09:04:50 PM', 1),
(28, 'nchethan14@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-11 15:37:23', '11-10-2019 11:51:58 PM', 1),
(29, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-12 10:15:08', NULL, 1),
(30, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-13 06:25:57', '13-10-2019 11:58:05 AM', 1),
(31, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-25 15:03:34', '25-10-2019 11:05:53 PM', 1),
(32, 'satish@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-25 17:41:17', '25-10-2019 11:18:32 PM', 1),
(33, 'abcd@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-25 17:49:39', NULL, 1),
(34, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 02:16:18', NULL, 1),
(35, 'abcd@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 02:24:55', '26-10-2019 08:51:46 AM', 1),
(36, 'abcd@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 03:21:55', '26-10-2019 09:40:26 AM', 1),
(37, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 04:10:37', '26-10-2019 10:12:04 AM', 1),
(38, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 04:42:28', '26-10-2019 10:21:50 AM', 1),
(39, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 04:52:08', '26-10-2019 10:42:54 AM', 1),
(40, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 05:13:08', '26-10-2019 10:50:30 AM', 1),
(41, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 05:20:37', '26-10-2019 11:23:26 AM', 1),
(42, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 05:53:44', '26-10-2019 11:27:08 AM', 1),
(43, 'nchethan14@gmail.com', 0x3132372e302e302e3100000000000000, '2019-10-26 06:18:17', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `regDate`, `updationDate`) VALUES
(4, 'Chethan', 'nchethan14@gmail.com', 8762293306, '25f9e794323b453885f5181f1b624d0b', '2019-10-11 03:10:47', NULL),
(5, 'Satish', 'satish@gmail.com', 7894561230, '25f9e794323b453885f5181f1b624d0b', '2019-10-25 17:39:29', NULL),
(6, 'abcd', 'abcd@gmail.com', 7894561230, '25f9e794323b453885f5181f1b624d0b', '2019-10-25 17:49:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimg`
--
ALTER TABLE `productimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipbill`
--
ALTER TABLE `shipbill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `productimg`
--
ALTER TABLE `productimg`
  ADD CONSTRAINT `productimg_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`id`);

--
-- Constraints for table `shipbill`
--
ALTER TABLE `shipbill`
  ADD CONSTRAINT `shipbill_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
