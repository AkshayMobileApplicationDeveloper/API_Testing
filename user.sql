-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2024 at 05:57 PM
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
-- Database: `testingapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES

(1, 'Ajay', 'Ajay@gmail.com', 'Ajay@123'),
(2, 'Mohit', 'Mohit@gmail.com', 'Mohit@123'),
(3, 'Shandhya', 'Shandhya@gmail.com', 'Shandhya@123'),
(4, 'sita', 'sita@gmail.com', 'sita@123'),
(5, 'geeta', 'geeta@gmail.com', 'geeta@123'),
(6, 'Ranjan', 'Ranjan@gmail.com', 'Ranjan@123'),
(7, 'Anand', 'Anand@gmail.com', 'Anand@123'),
(8, 'Chandan', 'Chandan@gmail.com', 'Chandan@123'),
(9, 'Pinki', 'Pinki@gmail.com', 'Pinki@123'),
(10, 'ShahinaPraveen', 'ShahinaPraveen@gmail.com', 'ShahinaPraveen'),
(11, 'AkshayKumarPrajapati', 'AkshaywishMAster@gmail.com', 'WishMAster'),
(12, 'Pooja', 'Email@yahoo.com', 'Password'),
(13, 'Kiran', 'Kiran@yahoo.com', 'Kiran@123'),
(14, 'Ajeet', 'Ajeet@yahoo.com', 'Ajeet@123'),
(16, 'Sonu', 'Sonu@yahoo.com', 'Sonu@123'),
(17, 'Amit', 'Amit@yahoo.com', 'Amit@123'),
(18, 'Aman', 'Aman@yahoo.com', 'Aman@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
