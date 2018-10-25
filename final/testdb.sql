-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2018 at 09:09 AM
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
-- Table structure for table `breaker1`
--

CREATE TABLE `breaker1` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker1`
--

INSERT INTO `breaker1` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(NULL, 30.000, 20.000, 40.000, '2018-09-09 01:54:49', 1, NULL),
(NULL, 99.999, 99.999, 99.999, '2018-09-09 02:02:59', 2, NULL),
(NULL, 32.000, 15.000, 80.000, '2018-09-12 06:13:21', 3, NULL),
(NULL, 67.700, 15.000, 89.000, '2018-09-13 22:18:15', 4, NULL),
(NULL, 67.700, 15.000, 78.900, '2018-09-13 22:19:12', 5, NULL),
(NULL, 2.000, 1.000, 3.000, '2018-09-13 22:22:43', 6, NULL),
(NULL, 1.300, 1.200, 1.400, '2018-09-13 22:33:50', 7, NULL),
(NULL, 1.700, 1.500, 1.900, '2018-09-13 22:35:38', 8, NULL),
(NULL, 7.800, 1.500, 9.900, '2018-09-13 22:35:59', 9, NULL),
(NULL, 3.000, 1.500, 6.000, '2018-09-13 22:38:26', 10, NULL),
(NULL, 90.540, 90.000, 54.600, '2018-09-13 22:46:15', 11, NULL),
(NULL, 68.800, 67.700, 69.800, '2018-09-13 22:47:17', 12, NULL),
(NULL, 4.500, 1.200, 8.900, '2018-09-13 22:51:54', 13, NULL),
(NULL, 4.500, 1.200, 8.100, '2018-09-13 22:52:45', 14, NULL),
(NULL, 4.500, 1.200, 15.000, '2018-09-13 22:53:20', 15, NULL),
(0, 4.000, 3.000, 5.000, '2018-10-03 23:55:30', 16, NULL),
(1, 1567.000, 156.000, 134.000, '2018-10-03 23:55:44', 17, NULL),
(1, 78.000, 56.000, 95.000, '2018-09-13 23:05:16', 18, NULL),
(1, 23.000, 678.000, 23.010, '2018-10-19 01:08:46', 19, NULL),
(NULL, NULL, NULL, NULL, '2018-10-19 02:08:18', 20, 123.000),
(1, 100.000, 5.000, 500.000, '2018-10-25 01:01:05', 21, 492.000);

-- --------------------------------------------------------

--
-- Table structure for table `breaker2`
--

CREATE TABLE `breaker2` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker2`
--

INSERT INTO `breaker2` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(1, 60.100, 1.100, 50.100, '2018-10-03 23:54:41', 1, NULL),
(0, 70.100, 2.100, 20.100, '2018-10-03 23:54:47', 2, NULL),
(0, 80.100, 3.100, 30.100, '2018-10-03 23:54:53', 3, NULL),
(0, 90.100, 4.100, 40.100, '2018-10-03 23:54:33', 4, NULL),
(1, 35.200, 45.600, 65.100, '2018-10-03 23:55:13', 5, NULL),
(0, 2.000, 3.000, 4.000, '2018-10-09 22:04:42', 6, NULL),
(NULL, 2.000, 3.000, 4.000, '2018-10-25 01:01:20', 7, 675.000);

-- --------------------------------------------------------

--
-- Table structure for table `breaker3`
--

CREATE TABLE `breaker3` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker3`
--

INSERT INTO `breaker3` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(0, 25.000, 38.000, 476.000, '2018-10-09 22:04:42', 1, 689.000),
(25, 38.000, 476.000, NULL, '2018-10-19 03:08:58', 2, 689.000),
(25, 38.000, 46.000, 465.000, '2018-10-19 03:08:58', 3, 689.000),
(0, 38.000, 6.000, 265.000, '2018-10-19 03:11:10', 4, 289.000);

-- --------------------------------------------------------

--
-- Table structure for table `breaker4`
--

CREATE TABLE `breaker4` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker4`
--

INSERT INTO `breaker4` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(25, 38.000, 46.000, 465.000, '2018-10-19 03:12:06', 1, 689.000),
(1, 38.000, 46.000, 465.000, '2018-10-19 03:12:06', 2, 689.000);

-- --------------------------------------------------------

--
-- Table structure for table `breaker5`
--

CREATE TABLE `breaker5` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker5`
--

INSERT INTO `breaker5` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(0, 8.000, 16.000, 136.000, '2018-10-19 03:14:29', 1, 148.000),
(1, 80.000, 160.000, 1360.000, '2018-10-19 03:15:06', 2, 1480.000),
(1, 80.000, 19.000, 152.000, '2018-10-19 03:15:06', 3, 180.000);

-- --------------------------------------------------------

--
-- Table structure for table `breaker6`
--

CREATE TABLE `breaker6` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker6`
--

INSERT INTO `breaker6` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(0, 8.000, 16.000, 136.000, '2018-10-19 03:15:23', 1, 148.000);

-- --------------------------------------------------------

--
-- Table structure for table `breaker7`
--

CREATE TABLE `breaker7` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker7`
--

INSERT INTO `breaker7` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(0, 55.000, 23.000, 136.000, '2018-10-19 03:17:02', 1, 148.000);

-- --------------------------------------------------------

--
-- Table structure for table `breaker_8_9`
--

CREATE TABLE `breaker_8_9` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker_8_9`
--

INSERT INTO `breaker_8_9` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(1, 12.000, 23.000, 250.000, '2018-10-19 03:18:45', 1, 244);

-- --------------------------------------------------------

--
-- Table structure for table `breaker_aux`
--

CREATE TABLE `breaker_aux` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker_aux`
--

INSERT INTO `breaker_aux` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(NULL, NULL, NULL, NULL, '2018-10-25 05:04:38', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `breaker_m1`
--

CREATE TABLE `breaker_m1` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker_m1`
--

INSERT INTO `breaker_m1` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(0, 23.000, 678.000, 4.020, '2018-10-25 04:38:59', 1, 54.300);

-- --------------------------------------------------------

--
-- Table structure for table `breaker_m2`
--

CREATE TABLE `breaker_m2` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker_m2`
--

INSERT INTO `breaker_m2` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(0, 11.000, 5.000, 55.000, '2018-10-25 04:35:48', 1, 54.3);

-- --------------------------------------------------------

--
-- Table structure for table `breaker_tie`
--

CREATE TABLE `breaker_tie` (
  `status` tinyint(1) DEFAULT NULL,
  `voltage` float(10,3) DEFAULT NULL,
  `current` float(10,3) DEFAULT NULL,
  `power` float(10,3) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(11) NOT NULL,
  `reactPower` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breaker_tie`
--

INSERT INTO `breaker_tie` (`status`, `voltage`, `current`, `power`, `reg_time`, `ID`, `reactPower`) VALUES
(0, NULL, NULL, NULL, '2018-10-25 05:05:00', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breaker1`
--
ALTER TABLE `breaker1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker2`
--
ALTER TABLE `breaker2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker3`
--
ALTER TABLE `breaker3`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker4`
--
ALTER TABLE `breaker4`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker5`
--
ALTER TABLE `breaker5`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker6`
--
ALTER TABLE `breaker6`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker7`
--
ALTER TABLE `breaker7`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker_8_9`
--
ALTER TABLE `breaker_8_9`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker_aux`
--
ALTER TABLE `breaker_aux`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker_m1`
--
ALTER TABLE `breaker_m1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker_m2`
--
ALTER TABLE `breaker_m2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breaker_tie`
--
ALTER TABLE `breaker_tie`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breaker1`
--
ALTER TABLE `breaker1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `breaker2`
--
ALTER TABLE `breaker2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `breaker3`
--
ALTER TABLE `breaker3`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `breaker4`
--
ALTER TABLE `breaker4`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `breaker5`
--
ALTER TABLE `breaker5`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `breaker6`
--
ALTER TABLE `breaker6`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breaker7`
--
ALTER TABLE `breaker7`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breaker_8_9`
--
ALTER TABLE `breaker_8_9`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breaker_aux`
--
ALTER TABLE `breaker_aux`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breaker_m1`
--
ALTER TABLE `breaker_m1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breaker_m2`
--
ALTER TABLE `breaker_m2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breaker_tie`
--
ALTER TABLE `breaker_tie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
