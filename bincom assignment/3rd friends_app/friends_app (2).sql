-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 05:25 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `friends_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `friendships`
--

CREATE TABLE `friendships` (
  `id` int(11) NOT NULL,
  `user_id1` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friendships`
--

INSERT INTO `friendships` (`id`, `user_id1`, `user_id2`, `status`, `created_at`) VALUES
(1, 8, 8, 0, '2023-07-24 11:09:17'),
(4, 9, 8, 1, '2023-07-24 11:21:23'),
(9, 9, 8, 0, '2023-07-24 11:27:05'),
(10, 9, 8, 1, '2023-07-24 11:27:08'),
(11, 9, 8, 1, '2023-07-24 11:27:11'),
(12, 9, 1, 0, '2023-07-24 11:43:39'),
(14, 9, 1, 0, '2023-07-24 11:44:31'),
(17, 9, 1, 1, '2023-07-25 12:28:43'),
(23, 10, 1, 0, '2023-07-25 16:45:00'),
(24, 10, 6, 0, '2023-07-25 16:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1689847068),
('m230720_095610_add_password_hash_column', 1689847074);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`) VALUES
(1, 'versatile', 'ceze46321@gmail.com', ''),
(6, 'versatilef', 'ceze46321@gmail.com', ''),
(7, 'versatile154', 'ceze46321@gmail.com', '$2y$13$FbKiOhx2IAwTFbvJtVJ2gu.PoTV.FS3PcwbliU4U6iGdPLCyLbidS'),
(8, 'versatile1544', 'ceze46321@gmail.com', '$2y$13$ckp.y12AtFvGBoeWXgULtumxV/19LwujkLqIbuOYxKpRhxhskXrle'),
(9, 'eze celestine uwakwe', 'ceze4632r1@gmail.com', '$2y$13$.eBVg39JfebItotVySjltuo6aateRloNPCsY3T60miEOpk2SH.j8O'),
(10, 'bincon2', 'ceze4632r1@gmail.com', '$2y$13$U6JsBBkD.ll.EHHVurj0V.1xCONt9XCoMII.jCpg9g.x0CLXHoqRu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friendships`
--
ALTER TABLE `friendships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id1` (`user_id1`),
  ADD KEY `user_id2` (`user_id2`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friendships`
--
ALTER TABLE `friendships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friendships`
--
ALTER TABLE `friendships`
  ADD CONSTRAINT `friendships_ibfk_1` FOREIGN KEY (`user_id1`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `friendships_ibfk_2` FOREIGN KEY (`user_id2`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
