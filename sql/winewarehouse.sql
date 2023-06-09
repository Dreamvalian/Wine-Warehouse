-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 06:41 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winewarehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `wine_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `wine_id`, `location_id`, `quantity`, `created_at`, `updated_at`) VALUES
(15, 1, 1, 20, '2023-03-27 22:01:04', '2023-03-27 22:01:04'),
(16, 1, 2, 10, '2023-03-27 22:01:04', '2023-03-27 22:01:04'),
(17, 2, 2, 15, '2023-03-27 22:01:04', '2023-03-27 22:01:04'),
(18, 2, 3, 20, '2023-03-27 22:01:04', '2023-03-27 22:01:04'),
(19, 3, 1, 30, '2023-03-27 22:01:04', '2023-03-27 22:01:04'),
(20, 3, 2, 25, '2023-03-27 22:01:04', '2023-03-27 22:01:04'),
(21, 3, 3, 20, '2023-03-27 22:01:04', '2023-03-27 22:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'A1', 'First shelf on the left side of the warehouse', '2023-03-27 22:00:39', '2023-03-27 22:00:39'),
(2, 'B2', 'Third shelf on the right side of the warehouse', '2023-03-27 22:00:39', '2023-03-27 22:00:39'),
(3, 'C3', 'Second shelf on the back of the warehouse', '2023-03-27 22:00:39', '2023-03-27 22:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `full_name`, `email`, `role`) VALUES
(1, 'hanif12', '123', 'Hanif Nughraha', 'hanif@gmail.com', 'admin'),
(2, 'Alfius22', '123', 'Alfius Stevanus Ginting', 'alfius@gmail.com', 'employee'),
(3, 'ramdhan.mahfuzh', '123', 'pius cangkrung', 'user2@gmail.com', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `wines`
--

CREATE TABLE `wines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wines`
--

INSERT INTO `wines` (`id`, `name`, `type`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Chardonnay', 'white', 'A classic white wine with buttery flavors', 50, 20.99, '2023-03-27 21:59:50', '2023-03-27 21:59:50'),
(2, 'Pinot Noir', 'red', 'A light and fruity red wine with notes of cherry', 75, 24.99, '2023-03-27 21:59:50', '2023-03-27 21:59:50'),
(3, 'Cabernet Sauvignon', 'red', 'A full-bodied red wine with bold flavors of blackberry and spice', 100, 29.99, '2023-03-27 21:59:50', '2023-03-27 21:59:50'),
(4, 'Chardonnay', 'White', 'A full-bodied wine with notes of tropical fruit and vanilla.', 50, 25.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(5, 'Pinot Noir', 'Red', 'A light-bodied wine with notes of red fruit and spice.', 40, 29.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(6, 'Sauvignon Blanc', 'White', 'A crisp wine with notes of citrus and grass.', 35, 19.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(7, 'Cabernet Sauvignon', 'Red', 'A full-bodied wine with notes of black fruit and oak.', 45, 34.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(8, 'Merlot', 'Red', 'A medium-bodied wine with notes of black cherry and chocolate.', 30, 27.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(9, 'Zinfandel', 'Red', 'A robust wine with notes of blackberry and pepper.', 25, 31.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(10, 'Pinot Grigio', 'White', 'A light-bodied wine with notes of lemon and apple.', 55, 23.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(11, 'Syrah', 'Red', 'A bold wine with notes of blackberry and smoke.', 20, 39.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(12, 'Riesling', 'White', 'A sweet wine with notes of peach and honey.', 60, 21.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(13, 'Malbec', 'Red', 'A medium-bodied wine with notes of black fruit and tobacco.', 40, 32.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(14, 'Grenache', 'Red', 'A medium-bodied wine with notes of red fruit and spice.', 35, 28.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(15, 'Chianti', 'Red', 'A dry wine with notes of cherry and leather.', 30, 26.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(16, 'Sangria', 'Red', 'A fruity wine with notes of citrus and spice.', 15, 17.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(17, 'Tempranillo', 'Red', 'A medium-bodied wine with notes of black fruit and vanilla.', 25, 30.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22'),
(18, 'Chenin Blanc', 'White', 'A sweet wine with notes of honey and pear.', 50, 24.99, '2023-03-31 23:29:22', '2023-03-31 23:29:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wine_id` (`wine_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wines`
--
ALTER TABLE `wines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wines`
--
ALTER TABLE `wines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`wine_id`) REFERENCES `wines` (`id`),
  ADD CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
