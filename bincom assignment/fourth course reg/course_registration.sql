-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 05:38 PM
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
-- Database: `course_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `availabe_courses`
--

CREATE TABLE `availabe_courses` (
  `id` int(244) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `lecturer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `available_courses`
--

CREATE TABLE `available_courses` (
  `id` int(244) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `course_code` varchar(244) NOT NULL,
  `course_id` int(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `available_courses`
--

INSERT INTO `available_courses` (`id`, `course_name`, `course_code`, `course_id`) VALUES
(13, 'Mathematics 101', 'MATH101', 2),
(14, 'English Literature', 'ENG-LIT', 0),
(15, 'Introduction to Programming', 'COMP101', 0),
(16, 'Biology Basics', 'BIO101', 0),
(17, 'History of Art', 'ART-HIS', 0),
(18, 'Chemistry Fundamentals', 'CHEM101', 0),
(19, 'Physics Essentials', 'PHYS101', 0),
(20, 'Computer Science Fundamentals', 'CS101', 0),
(21, 'Psychology 101', 'PSY101', 0),
(22, 'Economics Principles', 'ECON101', 0),
(23, 'Business Management', 'BUS101', 0),
(24, 'Statistics for Beginners', 'STAT101', 0),
(25, 'Marketing Fundamentals', 'MKTG101', 0),
(26, 'Anatomy and Physiology', 'ANATOMY101', 0),
(27, 'Environmental Science', 'ENVSCI101', 0),
(28, 'Ethics and Philosophy', 'ETHICS101', 0),
(29, 'Sociology Basics', 'SOCIO101', 0),
(30, 'Political Science', 'POLSCI101', 0),
(31, 'Digital Media Production', 'MEDIA101', 0),
(32, 'Foreign Language - Spanish', 'SPANISH101', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(200) NOT NULL,
  `student_name` varchar(244) NOT NULL,
  `course_name` varchar(244) NOT NULL,
  `course_code` int(244) NOT NULL,
  `user_id` int(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `student_name`, `course_name`, `course_code`, `user_id`) VALUES
(3, 'versatile', 'edu454', 234, 0);

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(244) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`) VALUES
(1, 'celestine', 'ceze46321@gmail.com', '$2y$13$GmLUDe5mK8.JJIb/dSBQ.uhVJUdEIK.Ddd/I42ZehhT1vXLh.hy5e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `availabe_courses`
--
ALTER TABLE `availabe_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available_courses`
--
ALTER TABLE `available_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `availabe_courses`
--
ALTER TABLE `availabe_courses`
  MODIFY `id` int(244) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `available_courses`
--
ALTER TABLE `available_courses`
  MODIFY `id` int(244) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(244) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
