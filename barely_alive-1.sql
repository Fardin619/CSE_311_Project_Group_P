-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 05:44 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barely_alive`
--

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `uid` int(20) NOT NULL PRIMARY KEY,
  `uname` varchar(30) NOT NULL,
  `upass` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `uemail` varchar(30) NOT NULL
)

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`uid`, `uname`, `upass`, `fullname`, `uemail`) VALUES
(1, 'safa', '1234', 'Safa Ahmed', 'safaahmed@gmail.com'),
(2, 'fardin', '5678', 'Fardin Islam', 'fardinislam@gmail.com'),
(3, 'admin', '1234', 'admin', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(200) NOT NULL PRIMARY KEY,
  `room_cat` varchar(20) NOT NULL,
  `slot` time NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` int(100) NOT NULL,
  `book` varchar(20) NOT NULL
)

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_cat`, `slot`, `name`, `phone`, `book`) VALUES
(23, 'Easy', '00:00:00', '', 0, 'false'),
(24, 'Easy', '00:00:00', '', 0, 'false'),
(25, 'Easy', '00:00:00', '', 0, 'false'),
(26, 'Easy', '00:00:00', '', 0, 'false'),
(27, 'Easy', '00:00:00', '', 0, 'false'),
(28, 'Medium', '03:30:00', 'John Wick', 01314457824, 'true'),
(29, 'Medium', '00:00:00', '', 0, 'false'),
(30, 'Medium', '00:00:00', '', 0, 'false'),
(31, 'Medium', '00:00:00', '', 0, 'false'),
(32, 'Medium', '00:00:00', '', 0, 'false'),
(33, 'Hard', '00:00:00', '', 0, 'false'),
(34, 'Hard', '00:00:00', '', 0, 'false'),
(35, 'Hard', '00:00:00', '', 0, 'false'),
(36, 'Hard', '00:00:00', '', 0, 'false'),
(37, 'Hard', '00:00:00', '', 0, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `room_category`
--

CREATE TABLE `room_category` (
  `roomname` varchar(20) NOT NULL PRIMARY KEY,
  `room_qnty` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `booked` int(11) NOT NULL,
  `price` float NOT NULL
) 

--
-- Dumping data for table `room_category`
--

INSERT INTO `room_category` (`roomname`, `room_qnty`, `available`, `booked`, `price`) 
VALUES('Easy', 5, 5, 2, 3000),
('Hard', 5, 5, 2, 4000),
('Medium', 5, 5, 1, 3500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_category`
--
ALTER TABLE `room_category`
  ADD PRIMARY KEY (`roomname`(100));

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
