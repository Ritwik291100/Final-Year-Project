-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 04:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doit`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE `assign` (
  `sl` int(10) NOT NULL,
  `Semester` int(10) NOT NULL,
  `Dept` varchar(10) NOT NULL,
  `Day` varchar(20) NOT NULL,
  `Time` varchar(10) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Teacher` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dtable`
--

CREATE TABLE `dtable` (
  `sl` int(10) NOT NULL,
  `p1` varchar(50) DEFAULT NULL,
  `f1` varchar(10) DEFAULT NULL,
  `p2` varchar(50) DEFAULT NULL,
  `f2` varchar(10) DEFAULT NULL,
  `p3` varchar(50) DEFAULT NULL,
  `f3` varchar(10) DEFAULT NULL,
  `p4` varchar(50) DEFAULT NULL,
  `f4` varchar(10) DEFAULT NULL,
  `p5` varchar(50) DEFAULT NULL,
  `f5` varchar(10) DEFAULT NULL,
  `p6` varchar(50) DEFAULT NULL,
  `f6` varchar(10) DEFAULT NULL,
  `p7` varchar(50) DEFAULT NULL,
  `f7` varchar(10) DEFAULT NULL,
  `day` varchar(20) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dtable`
--

INSERT INTO `dtable` (`sl`, `p1`, `f1`, `p2`, `f2`, `p3`, `f3`, `p4`, `f4`, `p5`, `f5`, `p6`, `f6`, `p7`, `f7`, `day`, `dept`, `sem`) VALUES
(1, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'CSE', 8),
(2, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'CSE', 8),
(3, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'CSE', 8),
(4, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'CSE', 8),
(5, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'CSE', 8),
(6, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'CSE', 6),
(7, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'CSE', 6),
(8, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'CSE', 6),
(9, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'CSE', 6),
(10, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'CSE', 6),
(11, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'CSE', 4),
(12, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'CSE', 4),
(13, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'CSE', 4),
(14, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'CSE', 4),
(15, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'CSE', 4),
(16, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'CSE', 2),
(17, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'CSE', 2),
(18, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'CSE', 2),
(19, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'CSE', 2),
(20, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'CSE', 2),
(21, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'ECE', 8),
(22, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'ECE', 8),
(23, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'ECE', 8),
(24, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'ECE', 8),
(25, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'ECE', 8),
(26, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'ECE', 6),
(27, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'ECE', 6),
(28, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'ECE', 6),
(29, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'ECE', 6),
(30, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'ECE', 6),
(31, 'Analog Electronic Circuits', 'ANC', 'Analog Communication', 'PP', 'Biology for Engineers', 'KSR', 'Library', 'NULL', 'Analog Communication', 'PP', 'MOOCS', 'NULL', 'Analog Electronic Circuits', 'ANC', 'MON', 'ECE', 4),
(32, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'Biology for Engineers', 'KSR', 'e', 'f5', 'Analog Electronic Circuits', 'ANC', 'g', 'f7', 'TUE', 'ECE', 4),
(33, 'Numerical Methods Lab', 'SL', 'Numerical Methods Lab', 'SL', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'ECE', 4),
(34, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'ECE', 4),
(35, 'a', 'f1', 'b', 'f2', 'Analog Electronics Circuits Lab', 'ANC', 'Analog Electronics Circuits Lab', 'ANC', 'e', 'f5', 'Biology for Engineers', 'KSR', 'g', 'f7', 'FRI', 'ECE', 4),
(36, 'English', 'KB', 'Library', 'NULL', 'Programming for Problem Solving Lab', 'SM', 'Programming for Problem Solving Lab', 'SM', 'Programming for Problem Solving Lab', 'SM', 'Programming for Problem Solving', 'SM', 'Mentoring', 'NULL', 'MON', 'ECE', 2),
(37, 'a', 'f1', 'Library', 'NULL', 'Programming for Problem Solving Lab', 'SM', 'd', 'f4', 'English', 'KB', 'f', 'f6', 'g', 'f7', 'TUE', 'ECE', 2),
(38, 'a', 'f1', 'Programming for Problem Solving Lab', 'SM', 'Programming for Problem Solving Lab', 'SM', 'd', 'f4', 'Language Lab', 'KB', 'Language Lab', 'KB', 'g', 'f7', 'WED', 'ECE', 2),
(39, 'a', 'f1', 'b', 'f2', 'Language Lab', 'KB', 'Programming for Problem Solving Lab', 'SM', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'ECE', 2),
(40, 'a', 'f1', 'Programming for Problem Solving Lab', 'SM', 'Language Lab', 'KB', 'Language Lab', 'KB', 'Language Lab', 'KB', 'Programming for Problem Solving Lab', 'SM', 'g', 'f7', 'FRI', 'ECE', 2),
(41, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'EE', 8),
(42, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'CSE', 8),
(43, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'CSE', 8),
(44, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'CSE', 8),
(45, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'CSE', 8),
(46, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'EE', 6),
(47, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'EE', 6),
(48, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'EE', 6),
(49, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'EE', 6),
(50, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'EE', 6),
(51, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'EE', 4),
(52, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'EE', 4),
(53, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'EE', 4),
(54, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'EE', 4),
(55, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'EE', 4),
(56, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'EE', 2),
(57, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'EE', 2),
(58, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'EE', 2),
(59, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'EE', 2),
(60, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'EE', 2),
(61, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'IT', 8),
(62, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'IT', 8),
(63, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'IT', 8),
(64, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'IT', 8),
(65, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'IT', 8),
(66, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'IT', 6),
(67, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'IT', 6),
(68, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'IT', 6),
(69, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'IT', 6),
(70, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'IT', 6),
(71, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'IT', 4),
(72, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'IT', 4),
(73, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'IT', 4),
(74, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'IT', 4),
(75, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'IT', 4),
(76, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'MON', 'IT', 2),
(77, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'TUE', 'IT', 2),
(78, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'WED', 'IT', 2),
(79, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'THU', 'IT', 2),
(80, 'a', 'f1', 'b', 'f2', 'c', 'f3', 'd', 'f4', 'e', 'f5', 'f', 'f6', 'g', 'f7', 'FRI', 'IT', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subect_faculty mapping`
--

CREATE TABLE `subect_faculty mapping` (
  `sl` int(10) NOT NULL,
  `Subject_name` varchar(150) NOT NULL,
  `Subject_code` varchar(100) NOT NULL,
  `Teacher` varchar(20) NOT NULL,
  `Dept` varchar(20) NOT NULL,
  `Semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subect_faculty mapping`
--

INSERT INTO `subect_faculty mapping` (`sl`, `Subject_name`, `Subject_code`, `Teacher`, `Dept`, `Semester`) VALUES
(1, 'English', 'HMHU201', 'KB', 'ECE', '2'),
(2, 'Workshop / Manufacturing Practices (Gr-B)', 'ESME292', 'TR', 'ECE', '2'),
(3, 'UHV', '', 'GB', 'ECE', '2'),
(4, 'Physics-I (Gr B)', 'BSPH201', 'SOM', 'ECE', '2'),
(5, 'Mathematics II B', 'BSM202', 'SCH', 'ECE', '2'),
(6, 'Mentoring', '', 'NULL', 'ECE', '2'),
(7, 'Workshop / Manufacturing Practices(Gr-B)', 'ESME292', 'BDC', 'ECE', '2'),
(8, 'Language Lab', 'HMHU291', 'KB', 'ECE', '2'),
(9, 'Programming for Problem Solving', 'ESCS201', 'SM', 'ECE', '2'),
(10, 'Programming for Problem Solving Lab', 'ESCS291', 'SM', 'ECE', '2'),
(11, 'Analog Communication ', 'EC401', 'PP', 'ECE', '4'),
(12, 'Analog Electronic Circuits ', 'EC402', 'ANC', 'ECE', '4'),
(13, 'Microprocessor & Microcontrollers ', 'EC403', 'PC', 'ECE', '4'),
(14, 'Design and analysis of Algorithm ', '(ES) ES-CS401', 'NK', 'ECE', '4'),
(15, 'Numerical Methods ', '(BS) BS-M401', 'SL', 'ECE', '4'),
(16, 'Biology for Engineers ', 'BS-B401', 'KSR', 'ECE', '4'),
(17, 'Analog Communication Lab ', 'EC491', 'PP', 'ECE', '4'),
(18, 'Analog Electronics Circuits Lab ', 'EC492', 'ANC', 'ECE', '4'),
(19, 'Microprocessor & Microcontrollers Lab ', 'EC493', 'PC', 'ECE', '4'),
(20, 'Numerical Methods Lab ', 'BS-M(CS)491', 'SL', 'ECE', '4'),
(21, 'Soft Skill Development lab ', 'HS-HU481', 'KB', 'ECE', '4'),
(22, 'Electromagnetic Waves ', 'EC501', 'JA', 'ECE', '5'),
(23, 'Computer Architecture ', 'EC502', 'SD', 'ECE', '5'),
(24, 'Digital Communication & Stochastic Process ', 'EC503', 'PP', 'ECE', '5'),
(25, 'Digital Signal Processing ', 'EC504', 'ANC', 'ECE', '5'),
(26, 'Nano Electronics / Power Electronics  ', 'PE-EC505A  /  PE-EC505C', 'TD/DK', 'ECE', '5'),
(27, 'Soft Skill and Interpersonal Communication / Human Resource Development', 'OE-EC506A / OE-EC506C', 'KB', 'ECE', '5'),
(28, 'Effective Technical Communication', 'MC-HU581', 'RT', 'ECE', '5'),
(29, 'Electromagnetic Wave Lab ', 'EC591', 'JA', 'ECE', '5'),
(30, 'Digital Communication Lab ', 'EC592', 'PP', 'ECE', '5'),
(31, 'Digital Signal Processing Lab ', 'EC593', 'ANC', 'ECE', '5'),
(32, 'Control System & Instrumentation ', ' EC601', 'TD', 'ECE', '6'),
(33, 'Computer Network ', 'EC602', 'SD', 'ECE', '6'),
(34, 'Bio-Medical Electronics / CMOS VLSI Design / ITC', '', 'RND/ANC/PC', 'ECE', '6'),
(35, 'Object Oriented Programming ', 'OE-EC604C', 'AD', 'ECE', '6'),
(36, 'Economics for Engineers ', 'HS-HU601', 'TR', 'ECE', '6'),
(37, 'Computer Network Lab ', 'EC692', 'SD', 'ECE', '6'),
(38, 'Control System and Instrumentation Lab ', 'EC691', 'TD', 'ECE', '6'),
(39, 'Mini Project / Electronic Design Workshop ', 'EC681', 'ANC/JA', 'ECE', '6'),
(40, 'Universal Human Values ', 'MC681', 'ACH', 'ECE', '6'),
(41, 'Microwave Theory and Techniques / Satellite Communication / Mobile Communication', 'PE-EC701A / PE-EC701B / PE-EC701C', 'JA/SRD/PC', 'ECE', '7'),
(42, 'Digital Image and Video Processing / Neural NetworK', ' PE-EC702B / PE-EC702C', 'MD/RG', 'ECE', '7'),
(43, 'Embedded System ', 'PE-EC703A', 'UC', 'ECE', '7'),
(44, 'Web Technology ', 'OE-EC704C', 'ARC', 'ECE', '7'),
(45, 'Principles of Management ', 'HS-HU701', 'SDA', 'ECE', '7'),
(46, 'Industrial Training ', 'EC781', 'NULL', 'ECE', '7'),
(47, 'Project Stage-I ', 'EC782', 'TD', 'ECE', '7'),
(48, 'Antennas and Propagation / Fibre Optic Communication / Error Correcting Codes', 'PE-EC801A / PE-EC801B / PE-EC801C', 'JA/SG/SMC', 'ECE', '8'),
(49, 'Mixed Signal Design / Industrial Automation and Control', ' PE-EC802A / PE-EC802B', 'ANC/DK', 'ECE', '8'),
(50, 'Internet of Things (IoT) / Cyber Security  ', 'OE-EC803A / OE-EC803C', 'PC/JA', 'ECE', '8'),
(51, 'Artificial Intelligence ', 'OE-EC804A', 'RCH', 'ECE', '8'),
(52, 'Project Stage-II ', 'EC881', 'TD', 'ECE', '8'),
(53, 'Chemistry I (Gr B) ', 'BSCH101', 'SC', 'ECE', '1'),
(54, 'Engineering Graphics & Design (Gr B) ', 'ESME191', 'TR', 'ECE', '1'),
(55, 'Mathematics I B ', 'BSM102', 'SCH', 'ECE', '1'),
(56, 'Basic Electrical Engineering ', 'ESEE191', 'ARD', 'ECE', '1'),
(57, 'Chemistry I Lab (Gr B)', 'BSCH191', 'SC', 'ECE', '1'),
(58, 'Basic Electrical Engineering Lab ', 'ESEE191', 'ARD', 'ECE', '1'),
(59, 'MOOCS', '', 'NULL', 'ECE', '1'),
(60, 'Universal Human Values', '', 'GB', 'ECE', '1'),
(61, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '1'),
(62, 'Library', '', 'NULL', 'ECE', '1'),
(63, 'Mentoring', '', 'NULL', 'ECE', '1'),
(64, 'Null', '', 'NULL', 'ECE', '2'),
(65, 'Mentoring', '', 'NULL', 'ECE', '2'),
(66, 'Library', '', 'NULL', 'ECE', '2'),
(67, 'Mentoring', '', 'NULL', 'ECE', '3'),
(68, 'Library', '', 'NULL', 'ECE', '3'),
(69, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '3'),
(70, 'MOOCS', '', 'NULL', 'ECE', '3'),
(71, 'Environmental Science ', 'MC381', 'SC', 'ECE', '3'),
(72, 'Data Structure Lab(ES) ', 'PCC-CS391', 'SK', 'ECE', '3'),
(73, 'Digital System Design lab', 'EC392', 'TD', 'ECE', '3'),
(74, 'Electronic Devices Lab. ', 'EC391', 'DK', 'ECE', '3'),
(75, 'Mathematics III ', 'BS-M301', 'SCH', 'ECE', '3'),
(76, 'Data Structure & Algorithm(ES) ', 'PCC-CS301', 'SK', 'ECE', '3'),
(77, 'Network Theory ', 'EC304', 'ANC', 'ECE', '3'),
(78, 'Signals and Systems ', 'EC303', 'RND', 'ECE', '3'),
(79, 'Digital System Design ', 'EC302', 'TD', 'ECE', '3'),
(80, 'Electronic Devices ', 'EC301', 'DK', 'ECE', '3'),
(81, 'Mentoring', '', 'NULL', 'ECE', '8'),
(82, 'Library', '', 'NULL', 'ECE', '8'),
(83, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '8'),
(84, 'MOOCS', '', 'NULL', 'ECE', '8'),
(85, 'Mentoring', '', 'NULL', 'ECE', '7'),
(86, 'Library', '', 'NULL', 'ECE', '7'),
(87, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '7'),
(88, 'MOOCS', '', 'NULL', 'ECE', '7'),
(89, 'MOOCS', '', 'NULL', 'ECE', '6'),
(90, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '6'),
(91, 'Library', '', 'NULL', 'ECE', '6'),
(92, 'Mentoring', '', 'NULL', 'ECE', '4'),
(93, 'Library', '', 'NULL', 'ECE', '4'),
(94, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '4');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `sub_code` varchar(50) NOT NULL,
  `sub_type` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `sem` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `sub_name`, `sub_code`, `sub_type`, `dept`, `sem`) VALUES
(1, 'Chemistry I (Gr B)', 'BSCH101', 'T', 'ECE', 1),
(2, 'Engineering Graphics & Design (Gr B)', 'ESME191', 'L', 'ECE', 1),
(3, 'Physics-I (Gr B)', 'BSPH201', 'T', 'ECE', 2),
(4, 'Workshop / Manufacturing Practices(Gr-B)', 'ESME292', 'L', 'ECE', 2),
(5, 'Language Lab', 'HMHU291', 'L', 'ECE', 2),
(6, 'Programming for Problem Solving', 'ESCS201', 'T', 'ECE', 2),
(7, 'Mathematics II B', 'BSM202', 'T', 'ECE', 2),
(8, 'Mathematics I B', 'BSM102', 'T', 'ECE', 1),
(9, 'Basic Electrical Engineering', 'ESEE191', 'L', 'ECE', 1),
(10, 'Chemistry I Lab (Gr B)', 'BSCH191', 'L', 'ECE', 1),
(11, 'Basic Electrical Engineering Lab', 'ESEE191', 'L', 'ECE', 1),
(12, 'Programming for Problem Solving Lab', 'ESCS291', 'L', 'ECE', 2),
(13, 'English', 'HMHU201', 'T', 'ECE', 2),
(14, 'Physics-I Lab (Gr B)', 'BSPH291', 'L', 'ECE', 2),
(15, 'Electronic Devices', 'EC301', 'T', 'ECE', 3),
(16, 'Digital System Design', 'EC302', 'T', 'ECE', 3),
(17, 'Signals and Systems', 'EC303', 'T', 'ECE', 3),
(18, 'Network Theory', 'EC304', 'T', 'ECE', 3),
(19, 'Data Structure & Algorithm(ES)', 'PCC-CS301', 'T', 'ECE', 3),
(20, 'Mathematics III', 'BS-M301', 'T', 'ECE', 3),
(21, 'Electronic Devices Lab.', 'EC391', 'L', 'ECE', 3),
(22, 'Digital System Design lab.', 'EC392', 'L', 'ECE', 3),
(23, 'Data Structure Lab(ES)', 'PCC-CS391', 'L', 'ECE', 3),
(24, 'Environmental Science', 'MC381', 'T', 'ECE', 3),
(25, 'Analog Communication', 'EC401', 'T', 'ECE', 4),
(26, 'Analog Electronic Circuits', 'EC402', 'T', 'ECE', 4),
(27, 'Microprocessor & Microcontrollers', 'EC403', 'T', 'ECE', 4),
(28, 'Design and analysis of Algorithm (ES)', 'ES-CS401', 'T', 'ECE', 4),
(29, 'Numerical Methods (BS)', 'BS-M401', 'T', 'ECE', 4),
(30, 'Biology for Engineers', 'BS-B401', 'T', 'ECE', 4),
(31, 'Analog Communication Lab', 'EC491', 'L', 'ECE', 4),
(32, 'Analog Electronics Circuits Lab', 'EC492', 'L', 'ECE', 4),
(33, 'Microprocessor & Microcontrollers Lab', 'EC493', 'L', 'ECE', 4),
(35, 'Numerical Methods Lab', 'BS-M(CS)491', 'L', 'ECE', 4),
(36, 'Soft Skill Development lab', 'HS-HU481', 'T', 'ECE', 4),
(37, 'Electromagnetic Waves', 'EC501', 'T', 'ECE', 5),
(38, 'Computer Architecture', 'EC502', 'T', 'ECE', 5),
(39, 'Digital Communication & Stochastic Process', 'EC503', 'T', 'ECE', 5),
(40, 'Digital Signal Processing', 'EC504', 'T', 'ECE', 5),
(41, 'Nano Electronics / Power Electronics ', 'PE-EC505A  /  PE-EC505C', 'T', 'ECE', 5),
(42, 'Soft Skill and Interpersonal Communication / Human Resource Management', 'OE-EC506A / OE-EC506C', 'T', 'ECE', 5),
(43, 'Effective Technical Communication', 'MC-HU581', 'T', 'ECE', 5),
(44, 'Electromagnetic Wave Lab', 'EC591', 'L', 'ECE', 5),
(45, 'Digital Communication Lab', 'EC592', 'L', 'ECE', 5),
(46, 'Digital Signal Processing Lab', 'EC593', 'L', 'ECE', 5),
(47, 'Control System & Instrumentation', 'EC601', 'T', 'ECE', 6),
(48, 'Computer Network', 'EC602', 'T', 'ECE', 6),
(49, 'Bio-Medical Electronics / CMOS VLSI Design / Information Theory & Coding /', 'PE-EC603B / PE-EC603C / PE-EC603D', 'T', 'ECE', 6),
(50, 'Object Oriented Programming', 'OE-EC604C', 'T', 'ECE', 6),
(51, 'Economics for Engineers', 'HS-HU601', 'T', 'ECE', 6),
(52, 'Computer Network Lab', 'EC692', 'L', 'ECE', 6),
(53, 'Control System and Instrumentation Lab', 'EC691', 'L', 'ECE', 6),
(54, 'Mini Project / Electronic Design Workshop', 'EC681', 'T', 'ECE', 6),
(55, 'Universal Human Values', 'MC681', 'T', 'ECE', 6),
(56, 'Microwave Theory and Techniques / Satellite Communication / Mobile Communication and Networks', 'PE-EC701A / PE-EC701B / PE-EC701C ', 'T', 'ECE', 7),
(57, 'Digital Image and Video Processing / Neural Network and Fuzzy Logic Control', 'PE-EC702B / PE-EC702C', 'T', 'ECE', 7),
(58, 'Embedded System', 'PE-EC703A', 'T', 'ECE', 7),
(59, 'Web Technology', 'OE-EC704C', 'T', 'ECE', 7),
(60, 'Principles of Management', 'HS-HU701', 'T', 'ECE', 7),
(61, 'Industrial Training', 'EC781', 'T', 'ECE', 7),
(62, 'Project Stage-I', 'EC782', 'T', 'ECE', 7),
(63, 'Antennas and Propagation / Fibre Optic Communication / Error Correcting Codes', 'PE-EC801A / PE-EC801B / PE-EC801C', 'T', 'ECE', 8),
(64, 'Mixed Signal Design / Industrial Automation and Control ', 'PE-EC802A / PE-EC802B', 'T', 'ECE', 8),
(65, 'Internet of Things (IoT) / Cyber Security ', 'OE-EC803A / OE-EC803C', 'T', 'ECE', 8),
(66, 'Artificial Intelligence', 'OE-EC804A', 'T', 'ECE', 8),
(67, 'Project Stage-II', 'EC881', 'T', 'ECE', 8),
(68, 'MOOCS', '', 'T', 'ECE', 1),
(69, 'MOOCS', '', 'T', 'ECE', 2),
(70, 'MOOCS', '', 'T', 'ECE', 3),
(71, 'MOOCS', '', 'T', 'ECE', 4),
(72, 'MOOCS', '', 'T', 'ECE', 5),
(73, 'MOOCS', '', 'T', 'ECE', 6),
(74, 'MOOCS', '', 'T', 'ECE', 7),
(75, 'MOOCS', '', 'T', 'ECE', 8),
(76, 'Universal Human Values', '', 'T', 'ECE', 1),
(77, 'Extra/Co-Curricular Activity/NSS', '', 'T', 'ECE', 1),
(78, 'Extra/Co-Curricular Activity/NSS', '', 'T', 'ECE', 2),
(79, 'Extra/Co-Curricular Activity/NSS', '', 'T', 'ECE', 3),
(80, 'Extra/Co-Curricular Activity/NSS', '', 'T', 'ECE', 4),
(81, 'Extra/Co-Curricular Activity/NSS', '', 'T', 'ECE', 5),
(82, 'Extra/Co-Curricular Activity/NSS', '', 'T', 'ECE', 6),
(83, 'Extra/Co-Curricular Activity/NSS', '', 'T', 'ECE', 7),
(84, 'Extra/Co-Curricular Activity/NSS', '', 'T', 'ECE', 8),
(85, 'Library', '', 'T', 'ECE', 1),
(86, 'Library', '', 'T', 'ECE', 2),
(87, 'Library', '', 'T', 'ECE', 3),
(88, 'Library', '', 'T', 'ECE', 4),
(89, 'Library', '', 'T', 'ECE', 5),
(90, 'Library', '', 'T', 'ECE', 6),
(91, 'Library', '', 'T', 'ECE', 7),
(92, 'Library', '', 'T', 'ECE', 8),
(93, 'Mentoring', '', 'T', 'ECE', 1),
(94, 'Mentoring', '', 'T', 'ECE', 2),
(95, 'Mentoring', '', 'T', 'ECE', 3),
(96, 'Mentoring', '', 'T', 'ECE', 4),
(97, 'Mentoring', '', 'T', 'ECE', 5),
(99, 'Mentoring', '', 'T', 'ECE', 7),
(100, 'Mentoring', '', 'T', 'ECE', 8),
(101, 'Null', '', 'T', 'ECE', 1),
(102, 'Null', '', 'T', 'ECE', 2),
(103, 'Null', '', 'T', 'ECE', 3),
(104, 'Null', '', 'T', 'ECE', 4),
(105, 'Null', '', 'T', 'ECE', 5),
(106, 'Null', '', 'T', 'ECE', 6),
(107, 'Null', '', 'T', 'ECE', 7),
(108, 'Null', '', 'T', 'ECE', 8);

-- --------------------------------------------------------

--
-- Table structure for table `sub_fac`
--

CREATE TABLE `sub_fac` (
  `sl` int(10) NOT NULL,
  `sub_name` varchar(150) NOT NULL,
  `sub_code` varchar(50) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_fac`
--

INSERT INTO `sub_fac` (`sl`, `sub_name`, `sub_code`, `faculty`, `dept`, `sem`) VALUES
(1, 'English', 'HMHU201', 'KB', 'ECE', '2'),
(2, 'Workshop / Manufacturing Practices (Gr-B)', 'ESME292', 'TR', 'ECE', '2'),
(3, 'UHV', '', 'GB', 'ECE', '2'),
(4, 'Physics-I (Gr B)', 'BSPH201', 'SOM', 'ECE', '2'),
(5, 'Mathematics II B', 'BSM202', 'SCH', 'ECE', '2'),
(6, 'Mentoring', '', 'NULL', 'ECE', '2'),
(7, 'Workshop / Manufacturing Practices(Gr-B)', 'ESME292', 'BDC', 'ECE', '2'),
(8, 'Language Lab', 'HMHU291', 'KB', 'ECE', '2'),
(9, 'Programming for Problem Solving', 'ESCS201', 'SM', 'ECE', '2'),
(10, 'Programming for Problem Solving Lab', 'ESCS291', 'SM', 'ECE', '2'),
(11, 'Analog Communication ', 'EC401', 'PP', 'ECE', '4'),
(12, 'Analog Electronic Circuits ', 'EC402', 'ANC', 'ECE', '4'),
(13, 'Microprocessor & Microcontrollers ', 'EC403', 'PC', 'ECE', '4'),
(14, 'Design and analysis of Algorithm ', '(ES) ES-CS401', 'NK', 'ECE', '4'),
(15, 'Numerical Methods ', '(BS) BS-M401', 'SL', 'ECE', '4'),
(16, 'Biology for Engineers ', 'BS-B401', 'KSR', 'ECE', '4'),
(17, 'Analog Communication Lab ', 'EC491', 'PP', 'ECE', '4'),
(18, 'Analog Electronics Circuits Lab ', 'EC492', 'ANC', 'ECE', '4'),
(19, 'Microprocessor & Microcontrollers Lab ', 'EC493', 'PC', 'ECE', '4'),
(20, 'Numerical Methods Lab ', 'BS-M(CS)491', 'SL', 'ECE', '4'),
(21, 'Soft Skill Development lab ', 'HS-HU481', 'KB', 'ECE', '4'),
(22, 'Electromagnetic Waves ', 'EC501', 'JA', 'ECE', '5'),
(23, 'Computer Architecture ', 'EC502', 'SD', 'ECE', '5'),
(24, 'Digital Communication & Stochastic Process ', 'EC503', 'PP', 'ECE', '5'),
(25, 'Digital Signal Processing ', 'EC504', 'ANC', 'ECE', '5'),
(26, 'Nano Electronics / Power Electronics  ', 'PE-EC505A  /  PE-EC505C', 'TD/DK', 'ECE', '5'),
(27, 'Soft Skill and Interpersonal Communication / Human Resource Development', 'OE-EC506A / OE-EC506C', 'KB', 'ECE', '5'),
(28, 'Effective Technical Communication', 'MC-HU581', 'RT', 'ECE', '5'),
(29, 'Electromagnetic Wave Lab ', 'EC591', 'JA', 'ECE', '5'),
(30, 'Digital Communication Lab ', 'EC592', 'PP', 'ECE', '5'),
(31, 'Digital Signal Processing Lab ', 'EC593', 'ANC', 'ECE', '5'),
(32, 'Control System & Instrumentation ', ' EC601', 'TD', 'ECE', '6'),
(33, 'Computer Network ', 'EC602', 'SD', 'ECE', '6'),
(34, 'Bio-Medical Electronics / CMOS VLSI Design / ITC', '', 'RND/ANC/PC', 'ECE', '6'),
(35, 'Object Oriented Programming ', 'OE-EC604C', 'AD', 'ECE', '6'),
(36, 'Economics for Engineers ', 'HS-HU601', 'TR', 'ECE', '6'),
(37, 'Computer Network Lab ', 'EC692', 'SD', 'ECE', '6'),
(38, 'Control System and Instrumentation Lab ', 'EC691', 'TD', 'ECE', '6'),
(39, 'Mini Project / Electronic Design Workshop ', 'EC681', 'ANC/JA', 'ECE', '6'),
(40, 'Universal Human Values ', 'MC681', 'ACH', 'ECE', '6'),
(41, 'Microwave Theory and Techniques / Satellite Communication / Mobile Communication', 'PE-EC701A / PE-EC701B / PE-EC701C', 'JA/SRD/PC', 'ECE', '7'),
(42, 'Digital Image and Video Processing / Neural NetworK', ' PE-EC702B / PE-EC702C', 'MD/RG', 'ECE', '7'),
(43, 'Embedded System ', 'PE-EC703A', 'UC', 'ECE', '7'),
(44, 'Web Technology ', 'OE-EC704C', 'ARC', 'ECE', '7'),
(45, 'Principles of Management ', 'HS-HU701', 'SDA', 'ECE', '7'),
(46, 'Industrial Training ', 'EC781', 'NULL', 'ECE', '7'),
(47, 'Project Stage-I ', 'EC782', 'TD', 'ECE', '7'),
(48, 'Antennas and Propagation / Fibre Optic Communication / Error Correcting Codes', 'PE-EC801A / PE-EC801B / PE-EC801C', 'JA/SG/SMC', 'ECE', '8'),
(49, 'Mixed Signal Design / Industrial Automation and Control', ' PE-EC802A / PE-EC802B', 'ANC/DK', 'ECE', '8'),
(50, 'Internet of Things (IoT) / Cyber Security  ', 'OE-EC803A / OE-EC803C', 'PC/JA', 'ECE', '8'),
(51, 'Artificial Intelligence ', 'OE-EC804A', 'RCH', 'ECE', '8'),
(52, 'Project Stage-II ', 'EC881', 'TD', 'ECE', '8'),
(53, 'Chemistry I (Gr B) ', 'BSCH101', 'SC', 'ECE', '1'),
(54, 'Engineering Graphics & Design (Gr B) ', 'ESME191', 'TR', 'ECE', '1'),
(55, 'Mathematics I B ', 'BSM102', 'SCH', 'ECE', '1'),
(56, 'Basic Electrical Engineering ', 'ESEE191', 'ARD', 'ECE', '1'),
(57, 'Chemistry I Lab (Gr B)', 'BSCH191', 'SC', 'ECE', '1'),
(58, 'Basic Electrical Engineering Lab ', 'ESEE191', 'ARD', 'ECE', '1'),
(59, 'MOOCS', '', 'NULL', 'ECE', '1'),
(60, 'Universal Human Values', '', 'GB', 'ECE', '1'),
(61, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '1'),
(62, 'Library', '', 'NULL', 'ECE', '1'),
(63, 'Mentoring', '', 'NULL', 'ECE', '1'),
(64, 'Null', '', 'NULL', 'ECE', '2'),
(65, 'Mentoring', '', 'NULL', 'ECE', '2'),
(66, 'Library', '', 'NULL', 'ECE', '2'),
(67, 'Mentoring', '', 'NULL', 'ECE', '3'),
(68, 'Library', '', 'NULL', 'ECE', '3'),
(69, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '3'),
(70, 'MOOCS', '', 'NULL', 'ECE', '3'),
(71, 'Environmental Science ', 'MC381', 'SC', 'ECE', '3'),
(72, 'Data Structure Lab(ES) ', 'PCC-CS391', 'SK', 'ECE', '3'),
(73, 'Digital System Design lab', 'EC392', 'TD', 'ECE', '3'),
(74, 'Electronic Devices Lab. ', 'EC391', 'DK', 'ECE', '3'),
(75, 'Mathematics III ', 'BS-M301', 'SCH', 'ECE', '3'),
(76, 'Data Structure & Algorithm(ES) ', 'PCC-CS301', 'SK', 'ECE', '3'),
(77, 'Network Theory ', 'EC304', 'ANC', 'ECE', '3'),
(78, 'Signals and Systems ', 'EC303', 'RND', 'ECE', '3'),
(79, 'Digital System Design ', 'EC302', 'TD', 'ECE', '3'),
(80, 'Electronic Devices ', 'EC301', 'DK', 'ECE', '3'),
(81, 'Mentoring', '', 'NULL', 'ECE', '8'),
(82, 'Library', '', 'NULL', 'ECE', '8'),
(83, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '8'),
(84, 'MOOCS', '', 'NULL', 'ECE', '8'),
(85, 'Mentoring', '', 'NULL', 'ECE', '7'),
(86, 'Library', '', 'NULL', 'ECE', '7'),
(87, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '7'),
(88, 'MOOCS', '', 'NULL', 'ECE', '7'),
(89, 'MOOCS', '', 'NULL', 'ECE', '6'),
(90, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '6'),
(91, 'Library', '', 'NULL', 'ECE', '6'),
(92, 'Mentoring', '', 'NULL', 'ECE', '4'),
(93, 'Library', '', 'NULL', 'ECE', '4'),
(94, 'Extra/Co-Curricular Activity/NSS', '', 'NULL', 'ECE', '4');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(20) NOT NULL,
  `teacher_name` varchar(30) NOT NULL,
  `initials` varchar(10) NOT NULL,
  `Dept` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_name`, `initials`, `Dept`) VALUES
(1, 'Dr. Ankush Chattopadhyay', 'ANC', 'ECE'),
(2, 'Dr. Prasun Chowdhury', 'PC', 'ECE'),
(3, 'Dr. Ramanath Datta', 'RND', 'ECE'),
(4, 'Dr. Dipankar Kundu', 'DK', 'ECE'),
(5, 'Dr. Shila Ghosh ', 'SG', 'ECE'),
(6, 'Tanusree Dutta ', 'TD', 'ECE'),
(7, 'Prashnatit Pal ', 'PP', 'ECE'),
(8, 'Sumani Mukherjee', 'SMC', 'ECE'),
(9, 'Sudipta Dutta', 'SD', 'ECE'),
(10, 'Dr. Juin Acharjee', 'JA', 'ECE'),
(11, 'Dr. Swarup Das', 'SRD', 'ECE'),
(12, 'Sharabh Chatterjee', 'SCH.', 'ECE'),
(13, 'Kingshukh Banerjea', 'KB', 'ECE'),
(14, 'Soumita Das', 'SDA', 'ECE'),
(15, 'Dr. Aruna Chakraborty', 'ACH', 'ECE'),
(16, 'Siddhartha Chatterjee', 'SC', 'ECE'),
(17, 'Biswadip Chakraborty', 'BDC', 'ECE'),
(18, 'Dr. Poly Debnath', 'PD', 'ECE'),
(19, 'Dr. Soumen Maiti', 'SOM', 'ECE'),
(20, 'Dr. Anusua Baveja', 'ABJ', 'ECE'),
(21, 'Kumar Singha Roy', 'KSR', 'ECE'),
(22, 'Reetoja Taj', 'RT', 'ECE'),
(23, 'Arup Das', 'ARD', 'ECE'),
(24, 'Subhankar Mallick', 'SM', 'ECE'),
(25, 'Dr. Mousumi Dutt', 'MD', 'ECE'),
(26, 'Uddalak Chatterjee', 'UC', 'ECE'),
(27, 'Ranjita Chowdhury ', 'RCH', 'ECE'),
(28, 'Aditi Bal ', 'AB', 'ECE'),
(29, 'Amit Dutta', 'AD', 'ECE'),
(30, 'Sk. Latib', 'SK', 'ECE'),
(31, 'Dr. Arindam Chakravorty', 'ARC', 'ECE'),
(32, 'Dr. Ranjit Ghoshal', 'RG', 'ECE'),
(33, 'Dr. Tapas Roy', 'TR', 'ECE'),
(34, 'Gautam Banerjea', 'GB', 'ECE'),
(35, 'NULL', '', 'ECE'),
(36, 'NIlanjana Karmakar', 'NK', 'ECE'),
(37, 'Sayani LahIri', 'SL', 'ECE'),
(38, 'Kushal Biswas', 'KUB', 'ECE');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `passwd`, `type`) VALUES
(0, 'Admin', 'Admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign`
--
ALTER TABLE `assign`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `dtable`
--
ALTER TABLE `dtable`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `subect_faculty mapping`
--
ALTER TABLE `subect_faculty mapping`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_fac`
--
ALTER TABLE `sub_fac`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign`
--
ALTER TABLE `assign`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtable`
--
ALTER TABLE `dtable`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `subect_faculty mapping`
--
ALTER TABLE `subect_faculty mapping`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `sub_fac`
--
ALTER TABLE `sub_fac`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
