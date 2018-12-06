-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 06:13 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `janu_jun_2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `agriculture`
--

CREATE TABLE `agriculture` (
  `ID` varchar(25) NOT NULL,
  `Registration` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_enrollment1`
--

CREATE TABLE `cse_enrollment1` (
  `ID` varchar(100) NOT NULL,
  `Registration` varchar(100) NOT NULL,
  `PHY111` varchar(100) DEFAULT NULL,
  `PHY112` varchar(100) DEFAULT NULL,
  `CHE111` varchar(100) DEFAULT NULL,
  `CHE112` varchar(100) DEFAULT NULL,
  `MATH111` varchar(100) DEFAULT NULL,
  `EEE111` varchar(100) DEFAULT NULL,
  `EEE112` varchar(100) DEFAULT NULL,
  `CIT111` varchar(100) DEFAULT NULL,
  `CIT112` varchar(100) DEFAULT NULL,
  `CCE112` varchar(100) DEFAULT NULL,
  `PHY121` int(11) DEFAULT NULL,
  `PHY122` int(11) DEFAULT NULL,
  `CIT121` int(11) DEFAULT NULL,
  `MATH121` int(11) DEFAULT NULL,
  `CCE121` int(11) DEFAULT NULL,
  `CCE122` int(11) DEFAULT NULL,
  `EEE121` int(11) DEFAULT NULL,
  `EEE122` int(11) DEFAULT NULL,
  `LCM121` int(11) DEFAULT NULL,
  `CIT211` varchar(33) DEFAULT NULL,
  `CIT212` varchar(33) DEFAULT NULL,
  `CIT213` varchar(33) DEFAULT NULL,
  `CCE211` varchar(33) DEFAULT NULL,
  `MATH211` varchar(33) DEFAULT NULL,
  `EEE211` varchar(33) DEFAULT NULL,
  `EEE212` varchar(33) DEFAULT NULL,
  `AIS211` varchar(33) DEFAULT NULL,
  `CCE221` varchar(33) DEFAULT NULL,
  `CCE222` varchar(33) DEFAULT NULL,
  `CCE223` varchar(33) DEFAULT NULL,
  `CCE224` varchar(33) DEFAULT NULL,
  `AES221` varchar(33) DEFAULT NULL,
  `MATH221` varchar(33) DEFAULT NULL,
  `CIT220` varchar(33) DEFAULT NULL,
  `CIT221` varchar(33) DEFAULT NULL,
  `CIT222` varchar(33) DEFAULT NULL,
  `CIT311` varchar(33) DEFAULT NULL,
  `CIT312` varchar(33) DEFAULT NULL,
  `CIT313` varchar(33) DEFAULT NULL,
  `CIT315` varchar(33) DEFAULT NULL,
  `CIT316` varchar(33) DEFAULT NULL,
  `CCE310` varchar(33) DEFAULT NULL,
  `CCE311` varchar(33) DEFAULT NULL,
  `CCE312` varchar(33) DEFAULT NULL,
  `CCE313` varchar(33) DEFAULT NULL,
  `CCE314` varchar(33) DEFAULT NULL,
  `CIT320` varchar(33) DEFAULT NULL,
  `CIT321` varchar(33) DEFAULT NULL,
  `CIT322` varchar(33) DEFAULT NULL,
  `CIT323` varchar(33) DEFAULT NULL,
  `CIT324` varchar(33) DEFAULT NULL,
  `EEE321` varchar(33) DEFAULT NULL,
  `EEE322` varchar(33) DEFAULT NULL,
  `CCE321` varchar(33) DEFAULT NULL,
  `CCE322` varchar(33) DEFAULT NULL,
  `CCE323` varchar(33) DEFAULT NULL,
  `CSE410` varchar(33) DEFAULT NULL,
  `CSE412` varchar(33) DEFAULT NULL,
  `CCE411` varchar(33) DEFAULT NULL,
  `CCE413` varchar(33) DEFAULT NULL,
  `CCE415` varchar(33) DEFAULT NULL,
  `CCE416` varchar(33) DEFAULT NULL,
  `CCE417` varchar(33) DEFAULT NULL,
  `CIT411` varchar(33) DEFAULT NULL,
  `CIT412` varchar(33) DEFAULT NULL,
  `CCE421` varchar(33) DEFAULT NULL,
  `CCE423` varchar(33) DEFAULT NULL,
  `CIT421` varchar(33) DEFAULT NULL,
  `CIT423` varchar(33) DEFAULT NULL,
  `CIT422` varchar(33) DEFAULT NULL,
  `CSE421` varchar(33) DEFAULT NULL,
  `CSE420` varchar(33) DEFAULT NULL,
  `AB` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_enrollment1`
--

INSERT INTO `cse_enrollment1` (`ID`, `Registration`, `PHY111`, `PHY112`, `CHE111`, `CHE112`, `MATH111`, `EEE111`, `EEE112`, `CIT111`, `CIT112`, `CCE112`, `PHY121`, `PHY122`, `CIT121`, `MATH121`, `CCE121`, `CCE122`, `EEE121`, `EEE122`, `LCM121`, `CIT211`, `CIT212`, `CIT213`, `CCE211`, `MATH211`, `EEE211`, `EEE212`, `AIS211`, `CCE221`, `CCE222`, `CCE223`, `CCE224`, `AES221`, `MATH221`, `CIT220`, `CIT221`, `CIT222`, `CIT311`, `CIT312`, `CIT313`, `CIT315`, `CIT316`, `CCE310`, `CCE311`, `CCE312`, `CCE313`, `CCE314`, `CIT320`, `CIT321`, `CIT322`, `CIT323`, `CIT324`, `EEE321`, `EEE322`, `CCE321`, `CCE322`, `CCE323`, `CSE410`, `CSE412`, `CCE411`, `CCE413`, `CCE415`, `CCE416`, `CCE417`, `CIT411`, `CIT412`, `CCE421`, `CCE423`, `CIT421`, `CIT423`, `CIT422`, `CSE421`, `CSE420`, `AB`) VALUES
('1202002', '03627', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1202003', '03628', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1202006', '03631', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1202007', '03632', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1202008', '03633', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1202009', '03634', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1202010', '03635', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1202011', '03636', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1202012', '03637', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1202013', '03638', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL),
('1302003', '4177', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1302004', '4178', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1302005', '4179', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agriculture`
--
ALTER TABLE `agriculture`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cse_enrollment1`
--
ALTER TABLE `cse_enrollment1`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
