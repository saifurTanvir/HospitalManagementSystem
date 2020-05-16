-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2020 at 04:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_time_masters`
--

CREATE TABLE `appointment_time_masters` (
  `id` int(11) NOT NULL,
  `DrId` int(11) NOT NULL,
  `DrName` varchar(100) NOT NULL,
  `Shift` varchar(11) NOT NULL,
  `TimeDuration` varchar(100) NOT NULL,
  `DayName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_time_masters`
--

INSERT INTO `appointment_time_masters` (`id`, `DrId`, `DrName`, `Shift`, `TimeDuration`, `DayName`) VALUES
(15, 6, 'Nazib Mahfuz', 'Evening', '10:00 AM - 11:00  AM', 'Saturday'),
(16, 6, 'Nazib Mahfuz', 'Evening', '5:00 PM - 08:00  PM', 'Monday'),
(17, 3, 'Hasib Ahmed', 'Evening', '08:00 AM - 10:00  AM', 'Sunday'),
(18, 3, 'Hasib Ahmed', 'Evening', '7:00 PM - 08:00  PM', 'Thursday'),
(19, 5, 'Rumana Islam', 'Evening', '5:00 PM - 09:00  PM', 'Saturday'),
(22, 7, 'Maidul Islam', 'Evening', '5:00 PM - 08:00  PM', 'Friday'),
(23, 6, 'Nazib Mahfuz', 'Evening', '4:00 PM - 08:00  PM', 'Friday'),
(25, 17, 'Tasrin', 'Evening', '05:00 PM - 08:00  PM', 'Friday'),
(26, 8, 'Farhan Islam', 'Morning', '09:00 AM - 11:00  AM', 'Friday'),
(27, 8, 'Farhan Islam', 'Evening', '5:00 PM - 10:00  PM', 'Friday'),
(28, 22, 'Al Amin', 'Morning', '10:00 AM - 01:00  AM', 'Monday'),
(29, 22, 'Al Amin', 'Morning', '11:00 AM - 03:00  AM', 'Thursday');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `DoctorId` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Emergency` varchar(100) DEFAULT NULL,
  `Email` text NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Specialist` varchar(100) NOT NULL,
  `VisitingFee` varchar(10) NOT NULL,
  `Commission` varchar(10) NOT NULL,
  `ClosingDay` varchar(5) NOT NULL,
  `ProfilePicture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`DoctorId`, `Name`, `DOB`, `Gender`, `Phone`, `Emergency`, `Email`, `Address`, `Department`, `Specialist`, `VisitingFee`, `Commission`, `ClosingDay`, `ProfilePicture`) VALUES
(3, 'Hasib Ahmed', '2020-04-11', 'Male', '01258999522', NULL, 'hasib@gmail.com', 'Mirpur 10', 'Heart', 'Cardiologiest', '1000', '0', 'None', NULL),
(4, 'ABC', '1996-11-10', 'Male', '01777127618', NULL, 'nazibmahfuz603@gmail.com', 'Road 19,House 36,Nikunja 2,Khilkhet', 'Heart', 'Cardiologiest', '500', '0', 'None', NULL),
(5, 'Rumana Islam', '1993-05-25', 'Female', '01725555812', NULL, 'rumana25@gmail.com', 'South Chayabithi, Joydebpur, Gazipur', 'Neourology', 'Neourologist', '100', '2', 'Sat', NULL),
(6, 'Nazib Mahfuz', '2020-04-09', 'Male', '01777127618', NULL, 'nazibmahfuz60@gmail.com', 'Road 19,House 36,Nikunja 2,Khilkhet', 'Neourology', 'Cardiologiest', '5000', '2', 'None', NULL),
(7, 'Maidul Islam', '2020-04-14', 'Male', '01717295433', '01777127618', 'maidul_240@yahoo.com', 'Joydebpur, Gazipur,1742', 'Neourology', 'Neourologist', '100000', '100', 'None', '1585819005.png'),
(8, 'Farhan Islam', '2019-12-31', 'Female', '01777127618', NULL, 'nazibmahfuz60@gmail.com', 'Road 19,House 36,Nikunja 2,Khilkhet', 'Neourology', 'Cardiologiest', '1000', '2', 'Mon', '1585834366.jpg'),
(9, 'Tanvir', '2020-04-14', 'Male', '01258885522', NULL, 'tanvir20@gmail.com', 'Road 19,House 36,Nikunja 2,Khilkhet', 'Neourology', 'Neourologist', '1000', '2', 'None', '1585922936.png'),
(10, 'Shourov Islam', '2020-04-10', 'Male', '01777127618', NULL, 'nazibmahfuz60@gmail.com', 'Road 19,House 36,Nikunja 2,Khilkhet', 'Cardiology', 'Cardiologiest', '100', '3', 'Fri', '1586184921.png'),
(11, 'Saifur Rahman', '2020-04-09', 'Male', '01685284290', NULL, 'saifur.tanvir96@gmail.com', 'Nodda, Dhaka', 'Cardiology', 'Cardiologiest', '500', '25', 'None', '1586185618.png'),
(12, 'Sadia Islam', '2005-06-05', 'Female', '01765534181', '01777127618', 'sadia20@gmail.com', 'Rajabari,Sreepur,Gaziur', 'Cardiology', 'Cardiologiest', '1000', '2', 'Tue', '1586869994.png'),
(13, 'Rehana Perven', '2020-04-16', 'Female', '01765534181', NULL, 'rehana@gmail.com', 'Rajabari', 'Dental', 'Dentist', '1000', '23', 'None', '1586963450.png'),
(14, 'Test Doctor', '2020-04-08', 'Male', '01777127618', '01256898752', 'nazibmahfuz60@gmail.com', 'Road 19,House 36,Nikunja 2,Khilkhet', 'Dental', 'Dentist', '1000', '5', 'Tue', '1587136888.png'),
(16, 'Borhan Uddin', '2020-04-07', 'Male', '01256985231', NULL, 'borhanuddin25@gmail.com', 'Niketon', 'Dental', 'Dentist', '1000', '2', 'None', '1587649744.png'),
(17, 'Tasrin', '2020-04-22', 'Female', '01967979441', NULL, 'tasrin15@gmail.com', 'Mirpur-14', 'Dental', 'Dentist', '1500', '2', 'None', '1587963256.jpg'),
(18, 'ffff', '2020-04-30', 'Male', '01258963214', NULL, 'gg@gmail.com', 'scsc', 'Cardiology', 'Cardiologiest', '200', '1', 'None', '1588223482.png'),
(19, 'tttt', '2020-04-28', 'Male', '01777127618', NULL, 'tt@gmail.com', 'sdfghj', 'Neourology', 'Neourologist', '500', '1', 'None', '1588223570.png'),
(20, 'HH', '2020-04-03', 'Female', '01777127618', NULL, 'hh@gmail.com', 'sdfghjk', 'Neourology', 'Neourologist', '500', '1', 'None', '1588223717.png'),
(21, 'w', '2020-04-15', 'Male', '01777127618', NULL, 'borhanuddin25@gmail.com', 'wdwd', 'Heart', 'Neourologist', '500', '1', 'None', '1588223835.png'),
(22, 'Al Amin', '2020-04-09', 'Male', '01777127618', NULL, 'alamin@aiub.edu', 'Uttara', 'Neourology', 'Cardiologiest', '1000', '2', 'None', '1588223893.png');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `monthlyfee` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `profilePicture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `dob`, `gender`, `phone`, `email`, `designation`, `monthlyfee`, `address`, `status`, `profilePicture`) VALUES
(1, 'Nazib Mahfuz', '1997-01-02', 'Male', '01777127618', 'nazibmahfuz60@gmail.com', 'Manager', '5000', 'House:36, Road:19,Nikunja-02,Khilkhet,Dhaka', '', ''),
(2, 'Maildul Islam', '2020-04-09', 'Male', '01717295433', 'maidul_20@yahoo.com', 'HR', '1200', 'Gazipur Chawrasta', '', ''),
(3, 'Rehana Perven', '2018-03-14', 'Female', '01765534181', 'rehana@gmail.com', 'HR', '500000', 'Rajabari', '', ''),
(4, 'Hasib Ahmed Nill', '1995-10-02', 'Male', '01752896321', 'hasib3030@gmail.com', 'Receiptionist', '15000', 'Mirpur-10,Dhaka', 'Inactive', ''),
(5, 'Harun UR Rashid', '2020-04-15', 'Male', '01765534181', 'harun20@gmail.com', 'HR', '25000', 'Rajabari', '', ''),
(6, 'Ali Hasan', '1995-10-15', 'Male', '01258965231', 'alihasan471@gmail.com', 'HR', '24999', 'Basundhara', '', ''),
(7, 'Bristy Talukder', '2020-04-08', 'Female', '01258963254', 'bristy20@gmail.com', 'HR', '30000', 'Chittagong', '', ''),
(8, 'Nazib Mahfuz', '2020-04-13', 'Male', '01777127618', 'nazibmahfuz60@gmail.com', 'Receiptionist', '2500', 'Road 19,House 36,Nikunja 2,Khilkhet', '', ''),
(9, 'Shourov Islam', '2020-04-10', 'Male', '01777127618', 'nazibmahfuz60@gmail.com', 'Receiptionist', '25000', 'Road 19,House 36,Nikunja 2,Khilkhet', '', ''),
(10, 'Shourov Islam', '2020-04-10', 'Male', '01777127618', 'nazibmahfuz60@gmail.com', 'Receiptionist', '25000', 'Road 19,House 36,Nikunja 2,Khilkhet', '', ''),
(11, 'Sadia Islam', '2020-04-28', 'Female', '01765534181', 'sadia20@gmail.com', 'HR', '24998', 'gggg', 'Active', ''),
(12, 'NewName', '2020-04-14', 'Male', '01258963258', 'test@gmail.com', 'Receiptionist', '2500', 'scdscd', 'Inactive', NULL),
(13, 'test22', '2020-04-08', 'Male', '01234567890', 'test@gmail.com', 'Receiptionist', '025555', 'jhvxs', 'Active', 'Null'),
(14, 'abcdefg', '2000-02-22', 'Female', '01256896323', 'emp@gmail.com', 'Receiptionist', '12000', 'kjhgfd', 'Active', 'demoImg.png'),
(15, 'Samiul Haque', '2020-04-01', 'Male', '01725896321', 'samiul@gmail.com', 'Receiptionist', '2000', 'sreepur', 'Active', 'demoImg.png'),
(16, 'fvfdvfd', '2020-04-06', 'Male', '02365147895', 'fvfdv@gmail.com', 'Receiptionist', '2000', 'wcec', 'Inactive', 'demoImg.png');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_tests`
--

CREATE TABLE `hospital_tests` (
  `id` int(11) NOT NULL,
  `addingDate` varchar(50) NOT NULL,
  `testName` varchar(255) NOT NULL,
  `testShortName` varchar(100) NOT NULL,
  `testCost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital_tests`
--

INSERT INTO `hospital_tests` (`id`, `addingDate`, `testName`, `testShortName`, `testCost`) VALUES
(2705, '2020-05-02 17:22:01', 'Thyroxin', 'T4', '3000'),
(2706, '2020-05-02 17:23:29', 'Arterial blood gases', 'ABG', '560'),
(2707, '2020-05-02 17:24:06', 'Anterior cruciate ligament', 'ACL', '690'),
(2708, '2020-05-02 17:24:34', 'Complete blood count', 'CBC', '240'),
(2709, '2020-05-02 17:25:17', 'Coronary artery disease', 'CAD', '900'),
(2710, '2020-05-02 17:25:50', 'Congestive heart disesase', 'CHD', '1050'),
(2711, '2020-05-02 17:26:19', 'Chest x-ray', 'CXR', '2080'),
(2712, '2020-05-03 09:40:35', 'Echocardiogram', 'ECHO', '750'),
(2713, '2020-05-03 09:41:23', 'Hapatites A Virus', 'HAV', '550'),
(2714, '2020-05-03 09:41:42', 'Hapatites B Virus', 'HBA', '550'),
(2715, '2020-05-03 09:42:30', 'Low density lipoprotiet', 'LDL', '2300');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoiceNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoiceDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patientId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testCost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoiceNo`, `invoiceDate`, `patientId`, `testCode`, `testName`, `testCost`, `created_at`, `updated_at`) VALUES
(1, '202005093729', '2020-05-09 12:47:30', '1013', 'T4', 'Thyroxin', '230', '2020-05-09 00:47:30', '2020-05-09 00:47:30'),
(2, '202005093729', '2020-05-09 12:47:30', '1013', 'CXR', 'Chest x-ray', '2080', '2020-05-09 00:47:30', '2020-05-09 00:47:30'),
(3, '202005093729', '2020-05-09 12:47:31', '1013', 'CBC', 'Complete blood count', '240', '2020-05-09 00:47:31', '2020-05-09 00:47:31'),
(4, '2020050929888', '2020-05-09 12:54:01', '1009', 'ldl', 'Low density lipoprotiet', '2300', '2020-05-09 00:54:01', '2020-05-09 00:54:01'),
(5, '2020050929888', '2020-05-09 12:54:02', '1009', 'ACL', 'Anterior cruciate ligament', '690', '2020-05-09 00:54:02', '2020-05-09 00:54:02'),
(6, '2020050917166', '2020-05-09 15:01:40', '1017', 't4', 'Thyroxin', '230', '2020-05-09 03:01:40', '2020-05-09 03:01:40'),
(7, '2020050917166', '2020-05-09 15:01:40', '1017', 'cad', 'Coronary artery disease', '900', '2020-05-09 03:01:40', '2020-05-09 03:01:40'),
(8, '2020050917166', '2020-05-09 15:01:41', '1017', 'cbc', 'Complete blood count', '240', '2020-05-09 03:01:41', '2020-05-09 03:01:41'),
(9, '2020050917628', '2020-05-09 15:44:56', '1018', 'T4', 'Thyroxin', '230', '2020-05-09 03:44:56', '2020-05-09 03:44:56'),
(10, '2020050917628', '2020-05-09 15:44:56', '1018', 'CXR', 'Chest x-ray', '2080', '2020-05-09 03:44:56', '2020-05-09 03:44:56'),
(11, '2020050917628', '2020-05-09 15:44:56', '1018', 'ACL', 'Anterior cruciate ligament', '690', '2020-05-09 03:44:56', '2020-05-09 03:44:56'),
(12, '2020050917628', '2020-05-09 15:44:57', '1018', 'LDL', 'Low density lipoprotiet', '2300', '2020-05-09 03:44:57', '2020-05-09 03:44:57'),
(13, '2020050917628', '2020-05-09 15:44:57', '1018', 'ABG', 'Arterial blood gases', '560', '2020-05-09 03:44:57', '2020-05-09 03:44:57'),
(14, '2020050944525', '2020-05-09 15:56:54', '1019', 'CBC', 'Complete blood count', '240', '2020-05-09 03:56:54', '2020-05-09 03:56:54'),
(15, '2020050944525', '2020-05-09 15:56:54', '1019', 'CAD', 'Coronary artery disease', '900', '2020-05-09 03:56:54', '2020-05-09 03:56:54'),
(16, '2020050944525', '2020-05-09 15:56:54', '1019', 'ECHO', 'Echocardiogram', '750', '2020-05-09 03:56:54', '2020-05-09 03:56:54'),
(17, '202005094275', '2020-05-09 21:00:39', '1017', 'T4', 'Thyroxin', '230', '2020-05-09 09:00:39', '2020-05-09 09:00:39'),
(18, '202005094275', '2020-05-09 21:00:39', '1017', 'ACL', 'Anterior cruciate ligament', '690', '2020-05-09 09:00:39', '2020-05-09 09:00:39'),
(19, '202005094275', '2020-05-09 21:00:39', '1017', 'CAD', 'Coronary artery disease', '900', '2020-05-09 09:00:39', '2020-05-09 09:00:39'),
(20, '202005097727', '2020-05-09 21:08:45', '1017', 'T4', 'Thyroxin', '230', '2020-05-09 09:08:45', '2020-05-09 09:08:45'),
(21, '202005097727', '2020-05-09 21:08:45', '1017', 'CAD', 'Coronary artery disease', '900', '2020-05-09 09:08:45', '2020-05-09 09:08:45'),
(22, '2020050917580', '2020-05-09 21:09:35', '1017', 't4', 'Thyroxin', '230', '2020-05-09 09:09:35', '2020-05-09 09:09:35'),
(23, '2020050956813', '2020-05-09 21:13:13', '1017', 't4', 'Thyroxin', '230', '2020-05-09 09:13:13', '2020-05-09 09:13:13'),
(24, '2020050926708', '2020-05-09 21:14:48', '1011', 't4', 'Thyroxin', '230', '2020-05-09 09:14:48', '2020-05-09 09:14:48'),
(25, '2020050935830', '2020-05-09 21:16:52', '1012', 't4', 'Thyroxin', '230', '2020-05-09 09:16:52', '2020-05-09 09:16:52'),
(26, '2020050946543', '2020-05-09 21:18:04', '1009', 'cad', 'Coronary artery disease', '900', '2020-05-09 09:18:04', '2020-05-09 09:18:04'),
(27, '2020050946950', '2020-05-09 21:19:06', '1001', 'ldl', 'Low density lipoprotiet', '2300', '2020-05-09 09:19:06', '2020-05-09 09:19:06'),
(28, '2020051038733', '2020-05-10 09:18:11', '1012', 'ACL', 'Anterior cruciate ligament', '690', '2020-05-09 21:18:11', '2020-05-09 21:18:11'),
(29, '2020051038733', '2020-05-10 09:18:12', '1012', 'CAD', 'Coronary artery disease', '900', '2020-05-09 21:18:12', '2020-05-09 21:18:12'),
(30, '2020051014303', '2020-05-10 09:19:38', '1013', 'CAD', 'Coronary artery disease', '900', '2020-05-09 21:19:38', '2020-05-09 21:19:38'),
(31, '2020051014303', '2020-05-10 09:19:38', '1013', 'ACL', 'Anterior cruciate ligament', '690', '2020-05-09 21:19:38', '2020-05-09 21:19:38'),
(32, '2020051015349', '2020-05-10 09:20:46', '1001', 'ACL', 'Anterior cruciate ligament', '690', '2020-05-09 21:20:46', '2020-05-09 21:20:46'),
(33, '2020051021715', '2020-05-10 09:22:40', '1001', 'CAD', 'Coronary artery disease', '900', '2020-05-09 21:22:40', '2020-05-09 21:22:40'),
(34, '2020051021715', '2020-05-10 09:22:48', '1001', 'CAD', 'Coronary artery disease', '900', '2020-05-09 21:22:48', '2020-05-09 21:22:48'),
(35, '2020051045462', '2020-05-10 09:28:05', '1003', 't4', 'Thyroxin', '230', '2020-05-09 21:28:05', '2020-05-09 21:28:05'),
(36, '202005101345', '2020-05-10 09:31:51', '1013', 't4', 'Thyroxin', '230', '2020-05-09 21:31:51', '2020-05-09 21:31:51'),
(37, '2020051036294', '2020-05-10 09:33:54', '1001', 'cad', 'Coronary artery disease', '900', '2020-05-09 21:33:54', '2020-05-09 21:33:54'),
(38, '202005105572', '2020-05-10 09:49:30', '1001', 'cad', 'Coronary artery disease', '900', '2020-05-09 21:49:30', '2020-05-09 21:49:30'),
(39, '202005105572', '2020-05-10 09:49:30', '1001', 'cbc', 'Complete blood count', '240', '2020-05-09 21:49:30', '2020-05-09 21:49:30'),
(40, '2020051055777', '2020-05-10 09:51:18', '1001', 'cbc', 'Complete blood count', '240', '2020-05-09 21:51:18', '2020-05-09 21:51:18'),
(41, '2020051055777', '2020-05-10 09:51:18', '1001', 'cxr', 'Chest x-ray', '2080', '2020-05-09 21:51:18', '2020-05-09 21:51:18'),
(42, '202005104308', '2020-05-10 09:54:29', '1010', 'cbc', 'Complete blood count', '240', '2020-05-09 21:54:29', '2020-05-09 21:54:29'),
(43, '202005104308', '2020-05-10 09:54:29', '1010', 'cad', 'Coronary artery disease', '900', '2020-05-09 21:54:29', '2020-05-09 21:54:29'),
(44, '202005104308', '2020-05-10 09:54:31', '1010', 'cbc', 'Complete blood count', '240', '2020-05-09 21:54:31', '2020-05-09 21:54:31'),
(45, '202005104308', '2020-05-10 09:54:31', '1010', 'cad', 'Coronary artery disease', '900', '2020-05-09 21:54:31', '2020-05-09 21:54:31'),
(46, '2020051031183', '2020-05-10 09:59:49', '1001', 'echo', 'Echocardiogram', '750', '2020-05-09 21:59:49', '2020-05-09 21:59:49'),
(47, '2020051037427', '2020-05-10 10:17:55', '1013', 'acl', 'Anterior cruciate ligament', '690', '2020-05-09 22:17:55', '2020-05-09 22:17:55'),
(48, '2020051045177', '2020-05-10 10:20:02', '1017', 'cad', 'Coronary artery disease', '900', '2020-05-09 22:20:02', '2020-05-09 22:20:02'),
(49, '20200510642', '2020-05-10 10:23:27', '1017', 'CBC', 'Complete blood count', '240', '2020-05-09 22:23:27', '2020-05-09 22:23:27'),
(50, '20200510642', '2020-05-10 10:23:27', '1017', 'CXR', 'Chest x-ray', '2080', '2020-05-09 22:23:27', '2020-05-09 22:23:27'),
(51, '2020051024118', '2020-05-10 10:24:43', '1016', 'cxr', 'Chest x-ray', '2080', '2020-05-09 22:24:43', '2020-05-09 22:24:43'),
(52, '2020051018396', '2020-05-10 10:26:34', '1012', 'cbc', 'Complete blood count', '240', '2020-05-09 22:26:34', '2020-05-09 22:26:34'),
(53, '202005101624', '2020-05-10 10:29:35', '1011', 'CBC', 'Complete blood count', '240', '2020-05-09 22:29:35', '2020-05-09 22:29:35'),
(54, '202005101624', '2020-05-10 10:29:35', '1011', 'CXR', 'Chest x-ray', '2080', '2020-05-09 22:29:35', '2020-05-09 22:29:35'),
(55, '2020051015909', '2020-05-10 10:32:29', '1012', 'T4', 'Thyroxin', '230', '2020-05-09 22:32:29', '2020-05-09 22:32:29'),
(56, '2020051039123', '2020-05-10 11:09:18', '1017', 'T4', 'Thyroxin', '230', '2020-05-09 23:09:18', '2020-05-09 23:09:18'),
(57, '2020051039123', '2020-05-10 11:09:18', '1017', 'CBC', 'Complete blood count', '240', '2020-05-09 23:09:18', '2020-05-09 23:09:18'),
(58, '2020051039123', '2020-05-10 11:09:19', '1017', 'ACL', 'Anterior cruciate ligament', '690', '2020-05-09 23:09:19', '2020-05-09 23:09:19'),
(59, '2020051039123', '2020-05-10 11:09:20', '1017', 'ECHO', 'Echocardiogram', '750', '2020-05-09 23:09:20', '2020-05-09 23:09:20'),
(60, '2020051021165', '2020-05-10 20:43:09', '1013', 'T4', 'Thyroxin', '230', '2020-05-10 08:43:09', '2020-05-10 08:43:09'),
(61, '2020051021165', '2020-05-10 20:43:10', '1013', 'ACL', 'Anterior cruciate ligament', '690', '2020-05-10 08:43:10', '2020-05-10 08:43:10'),
(62, '2020051021165', '2020-05-10 20:43:10', '1013', 'CAD', 'Coronary artery disease', '900', '2020-05-10 08:43:10', '2020-05-10 08:43:10'),
(63, '2020051021165', '2020-05-10 20:43:10', '1013', 'CBC', 'Complete blood count', '240', '2020-05-10 08:43:10', '2020-05-10 08:43:10'),
(64, '2020051021165', '2020-05-10 20:43:11', '1013', 'LDL', 'Low density lipoprotiet', '2300', '2020-05-10 08:43:11', '2020-05-10 08:43:11'),
(65, '2020051021165', '2020-05-10 20:43:11', '1013', 'ABG', 'Arterial blood gases', '560', '2020-05-10 08:43:11', '2020-05-10 08:43:11'),
(66, '2020051021165', '2020-05-10 20:43:12', '1013', 'CHD', 'Congestive heart disesase', '1050', '2020-05-10 08:43:12', '2020-05-10 08:43:12'),
(67, '2020051021165', '2020-05-10 20:43:12', '1013', 'CXR', 'Chest x-ray', '2080', '2020-05-10 08:43:12', '2020-05-10 08:43:12'),
(68, '2020051021165', '2020-05-10 20:43:12', '1013', 'ECHO', 'Echocardiogram', '750', '2020-05-10 08:43:12', '2020-05-10 08:43:12'),
(69, '2020051021165', '2020-05-10 20:43:13', '1013', 'HAV', 'Hapatites A Virus', '550', '2020-05-10 08:43:13', '2020-05-10 08:43:13'),
(70, '2020051021165', '2020-05-10 20:43:13', '1013', 'HBA', 'Hapatites B Virus', '550', '2020-05-10 08:43:13', '2020-05-10 08:43:13'),
(71, '2020051124818', '2020-05-11 12:55:17', '1020', 'CBC', 'Complete blood count', '240', '2020-05-11 00:55:17', '2020-05-11 00:55:17'),
(72, '2020051124818', '2020-05-11 12:55:17', '1020', 'CAD', 'Coronary artery disease', '900', '2020-05-11 00:55:17', '2020-05-11 00:55:17'),
(73, '2020051124818', '2020-05-11 12:55:18', '1020', 'CXR', 'Chest x-ray', '2080', '2020-05-11 00:55:18', '2020-05-11 00:55:18'),
(74, '2020051246853', '2020-05-12 10:58:40', '1019', 'T4', 'Thyroxin', '230', '2020-05-11 22:58:40', '2020-05-11 22:58:40'),
(75, '2020051246853', '2020-05-12 10:58:40', '1019', 't4', 'Thyroxin', '230', '2020-05-11 22:58:40', '2020-05-11 22:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_masters`
--

CREATE TABLE `invoice_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoiceNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoiceDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patientId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patientName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patientPhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalCost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `netAmount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paidAmount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dueAmount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `givenAmount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returnAmount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reportDelivery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_masters`
--

INSERT INTO `invoice_masters` (`id`, `invoiceNo`, `invoiceDate`, `patientId`, `patientName`, `patientPhone`, `totalCost`, `discount`, `netAmount`, `paidAmount`, `dueAmount`, `givenAmount`, `returnAmount`, `status`, `reportDelivery`, `deliveryDate`, `created_at`, `updated_at`) VALUES
(1, '2020050654126', '2020-05-06 09:29:02', '1012', 'Harun UR Rashid', '01777127618', '1820', '30', '1274', '1820', '620', '1500', '300', 'Not Clear', 'Not Delivered', 'No Date', NULL, '2020-05-16 02:51:33'),
(2, '2020050656987', '2020-05-06 09:30:45', '1013', 'Nirob Hasan', '025668888', '3780', '0', '3780', '3780', '1780', '2000', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(3, '2020050647506', '2020-05-06 10:03:31', '1009', 'Radib Hossain', '0125889922', '920', '0', '920', '920', '0', '1000', '80', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(4, '2020050649595', '2020-05-06 12:31:10', '1014', 'Rehana Perven', '0175888888', '920', '0', '920', '920', '420', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(5, '2020050642962', '2020-05-06 12:43:10', '1009', 'Radib Hossain', '0125889922', '1130', '0', '1130', '1000', '130', '1000', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(6, '2020050619597', '2020-05-06 17:40:07', '1009', 'Radib Hossain', '0125889922', '470', '0', '470', '470', '0', '470', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(7, '202005067371', '2020-05-06 18:00:24', '1009', 'Radib Hossain', '0125889922', '230', '0', '230', '230', '0', '230', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(8, '2020050650227', '2020-05-06 18:11:11', '1001', 'xyz', '23564', '230', '0', '230', '230', '0', '230', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(9, '2020050633546', '2020-05-06 18:17:01', '1010', 'Kajol Hossain', '01777127616', '2080', '0', '2080', '2080', '0', '2080', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(10, '2020050723696', '2020-05-07 09:59:42', '1006', 'Dipa', '012569988', '1590', '0', '1590', '1590', '0', '1000', '0', 'Clear', 'Delivered', '2020-05-07 10:30:59', NULL, NULL),
(11, '2020050724940', '2020-05-07 10:41:48', '1016', 'Rasel Isalm', '015256988', '2550', '0', '2550', '2550', '0', '1500', '0', 'Clear', 'Delivered', '2020-05-07 10:42:35', NULL, NULL),
(12, '2020050749853', '2020-05-07 10:46:15', '1016', 'Rasel Isalm', '015256988', '230', '0', '230', '230', '0', '230', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(13, '202005093952', '2020-05-09 10:49:02', '1012', 'Harun UR Rashid', '01777127618', '2320', '20', '2300', '2300', '800', '1500', '0', 'Clear', 'Delivered', '2020-05-09 10:50:45', NULL, NULL),
(14, '2020050943427', '2020-05-09 10:58:10', '1012', 'Harun UR Rashid', '01777127618', '920', '0', '920', '920', '0', '920', '0', 'Clear', 'Delivered', '2020-05-09 10:59:19', NULL, NULL),
(15, '2020050910196', '2020-05-09 11:00:30', '1009', 'Radib Hossain', '0125889922', '1130', '7', '1050.9', '1130', '0', '1130', '0', 'Clear', 'Not Delivered', 'No Date', NULL, '2020-05-13 12:18:19'),
(16, '2020050917300', '2020-05-09 11:09:36', '1012', 'Harun UR Rashid', '01777127618', '920', '0', '920', '920', '0', '920', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(17, '2020050913907', '2020-05-09 11:14:00', '1010', 'Kajol Hossain', '01777127616', '2770', '0', '2770', '2770', '0', '2770', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(18, '2020050950813', '2020-05-09 11:16:17', '1012', 'Harun UR Rashid', '01777127618', '1130', '0', '1130', '1130', '0', '1130', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(19, '202005093455', '2020-05-09 11:55:16', '1010', 'Kajol Hossain', '01777127616', '230', '0', '230', '230', '0', '230', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(20, '2020050936238', '2020-05-09 11:55:52', '1011', 'Sha Naim Shourov', '0125966622', '1130', '0', '1130', '1130', '0', '1130', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(21, '2020050932163', '2020-05-09 11:57:50', '1011', 'Sha Naim Shourov', '0125966622', '1130', '0', '1130', '1130', '0', '1130', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(22, '2020050942471', '2020-05-09 12:04:03', '1011', 'Sha Naim Shourov', '0125966622', '1590', '0', '1590', '1590', '0', '1590', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(23, '2020050929137', '2020-05-09 12:05:53', '1012', 'Harun UR Rashid', '01777127618', '2980', '0', '2980', '2980', '0', '2980', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(24, '2020050922197', '2020-05-09 12:15:42', '1011', 'Sha Naim Shourov', '0125966622', '1130', '0', '1130', '1130', '0', '1130', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(25, '2020050953371', '2020-05-09 12:23:45', '1011', 'Sha Naim Shourov', '0125966622', '6210', '0', '6210', '3000', '3210', '3000', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(26, '2020050950398', '2020-05-09 12:29:03', '1012', 'Harun UR Rashid', '01777127618', '3210', '0', '3210', '3210', '0', '3210', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(27, '2020050911577', '2020-05-09 12:31:33', '1011', 'Sha Naim Shourov', '0125966622', '3210', '0', '3210', '3210', '0', '3210', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(28, '202005098423', '2020-05-09 12:32:29', '1010', 'Kajol Hossain', '01777127616', '2310', '0', '2310', '2310', '0', '2310', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(29, '2020050958699', '2020-05-09 12:35:24', '1014', 'Rehana Perven', '0175888888', '2550', '0', '2550', '2550', '0', '2550', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(30, '2020050928493', '2020-05-09 12:37:49', '1014', 'Rehana Perven', '0175888888', '3000', '0', '3000', '3000', '0', '3000', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(31, '202005095111', '2020-05-09 12:39:22', '1012', 'Harun UR Rashid', '01777127618', '1130', '0', '1130', '1130', '0', '1130', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(32, '2020050938605', '2020-05-09 12:44:25', '1009', 'Radib Hossain', '0125889922', '3210', '0', '3210', '1500', '1710', '1500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(33, '202005093729', '2020-05-09 12:47:31', '1013', 'Nirob Hasan', '025668888', '2550', '0', '2550', '2550', '0', '2550', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(34, '2020050929888', '2020-05-09 12:54:01', '1009', 'Radib Hossain', '0125889922', '2990', '0', '2990', '2990', '0', '1200', '0', 'Clear', 'Delivered', '2020-05-09 20:55:24', NULL, NULL),
(35, '2020050917166', '2020-05-09 15:01:39', '1017', 'Tanvir Ahmed', '01258899', '1370', '0', '1370', '1370', '0', '1000', '0', 'Clear', 'Delivered', '2020-05-09 15:02:03', NULL, NULL),
(36, '2020050917628', '2020-05-09 15:44:55', '1018', 'Sadia Islam', '01765534181', '5860', '5', '5567', '5860', '0', '3000', '0', 'Clear', 'Delivered', '2020-05-09 15:45:38', NULL, '2020-05-13 12:28:47'),
(37, '2020050944525', '2020-05-09 15:56:53', '1019', 'Nazib Mahfuz', '01777127618', '1890', '0', '1890', '1890', '0', '1500', '0', 'Clear', 'Delivered', '2020-05-09 15:57:32', NULL, NULL),
(38, '202005094275', '2020-05-09 21:00:38', '1017', 'Tanvir Ahmed', '01258899', '1820', '0', '1820', '1820', '0', '1000', '0', 'Clear', 'Delivered', '2020-05-09 21:01:37', NULL, NULL),
(39, '202005097727', '2020-05-09 21:08:44', '1017', 'Tanvir Ahmed', '01258899', '1130', '0', '1130', '500', '630', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(40, '2020050917580', '2020-05-09 21:09:35', '1017', 'Tanvir Ahmed', '01258899', '230', '0', '230', '230', '0', '500', '270', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(41, '2020050956813', '2020-05-09 21:13:12', '1017', 'Tanvir Ahmed', '01258899', '230', '0', '230', '230', '0', '230', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(42, '2020050926708', '2020-05-09 21:14:47', '1011', 'Sha Naim Shourov', '0125966622', '230', '0', '230', '230', '0', '230', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(43, '2020050935830', '2020-05-09 21:16:52', '1012', 'Harun UR Rashid', '01777127618', '230', '0', '230', '230', '0', '230', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(44, '2020050946543', '2020-05-09 21:18:04', '1009', 'Radib Hossain', '0125889922', '900', '0', '900', '900', '0', '1000', '100', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(45, '2020050946950', '2020-05-09 21:19:06', '1001', 'xyz', '23564', '2300', '0', '2300', '2300', '0', '2500', '200', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(46, '2020051038733', '2020-05-10 09:18:11', '1012', 'Harun UR Rashid', '01777127618', '1590', '0', '1590', '1000', '590', '1000', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(47, '2020051014303', '2020-05-10 09:19:37', '1013', 'Nirob Hasan', '025668888', '1590', '0', '1590', '1000', '590', '1000', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(48, '2020051015349', '2020-05-10 09:20:46', '1001', 'xyz', '23564', '690', '0', '690', '500', '190', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(49, '2020051021715', '2020-05-10 09:22:39', '1001', 'xyz', '23564', '900', '0', '900', '500', '400', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(50, '2020051021715', '2020-05-10 09:22:47', '1001', 'xyz', '23564', '900', '0', '900', '500', '400', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(51, '2020051045462', '2020-05-10 09:28:04', '1003', 'Tawhid Rahman', '01525889', '230', '0', '230', '100', '130', '100', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(52, '202005101345', '2020-05-10 09:31:51', '1013', 'Nirob Hasan', '025668888', '230', '0', '230', '100', '130', '100', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(53, '2020051036294', '2020-05-10 09:33:54', '1001', 'xyz', '23564', '900', '0', '900', '500', '400', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(54, '202005105572', '2020-05-10 09:49:29', '1001', 'xyz', '23564', '1140', '0', '1140', '500', '640', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(55, '2020051055777', '2020-05-10 09:51:17', '1001', 'xyz', '23564', '2320', '0', '2320', '1200', '1120', '1500', '300', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(56, '202005104308', '2020-05-10 09:54:28', '1010', 'Kajol Hossain', '01777127616', '1140', '0', '1140', '500', '640', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(57, '202005104308', '2020-05-10 09:54:31', '1010', 'Kajol Hossain', '01777127616', '1140', '0', '1140', '500', '640', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(58, '2020051031183', '2020-05-10 09:59:49', '1001', 'xyz', '23564', '750', '0', '750', '500', '250', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(59, '202005101069', '2020-05-10 10:11:32', '1010', 'Kajol Hossain', '01777127616', '900', '0', '900', '500', '400', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(60, '2020051037427', '2020-05-10 10:17:54', '1013', 'Nirob Hasan', '025668888', '690', '0', '690', '500', '190', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(61, '2020051045177', '2020-05-10 10:20:01', '1017', 'Tanvir Ahmed', '01258899', '900', '0', '900', '500', '400', '500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(62, '20200510642', '2020-05-10 10:23:26', '1017', 'Tanvir Ahmed', '01258899', '2320', '0', '2320', '1200', '1120', '1200', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(63, '2020051024118', '2020-05-10 10:24:42', '1016', 'Rasel Isalm', '015256988', '2080', '0', '2080', '1500', '580', '1500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(64, '2020051018396', '2020-05-10 10:26:33', '1012', 'Harun UR Rashid', '01777127618', '240', '0', '240', '240', '0', '240', '0', 'Clear', 'Not Delivered', 'No Date', NULL, NULL),
(65, '202005101624', '2020-05-10 10:29:35', '1011', 'Sha Naim Shourov', '0125966622', '2320', '0', '2320', '1500', '820', '1500', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(66, '2020051015909', '2020-05-10 10:32:29', '1012', 'Harun UR Rashid', '01777127618', '230', '0', '230', '100', '130', '100', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(67, '2020051039123', '2020-05-10 11:09:17', '1017', 'Tanvir Ahmed', '01258899', '1910', '0', '1910', '1200', '710', '1500', '300', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(68, '2020051021165', '2020-05-10 20:43:09', '1013', 'Nirob Hasan', '025668888', '9900', '0', '9900', '5000', '4900', '5000', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL),
(69, '2020051124818', '2020-05-11 12:55:17', '1020', 'Al Amin', '01258866', '3220', '15.55', '2719.29', '3220', '0', '1500', '0', 'Clear', 'Delivered', '2020-05-11 12:55:57', NULL, '2020-05-13 12:20:37'),
(70, '2020051246853', '2020-05-12 10:58:40', '1019', 'Nazib Mahfuz', '01777127618', '460', '0', '460', '300', '160', '300', '0', 'Not Clear', 'Not Delivered', 'No Date', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_05_12_062830_create_super_admins_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patientlist_masters`
--

CREATE TABLE `patientlist_masters` (
  `id` int(11) NOT NULL,
  `patientId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `registerDate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientlist_masters`
--

INSERT INTO `patientlist_masters` (`id`, `patientId`, `name`, `contact`, `gender`, `age`, `type`, `registerDate`) VALUES
(6, 1003, 'Tawhid Rahman', '01525889', 'Male', 26, 'Outdoor', '2020-04-25 10:58:59'),
(7, 1001, 'xyz', '23564', 'Female', 32, 'Indoor', '2020-04-25 11:00:23'),
(10, 1004, 'Aish', '01967979441', 'Female', 20, 'Outdoor', '2020-04-25 11:09:29'),
(11, 1005, 'Kader Khan', '0258893', 'Male', 41, 'Outdoor', '2020-04-25 14:48:32'),
(12, 1006, 'Dipa', '012569988', 'Female', 20, 'Outdoor', '2020-04-28 09:46:36'),
(13, 1009, 'Radib Hossain', '0125889922', 'Male', 2, 'Indoor', '2020-05-01 09:26:16'),
(14, 1010, 'Kajol Hossain', '01777127616', 'Male', 31, 'Outdoor', '2020-05-02 15:38:36'),
(15, 1011, 'Sha Naim Shourov', '0125966622', 'Male', 23, 'Outdoor', '2020-05-03 10:24:21'),
(16, 1012, 'Harun UR Rashid', '01777127618', 'Male', 56, 'Outdoor', '2020-05-03 12:42:35'),
(17, 1013, 'Nirob Hasan', '025668888', 'Male', 26, 'Outdoor', '2020-05-04 13:03:38'),
(18, 1014, 'Rehana Perven', '0175888888', 'Female', 52, 'Outdoor', '2020-05-05 10:51:42'),
(19, 1016, 'Rasel Isalm', '015256988', 'Male', 28, 'Indoor', '2020-05-07 10:41:21'),
(20, 1017, 'Tanvir Ahmed', '01258899', 'Male', 23, 'Outdoor', '2020-05-09 15:01:13'),
(21, 1018, 'Sadia Islam', '01765534181', 'Female', 15, 'Indoor', '2020-05-09 15:43:13'),
(22, 1019, 'Nazib Mahfuz', '01777127618', 'Male', 23, 'Outdoor', '2020-05-09 15:55:39'),
(23, 1020, 'Al Amin', '01258866', 'Male', 30, 'Indoor', '2020-05-11 12:54:21'),
(24, 1050, 'ghgh', 'sdf', 'Male', 12, 'Indoor', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_appointments`
--

CREATE TABLE `patient_appointments` (
  `id` int(11) NOT NULL,
  `appointmentDate` varchar(100) NOT NULL,
  `bookingDate` varchar(100) NOT NULL,
  `appointmentDay` varchar(100) NOT NULL,
  `appointmentTime` varchar(150) NOT NULL,
  `drName` varchar(255) NOT NULL,
  `drId` int(100) DEFAULT NULL,
  `patientName` varchar(255) NOT NULL,
  `patientId` varchar(255) NOT NULL,
  `pContact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_appointments`
--

INSERT INTO `patient_appointments` (`id`, `appointmentDate`, `bookingDate`, `appointmentDay`, `appointmentTime`, `drName`, `drId`, `patientName`, `patientId`, `pContact`) VALUES
(7, '2020-04-23', '2020-04-23 09:29:02', 'Thursday', '08:20 AM - 08:30 AM', 'Hasib Ahmed', 3, 'xyz', '1001', '23564'),
(8, '2020-04-23', '2020-04-23 09:59:16', 'Thursday', '7:00 PM - 7:20 PM', 'Hasib Ahmed', 3, 'dsfghjmj,', '1002', 'fghjkl;j'),
(9, '2020-05-02', '2020-04-23 13:47:33', 'Saturday', '5:40 PM - 6:00 PM', 'Rumana Islam', 5, 'Tawhid Rahman', '1003', '01525889'),
(10, '2020-05-02', '2020-04-25 11:08:18', 'Saturday', '7:40 PM - 8:00 PM', 'Rumana Islam', 5, 'Aish', '1004', '01967979441'),
(11, '2020-04-17', '2020-04-25 14:47:36', 'Friday', '5:20 PM - 5:40 PM', 'Maidul Islam', 7, 'Kader Khan', '1005', '0258893'),
(12, '2020-04-25', '2020-04-28 09:45:49', 'Saturday', '10:40 AM - 11:00 AM', 'Borhan Uddin', 12, 'Dipa', '1006', '012569988'),
(13, '2020-04-18', '2020-04-29 10:34:53', 'Saturday', '10:00 AM - 10:20 AM', 'Nazib Mahfuz', 13, 'abc1', '1007', 'abc1'),
(14, '2020-04-18', '2020-04-29 10:35:24', 'Saturday', '10:20 AM - 10:40 AM', 'Nazib Mahfuz', 13, 'abc2', '1007', 'abc2'),
(15, '2020-04-27', '2020-04-29 10:43:52', 'Monday', '5:00 PM - 5:20 PM', 'Nazib Mahfuz', 13, 'tt', '1007', 'tt'),
(16, '2020-04-27', '2020-04-29 10:49:53', 'Monday', '5:40 PM - 6:00 PM', 'Nazib Mahfuz', 13, 'hh', '1008', 'hh'),
(17, '2020-05-01', '2020-04-30 11:05:51', 'Friday', '05:40 PM - 6:00 PM', 'Tasrin', 17, 'Radib Hossain', '1009', '0125889922'),
(18, '2020-05-08', '2020-05-02 15:37:10', 'Friday', '05:00 PM - 05:20 PM', 'Tasrin', 17, 'Kajol Hossain', '1010', '01777127616'),
(19, '2020-05-08', '2020-05-03 10:23:03', 'Friday', '6:20 PM - 6:40 PM', 'Maidul Islam', 7, 'Sha Naim Shourov', '1011', '0125966622'),
(20, '2020-05-08', '2020-05-03 12:42:02', 'Friday', '5:00 PM - 5:15 PM', 'Farhan Islam', 20, 'Harun UR Rashid', '1012', '01777127618'),
(21, '2020-05-09', '2020-05-04 13:03:23', 'Saturday', '10:20 AM - 10:40 AM', 'Nazib Mahfuz', 13, 'Nirob Hasan', '1013', '025668888'),
(22, '2020-05-14', '2020-05-05 10:51:11', 'Thursday', '08:10 AM - 08:20 AM', 'Hasib Ahmed', 3, 'Rehana Perven', '1014', '0175888888'),
(23, '2020-05-16', '2020-05-05 17:47:49', 'Saturday', '10:00 AM - 10:20 AM', 'Nazib Mahfuz', 13, 'Tanvir', '1015', '012589666'),
(24, '2020-05-08', '2020-05-07 10:40:12', 'Friday', '6:0 PM - 6:20 PM', 'Tasrin', 17, 'Rasel Isalm', '1016', '015256988'),
(25, '2020-05-15', '2020-05-09 15:00:37', 'Friday', '4:00 PM - 4:20 PM', 'Nazib Mahfuz', 13, 'Tanvir Ahmed', '1017', '01258899'),
(26, '2020-05-14', '2020-05-09 15:42:40', 'Thursday', '9:0 AM - 9:10 AM', 'Hasib Ahmed', 3, 'Sadia Islam', '1018', '01765534181'),
(27, '2020-05-14', '2020-05-09 15:54:25', 'Thursday', '11:40 AM - 12:00 AM', 'Al Amin', 22, 'Nazib Mahfuz', '1019', '01777127618'),
(28, '2020-05-15', '2020-05-11 12:53:16', 'Friday', '05:20 PM - 05:40 PM', 'Tasrin', 17, 'Al Amin', '1020', '01258866');

-- --------------------------------------------------------

--
-- Table structure for table `super_admins`
--

CREATE TABLE `super_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gander` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saifur', 'saifur@123.com', NULL, '$2y$10$u7aHWXndQ5vNRkk2jib8COvIEITJ16w7qRfmU83CSuPVvJt3b9cHK', NULL, '2020-05-16 07:54:35', '2020-05-16 07:54:35'),
(2, 'Victor', 'victor@123.com', NULL, '$2y$10$PgEn4I7zAhzeLe6d4JkHeu6g.KtMHxBD9iD.pPSNbPnt/K1j/Dw.u', NULL, '2020-05-16 08:15:11', '2020-05-16 08:15:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_time_masters`
--
ALTER TABLE `appointment_time_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`DoctorId`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_tests`
--
ALTER TABLE `hospital_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_masters`
--
ALTER TABLE `invoice_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patientlist_masters`
--
ALTER TABLE `patientlist_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_admins`
--
ALTER TABLE `super_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_time_masters`
--
ALTER TABLE `appointment_time_masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `DoctorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital_tests`
--
ALTER TABLE `hospital_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2718;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `invoice_masters`
--
ALTER TABLE `invoice_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patientlist_masters`
--
ALTER TABLE `patientlist_masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `super_admins`
--
ALTER TABLE `super_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
