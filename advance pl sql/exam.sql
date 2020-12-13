-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2017 at 02:53 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `attempt`
--

CREATE TABLE IF NOT EXISTS `attempt` (
  `examid` int(11) NOT NULL DEFAULT '0',
  `paperno` int(11) NOT NULL DEFAULT '0',
  `qno` int(11) NOT NULL DEFAULT '0',
  `prnno` bigint(20) NOT NULL DEFAULT '0',
  `solvedoption` varchar(10) DEFAULT NULL,
  `markgain` int(11) DEFAULT NULL,
  PRIMARY KEY (`examid`,`paperno`,`qno`,`prnno`),
  KEY `prnno` (`prnno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attempt`
--

INSERT INTO `attempt` (`examid`, `paperno`, `qno`, `prnno`, `solvedoption`, `markgain`) VALUES
(1, 1, 1, 1, 'd', 1),
(1, 1, 1, 2, 'b', 0),
(1, 1, 1, 3, 'd', 1),
(1, 1, 1, 4, 'c', 0),
(1, 1, 1, 5, 'a', 0),
(1, 1, 2, 1, 'b', 1),
(1, 1, 2, 2, 'c', 0),
(1, 1, 2, 3, 'd', 0),
(1, 1, 2, 4, 'b', 1),
(1, 1, 2, 5, 'c', 0),
(1, 1, 3, 1, 'd', 1),
(1, 1, 3, 2, 'b', 0),
(1, 1, 3, 3, 'b', 1),
(1, 1, 3, 4, 'b', 1),
(1, 1, 3, 5, 'a', 0),
(1, 1, 4, 1, 'a', 0),
(1, 1, 4, 2, 'd', 1),
(1, 1, 4, 3, 'd', 1),
(1, 1, 4, 4, 'd', 1),
(1, 1, 4, 5, 'd', 1),
(1, 1, 5, 1, 'a', 0),
(1, 1, 5, 2, 'c', 0),
(1, 1, 5, 3, 'a', 0),
(1, 1, 5, 4, 'a', 0),
(1, 1, 5, 5, 'a', 0),
(1, 2, 1, 1, 'b', 0),
(1, 2, 1, 2, 'd', 1),
(1, 2, 1, 3, 'd', 1),
(1, 2, 1, 4, 'd', 1),
(1, 2, 1, 5, 'b', 0),
(1, 2, 2, 1, 'a', 0),
(1, 2, 2, 2, 'b', 1),
(1, 2, 2, 3, 'b', 1),
(1, 2, 2, 4, 'b', 1),
(1, 2, 2, 5, 'a', 0),
(1, 2, 3, 1, 'a', 1),
(1, 2, 3, 2, 'b', 0),
(1, 2, 3, 3, 'a', 1),
(1, 2, 3, 4, 'b', 0),
(1, 2, 3, 5, 'c', 0),
(1, 2, 4, 1, 'c', 0),
(1, 2, 4, 2, 'd', 1),
(1, 2, 4, 3, 'b', 0),
(1, 2, 4, 4, 'd', 1),
(1, 2, 4, 5, 'd', 1),
(1, 2, 5, 1, 'a', 1),
(1, 2, 5, 2, 'a', 1),
(1, 2, 5, 3, 'a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `examid` int(11) NOT NULL DEFAULT '0',
  `examname` varchar(30) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`examid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`examid`, `examname`, `startdate`, `enddate`) VALUES
(1, 'midsem', '2017-02-01', '2017-02-10'),
(2, 'prelim', '2017-03-01', '2017-03-10'),
(3, 'prelim', '2016-03-01', '2016-03-10'),
(4, 'midsem', '2016-01-01', '2016-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `paper`
--

CREATE TABLE IF NOT EXISTS `paper` (
  `examid` int(11) NOT NULL DEFAULT '0',
  `paperno` int(11) NOT NULL DEFAULT '0',
  `subname` varchar(30) DEFAULT NULL,
  `coursename` varchar(30) DEFAULT NULL,
  `paperdate` date DEFAULT NULL,
  `maxmarks` int(11) DEFAULT NULL,
  PRIMARY KEY (`examid`,`paperno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper`
--

INSERT INTO `paper` (`examid`, `paperno`, `subname`, `coursename`, `paperdate`, `maxmarks`) VALUES
(1, 1, 'db', 'cse', '2017-03-01', 5),
(1, 2, 'os', 'cse', '2017-03-03', 5);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `examid` int(11) NOT NULL DEFAULT '0',
  `paperno` int(11) NOT NULL DEFAULT '0',
  `qno` int(11) NOT NULL DEFAULT '0',
  `question` varchar(100) DEFAULT NULL,
  `A` varchar(60) DEFAULT NULL,
  `B` varchar(60) DEFAULT NULL,
  `C` varchar(60) DEFAULT NULL,
  `D` varchar(60) DEFAULT NULL,
  `correctoption` varchar(10) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`examid`,`paperno`,`qno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`examid`, `paperno`, `qno`, `question`, `A`, `B`, `C`, `D`, `correctoption`, `mark`) VALUES
(1, 1, 1, '____ is true for ER diagram', 'created by db designer', 'to logical database design', 'to communicate neccessary data', 'all', 'd', 1),
(1, 1, 2, '______ key is not used for unique identification', 'primary', 'super', 'foreign', 'candidate', 'b', 1),
(1, 1, 3, '__ is not relational operation', 'join', 'intersect', 'project', 'none', 'd', 1),
(1, 1, 4, '___  is true for 3 NF', 'no multivalued and composite a', 'no partial dependancy allowed ', 'no transitive dependancy allow', 'all', 'd', 1),
(1, 1, 5, 'relation can have column with duplicate name', 'true', 'false', 'cant say', NULL, 'b', 1),
(1, 2, 1, 'Os is _______', 'hardware', 'software', 'hardware and software', 'system software', 'd', 1),
(1, 2, 2, '_____ scheduler performs swapping', 'long term', 'medium term ', 'short term ', 'none', 'b', 1),
(1, 2, 3, 'all os services are accessible through ___', 'system calls', 'library functions', 'both', 'none', 'a', 1),
(1, 2, 4, '____ is true for binary sempahore', 'it can have 0 or 1 value', 'wait and signal operations are atomic', 'it cant be updated without wait and signal', 'all', 'd', 1),
(1, 2, 5, 'in ___ page replacement ,pages can be replaced for other process', 'global', 'local', 'both', 'none', 'a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `prnno` bigint(20) NOT NULL DEFAULT '0',
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `phoneno` bigint(20) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `coursename` varchar(30) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`prnno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`prnno`, `fname`, `lname`, `city`, `phoneno`, `emailid`, `coursename`, `year`) VALUES
(1, 'raj', 'kapoor', 'solapur', 217200200, 'raj@gmail.com', 'cse', 3),
(2, 'pooja ', 'patel', 'solapur', 9020202020, 'pooja@gmail.com', 'cse', 3),
(3, 'sam', 'disouza', 'pune', 9310101010, 'sam@gmail.com', 'cse', 3),
(4, 'karan', 'kumar', 'pune', 9520202010, 'karan@yahoo.com', 'cse', 3),
(5, 'sharmil', 'pandey', 'mumbai', 3, 'sharmil@gmail.com', 'cse', 3),
(6, 'simran', 'kapoor', 'mumbai', 9120202020, 'simran@yahoo.com', 'cse', 4),
(7, 'shradha', 'kulkarni', 'solapur', 9595859595, 'kulkarni@gmail.com', 'cse', 4),
(8, 'kapil', 'dev', 'mumbai', 9545854585, 'kapil@gmail.com', 'cse', 4),
(9, 'sham', 'kumar', 'solapur', 9850505050, 'sham@gmail.com', 'cse', 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attempt`
--
ALTER TABLE `attempt`
  ADD CONSTRAINT `attempt_ibfk_1` FOREIGN KEY (`examid`, `paperno`, `qno`) REFERENCES `question` (`examid`, `paperno`, `qno`),
  ADD CONSTRAINT `attempt_ibfk_2` FOREIGN KEY (`prnno`) REFERENCES `student` (`prnno`);

--
-- Constraints for table `paper`
--
ALTER TABLE `paper`
  ADD CONSTRAINT `paper_ibfk_1` FOREIGN KEY (`examid`) REFERENCES `exam` (`examid`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`examid`, `paperno`) REFERENCES `paper` (`examid`, `paperno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
