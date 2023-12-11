-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2023 at 05:53 PM
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
-- Database: `YouCode`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loginn`
--

CREATE TABLE `tbl_loginn` (
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_loginn`
--

INSERT INTO `tbl_loginn` (`uid`, `uname`, `upass`, `utype`) VALUES
(5, 'admin@gmail.com', 'admin', 'admin'),
(6, 'athira@gmail.com', 'athi123', 'User'),
(7, 'niya@gmail.com', 'niya123', 'User'),
(8, 'niya@gmail.com', '12345', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qr`
--

CREATE TABLE `tbl_qr` (
  `qid` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `qr_image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_qr`
--

INSERT INTO `tbl_qr` (`qid`, `url`, `qr_image`) VALUES
(1, 'https://youtu.be/8xPWPGxL7Xk?si=yKj9Hr5SokpNk4MJ', 0x89504e470d0a1a0a0000000d4948445200000172000001720103000000d2eac34a00000006504c5445ffffff00000055c2d37e000000097048597300000ec400000ec401952b0e1b000001a749444154789ced994b6ec42010445bf201381257e7483e802562e80f6d4f46a36c929455b56018f360034d7f10a1288aa228ea6fd44d87f456cea6ef5bd75e2b3ed6c8e3f2fae704a4ceb1e233479311f2987c716a1c0aa9bb7d9b6bd84121ff14de1a9d44fe517c9371959f8d9affc7f3401e829f3f0a0c2bd76fe6b433421e9237652ffd93f88dfcffe6b39c3a9df6d6df30e4b1f8b9e1091535f5f17597efee73f2807c4d597278e962a64e1e98d7497177fb1a875646960f278fcafb056e27a3770bba6b4c6fe471f9ead7f6aa779d3d3f0fa3771579285e6fec59a5d652b5f8f4c8b15ef32ff230fc4b95dabf59d04d1e9bd7da47bc322507ad0bc92db3228fc5cb4ca056da943cf72e1e9491c7e5b36d1fe2a1d8eadde36df250bc3be8a1dd7b1a94f91ae481799f644f4d1e9e892c1f4e1e99af97312d6a6a3ea5228fcd873ca99208c5c2fcc9c3f269db2d143bdcfc4b1435c9e3f2bad9914ad5eb5384deece481f939a66e79f39311f779bbbf479047e57def37a3eaa5c649fe11fc0ccf52be2c51e3240fcacf9f62067e19b0f320421e9737e5dc788562e4d1798aa2288aa27e535f09c1ae2deb41b6ff0000000049454e44ae426082),
(2, 'https://youtu.be/8xPWPGxL7Xk?si=yKj9Hr5SokpNk4MJ', ''),
(3, 'https://youtu.be/8xPWPGxL7Xk?si=yKj9Hr5SokpNk4MJ', ''),
(4, 'https://youtu.be/qstmlwvjvv4?si=rUAWtgQlB-2SF74K', ''),
(5, 'https://youtu.be/8xPWPGxL7Xk?si=yKj9Hr5SokpNk4MJ', ''),
(6, 'https://youtu.be/8xPWPGxL7Xk?si=yKj9Hr5SokpNk4MJ', ''),
(7, 'https://youtu.be/lwv_0SEJ4NQ?si=dvEiM4_Ra1w6fYL0', ''),
(8, 'https://youtu.be/lwv_0SEJ4NQ?si=dvEiM4_Ra1w6fYL0', ''),
(9, 'https://youtu.be/fozVqshFjUs?si=SXYBI0V7odfvUGiZ', ''),
(10, 'https://youtu.be/qstmlwvjvv4?si=rUAWtgQlB-2SF74K', ''),
(11, 'https://youtu.be/8xPWPGxL7Xk?si=yKj9Hr5SokpNk4MJ', ''),
(12, 'https://youtu.be/lwv_0SEJ4NQ?si=dvEiM4_Ra1w6fYL0', ''),
(13, 'https://youtu.be/lwv_0SEJ4NQ?si=dvEiM4_Ra1w6fYL0', ''),
(14, 'https://youtu.be/qstmlwvjvv4?si=rUAWtgQlB-2SF74K', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `rid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cno` varchar(15) NOT NULL,
  `ano` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`rid`, `name`, `email`, `cno`, `ano`, `address`) VALUES
(5, 'admin', 'admin@gmail.com', '1234567890', '456789254581', 'adminoffice'),
(6, 'athira', 'athira@gmail.com', '9995572901', '456789254581', 'Pathanamthitta'),
(8, 'niya', 'niya@gmail.com', '9645671251', '345634561234', 'mumbai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_loginn`
--
ALTER TABLE `tbl_loginn`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tbl_qr`
--
ALTER TABLE `tbl_qr`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_qr`
--
ALTER TABLE `tbl_qr`
  MODIFY `qid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
