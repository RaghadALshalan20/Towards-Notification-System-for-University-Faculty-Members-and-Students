-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 11:40 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `absanceprecent`
--

CREATE TABLE `absanceprecent` (
  `absid` int(11) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `absencehour` varchar(50) NOT NULL,
  `coursecredit` varchar(50) NOT NULL,
  `studentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admininstrator`
--

CREATE TABLE `admininstrator` (
  `adminid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininstrator`
--

INSERT INTO `admininstrator` (`adminid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `altermessage`
--

CREATE TABLE `altermessage` (
  `messageid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `adminid` int(11) NOT NULL,
  `studentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `altermessage`
--

INSERT INTO `altermessage` (`messageid`, `title`, `content`, `date`, `time`, `adminid`, `studentid`) VALUES
(2, 'title', 'content', '5-5-2023', '5', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `adminid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facultymember`
--

CREATE TABLE `facultymember` (
  `facultyid` int(11) NOT NULL,
  `Availablehours` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facultymember`
--

INSERT INTO `facultymember` (`facultyid`, `Availablehours`) VALUES
(2, 'every day from. 1 -2 PM'),
(6, 'every day from. 2 -4 PM');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `availablehour` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `department`, `availablehour`) VALUES
(3, 'student', '2'),
(4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tcourse`
--

CREATE TABLE `tcourse` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tcourse`
--

INSERT INTO `tcourse` (`courseid`, `coursename`, `description`) VALUES
(1, 'Oracle', 'programming'),
(3, 'Java 1', 'programming'),
(5, 'java 2', 'programming');

-- --------------------------------------------------------

--
-- Table structure for table `trequest`
--

CREATE TABLE `trequest` (
  `requestid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `reqestcontent` varchar(50) NOT NULL,
  `studentid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trequest`
--

INSERT INTO `trequest` (`requestid`, `title`, `date`, `reqestcontent`, `studentid`, `memberid`) VALUES
(1, 'text', '01-06-2023', 'replyww', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tuser`
--

CREATE TABLE `tuser` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `active` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tuser`
--

INSERT INTO `tuser` (`userid`, `username`, `password`, `fullname`, `email`, `usertype`, `active`) VALUES
(1, 'admin', '1', 'admin', 'adm@gmail.com', 'admin', 'active'),
(2, 'f', '1', 'facultymember', 'adm@gmail.com', 'facultymember', 'active'),
(3, 's', '1', 'asma', 'student@g.com', 'student', 'active'),
(4, 'student1', 'Aa!123456', 'reem', 'AD@gmail.com', 'student', 'active'),
(6, 'hhhh', 'Aa!212fdff', 'memberw', 'aaa@gmail.com', 'facultymember', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absanceprecent`
--
ALTER TABLE `absanceprecent`
  ADD PRIMARY KEY (`absid`),
  ADD KEY `ddf` (`studentid`);

--
-- Indexes for table `admininstrator`
--
ALTER TABLE `admininstrator`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `altermessage`
--
ALTER TABLE `altermessage`
  ADD PRIMARY KEY (`messageid`),
  ADD KEY `tre` (`studentid`),
  ADD KEY `eee` (`adminid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`),
  ADD KEY `fdgfg` (`adminid`);

--
-- Indexes for table `facultymember`
--
ALTER TABLE `facultymember`
  ADD PRIMARY KEY (`facultyid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `tcourse`
--
ALTER TABLE `tcourse`
  ADD PRIMARY KEY (`courseid`),
  ADD UNIQUE KEY `coursename` (`coursename`);

--
-- Indexes for table `trequest`
--
ALTER TABLE `trequest`
  ADD PRIMARY KEY (`requestid`),
  ADD KEY `fdfdf` (`studentid`),
  ADD KEY `dfdfff` (`memberid`);

--
-- Indexes for table `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absanceprecent`
--
ALTER TABLE `absanceprecent`
  MODIFY `absid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `altermessage`
--
ALTER TABLE `altermessage`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tcourse`
--
ALTER TABLE `tcourse`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trequest`
--
ALTER TABLE `trequest`
  MODIFY `requestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tuser`
--
ALTER TABLE `tuser`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absanceprecent`
--
ALTER TABLE `absanceprecent`
  ADD CONSTRAINT `ddf` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `admininstrator`
--
ALTER TABLE `admininstrator`
  ADD CONSTRAINT `rr` FOREIGN KEY (`adminid`) REFERENCES `tuser` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `altermessage`
--
ALTER TABLE `altermessage`
  ADD CONSTRAINT `eee` FOREIGN KEY (`adminid`) REFERENCES `admininstrator` (`adminid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tre` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fdgfg` FOREIGN KEY (`adminid`) REFERENCES `student` (`studentid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `facultymember`
--
ALTER TABLE `facultymember`
  ADD CONSTRAINT `rer` FOREIGN KEY (`facultyid`) REFERENCES `tuser` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `rrr` FOREIGN KEY (`studentid`) REFERENCES `tuser` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `trequest`
--
ALTER TABLE `trequest`
  ADD CONSTRAINT `dfdfff` FOREIGN KEY (`memberid`) REFERENCES `facultymember` (`facultyid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fdfdf` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
