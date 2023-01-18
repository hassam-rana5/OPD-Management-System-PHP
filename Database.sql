-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2021 at 02:05 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `address_book`
--
CREATE DATABASE IF NOT EXISTS `address_book` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `address_book`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `date1` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `description`, `date1`) VALUES
(1, 'Ali Ahmed', 'Meeting', '01-01-2020'),
(4, 'ABC', 'Meeting', '30-04-2020');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `address`) VALUES
(4, ' Farhan', 'UAE'),
(3, 'Ali', 'UMT'),
(7, 'ABC', 'UMT'),
(9, ' ', '');
--
-- Database: `doctorp`
--
CREATE DATABASE IF NOT EXISTS `doctorp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `doctorp`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_id` varchar(11) NOT NULL,
  `Admin_name` varchar(50) DEFAULT NULL,
  `Admin_CNIC` varchar(20) DEFAULT NULL,
  `Admin_Password` varchar(20) DEFAULT NULL,
  `Admin_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `Admin_name`, `Admin_CNIC`, `Admin_Password`, `Admin_email`) VALUES
('AD123', 'Ahmed Ali', '35404-456789-2', 'admin', 'admin123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `Appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `Appointment_number` int(11) DEFAULT NULL,
  `Appointment_Date` date DEFAULT NULL,
  `Doctor_id` varchar(11) DEFAULT NULL,
  `Patient_id` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`Appointment_id`),
  KEY `Doctor_id` (`Doctor_id`),
  KEY `Patient_id` (`Patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `Bank_acc` varchar(20) NOT NULL,
  `Bank_Balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`Bank_acc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`Bank_acc`, `Bank_Balance`) VALUES
('25641578542', 200000),
('256321457786', 345677),
('785465896542', 342442),
('1254789654552', 200000),
('32564785412', 345677),
('120147785545', 45234),
('445578745696', 4578545),
('658974587455', 4215445),
('3541278455412', 4215789),
('4578996544122', 1254);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `Doctor_id` varchar(11) NOT NULL,
  `Doctor_name` varchar(50) DEFAULT NULL,
  `Doctor_age` int(11) DEFAULT NULL,
  `Doctor_gender` varchar(20) DEFAULT NULL,
  `Doctor_CNIC` varchar(20) DEFAULT NULL,
  `Doctor_Address` varchar(200) DEFAULT NULL,
  `Doctor_Password` varchar(20) DEFAULT NULL,
  `Doctor_qualification` varchar(100) DEFAULT NULL,
  `Doctor_experience` varchar(100) DEFAULT NULL,
  `Doctor_email` varchar(50) DEFAULT NULL,
  `Doctor_phone` varchar(20) DEFAULT NULL,
  `Bank_acc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Doctor_id`),
  KEY `Doctor_cn_fk` (`Bank_acc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_id`, `Doctor_name`, `Doctor_age`, `Doctor_gender`, `Doctor_CNIC`, `Doctor_Address`, `Doctor_Password`, `Doctor_qualification`, `Doctor_experience`, `Doctor_email`, `Doctor_phone`, `Bank_acc`) VALUES
('20001', 'Dr.Kamran Butt', 45, 'Male', '35401-254780-9', 'Lahore', '121217', 'Orthopedic,MBBS,FRCS,FEBOT', '15 years in Ireland & UK', 'kamranbutt@gmail.com', '03548745245', '25641578542'),
('20002', 'Dr. Sohail Muzammil', 55, 'Male', '35401-353243-2', 'Lahore', '434232', 'Orthopedic,MBBS,Diploma in Aerospace,FRCS,FCPS', '32 years', 'sohail@gmail.com', '034569787954', '256321457786'),
('20003', 'Dr. Abdul Wahab', 44, 'Male', '35485-325689-7', 'Lahore', '4546863', 'Bilary and Liver transplant,MBBS,FRCS,FCPS', '20 years', 'wahabahmed@gmail.com', '02154487949', '785465896542'),
('20004', 'Dr. Abeera Mansoor', 40, 'Female', '35984-457896-8', 'Lahore', '523698', 'Nephrologist at Doctors,MBBS,FRCS,FASN', '20 years', 'areeba@gmail.com', '03255644788', '1254789654552'),
('20005', 'Dr. Abid Quddus Qazi', 51, 'Male', '32544-457864-8', 'Lahore', '5455684', 'Pediatric surgeon,FCPS,FRCS,FEBPS,FRCS,CCT', '22 years', 'abidq@gmail.com', '02445879956', '32564785412'),
('20006', 'Dr. Alia Bashir', 60, 'Female', '36584-458745-7', 'Lahore', '235658', 'obstetrics / gynecology,MBBS,DGO,MCPS', '30 years', 'alibashir@gmail.com', '025456987965', '120147785545');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `Patient_id` varchar(11) NOT NULL,
  `Patient_name` varchar(50) DEFAULT NULL,
  `Patient_age` int(11) DEFAULT NULL,
  `Patient_gender` varchar(20) DEFAULT NULL,
  `Patient_Address` varchar(200) DEFAULT NULL,
  `Patient_Password` varchar(20) DEFAULT NULL,
  `Patient_email` varchar(50) DEFAULT NULL,
  `Patient_phone` varchar(20) DEFAULT NULL,
  `Bank_acc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Patient_id`),
  KEY `Patient_cn_fk` (`Bank_acc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_id`, `Patient_name`, `Patient_age`, `Patient_gender`, `Patient_Address`, `Patient_Password`, `Patient_email`, `Patient_phone`, `Bank_acc`) VALUES
('1000', 'Hassam Ali Rana', 21, 'Male', 'Lahore', '1122334455', 'hassamalirana@gmail.com', '03438442202', '445578745696'),
('1001', 'Muhammad Abdullah', 22, 'Male', 'Lahore', '124578', 'mabdullah@gmail.com', '03435687559', '658974587455'),
('1002', 'Muhammad Talha', 23, 'Male', 'Lahore', '4455544', 'talhaali@gmail.com', '03865478544', '3541278455412'),
('1003', 'Ifrah Faheem', 20, 'Female', 'Lahore', '787878', 'ifrah121@gmail.com', '03546897854', '4578996544122');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `Prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_id` varchar(11) DEFAULT NULL,
  `Doctor_id` varchar(11) DEFAULT NULL,
  `Rx` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Prescription_id`),
  KEY `Patient_id` (`Patient_id`),
  KEY `Doctor_id` (`Doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE IF NOT EXISTS `timetable` (
  `Doctor_id` varchar(11) DEFAULT NULL,
  `Stime` varchar(10) DEFAULT NULL,
  `Etime` varchar(10) DEFAULT NULL,
  KEY `TimeTable_cn_fk` (`Doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`Doctor_id`, `Stime`, `Etime`) VALUES
('D20001', '2:00pm', '6:00pm'),
('D20002', '4:00pm', '8:00pm'),
('D20003', '12:00pm', '4:00pm'),
('D20004', '2:00pm', '6:00pm'),
('D20005', '4:00pm', '8:00pm'),
('D20006', '12:00pm', '4:00pm');
--
-- Database: `matrix`
--
CREATE DATABASE IF NOT EXISTS `matrix` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `matrix`;
--
-- Database: `matrix_result`
--
CREATE DATABASE IF NOT EXISTS `matrix_result` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `matrix_result`;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `result`) VALUES
(1, ' 1,2,3,4'),
(2, ' 19,22,43,50'),
(3, ' 10,20,30,40'),
(4, ' 100,200,300,400'),
(5, '30,60,120,180'),
(6, '30,60,120,180');
--
-- Database: `result`
--
CREATE DATABASE IF NOT EXISTS `result` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `result`;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `result`) VALUES
(1, ' 1,2,3,4'),
(2, ' 19,22,43,50'),
(3, ' 10,20,30,40'),
(4, ' 100,200,300,400');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
