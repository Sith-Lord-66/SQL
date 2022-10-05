-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2022 at 05:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jross19`
--

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Activity`
--

CREATE TABLE `INTO_Activity` (
  `AcID` bigint(20) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `CaID` int(11) DEFAULT NULL,
  `BuID` bigint(20) DEFAULT NULL,
  `Status` varchar(255) NOT NULL,
  `Started` date NOT NULL,
  `Ended` date DEFAULT NULL,
  `Internal` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Allocation`
--

CREATE TABLE `INTO_Allocation` (
  `StaffID` bigint(20) NOT NULL,
  `AcID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Budget`
--

CREATE TABLE `INTO_Budget` (
  `BuID` bigint(20) NOT NULL,
  `Amount` bigint(20) DEFAULT NULL,
  `Approver` varchar(255) DEFAULT NULL,
  `Payee` varchar(255) DEFAULT NULL,
  `Status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Campus`
--

CREATE TABLE `INTO_Campus` (
  `CaID` int(11) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `GmName` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Classroom`
--

CREATE TABLE `INTO_Classroom` (
  `RmID` bigint(20) NOT NULL,
  `Capacity` bigint(20) DEFAULT NULL,
  `CaID` int(11) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Type` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Department`
--

CREATE TABLE `INTO_Department` (
  `DeptID` bigint(20) NOT NULL,
  `DeptName` varchar(255) NOT NULL,
  `Faculty` varchar(255) NOT NULL,
  `HODName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Enrolment`
--

CREATE TABLE `INTO_Enrolment` (
  `EID` bigint(20) NOT NULL,
  `StudentID` bigint(20) NOT NULL,
  `ModuleID` bigint(20) NOT NULL,
  `Score` int(11) NOT NULL DEFAULT 1,
  `Semester` varchar(255) NOT NULL,
  `Year` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Module`
--

CREATE TABLE `INTO_Module` (
  `ModuleID` bigint(20) NOT NULL,
  `ModuleName` varchar(255) NOT NULL,
  `DeptID` bigint(20) NOT NULL,
  `Programme` varchar(255) DEFAULT NULL,
  `TMode` varchar(255) DEFAULT NULL,
  `Date_of_Firstoffer` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_SpaceAssign`
--

CREATE TABLE `INTO_SpaceAssign` (
  `SpaID` bigint(20) NOT NULL,
  `RmID` bigint(20) NOT NULL,
  `TID` bigint(20) NOT NULL,
  `Manager` varchar(255) NOT NULL,
  `Approved` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Staff`
--

CREATE TABLE `INTO_Staff` (
  `StaffID` bigint(20) NOT NULL,
  `Title` varchar(32) DEFAULT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `DeptID` bigint(20) NOT NULL,
  `CaID` int(11) NOT NULL,
  `Joined` date DEFAULT NULL,
  `LeftD` date DEFAULT NULL,
  `Current` tinyint(1) NOT NULL DEFAULT 1,
  `Salary` bigint(20) NOT NULL,
  `ContractType` varchar(32) NOT NULL,
  `SupervisorID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Student`
--

CREATE TABLE `INTO_Student` (
  `StudentID` bigint(20) NOT NULL,
  `StudentName` varchar(255) NOT NULL,
  `DoB` date NOT NULL,
  `Address` varchar(255) NOT NULL,
  `StudyType` varchar(255) NOT NULL,
  `Date_Of_Start` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `INTO_Teach`
--

CREATE TABLE `INTO_Teach` (
  `TID` bigint(20) NOT NULL,
  `ModuleID` bigint(20) NOT NULL,
  `StaffID` bigint(20) NOT NULL,
  `SpaID` bigint(20) NOT NULL,
  `Semester` varchar(255) NOT NULL,
  `Year` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `INTO_Activity`
--
ALTER TABLE `INTO_Activity`
  ADD PRIMARY KEY (`AcID`),
  ADD KEY `Title` (`Title`),
  ADD KEY `CaID` (`CaID`),
  ADD KEY `BuID` (`BuID`);

--
-- Indexes for table `INTO_Allocation`
--
ALTER TABLE `INTO_Allocation`
  ADD KEY `StaffID` (`StaffID`),
  ADD KEY `AcID` (`AcID`);

--
-- Indexes for table `INTO_Budget`
--
ALTER TABLE `INTO_Budget`
  ADD PRIMARY KEY (`BuID`);

--
-- Indexes for table `INTO_Campus`
--
ALTER TABLE `INTO_Campus`
  ADD PRIMARY KEY (`CaID`);

--
-- Indexes for table `INTO_Classroom`
--
ALTER TABLE `INTO_Classroom`
  ADD PRIMARY KEY (`RmID`),
  ADD KEY `CaID` (`CaID`);

--
-- Indexes for table `INTO_Department`
--
ALTER TABLE `INTO_Department`
  ADD PRIMARY KEY (`DeptID`),
  ADD UNIQUE KEY `HODName` (`HODName`),
  ADD UNIQUE KEY `Address` (`Address`);

--
-- Indexes for table `INTO_Enrolment`
--
ALTER TABLE `INTO_Enrolment`
  ADD PRIMARY KEY (`EID`),
  ADD KEY `Semester` (`Semester`),
  ADD KEY `Year` (`Year`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `ModuleID` (`ModuleID`);

--
-- Indexes for table `INTO_Module`
--
ALTER TABLE `INTO_Module`
  ADD PRIMARY KEY (`ModuleID`),
  ADD KEY `ModuleName` (`ModuleName`),
  ADD KEY `DeptID` (`DeptID`);

--
-- Indexes for table `INTO_SpaceAssign`
--
ALTER TABLE `INTO_SpaceAssign`
  ADD PRIMARY KEY (`SpaID`),
  ADD KEY `RmID` (`RmID`),
  ADD KEY `TID` (`TID`);

--
-- Indexes for table `INTO_Staff`
--
ALTER TABLE `INTO_Staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `FirstName` (`FirstName`),
  ADD KEY `LastName` (`LastName`),
  ADD KEY `Current` (`Current`),
  ADD KEY `SupervisorID` (`SupervisorID`),
  ADD KEY `INTO_Staff_ibfk_1` (`DeptID`),
  ADD KEY `CaID` (`CaID`);

--
-- Indexes for table `INTO_Student`
--
ALTER TABLE `INTO_Student`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `INTO_Teach`
--
ALTER TABLE `INTO_Teach`
  ADD PRIMARY KEY (`TID`),
  ADD KEY `Semester` (`Semester`),
  ADD KEY `Year` (`Year`),
  ADD KEY `StaffID` (`StaffID`),
  ADD KEY `INTO_Teach_ibfk_1` (`ModuleID`),
  ADD KEY `SpaID` (`SpaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `INTO_Activity`
--
ALTER TABLE `INTO_Activity`
  MODIFY `AcID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_Budget`
--
ALTER TABLE `INTO_Budget`
  MODIFY `BuID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_Campus`
--
ALTER TABLE `INTO_Campus`
  MODIFY `CaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_Classroom`
--
ALTER TABLE `INTO_Classroom`
  MODIFY `RmID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_Department`
--
ALTER TABLE `INTO_Department`
  MODIFY `DeptID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_Enrolment`
--
ALTER TABLE `INTO_Enrolment`
  MODIFY `EID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_Module`
--
ALTER TABLE `INTO_Module`
  MODIFY `ModuleID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_SpaceAssign`
--
ALTER TABLE `INTO_SpaceAssign`
  MODIFY `SpaID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_Staff`
--
ALTER TABLE `INTO_Staff`
  MODIFY `StaffID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_Student`
--
ALTER TABLE `INTO_Student`
  MODIFY `StudentID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INTO_Teach`
--
ALTER TABLE `INTO_Teach`
  MODIFY `TID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `INTO_Activity`
--
ALTER TABLE `INTO_Activity`
  ADD CONSTRAINT `INTO_Activity_ibfk_1` FOREIGN KEY (`CaID`) REFERENCES `INTO_Campus` (`CaID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `INTO_Activity_ibfk_2` FOREIGN KEY (`BuID`) REFERENCES `INTO_Budget` (`BuID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `INTO_Allocation`
--
ALTER TABLE `INTO_Allocation`
  ADD CONSTRAINT `INTO_Allocation_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `INTO_Staff` (`StaffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `INTO_Allocation_ibfk_2` FOREIGN KEY (`AcID`) REFERENCES `INTO_Activity` (`AcID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `INTO_Classroom`
--
ALTER TABLE `INTO_Classroom`
  ADD CONSTRAINT `INTO_Classroom_ibfk_1` FOREIGN KEY (`CaID`) REFERENCES `INTO_Campus` (`CaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `INTO_Enrolment`
--
ALTER TABLE `INTO_Enrolment`
  ADD CONSTRAINT `INTO_Enrolment_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `INTO_Student` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `INTO_Enrolment_ibfk_2` FOREIGN KEY (`ModuleID`) REFERENCES `INTO_Module` (`ModuleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `INTO_Module`
--
ALTER TABLE `INTO_Module`
  ADD CONSTRAINT `INTO_Module_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `INTO_Department` (`DeptID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `INTO_SpaceAssign`
--
ALTER TABLE `INTO_SpaceAssign`
  ADD CONSTRAINT `INTO_SpaceAssign_ibfk_1` FOREIGN KEY (`RmID`) REFERENCES `INTO_Classroom` (`RmID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `INTO_SpaceAssign_ibfk_2` FOREIGN KEY (`TID`) REFERENCES `INTO_Teach` (`TID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `INTO_Staff`
--
ALTER TABLE `INTO_Staff`
  ADD CONSTRAINT `INTO_Staff_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `INTO_Department` (`DeptID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `INTO_Staff_ibfk_2` FOREIGN KEY (`SupervisorID`) REFERENCES `INTO_Staff` (`StaffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `INTO_Staff_ibfk_3` FOREIGN KEY (`CaID`) REFERENCES `INTO_Campus` (`CaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `INTO_Teach`
--
ALTER TABLE `INTO_Teach`
  ADD CONSTRAINT `INTO_Teach_ibfk_1` FOREIGN KEY (`ModuleID`) REFERENCES `INTO_Module` (`ModuleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `INTO_Teach_ibfk_2` FOREIGN KEY (`StaffID`) REFERENCES `INTO_Staff` (`StaffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `INTO_Teach_ibfk_3` FOREIGN KEY (`SpaID`) REFERENCES `INTO_SpaceAssign` (`SpaID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
