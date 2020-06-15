-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2020 at 07:19 PM
-- Server version: 10.3.20-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_responses`
--

DROP TABLE IF EXISTS `contact_form_responses`;
CREATE TABLE IF NOT EXISTS `contact_form_responses` (
  `rowid` int(150) NOT NULL AUTO_INCREMENT,
  `row_ref_id` int(150) NOT NULL COMMENT 'foreign key to person_table',
  `from_name` varchar(100) NOT NULL,
  `from_phone` varchar(20) NOT NULL,
  `from_email` varchar(70) NOT NULL,
  `from_msg` varchar(250) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `details_table`
--

DROP TABLE IF EXISTS `details_table`;
CREATE TABLE IF NOT EXISTS `details_table` (
  `rowid` int(150) NOT NULL AUTO_INCREMENT,
  `row_ref_id` int(150) NOT NULL COMMENT 'foreign key to person_table',
  `info_head` varchar(70) NOT NULL,
  `info_detail` varchar(70) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `rowid` int(150) NOT NULL AUTO_INCREMENT,
  `row_ref_id` int(150) NOT NULL COMMENT 'foreign key to person_table',
  `doc_type` varchar(100) NOT NULL,
  `doc_title` varchar(100) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `doc_ext` varchar(50) NOT NULL,
  `doc_size` varchar(50) NOT NULL,
  `doc_path` varchar(230) NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `edu_table`
--

DROP TABLE IF EXISTS `edu_table`;
CREATE TABLE IF NOT EXISTS `edu_table` (
  `rowid` int(150) NOT NULL AUTO_INCREMENT,
  `row_ref_id` int(150) NOT NULL COMMENT 'foreign key to person_table',
  `course_name` varchar(100) NOT NULL,
  `inst_name` varchar(100) NOT NULL,
  `year_completed` date NOT NULL,
  `description` varchar(350) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myworks`
--

DROP TABLE IF EXISTS `myworks`;
CREATE TABLE IF NOT EXISTS `myworks` (
  `rowid` int(150) NOT NULL AUTO_INCREMENT,
  `row_ref_id` int(150) NOT NULL COMMENT 'foreign key to person_table',
  `project_name` varchar(150) NOT NULL,
  `details` varchar(350) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_table`
--

DROP TABLE IF EXISTS `person_table`;
CREATE TABLE IF NOT EXISTS `person_table` (
  `rowid` int(150) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skills_table`
--

DROP TABLE IF EXISTS `skills_table`;
CREATE TABLE IF NOT EXISTS `skills_table` (
  `rowid` int(150) NOT NULL AUTO_INCREMENT,
  `row_ref_id` int(150) NOT NULL COMMENT 'foreign key to person_table',
  `skill_name` int(20) NOT NULL,
  `skill_per_level` float NOT NULL,
  `skill_proficiency` varchar(30) NOT NULL COMMENT 'novice/intermediate/advanced',
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_category`
--

DROP TABLE IF EXISTS `timeline_category`;
CREATE TABLE IF NOT EXISTS `timeline_category` (
  `rowid` int(150) NOT NULL AUTO_INCREMENT,
  `row_ref_id` int(150) NOT NULL COMMENT 'foreign key to person_table',
  `t_type` varchar(20) NOT NULL COMMENT 'edu/wrk',
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_table`
--

DROP TABLE IF EXISTS `work_table`;
CREATE TABLE IF NOT EXISTS `work_table` (
  `rowid` int(150) NOT NULL AUTO_INCREMENT,
  `row_ref_id` int(150) NOT NULL COMMENT 'foreign key to person_table',
  `company_name` varchar(100) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `description` varchar(350) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
