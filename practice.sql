-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 06:14 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) DEFAULT NULL,
  `PHY111` varchar(50) DEFAULT NULL,
  `PHY112` varchar(50) DEFAULT NULL,
  `CHE111` varchar(50) DEFAULT NULL,
  `CHE112` varchar(55) DEFAULT NULL,
  `MATH111` varchar(55) DEFAULT NULL,
  `EEE111` varchar(55) DEFAULT NULL,
  `EEE112` varchar(55) DEFAULT NULL,
  `CIT111` varchar(55) DEFAULT NULL,
  `CIT112` varchar(55) DEFAULT NULL,
  `CCE112` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`ID`, `Registration`, `PHY111`, `PHY112`, `CHE111`, `CHE112`, `MATH111`, `EEE111`, `EEE112`, `CIT111`, `CIT112`, `CCE112`) VALUES
('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `First` varchar(20) DEFAULT NULL,
  `Last` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`First`, `Last`) VALUES
('Hossen', 'Ali'),
('Atik', 'Alif'),
('Tanvir', 'Hauqe');

-- --------------------------------------------------------

--
-- Table structure for table `insert1`
--

CREATE TABLE `insert1` (
  `ID` mediumtext NOT NULL,
  `Name` mediumtext NOT NULL,
  `Fathers_Name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insert1`
--

INSERT INTO `insert1` (`ID`, `Name`, `Fathers_Name`) VALUES
('1', 'Mustafiz', 'ABc'),
('2', 'Hossen', 'satther'),
('09', 'atik', 'fdsvcxvcx'),
('34', 'dsdsd', 'safsfsfsf'),
('345', 'sdfffff', 'sfssssss'),
('45', 'qe', 'eee'),
('234', 'sad', 's'),
('222', 'eee', 'eeee'),
('789', 'iiii', 'iiiii'),
('999', 'Tanvir', 'sgsfsg'),
('', '', ''),
('1234', 'Hossen', 'Ali'),
('null', 'null', 'null'),
('1111', 'Abdus', 'Satter'),
('', '', ''),
('11', '1111111111111111111111', '111111111111111111111'),
('333', 'tr', 'rrrr'),
('null', 'null', 'null'),
('12', 'sagor', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `math`
--

CREATE TABLE `math` (
  `Name` varchar(20) DEFAULT NULL,
  `ID` varchar(20) NOT NULL,
  `Reg` varchar(20) DEFAULT NULL,
  `Attendance` varchar(20) DEFAULT NULL,
  `Mid` varchar(20) DEFAULT NULL,
  `Assignment` varchar(20) DEFAULT NULL,
  `Final` varchar(20) DEFAULT NULL,
  `Total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `math111`
--

CREATE TABLE `math111` (
  `Name` varchar(20) DEFAULT NULL,
  `ID` varchar(20) NOT NULL,
  `Reg` varchar(20) DEFAULT NULL,
  `Attendance` varchar(20) DEFAULT NULL,
  `Mid` varchar(20) DEFAULT NULL,
  `Assignment` varchar(20) DEFAULT NULL,
  `Final` varchar(20) DEFAULT NULL,
  `Total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `math121`
--

CREATE TABLE `math121` (
  `Name` varchar(20) DEFAULT NULL,
  `ID` varchar(20) NOT NULL,
  `Reg` varchar(20) DEFAULT NULL,
  `Attendance` varchar(20) DEFAULT NULL,
  `Mid` varchar(20) DEFAULT NULL,
  `Assignment` varchar(20) DEFAULT NULL,
  `Final` varchar(20) DEFAULT NULL,
  `Total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `math121`
--

INSERT INTO `math121` (`Name`, `ID`, `Reg`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('Hossen', '1302003', '4177', '10', '5', '5', '45', '65'),
('Atik', '1302004', '4178', '10', '5', '5', '45', '65'),
('Tanvir', '1302005', '4179', '10', '5', '5', '45', '65'),
('Atik', '1302006', '4180', '10', '5', '5', '45', '78'),
('Amir', '1302007', '4181', '10', '5', '5', '44', '98'),
('Sagor', '1302008', '4182', '10', '5', '5', '34', '67'),
('Rahim', '1302010', '4183', '10', '5', '5', '67', '78');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `A` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Name`, `Email`, `Password`, `Mobile`, `A`) VALUES
('a', 'a', 'a', 'a', NULL),
('b', 'b', 'b', 'b', NULL),
('w', 'w', 'w', 'w', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `math`
--
ALTER TABLE `math`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `math111`
--
ALTER TABLE `math111`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `math121`
--
ALTER TABLE `math121`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
