-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2014 at 11:07 PM
-- Server version: 5.5.16-log
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `bookingid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) DEFAULT NULL,
  `roomno` int(11) DEFAULT NULL,
  `datefrom` date DEFAULT NULL,
  `dateto` date DEFAULT NULL,
  `payid` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookingid`),
  KEY `cid` (`cid`),
  KEY `roomno` (`roomno`),
  KEY `payid` (`payid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingid`, `cid`, `roomno`, `datefrom`, `dateto`, `payid`) VALUES
(1, 1, 3, '2014-04-10', '2014-04-11', 1),
(2, 2, 2, '2014-04-11', '2014-04-13', 2),
(5, 3, 4, '2014-04-15', '2014-04-16', 7),
(6, 5, 8, '2014-04-29', '2014-04-30', 8),
(10, 5, 6, '2014-04-18', '2014-04-19', 8);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int(11) NOT NULL,
  `cfname` varchar(20) NOT NULL,
  `phoneno` bigint(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `clastname` varchar(20) NOT NULL,
  `collegue` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cfname`, `phoneno`, `city`, `clastname`, `collegue`) VALUES
(1, 'ravi', 2147483647, 'solapur', 'uttarkar', 4),
(2, 'amit', 2147483647, 'pune', 'roy', 3),
(3, 'manoj', 9870989898, 'mumbai', 'kumar', 2),
(4, 'pratik', 9890090909, 'jaypur', 'kapoor', 3),
(5, 'sam', 7272909090, 'jaypur', 'roy', 1),
(6, 'jay', 9090909090, 'delhi', 'kumar', 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payid` int(11) NOT NULL,
  `installmentno` int(11) NOT NULL,
  `paymentmode` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`payid`,`installmentno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payid`, `installmentno`, `paymentmode`, `amount`) VALUES
(1, 1, 'cash', 2000),
(2, 1, 'credit card', 3000),
(3, 1, 'debit card', 10000),
(4, 1, 'cash', 2500),
(7, 1, 'cash', 1000),
(8, 1, 'cash', 500);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `roomno` int(11) NOT NULL DEFAULT '0',
  `floorno` int(11) DEFAULT NULL,
  `roomtype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`roomno`),
  KEY `roomtype` (`roomtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomno`, `floorno`, `roomtype`) VALUES
(1, 0, 'ac large'),
(2, 0, 'ac medium'),
(3, 0, 'non ac medium'),
(4, 0, 'non ac medium'),
(5, 1, 'ac medium'),
(6, 1, 'non ac medium'),
(7, 1, 'non ac small'),
(8, 1, 'non ac small'),
(9, 2, 'ac medium'),
(10, 2, 'non ac medium');

-- --------------------------------------------------------

--
-- Table structure for table `roomtypes`
--

CREATE TABLE IF NOT EXISTS `roomtypes` (
  `roomtype` varchar(20) NOT NULL,
  `rent` int(11) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  PRIMARY KEY (`roomtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomtypes`
--

INSERT INTO `roomtypes` (`roomtype`, `rent`, `capacity`) VALUES
('ac hall', 10000, '6'),
('ac large', 3000, '3'),
('ac medium', 2500, '2'),
('non ac hall', 5000, '6'),
('non ac large', 2000, '4'),
('non ac medium', 1500, '3'),
('non ac small', 1000, '2');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`roomno`) REFERENCES `room` (`roomno`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`payid`) REFERENCES `payment` (`payid`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`roomtype`) REFERENCES `roomtypes` (`roomtype`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
