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

--
-- Dumping data for table `INTO_Activity`
--

INSERT INTO `INTO_Activity` (`AcID`, `Title`, `CaID`, `BuID`, `Status`, `Started`, `Ended`, `Internal`) VALUES
(1, 'New Programme Promotion', 1, 1, 'On Going', '2021-02-01', NULL, 1),
(2, 'Coding Competition', 2, 2, 'Finished', '2019-01-01', '2019-01-30', 1),
(3, 'Drone Design Workshop', 1, 3, 'Finished', '2018-11-14', '2018-12-14', 1),
(4, 'Welcome Party', 3, 4, 'Planning', '2023-01-18', '2023-01-30', 1),
(5, 'Summer Undergraduate BBQ', 1, 5, 'Finished', '2016-06-07', '2016-06-08', 1);

--
-- Dumping data for table `INTO_Allocation`
--

INSERT INTO `INTO_Allocation` (`StaffID`, `AcID`) VALUES
(5, 4),
(5, 2),
(2, 3),
(6, 4),
(3, 1),
(7, 5),
(9, 4),
(11, 5),
(11, 4),
(13, 4),
(14, 4),
(18, 3),
(18, 5),
(20, 1),
(22, 1),
(23, 5),
(23, 1),
(24, 1),
(29, 2),
(29, 3);

--
-- Dumping data for table `INTO_Budget`
--

INSERT INTO `INTO_Budget` (`BuID`, `Amount`, `Approver`, `Payee`, `Status`) VALUES
(1, 1386, 'Jeff Tina', 'EEECS', 'Completed'),
(2, 1800, 'Lisa Amy', 'IT Mgt.', 'Approved'),
(3, 500, 'Lisa Amy', 'IT Mgt.', 'Approved'),
(4, 1000, 'Jim Jerry', 'Math', 'Approved'),
(5, 3000, 'Sharon Lee', 'Math', 'Completed');

--
-- Dumping data for table `INTO_Campus`
--

INSERT INTO `INTO_Campus` (`CaID`, `Address`, `GmName`, `Country`, `Status`) VALUES
(1, '123 PalmBeach Street London', 'Daniel Woo', 'UK', 'Open'),
(2, '24 Lewis Avenue Belfast', 'John Mary', 'UK', 'Open'),
(3, '231 Raffles Street Singapore', 'Alice Springer', 'Singapore', 'Open'),
(4, '19 George Avenue Sydney', 'Sakil Sheer', 'Australia', 'Ready to Open');

--
-- Dumping data for table `INTO_Classroom`
--

INSERT INTO `INTO_Classroom` (`RmID`, `Capacity`, `CaID`, `Location`, `Type`, `Status`) VALUES
(1, 50, 2, 'MM Tower, 23 Lewis Avenue Belfast', 'Classroom', 'Open'),
(2, 100, 2, 'CS Bldg, 24 Lewis Avenue Belfast', 'Classroom', 'Open'),
(3, 75, 2, 'CS Bldg, 24 Lewis Avenue Belfast', 'Classroom', 'Open'),
(4, 200, 1, 'Basement, 123 PalmBeach Street London', 'Hall', 'Ready to Open'),
(5, 25, 3, '1st Floor, 231 Raffles Street Singapore', 'Classroom', 'Under Repair'),
(6, 200, 4, '2nd Floor, 42 Wallaby Way, Sydney', 'Classroom', 'Open');

--
-- Dumping data for table `INTO_Department`
--

INSERT INTO `INTO_Department` (`DeptID`, `DeptName`, `Faculty`, `HODName`, `Address`) VALUES
(10, 'EEECS', 'Science and Engineering', 'David Jones', '10 Milan Road'),
(11, 'Math', 'Science and Engineering', 'Julie Clark', '12 Steven Street'),
(12, 'Mechanical Eng.', 'Science and Engineering', 'Andrew White', '128 Giant Ave.'),
(13, 'Information Eng.', 'Science and Engineering', 'Lee Anderson', '134 Lee Bank Garden'),
(14, 'Music', 'Arts', 'Peter Monash', '29 Jeep Street'),
(15, 'English', 'Arts', 'Mary Lee', '109 King Ave.');

--
-- Dumping data for table `INTO_Enrolment`
--

INSERT INTO `INTO_Enrolment` (`EID`, `StudentID`, `ModuleID`, `Score`, `Semester`, `Year`) VALUES
(1, 1, 1, 85, 'S1', 2020),
(2, 2, 2, 76, 'S2', 2020),
(3, 3, 3, 88, 'S1', 2020),
(4, 4, 1, 90, 'S1', 2019),
(5, 5, 4, 87, 'S2', 2020),
(6, 1, 2, 78, 'Summer', 2020),
(7, 2, 2, 44, 'Summer', 2018),
(8, 3, 2, 56, 'Summer', 2020),
(9, 4, 2, 67, 'S1', 2019),
(11, 53, 1, 43, 'S1', 2018),
(12, 54, 1, 84, 'S1', 2018),
(13, 55, 1, 52, 'S1', 2018),
(14, 56, 1, 65, 'S1', 2018),
(15, 57, 1, 84, 'S1', 2018),
(16, 58, 1, 85, 'S1', 2018),
(17, 59, 1, 22, 'S1', 2018),
(18, 60, 1, 55, 'S1', 2018),
(19, 61, 1, 19, 'S1', 2018),
(20, 62, 1, 33, 'S1', 2018),
(21, 63, 1, 65, 'S1', 2018),
(22, 64, 1, 56, 'S1', 2018),
(23, 65, 1, 84, 'S1', 2018),
(24, 66, 1, 96, 'S1', 2018),
(25, 67, 1, 85, 'S1', 2018),
(26, 68, 1, 25, 'S1', 2018),
(27, 69, 1, 63, 'S1', 2018),
(28, 70, 1, 66, 'S1', 2018),
(29, 71, 1, 65, 'S1', 2018),
(30, 72, 1, 67, 'S1', 2018),
(31, 73, 1, 69, 'S1', 2018),
(32, 74, 1, 45, 'S1', 2018),
(33, 75, 1, 32, 'S1', 2018),
(34, 76, 1, 32, 'S1', 2018),
(35, 77, 1, 39, 'S1', 2018),
(36, 78, 1, 45, 'S1', 2018),
(37, 79, 1, 45, 'S1', 2018),
(38, 80, 1, 47, 'S1', 2018),
(39, 81, 1, 88, 'S1', 2018),
(40, 82, 1, 89, 'S1', 2018),
(41, 83, 1, 96, 'S1', 2018),
(42, 84, 1, 95, 'S1', 2018),
(43, 85, 1, 95, 'S1', 2018),
(44, 86, 1, 95, 'S1', 2018),
(45, 87, 1, 77, 'S1', 2018),
(46, 88, 1, 72, 'S1', 2018),
(47, 89, 1, 74, 'S1', 2018),
(48, 90, 1, 52, 'S1', 2018),
(49, 91, 1, 82, 'S1', 2018),
(50, 92, 1, 81, 'S1', 2018),
(51, 93, 1, 83, 'S1', 2018),
(52, 94, 1, 74, 'S1', 2018),
(53, 95, 1, 71, 'S1', 2018),
(54, 96, 1, 75, 'S1', 2018),
(55, 97, 1, 72, 'S1', 2018),
(56, 98, 1, 73, 'S1', 2018),
(57, 99, 1, 79, 'S1', 2018),
(58, 100, 1, 88, 'S1', 2018),
(59, 101, 1, 84, 'S1', 2018),
(60, 102, 1, 54, 'S1', 2018),
(61, 103, 1, 54, 'S1', 2018),
(62, 10, 5, 32, 'S2', 2019),
(63, 11, 5, 55, 'S2', 2019),
(64, 12, 5, 32, 'S2', 2019),
(65, 13, 5, 88, 'S2', 2019),
(66, 14, 5, 87, 'S2', 2019),
(67, 15, 5, 66, 'S2', 2019),
(68, 16, 5, 54, 'S2', 2019),
(69, 17, 5, 77, 'S2', 2019),
(70, 18, 5, 32, 'S2', 2019),
(71, 19, 5, 63, 'S2', 2019),
(72, 20, 5, 54, 'S2', 2019),
(73, 21, 5, 12, 'S2', 2019),
(74, 22, 5, 36, 'S2', 2019),
(75, 23, 5, 39, 'S2', 2019),
(76, 24, 5, 38, 'S2', 2019),
(77, 25, 5, 59, 'S2', 2019),
(78, 26, 5, 56, 'S2', 2019),
(79, 27, 5, 58, 'S2', 2019),
(80, 28, 5, 57, 'S2', 2019),
(81, 29, 5, 52, 'S2', 2019),
(82, 30, 5, 54, 'S2', 2019),
(83, 31, 5, 55, 'S2', 2019),
(84, 32, 5, 56, 'S2', 2019),
(85, 33, 5, 57, 'S2', 2019),
(86, 34, 5, 58, 'S2', 2019),
(87, 35, 5, 59, 'S2', 2019),
(88, 36, 5, 54, 'S2', 2019),
(89, 37, 5, 69, 'S2', 2019),
(90, 38, 5, 68, 'S2', 2019),
(91, 39, 5, 62, 'S2', 2019),
(92, 40, 5, 63, 'S2', 2019),
(93, 41, 5, 63, 'S2', 2019),
(94, 42, 5, 65, 'S2', 2019),
(95, 43, 5, 64, 'S2', 2019),
(96, 44, 5, 67, 'S2', 2019),
(97, 45, 5, 55, 'S2', 2019),
(98, 46, 5, 96, 'S2', 2019),
(99, 47, 5, 65, 'S2', 2019),
(100, 48, 5, 68, 'S2', 2019),
(101, 49, 5, 67, 'S2', 2019),
(102, 50, 5, 62, 'S2', 2019),
(103, 51, 5, 32, 'S2', 2020),
(104, 52, 5, 35, 'S2', 2020);

--
-- Dumping data for table `INTO_Module`
--

INSERT INTO `INTO_Module` (`ModuleID`, `ModuleName`, `DeptID`, `Programme`, `TMode`, `Date_of_Firstoffer`) VALUES
(1, 'Big Data', 10, 'Bachelor of CS', 'Face to Face/Online', '2000-01-01'),
(2, 'Java Programming', 10, 'Bachelor of CS', 'Face to Face/Online', '2001-01-01'),
(3, 'Data Structure', 10, 'Master of IT', 'Face to Face/Online', '2001-01-01'),
(4, 'Combustion Engine', 12, 'Bachelor of Eng.', 'Face to Face/Online', '1975-01-01'),
(5, 'Computing Foundations', 11, 'Master of IT', 'Online', '2000-01-21');

--
-- Dumping data for table `INTO_SpaceAssign`
--

INSERT INTO `INTO_SpaceAssign` (`SpaID`, `RmID`, `TID`, `Manager`, `Approved`) VALUES
(1, 1, 3, 'Davis Leed', 'Yes'),
(2, 2, 4, 'Rajiv Sina', 'Yes'),
(3, 3, 2, 'Larry Cool', 'Pending'),
(4, 4, 1, 'Robert Lewis', 'Pending');

--
-- Dumping data for table `INTO_Staff`
--

INSERT INTO `INTO_Staff` (`StaffID`, `Title`, `FirstName`, `LastName`, `DeptID`, `CaID`, `Joined`, `LeftD`, `Current`, `Salary`, `ContractType`, `SupervisorID`) VALUES
(1, 'Dr', 'Daniel', 'Dare', 10, 1, '2005-05-13', '2009-01-12', 0, 40000, 'Full time', 5),
(2, 'Lady', 'Sarah', 'Important', 12, 1, '2005-06-15', NULL, 1, 38990, 'Part time', 5),
(3, 'Ms', 'Alice', 'Alive', 10, 1, '2010-06-15', NULL, 1, 35600, 'Part time', 2),
(4, 'Dr', 'Xander', 'Mander', 10, 1, '2010-04-18', NULL, 1, 45790, 'Part time', 3),
(5, 'Professor', 'Jenny', 'Generator', 12, 1, '2011-12-23', NULL, 1, 68000, 'Full time', 4),
(6, 'Ms', 'Gemma', 'Hardasnails', 11, 2, '2011-08-13', NULL, 1, 70000, 'Full time', 2),
(7, 'HRH', 'Prince', 'Caspian', 12, 1, '2017-09-01', NULL, 1, 21000, 'Full time', 5),
(8, 'Mr', 'Brian', 'Knuckles', 10, 3, '2008-07-01', '2010-09-30', 0, 30000, 'Full time', 6),
(9, 'Mr', 'Bob', 'Punch', 13, 1, '2008-07-01', NULL, 1, 29000, 'Full time', 6),
(10, 'Mrs', 'Natalie', 'Nononsense', 10, 1, '2010-10-13', NULL, 1, 37890, 'Full time', 6),
(11, 'Mr', 'Euan', 'Young', 11, 1, '2017-11-01', NULL, 1, 59000, 'Part time', 7),
(12, 'Professor', 'Andrew', 'Brown', 10, 2, '2016-09-21', '2015-05-09', 0, 80420, 'Part time', 5),
(13, 'Mr', 'Mohsin', 'Burks', 11, 4, '2018-06-15', NULL, 1, 21317, 'Full time', 2),
(14, 'Mrs', 'Jadene', 'Crawford', 10, 1, '2010-06-15', NULL, 1, 56701, 'Full time', 2),
(15, 'Dr', 'Pola', 'Halliday', 13, 4, '2010-04-04', '2018-05-05', 0, 60000, 'Full time', 5),
(16, 'HRH', 'Heidi', 'Lloyd', 12, 1, '2015-11-23', NULL, 1, 49060, 'Full time', 20),
(17, 'Professor', 'Oliwia', 'Carroll', 10, 3, '2015-04-01', NULL, 1, 57210, 'Part time', 4),
(18, 'Mr', 'Ramone', 'Rose', 11, 1, '2017-01-09', NULL, 1, 25200, 'Part time', 6),
(19, 'Ms', 'Eva-rose', 'Ashley', 13, 2, '2006-01-07', NULL, 1, 60000, 'Full time', 7),
(20, 'Mrs', 'Charity', 'Mann', 12, 4, '2006-01-07', NULL, 1, 50000, 'Part time', 10),
(21, 'Mrs', 'Animee', 'Amin', 12, 4, '2007-10-13', '2015-02-17', 0, 45610, 'Full time', 6),
(22, 'Mr', 'Ryan', 'Gray', 10, 1, '2007-01-07', NULL, 1, 42040, 'Part time', 2),
(23, 'Professor', 'Niall', 'Cullinan', 11, 2, '2016-09-21', '2019-08-21', 1, 40400, 'Full time', 6),
(24, 'Mr', 'Tomas', 'Brooks', 13, 3, '2005-06-15', NULL, 1, 35590, 'Full time', 2),
(25, 'Ms', 'Jasper', 'Thomas', 14, 1, '2010-06-15', NULL, 1, 71923, 'Part time', 20),
(26, 'Lady', 'Amy', 'Henderson', 12, 4, '2010-04-18', NULL, 1, 27500, 'Full time', 4),
(27, 'Mrs', 'Anna', 'Newman', 15, 1, '2011-12-23', NULL, 1, 74690, 'Full time', 25),
(28, 'HRH', 'Eva', 'Ward', 15, 3, '2011-12-08', NULL, 1, 27500, 'Part time', 18),
(29, 'Mrs', 'Lydra', 'Cook', 11, 2, '2017-01-09', NULL, 1, 75458, 'Full time', 25),
(30, 'Mr', 'Christian', 'Clarke', 10, 1, '2008-01-07', '2020-07-10', 0, 41590, 'Full time', 6);

--
-- Dumping data for table `INTO_Student`
--

INSERT INTO `INTO_Student` (`StudentID`, `StudentName`, `DoB`, `Address`, `StudyType`, `Date_Of_Start`) VALUES
(1, 'Daniel Lee', '1996-05-13', '11 Martin Street', 'Full time', '2015-06-15'),
(2, 'Jenny Parry', '1997-06-15', '29 Orchard Ave', 'Full time', '2017-06-30'),
(3, 'Mohan Rashiv', '1998-09-15', '210 Kingston Street', 'Full time', '2017-06-30'),
(4, 'Laura Park', '1997-04-18', '56 Depak Park', 'Full time', '2018-06-30'),
(5, 'Levis Shepherd', '1999-12-23', '200 Johnson Ave', 'Full time', '2018-06-30'),
(6, 'Mary Carson', '1996-06-13', '189 Friedman Centers\nFrankmouth, TX 11828', 'Full Time', '2017-06-15'),
(7, 'Alexander Murdock', '1996-04-18', '029 Hart Haven\nPiercefurt, CT 52041', 'Full Time', '2015-06-15'),
(8, 'Kareem Coker', '1998-02-11', '4425 Lisa Station Apt. 314\nNorth Sean, ND 35879', 'Full Time', '2017-06-15'),
(9, 'Harry Hurtado', '1997-02-02', '204 Jennifer Island\nCruzfort, KY 14095', 'Full Time', '2016-06-15'),
(10, 'Jose Abbott', '1996-09-28', '509 Powell Ways\nNorth Lauraside, SD 96141', 'Full Time', '2016-06-30'),
(11, 'Daniel Willard', '1997-04-09', '0637 Brittany Station\nNorth Christopherview, ND 79884', 'Full Time', '2017-06-30'),
(12, 'Bruce Clifton', '1998-03-26', '9742 Pineda Underpass\nNew Hannah, VT 64767', 'Full Time', '2017-06-30'),
(13, 'Sandra Pack', '1997-09-23', '030 Renee Mills\nAllenchester, MN 72480', 'Full Time', '2017-06-15'),
(14, 'Chris Jones', '1997-12-02', '888 Nicholas Mission Suite 732\nPort Brandyfort, NY 64359', 'Full Time', '2018-06-30'),
(15, 'Raymond Pauls', '1997-09-04', '777 Cynthia Shoals\nSouth Stevenhaven, FL 44734', 'Full Time', '2015-06-15'),
(16, 'Lori Nelson', '1997-12-25', '5542 Harper Orchard Suite 665\nMaryland, KS 12781', 'Full Time', '2016-06-15'),
(17, 'Jill Johnson', '1998-03-20', '030 Steven Hill\nLauratown, OH 92346', 'Full Time', '2017-06-30'),
(18, 'Willie Dollar', '1998-04-23', '1969 Shannon Crest Suite 673\nWest Carl, LA 47836', 'Full Time', '2016-06-15'),
(19, 'Larry Aldridge', '1997-12-06', '395 Miles Point Suite 288\nRhodesport, CT 49278', 'Full Time', '2018-06-30'),
(20, 'Paul Smith', '1997-06-03', '9733 Jeffrey Shoals Suite 939\nRobinsonchester, NE 48470', 'Full Time', '2017-06-30'),
(21, 'George Corbett', '1996-09-18', '651 Cervantes Heights\nLinport, WV 45669', 'Full Time', '2017-06-15'),
(22, 'Tracee Lipka', '1996-09-06', '05478 Powers Parks Apt. 631\nTeresafort, TN 80964', 'Full Time', '2016-06-15'),
(23, 'Ronald Wheeler', '1998-11-02', '501 Shelia Ways\nDixonfurt, WA 86594', 'Full Time', '2015-06-15'),
(24, 'Ricardo Glory', '1998-07-16', '63660 Mark Landing Apt. 257\nHarrellstad, NE 95778', 'Full Time', '2017-06-30'),
(25, 'John Yee', '1996-09-05', '345 Stephanie Stream\nHayesport, WI 29681', 'Full Time', '2015-06-30'),
(26, 'Therese Tosh', '1996-07-23', '996 Lewis Mount\nDeborahberg, KS 43729', 'Full Time', '2015-06-15'),
(27, 'Judith Loughmiller', '1998-03-09', '39253 Charles Rapids\nNorth Aaronburgh, NV 82141', 'Full Time', '2018-06-30'),
(28, 'Leonard Sauer', '1997-01-09', '78814 Rice Locks Suite 628\nWest Steve, WY 04158', 'Full Time', '2016-06-30'),
(29, 'Amber Brock', '1996-11-12', '3713 Rich Square Suite 130\nMedinamouth, KY 62576', 'Full Time', '2018-06-15'),
(30, 'Dorothy Davidson', '1997-08-19', '653 Wilson Way\nLake Williamshire, OR 82385', 'Full Time', '2018-06-15'),
(31, 'Dexter Kowal', '1996-10-03', '6628 James Way\nNicoleport, ND 40378', 'Full Time', '2016-06-30'),
(32, 'John Holt', '1998-03-15', '0995 Victoria Squares Apt. 096\nPort Kathleen, IA 10776', 'Full Time', '2017-06-30'),
(33, 'Kelly Stewart', '1996-05-03', '9609 Troy Circle Suite 930\nMartinborough, NY 10050', 'Full Time', '2015-06-15'),
(34, 'Mark Sears', '1997-09-05', '3892 Jenkins Mall\nSouth Christopher, ID 15186', 'Full Time', '2017-06-30'),
(35, 'Paul Blackaby', '1996-12-20', '4765 Robertson Mews\nSimmonsside, OH 68471', 'Full Time', '2016-06-30'),
(36, 'Mary Bronstein', '1997-07-03', '338 Lisa Place Suite 307\nEast Courtney, KY 86182', 'Full Time', '2015-06-30'),
(37, 'Chris Mills', '1997-11-13', '705 Nicole Cliffs\nAngelicaton, UT 87558', 'Full Time', '2017-06-30'),
(38, 'Matthew Anderson', '1997-05-04', '52905 Morrow Walks Suite 917\nSouth Susan, IL 91149', 'Full Time', '2015-06-30'),
(39, 'Jennifer Alvarado', '1997-12-31', '015 Riggs Forks Suite 171\nLake Samantha, TN 66005', 'Full Time', '2015-06-15'),
(40, 'Edward Hirsch', '1998-08-11', '3165 Morgan Hill\nJasonmouth, MI 03420', 'Full Time', '2017-06-30'),
(41, 'Leon Adams', '1998-12-15', '648 Lori Courts\nWest Samantha, NY 61490', 'Full Time', '2016-06-30'),
(42, 'Virginia Davis', '1998-05-04', '837 Walker Hollow\nKathyview, AR 78108', 'Full Time', '2018-06-15'),
(43, 'Gene Hoover', '1998-05-23', '82671 Sara Wells\nLake Patriciamouth, AR 58770', 'Full Time', '2016-06-30'),
(44, 'Janie Wilkinson', '1998-07-19', '72020 Bruce Lane\nVazquezmouth, NE 71932', 'Full Time', '2018-06-15'),
(45, 'Phyllis Lei', '1997-07-13', '788 Shannon Estate\nAnnamouth, KS 64039', 'Full Time', '2016-06-30'),
(46, 'Nicholas Keyes', '1997-12-06', '06677 Oneal Junction\nLongview, TX 15099', 'Full Time', '2017-06-15'),
(47, 'Victor Porter', '1998-10-05', 'USNS Johnson\nFPO AA 28424', 'Full Time', '2015-06-30'),
(48, 'Kimberly Galindez', '1998-09-19', '67334 Donald Village Suite 741\nNew Ashleyshire, WA 38288', 'Full Time', '2017-06-30'),
(49, 'Margaret Smith', '1998-11-24', '5870 Christina Mountain\nRichardmouth, KS 58121', 'Full Time', '2018-06-30'),
(50, 'Vera Park', '1998-06-24', '79723 Marc Lodge Suite 906\nTaylorfurt, VT 51021', 'Full Time', '2018-06-15'),
(51, 'Leigh Dillman', '1998-09-26', '676 Whitney Mission Apt. 038\nEast Allison, WI 12319', 'Full Time', '2016-06-30'),
(52, 'Wayne Crout', '1996-05-06', '76713 Tanner Village\nSimsland, PA 44112', 'Full Time', '2015-06-15'),
(53, 'Isabelle Critchfield', '1997-11-25', '683 Hernandez Pine Suite 708\nSouth Fernando, SC 22008', 'Full Time', '2015-06-15'),
(54, 'Leslie Briseno', '1998-11-19', '06660 Williams Isle Suite 497\nSouth Vickieview, CA 13599', 'Full Time', '2015-06-30'),
(55, 'Brett Magano', '1998-02-08', '55116 Lloyd Port Apt. 601\nWoodville, NY 91317', 'Full Time', '2018-06-30'),
(56, 'Susan Wilmoth', '1996-04-25', '4429 Marcia Centers Apt. 793\nWest Justintown, VT 96301', 'Full Time', '2018-06-15'),
(57, 'Erika Parks', '1997-12-29', '392 Richard Light Suite 324\nGomezmouth, CO 05875', 'Full Time', '2015-06-15'),
(58, 'Deborah Ramirez', '1998-12-21', '848 Freeman Viaduct Apt. 471\nEast Christopher, WA 96511', 'Full Time', '2017-06-15'),
(59, 'Jill Andrade', '1996-10-19', '044 Thomas Throughway Suite 880\nNew Katherinehaven, DC 44173', 'Full Time', '2015-06-30'),
(60, 'David Silva', '1996-10-21', '14674 Dickson Forks\nSouth Michael, MO 42051', 'Full Time', '2016-06-30'),
(61, 'Willis Abraham', '1997-09-26', '18569 John Courts\nNorth Megan, RI 15037', 'Full Time', '2015-06-15'),
(62, 'Stanley Schiff', '1996-12-16', '489 Howell Place Suite 072\nSouth Josephchester, IN 50275', 'Full Time', '2018-06-30'),
(63, 'Olga Lew', '1998-04-28', '9416 Joseph Valleys\nLake James, CT 06872', 'Full Time', '2017-06-15'),
(64, 'Belinda Xiong', '1998-11-09', '63800 Taylor Fords\nBrownport, WY 08776', 'Full Time', '2016-06-15'),
(65, 'Jean Whittenbeck', '1998-04-26', '1449 Jenna Loaf\nPort Timothy, MO 20432', 'Full Time', '2017-06-15'),
(66, 'George Johns', '1997-08-25', '5431 Blair Dam Suite 930\nNew Karen, KS 95352', 'Full Time', '2017-06-30'),
(67, 'Tonya Toomey', '1998-04-21', '5541 Thomas Expressway Apt. 794\nRayville, OH 58296', 'Full Time', '2015-06-30'),
(68, 'Wade Stolar', '1997-08-26', '340 Brian Overpass\nLopezberg, OK 64684', 'Full Time', '2018-06-30'),
(69, 'Aimee Doctor', '1998-11-03', '63162 Gonzalez Unions Apt. 544\nJosephtown, TN 89278', 'Full Time', '2016-06-15'),
(70, 'Miguel Barrett', '1997-06-02', '526 Melissa Stravenue Apt. 792\nHansonview, RI 42563', 'Full Time', '2015-06-15'),
(71, 'Esther Mulloy', '1998-07-03', '1119 Joseph Motorway Suite 759\nSouth Jason, AR 39384', 'Full Time', '2015-06-15'),
(72, 'John Rios', '1998-09-19', '518 Pamela Brook\nJenniferview, OR 67934', 'Full Time', '2018-06-30'),
(73, 'Rose Stanley', '1997-01-26', '03197 Debra Estate Apt. 267\nElizabethview, NV 28490', 'Full Time', '2017-06-30'),
(74, 'Billy Hayes', '1997-04-21', '99023 Kimberly Villages\nKyleburgh, HI 83782', 'Full Time', '2016-06-15'),
(75, 'Carolina Gross', '1998-06-14', '2018 Tricia Stream\nNorth Suzanneton, GA 60469', 'Full Time', '2016-06-15'),
(76, 'Cynthia Patten', '1996-07-19', '5014 Leach Pines\nWrightborough, MA 46697', 'Full Time', '2018-06-30'),
(77, 'Lewis Johnson', '1998-07-06', '5591 Ball Shores Suite 541\nWalkermouth, IL 11895', 'Full Time', '2018-06-15'),
(78, 'Amanda Dyer', '1996-09-11', '516 Kathryn Hollow\nLake Brianfort, SC 97706', 'Full Time', '2015-06-15'),
(79, 'Pamela Corson', '1998-10-08', '8454 Katherine Lights Suite 687\nSouth Juanshire, TX 04304', 'Full Time', '2015-06-15'),
(80, 'Deloris Morrow', '1998-08-24', '826 Rhonda Dale\nEast Jeremy, MI 71179', 'Full Time', '2018-06-15'),
(81, 'Mary Park', '1997-07-27', '024 Cassidy Pike Suite 243\nDevonberg, MO 83640', 'Full Time', '2015-06-15'),
(82, 'Michael Carr', '1998-06-03', '63097 Tammy Heights Suite 487\nAmandafort, IL 59731', 'Full Time', '2015-06-15'),
(83, 'Martha Peno', '1998-08-18', '279 Richard Islands Suite 095\nPort Christopherview, DC 78917', 'Full Time', '2016-06-15'),
(84, 'Virgil Rilley', '1996-02-29', '850 Fritz Groves Apt. 444\nWilliamshaven, WV 27300', 'Full Time', '2015-06-15'),
(85, 'James Duran', '1998-04-10', '659 Crystal Walk Suite 813\nBrandtberg, KS 68289', 'Full Time', '2018-06-15'),
(86, 'Michael Peters', '1997-06-11', '2176 Jones Views Apt. 951\nLake Carl, ID 09351', 'Full Time', '2018-06-30'),
(87, 'Jason Sibrel', '1997-05-28', '28400 Rachel Isle\nNorth Danielle, MD 45100', 'Full Time', '2015-06-15'),
(88, 'Alberta Coggan', '1996-01-23', '523 Olivia Green Suite 130\nLake Brittanymouth, OR 80798', 'Full Time', '2018-06-15'),
(89, 'Richard Wilcox', '1996-06-09', '4396 Stout Square\nMarybury, ME 98301', 'Full Time', '2015-06-15'),
(90, 'Yvonne Tarver', '1996-03-30', '3725 Manuel River\nMichelleside, TX 17037', 'Full Time', '2015-06-15'),
(91, 'Leo Jennings', '1998-10-02', 'Unit 3562 Box 9200\nDPO AP 58546', 'Full Time', '2015-06-30'),
(92, 'Darren Swank', '1997-05-26', '3626 Burgess Roads Suite 201\nPattersonchester, MT 05913', 'Full Time', '2015-06-30'),
(93, 'Jeremy Clark', '1998-07-12', '913 Gerald Shore\nHerreraview, ID 69394', 'Full Time', '2018-06-30'),
(94, 'Robert Ackley', '1998-10-22', '452 Jeffery Landing Suite 146\nParkerland, CA 08768', 'Full Time', '2017-06-30'),
(95, 'Neil Green', '1998-04-08', '692 Amanda Lock\nEast Judith, MN 53687', 'Full Time', '2015-06-30'),
(96, 'Cynthia Davis', '1998-11-19', '093 Alexandra Tunnel Suite 306\nSouth Marioburgh, NY 67552', 'Full Time', '2015-06-15'),
(97, 'Owen Taylor', '1997-05-26', '37850 Dawn Alley\nByrdview, ID 64925', 'Full Time', '2018-06-30'),
(98, 'Benny King', '1996-01-17', '82762 Dean Hollow\nWest Amy, CO 10942', 'Full Time', '2018-06-30'),
(99, 'Danielle White', '1996-08-27', '70506 Zachary Wells Suite 060\nSouth Glenntown, ID 23056', 'Full Time', '2017-06-30'),
(100, 'Judith Booth', '1996-11-06', '9697 Norris Creek\nCampbellmouth, VT 17555', 'Full Time', '2015-06-15'),
(101, 'Linda Beltran', '1997-01-01', '07303 Chen Rue\nSouth Todd, IN 45078', 'Full Time', '2015-06-15'),
(102, 'Rebecca Thompson', '1996-07-29', '318 Donna Island Apt. 495\nNorth Kyleview, NV 30167', 'Full Time', '2017-06-30'),
(103, 'Carla Hull', '1997-10-05', '38224 Smith Isle Suite 867\nEast Steventown, NH 34973', 'Full Time', '2015-06-15');

--
-- Dumping data for table `INTO_Teach`
--

INSERT INTO `INTO_Teach` (`TID`, `ModuleID`, `StaffID`, `SpaID`, `Semester`, `Year`) VALUES
(1, 4, 5, 1, 'S1', 2019),
(2, 2, 4, 2, 'S1', 2018),
(3, 3, 10, 3, 'S2', 2020),
(4, 4, 7, 4, 'S1', 2017),
(5, 1, 20, 5, 's1', 2019),
(6, 5, 20, 5, 's2', 2019);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
