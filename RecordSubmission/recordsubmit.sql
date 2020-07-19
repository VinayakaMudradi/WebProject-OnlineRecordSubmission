-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2019 at 05:01 AM
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
('shacheedevi@gmail.com', 'Shachee Devi Madhyastha', '1256', 'System Software And Compailer Design Lab', 0, 6),
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
('pvanand@gmail.com', 'Anand Saligrama'),
('rolviadisouza@gmail.com', 'Rolvia Disouza'),
('sarithasuvarna@gmail.com', 'Saritha Suvarna'),
('shacheedevi@gmail.com', 'Shachee Devi Madhyastha'),
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
('4CB16CS116', 'VINAYAKA NAIK', 7, 'vinayakamudradi@gmail.com', '1234'),
('4CB16CS109', 'THANUSH', 7, 'thanushbangera@gmail.com', '1234'),
('4CB16CS117', 'VINEETH RAO P', 7, 'raoneeth@gmail.com', '12345'),
('4CB16CS100', 'SUDARSHAN NAVADA', 7, 'navda@gmail.com', '12');

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
('4CB16CS109', '7', 'Web Technology Lab', 'Program 8', '<html>\r\n<head><title>Admin-CEC</title>\r\n<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\r\n  	<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n  	<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\r\n<script type=\"text/javascript\">\r\n	history.pushState(null, null, location.href);\r\n    window.onpopstate = function () {\r\n        history.go(1);\r\n    };\r\n	</script>\r\n	<style>\r\n		.jumbotron {\r\n  		background-color: #f4511e; /* Orange */\r\n 		 color: #ffffff;\r\n		}\r\n	</style>\r\n', 'Screenshot (14).png', '', '', '2019-11-23 22:25:28', 'Write the PHP programs to do the following: Implement simple calculator operation', 'PENDING', NULL),
('4CB16CS116', '7', 'Web Technology Lab', 'Program 7', 'dddd', 'Screenshot (13).png', '', '', '2019-11-17 09:20:26', 'Write the PHP programs to do the following: Find thetranspose of a matrix.', 'APPROVED', 'paapa ala neenu saaili antha approve maadthene.'),
('4CB16CS116', '7', 'Machine Learning Lab', 'Program 1', 'codingg', 'Screenshot (3).png', '', '', '2019-11-13 11:21:24', 'Implement  and  demonstratethe FIND-Salgorithm  for  finding  the  most  specific hypothesis based on a given set of training data samples. Read the training data from a .CSV file.', 'APPROVED', 'paapa saili'),
('4CB16CS109', '7', 'Web Technology Lab', 'Program 1', 'coded', 'Screenshot (10).png', 'Screenshot (14).png', '', '2019-11-11 23:17:39', 'Write a JavaScript to design a simple calculator to perform the following operations:sum, product, difference and quotient.', 'APPROVED', 'good.Keep it up.Well done.'),
('4CB16CS109', '7', 'Web Technology Lab', 'Program 3', 'puna codingg', 'Screenshot (4).png', '', '', '2019-11-11 23:37:33', 'Write a JavaScript code that displays text “TEXT-GROWING” with increasing fontsize in the interval of 100ms in RED COLOR, when the font size reaches 50pt itdisplays “TEXT-SHRINKING” in BLUE color. Then the font size decreases to 5pt.', 'APPROVED', 'baari olled agide.'),
('4CB16CS109', '7', 'Web Technology Lab', 'Program 7', '<style>\r\n		.jumbotron {\r\n  		background-color: #f4511e; /* Orange */\r\n 		 color: #ffffff;\r\n		}\r\n		#student {\r\n  font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\r\n  border-collapse: collapse;\r\n  width: 100%;\r\n}\r\n\r\n#student td, #student th {\r\n  border: 1px solid #ddd;\r\n  padding: 8px;\r\n}\r\n\r\n#student tr:nth-child(even){background-color: #f2f2f2;}\r\n\r\n#student tr:hover {background-color: #ddd;}\r\n\r\n#student th {\r\n  padding-top: 12px;\r\n  padding-bottom: 12px;\r\n  text-align: left;\r\n  background-color: #4CAF50;\r\n  color: white;\r\n}\r\n	</style>', 'Screenshot (14).png', '', '', '2019-11-23 22:26:46', 'Write the PHP programs to do the following: Find thetranspose of a matrix.', 'APPROVED', 'done wery well.'),
('4CB16CS109', '7', 'Web Technology Lab', 'Program 6', 'coding.', 'Screenshot (66).png', '', '', '2019-11-28 10:27:27', 'Write a PHP program to display a digital clock which displays the current time of theserver.', 'DECLAINED', 'Please change the code. It seems there is some bug.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
