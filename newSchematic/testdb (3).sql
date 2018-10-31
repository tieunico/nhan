-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2018 at 05:44 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aux`
--

CREATE TABLE `aux` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aux`
--

INSERT INTO `aux` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(0, 2.000, 3.000, 4.000, '2018-10-25 04:12:25', 1, 5.000),
(0, 2.000, 3.000, 4.000, '2018-10-25 04:36:28', 2, 5.000),
(1, 0.000, 0.000, 0.000, '2018-10-25 04:49:39', 3, 0.000),
(NULL, 0.000, 0.000, 0.000, '2018-10-25 04:50:58', 4, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `bay_1`
--

CREATE TABLE `bay_1` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bay_1`
--

INSERT INTO `bay_1` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(NULL, 30.000, 20.000, 40.000, '2018-09-09 01:54:49', 1, 0.000),
(NULL, 99.999, 99.999, 99.999, '2018-09-09 02:02:59', 2, 0.000),
(NULL, 32.000, 15.000, 80.000, '2018-09-12 06:13:21', 3, 0.000),
(NULL, 67.700, 15.000, 89.000, '2018-09-13 22:18:15', 4, 0.000),
(NULL, 67.700, 15.000, 78.900, '2018-09-13 22:19:12', 5, 0.000),
(NULL, 2.000, 1.000, 3.000, '2018-09-13 22:22:43', 6, 0.000),
(NULL, 1.300, 1.200, 1.400, '2018-09-13 22:33:50', 7, 0.000),
(NULL, 1.700, 1.500, 1.900, '2018-09-13 22:35:38', 8, 0.000),
(NULL, 7.800, 1.500, 9.900, '2018-09-13 22:35:59', 9, 0.000),
(NULL, 3.000, 1.500, 6.000, '2018-09-13 22:38:26', 10, 0.000),
(NULL, 90.540, 90.000, 54.600, '2018-09-13 22:46:15', 11, 0.000),
(NULL, 68.800, 67.700, 69.800, '2018-09-13 22:47:17', 12, 0.000),
(NULL, 4.500, 1.200, 8.900, '2018-09-13 22:51:54', 13, 0.000),
(NULL, 4.500, 1.200, 8.100, '2018-09-13 22:52:45', 14, 0.000),
(NULL, 4.500, 1.200, 15.000, '2018-09-13 22:53:20', 15, 0.000),
(0, 4.000, 3.000, 5.000, '2018-10-03 23:55:30', 16, 0.000),
(1, 1567.000, 156.000, 134.000, '2018-10-03 23:55:44', 17, 0.000),
(1, 78.000, 56.000, 95.000, '2018-09-13 23:05:16', 18, 0.000),
(0, 23.000, 678.000, 23.000, '2018-10-03 23:55:38', 19, 0.000),
(1, 3.000, 4.000, 2.000, '2018-10-13 23:46:19', 20, 0.000),
(0, 2.000, 1.000, 2.000, '2018-10-13 23:46:19', 21, 0.000),
(1, 3.000, 5.000, 1.000, '2018-10-13 23:46:19', 22, 0.000),
(0, 0.000, 0.000, 0.000, '2018-10-14 16:52:18', 23, 0.000),
(1, 1.000, 1.000, 1.000, '2018-10-14 16:55:04', 24, 0.000),
(1, 233.000, 3245.000, 120.000, '2018-10-30 02:03:01', 25, 13.000),
(0, NULL, NULL, NULL, '2018-10-24 01:46:47', 26, NULL),
(0, NULL, NULL, NULL, '2018-10-24 01:50:26', 27, NULL),
(1, NULL, NULL, NULL, '2018-10-24 02:19:29', 28, NULL),
(1, NULL, NULL, NULL, '2018-10-24 02:21:31', 29, NULL),
(0, NULL, NULL, NULL, '2018-10-24 02:22:35', 30, NULL),
(0, NULL, NULL, NULL, '2018-10-24 02:23:40', 31, NULL),
(1, NULL, NULL, NULL, '2018-10-24 02:24:41', 32, NULL),
(1, NULL, NULL, NULL, '2018-10-24 02:24:45', 33, NULL),
(0, NULL, NULL, NULL, '2018-10-24 02:25:11', 34, NULL),
(0, NULL, NULL, NULL, '2018-10-24 02:25:13', 35, NULL),
(1, NULL, NULL, NULL, '2018-10-24 02:26:14', 36, NULL),
(1, NULL, NULL, NULL, '2018-10-24 02:26:16', 37, NULL),
(0, NULL, NULL, NULL, '2018-10-24 02:26:45', 38, NULL),
(0, NULL, NULL, NULL, '2018-10-24 02:27:03', 39, NULL),
(1, NULL, NULL, NULL, '2018-10-24 02:27:18', 40, NULL),
(1, NULL, NULL, NULL, '2018-10-24 02:27:20', 41, NULL),
(1, NULL, NULL, NULL, '2018-10-24 02:37:46', 42, NULL),
(1, 234.000, 3245.000, 123424.000, '2018-10-30 01:45:24', 43, 1223.000),
(1, 233.000, 3245.000, 123.000, '2018-10-30 01:49:42', 44, 1223.000),
(1, 23.000, 46.000, 4.000, '2018-10-30 02:05:08', 45, 1223.000),
(1, 23.000, 46.000, 4.000, '2018-10-30 02:08:58', 46, 12.000);

-- --------------------------------------------------------

--
-- Table structure for table `bay_2`
--

CREATE TABLE `bay_2` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bay_2`
--

INSERT INTO `bay_2` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(1, 60.100, 1.100, 50.100, '2018-10-03 23:54:41', 1, 0.000),
(0, 70.100, 2.100, 20.100, '2018-10-03 23:54:47', 2, 0.000),
(0, 80.100, 3.100, 30.100, '2018-10-03 23:54:53', 3, 0.000),
(0, 90.100, 4.100, 40.100, '2018-10-03 23:54:33', 4, 0.000),
(1, 35.200, 45.600, 65.100, '2018-10-03 23:55:13', 5, 0.000),
(0, 2.000, 3.000, 4.000, '2018-10-09 22:04:42', 6, 0.000),
(1, 2.000, 5.000, 2.000, '2018-10-13 23:46:19', 7, 0.000),
(1, 2.000, 4.000, 2.000, '2018-10-13 23:46:19', 8, 0.000),
(0, 3.000, 3.000, 1.000, '2018-10-13 23:46:19', 9, 0.000),
(1, 1.000, 1.000, 1.000, '2018-10-18 22:05:19', 10, 0.000),
(0, 2.000, 2.000, 2.000, '2018-10-18 22:09:39', 11, 0.000),
(1, 3.000, 3.000, 3.000, '2018-10-30 01:47:55', 12, 2134.000);

-- --------------------------------------------------------

--
-- Table structure for table `bay_3`
--

CREATE TABLE `bay_3` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bay_3`
--

INSERT INTO `bay_3` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(1, 3.000, 4.000, 2.000, '2018-10-13 23:46:19', 1, 0.000),
(0, 2.000, 4.000, 2.000, '2018-10-13 23:46:19', 2, 0.000),
(1, 3.000, 5.000, 1.000, '2018-10-13 23:46:19', 3, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `bay_4`
--

CREATE TABLE `bay_4` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bay_4`
--

INSERT INTO `bay_4` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(1, 3.000, 4.000, 2.000, '2018-10-13 23:46:19', 1, 0.000),
(1, 2.000, 4.000, 2.000, '2018-10-13 23:46:19', 2, 0.000),
(0, 3.000, 3.000, 1.000, '2018-10-13 23:46:19', 3, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `bay_5`
--

CREATE TABLE `bay_5` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bay_5`
--

INSERT INTO `bay_5` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(1, 2.000, 3.000, 4.000, '2018-10-25 04:12:25', 1, 5.000);

-- --------------------------------------------------------

--
-- Table structure for table `bay_6`
--

CREATE TABLE `bay_6` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bay_6`
--

INSERT INTO `bay_6` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(0, 2.000, 3.000, 4.000, '2018-10-25 04:12:25', 1, 5.000);

-- --------------------------------------------------------

--
-- Table structure for table `bay_7`
--

CREATE TABLE `bay_7` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bay_7`
--

INSERT INTO `bay_7` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(1, 2.000, 3.000, 4.000, '2018-10-25 04:12:25', 1, 5.000);

-- --------------------------------------------------------

--
-- Table structure for table `bay_8_9`
--

CREATE TABLE `bay_8_9` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bay_8_9`
--

INSERT INTO `bay_8_9` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(1, 2.000, 3.000, 4.000, '2018-10-25 04:12:25', 1, 5.000);

-- --------------------------------------------------------

--
-- Table structure for table `m1`
--

CREATE TABLE `m1` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m1`
--

INSERT INTO `m1` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(1, 2.000, 3.000, 4.000, '2018-10-25 04:12:25', 1, 5.000),
(0, 2.000, 3.000, 4.000, '2018-10-25 04:36:28', 2, 5.000);

-- --------------------------------------------------------

--
-- Table structure for table `m2`
--

CREATE TABLE `m2` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m2`
--

INSERT INTO `m2` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(0, 2.000, 3.000, 4.000, '2018-10-25 04:12:25', 1, 5.000),
(0, 2.000, 3.000, 4.000, '2018-10-25 04:36:28', 2, 5.000);

-- --------------------------------------------------------

--
-- Table structure for table `sys_msg_north_crio`
--

CREATE TABLE `sys_msg_north_crio` (
  `id` int(11) NOT NULL,
  `bay_id` varchar(255) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_msg_north_crio`
--

INSERT INTO `sys_msg_north_crio` (`id`, `bay_id`, `command`, `timestamp`) VALUES
(1, 'Bay_5', 'OPEN', '2018-10-30 03:06:50'),
(2, 'Bay_6', 'CLOSE', '2018-10-30 03:06:52'),
(3, 'Bay_7', 'OPEN', '2018-10-30 03:06:54'),
(4, 'Bay_8/9', 'OPEN', '2018-10-30 03:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `sys_msg_south_crio`
--

CREATE TABLE `sys_msg_south_crio` (
  `id` int(11) NOT NULL,
  `bay_id` varchar(255) NOT NULL,
  `command` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_msg_south_crio`
--

INSERT INTO `sys_msg_south_crio` (`id`, `bay_id`, `command`, `timestamp`) VALUES
(2, 'Bay_1', 'OPEN', '2018-10-30 03:04:43'),
(3, 'Bay_2', 'OPEN', '2018-10-30 03:06:22'),
(4, 'Bay_3', 'OPEN', '2018-10-30 03:06:25'),
(5, 'Bay_4', 'CLOSE', '2018-10-30 03:06:27'),
(6, 'M2', 'CLOSE', '2018-10-30 03:06:31'),
(7, 'AUX', '-1', '2018-10-30 03:06:43'),
(8, 'TIE', '-1', '2018-10-30 03:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `tie`
--

CREATE TABLE `tie` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactive_power` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tie`
--

INSERT INTO `tie` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactive_power`) VALUES
(1, 2.000, 3.000, 4.000, '2018-10-25 04:12:25', 1, 5.000),
(0, 2.000, 3.000, 4.000, '2018-10-25 04:36:28', 2, 5.000),
(1, 0.000, 0.000, 0.000, '2018-10-25 04:49:39', 3, 0.000),
(NULL, 0.000, 0.000, 0.000, '2018-10-25 04:50:58', 4, 0.000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aux`
--
ALTER TABLE `aux`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bay_1`
--
ALTER TABLE `bay_1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bay_2`
--
ALTER TABLE `bay_2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bay_3`
--
ALTER TABLE `bay_3`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bay_4`
--
ALTER TABLE `bay_4`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bay_5`
--
ALTER TABLE `bay_5`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bay_6`
--
ALTER TABLE `bay_6`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bay_7`
--
ALTER TABLE `bay_7`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bay_8_9`
--
ALTER TABLE `bay_8_9`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `m1`
--
ALTER TABLE `m1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `m2`
--
ALTER TABLE `m2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sys_msg_north_crio`
--
ALTER TABLE `sys_msg_north_crio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_msg_south_crio`
--
ALTER TABLE `sys_msg_south_crio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tie`
--
ALTER TABLE `tie`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aux`
--
ALTER TABLE `aux`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bay_1`
--
ALTER TABLE `bay_1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `bay_2`
--
ALTER TABLE `bay_2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bay_3`
--
ALTER TABLE `bay_3`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bay_4`
--
ALTER TABLE `bay_4`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bay_5`
--
ALTER TABLE `bay_5`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bay_6`
--
ALTER TABLE `bay_6`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bay_7`
--
ALTER TABLE `bay_7`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bay_8_9`
--
ALTER TABLE `bay_8_9`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m1`
--
ALTER TABLE `m1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m2`
--
ALTER TABLE `m2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_msg_north_crio`
--
ALTER TABLE `sys_msg_north_crio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_msg_south_crio`
--
ALTER TABLE `sys_msg_south_crio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tie`
--
ALTER TABLE `tie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
