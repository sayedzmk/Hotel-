-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 09:26 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `activeadmin`
--

CREATE TABLE `activeadmin` (
  `id` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(225) NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `group` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `salary` int(11) NOT NULL,
  `img` varchar(225) DEFAULT NULL,
  `createAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstName`, `lastName`, `email`, `password`, `phone1`, `phone2`, `group`, `status`, `salary`, `img`, `createAt`) VALUES
(1, 'add', 'ioj', 'mohamed@mail.com', '123', 'km', 'km', 'klm', 'lm', 50, NULL, '2022-05-27 11:10:34'),
(2, 'sayed', 'mohamed', 'sayed@gmail.com', '1233', '01100433760', '01018326408', 'null', 'active', 55, NULL, '2022-05-27 11:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `createAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `createAt`) VALUES
(1, 'Double', '2022-06-01 18:21:35'),
(2, 'King', '2022-06-01 18:21:44'),
(3, 'Family', '2022-06-01 18:21:29'),
(4, 'Suite', '2022-06-01 18:21:48'),
(5, 'Single', '2022-06-01 18:21:54'),
(6, 'Triple', '2022-06-01 18:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `custmer`
--

CREATE TABLE `custmer` (
  `id` int(11) NOT NULL,
  `firstName` varchar(55) NOT NULL,
  `lastName` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(20) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(55) NOT NULL,
  `cresteAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custmer`
--

INSERT INTO `custmer` (`id`, `firstName`, `lastName`, `email`, `password`, `img`, `phone`, `address`, `cresteAt`) VALUES
(1, 'youssef', 'shaaban', 'youssefshaaban.8000@gmail.com', '123', '1654029329IMG_20201001_114752_005.jpg', '01123402232', 'elnozha', '2022-05-31 20:35:29'),
(2, 'youssef', 'shaaban', 'youssef.8000@gmail.com', '111', '1654038860', '01123402232', 'elnozha', '2022-05-31 23:14:20'),
(3, 'sayed', 'moahemd', 'sayed@gmail.com', '123', '1654096221sayed.jpg', '01100433760', 'Hawmdia', '2022-06-01 15:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `custmer_ad`
--

CREATE TABLE `custmer_ad` (
  `id` int(11) NOT NULL,
  `firstName` varchar(55) NOT NULL,
  `lastName` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Manager'),
(2, 'Front Desk Receptionist'),
(3, 'Housekeeping Manager	'),
(4, 'Cheif'),
(5, 'Waiter'),
(6, 'Hotel Sales Manager	'),
(7, 'Hotel Maintenance Engineer'),
(8, 'Room Attendant'),
(9, 'Concierge');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(55) NOT NULL,
  `lastName` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(20) NOT NULL,
  `departmentid` int(11) NOT NULL,
  `shift` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `departmentid`, `shift`, `createdAt`) VALUES
(5, 'sayed', 'moahemd', 'sayed@gmail.com', '123', 7, 3, '2022-05-28 15:53:02'),
(6, 'youssef', 'shaaban', 'youssef.8000@gmail.com', '12345', 6, 1, '2022-06-01 17:41:21'),
(7, 'Micheal', 'Amir', 'Micheal@gmail', '1234', 2, 3, '2022-06-01 17:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `price` int(55) NOT NULL,
  `orderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `custmerId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `days` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `createAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `custmerId`, `categoryId`, `check_in`, `check_out`, `days`, `price`, `createAt`) VALUES
(8, 1, 3, '2022-06-02', '2022-06-07', 5, 2500, '2022-05-31 23:18:18'),
(9, 3, 4, '2022-06-01', '2022-06-07', 6, 4200, '2022-06-01 18:29:05'),
(10, 3, 1, '2022-06-10', '2022-06-15', 5, 2500, '2022-06-01 18:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `permaion`
--

CREATE TABLE `permaion` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permation_role`
--

CREATE TABLE `permation_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `adminId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `adminId`) VALUES
(10, 'sayed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `price` int(50) NOT NULL,
  `descriptions` varchar(225) DEFAULT NULL,
  `img` varchar(225) DEFAULT NULL,
  `adminId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'active',
  `createAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `price`, `descriptions`, `img`, `adminId`, `categoryId`, `status`, `createAt`) VALUES
(1, 'K5-102', 300, 'Pool view, WiFi, HDTV, media panel, laptop safe, minibar  Admire views of the pool from this stylish guest room with one king bed. Unwind and watch the HDTV and stay connected with the media panel allowing you to connect your', '16540294611.png', 0, 2, 'active', '2022-05-31 20:37:41'),
(2, 'F-60', 500, '144 sq. m., two minibars, two bathrooms, two TVs, air conditioning, mini bar, tea & coffee facilities. This 144 sq. m. Queen Family Room features two bathrooms and walk in showers both fully stocked with luxurious amenities. ', '16540355964.png', 2, 3, 'active', '2022-06-01 18:22:28'),
(3, 'D1-106', 500, 'Pool view, terrace, WiFi, HDTV, media panel, laptop safe, minibar  Located on the ground floor opposite the pool, enjoy the sunshine from the private terrace of this stylish cabana room with one king bed.  Unwind and watch th', '1654099973TWIN GUEST ROOM.jpg', 2, 1, 'active', '2022-06-01 16:12:53'),
(4, 'S-201', 200, 'Elegant dÃ©cor, air conditioning, tea & coffee facilities, 37-inch TV, mini bar. Stay in this contemporary guest room featuring a queen-sized bed. This room comfortably sleeps two adults and two children. Unwind in front of t', '16541078191.jpg', 2, 5, 'active', '2022-06-01 18:23:39'),
(5, 'T-302', 500, 'Pool view, terrace, WiFi, HDTV, media panel, laptop safe, minibar  Located on the ground floor opposite the pool, enjoy the sunshine from the private terrace of this stylish cabana room with one king bed.  Unwind and watch th', '16541078641.jpg', 2, 6, 'active', '2022-06-01 18:24:24'),
(6, 'Su-401', 700, 'Elegant dÃ©cor, air conditioning, tea & coffee facilities, 37-inch TV, mini bar. Stay in this contemporary guest room featuring a queen-sized bed. This room comfortably sleeps two adults and two children. Unwind in front of t', '16541079052.jpg', 2, 4, 'active', '2022-06-01 18:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `name`) VALUES
(1, 'from 4:00Am to 10:00Am'),
(2, 'from 10:00Am to 4:00Pm'),
(3, 'from 4:00Pm to 10:00Pm'),
(4, 'from 10:00Pm to 4:00Am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activeadmin`
--
ALTER TABLE `activeadmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId` (`adminId`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custmer`
--
ALTER TABLE `custmer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custmer_ad`
--
ALTER TABLE `custmer_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departmentid` (`departmentid`),
  ADD KEY `shift` (`shift`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custmerId` (`custmerId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `permaion`
--
ALTER TABLE `permaion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId` (`adminId`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId` (`adminId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activeadmin`
--
ALTER TABLE `activeadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custmer`
--
ALTER TABLE `custmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custmer_ad`
--
ALTER TABLE `custmer_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permaion`
--
ALTER TABLE `permaion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activeadmin`
--
ALTER TABLE `activeadmin`
  ADD CONSTRAINT `activeadmin_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`departmentid`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`shift`) REFERENCES `shift` (`id`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custmerId`) REFERENCES `custmer` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;