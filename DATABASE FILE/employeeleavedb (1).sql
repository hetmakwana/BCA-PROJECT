-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2024 at 08:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeleavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(5, 'Het', '827ccb0eea8a706c4c34a16891f84e7b', 'Makwana Het ', 'het@gmail.com', '2024-01-20 11:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(9, 'Human Resources ', 'HR', 'HR160', '2023-02-25 17:04:22'),
(10, 'Information Technology', 'IT', 'IT807', '2023-02-25 17:11:20'),
(11, 'Operations', 'OP', 'OP640', '2023-02-25 17:12:31'),
(12, 'Volunteer', 'VL', 'VL9696', '2023-02-25 17:13:08'),
(13, 'Marketing', 'MK', 'MK369', '2023-02-25 17:13:41'),
(14, 'Finance', 'FI', 'FI123', '2023-02-25 17:14:09'),
(15, 'Sales', 'SS', 'SS469', '2023-02-25 17:14:34'),
(16, 'Research', 'RS', 'RS666', '2023-02-25 17:15:03'),
(17, 'administration department', 'AD', 'AD8', '2024-02-08 11:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(10, 'HM1', 'Het', 'Mak', 'het@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'female', '2003-12-31', 'Information Technology', 'japan', 'tokyo', 'India ', '5636231566', 1, '2024-01-02 17:33:18'),
(12, 'NU2', 'Naruto', 'uzuma', 'naruto@Gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '1995-01-19', 'Operations', 'greenpark', 'Radhanpur', 'japan', '8469190101', 1, '2023-02-25 17:45:25'),
(13, 'sya3', 'Sakura', 'yamauchi', 'sakura@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '1997-08-08', 'Volunteer', 'Lalbag', 'Radhanpur', 'India ', '7487948817', 1, '2023-02-25 17:49:46'),
(20, 'NS4', 'Nishiniya', 'shoko', 'nishi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '2003-05-08', 'Research', 'chiba', 'chiba', 'japan', '5342343434', 1, '2024-01-25 05:46:05'),
(21, 'GN5', 'Gaara', 'hsuoo', 'gaara@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Male', '2000-01-06', 'Marketing', 'patan', 'radhanpur', 'india', '5446723736', 1, '2024-01-25 06:31:46'),
(22, 'HR5', 'Hinata  ', 'hyuga', 'hinata@gamil.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Female', '2003-02-04', 'Marketing', 'radhanpur', 'radhanpur', 'india', '6428537357', 1, '2024-02-08 06:23:57'),
(23, 'ST6', 'Shitumo', 'momo', 'shitu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Female', '2004-02-20', 'Finance', 'radhanpur', 'radhanpur', 'india', '5285373999', 1, '2024-02-08 10:38:59'),
(24, 'GM7', 'Goiyie', 'yamana', 'goiyie@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Male', '2002-12-24', 'Information Technology', 'radhanpur', 'radhanpur', 'korea', '4174374464', 1, '2024-02-08 10:44:15'),
(25, 'HR8', 'Hotaru', 'hamma', 'hotaru@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Male', '2000-10-05', 'Research', 'patan', 'radhanpur', 'japan', '8764987765', 1, '2024-02-08 10:50:21'),
(26, 'RH9', 'Raah', 'khanm', 'raah@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male', '2004-05-31', 'Operations', 'tokyo', 'radhanpur', 'japan', '9081093281', 1, '2024-02-08 10:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(42, 'Voting Leave', '2024-02-19', '2024-02-22', 'voting day', '2024-02-09 18:12:11', 'any reason', '2024-02-10 11:50:27 ', 2, 1, 12),
(43, 'Casual Leave', '2024-03-03', '2024-03-06', 'no reason', '2024-02-09 18:18:02', NULL, NULL, 0, 1, 20),
(44, 'Religious Holidays', '2024-01-10', '2024-01-14', 'holiday', '2024-02-09 18:20:01', 'no reason', '2024-02-10 11:40:02 ', 2, 1, 23),
(45, 'Medical Leave', '2024-02-21', '2024-02-24', 'i am not well', '2024-02-09 18:22:09', 'go and rest', '2024-02-10 11:39:33 ', 1, 1, 25),
(46, 'Voting Leave', '2023-12-28', '2023-12-29', 'vote day', '2024-02-10 05:39:43', 'common reason', '2024-02-10 11:45:13 ', 1, 1, 21),
(47, 'Personal Time Off', '2023-12-30', '2024-01-01', 'no reason', '2024-02-10 05:41:31', NULL, NULL, 0, 1, 26),
(48, 'Medical Leave', '2024-03-05', '2024-03-09', 'i have bad rest', '2024-02-10 05:51:38', NULL, NULL, 0, 1, 24),
(49, 'Casual Leave', '2023-12-31', '2024-01-01', 'no any  reason', '2024-02-10 05:53:46', 'nothing', '2024-02-10 11:51:25 ', 2, 1, 10),
(50, 'Restricted Holiday', '2024-03-07', '2024-03-08', 'company stricke', '2024-02-10 05:56:18', NULL, NULL, 0, 1, 26),
(51, 'Medical Leave', '2024-03-01', '2024-03-04', 'i go to hospital', '2024-02-10 05:58:18', 'valid reason', '2024-02-10 11:49:30 ', 1, 1, 10),
(52, 'Medical Leave', '2024-02-20', '2024-02-22', 'i am not well', '2024-02-12 06:19:09', NULL, NULL, 0, 1, 10),
(53, 'Casual Leave', '2024-03-05', '2024-03-07', 'nothing', '2024-02-12 06:27:14', NULL, NULL, 0, 0, 21),
(54, 'Medical Leave', '2024-03-05', '2024-03-05', 'I go to hospital', '2024-02-16 06:22:30', NULL, NULL, 0, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(14, 'Casual Leave', 'Provided for urgent or unforeseen matter to the employee.', '2023-02-25 17:05:50'),
(15, 'Medical Leave', 'Related to Health Problems of Employee', '2023-02-25 17:19:36'),
(16, 'Restricted Holiday', 'Holiday that is optional', '2023-02-25 17:21:03'),
(17, 'Paternity Leave', 'To take care of newborns', '2023-02-25 17:21:58'),
(18, 'Bereavement Leave', 'Grieve their loss of losing loved ones', '2023-02-25 17:22:25'),
(19, 'Compensatory Leave', 'For Overtime workers', '2023-02-25 17:22:49'),
(20, 'Maternity Leave', 'Taking care of newborn ,recoveries', '2023-02-25 17:23:11'),
(21, 'Religious Holidays', 'Based on employee\\', '2023-02-25 17:23:53'),
(22, 'Adverse Weather Leave', 'In terms of extreme weather conditions', '2023-02-25 17:24:28'),
(23, 'Voting Leave', 'For official election day', '2023-02-25 17:24:58'),
(24, 'Self-Quarantine Leave', 'Related to COVID-19 issues', '2023-02-25 17:25:24'),
(25, 'Personal Time Off', 'To manage some private matters', '2023-02-25 17:25:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
