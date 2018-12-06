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
-- Database: `pstu`
--

-- --------------------------------------------------------

--
-- Table structure for table `agriculturecredit`
--

CREATE TABLE `agriculturecredit` (
  `ID` varchar(25) NOT NULL,
  `S1` varchar(25) DEFAULT NULL,
  `S2` varchar(25) DEFAULT NULL,
  `S3` varchar(25) DEFAULT NULL,
  `S4` varchar(25) DEFAULT NULL,
  `S5` varchar(25) DEFAULT NULL,
  `S6` varchar(25) DEFAULT NULL,
  `S7` varchar(25) DEFAULT NULL,
  `S8` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agriculturestudentinto`
--

CREATE TABLE `agriculturestudentinto` (
  `Name` varchar(20) DEFAULT NULL,
  `Registration` varchar(20) DEFAULT NULL,
  `Roll` varchar(25) DEFAULT NULL,
  `Faculty` varchar(25) DEFAULT NULL,
  `Session` varchar(25) DEFAULT NULL,
  `1st_Semester` varchar(25) DEFAULT NULL,
  `2nd_Semester` varchar(25) DEFAULT NULL,
  `3rd_Semester` varchar(25) DEFAULT NULL,
  `4th_Semester` varchar(25) DEFAULT NULL,
  `5th_Semester` varchar(25) DEFAULT NULL,
  `6th_Semester` varchar(25) DEFAULT NULL,
  `7th_Semester` varchar(25) DEFAULT NULL,
  `8th_Semester` varchar(25) DEFAULT NULL,
  `S1` varchar(25) DEFAULT NULL,
  `S2` varchar(25) DEFAULT NULL,
  `S3` varchar(25) DEFAULT NULL,
  `S4` varchar(25) DEFAULT NULL,
  `S5` varchar(25) DEFAULT NULL,
  `S6` varchar(25) DEFAULT NULL,
  `S7` varchar(25) DEFAULT NULL,
  `S8` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses1`
--

CREATE TABLE `courses1` (
  `Faculty` varchar(50) NOT NULL,
  `Course_Code` varchar(999) NOT NULL,
  `Course_Title` varchar(999) NOT NULL,
  `Credit_Hours` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses1`
--

INSERT INTO `courses1` (`Faculty`, `Course_Code`, `Course_Title`, `Credit_Hours`) VALUES
('CSE', 'PHY111', 'Physics-1', '3.00'),
('CSE', 'PHY112', 'Physics-I Sessional', '.75'),
('CSE', 'CHE111', 'Chemistry', '3.00'),
('CSE', 'CHE112', 'Inorganic Quantitative Analysis', '.75'),
('CSE', 'MATH111', 'Mathematics-1', '3.00'),
('CSE', 'EEE111', 'Basic Electrical Engineering', '3.00'),
('CSE', 'EEE112', 'Basic Electrical Engineering Sessional', '1.50'),
('CSE', 'CIT111', 'Programming language', '3.00'),
('CSE', 'CIT112', 'Programming language Sessional', '1.50'),
('CSE', 'CCE112', 'Engineering Drawing', '.75'),
('CSE', 'PHY121', 'Physics-II', '3'),
('CSE', 'PHY122', 'Physics-II Sessional', '.75'),
('CSE', 'MATH121', 'Mathematics-II', '3'),
('CSE', 'CIT121', 'Discrete Mathematics', '3'),
('CSE', 'LCM121', 'Communicative English', '2'),
('CSE', 'EEE121', 'Electronic Device and Circuits', '3'),
('CSE', 'EEE122', 'Electronic Device and Circuits Sessional', '1.5'),
('CSE', 'CCE121', 'Object Oriented Programming', '3'),
('CSE', 'CCE122', 'Object Oriented Programming Sessional', '1.5'),
('CSE', 'CIT211', 'Data Structure and Algorithms', '3.00'),
('CSE', 'CIT212', 'Data Structure and Algorithms Sessional', '1.50'),
('CSE', 'CIT213', 'Software Engineering', '3.00'),
('CSE', 'CCE211', 'Data Communication and Engineering', '3.00'),
('CSE', 'EEE211', 'Electrical Technology', '3.00'),
('CSE', 'EEE212', 'Electrical Technology Sessional', '1.50'),
('CSE', 'AIS211', 'Accounting and Management', '3.00'),
('CSE', 'CCE221', 'Digital Logic Design', '3.00'),
('CSE', 'CCE222', 'Digital Logic Design Sessional', '1.50'),
('CSE', 'CCE223', 'Database System', '3.00'),
('CSE', 'CCE224', 'Database System Sessional', '1.50'),
('CSE', 'AES221', 'Government and Economics', '3.00'),
('CSE', 'CIT220', 'Web Programming Project', '1.50'),
('CSE', 'CIT221', 'Information System Analysis and Design', '3.00'),
('CSE', 'CIT222', 'Information System Analysis and Design Sessional', '1.50'),
('CSE', 'CIT311', 'Microprocessors and Assembly Language', '3.00'),
('CSE', 'CIT312', 'Microprocessors and Assembly Language Sessional', '1.50'),
('CSE', 'CIT313', 'Computer Organization and Architecture', '3.00'),
('CSE', 'CIT315', 'Artificial Intelligence', '3.00'),
('CSE', 'CIT316', 'Artificial Intelligence Sessional', '1.50'),
('CSE', 'CCE310', 'Software Development Project I', '1.50'),
('CSE', 'CCE311', 'Numerical Methods ', '3.00'),
('CSE', 'CCE312', 'Numerical Methods Sessional', '0.75'),
('CSE', 'CCE313', 'Computer Networks', '3.00'),
('CSE', 'CCE314', 'Computer Networks Sessional', '1.50'),
('CSE', 'CIT320', 'Software Development Project II', '1.50'),
('CSE', 'CIT321', 'Operating System', '3.00'),
('CSE', 'CIT322', 'Operating System Sessional', '1.50'),
('CSE', 'CIT323', 'Simulation and Modeling', '3.00'),
('CSE', 'CIT324', 'Simulation and Modeling sessional', '1.50'),
('CSE', 'EEE321', 'Digital Electronics and Pulse Techniques', '3.00'),
('CSE', 'EEE322', 'Digital Electronics and Pulse Techniques Sessional', '0.75'),
('CSE', 'CCE321', 'Computer Peripheral and Interfacing', '3.00'),
('CSE', 'CCE322', 'Computer Peripheral and Interfacing Sessional', '1.50'),
('CSE', 'CCE323', 'Optical Fiber Communication', '3.00'),
('CSE', 'CSE410', 'Project/Thesis', '3.00'),
('CSE', 'CSE412', 'Industrial Training', '1.00'),
('CSE', 'CCE411', 'Algorithm Engineering', '3.00'),
('CSE', 'CCE413', 'VLSI Design', '3.00'),
('CSE', 'CCE415', 'Network Routing and Switching', '3.00'),
('CSE', 'CCE416', 'Network Routing and Switching Sessional', '1.50'),
('CSE', 'CCE417', 'Data Warehousing and Mining', '3.00'),
('CSE', 'CIT411', 'Computer Design and Automata Theory', '3.00'),
('CSE', 'CIT412', 'Computer Design and Automata Theory Sessional', '1.50'),
('CSE', 'CCE421', 'Cryptography and Network Security', '3.00'),
('CSE', 'CCE423', 'Wireless and Cellular Communication', '3.00'),
('CSE', 'CIT421', 'Computer Graphics and Image Processing', '3.00'),
('CSE', 'CIT423', 'Machine Learning', '3.00'),
('CSE', 'CIT422', 'Computer Graphics and Image Processing Sessional', '0.75'),
('CSE', 'CSE421', 'Seminar', '0.75'),
('CSE', 'CSE420', 'Project/Thesis', '3.00'),
('CSE', 'MATH211', 'Mathematics III', '3.00'),
('CSE', 'MATH221', 'Mathematics IV', '3.00'),
('CSE', 'CSE', 'CSE', 'CSE'),
('CSE', 'a', 'a', '1');

-- --------------------------------------------------------

--
-- Table structure for table `credit1`
--

CREATE TABLE `credit1` (
  `ID` varchar(200) NOT NULL,
  `S1` varchar(200) DEFAULT NULL,
  `S2` varchar(200) DEFAULT NULL,
  `S3` varchar(200) DEFAULT NULL,
  `S4` varchar(200) DEFAULT NULL,
  `S5` varchar(200) DEFAULT NULL,
  `S6` varchar(200) DEFAULT NULL,
  `S7` varchar(200) DEFAULT NULL,
  `S8` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit1`
--

INSERT INTO `credit1` (`ID`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `S7`, `S8`) VALUES
('1202002', '20.25', '41.0', '62.0', '83.0', '104.75', '126.5', '148.5', '165.0'),
('1202003', '6.75', '20.0', '30.5', '42.5', '64.25', '86.0', '108.0', '124.5'),
('1202006', '9.75', '17.75', '28.25', '41.75', '60.5', '82.25', '104.25', '120.75'),
('1202007', '14.25', '35.0', '56.0', '74.0', '95.75', '117.5', '139.5', '153.0'),
('1202008', '20.25', '41.0', '62.0', '83.0', '104.75', '126.5', '148.5', '165.0'),
('1202009', '17.25', '38.0', '56.0', '77.0', '95.75', '117.5', '139.5', '156.0'),
('1202010', '15.75', '36.5', '54.5', '72.5', '91.25', '113.0', '132.0', '148.5'),
('1202011', '15.75', '29.75', '50.75', '68.75', '84.5', '106.25', '128.25', '144.75'),
('1202012', '20.25', '41.0', '62.0', '83.0', '104.75', '126.5', '148.5', '165.0'),
('1202013', '20.25', '41.0', '62.0', '83.0', '104.75', '126.5', '148.5', '165.0');

-- --------------------------------------------------------

--
-- Table structure for table `student1`
--

CREATE TABLE `student1` (
  `Name` varchar(99) DEFAULT NULL,
  `Registration` varchar(50) DEFAULT NULL,
  `Roll` varchar(50) NOT NULL,
  `Faculty` varchar(50) DEFAULT NULL,
  `Session` varchar(50) DEFAULT NULL,
  `1st_Semester` float DEFAULT NULL,
  `2nd_Semester` varchar(100) DEFAULT NULL,
  `3rd_Semester` varchar(100) DEFAULT NULL,
  `4th_Semester` varchar(100) DEFAULT NULL,
  `5th_Semester` varchar(100) DEFAULT NULL,
  `6th_Semester` varchar(100) DEFAULT NULL,
  `7th_Semester` varchar(100) DEFAULT NULL,
  `8th_Semester` varchar(100) DEFAULT NULL,
  `S1` varchar(100) DEFAULT NULL,
  `S2` varchar(100) DEFAULT NULL,
  `S3` varchar(100) DEFAULT NULL,
  `S4` varchar(100) DEFAULT NULL,
  `S5` varchar(100) DEFAULT NULL,
  `S6` varchar(100) DEFAULT NULL,
  `S7` varchar(100) DEFAULT NULL,
  `S8` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student1`
--

INSERT INTO `student1` (`Name`, `Registration`, `Roll`, `Faculty`, `Session`, `1st_Semester`, `2nd_Semester`, `3rd_Semester`, `4th_Semester`, `5th_Semester`, `6th_Semester`, `7th_Semester`, `8th_Semester`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `S7`, `S8`) VALUES
('MD. SHAHIN  HOWLADER', '03627', '1202002', 'CSE', '2012-2013', 2.85185, '2.8403614457831323', '3.2857142857142856', '3.0', '3.103448275862069', '3.3620689655172415', '3.4318181818181817', '3.272727272727273', '2.8518518518518516', '2.8460365853658534', '2.994959677419355', '2.996234939759036', '3.018496420047733', '3.077569169960474', '3.130050505050505', '3.144318181818182'),
('NAFIUL  ISLAM', '03628', '1202003', 'CSE', '2012-2013', 2.88889, '2.3207547169811322', '2.4642857142857144', '2.90625', '2.896551724137931', '3.086206896551724', '2.914772727272727', '2.715909090909091', '2.888888888888889', '2.5125', '2.4959016393442623', '2.611764705882353', '2.708171206225681', '2.803779069767442', '2.826388888888889', '2.8117469879518073'),
('MD. NOMAN  KHAN', '03631', '1202006', 'CSE', '2012-2013', 2.42308, '2.3125', '2.5', '2.8055555555555554', '2.73', '3.2672413793103448', '2.9431818181818183', '2.5795454545454546', '2.423076923076923', '2.3732394366197185', '2.420353982300885', '2.5449101796407185', '2.602272727272727', '2.778115501519757', '2.8129496402877696', '2.781055900621118'),
('SUTAPA  BACHHAR', '03632', '1202007', 'CSE', '2012-2013', 2.92105, '2.933734939759036', '3.1785714285714284', '2.875', '2.9913793103448274', '3.2327586206896552', '2.8806818181818183', '2.861111111111111', '2.9210526315789473', '2.9285714285714284', '3.0223214285714284', '2.9864864864864864', '2.9875979112271542', '3.032978723404255', '3.0089605734767026', '2.9959150326797386'),
('SUDIPTA  MITRO', '03633', '1202008', 'CSE', '2012-2013', 3.2963, '3.3493975903614457', '3.357142857142857', '3.107142857142857', '3.3189655172413794', '3.7672413793103448', '3.846590909090909', '3.3295454545454546', '3.2962962962962963', '3.323170731707317', '3.3346774193548385', '3.2771084337349397', '3.285799522673031', '3.3685770750988144', '3.4393939393939394', '3.4284090909090907'),
('TUSHER  GAIN', '03634', '1202009', 'CSE', '2012-2013', 2.90217, '2.8433734939759034', '2.6041666666666665', '2.5892857142857144', '2.76', '2.896551724137931', '2.6931818181818183', '2.6363636363636362', '2.902173913043478', '2.870065789473684', '2.7845982142857144', '2.731331168831169', '2.7369451697127936', '2.766489361702128', '2.754928315412186', '2.7423878205128207'),
('PRASENJIT   CHAKMA', '03635', '1202010', 'CSE', '2012-2013', 2.55952, '2.5421686746987953', '2.5833333333333335', '2.7708333333333335', '2.49', '2.9051724137931036', '2.8947368421052633', '2.6136363636363638', '2.5595238095238093', '2.5496575342465753', '2.5607798165137616', '2.6129310344827585', '2.5876712328767124', '2.648783185840708', '2.684185606060606', '2.6763468013468015'),
('MD. MONTASIR  TASNEEM  ', '03636', '1202011', 'CSE', '2012-2013', 2.57143, '2.5', '2.625', '2.6458333333333335', '2.857142857142857', '3.25', '3.2386363636363638', '3.0454545454545454', '2.5714285714285716', '2.53781512605042', '2.5738916256157633', '2.5927272727272728', '2.6420118343195265', '2.7664705882352942', '2.8474658869395713', '2.870034542314335'),
('MD. HEMAET  UDDIN', '03637', '1202012', 'CSE', '2012-2013', 3.42593, '3.566265060240964', '3.4285714285714284', '3.3392857142857144', '3.5172413793103448', '3.6551724137931036', '3.5511363636363638', '3.272727272727273', '3.425925925925926', '3.4969512195121952', '3.473790322580645', '3.4397590361445785', '3.455847255369928', '3.4901185770750986', '3.499158249158249', '3.4765151515151516'),
('MD. ABDUR  RAHMAN  RONY', '03638', '1202013', 'CSE', '2012-2013', 3.08333, '3.1987951807228914', '3.3035714285714284', '3.0535714285714284', '3.2586206896551726', '3.456896551724138', '3.4545454545454546', '3.1818181818181817', '3.0833333333333335', '3.1417682926829267', '3.1965725806451615', '3.1603915662650603', '3.1807875894988067', '3.2282608695652173', '3.2617845117845117', '3.253787878787879'),
('A', 'A', 'A', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agriculturecredit`
--
ALTER TABLE `agriculturecredit`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `credit1`
--
ALTER TABLE `credit1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student1`
--
ALTER TABLE `student1`
  ADD PRIMARY KEY (`Roll`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
