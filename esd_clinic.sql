-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2021 at 05:18 PM
-- Server version: 8.0.18
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esd_clinic`
--
CREATE DATABASE IF NOT EXISTS `esd_clinic` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `esd_clinic`;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `name` char(26) NOT NULL,
  `date` date NOT NULL,
  `availability` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`aid`, `did`, `name`, `date`, `availability`) VALUES
(1, 1, 'Dr. Marcus', '2021-03-21', '0900, 1000, 1100, 1300, 1400, 1500'),
(2, 2, 'Dr. John', '2021-03-22', '1200, 1300, 1400, 1500, 1600, 1700'),
(3, 3, 'Dr. Kenny', '2021-03-23', '1600, 1700, 1800, 1900, 2000, 2100'),
(4, 1, 'Dr. Marcus', '2021-03-23', '1500, 1700, 1800, 1900, 2000, 2100');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pid` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(15) NOT NULL,
  `did` int(5) DEFAULT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `name`, `email`, `appointment_date`, `appointment_time`, `did`, `doctor_name`, `status`) VALUES
(1, 'Leslie Ng', NULL, '2021-03-22', '1000', NULL, NULL, 'booked'),
(2, 'Reuben Ong', NULL, '2021-03-21', '1300', NULL, NULL, 'booked'),
(3, 'Tan Li Ming', NULL, '2021-03-23', '1500', NULL, NULL, 'booked'),
(4, 'Amelia Soh', NULL, '2021-03-23', '1900', NULL, NULL, 'booked'),
(5, 'Jack Lam', NULL, '2021-03-22', '1400', NULL, NULL, 'booked');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DROP TABLE IF EXISTS `patientlogin`;
CREATE TABLE IF NOT EXISTS `patientlogin` (
  `fullname` char(50) NOT NULL,
  `NRIC` char(9) NOT NULL,
  PRIMARY KEY (`fullname`)
);

INSERT INTO `patientlogin` (`fullname`, `NRIC`) VALUES
('Amanda Ng', 'T0123456U'),
('Jessie Ong', 'T1234567I'),
('Tan See Hong', 'S1234567J'),
('Karen Soh', 'J1234567I'),
('Jonathan Liu', 'P1234567I');

