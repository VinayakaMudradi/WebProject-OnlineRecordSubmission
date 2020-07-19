-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 19, 2020 at 05:59 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recordsubmit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Email` varchar(30) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Email`,`Password`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Email`, `Name`, `Password`) VALUES
('admin@cec.com', 'admin', '12');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `emailid` varchar(60) NOT NULL,
  `staffname` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `subject` varchar(70) NOT NULL,
  `flag` int(11) NOT NULL,
  `semister` int(11) NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emailid`, `staffname`, `password`, `subject`, `flag`, `semister`) VALUES
('niranjanamalya@gmail.com', 'Niranjan', '12', 'Computer Network', 1, 5),
('shacheedevi@gmail.com', 'Shachee Devi Madhyastha', '1256', 'System Software And Compailer Design Lab', 1, 6),
('sarithasuvarna@gmail.com', 'Saritha Suvarna', '12', 'Web Technology Lab', 1, 7),
('ashashibaroor@gmail.com', 'Asha Hegde', '12', 'Design And Analysis Of Algorithms Lab', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `stafflist`
--

DROP TABLE IF EXISTS `stafflist`;
CREATE TABLE IF NOT EXISTS `stafflist` (
  `Email` varchar(50) NOT NULL,
  `StaffName` varchar(30) NOT NULL,
  PRIMARY KEY (`Email`,`StaffName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stafflist`
--

INSERT INTO `stafflist` (`Email`, `StaffName`) VALUES
('ashashibaroor@gmail.com', 'Asha Hegde'),
('dayanandaudupi@gmail.com', 'Dayananda Udupi'),
('ganesh@gmail.com', 'Ganesh Mudradi'),
('nagarajkarker@gmail.com', 'Nagaraj Karker'),
('narmadha.kateel@gmail.com', 'Narmadha'),
('niranjanamalya@gmail.com', 'Niranjan'),
('pvanand@gmail.com', 'Anand Saligrama'),
('rolviadisouza@gmail.com', 'Rolvia Disouza'),
('sarithasuvarna@gmail.com', 'Saritha Suvarna'),
('shacheedevi@gmail.com', 'Shachee Devi Madhyastha'),
('shak@gmail.com', 'Shakunthala'),
('shreesha@gmail.com', 'Shreesha Bhaktha'),
('sooryagayathri@gmail.com', 'Sooryagayathri M'),
('sujithpadnekar@gmail.com', 'Sujith Padnekar'),
('suresh123@gmail.com', 'Suresh h'),
('vikas.karkal@gmail.com', 'Vikas S '),
('vinay12@gmail.com', 'Vinay Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `USN` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Sem` int(1) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Password` varchar(5) NOT NULL,
  PRIMARY KEY (`USN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`USN`, `Name`, `Sem`, `Email`, `Password`) VALUES
('4XX16CS116', 'VINAYAKA NAIK', 7, 'vinayaka@gmail.com', '1234'),
('4XX16CS109', 'THANUSH', 7, 'thanush@gmail.com', '1234'),
('4XX16CS117', 'VINEETH RAO P', 7, 'rao@gmail.com', '12345'),
('4XX16CS100', 'SUDARSHAN NAVADA', 7, 'navda@gmail.com', '12'),
('4XX16CS090', 'Shravan', 7, 'hshravan@gmail.com', '12'),
('4XX16CS111', 'Shakul', 7, 'sha@gmail.com', '12'),
('4XX16CS189', 'Arya', 5, 'ar@gmail.com', '14');

-- --------------------------------------------------------

--
-- Table structure for table `subjectlist`
--

DROP TABLE IF EXISTS `subjectlist`;
CREATE TABLE IF NOT EXISTS `subjectlist` (
  `SEM` int(11) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  PRIMARY KEY (`SEM`,`SUBJECT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjectlist`
--

INSERT INTO `subjectlist` (`SEM`, `SUBJECT`) VALUES
(1, 'Engineering Chemistry'),
(1, 'Engineering Physics'),
(2, 'CAED'),
(2, 'Programming In C And Datastructure'),
(3, 'Analog And Digital Electronics Lab'),
(3, 'Data Structure Lab'),
(4, 'Design And Analysis Of Algorithms Lab'),
(4, 'Microprocessor Lab'),
(5, 'Computer Network'),
(5, 'Database Management System Lab'),
(6, 'Computer Graphics Lab'),
(6, 'System Software And Compailer Design Lab'),
(7, 'Machine Learning Lab'),
(7, 'Web Technology Lab'),
(8, 'Final Project');

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
CREATE TABLE IF NOT EXISTS `submission` (
  `USN` varchar(20) NOT NULL,
  `SEM` varchar(1) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `PRGNO` varchar(20) NOT NULL,
  `PRG` longtext NOT NULL,
  `SNAPSHOT1` varchar(150) DEFAULT NULL,
  `SNAPSHOT2` varchar(150) DEFAULT NULL,
  `SNAPSHOT3` varchar(150) DEFAULT NULL,
  `DATETIME` varchar(30) DEFAULT NULL,
  `STATEMENT` varchar(1000) NOT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMENTS` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`USN`,`SUBJECT`,`PRGNO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`USN`, `SEM`, `SUBJECT`, `PRGNO`, `PRG`, `SNAPSHOT1`, `SNAPSHOT2`, `SNAPSHOT3`, `DATETIME`, `STATEMENT`, `STATUS`, `COMMENTS`) VALUES
('4XX16CS090', '7', 'Web Technology Lab', 'Program 7', 'code is done.', 'Screenshot (75).png', '', '', '2020-05-09 12:39:15', 'Write the PHP programs to do the following: Find thetranspose of a matrix.', 'APPROVED', 'Very good.'),
('4XX16CS090', '7', 'Web Technology Lab', 'Program 1', 'code done.', 'Screenshot (77).png', '', '', '2020-05-09 13:05:31', 'Write a JavaScript to design a simple calculator to perform the following operations:sum, product, difference and quotient.', 'PENDING', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
