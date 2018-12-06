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
-- Database: `session2013-14`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `ID` varchar(25) NOT NULL,
  `Registration` varchar(25) DEFAULT NULL,
  `Attendance` varchar(20) DEFAULT NULL,
  `Mid` varchar(20) DEFAULT NULL,
  `Assignment` varchar(20) DEFAULT NULL,
  `Final` varchar(20) DEFAULT NULL,
  `Total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ab`
--

CREATE TABLE `ab` (
  `ID` varchar(25) NOT NULL,
  `Registration` varchar(25) DEFAULT NULL,
  `Attendance` varchar(20) DEFAULT NULL,
  `Mid` varchar(20) DEFAULT NULL,
  `Assignment` varchar(20) DEFAULT NULL,
  `Final` varchar(20) DEFAULT NULL,
  `Total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aes221`
--

CREATE TABLE `aes221` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aes221`
--

INSERT INTO `aes221` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '9', '4', '35', '56'),
('1202003', '03628', '9', '3', '3', '25', '40'),
('1202006', '03631', '0', '6', '4', '26', '36'),
('1202007', '03632', '10', '6', '4', '37', '57'),
('1202008', '03633', '9', '8', '4', '40', '61'),
('1202009', '03634', '9', '6', '3', '31', '49'),
('1202010', '03635', '10', '7', '3', '20', '40'),
('1202011', '03636', '8', '5', '3', '34', '50'),
('1202012', '03637', '9', '9', '3', '39', '60'),
('1202013', '03638', '9', '11', '4', '40', '64');

-- --------------------------------------------------------

--
-- Table structure for table `ais211`
--

CREATE TABLE `ais211` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ais211`
--

INSERT INTO `ais211` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '6', '5', '50', '71'),
('1202003', '03628', '10', '0', '5', '19', '34'),
('1202006', '03631', '10', '0', '5', '15', '30'),
('1202007', '03632', '10', '7', '5', '40', '62'),
('1202008', '03633', '10', '8', '5', '51', '74'),
('1202009', '03634', '10', '4', '5', '43', '62'),
('1202010', '03635', '10', '5', '5', '21', '41'),
('1202011', '03636', '10', '6', '5', '34', '55'),
('1202012', '03637', '10', '5', '5', '50', '70'),
('1202013', '03638', '10', '5', '5', '42', '62');

-- --------------------------------------------------------

--
-- Table structure for table `cce112`
--

CREATE TABLE `cce112` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce112`
--

INSERT INTO `cce112` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '8', '5', '55', '78'),
('1202003', '03628', '10', '8', '5', '20', '43'),
('1202006', '03631', '10', '10', '5', '20', '45'),
('1202007', '03632', '10', '10', '5', '25', '50'),
('1202008', '03633', '10', '13', '5', '60', '88'),
('1202009', '03634', '10', '8', '5', '30', '53'),
('1202010', '03635', '10', '10', '5', '45', '70'),
('1202011', '03636', '10', '8', '5', '20', '43'),
('1202012', '03637', '10', '10', '5', '55', '80'),
('1202013', '03638', '10', '6', '5', '30', '51');

-- --------------------------------------------------------

--
-- Table structure for table `cce121`
--

CREATE TABLE `cce121` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce121`
--

INSERT INTO `cce121` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '5', '5', '25', '45'),
('1202003', '03628', '10', '3', '4', '20', '37'),
('1202006', '03631', '10', '3', '4', '20', '37'),
('1202007', '03632', '10', '7', '3', '25', '45'),
('1202008', '03633', '10', '10', '5', '35', '60'),
('1202009', '03634', '10', '5', '5', '25', '45'),
('1202010', '03635', '10', '10', '5', '25', '50'),
('1202011', '03636', '10', '3', '5', '19', '37'),
('1202012', '03637', '10', '15', '5', '40', '70'),
('1202013', '03638', '10', '10', '5', '35', '60');

-- --------------------------------------------------------

--
-- Table structure for table `cce122`
--

CREATE TABLE `cce122` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce122`
--

INSERT INTO `cce122` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '5', '5', '25', '45'),
('1202003', '03628', '7', '5', '5', '20', '37'),
('1202006', '03631', '7', '5', '5', '20', '37'),
('1202007', '03632', '10', '5', '5', '20', '40'),
('1202008', '03633', '10', '10', '5', '35', '60'),
('1202009', '03634', '10', '10', '5', '40', '65'),
('1202010', '03635', '10', '10', '5', '30', '55'),
('1202011', '03636', '7', '5', '5', '20', '37'),
('1202012', '03637', '10', '15', '5', '40', '70'),
('1202013', '03638', '10', '10', '5', '35', '60');

-- --------------------------------------------------------

--
-- Table structure for table `cce211`
--

CREATE TABLE `cce211` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce211`
--

INSERT INTO `cce211` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '12', '5', '44', '69'),
('1202003', '03628', '10', '7', '3', '17', '37'),
('1202006', '03631', '0', '12', '3', '26', '41'),
('1202007', '03632', '10', '10', '5', '37', '62'),
('1202008', '03633', '8', '14', '4', '45', '71'),
('1202009', '03634', '8', '5', '7', '17', '37'),
('1202010', '03635', '10', '14', '3', '29', '56'),
('1202011', '03636', '0', '9', '4', '43', '56'),
('1202012', '03637', '10', '11', '5', '48', '74'),
('1202013', '03638', '10', '12', '4', '40', '66');

-- --------------------------------------------------------

--
-- Table structure for table `cce221`
--

CREATE TABLE `cce221` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce221`
--

INSERT INTO `cce221` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '8', '5', '43', '66'),
('1202003', '03628', '10', '5', '5', '9', '29'),
('1202006', '03631', '9', '7', '5', '22', '43'),
('1202007', '03632', '10', '7', '5', '16', '38'),
('1202008', '03633', '10', '5', '5', '28', '48'),
('1202009', '03634', '10', '7', '5', '19', '41'),
('1202010', '03635', '9', '5', '5', '27', '46'),
('1202011', '03636', '9', '8', '5', '21', '43'),
('1202012', '03637', '10', '9', '5', '45', '69'),
('1202013', '03638', '10', '10', '5', '39', '64');

-- --------------------------------------------------------

--
-- Table structure for table `cce222`
--

CREATE TABLE `cce222` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce222`
--

INSERT INTO `cce222` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '8', '5', '29', '52'),
('1202003', '03628', '10', '7', '5', '45', '67'),
('1202006', '03631', '10', '8', '5', '49', '72'),
('1202007', '03632', '10', '4', '5', '28', '47'),
('1202008', '03633', '10', '10', '5', '48', '73'),
('1202009', '03634', '10', '8', '5', '49', '72'),
('1202010', '03635', '10', '6', '5', '44', '65'),
('1202011', '03636', '10', '7', '5', '33', '55'),
('1202012', '03637', '10', '10', '5', '60', '85'),
('1202013', '03638', '10', '9', '5', '62', '86');

-- --------------------------------------------------------

--
-- Table structure for table `cce223`
--

CREATE TABLE `cce223` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce223`
--

INSERT INTO `cce223` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '11', '5', '49', '75'),
('1202003', '03628', '10', '10', '5', '45', '70'),
('1202006', '03631', '10', '8', '5', '46', '69'),
('1202007', '03632', '10', '12', '5', '47', '74'),
('1202008', '03633', '10', '11', '5', '51', '77'),
('1202009', '03634', '0', '10', '5', '45', '60'),
('1202010', '03635', '10', '10', '5', '42', '67'),
('1202011', '03636', '10', '7', '5', '44', '66'),
('1202012', '03637', '10', '12', '5', '51', '78'),
('1202013', '03638', '10', '12', '5', '44', '71');

-- --------------------------------------------------------

--
-- Table structure for table `cce224`
--

CREATE TABLE `cce224` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce224`
--

INSERT INTO `cce224` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '8', '5', '28', '51'),
('1202003', '03628', '10', '0', '5', '20', '35'),
('1202006', '03631', '10', '8', '5', '31', '54'),
('1202007', '03632', '10', '7', '5', '26', '48'),
('1202008', '03633', '10', '13', '5', '25', '53'),
('1202009', '03634', '10', '0', '5', '34', '49'),
('1202010', '03635', '10', '6', '5', '25', '46'),
('1202011', '03636', '10', '6', '5', '25', '46'),
('1202012', '03637', '10', '14', '5', '42', '71'),
('1202013', '03638', '10', '8', '5', '25', '48');

-- --------------------------------------------------------

--
-- Table structure for table `cce310`
--

CREATE TABLE `cce310` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce310`
--

INSERT INTO `cce310` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '10', '4', '56', '80'),
('1202003', '03628', '10', '11', '4', '50', '75'),
('1202006', '03631', '10', '10', '4', '51', '75'),
('1202007', '03632', '8', '11', '4', '52', '75'),
('1202008', '03633', '10', '11', '4', '55', '80'),
('1202009', '03634', '10', '8', '4', '53', '75'),
('1202010', '03635', '10', '11', '4', '45', '70'),
('1202011', '03636', '10', '11', '4', '50', '75'),
('1202012', '03637', '10', '6', '4', '55', '75'),
('1202013', '03638', '10', '11', '4', '55', '80');

-- --------------------------------------------------------

--
-- Table structure for table `cce311`
--

CREATE TABLE `cce311` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce311`
--

INSERT INTO `cce311` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '11', '4', '44', '67'),
('1202003', '03628', '7', '8', '4', '41', '60'),
('1202006', '03631', '7', '11', '4', '34', '56'),
('1202007', '03632', '10', '7', '4', '45', '66'),
('1202008', '03633', '10', '11', '4', '49', '74'),
('1202009', '03634', '9', '4', '4', '34', '51'),
('1202010', '03635', '9', '5', '4', '28', '46'),
('1202011', '03636', '7', '9', '4', '38', '58'),
('1202012', '03637', '10', '10', '4', '50', '74'),
('1202013', '03638', '9', '10', '4', '42', '65');

-- --------------------------------------------------------

--
-- Table structure for table `cce312`
--

CREATE TABLE `cce312` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce312`
--

INSERT INTO `cce312` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '13', '4', '58', '83'),
('1202003', '03628', '7', '13', '4', '37', '61'),
('1202006', '03631', '7', '13', '4', '43', '67'),
('1202007', '03632', '10', '13', '4', '48', '75'),
('1202008', '03633', '10', '14', '4', '47', '75'),
('1202009', '03634', '9', '13', '4', '47', '73'),
('1202010', '03635', '9', '14', '4', '50', '77'),
('1202011', '03636', '7', '12', '4', '39', '62'),
('1202012', '03637', '10', '14', '4', '60', '88'),
('1202013', '03638', '9', '14', '4', '60', '87');

-- --------------------------------------------------------

--
-- Table structure for table `cce313`
--

CREATE TABLE `cce313` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce313`
--

INSERT INTO `cce313` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '10', '5', '42', '67'),
('1202003', '03628', '10', '11', '5', '39', '65'),
('1202006', '03631', '10', '10', '5', '36', '61'),
('1202007', '03632', '10', '10', '5', '26', '51'),
('1202008', '03633', '10', '11', '5', '40', '66'),
('1202009', '03634', '10', '11', '5', '31', '57'),
('1202010', '03635', '10', '11', '5', '26', '52'),
('1202011', '03636', '10', '10', '4', '39', '63'),
('1202012', '03637', '10', '11', '3', '49', '73'),
('1202013', '03638', '10', '11', '5', '43', '69');

-- --------------------------------------------------------

--
-- Table structure for table `cce314`
--

CREATE TABLE `cce314` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce314`
--

INSERT INTO `cce314` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '7', '5', '39', '61'),
('1202003', '03628', '10', '10', '4', '29', '53'),
('1202006', '03631', '10', '9', '5', '29', '53'),
('1202007', '03632', '10', '13', '5', '38', '66'),
('1202008', '03633', '10', '13', '5', '40', '68'),
('1202009', '03634', '10', '11', '4', '31', '56'),
('1202010', '03635', '10', '10', '5', '27', '52'),
('1202011', '03636', '10', '10', '5', '29', '54'),
('1202012', '03637', '10', '13', '3', '51', '77'),
('1202013', '03638', '10', '10', '5', '45', '70');

-- --------------------------------------------------------

--
-- Table structure for table `cce321`
--

CREATE TABLE `cce321` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce321`
--

INSERT INTO `cce321` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '9', '5', '42', '66'),
('1202003', '03628', '9', '8', '5', '38', '60'),
('1202006', '03631', '10', '10', '5', '50', '75'),
('1202007', '03632', '10', '7', '5', '48', '70'),
('1202008', '03633', '10', '10', '5', '53', '78'),
('1202009', '03634', '10', '6', '4', '33', '53'),
('1202010', '03635', '10', '5', '4', '36', '55'),
('1202011', '03636', '9', '10', '4', '45', '68'),
('1202012', '03637', '10', '10', '5', '53', '78'),
('1202013', '03638', '10', '10', '5', '41', '66');

-- --------------------------------------------------------

--
-- Table structure for table `cce322`
--

CREATE TABLE `cce322` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce322`
--

INSERT INTO `cce322` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '10', '5', '50', '75'),
('1202003', '03628', '9', '8', '5', '50', '72'),
('1202006', '03631', '9', '7', '5', '42', '63'),
('1202007', '03632', '9', '11', '5', '45', '70'),
('1202008', '03633', '10', '10', '5', '56', '81'),
('1202009', '03634', '10', '9', '5', '41', '65'),
('1202010', '03635', '10', '6', '4', '45', '65'),
('1202011', '03636', '9', '7', '4', '42', '62'),
('1202012', '03637', '10', '13', '5', '50', '78'),
('1202013', '03638', '10', '11', '5', '50', '76');

-- --------------------------------------------------------

--
-- Table structure for table `cce323`
--

CREATE TABLE `cce323` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce323`
--

INSERT INTO `cce323` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '9', '4', '42', '65'),
('1202003', '03628', '10', '11', '4', '40', '65'),
('1202006', '03631', '10', '11', '4', '50', '75'),
('1202007', '03632', '10', '11', '4', '50', '75'),
('1202008', '03633', '10', '11', '4', '50', '75'),
('1202009', '03634', '10', '8', '4', '38', '60'),
('1202010', '03635', '10', '10', '4', '41', '65'),
('1202011', '03636', '10', '12', '4', '39', '65'),
('1202012', '03637', '10', '12', '4', '54', '80'),
('1202013', '03638', '10', '11', '4', '52', '77');

-- --------------------------------------------------------

--
-- Table structure for table `cce411`
--

CREATE TABLE `cce411` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce411`
--

INSERT INTO `cce411` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '8', '5', '35', '58'),
('1202003', '03628', '10', '3', '5', '36', '54'),
('1202006', '03631', '10', '0', '5', '31', '46'),
('1202007', '03632', '9', '1', '5', '46', '61'),
('1202008', '03633', '10', '14', '5', '56', '85'),
('1202009', '03634', '10', '8', '5', '29', '52'),
('1202010', '03635', '10', '4', '5', '13', '32'),
('1202011', '03636', '10', '3', '5', '37', '55'),
('1202012', '03637', '10', '7', '5', '48', '70'),
('1202013', '03638', '10', '6', '5', '44', '65');

-- --------------------------------------------------------

--
-- Table structure for table `cce413`
--

CREATE TABLE `cce413` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce413`
--

INSERT INTO `cce413` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '8', '5', '50', '73'),
('1202003', '03628', '10', '8', '5', '35', '58'),
('1202006', '03631', '10', '8', '5', '39', '62'),
('1202007', '03632', '10', '10', '4', '31', '55'),
('1202008', '03633', '10', '13', '5', '54', '82'),
('1202009', '03634', '10', '9', '5', '26', '50'),
('1202010', '03635', '10', '8', '5', '18', '41'),
('1202011', '03636', '10', '11', '4', '40', '65'),
('1202012', '03637', '10', '13', '5', '50', '78'),
('1202013', '03638', '10', '9', '5', '44', '68');

-- --------------------------------------------------------

--
-- Table structure for table `cce415`
--

CREATE TABLE `cce415` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce415`
--

INSERT INTO `cce415` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '13', '4', '39', '65'),
('1202003', '03628', '9', '11', '4', '41', '65'),
('1202006', '03631', '10', '12', '4', '45', '71'),
('1202007', '03632', '10', '10', '4', '41', '65'),
('1202008', '03633', '8', '14', '4', '49', '75'),
('1202009', '03634', '8', '6', '4', '33', '51'),
('1202010', '03635', '10', '6', '4', '30', '50'),
('1202011', '03636', '9', '14', '4', '45', '72'),
('1202012', '03637', '10', '14', '4', '52', '80'),
('1202013', '03638', '10', '13', '4', '46', '73');

-- --------------------------------------------------------

--
-- Table structure for table `cce416`
--

CREATE TABLE `cce416` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce416`
--

INSERT INTO `cce416` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '13', '4', '45', '71'),
('1202003', '03628', '9', '11', '4', '42', '66'),
('1202006', '03631', '10', '12', '4', '47', '73'),
('1202007', '03632', '10', '10', '4', '44', '68'),
('1202008', '03633', '8', '14', '4', '52', '78'),
('1202009', '03634', '8', '6', '4', '35', '53'),
('1202010', '03635', '10', '11', '4', '55', '80'),
('1202011', '03636', '9', '14', '4', '48', '75'),
('1202012', '03637', '10', '14', '4', '52', '80'),
('1202013', '03638', '10', '13', '4', '48', '75');

-- --------------------------------------------------------

--
-- Table structure for table `cce417`
--

CREATE TABLE `cce417` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce417`
--

INSERT INTO `cce417` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '8', '5', '49', '72'),
('1202003', '03628', '9', '2', '5', '40', '56'),
('1202006', '03631', '8', '4', '5', '33', '50'),
('1202007', '03632', '10', '6', '5', '34', '55'),
('1202008', '03633', '10', '11', '5', '54', '80'),
('1202009', '03634', '9', '7', '5', '34', '55'),
('1202010', '03635', '8', '9', '5', '34', '56'),
('1202011', '03636', '8', '11', '5', '41', '65'),
('1202012', '03637', '10', '10', '5', '38', '63'),
('1202013', '03638', '10', '12', '5', '53', '80');

-- --------------------------------------------------------

--
-- Table structure for table `cce421`
--

CREATE TABLE `cce421` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce421`
--

INSERT INTO `cce421` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '10', '5', '37', '60'),
('1202003', '03628', '10', '7', '5', '32', '54'),
('1202006', '03631', '7', '7', '5', '28', '47'),
('1202007', '03632', '9', '9', '5', '31', '54'),
('1202008', '03633', '10', '8', '5', '37', '60'),
('1202009', '03634', '8', '11', '5', '27', '51'),
('1202010', '03635', '9', '11', '5', '15', '40'),
('1202011', '03636', '9', '11', '5', '39', '64'),
('1202012', '03637', '9', '13', '5', '40', '67'),
('1202013', '03638', '9', '10', '5', '32', '56');

-- --------------------------------------------------------

--
-- Table structure for table `cce423`
--

CREATE TABLE `cce423` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cce423`
--

INSERT INTO `cce423` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '6', '3', '36', '53'),
('1202003', '03628', '10', '3', '4', '27', '44'),
('1202006', '03631', '7', '4', '5', '24', '40'),
('1202007', '03632', '9', '3', '4', '19', '35'),
('1202008', '03633', '10', '8', '5', '38', '61'),
('1202009', '03634', '10', '3', '5', '22', '40'),
('1202010', '03635', '10', '2', '5', '23', '40'),
('1202011', '03636', '10', '3', '5', '32', '50'),
('1202012', '03637', '9', '8', '5', '35', '57'),
('1202013', '03638', '9', '8', '4', '37', '58');

-- --------------------------------------------------------

--
-- Table structure for table `che111`
--

CREATE TABLE `che111` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `che111`
--

INSERT INTO `che111` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '10', '4', '50', '73'),
('1202003', '03628', '9', '5', '4', '41', '59'),
('1202006', '03631', '9', '4', '4', '30', '47'),
('1202007', '03632', '9', '9', '4', '46', '68'),
('1202008', '03633', '9', '12', '4', '57', '82'),
('1202009', '03634', '9', '8', '4', '34', '55'),
('1202010', '03635', '9', '4', '4', '39', '56'),
('1202011', '03636', '9', '6', '4', '45', '64'),
('1202012', '03637', '9', '8', '4', '52', '73'),
('1202013', '03638', '9', '10', '4', '53', '76');

-- --------------------------------------------------------

--
-- Table structure for table `che112`
--

CREATE TABLE `che112` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `che112`
--

INSERT INTO `che112` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '10', '4', '55', '78'),
('1202003', '03628', '9', '10', '4', '55', '78'),
('1202006', '03631', '9', '10', '4', '45', '68'),
('1202007', '03632', '9', '10', '4', '57', '80'),
('1202008', '03633', '9', '12', '4', '58', '83'),
('1202009', '03634', '9', '10', '4', '51', '74'),
('1202010', '03635', '9', '10', '4', '53', '76'),
('1202011', '03636', '9', '10', '4', '57', '80'),
('1202012', '03637', '9', '11', '4', '52', '76'),
('1202013', '03638', '10', '12', '4', '54', '80');

-- --------------------------------------------------------

--
-- Table structure for table `cit111`
--

CREATE TABLE `cit111` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit111`
--

INSERT INTO `cit111` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '9', '5', '30', '54'),
('1202003', '03628', '9', '9', '5', '4', '27'),
('1202006', '03631', '7', '9', '5', '0', '21'),
('1202007', '03632', '9', '7', '5', '23', '44'),
('1202008', '03633', '10', '10', '5', '38', '63'),
('1202009', '03634', '10', '6', '5', '6', '27'),
('1202010', '03635', '10', '5', '5', '9', '29'),
('1202011', '03636', '7', '8', '5', '26', '46'),
('1202012', '03637', '10', '8', '5', '35', '58'),
('1202013', '03638', '10', '8', '5', '41', '64');

-- --------------------------------------------------------

--
-- Table structure for table `cit112`
--

CREATE TABLE `cit112` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit112`
--

INSERT INTO `cit112` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '5', '2', '28', '45'),
('1202003', '03628', '9', '0', '0', '15', '24'),
('1202006', '03631', '7', '4', '2', '0', '13'),
('1202007', '03632', '9', '10', '4', '35', '58'),
('1202008', '03633', '10', '12', '4', '49', '75'),
('1202009', '03634', '10', '10', '4', '52', '76'),
('1202010', '03635', '10', '0', '0', '28', '38'),
('1202011', '03636', '7', '5', '2', '15', '29'),
('1202012', '03637', '10', '14', '5', '35', '64'),
('1202013', '03638', '10', '10', '4', '35', '59');

-- --------------------------------------------------------

--
-- Table structure for table `cit121`
--

CREATE TABLE `cit121` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit121`
--

INSERT INTO `cit121` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '15', '5', '45', '75'),
('1202003', '03628', '10', '10', '5', '15', '40'),
('1202006', '03631', '10', '5', '5', '20', '40'),
('1202007', '03632', '10', '15', '5', '30', '60'),
('1202008', '03633', '10', '10', '5', '40', '65'),
('1202009', '03634', '10', '10', '5', '30', '55'),
('1202010', '03635', '10', '5', '5', '30', '45'),
('1202011', '03636', '10', '5', '5', '20', '40'),
('1202012', '03637', '10', '10', '5', '40', '65'),
('1202013', '03638', '10', '10', '5', '30', '55');

-- --------------------------------------------------------

--
-- Table structure for table `cit211`
--

CREATE TABLE `cit211` (
  `ID` varchar(33) NOT NULL,
  `Registration` varchar(33) DEFAULT NULL,
  `Attendance` varchar(33) DEFAULT NULL,
  `Mid` varchar(33) DEFAULT NULL,
  `Assignment` varchar(33) DEFAULT NULL,
  `Final` varchar(33) DEFAULT NULL,
  `Total` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit211`
--

INSERT INTO `cit211` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '4', '4', '51', '67'),
('1202003', '03628', '8', '3', '3', '28', '42'),
('1202006', '03631', '6', '5', '4', '27', '42'),
('1202007', '03632', '8', '13', '5', '40', '66'),
('1202008', '03633', '6', '12', '5', '49', '72'),
('1202009', '03634', '7', '13', '5', '45', '70'),
('1202010', '03635', '7', '5', '3', '32', '47'),
('1202011', '03636', '0', '6', '0', '39', '45'),
('1202012', '03637', '8', '4', '4', '49', '65'),
('1202013', '03638', '7', '12', '4', '52', '75');

-- --------------------------------------------------------

--
-- Table structure for table `cit212`
--

CREATE TABLE `cit212` (
  `ID` varchar(33) NOT NULL,
  `Registration` varchar(33) DEFAULT NULL,
  `Attendance` varchar(33) DEFAULT NULL,
  `Mid` varchar(33) DEFAULT NULL,
  `Assignment` varchar(33) DEFAULT NULL,
  `Final` varchar(33) DEFAULT NULL,
  `Total` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit212`
--

INSERT INTO `cit212` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '3', '1', '46', '60'),
('1202003', '03628', '10', '2', '1', '0', '13'),
('1202006', '03631', '10', '1', '1', '0', '12'),
('1202007', '03632', '10', '2', '1', '59', '72'),
('1202008', '03633', '10', '3', '1', '57', '71'),
('1202009', '03634', '10', '2', '3', '35', '50'),
('1202010', '03635', '10', '2', '1', '52', '65'),
('1202011', '03636', '10', '2', '1', '49', '62'),
('1202012', '03637', '10', '3', '1', '44', '58'),
('1202013', '03638', '10', '3', '1', '72', '86');

-- --------------------------------------------------------

--
-- Table structure for table `cit213`
--

CREATE TABLE `cit213` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit213`
--

INSERT INTO `cit213` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '10', '4', '46', '68'),
('1202003', '03628', '8', '7', '5', '43', '63'),
('1202006', '03631', '9', '10', '0', '49', '68'),
('1202007', '03632', '10', '12', '5', '51', '78'),
('1202008', '03633', '8', '8', '4', '40', '60'),
('1202009', '03634', '9', '7', '4', '28', '48'),
('1202010', '03635', '8', '6', '4', '37', '55'),
('1202011', '03636', '10', '8', '4', '29', '51'),
('1202012', '03637', '9', '10', '5', '48', '72'),
('1202013', '03638', '8', '6', '4', '44', '62');

-- --------------------------------------------------------

--
-- Table structure for table `cit220`
--

CREATE TABLE `cit220` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit220`
--

INSERT INTO `cit220` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '5', '5', '36', '56'),
('1202003', '03628', '10', '6', '0', '0', '16'),
('1202006', '03631', '10', '9', '0', '10', '29'),
('1202007', '03632', '10', '6', '4', '25', '45'),
('1202008', '03633', '10', '11', '5', '50', '76'),
('1202009', '03634', '10', '8', '5', '22', '45'),
('1202010', '03635', '10', '15', '5', '31', '61'),
('1202011', '03636', '10', '6', '0', '29', '45'),
('1202012', '03637', '10', '8', '4', '28', '50'),
('1202013', '03638', '10', '8', '5', '32', '55');

-- --------------------------------------------------------

--
-- Table structure for table `cit221`
--

CREATE TABLE `cit221` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit221`
--

INSERT INTO `cit221` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '12', '5', '43', '70'),
('1202003', '03628', '10', '12', '5', '44', '71'),
('1202006', '03631', '10', '11', '5', '38', '64'),
('1202007', '03632', '10', '13', '5', '62', '90'),
('1202008', '03633', '10', '12', '5', '49', '76'),
('1202009', '03634', '10', '8', '5', '41', '64'),
('1202010', '03635', '10', '10', '5', '42', '67'),
('1202011', '03636', '10', '9', '5', '33', '57'),
('1202012', '03637', '10', '13', '5', '52', '80'),
('1202013', '03638', '10', '13', '5', '46', '74');

-- --------------------------------------------------------

--
-- Table structure for table `cit222`
--

CREATE TABLE `cit222` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit222`
--

INSERT INTO `cit222` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '10', '5', '40', '65'),
('1202003', '03628', '10', '8', '5', '20', '43'),
('1202006', '03631', '10', '12', '5', '30', '57'),
('1202007', '03632', '10', '12', '5', '40', '67'),
('1202008', '03633', '10', '12', '5', '40', '67'),
('1202009', '03634', '10', '10', '5', '40', '65'),
('1202010', '03635', '10', '11', '5', '40', '66'),
('1202011', '03636', '10', '9', '5', '50', '74'),
('1202012', '03637', '10', '12', '5', '50', '77'),
('1202013', '03638', '10', '11', '5', '40', '66');

-- --------------------------------------------------------

--
-- Table structure for table `cit311`
--

CREATE TABLE `cit311` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit311`
--

INSERT INTO `cit311` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '9', '4', '30', '53'),
('1202003', '03628', '8', '7', '4', '22', '41'),
('1202006', '03631', '0', '7', '4', '22', '33'),
('1202007', '03632', '10', '6', '4', '32', '52'),
('1202008', '03633', '10', '12', '4', '44', '70'),
('1202009', '03634', '9', '6', '4', '16', '35'),
('1202010', '03635', '10', '9', '4', '19', '42'),
('1202011', '03636', '8', '7', '4', '30', '49'),
('1202012', '03637', '10', '10', '4', '46', '70'),
('1202013', '03638', '10', '12', '4', '47', '73');

-- --------------------------------------------------------

--
-- Table structure for table `cit312`
--

CREATE TABLE `cit312` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit312`
--

INSERT INTO `cit312` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '10', '4', '44', '68'),
('1202003', '03628', '8', '8', '4', '51', '71'),
('1202006', '03631', '0', '10', '4', '50', '64'),
('1202007', '03632', '10', '11', '4', '44', '69'),
('1202008', '03633', '10', '12', '4', '46', '72'),
('1202009', '03634', '9', '9', '4', '51', '73'),
('1202010', '03635', '10', '11', '4', '24', '49'),
('1202011', '03636', '8', '12', '4', '47', '71'),
('1202012', '03637', '10', '12', '4', '46', '72'),
('1202013', '03638', '10', '10', '4', '46', '70');

-- --------------------------------------------------------

--
-- Table structure for table `cit313`
--

CREATE TABLE `cit313` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit313`
--

INSERT INTO `cit313` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '13', '4', '34', '60'),
('1202003', '03628', '10', '13', '4', '25', '52'),
('1202006', '03631', '9', '12', '4', '16', '41'),
('1202007', '03632', '10', '12', '4', '33', '59'),
('1202008', '03633', '10', '13', '4', '38', '65'),
('1202009', '03634', '10', '11', '4', '29', '54'),
('1202010', '03635', '10', '11', '4', '20', '45'),
('1202011', '03636', '10', '11', '4', '0', '25'),
('1202012', '03637', '10', '14', '4', '46', '74'),
('1202013', '03638', '10', '14', '4', '40', '68');

-- --------------------------------------------------------

--
-- Table structure for table `cit315`
--

CREATE TABLE `cit315` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit315`
--

INSERT INTO `cit315` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '8', '5', '33', '56'),
('1202003', '03628', '10', '7', '5', '38', '60'),
('1202006', '03631', '10', '4', '5', '26', '45'),
('1202007', '03632', '10', '8', '5', '32', '55'),
('1202008', '03633', '9', '7', '4', '31', '51'),
('1202009', '03634', '9', '5', '4', '23', '41'),
('1202010', '03635', '9', '5', '4', '17', '35'),
('1202011', '03636', '9', '3', '4', '19', '35'),
('1202012', '03637', '9', '12', '4', '40', '65'),
('1202013', '03638', '9', '9', '4', '28', '50');

-- --------------------------------------------------------

--
-- Table structure for table `cit316`
--

CREATE TABLE `cit316` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit316`
--

INSERT INTO `cit316` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '2', '5', '50', '67'),
('1202003', '03628', '9', '4', '4', '48', '65'),
('1202006', '03631', '10', '7', '5', '46', '68'),
('1202007', '03632', '10', '6', '5', '56', '77'),
('1202008', '03633', '9', '5', '4', '52', '70'),
('1202009', '03634', '9', '6', '4', '47', '66'),
('1202010', '03635', '9', '4', '4', '43', '60'),
('1202011', '03636', '8', '5', '4', '41', '58'),
('1202012', '03637', '10', '7', '4', '49', '70'),
('1202013', '03638', '8', '2', '4', '41', '55');

-- --------------------------------------------------------

--
-- Table structure for table `cit320`
--

CREATE TABLE `cit320` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit320`
--

INSERT INTO `cit320` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '10', '4', '47', '71'),
('1202003', '03628', '10', '11', '4', '48', '73'),
('1202006', '03631', '10', '10', '4', '51', '75'),
('1202007', '03632', '10', '6', '4', '52', '72'),
('1202008', '03633', '10', '10', '4', '48', '72'),
('1202009', '03634', '10', '11', '4', '40', '65'),
('1202010', '03635', '10', '11', '4', '40', '65'),
('1202011', '03636', '10', '11', '4', '45', '70'),
('1202012', '03637', '10', '11', '4', '50', '75'),
('1202013', '03638', '10', '11', '4', '55', '80');

-- --------------------------------------------------------

--
-- Table structure for table `cit321`
--

CREATE TABLE `cit321` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit321`
--

INSERT INTO `cit321` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '15', '5', '47', '77'),
('1202003', '03628', '10', '9', '5', '43', '67'),
('1202006', '03631', '8', '9', '5', '34', '56'),
('1202007', '03632', '10', '14', '5', '46', '75'),
('1202008', '03633', '10', '15', '5', '58', '88'),
('1202009', '03634', '10', '14', '5', '36', '65'),
('1202010', '03635', '9', '14', '5', '39', '67'),
('1202011', '03636', '8', '10', '5', '48', '71'),
('1202012', '03637', '10', '13', '5', '52', '80'),
('1202013', '03638', '10', '14', '5', '44', '73');

-- --------------------------------------------------------

--
-- Table structure for table `cit322`
--

CREATE TABLE `cit322` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit322`
--

INSERT INTO `cit322` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '12', '3', '53', '78'),
('1202003', '03628', '10', '10', '4', '46', '70'),
('1202006', '03631', '9', '11', '4', '43', '67'),
('1202007', '03632', '10', '14', '4', '50', '78'),
('1202008', '03633', '10', '15', '4', '57', '86'),
('1202009', '03634', '10', '9', '3', '48', '70'),
('1202010', '03635', '10', '13', '3', '46', '72'),
('1202011', '03636', '9', '15', '3', '51', '78'),
('1202012', '03637', '10', '12', '4', '52', '78'),
('1202013', '03638', '10', '13', '4', '50', '77');

-- --------------------------------------------------------

--
-- Table structure for table `cit323`
--

CREATE TABLE `cit323` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit323`
--

INSERT INTO `cit323` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '9', '5', '38', '62'),
('1202003', '03628', '10', '12', '5', '37', '64'),
('1202006', '03631', '10', '12', '5', '43', '70'),
('1202007', '03632', '10', '11', '5', '28', '54'),
('1202008', '03633', '10', '12', '5', '50', '77'),
('1202009', '03634', '10', '10', '5', '31', '56'),
('1202010', '03635', '10', '12', '5', '30', '57'),
('1202011', '03636', '10', '12', '4', '38', '64'),
('1202012', '03637', '10', '13', '3', '35', '61'),
('1202013', '03638', '10', '13', '5', '43', '71');

-- --------------------------------------------------------

--
-- Table structure for table `cit324`
--

CREATE TABLE `cit324` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit324`
--

INSERT INTO `cit324` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '8', '5', '45', '68'),
('1202003', '03628', '10', '4', '4', '41', '59'),
('1202006', '03631', '10', '5', '5', '42', '62'),
('1202007', '03632', '10', '2', '5', '41', '58'),
('1202008', '03633', '10', '10', '5', '45', '70'),
('1202009', '03634', '10', '3', '4', '39', '56'),
('1202010', '03635', '10', '2', '6', '35', '53'),
('1202011', '03636', '10', '5', '5', '42', '62'),
('1202012', '03637', '10', '8', '3', '48', '69'),
('1202013', '03638', '10', '6', '5', '49', '70');

-- --------------------------------------------------------

--
-- Table structure for table `cit411`
--

CREATE TABLE `cit411` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit411`
--

INSERT INTO `cit411` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '13', '3', '53', '78'),
('1202003', '03628', '9', '13', '3', '31', '56'),
('1202006', '03631', '9', '13', '2', '38', '62'),
('1202007', '03632', '9', '13', '1', '25', '48'),
('1202008', '03633', '9', '14', '4', '64', '91'),
('1202009', '03634', '9', '13', '1', '24', '47'),
('1202010', '03635', '9', '13', '2', '34', '58'),
('1202011', '03636', '9', '13', '3', '48', '73'),
('1202012', '03637', '9', '12', '3', '42', '66'),
('1202013', '03638', '9', '14', '3', '34', '60');

-- --------------------------------------------------------

--
-- Table structure for table `cit412`
--

CREATE TABLE `cit412` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit412`
--

INSERT INTO `cit412` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '12', '4', '58', '82'),
('1202003', '03628', '7', '7', '3', '54', '71'),
('1202006', '03631', '7', '7', '3', '46', '63'),
('1202007', '03632', '7', '9', '4', '50', '70'),
('1202008', '03633', '8', '13', '4', '62', '87'),
('1202009', '03634', '7', '6', '3', '55', '71'),
('1202010', '03635', '7', '9', '3', '42', '61'),
('1202011', '03636', '7', '10', '3', '58', '78'),
('1202012', '03637', '8', '7', '3', '60', '78'),
('1202013', '03638', '8', '10', '3', '57', '78');

-- --------------------------------------------------------

--
-- Table structure for table `cit421`
--

CREATE TABLE `cit421` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit421`
--

INSERT INTO `cit421` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '8', '12', '4', '59', '83'),
('1202003', '03628', '8', '11', '4', '44', '67'),
('1202006', '03631', '7', '11', '4', '44', '66'),
('1202007', '03632', '7', '13', '5', '40', '65'),
('1202008', '03633', '10', '14', '5', '51', '80'),
('1202009', '03634', '8', '11', '4', '32', '55'),
('1202010', '03635', '8', '11', '4', '37', '60'),
('1202011', '03636', '10', '13', '5', '53', '81'),
('1202012', '03637', '8', '12', '4', '57', '81'),
('1202013', '03638', '10', '14', '5', '51', '80');

-- --------------------------------------------------------

--
-- Table structure for table `cit422`
--

CREATE TABLE `cit422` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit422`
--

INSERT INTO `cit422` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '13', '4', '53', '80'),
('1202003', '03628', '10', '12', '3', '52', '77'),
('1202006', '03631', '10', '11', '3', '48', '72'),
('1202007', '03632', '10', '14', '3', '50', '77'),
('1202008', '03633', '10', '14', '3', '59', '86'),
('1202009', '03634', '10', '12', '3', '52', '77'),
('1202010', '03635', '10', '13', '3', '52', '78'),
('1202011', '03636', '10', '12', '3', '52', '77'),
('1202012', '03637', '10', '14', '4', '52', '80'),
('1202013', '03638', '10', '12', '4', '54', '80');

-- --------------------------------------------------------

--
-- Table structure for table `cit423`
--

CREATE TABLE `cit423` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit423`
--

INSERT INTO `cit423` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '8', '5', '38', '60'),
('1202003', '03628', '10', '9', '5', '39', '63'),
('1202006', '03631', '6', '8', '5', '29', '48'),
('1202007', '03632', '10', '8', '5', '27', '50'),
('1202008', '03633', '10', '9', '5', '37', '61'),
('1202009', '03634', '10', '7', '5', '25', '47'),
('1202010', '03635', '9', '7', '5', '29', '50'),
('1202011', '03636', '8', '10', '5', '39', '62'),
('1202012', '03637', '10', '8', '5', '35', '58'),
('1202013', '03638', '9', '6', '5', '37', '57');

-- --------------------------------------------------------

--
-- Table structure for table `cse410`
--

CREATE TABLE `cse410` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse410`
--

INSERT INTO `cse410` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '15', '5', '40', '70'),
('1202003', '03628', '10', '15', '5', '30', '60'),
('1202006', '03631', '10', '15', '5', '32', '62'),
('1202007', '03632', '10', '15', '5', '28', '58'),
('1202008', '03633', '10', '15', '5', '40', '70'),
('1202009', '03634', '10', '15', '5', '35', '65'),
('1202010', '03635', '10', '15', '5', '40', '70'),
('1202011', '03636', '10', '15', '5', '27', '57'),
('1202012', '03637', '10', '15', '5', '41', '71'),
('1202013', '03638', '10', '15', '5', '41', '71');

-- --------------------------------------------------------

--
-- Table structure for table `cse412`
--

CREATE TABLE `cse412` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse412`
--

INSERT INTO `cse412` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '15', '5', '41', '71'),
('1202003', '03628', '10', '15', '5', '33', '63'),
('1202006', '03631', '10', '15', '5', '35', '65'),
('1202007', '03632', '10', '15', '5', '30', '60'),
('1202008', '03633', '10', '15', '5', '35', '65'),
('1202009', '03634', '10', '15', '5', '30', '60'),
('1202010', '03635', '10', '15', '5', '50', '80'),
('1202011', '03636', '10', '15', '5', '32', '62'),
('1202012', '03637', '10', '15', '5', '44', '74'),
('1202013', '03638', '10', '15', '5', '38', '68');

-- --------------------------------------------------------

--
-- Table structure for table `cse420`
--

CREATE TABLE `cse420` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse420`
--

INSERT INTO `cse420` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '15', '5', '48', '78'),
('1202003', '03628', '10', '15', '5', '27', '57'),
('1202006', '03631', '10', '15', '5', '32', '62'),
('1202007', '03632', '10', '15', '5', '30', '60'),
('1202008', '03633', '10', '15', '5', '43', '73'),
('1202009', '03634', '10', '15', '5', '43', '73'),
('1202010', '03635', '10', '15', '5', '37', '67'),
('1202011', '03636', '10', '15', '5', '27', '57'),
('1202012', '03637', '10', '15', '5', '40', '70'),
('1202013', '03638', '10', '15', '5', '40', '70');

-- --------------------------------------------------------

--
-- Table structure for table `cse421`
--

CREATE TABLE `cse421` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse421`
--

INSERT INTO `cse421` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '15', '5', '30', '60'),
('1202003', '03628', '10', '5', '5', '20', '40'),
('1202006', '03631', '10', '5', '5', '25', '45'),
('1202007', '03632', '10', '10', '5', '33', '58'),
('1202008', '03633', '10', '15', '5', '35', '65'),
('1202009', '03634', '10', '10', '5', '20', '45'),
('1202010', '03635', '10', '5', '5', '35', '55'),
('1202011', '03636', '10', '5', '5', '26', '46'),
('1202012', '03637', '10', '10', '5', '35', '60'),
('1202013', '03638', '10', '10', '5', '35', '60');

-- --------------------------------------------------------

--
-- Table structure for table `eee111`
--

CREATE TABLE `eee111` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee111`
--

INSERT INTO `eee111` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '15', '5', '37', '67'),
('1202003', '03628', '8', '7', '5', '13', '33'),
('1202006', '03631', '7', '8', '5', '0', '20'),
('1202007', '03632', '10', '5', '5', '14', '34'),
('1202008', '03633', '8', '6', '5', '44', '63'),
('1202009', '03634', '9', '9', '5', '30', '53'),
('1202010', '03635', '10', '8', '5', '17', '40'),
('1202011', '03636', '7', '8', '5', '13', '33'),
('1202012', '03637', '10', '8', '5', '47', '70'),
('1202013', '03638', '10', '7', '5', '34', '56');

-- --------------------------------------------------------

--
-- Table structure for table `eee112`
--

CREATE TABLE `eee112` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee112`
--

INSERT INTO `eee112` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '11', '5', '49', '75'),
('1202003', '03628', '10', '9', '5', '43', '67'),
('1202006', '03631', '8', '9', '5', '30', '52'),
('1202007', '03632', '10', '9', '5', '40', '64'),
('1202008', '03633', '10', '13', '5', '43', '71'),
('1202009', '03634', '10', '11', '5', '45', '71'),
('1202010', '03635', '10', '12', '5', '39', '66'),
('1202011', '03636', '8', '14', '5', '45', '72'),
('1202012', '03637', '10', '14', '5', '51', '80'),
('1202013', '03638', '10', '0', '5', '53', '68');

-- --------------------------------------------------------

--
-- Table structure for table `eee121`
--

CREATE TABLE `eee121` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee121`
--

INSERT INTO `eee121` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '5', '5', '20', '40'),
('1202003', '03628', '7', '5', '5', '20', '37'),
('1202006', '03631', '7', '5', '5', '20', '37'),
('1202007', '03632', '10', '10', '5', '25', '50'),
('1202008', '03633', '10', '10', '5', '35', '60'),
('1202009', '03634', '10', '10', '5', '25', '50'),
('1202010', '03635', '10', '5', '5', '25', '45'),
('1202011', '03636', '10', '5', '5', '20', '40'),
('1202012', '03637', '10', '15', '5', '40', '70'),
('1202013', '03638', '10', '10', '5', '35', '60');

-- --------------------------------------------------------

--
-- Table structure for table `eee122`
--

CREATE TABLE `eee122` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee122`
--

INSERT INTO `eee122` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '15', '5', '45', '75'),
('1202003', '03628', '10', '10', '5', '40', '65'),
('1202006', '03631', '7', '7', '3', '20', '37'),
('1202007', '03632', '10', '10', '5', '45', '70'),
('1202008', '03633', '10', '15', '5', '45', '75'),
('1202009', '03634', '10', '10', '5', '35', '60'),
('1202010', '03635', '7', '8', '5', '30', '50'),
('1202011', '03636', '7', '7', '3', '20', '37'),
('1202012', '03637', '10', '15', '5', '50', '80'),
('1202013', '03638', '10', '15', '5', '45', '75');

-- --------------------------------------------------------

--
-- Table structure for table `eee211`
--

CREATE TABLE `eee211` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee211`
--

INSERT INTO `eee211` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '10', '5', '41', '65'),
('1202003', '03628', '9', '3', '4', '12', '28'),
('1202006', '03631', '7', '0', '3', '0', '10'),
('1202007', '03632', '10', '6', '5', '36', '57'),
('1202008', '03633', '9', '5', '4', '35', '53'),
('1202009', '03634', '10', '1', '4', '25', '40'),
('1202010', '03635', '9', '3', '4', '18', '34'),
('1202011', '03636', '9', '6', '3', '29', '47'),
('1202012', '03637', '9', '9', '4', '45', '67'),
('1202013', '03638', '9', '7', '4', '36', '56');

-- --------------------------------------------------------

--
-- Table structure for table `eee212`
--

CREATE TABLE `eee212` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee212`
--

INSERT INTO `eee212` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '6', '3', '54', '73'),
('1202003', '03628', '10', '3', '4', '48', '65'),
('1202006', '03631', '8', '3', '2', '48', '61'),
('1202007', '03632', '10', '5', '5', '50', '70'),
('1202008', '03633', '10', '3', '4', '53', '70'),
('1202009', '03634', '10', '3', '3', '50', '66'),
('1202010', '03635', '10', '2', '4', '52', '68'),
('1202011', '03636', '10', '2', '0', '43', '55'),
('1202012', '03637', '10', '7', '3', '55', '75'),
('1202013', '03638', '10', '7', '4', '47', '68');

-- --------------------------------------------------------

--
-- Table structure for table `eee321`
--

CREATE TABLE `eee321` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee321`
--

INSERT INTO `eee321` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '14', '5', '38', '67'),
('1202003', '03628', '10', '8', '5', '28', '51'),
('1202006', '03631', '10', '9', '4', '36', '59'),
('1202007', '03632', '10', '8', '4', '31', '53'),
('1202008', '03633', '10', '13', '5', '47', '75'),
('1202009', '03634', '10', '7', '5', '28', '50'),
('1202010', '03635', '10', '6', '5', '28', '49'),
('1202011', '03636', '10', '10', '3', '42', '65'),
('1202012', '03637', '10', '12', '5', '43', '70'),
('1202013', '03638', '10', '8', '4', '36', '58');

-- --------------------------------------------------------

--
-- Table structure for table `eee322`
--

CREATE TABLE `eee322` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee322`
--

INSERT INTO `eee322` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '10', '5', '35', '60'),
('1202003', '03628', '10', '10', '5', '35', '60'),
('1202006', '03631', '10', '10', '5', '30', '55'),
('1202007', '03632', '10', '10', '5', '30', '55'),
('1202008', '03633', '10', '10', '5', '40', '65'),
('1202009', '03634', '10', '10', '5', '25', '50'),
('1202010', '03635', '10', '10', '5', '20', '45'),
('1202011', '03636', '10', '10', '5', '30', '55'),
('1202012', '03637', '10', '15', '5', '50', '80'),
('1202013', '03638', '10', '10', '5', '40', '65');

-- --------------------------------------------------------

--
-- Table structure for table `lcm121`
--

CREATE TABLE `lcm121` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lcm121`
--

INSERT INTO `lcm121` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '10', '5', '30', '55'),
('1202003', '03628', '10', '5', '5', '25', '45'),
('1202006', '03631', '10', '5', '5', '30', '50'),
('1202007', '03632', '10', '10', '5', '40', '65'),
('1202008', '03633', '10', '10', '5', '40', '65'),
('1202009', '03634', '10', '5', '5', '30', '50'),
('1202010', '03635', '10', '5', '5', '35', '55'),
('1202011', '03636', '10', '5', '5', '30', '50'),
('1202012', '03637', '10', '15', '5', '35', '65'),
('1202013', '03638', '7', '8', '5', '40', '60');

-- --------------------------------------------------------

--
-- Table structure for table `mat221`
--

CREATE TABLE `mat221` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `math111`
--

CREATE TABLE `math111` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `math111`
--

INSERT INTO `math111` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '9', '4', '23', '45'),
('1202003', '03628', '9', '2', '4', '4', '19'),
('1202006', '03631', '8', '2', '4', '11', '25'),
('1202007', '03632', '9', '9', '4', '0', '22'),
('1202008', '03633', '10', '11', '4', '45', '70'),
('1202009', '03634', '10', '9', '4', '33', '56'),
('1202010', '03635', '10', '2', '4', '38', '54'),
('1202011', '03636', '9', '4', '4', '23', '40'),
('1202012', '03637', '10', '9', '4', '41', '64'),
('1202013', '03638', '10', '9', '4', '27', '50');

-- --------------------------------------------------------

--
-- Table structure for table `math121`
--

CREATE TABLE `math121` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `math121`
--

INSERT INTO `math121` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '10', '5', '35', '60'),
('1202003', '03628', '10', '5', '5', '20', '40'),
('1202006', '03631', '7', '5', '5', '20', '37'),
('1202007', '03632', '10', '10', '5', '35', '60'),
('1202008', '03633', '10', '15', '5', '45', '75'),
('1202009', '03634', '10', '10', '5', '40', '65'),
('1202010', '03635', '10', '10', '5', '25', '50'),
('1202011', '03636', '10', '10', '5', '35', '60'),
('1202012', '03637', '10', '15', '5', '40', '70'),
('1202013', '03638', '10', '10', '5', '40', '65');

-- --------------------------------------------------------

--
-- Table structure for table `math211`
--

CREATE TABLE `math211` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `math211`
--

INSERT INTO `math211` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '13', '5', '40', '67'),
('1202003', '03628', '10', '11', '5', '15', '41'),
('1202006', '03631', '9', '9', '5', '8', '31'),
('1202007', '03632', '10', '9', '5', '40', '64'),
('1202008', '03633', '9', '13', '5', '57', '84'),
('1202009', '03634', '9', '10', '5', '20', '44'),
('1202010', '03635', '10', '7', '5', '29', '51'),
('1202011', '03636', '10', '11', '5', '34', '60'),
('1202012', '03637', '10', '12', '5', '48', '75'),
('1202013', '03638', '10', '12', '5', '52', '79');

-- --------------------------------------------------------

--
-- Table structure for table `math221`
--

CREATE TABLE `math221` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `math221`
--

INSERT INTO `math221` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '4', '4', '27', '45'),
('1202003', '03628', '10', '4', '4', '10', '28'),
('1202006', '03631', '9', '3', '2', '7', '21'),
('1202007', '03632', '10', '5', '4', '23', '42'),
('1202008', '03633', '10', '8', '4', '31', '53'),
('1202009', '03634', '10', '4', '4', '28', '46'),
('1202010', '03635', '9', '4', '4', '16', '33'),
('1202011', '03636', '8', '2', '3', '21', '34'),
('1202012', '03637', '9', '8', '4', '33', '54'),
('1202013', '03638', '10', '9', '4', '26', '49');

-- --------------------------------------------------------

--
-- Table structure for table `phy111`
--

CREATE TABLE `phy111` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phy111`
--

INSERT INTO `phy111` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '10', '5', '17', '41'),
('1202003', '03628', '9', '10', '5', '12', '36'),
('1202006', '03631', '9', '10', '5', '23', '47'),
('1202007', '03632', '10', '11', '5', '43', '69'),
('1202008', '03633', '10', '12', '5', '21', '48'),
('1202009', '03634', '9', '11', '5', '34', '59'),
('1202010', '03635', '10', '10', '5', '16', '41'),
('1202011', '03636', '8', '6', '5', '26', '45'),
('1202012', '03637', '10', '12', '4', '58', '84'),
('1202013', '03638', '9', '11', '5', '41', '66');

-- --------------------------------------------------------

--
-- Table structure for table `phy112`
--

CREATE TABLE `phy112` (
  `ID` varchar(20) NOT NULL,
  `Registration` varchar(20) NOT NULL,
  `Attendance` varchar(20) NOT NULL,
  `Mid` varchar(20) NOT NULL,
  `Assignment` varchar(20) NOT NULL,
  `Final` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phy112`
--

INSERT INTO `phy112` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '5', '5', '51', '71'),
('1202003', '03628', '10', '6', '5', '37', '58'),
('1202006', '03631', '10', '6', '5', '43', '64'),
('1202007', '03632', '10', '8', '5', '49', '72'),
('1202008', '03633', '7', '8', '5', '51', '71'),
('1202009', '03634', '10', '9', '5', '41', '65'),
('1202010', '03635', '10', '3', '8', '43', '64'),
('1202011', '03636', '10', '4', '5', '41', '60'),
('1202012', '03637', '10', '11', '5', '51', '77'),
('1202013', '03638', '10', '9', '5', '52', '76');

-- --------------------------------------------------------

--
-- Table structure for table `phy121`
--

CREATE TABLE `phy121` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phy121`
--

INSERT INTO `phy121` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '9', '9', '4', '38', '60'),
('1202003', '03628', '8', '5', '2', '30', '45'),
('1202006', '03631', '8', '8', '4', '30', '50'),
('1202007', '03632', '10', '15', '5', '45', '75'),
('1202008', '03633', '10', '15', '5', '45', '75'),
('1202009', '03634', '10', '10', '5', '40', '65'),
('1202010', '03635', '10', '5', '5', '35', '55'),
('1202011', '03636', '8', '7', '5', '40', '60'),
('1202012', '03637', '10', '15', '5', '50', '80'),
('1202013', '03638', '10', '15', '5', '45', '75');

-- --------------------------------------------------------

--
-- Table structure for table `phy122`
--

CREATE TABLE `phy122` (
  `ID` varchar(50) NOT NULL,
  `Registration` varchar(50) NOT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Mid` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `Final` varchar(55) DEFAULT NULL,
  `Total` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phy122`
--

INSERT INTO `phy122` (`ID`, `Registration`, `Attendance`, `Mid`, `Assignment`, `Final`, `Total`) VALUES
('1202002', '03627', '10', '15', '5', '35', '65'),
('1202003', '03628', '10', '15', '5', '40', '70'),
('1202006', '03631', '7', '3', '5', '22', '37'),
('1202007', '03632', '10', '15', '5', '40', '70'),
('1202008', '03633', '10', '15', '5', '40', '70'),
('1202009', '03634', '10', '15', '5', '40', '70'),
('1202010', '03635', '10', '15', '5', '40', '70'),
('1202011', '03636', '7', '3', '5', '22', '37'),
('1202012', '03637', '10', '15', '5', '50', '80'),
('1202013', '03638', '10', '15', '5', '50', '80');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a`
--
ALTER TABLE `a`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ab`
--
ALTER TABLE `ab`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `aes221`
--
ALTER TABLE `aes221`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ais211`
--
ALTER TABLE `ais211`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce112`
--
ALTER TABLE `cce112`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce121`
--
ALTER TABLE `cce121`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce122`
--
ALTER TABLE `cce122`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce211`
--
ALTER TABLE `cce211`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce221`
--
ALTER TABLE `cce221`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce222`
--
ALTER TABLE `cce222`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce223`
--
ALTER TABLE `cce223`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce224`
--
ALTER TABLE `cce224`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce310`
--
ALTER TABLE `cce310`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce311`
--
ALTER TABLE `cce311`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce312`
--
ALTER TABLE `cce312`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce313`
--
ALTER TABLE `cce313`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce314`
--
ALTER TABLE `cce314`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce321`
--
ALTER TABLE `cce321`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce322`
--
ALTER TABLE `cce322`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce323`
--
ALTER TABLE `cce323`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce411`
--
ALTER TABLE `cce411`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce413`
--
ALTER TABLE `cce413`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce415`
--
ALTER TABLE `cce415`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce416`
--
ALTER TABLE `cce416`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce417`
--
ALTER TABLE `cce417`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce421`
--
ALTER TABLE `cce421`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cce423`
--
ALTER TABLE `cce423`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `che111`
--
ALTER TABLE `che111`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `che112`
--
ALTER TABLE `che112`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit111`
--
ALTER TABLE `cit111`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit112`
--
ALTER TABLE `cit112`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit121`
--
ALTER TABLE `cit121`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit211`
--
ALTER TABLE `cit211`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit212`
--
ALTER TABLE `cit212`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit213`
--
ALTER TABLE `cit213`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit220`
--
ALTER TABLE `cit220`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit221`
--
ALTER TABLE `cit221`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit222`
--
ALTER TABLE `cit222`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit311`
--
ALTER TABLE `cit311`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit312`
--
ALTER TABLE `cit312`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit313`
--
ALTER TABLE `cit313`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit315`
--
ALTER TABLE `cit315`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit316`
--
ALTER TABLE `cit316`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit320`
--
ALTER TABLE `cit320`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit321`
--
ALTER TABLE `cit321`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit322`
--
ALTER TABLE `cit322`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit323`
--
ALTER TABLE `cit323`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit324`
--
ALTER TABLE `cit324`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit411`
--
ALTER TABLE `cit411`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit412`
--
ALTER TABLE `cit412`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit421`
--
ALTER TABLE `cit421`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit422`
--
ALTER TABLE `cit422`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cit423`
--
ALTER TABLE `cit423`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cse410`
--
ALTER TABLE `cse410`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cse412`
--
ALTER TABLE `cse412`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cse420`
--
ALTER TABLE `cse420`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cse421`
--
ALTER TABLE `cse421`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eee111`
--
ALTER TABLE `eee111`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eee112`
--
ALTER TABLE `eee112`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eee121`
--
ALTER TABLE `eee121`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eee122`
--
ALTER TABLE `eee122`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eee211`
--
ALTER TABLE `eee211`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eee212`
--
ALTER TABLE `eee212`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eee321`
--
ALTER TABLE `eee321`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eee322`
--
ALTER TABLE `eee322`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lcm121`
--
ALTER TABLE `lcm121`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mat221`
--
ALTER TABLE `mat221`
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

--
-- Indexes for table `math211`
--
ALTER TABLE `math211`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `math221`
--
ALTER TABLE `math221`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phy111`
--
ALTER TABLE `phy111`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phy112`
--
ALTER TABLE `phy112`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phy121`
--
ALTER TABLE `phy121`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phy122`
--
ALTER TABLE `phy122`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
