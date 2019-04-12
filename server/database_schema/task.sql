-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2019 at 09:24 PM
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
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`) VALUES
(1, 'Satyam Sundaram');

-- --------------------------------------------------------

--
-- Table structure for table `student_class`
--

DROP TABLE IF EXISTS `student_class`;
CREATE TABLE IF NOT EXISTS `student_class` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `class` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class`
--

INSERT INTO `student_class` (`id`, `student_id`, `class`) VALUES
(1, 'STU001', 'B.tech');

-- --------------------------------------------------------

--
-- Table structure for table `student_reports`
--

DROP TABLE IF EXISTS `student_reports`;
CREATE TABLE IF NOT EXISTS `student_reports` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_reports`
--

INSERT INTO `student_reports` (`id`, `student_id`, `class`, `name`) VALUES
(1, 'Satyam Sundaram', 'STU001', 'B.tech');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
