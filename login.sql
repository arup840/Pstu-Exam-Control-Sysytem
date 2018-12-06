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
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `UserName` varchar(20) NOT NULL,
  `Password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`UserName`, `Password`) VALUES
('PSTU', 123),
('PSTU1', 12),
('PSTU2', 1234),
('Hossen', 123);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE `teacher_login` (
  `Faculty` mediumtext NOT NULL,
  `Course_Code` mediumtext NOT NULL,
  `Password` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`Faculty`, `Course_Code`, `Password`) VALUES
('CSE', 'CCE112', '123'),
('AG', 'AH111', '123'),
('CSE', 'CCE112', '123'),
('AG', 'AH111', '123'),
('CSE', 'PHY111', '12'),
('CSE', 'PHY112', '12'),
('CSE', 'CHE111', '12'),
('CSE', 'CHE112', '12'),
('CSE', 'EEE111', '12'),
('CSE', 'EEE112', '12'),
('CSE', 'CIT111', '12'),
('CSE', 'CIT112', '12'),
('CSE', 'MAT111', '12'),
('CSE', 'MATH111', '1234'),
('CSE', 'MATH121', '123'),
('CSE', 'EEE121', '12'),
('CSE', 'EEE122', '12'),
('CSE', 'CCE121', '12'),
('CSE', 'CCE122', '12'),
('CSE', 'PHY121', '12'),
('CSE', 'PHY122', '12'),
('CSE', 'LCM121', '12'),
('CSE', 'CIT121', '12'),
('CSE', 'CIT211', '12'),
('CSE', 'CIT212', '12'),
('CSE', 'CIT213', '12'),
('CSE', 'CCE211', '12'),
('CSE', 'MATH211', '12'),
('CSE', 'EEE211', '12'),
('CSE', 'EEE212', '12'),
('CSE', 'AIS211', '12'),
('CSE', 'CCE221', '12'),
('CSE', 'CCE222', '12'),
('CSE', 'CCE223', '12'),
('CSE', 'CCE223', '12'),
('CSE', 'CCE224', '12'),
('CSE', 'AES221', '12'),
('CSE', 'MATH221', '12'),
('CSE', 'CIT220', '12'),
('CSE', 'CIT221', '12'),
('CSE', 'CIT222', '12'),
('CSE', 'CIT311', '12'),
('CSE', 'CIT312', '12'),
('CSE', 'CIT313', '12'),
('CSE', 'CIT315', '12'),
('CSE', 'CIT316', '12'),
('CSE', 'CCE310', '12'),
('CSE', 'CCE311', '12'),
('CSE', 'CCE312', '12'),
('CSE', 'CCE313', '12'),
('CSE', 'CCE314', '12'),
('CSE', 'CIT320', '12'),
('CSE', 'CIT321', '12'),
('CSE', 'CIT322', '12'),
('CSE', 'CIT323', '12'),
('CSE', 'CIT324', '12'),
('CSE', 'EEE321', '12'),
('CSE', 'EEE322', '12'),
('CSE', 'CCE321', '12'),
('CSE', 'CCE322', '12'),
('CSE', 'CCE323', '12'),
('CSE', 'CSE410', '12'),
('CSE', 'CSE412', '12'),
('CSE', 'CCE411', '12'),
('CSE', 'CCE413', '12'),
('CSE', 'CCE415', '12'),
('CSE', 'CCE416', '12'),
('CSE', 'CCE417', '12'),
('CSE', 'CIT411', '12'),
('CSE', 'CIT412', '12'),
('CSE', 'CCE421', '12'),
('CSE', 'CCE423', '12'),
('CSE', 'CIT421', '12'),
('CSE', 'CIT423', '12'),
('CSE', 'CIT422', '12'),
('CSE', 'CSE421', '12'),
('CSE', 'CSE420', '12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
